import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
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

/-!
# A110700: Number of zeros in the smallest prime with Hamming weight n (given by A061712).

The programs for A110700, there is no canonical definition to state claims against.
-/

/-! ## A110700.P8842135689070137586

`A110699(n+1)-(n+1)`
-/

namespace A110700.P8842135689070137586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (n + 1) - (n + 1 : ℤ)

end

end A110700.P8842135689070137586

/-! ## A110700.P15569658032353755646

`A002113(A110699(n+1)-n)`
-/

namespace A110700.P15569658032353755646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A110699 (n + 1) - (n : ℤ)).toNat

end

end A110700.P15569658032353755646

/-! ## A110700.P6524828535525217514

`A008554(A110699(n+1)-n)`
-/

namespace A110700.P6524828535525217514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008554 (A110699 (n + 1) - (n : ℤ)).toNat

end

end A110700.P6524828535525217514

/-! ## A110700.P4106935631570676868

`A029731(A110699(n+1)-n)`
-/

namespace A110700.P4106935631570676868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029731 (A110699 (n + 1) - (n : ℤ)).toNat

end

end A110700.P4106935631570676868

/-! ## A110700.P8625227799260182915

`A043092(A110699(n+1)-n)`
-/

namespace A110700.P8625227799260182915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043092 (A110699 (n + 1) - (n : ℤ)).toNat

end

end A110700.P8625227799260182915

/-! ## A110700.P15418255737608485391

`A084749(A110699(n+1)-n)`
-/

namespace A110700.P15418255737608485391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084749 (A110699 (n + 1) - (n : ℤ)).toNat

end

end A110700.P15418255737608485391

/-! ## A110700.P8721262956489555283

`A097545(A110699(n+1)-n)`
-/

namespace A110700.P8721262956489555283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097545 (A110699 (n + 1) - (n : ℤ)).toNat

end

end A110700.P8721262956489555283

/-! ## A110700.P6865551234665594757

`A189705(A110699(n+1)-n)`
-/

namespace A110700.P6865551234665594757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189705 (A110699 (n + 1) - (n : ℤ)).toNat

end

end A110700.P6865551234665594757

/-! ## A110700.P15333334113350939024

`A211264(A110699(n+1)-n)`
-/

namespace A110700.P15333334113350939024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211264 (A110699 (n + 1) - (n : ℤ)).toNat

end

end A110700.P15333334113350939024

/-! ## A110700.P13688851850687843771

`A278354(A110699(n+1)-n)`
-/

namespace A110700.P13688851850687843771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278354 (A110699 (n + 1) - (n : ℤ)).toNat

end

end A110700.P13688851850687843771

/-! ## A110700.P6995555287366779999

`floor(log2(A061712(n+1))-n)`
-/

namespace A110700.P6995555287366779999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (A061712 (n + 1) : ℝ) - (n : ℝ)⌋

end

end A110700.P6995555287366779999

/-!
# A110705: Numbers k such that "k 42's followed by 43" is prime.

The programs for A110705, there is no canonical definition to state claims against.
-/

/-! ## A110705.P4859287036276415383

`record[gcd(n, 2*A090894(n))]`
-/

namespace A110705.P4859287036276415383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (2 * A090894 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110705.P4859287036276415383

/-! ## A110705.P6370243923450738554

`record[gcd(n, A005843(A090894(n)))]`
-/

namespace A110705.P6370243923450738554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A005843 (A090894 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110705.P6370243923450738554

/-! ## A110705.P717513164760368191

`eq[A025826(n), A046742(n+1)]`
-/

namespace A110705.P717513164760368191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025826 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046742 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110705.P717513164760368191

/-! ## A110705.P380432420186234153

`eq[A261867(n+1), A362071(n+1)]`
-/

namespace A110705.P380432420186234153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362071 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110705.P380432420186234153

/-! ## A110705.P17501214802598153035

`∪[A331912(A105401(n+1)), A143608(n)]`
-/

namespace A110705.P17501214802598153035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331912 (A105401 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143608 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A110705.P17501214802598153035

/-!
# A110706: Number of linear arrangements of n blue, n red and n green items such that there are no adjacent items of the same color.

The programs for A110706, there is no canonical definition to state claims against.
-/

/-! ## A110706.P2115147920522641863

`A322093(∑[n+1]+n)`
-/

namespace A110706.P2115147920522641863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322093 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A110706.P2115147920522641863

/-! ## A110706.P5036433558772022578

`or(A000007(n), A322093(A034856(n+1)))`
-/

namespace A110706.P5036433558772022578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A322093 (A034856 (n + 1)).toNat)

end

end A110706.P5036433558772022578

/-! ## A110706.P16896124775271307132

`A322093(A034856(n+1))+C(A085159(n)%2, 2)`
-/

namespace A110706.P16896124775271307132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322093 (A034856 (n + 1)).toNat + (Nat.choose (Int.tmod (A085159 n) 2).toNat 2 : ℤ)

end

end A110706.P16896124775271307132

/-! ## A110706.P10039242253127112743

`A283613(n*(n+2))`
-/

namespace A110706.P10039242253127112743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283613 (n * (n + 2))

end

end A110706.P10039242253127112743

/-! ## A110706.P9210924897523398883

`A283613(A005563(n))+A062535(n+1)`
-/

namespace A110706.P9210924897523398883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283613 (A005563 n).toNat + A062535 (n + 1)

end

end A110706.P9210924897523398883

/-!
# A110707: Number of linear arrangements of n blue, n red and n green items such that there are no adjacent items of the same color (first and last elements considered as adjacent).

The programs for A110707, there is no canonical definition to state claims against.
-/

/-! ## A110707.P3236990286082523270

`2*A000172(n)+2*A000172(n+1)`
-/

namespace A110707.P3236990286082523270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000172 n + 2 * A000172 (n + 1)

end

end A110707.P3236990286082523270

/-! ## A110707.P10280792389591061461

`A110706(n+1)-A110711(n+1)`
-/

namespace A110707.P10280792389591061461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110706 (n + 1) - A110711 (n + 1)

end

end A110707.P10280792389591061461

/-! ## A110707.P6940404543455054367

`6*A197657(n)`
-/

namespace A110707.P6940404543455054367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A197657 n

end

end A110707.P6940404543455054367

/-! ## A110707.P2757499488074269448

`3*A141147(n+1)`
-/

namespace A110707.P2757499488074269448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A141147 (n + 1)

end

end A110707.P2757499488074269448

/-! ## A110707.P1766610627522069613

`lcm(3, A141147(A028310(n+1)))`
-/

namespace A110707.P1766610627522069613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A141147 (A028310 (n + 1)).toNat)

end

end A110707.P1766610627522069613

/-! ## A110707.P2714735375999566640

`(A000172(n+1)+A000172(n))*2`
-/

namespace A110707.P2714735375999566640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000172 (n + 1) + A000172 n) * 2

end

end A110707.P2714735375999566640

/-! ## A110707.P2106675020244284288

`6*sqrt(A209352(n+1))`
-/

namespace A110707.P2106675020244284288
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  6 * Real.sqrt (A209352 (n + 1) : ℝ)

end

end A110707.P2106675020244284288

/-!
# A110710: Number of ternary necklaces with n beads of each color and no adjacent beads of the same color (i.e., no substrings 00, 11, 22).

The programs for A110710, there is no canonical definition to state claims against.
-/

/-! ## A110710.P15009259028969315919

`A283615(∑[2*n])`
-/

namespace A110710.P15009259028969315919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283615 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110710.P15009259028969315919

/-! ## A110710.P11143726724151283022

`record[A283615(floor((n/2)²))]`
-/

namespace A110710.P11143726724151283022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283615 ⌊((n : ℚ) / 2) ^ 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110710.P11143726724151283022

/-! ## A110710.P15386701490787084531

`record[A283615(n)/A011973(n)]`
-/

namespace A110710.P15386701490787084531
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283615 n : ℚ) / (A011973 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110710.P15386701490787084531

/-! ## A110710.P16919748886992460087

`record[A283615(n)/A128099(n)]`
-/

namespace A110710.P16919748886992460087
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283615 n : ℚ) / (A128099 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110710.P16919748886992460087

/-! ## A110710.P9701606334418036916

`record[A283615(n)/A097285(n+1)]`
-/

namespace A110710.P9701606334418036916
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283615 n : ℚ) / (A097285 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110710.P9701606334418036916

/-!
# A110711: Number of linear arrangements of n blue, n red and n green items such that first and last elements have the same color but there are no adjacent items of the same color.

The programs for A110711, there is no canonical definition to state claims against.
-/

/-! ## A110711.P4221447329798574826

`A110706(n+1)-A110707(n+1)`
-/

namespace A110711.P4221447329798574826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110706 (n + 1) - A110707 (n + 1)

end

end A110711.P4221447329798574826

/-! ## A110711.P8100419434319403371

`((n-2)*A000172(n)+(n+1)*A000172(n+1))/(n+2)`
-/

namespace A110711.P8100419434319403371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2) * A000172 n + (n + 1 : ℤ) * A000172 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A110711.P8100419434319403371

/-! ## A110711.P12127157345583789463

`3*A141146(n+1)`
-/

namespace A110711.P12127157345583789463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A141146 (n + 1)

end

end A110711.P12127157345583789463

/-! ## A110711.P18416773239691547223

`lcm(A008486(n), A141146(n+1))`
-/

namespace A110711.P18416773239691547223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008486 n) (A141146 (n + 1))

end

end A110711.P18416773239691547223

/-! ## A110711.P11852949583495372024

`A110706(n+1)-6*A197657(n)`
-/

namespace A110711.P11852949583495372024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110706 (n + 1) - 6 * A197657 n

end

end A110711.P11852949583495372024

/-! ## A110711.P2599347043743865472

`A110706(n+1)-3*A141147(n+1)`
-/

namespace A110711.P2599347043743865472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110706 (n + 1) - 3 * A141147 (n + 1)

end

end A110711.P2599347043743865472

/-!
# A110712: Expansion of eta(q)^3 * eta(q^5) * eta(q^10)^2 / eta(q^2)^2 in powers of q.

The programs for A110712, the canonical program `A110712.P7261860944228162547` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110712 has offset 1).

The definition of A110712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110712.P914350245088386979

`(-1)^(n+2)*A138483(n+1)`
-/

namespace A110712.P914350245088386979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 2) * A138483 (n + 1)

end

end A110712.P914350245088386979

namespace A110712

/-- `(-1)^(n+2)*A138483(n+1)` -/
def P914350245088386979.Spec : Prop :=
  ∀ n, P914350245088386979.a n = A110712 (n + 1)

end A110712

/-! ## A110712.P7261860944228162547

`∑{d}[n+1, A138557(#)*A154269((n+1)/#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A110712

/-- `∑{d}[n+1, A138557(#)*A154269((n+1)/#)]` -/
def P7261860944228162547.Spec : Prop :=
  ∀ n, P7261860944228162547.a n = A110712 (n + 1)

theorem P7261860944228162547.correct : P7261860944228162547.Spec := by
  intro n
  simp only [A110712, Nat.add_sub_cancel]

end A110712

/-! ## A110712.P4321715740078158006

`∑{d}[n+1, A035187(#)*A325596((n+1)/#)]`
-/

namespace A110712.P4321715740078158006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035187 d * A325596 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A110712.P4321715740078158006

namespace A110712

/-- `∑{d}[n+1, A035187(#)*A325596((n+1)/#)]` -/
def P4321715740078158006.Spec : Prop :=
  ∀ n, P4321715740078158006.a n = A110712 (n + 1)

end A110712

/-! ## A110712.P10383605017832242180

`A138483(n+1)/A113185(n)*A132069(n)`
-/

namespace A110712.P10383605017832242180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138483 (n + 1) : ℚ) / (A113185 n : ℚ) * (A132069 n : ℚ)

end

end A110712.P10383605017832242180

namespace A110712

/-- `A138483(n+1)/A113185(n)*A132069(n)` -/
def P10383605017832242180.Spec : Prop :=
  ∀ n, P10383605017832242180.a n = (A110712 (n + 1) : ℚ)

end A110712

/-! ## A110712.P3845081550037695449

`A138512(n+1)+A053723(n)-A138483(n+1)`
-/

namespace A110712.P3845081550037695449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138512 (n + 1) + (A053723 n - A138483 (n + 1))

end

end A110712.P3845081550037695449

namespace A110712

/-- `A138512(n+1)+A053723(n)-A138483(n+1)` -/
def P3845081550037695449.Spec : Prop :=
  ∀ n, P3845081550037695449.a n = A110712 (n + 1)

end A110712

/-! ## A110712.P7986329527438958899

`A129303(n+1)+A138557(n+1)-A138483(n+1)`
-/

namespace A110712.P7986329527438958899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129303 (n + 1) + (A138557 (n + 1) - A138483 (n + 1))

end

end A110712.P7986329527438958899

namespace A110712

/-- `A129303(n+1)+A138557(n+1)-A138483(n+1)` -/
def P7986329527438958899.Spec : Prop :=
  ∀ n, P7986329527438958899.a n = A110712 (n + 1)

end A110712

/-! ## A110712.P7979182343518350547

`A113185(n+1)*A129303(n+1)/A138558(n+1)`
-/

namespace A110712.P7979182343518350547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113185 (n + 1) * A129303 (n + 1) : ℚ) / (A138558 (n + 1) : ℚ)

end

end A110712.P7979182343518350547

namespace A110712

/-- `A113185(n+1)*A129303(n+1)/A138558(n+1)` -/
def P7979182343518350547.Spec : Prop :=
  ∀ n, P7979182343518350547.a n = (A110712 (n + 1) : ℚ)

end A110712

/-! ## A110712.P12038320749654218753

`A138557(2*(n+1))+A138483(2*(n+1))`
-/

namespace A110712.P12038320749654218753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138557 (2 * (n + 1)) + A138483 (2 * (n + 1))

end

end A110712.P12038320749654218753

namespace A110712

/-- `A138557(2*(n+1))+A138483(2*(n+1))` -/
def P12038320749654218753.Spec : Prop :=
  ∀ n, P12038320749654218753.a n = A110712 (n + 1)

end A110712

/-! ## A110712.P2089781215825526964

`A138483(2*(n+1))-A129303(2*(n+1))`
-/

namespace A110712.P2089781215825526964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138483 (2 * (n + 1)) - A129303 (2 * (n + 1))

end

end A110712.P2089781215825526964

namespace A110712

/-- `A138483(2*(n+1))-A129303(2*(n+1))` -/
def P2089781215825526964.Spec : Prop :=
  ∀ n, P2089781215825526964.a n = A110712 (n + 1)

end A110712

/-!
# A110713: a(n) is the number of distinct products b_1*b_2*...*b_n where 1 <= b_i <= n.

The programs for A110713, there is no canonical definition to state claims against.
-/

/-! ## A110713.P17932027768022587830

`A322967(∑[4*n]+1)`
-/

namespace A110713.P17932027768022587830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322967 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A110713.P17932027768022587830

/-! ## A110713.P6651117737680648790

`record[A322967(Δ[A235355(n)])]`
-/

namespace A110713.P6651117737680648790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322967 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110713.P6651117737680648790

/-! ## A110713.P15995169274771595466

`record[A322967(A330613(n+1))]`
-/

namespace A110713.P15995169274771595466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322967 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110713.P15995169274771595466

/-! ## A110713.P5454915815603493079

`A322967(A001844(n))+char[19]`
-/

namespace A110713.P5454915815603493079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322967 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A110713.P5454915815603493079

/-! ## A110713.P5570516954400182902

`A322967(A001844(n))%A222588(n)`
-/

namespace A110713.P5570516954400182902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322967 (A001844 n).toNat) (A222588 n)

end

end A110713.P5570516954400182902

/-!
# A110722: a(n) = {n concatenate R(n)}*{ R(n) concatenate n}, where R(n) = digit reversal of n.

The programs for A110722, there is no canonical definition to state claims against.
-/

/-! ## A110722.P861239617977835060

`11*11*A110723(n)`
-/

namespace A110722.P861239617977835060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * (11 * A110723 n)

end

end A110722.P861239617977835060

/-! ## A110722.P8954121952013531628

`lcm(A110723(n), A277946(A287384(n)))`
-/

namespace A110722.P8954121952013531628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A110723 n) (A277946 (A287384 n).toNat)

end

end A110722.P8954121952013531628

/-! ## A110722.P6304415651759950576

`11*A008593(A110723(n))`
-/

namespace A110722.P6304415651759950576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A008593 (A110723 n).toNat

end

end A110722.P6304415651759950576

/-! ## A110722.P4828735228889047601

`eq[0, 11*floor(n/10)-n]²`
-/

namespace A110722.P4828735228889047601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A110722.P4828735228889047601

/-! ## A110722.P13458806492931702214

`A048760((11*n)²)`
-/

namespace A110722.P13458806492931702214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 ((11 * n) ^ 2)

end

end A110722.P13458806492931702214

/-!
# A110723: a(n) = A110722(n)/121.

The programs for A110723, there is no canonical definition to state claims against.
-/

/-! ## A110723.P13605290298811926681

`A110722(n)/121`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A110723.P13605290298811926681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110722 n : ℚ) / 121

end

end A110723.P13605290298811926681

/-! ## A110723.P10843224984328142261

`A076314(A084009(n))`
-/

namespace A110723.P10843224984328142261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (A084009 n).toNat

end

end A110723.P10843224984328142261

/-! ## A110723.P2725959326868974337

`n*A054659(A276766(A030283(n+1)))`
-/

namespace A110723.P2725959326868974337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054659 (A276766 (A030283 (n + 1)).toNat).toNat

end

end A110723.P2725959326868974337

/-! ## A110723.P5190831190983457926

`n*A054659(A276766(A276633(n+1)))`
-/

namespace A110723.P5190831190983457926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054659 (A276766 (A276633 (n + 1)).toNat).toNat

end

end A110723.P5190831190983457926

/-! ## A110723.P5507312822117706436

`n*A054659(A276512(A331989(n+1)))`
-/

namespace A110723.P5507312822117706436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054659 (A276512 (A331989 (n + 1)).toNat).toNat

end

end A110723.P5507312822117706436

/-!
# A110724: {n concatenate R(n)} + {R(n) concatenate n}, where R(n) = digit reversal of n.

The programs for A110724, there is no canonical definition to state claims against.
-/

/-! ## A110724.P9923253151697985833

`11*A110725(n)`
-/

namespace A110724.P9923253151697985833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A110725 n

end

end A110724.P9923253151697985833

/-! ## A110724.P13919705130544807489

`(A061601(n)+2+n)*A056964(n)`
-/

namespace A110724.P13919705130544807489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061601 n + 2 + (n : ℤ)) * A056964 n

end

end A110724.P13919705130544807489

/-! ## A110724.P11405245610078432156

`A008593(A110725(n))`
-/

namespace A110724.P11405245610078432156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (A110725 n).toNat

end

end A110724.P11405245610078432156

/-! ## A110724.P4855076883153460150

`A017449(A110725(n)+n)-A017449(n)`
-/

namespace A110724.P4855076883153460150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 (A110725 n + (n : ℤ)).toNat - A017449 n

end

end A110724.P4855076883153460150

/-! ## A110724.P17175616896672845562

`A052008(A338754(n))`
-/

namespace A110724.P17175616896672845562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052008 (A338754 n).toNat

end

end A110724.P17175616896672845562

/-! ## A110724.P1248225380528896583

`A052008(11*A051022(n))`
-/

namespace A110724.P1248225380528896583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052008 (11 * A051022 n).toNat

end

end A110724.P1248225380528896583

/-! ## A110724.P12525355641753038047

`A056964(A008593(A051022(n)))`
-/

namespace A110724.P12525355641753038047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A008593 (A051022 n).toNat).toNat

end

end A110724.P12525355641753038047

/-! ## A110724.P4740207240975576958

`A056964(A338754(A118759(n)))`
-/

namespace A110724.P4740207240975576958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A338754 (A118759 n).toNat).toNat

end

end A110724.P4740207240975576958

/-! ## A110724.P15418799562087579336

`A056964(A338754(n)%A005718(n))`
-/

namespace A110724.P15418799562087579336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (Int.tmod (A338754 n) (A005718 n)).toNat

end

end A110724.P15418799562087579336

/-! ## A110724.P7137818123558310510

`lcm(A056964(n), A056964(A338754(n)))`
-/

namespace A110724.P7137818123558310510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056964 n) (A056964 (A338754 n).toNat)

end

end A110724.P7137818123558310510

/-! ## A110724.P17572561336563246992

`A056964(A338754(n))%A251839(A008619(n))`
-/

namespace A110724.P17572561336563246992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056964 (A338754 n).toNat) (A251839 (A008619 n).toNat)

end

end A110724.P17572561336563246992

/-!
# A110725: [{n concatenate R(n)} + {R(n) concatenate n}]/11, where R(n) = digit reversal of n.

The programs for A110725, there is no canonical definition to state claims against.
-/

/-! ## A110725.P12512497131343402932

`A110724(n)/11`
-/

namespace A110725.P12512497131343402932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110724 n : ℚ) / 11

end

end A110725.P12512497131343402932

/-! ## A110725.P1708885864025901325

`(A061601(n)+2+n)*A056964(n)/11`
-/

namespace A110725.P1708885864025901325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A061601 n + 2 + (n : ℤ)) * A056964 n : ℚ) / 11

end

end A110725.P1708885864025901325

/-! ## A110725.P10885820256091936340

`A052008(A338754(n))/11`
-/

namespace A110725.P10885820256091936340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052008 (A338754 n).toNat : ℚ) / 11

end

end A110725.P10885820256091936340

/-! ## A110725.P16045851255148978543

`A052008(11*A051022(n))/11`
-/

namespace A110725.P16045851255148978543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052008 (11 * A051022 n).toNat : ℚ) / 11

end

end A110725.P16045851255148978543

/-! ## A110725.P14772163669265249702

`A056964(11*A051022(n))/11`
-/

namespace A110725.P14772163669265249702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056964 (11 * A051022 n).toNat : ℚ) / 11

end

end A110725.P14772163669265249702

/-! ## A110725.P2872853343175790531

`A056964(lcm(11, A338754(n)))/11`
-/

namespace A110725.P2872853343175790531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056964 (Int.lcm 11 (A338754 n)) : ℚ) / 11

end

end A110725.P2872853343175790531

/-! ## A110725.P10458267223951397441

`∑{d}[A056964(A051022(n)), A053139(#)]`
-/

namespace A110725.P10458267223951397441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A051022 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A053139 d

end

end A110725.P10458267223951397441

/-! ## A110725.P10059500360053484529

`2*A051022(n)-A056965(A181352(n))`
-/

namespace A110725.P10059500360053484529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051022 n - A056965 (A181352 n).toNat

end

end A110725.P10059500360053484529

/-! ## A110725.P11334423992964360405

`A056964(A051022(n)%A038648(n+1))`
-/

namespace A110725.P11334423992964360405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (Int.tmod (A051022 n) (A038648 (n + 1))).toNat

end

end A110725.P11334423992964360405

/-! ## A110725.P13466261362637337450

`A056964(A051022(n))%A282687(n+1)`
-/

namespace A110725.P13466261362637337450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056964 (A051022 n).toNat) (A282687 (n + 1))

end

end A110725.P13466261362637337450

/-! ## A110725.P8257945423663765163

`A051022(A004086(n))-A001489(A051022(n))`
-/

namespace A110725.P8257945423663765163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (A004086 n).toNat - A001489 (A051022 n).toNat

end

end A110725.P8257945423663765163

/-!
# A110726: Absolute({n concatenate R(n)}-{ R(n) concatenate n}), R(n) = digit reversal of n.

The programs for A110726, there is no canonical definition to state claims against.
-/

/-! ## A110726.P12338540259615237154

`11*A110727(n)`
-/

namespace A110726.P12338540259615237154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A110727 (n + 10)

end

end A110726.P12338540259615237154

/-! ## A110726.P6601758638550483314

`lcm(A109014(A321797(n)²), A110727(n))`
-/

namespace A110726.P6601758638550483314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A109014 (A321797 n ^ 2).toNat) (A110727 (n + 10))

end

end A110726.P6601758638550483314

/-! ## A110726.P17492256044524154203

`A008593(A110727(n))`
-/

namespace A110726.P17492256044524154203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (A110727 (n + 10)).toNat

end

end A110726.P17492256044524154203

/-! ## A110726.P13911439225597846473

`A105570(lcm(11, A110727(n)))`
-/

namespace A110726.P13911439225597846473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (Int.lcm 11 (A110727 (n + 10)))

end

end A110726.P13911439225597846473

/-! ## A110726.P6749631424800432122

`81*A338827(A073731(n))`
-/

namespace A110726.P6749631424800432122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  81 * A338827 (A073731 (n + 10)).toNat

end

end A110726.P6749631424800432122

/-!
# A110727: Absolute({n concatenate R(n)}-{R(n) concatenate n})/11, where R(n) = digit reversal of n.

The programs for A110727, there is no canonical definition to state claims against.
-/

/-! ## A110727.P17742476027146751109

`A110726(n)/11`
-/

namespace A110727.P17742476027146751109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110726 (n + 10) : ℚ) / 11

end

end A110727.P17742476027146751109

/-! ## A110727.P64639865027212665

`A106612(A110726(n))`
-/

namespace A110727.P64639865027212665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A110726 (n + 10)).toNat

end

end A110727.P64639865027212665

/-! ## A110727.P12080844185834833184

`A344420(A110726(n)+1)`
-/

namespace A110727.P12080844185834833184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (A110726 (n + 10) + 1).toNat

end

end A110727.P12080844185834833184

/-! ## A110727.P5851349248090733034

`9*A151949(A073731(n))`
-/

namespace A110727.P5851349248090733034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A151949 (A073731 (n + 10)).toNat

end

end A110727.P5851349248090733034

/-! ## A110727.P9325955798957645148

`81*A347689(A001637(n+1))`
-/

namespace A110727.P9325955798957645148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  81 * A347689 (A001637 (n + 1)).toNat

end

end A110727.P9325955798957645148

/-! ## A110727.P7887714865165198434

`81*A338827(A073731(n))/A109014(A008593(n))`
-/

namespace A110727.P7887714865165198434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (81 * A338827 (A073731 (n + 10)).toNat : ℚ) / (A109014 (A008593 n).toNat : ℚ)

end

end A110727.P7887714865165198434

/-! ## A110727.P16137118121582777522

`81*A338827(A073731(n))/A109014(A321797(n))`
-/

namespace A110727.P16137118121582777522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (81 * A338827 (A073731 (n + 10)).toNat : ℚ) / (A109014 (A321797 n).toNat : ℚ)

end

end A110727.P16137118121582777522

/-! ## A110727.P2723428404840218303

`81*A338827(A073731(n))/A109014(A338754(n))`
-/

namespace A110727.P2723428404840218303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (81 * A338827 (A073731 (n + 10)).toNat : ℚ) / (A109014 (A338754 n).toNat : ℚ)

end

end A110727.P2723428404840218303

/-! ## A110727.P16528964418138990817

`A080465(n)*A165830(2*A162336(n+1))`
-/

namespace A110727.P16528964418138990817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080465 (n + 10) * A165830 (2 * A162336 (n + 1)).toNat

end

end A110727.P16528964418138990817

/-!
# A110728: Digital factorial: a(0) = 1, a(n) = n * (the sum of the digits of a(n-1)).

The programs for A110728, the canonical program `A110728.P2872517974975332487` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110728 has offset 0).

The definition of A110728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 372 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110728.P2872517974975332487

`n*A007953(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A110728

/-- `n*A007953(a(n-1))` -/
def P2872517974975332487.Spec : Prop :=
  ∀ n, P2872517974975332487.a n = A110728 n

theorem P2872517974975332487.correct : P2872517974975332487.Spec := by
  intro n
  simp only [A110728]

end A110728

/-! ## A110728.P15883987423934761380

`sqrt(A118881(a(n-1)))*n` with `a(0)=1`
-/

namespace A110728.P15883987423934761380
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.sqrt (A118881 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℝ) * (n : ℝ)

end

end A110728.P15883987423934761380

namespace A110728

/-- `sqrt(A118881(a(n-1)))*n` -/
def P15883987423934761380.Spec : Prop :=
  ∀ n, P15883987423934761380.a n = (A110728 n : ℝ)

end A110728

/-! ## A110728.P6599713443371823375

`n*(A062028(a(n-1))-a(n-1))` with `a(0)=1`
-/

namespace A110728.P6599713443371823375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (A062028 (a (n - 1)).toNat - a (n - 1))

end

end A110728.P6599713443371823375

namespace A110728

/-- `n*(A062028(a(n-1))-a(n-1))` -/
def P6599713443371823375.Spec : Prop :=
  ∀ n, P6599713443371823375.a n = A110728 n

end A110728

/-! ## A110728.P17214432946552174046

`n/a(n-1)*A057147(a(n-1))` with `a(0)=1`
-/

namespace A110728.P17214432946552174046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) / a (n - 1) * (A057147 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ)

end

end A110728.P17214432946552174046

namespace A110728

/-- `n/a(n-1)*A057147(a(n-1))` -/
def P17214432946552174046.Spec : Prop :=
  ∀ n, P17214432946552174046.a n = (A110728 n : ℚ)

end A110728

/-! ## A110728.P7391731741935883283

`n*(A061762(a(n-1))-A007954(a(n-1)))` with `a(0)=1`
-/

namespace A110728.P7391731741935883283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (A061762 (a (n - 1)).toNat - A007954 (a (n - 1)).toNat)

end

end A110728.P7391731741935883283

namespace A110728

/-- `n*(A061762(a(n-1))-A007954(a(n-1)))` -/
def P7391731741935883283.Spec : Prop :=
  ∀ n, P7391731741935883283.a n = A110728 n

end A110728

/-! ## A110728.P13037165911174893077

`n*A326746(10*a(n-1))` with `a(0)=1`
-/

namespace A110728.P13037165911174893077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A326746 (10 * a (n - 1)).toNat

end

end A110728.P13037165911174893077

namespace A110728

/-- `n*A326746(10*a(n-1))` -/
def P13037165911174893077.Spec : Prop :=
  ∀ n, P13037165911174893077.a n = A110728 n

end A110728

/-!
# A110729: Factorial terms of Digital factorial (A110728).

The programs for A110729, there is no canonical definition to state claims against.
-/

/-! ## A110729.P16831012472498074790

`comp[∑[xor(1, n)]+4]!`
-/

namespace A110729.P16831012472498074790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A110729.P16831012472498074790

/-! ## A110729.P11232564822922562705

`lt[Δ[tan(n+3)], 4]!`
-/

namespace A110729.P11232564822922562705
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n + 3 : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n)

end

end A110729.P11232564822922562705

/-! ## A110729.P11848631219405749303

`lt[tan(cot(n+2)), 2]!`
-/

namespace A110729.P11848631219405749303
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (Real.cot (n + 2 : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n)

end

end A110729.P11848631219405749303

/-! ## A110729.P8904291093088978680

`comp[2*a(n-2)]!` with `a(0)=5, a(1)=8`
-/

namespace A110729.P8904291093088978680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 8] fun n f1 =>
  2 * f1 (n - 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A110729.P8904291093088978680

/-!
# A110730: Irregular triangle read by rows in which row n lists n 1's followed by (n-1) 2's followed by (n-3) 3's ... followed by 1 n.

The programs for A110730, the canonical program `A110730.P8616049705140846369` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110730 has offset 1).

The definition of A110730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110730.P9042080910701806289

`A057557(3*n+1)`
-/

namespace A110730.P9042080910701806289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057557 (3 * n + 1)

end

end A110730.P9042080910701806289

namespace A110730

/-- `A057557(3*n+1)` -/
def P9042080910701806289.Spec : Prop :=
  ∀ n, P9042080910701806289.a n = A110730 (n + 1)

end A110730

/-! ## A110730.P4233259029598978546

`∑{e}[A248164(n+1), #]`
-/

namespace A110730.P4233259029598978546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248164 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A110730.P4233259029598978546

namespace A110730

/-- `∑{e}[A248164(n+1), #]` -/
def P4233259029598978546.Spec : Prop :=
  ∀ n, (P4233259029598978546.a n : ℤ) = A110730 (n + 1)

end A110730

/-! ## A110730.P10099221690297021564

`A357734(∑[n+1])+1`
-/

namespace A110730.P10099221690297021564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357734 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A110730.P10099221690297021564

namespace A110730

/-- `A357734(∑[n+1])+1` -/
def P10099221690297021564.Spec : Prop :=
  ∀ n, P10099221690297021564.a n = A110730 (n + 1)

end A110730

/-! ## A110730.P17630746740401766038

`A057556(3*n+1)+1`
-/

namespace A110730.P17630746740401766038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057556 (3 * n + 1) + 1

end

end A110730.P17630746740401766038

namespace A110730

/-- `A057556(3*n+1)+1` -/
def P17630746740401766038.Spec : Prop :=
  ∀ n, P17630746740401766038.a n = A110730 (n + 1)

end A110730

/-! ## A110730.P9430137124788342806

`dr(A057556(Δ[n²]+n)+1)`
-/

namespace A110730.P9430137124788342806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A057556 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat + 1)

end

end A110730.P9430137124788342806

namespace A110730

/-- `dr(A057556(Δ[n²]+n)+1)` -/
def P9430137124788342806.Spec : Prop :=
  ∀ n, (P9430137124788342806.a n : ℤ) = A110730 (n + 1)

end A110730

/-! ## A110730.P14965202906567168952

`A048881(A043570(n+1))`
-/

namespace A110730.P14965202906567168952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A043570 (n + 1)).toNat

end

end A110730.P14965202906567168952

namespace A110730

/-- `A048881(A043570(n+1))` -/
def P14965202906567168952.Spec : Prop :=
  ∀ n, P14965202906567168952.a n = A110730 (n + 1)

end A110730

/-! ## A110730.P10989411291502990273

`A048881(A043687(n+1))`
-/

namespace A110730.P10989411291502990273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A043687 (n + 1)).toNat

end

end A110730.P10989411291502990273

namespace A110730

/-- `A048881(A043687(n+1))` -/
def P10989411291502990273.Spec : Prop :=
  ∀ n, P10989411291502990273.a n = A110730 (n + 1)

end A110730

/-! ## A110730.P17437980908506926269

`A002260(A273823(n+1))`
-/

namespace A110730.P17437980908506926269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A273823 (n + 1)).toNat

end

end A110730.P17437980908506926269

namespace A110730

/-- `A002260(A273823(n+1))` -/
def P17437980908506926269.Spec : Prop :=
  ∀ n, P17437980908506926269.a n = A110730 (n + 1)

end A110730

/-! ## A110730.P11404990807362085416

`A090996(A379267(n+1))`
-/

namespace A110730.P11404990807362085416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A379267 (n + 1)).toNat

end

end A110730.P11404990807362085416

namespace A110730

/-- `A090996(A379267(n+1))` -/
def P11404990807362085416.Spec : Prop :=
  ∀ n, P11404990807362085416.a n = A110730 (n + 1)

end A110730

/-! ## A110730.P13968280656431130660

`A288002(A238246(n+1))`
-/

namespace A110730.P13968280656431130660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288002 (A238246 (n + 1)).toNat

end

end A110730.P13968280656431130660

namespace A110730

/-- `A288002(A238246(n+1))` -/
def P13968280656431130660.Spec : Prop :=
  ∀ n, P13968280656431130660.a n = A110730 (n + 1)

end A110730

/-! ## A110730.P8831469488241839817

`A048881(A087118(n+2))`
-/

namespace A110730.P8831469488241839817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A087118 (n + 2)).toNat

end

end A110730.P8831469488241839817

namespace A110730

/-- `A048881(A087118(n+2))` -/
def P8831469488241839817.Spec : Prop :=
  ∀ n, P8831469488241839817.a n = A110730 (n + 1)

end A110730

/-! ## A110730.P8616049705140846369

`A090996(eq[2, A023416(n)])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A110730

/-- `A090996(eq[2, A023416(n)])` -/
def P8616049705140846369.Spec : Prop :=
  ∀ n, P8616049705140846369.a n = A110730 (n + 1)

theorem P8616049705140846369.correct : P8616049705140846369.Spec := by
  intro n
  simp only [A110730, Nat.add_sub_cancel]

end A110730

/-! ## A110730.P8855304286994001618

`A048881(eq[3, A005811(n)])`
-/

namespace A110730.P8855304286994001618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A110730.P8855304286994001618

namespace A110730

/-- `A048881(eq[3, A005811(n)])` -/
def P8855304286994001618.Spec : Prop :=
  ∀ n, P8855304286994001618.a n = A110730 (n + 1)

end A110730

/-! ## A110730.P11634365199040891408

`A049501(eq[3, A005811(n)])`
-/

namespace A110730.P11634365199040891408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A110730.P11634365199040891408

namespace A110730

/-- `A049501(eq[3, A005811(n)])` -/
def P11634365199040891408.Spec : Prop :=
  ∀ n, P11634365199040891408.a n = A110730 (n + 1)

end A110730

/-! ## A110730.P14829389191836376868

`A090996(eq[3, A005811(n)])`
-/

namespace A110730.P14829389191836376868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A110730.P14829389191836376868

namespace A110730

/-- `A090996(eq[3, A005811(n)])` -/
def P14829389191836376868.Spec : Prop :=
  ∀ n, P14829389191836376868.a n = A110730 (n + 1)

end A110730

/-! ## A110730.P17675098763190992954

`A090996(eq[2, A037834(n+1)])`
-/

namespace A110730.P17675098763190992954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A110730.P17675098763190992954

namespace A110730

/-- `A090996(eq[2, A037834(n+1)])` -/
def P17675098763190992954.Spec : Prop :=
  ∀ n, P17675098763190992954.a n = A110730 (n + 1)

end A110730

/-! ## A110730.P12299394554409094525

`∑{p}[A248164(n+1), A001221(#)]`
-/

namespace A110730.P12299394554409094525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A110730.P12299394554409094525

namespace A110730

/-- `∑{p}[A248164(n+1), A001221(#)]` -/
def P12299394554409094525.Spec : Prop :=
  ∀ n, P12299394554409094525.a n = A110730 (n + 1)

end A110730

/-!
# A110731: a(n) is the least term of the period of the sequence defined by t(1)=n; t(k) = t(k-1)/sod(t(k-1)) if t(k-1) is a multiple of sod(t(k-1)) or t(k-1)*sod(t(k-1)) otherwise, where sod(m)=A007953(m) is the sum of digits of m.

The programs for A110731, there is no canonical definition to state claims against.
-/

/-! ## A110731.P7456718551468654195

`A131338(A051573(n)+1)`
-/

namespace A110731.P7456718551468654195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131338 (A051573 n + 1).toNat

end

end A110731.P7456718551468654195

/-! ## A110731.P17755225268671327535

`A131835(A167661(n)^A065659(n))`
-/

namespace A110731.P17755225268671327535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131835 (SequenceMachineLib.roundAway ((A167661 n : ℚ) ^ (A065659 n : ℤ))).toNat

end

end A110731.P17755225268671327535

/-! ## A110731.P2055114606945136968

`A229046(A014378(n)*A240893(n+1))`
-/

namespace A110731.P2055114606945136968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229046 (A014378 n * A240893 (n + 1)).toNat

end

end A110731.P2055114606945136968

/-! ## A110731.P15198184277345137853

`A126791(and(A054440(n), A205568(n+1)))`
-/

namespace A110731.P15198184277345137853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126791 (Int.land (A054440 n) (A205568 (n + 1))).toNat

end

end A110731.P15198184277345137853

/-! ## A110731.P7794700524423001207

`A114806(A114800(A288327(n+1))-(n+1))`
-/

namespace A110731.P7794700524423001207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114806 (A114800 (A288327 (n + 1)).toNat - (n + 1 : ℤ)).toNat

end

end A110731.P7794700524423001207

/-!
# A110732: Let n = abc... where a,b,c ... are the digits. Then a(n) = least multiple of n of the form aaa...bbb...ccc..., with each digit having the same frequency f > 1; or 0 if no such number exists.

The programs for A110732, there is no canonical definition to state claims against.
-/

/-! ## A110732.P1437704982480513983

`(n+1)*A110733(n+1)`
-/

namespace A110732.P1437704982480513983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A110733 (n + 1)

end

end A110732.P1437704982480513983

/-!
# A110733: a(n) = A110732(n)/n.

The programs for A110733, there is no canonical definition to state claims against.
-/

/-! ## A110733.P6536307191266899437

`A110732(n+1)/(n+1)`
-/

namespace A110733.P6536307191266899437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110732 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A110733.P6536307191266899437

/-!
# A110734: Let n = a_1a_2...a_k, where the a_i are digits. a(n) = least multiple of n of the form a_1b_1a_2b_2...b_{k-1}a_k, obtained by inserting single digits b_i in the gaps; 0 if no such number exists.

The programs for A110734, there is no canonical definition to state claims against.
-/

/-! ## A110734.P2063634551880695825

`A080436(n+1)*A097325(A262551(n+1))`
-/

namespace A110734.P2063634551880695825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080436 (n + 1) * A097325 (A262551 (n + 1)).toNat

end

end A110734.P2063634551880695825

/-!
# A110735: Let n = a_1a_2...a_k, where the a_i are digits. a(n) = least multiple of n of the type b_1a_1b_2a_2...a_kb_{k+1}, obtained by inserting single digits b_i in the gaps and both ends; 0 if no such number exists.

The programs for A110735, there is no canonical definition to state claims against.
-/

/-! ## A110735.P3456214999766057250

`(n+1)*A110736(n+1)`
-/

namespace A110735.P3456214999766057250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A110736 (n + 1)

end

end A110735.P3456214999766057250

/-! ## A110735.P16946519726092633132

`A084042(n+1)*A110731(A048597(n+1))`
-/

namespace A110735.P16946519726092633132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084042 (n + 1) * A110731 (A048597 (n + 1)).toNat

end

end A110735.P16946519726092633132

/-! ## A110735.P7258450517004161392

`A084042(n+1)*A110731(A085908(n+1))`
-/

namespace A110735.P7258450517004161392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084042 (n + 1) * A110731 (A085908 (n + 1)).toNat

end

end A110735.P7258450517004161392

/-! ## A110735.P15560170411208435191

`A084042(n+1)*A110731(A110731(n+1))`
-/

namespace A110735.P15560170411208435191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084042 (n + 1) * A110731 (A110731 (n + 1)).toNat

end

end A110735.P15560170411208435191

/-! ## A110735.P435208572865767812

`A084042(A032555(n+1))`
-/

namespace A110735.P435208572865767812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084042 (A032555 (n + 1)).toNat

end

end A110735.P435208572865767812

/-!
# A110736: A110735(n)/n.

The programs for A110736, there is no canonical definition to state claims against.
-/

/-! ## A110736.P16017222470604140102

`A110735(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A110736.P16017222470604140102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110735 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A110736.P16017222470604140102

/-! ## A110736.P12054664244673679778

`(n+1)^A008683(A295609(n))*A110735(n+1)`
-/

namespace A110736.P12054664244673679778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A295609 n).toNat : ℤ) * (A110735 (n + 1) : ℚ)

end

end A110736.P12054664244673679778

/-! ## A110736.P751796021407928741

`A084042(n+1)*A110731(A048597(n+1))/(n+1)`
-/

namespace A110736.P751796021407928741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084042 (n + 1) * A110731 (A048597 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A110736.P751796021407928741

/-!
# A110737: Row sums in A112668.

The programs for A110737, there is no canonical definition to state claims against.
-/

/-! ## A110737.P2003860632902024693

`A076943(n+1)/(A074792(n+1)-1)*(n+1)`
-/

namespace A110737.P2003860632902024693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076943 (n + 1) : ℚ) / (A074792 (n + 1) - 1 : ℚ) * (n + 1 : ℚ)

end

end A110737.P2003860632902024693

/-! ## A110737.P10064888602476432558

`A076943(n+1)/A023443(A074792(n+1))*(n+1)`
-/

namespace A110737.P10064888602476432558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076943 (n + 1) : ℚ) / (A023443 (A074792 (n + 1)).toNat : ℚ) * (n + 1 : ℚ)

end

end A110737.P10064888602476432558

/-! ## A110737.P9306420157494999530

`A076943(n+1)/(A110738(n+1)+A057428(n))*(n+1)`
-/

namespace A110737.P9306420157494999530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076943 (n + 1) : ℚ) / (A110738 (n + 1) + A057428 n : ℚ) * (n + 1 : ℚ)

end

end A110737.P9306420157494999530

/-! ## A110737.P298085085638531102

`(n+1)*A076943(n+1)/(A083503(n+1)-A054977(n))`
-/

namespace A110737.P298085085638531102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A076943 (n + 1) : ℚ) / (A083503 (n + 1) - A054977 n : ℚ))

end

end A110737.P298085085638531102

/-! ## A110737.P3749543194906524213

`(n+1)*A110739(n+1)`
-/

namespace A110737.P3749543194906524213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A110739 (n + 1)

end

end A110737.P3749543194906524213

/-!
# A110738: a(n) = common ratio for row n in A112668.

The programs for A110738, there is no canonical definition to state claims against.
-/

/-! ## A110738.P185312857515140351

`A074792(n+1)-floor(acot(n))`
-/

namespace A110738.P185312857515140351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074792 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A110738.P185312857515140351

/-! ## A110738.P5658908316652132941

`A083503(n+1)%comp[∑[n]]`
-/

namespace A110738.P5658908316652132941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083503 (n + 1)) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A110738.P5658908316652132941

/-! ## A110738.P249411958808733137

`A083503(gcd(n, a(n-1))+n)` with `a(0)=1`
-/

namespace A110738.P249411958808733137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A083503 (Int.gcd (n : ℤ) (a (n - 1)) + n)

end

end A110738.P249411958808733137

/-! ## A110738.P10680280895006049134

`A181440(A074792(n+1))`
-/

namespace A110738.P10680280895006049134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A074792 (n + 1)).toNat

end

end A110738.P10680280895006049134

/-! ## A110738.P14168339183342151833

`A074792(n+1)-A000007(n)`
-/

namespace A110738.P14168339183342151833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074792 (n + 1) - A000007 n

end

end A110738.P14168339183342151833

/-! ## A110738.P11817454397997513388

`A083503(n+1)-A000038(n)`
-/

namespace A110738.P11817454397997513388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083503 (n + 1) - A000038 n

end

end A110738.P11817454397997513388

/-! ## A110738.P16687670497509599888

`A074792(n+1)-A151878(n)`
-/

namespace A110738.P16687670497509599888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074792 (n + 1) - A151878 n

end

end A110738.P16687670497509599888

/-! ## A110738.P3355762737950088253

`A074792(n+1)-A151909(n)`
-/

namespace A110738.P3355762737950088253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074792 (n + 1) - A151909 n

end

end A110738.P3355762737950088253

/-! ## A110738.P3027275312557719637

`A074792(n+1)-A151933(n)`
-/

namespace A110738.P3027275312557719637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074792 (n + 1) - A151933 n

end

end A110738.P3027275312557719637

/-! ## A110738.P14507418965823643321

`A074792(n+1)/A054977(n)`
-/

namespace A110738.P14507418965823643321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074792 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A110738.P14507418965823643321

/-!
# A110739: Arithmetic mean of row n in A112668.

The programs for A110739, there is no canonical definition to state claims against.
-/

/-! ## A110739.P14188005224028459204

`A110737(n+1)/(n+1)`
-/

namespace A110739.P14188005224028459204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110737 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A110739.P14188005224028459204

/-! ## A110739.P3971561693180504238

`A076943(n+1)/(A074792(n+1)-1)`
-/

namespace A110739.P3971561693180504238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076943 (n + 1) : ℚ) / (A074792 (n + 1) - 1 : ℚ)

end

end A110739.P3971561693180504238

/-! ## A110739.P3402555735214626684

`A076943(n+1)/A023443(A074792(n+1))`
-/

namespace A110739.P3402555735214626684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076943 (n + 1) : ℚ) / (A023443 (A074792 (n + 1)).toNat : ℚ)

end

end A110739.P3402555735214626684

/-! ## A110739.P5770339275034379585

`A076943(n+1)/(A110738(n+1)+A057428(n))`
-/

namespace A110739.P5770339275034379585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076943 (n + 1) : ℚ) / (A110738 (n + 1) + A057428 n : ℚ)

end

end A110739.P5770339275034379585

/-! ## A110739.P1915097788518161154

`A076943(n+1)/(A083503(n+1)-A054977(n))`
-/

namespace A110739.P1915097788518161154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076943 (n + 1) : ℚ) / (A083503 (n + 1) - A054977 n : ℚ)

end

end A110739.P1915097788518161154

/-!
# A110740: Numbers k such that the concatenation 1,2,3,...,(k-1) is divisible by k.

The programs for A110740, there is no canonical definition to state claims against.
-/

/-! ## A110740.P3878547394150282105

`∩[A029455(n+1), A251535(n)]`
-/

namespace A110740.P3878547394150282105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251535 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110740.P3878547394150282105

/-! ## A110740.P13895866112317207810

`∩[A029455(n+1), A172407(n+1)]`
-/

namespace A110740.P13895866112317207810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110740.P13895866112317207810

/-! ## A110740.P9213665790989279887

`∩[A029455(n+1), A171950(A089270(n+1))]`
-/

namespace A110740.P9213665790989279887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171950 (A089270 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110740.P9213665790989279887

/-!
# A110741: Primes with at most n digits and a digit sum n in ascending order. 2,11; 3; 13,31,103,211,1021,2011,3001; 5,23,41,113,...

The programs for A110741, there is no canonical definition to state claims against.
-/

/-! ## A110741.P10160452787972143433

`filter[A157715(n+1), A108358(#)]`
-/

namespace A110741.P10160452787972143433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A108358 (f1 j).toNat = 1) n)

end

end A110741.P10160452787972143433

/-! ## A110741.P7822315281212417675

`filter[A157715(n+1), A181932(#)]`
-/

namespace A110741.P7822315281212417675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181932 (f1 j).toNat = 1) n)

end

end A110741.P7822315281212417675

/-! ## A110741.P18052958270292976594

`A157715(n+2)%A157728(A157727(n+4))`
-/

namespace A110741.P18052958270292976594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157715 (n + 2)) (A157728 (A157727 (n + 4)).toNat)

end

end A110741.P18052958270292976594

/-! ## A110741.P11813147540036929336

`filter[A157715(n+1), A188068(#)]`
-/

namespace A110741.P11813147540036929336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188068 (f1 j).toNat = 1) n)

end

end A110741.P11813147540036929336

/-! ## A110741.P4076886112895682268

`A157715(n+2)%A052451(A020705(n))`
-/

namespace A110741.P4076886112895682268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157715 (n + 2)) (A052451 (A020705 n).toNat)

end

end A110741.P4076886112895682268

/-!
# A110743: Smallest prime beginning with n reversed.

The programs for A110743, there is no canonical definition to state claims against.
-/

/-! ## A110743.P15181261975218743912

`A018800(A004086(n+1))`
-/

namespace A110743.P15181261975218743912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (A004086 (n + 1)).toNat

end

end A110743.P15181261975218743912

/-! ## A110743.P10719886653164680017

`A018800(A345110(n+1))`
-/

namespace A110743.P10719886653164680017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (A345110 (n + 1)).toNat

end

end A110743.P10719886653164680017

/-! ## A110743.P15818657628686613289

`A018800(A135020(2*(n+1)))`
-/

namespace A110743.P15818657628686613289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (A135020 (2 * (n + 1))).toNat

end

end A110743.P15818657628686613289

/-! ## A110743.P7504467986978129823

`A018800(A056964(n+1)-(n+1))`
-/

namespace A110743.P7504467986978129823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (A056964 (n + 1) - (n + 1 : ℤ)).toNat

end

end A110743.P7504467986978129823

/-!
# A110744: Integers k such that k divides LS(k) or LS(k) divides k, where LS is the "Look and Say" function (A045918).

The programs for A110744, there is no canonical definition to state claims against.
-/

/-! ## A110744.P3317087813760298541

`∪[A079342(n+1), A152957(n+1)]%A152957(n+1)`
-/

namespace A110744.P3317087813760298541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152957 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A152957 (n + 1))

end

end A110744.P3317087813760298541

/-!
# A110746: a(n+1) is the least multiple of a(n) such that the digit reversal of the concatenation of the first n+1 terms is prime.

The programs for A110746, there is no canonical definition to state claims against.
-/

/-! ## A110746.P13266921378407890091

`A394533(A382373(n))`
-/

namespace A110746.P13266921378407890091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394533 (A382373 n).toNat

end

end A110746.P13266921378407890091

/-! ## A110746.P4937182501230945893

`∏[A091382(A005651(n))]`
-/

namespace A110746.P4937182501230945893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091382 (A005651 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110746.P4937182501230945893

/-! ## A110746.P8462591152945459415

`∏[A062175(A000262(n))+1]`
-/

namespace A110746.P8462591152945459415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062175 (A000262 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110746.P8462591152945459415

/-!
# A110748: Form triangle shown below, in which the n-th row contains n terms of an arithmetic progression with first term 1 and common difference n. Then a(n) = terms of the n-th row (mod 10), concatenated.

The programs for A110748, there is no canonical definition to state claims against.
-/

/-! ## A110748.P8339680723099174006

`floor(A085938(n+1)/10)`
-/

namespace A110748.P8339680723099174006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A085938 (n + 1) : ℚ) / 10⌋

end

end A110748.P8339680723099174006

/-!
# A110749: Triangle read by rows with the n-th row containing the first n multiples of n with digits reversed.

The programs for A110749, there is no canonical definition to state claims against.
-/

/-! ## A110749.P6509722058885616292

`A004086((1-C(∑[char[∑[n]]], 2)+n)*∑[char[∑[n]]])`
-/

namespace A110749.P6509722058885616292
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ((1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)).toNat

end

end A110749.P6509722058885616292

/-! ## A110749.P16638290772002601381

`A004086(A075362(n+1))`
-/

namespace A110749.P16638290772002601381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A075362 (n + 1)).toNat

end

end A110749.P16638290772002601381

/-! ## A110749.P200894786550129803

`A004086(A223544(n+1)+1)`
-/

namespace A110749.P200894786550129803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A223544 (n + 1) + 1).toNat

end

end A110749.P200894786550129803

/-! ## A110749.P2382157902426841657

`A004086(round(sqrt(2*(n+1)))*A002260(n+1))`
-/

namespace A110749.P2382157902426841657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) * A002260 (n + 1)).toNat

end

end A110749.P2382157902426841657

/-! ## A110749.P2682315175831987308

`A004086((A002262(n)+1)*round(sqrt(2*(n+1))))`
-/

namespace A110749.P2682315175831987308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ((A002262 n + 1) * SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat

end

end A110749.P2682315175831987308

/-! ## A110749.P13600744163205008386

`A135020(2*A075362(n+1))`
-/

namespace A110749.P13600744163205008386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (2 * A075362 (n + 1)).toNat

end

end A110749.P13600744163205008386

/-! ## A110749.P10537004461933915580

`A004093(5*A075362(n+1))`
-/

namespace A110749.P10537004461933915580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (5 * A075362 (n + 1)).toNat

end

end A110749.P10537004461933915580

/-! ## A110749.P5494174629762698150

`A103168(10*A075362(n+1))`
-/

namespace A110749.P5494174629762698150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103168 (10 * A075362 (n + 1)).toNat

end

end A110749.P5494174629762698150

/-!
# A110750: Least palindromic multiple of composite(n), or 0 if no such number exists.

The programs for A110750, there is no canonical definition to state claims against.
-/

/-! ## A110750.P16894104101639728791

`A020485(A002808(n+1))`
-/

namespace A110750.P16894104101639728791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (A002808 (n + 1)).toNat

end

end A110750.P16894104101639728791

/-! ## A110750.P15601106221047507872

`A020485(A018252(n+2))`
-/

namespace A110750.P15601106221047507872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (A018252 (n + 2)).toNat

end

end A110750.P15601106221047507872

/-! ## A110750.P8982759068043814593

`A020485(A141468(n+3))`
-/

namespace A110750.P8982759068043814593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (A141468 (n + 3)).toNat

end

end A110750.P8982759068043814593

/-! ## A110750.P9446699505731630228

`A020485(lt[1, A003415(n)])`
-/

namespace A110750.P9446699505731630228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A110750.P9446699505731630228

/-! ## A110750.P4689381685794714568

`A020485(lt[1, A032741(n)])`
-/

namespace A110750.P4689381685794714568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A110750.P4689381685794714568

/-! ## A110750.P450811315487161159

`A020485(lt[n, A039653(n)])`
-/

namespace A110750.P450811315487161159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A110750.P450811315487161159

/-! ## A110750.P17547439893255608531

`A020485(lt[2, A298422(n+1)])`
-/

namespace A110750.P17547439893255608531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A110750.P17547439893255608531

/-! ## A110750.P3077708115936540168

`A020485(comp[C(A006530(n+1), n)])`
-/

namespace A110750.P3077708115936540168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A110750.P3077708115936540168

/-! ## A110750.P13280064105155102975

`A020485(comp[C(A014963(n+1), n)])`
-/

namespace A110750.P13280064105155102975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014963 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A110750.P13280064105155102975

/-! ## A110750.P1690713302137033532

`A020485(comp[C(A020639(n+1), n)])`
-/

namespace A110750.P1690713302137033532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A110750.P1690713302137033532

/-!
# A110751: Numbers n such that n and its digital reversal have the same prime divisors.

The programs for A110751, the canonical program `A110751.P9837249178197633257` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110751 has offset 1).

The definition of A110751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110751.P10800839145068686904

`record[A055483(n+1)]%A204867(n+1)`
-/

namespace A110751.P10800839145068686904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A204867 (n + 1))

end

end A110751.P10800839145068686904

namespace A110751

/-- `record[A055483(n+1)]%A204867(n+1)` -/
def P10800839145068686904.Spec : Prop :=
  ∀ n, P10800839145068686904.a n = A110751 (n + 1)

end A110751

/-! ## A110751.P17599827405591487017

`record[A055483(A008620(n))]`
-/

namespace A110751.P17599827405591487017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110751.P17599827405591487017

namespace A110751

/-- `record[A055483(A008620(n))]` -/
def P17599827405591487017.Spec : Prop :=
  ∀ n, P17599827405591487017.a n = A110751 (n + 1)

end A110751

/-! ## A110751.P8882065626969455877

`record[A055483(A008611(n+2))]`
-/

namespace A110751.P8882065626969455877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A008611 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110751.P8882065626969455877

namespace A110751

/-- `record[A055483(A008611(n+2))]` -/
def P8882065626969455877.Spec : Prop :=
  ∀ n, P8882065626969455877.a n = A110751 (n + 1)

end A110751

/-! ## A110751.P665675719989529194

`record[A055483(n+1)%A111192(3*n+1)]`
-/

namespace A110751.P665675719989529194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055483 (n + 1)) (A111192 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110751.P665675719989529194

namespace A110751

/-- `record[A055483(n+1)%A111192(3*n+1)]` -/
def P665675719989529194.Spec : Prop :=
  ∀ n, P665675719989529194.a n = A110751 (n + 1)

end A110751

/-! ## A110751.P10158417429260755743

`record[gcd(A033584(3*(n+1)), A055483(n+1))]`
-/

namespace A110751.P10158417429260755743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033584 (3 * (n + 1))) (A055483 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110751.P10158417429260755743

namespace A110751

/-- `record[gcd(A033584(3*(n+1)), A055483(n+1))]` -/
def P10158417429260755743.Spec : Prop :=
  ∀ n, (P10158417429260755743.a n : ℤ) = A110751 (n + 1)

end A110751

/-! ## A110751.P1058727962747285616

`record[gcd(A004093(5*n), A028310(n))]`
-/

namespace A110751.P1058727962747285616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004093 (5 * n)) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110751.P1058727962747285616

namespace A110751

/-- `record[gcd(A004093(5*n), A028310(n))]` -/
def P1058727962747285616.Spec : Prop :=
  ∀ n, (P1058727962747285616.a n : ℤ) = A110751 (n + 1)

end A110751

/-! ## A110751.P10447231903632140079

`eq[n, A065033(A056964(n))]`
-/

namespace A110751.P10447231903632140079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A056964 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110751.P10447231903632140079

namespace A110751

/-- `eq[n, A065033(A056964(n))]` -/
def P10447231903632140079.Spec : Prop :=
  ∀ n, (P10447231903632140079.a n : ℤ) = A110751 (n + 1)

end A110751

/-! ## A110751.P8998151611226455473

`∑[A097449(Δ[A002113(n+1)])]`
-/

namespace A110751.P8998151611226455473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097449 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110751.P8998151611226455473

namespace A110751

/-- `∑[A097449(Δ[A002113(n+1)])]` -/
def P8998151611226455473.Spec : Prop :=
  ∀ n, P8998151611226455473.a n = A110751 (n + 1)

end A110751

/-! ## A110751.P2220228026586820546

`∑[A118759(Δ[A002113(n+1)])]`
-/

namespace A110751.P2220228026586820546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110751.P2220228026586820546

namespace A110751

/-- `∑[A118759(Δ[A002113(n+1)])]` -/
def P2220228026586820546.Spec : Prop :=
  ∀ n, P2220228026586820546.a n = A110751 (n + 1)

end A110751

/-! ## A110751.P14947714034981055366

`lt[A338827(n), log(A338785(n+1))]`
-/

namespace A110751.P14947714034981055366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A338785 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A110751.P14947714034981055366

namespace A110751

/-- `lt[A338827(n), log(A338785(n+1))]` -/
def P14947714034981055366.Spec : Prop :=
  ∀ n, (P14947714034981055366.a n : ℤ) = A110751 (n + 1)

end A110751

/-! ## A110751.P1886375317612235395

`eq[2*A066393(n), A066393(A056964(n))]`
-/

namespace A110751.P1886375317612235395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066393 (A056964 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110751.P1886375317612235395

namespace A110751

/-- `eq[2*A066393(n), A066393(A056964(n))]` -/
def P1886375317612235395.Spec : Prop :=
  ∀ n, (P1886375317612235395.a n : ℤ) = A110751 (n + 1)

end A110751

/-! ## A110751.P9837249178197633257

`A059995(A239019(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A110751

/-- `A059995(A239019(n+1))` -/
def P9837249178197633257.Spec : Prop :=
  ∀ n, P9837249178197633257.a n = A110751 (n + 1)

theorem P9837249178197633257.correct : P9837249178197633257.Spec := by
  intro n
  simp only [A110751, Nat.add_sub_cancel]

end A110751

/-! ## A110751.P2467290268695571489

`record[A047813(A160542(n+1)-n)]`
-/

namespace A110751.P2467290268695571489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A160542 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110751.P2467290268695571489

namespace A110751

/-- `record[A047813(A160542(n+1)-n)]` -/
def P2467290268695571489.Spec : Prop :=
  ∀ n, P2467290268695571489.a n = A110751 (n + 1)

end A110751

/-!
# A110752: a(n) is the number of divisors of the concatenation of 1089 with itself n times.

The programs for A110752, there is no canonical definition to state claims against.
-/

/-! ## A110752.P8349727717367655026

`A110753(n+1)/2`
-/

namespace A110752.P8349727717367655026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110753 (n + 1) : ℚ) / 2

end

end A110752.P8349727717367655026

/-! ## A110752.P6777362571169756868

`A110754(n+1)/4`
-/

namespace A110752.P6777362571169756868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110754 (n + 1) : ℚ) / 4

end

end A110752.P6777362571169756868

/-! ## A110752.P10420827420847385434

`floor(A110753(Δ[n²]-n)/2)`
-/

namespace A110752.P10420827420847385434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A110753 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2⌋

end

end A110752.P10420827420847385434

/-! ## A110752.P2648484888374852405

`A110753(n+1)²%(1-A110754(n+1))`
-/

namespace A110752.P2648484888374852405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110753 (n + 1) ^ 2) (1 - A110754 (n + 1))

end

end A110752.P2648484888374852405

/-! ## A110752.P13292460016079173134

`(char[A002262(n)]-1/2)*A110753(Δ[n²]-n)`
-/

namespace A110752.P13292460016079173134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) - (1 : ℚ) / 2) * (A110753 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat : ℚ)

end

end A110752.P13292460016079173134

/-!
# A110753: a(n) is the number of divisors of the concatenation of 2178 with itself n times.

The programs for A110753, there is no canonical definition to state claims against.
-/

/-! ## A110753.P8096878618866586868

`2*A110752(n+1)`
-/

namespace A110753.P8096878618866586868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110752 (n + 1)

end

end A110753.P8096878618866586868

/-! ## A110753.P6380504314713221237

`A110754(n+1)/2`
-/

namespace A110753.P6380504314713221237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110754 (n + 1) : ℚ) / 2

end

end A110753.P6380504314713221237

/-! ## A110753.P5709800691662551357

`A110752(n+1)+A110752(Δ[n²]-n)`
-/

namespace A110753.P5709800691662551357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110752 (n + 1) + A110752 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A110753.P5709800691662551357

/-! ## A110753.P16769365857337105071

`A110752(n+1)+A110752(n+1)+A070097(n+1)`
-/

namespace A110753.P16769365857337105071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110752 (n + 1) + (A110752 (n + 1) + A070097 (n + 1))

end

end A110753.P16769365857337105071

/-! ## A110753.P6125305789064269742

`A110754(n+1)-(A110752(n+1)+A110752(n+1))`
-/

namespace A110753.P6125305789064269742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110754 (n + 1) - (A110752 (n + 1) + A110752 (n + 1))

end

end A110753.P6125305789064269742

/-!
# A110754: a(n) = tau(N), where N = the number obtained as a concatenation of 8712 with itself n times and tau(n) = number of divisors of n.

The programs for A110754, there is no canonical definition to state claims against.
-/

/-! ## A110754.P14094169881868758907

`2*A110753(n+1)`
-/

namespace A110754.P14094169881868758907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110753 (n + 1)

end

end A110754.P14094169881868758907

/-! ## A110754.P10036958785918518922

`4*A110752(n+1)`
-/

namespace A110754.P10036958785918518922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A110752 (n + 1)

end

end A110754.P10036958785918518922

/-! ## A110754.P11675151871254002610

`4*A110753(Δ[n²]-n)/2`
-/

namespace A110754.P11675151871254002610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A110753 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2)

end

end A110754.P11675151871254002610

/-! ## A110754.P4507329584843383797

`A110753(n+1)²/A110752(n+1)`
-/

namespace A110754.P4507329584843383797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110753 (n + 1) ^ 2 : ℚ) / (A110752 (n + 1) : ℚ)

end

end A110754.P4507329584843383797

/-! ## A110754.P17681912001228628745

`A110753(n+1)+A110753(Δ[n²]-n)`
-/

namespace A110754.P17681912001228628745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110753 (n + 1) + A110753 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A110754.P17681912001228628745

/-!
# A110755: a(n) = Tau(N), where N = the number obtained as a concatenation of 9801 with itself n times. Tau(n) = number of divisors of n.

The programs for A110755, there is no canonical definition to state claims against.
-/

/-! ## A110755.P14793150529192164270

`A100493(A038500(n+1))*A273015(2*n+1)`
-/

namespace A110755.P14793150529192164270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (A038500 (n + 1)).toNat * A273015 (2 * n + 1)

end

end A110755.P14793150529192164270

/-!
# A110759: a(n) = tau(N), where N = concatenation 1,2,3,...,n,...,3,2,1. E.g., for n = 4, N = 1234321.

The programs for A110759, there is no canonical definition to state claims against.
-/

/-! ## A110759.P15988342732071874789

`A063750(A032555(n+1))`
-/

namespace A110759.P15988342732071874789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063750 (A032555 (n + 1)).toNat

end

end A110759.P15988342732071874789

/-! ## A110759.P14867921706805852271

`A063750(A032557(n+1))`
-/

namespace A110759.P14867921706805852271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063750 (A032557 (n + 1)).toNat

end

end A110759.P14867921706805852271

/-! ## A110759.P2784189568407513296

`A063750(A032559(n+1))`
-/

namespace A110759.P2784189568407513296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063750 (A032559 (n + 1)).toNat

end

end A110759.P2784189568407513296

/-! ## A110759.P4574928066915564742

`A063750(A032563(n+1))`
-/

namespace A110759.P4574928066915564742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063750 (A032563 (n + 1)).toNat

end

end A110759.P4574928066915564742

/-! ## A110759.P6712343452208139661

`A063750(A032565(n+1))`
-/

namespace A110759.P6712343452208139661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063750 (A032565 (n + 1)).toNat

end

end A110759.P6712343452208139661

/-!
# A110763: a(0) =1, a(n+1) = pi(N), N = concatenation a(1), a(2), a(3), ...a(n).

The programs for A110763, there is no canonical definition to state claims against.
-/

/-! ## A110763.P4484487803536858684

`A325458(A150868(n+1))`
-/

namespace A110763.P4484487803536858684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325458 (A150868 (n + 1)).toNat

end

end A110763.P4484487803536858684

/-!
# A110764: a(1) = 1; a(n+1) is the number of distinct prime divisors of concatenation a(1), a(2), a(3), ..., a(n).

The programs for A110764, there is no canonical definition to state claims against.
-/

/-! ## A110764.P18347031532814963699

`A102364(A207735(n)+A077168(n))`
-/

namespace A110764.P18347031532814963699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102364 (A207735 n + A077168 n).toNat

end

end A110764.P18347031532814963699

/-! ## A110764.P16848771297008805388

`A001222(A214122(n+2)+A025049(2*n))`
-/

namespace A110764.P16848771297008805388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A214122 (n + 2) + A025049 (2 * n)).toNat

end

end A110764.P16848771297008805388

/-! ## A110764.P9976433702195456842

`xor(A010054(A082383(n)), A045917(3*n+1))`
-/

namespace A110764.P9976433702195456842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010054 (A082383 n).toNat) (A045917 (3 * n + 1))

end

end A110764.P9976433702195456842

/-! ## A110764.P16262179796674949622

`A008683(A161198(2*n+1))+A002375(3*n+1)`
-/

namespace A110764.P16262179796674949622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A161198 (2 * n + 1)).toNat + A002375 (3 * n + 1)

end

end A110764.P16262179796674949622

/-!
# A110765: Let n in binary be a k-bit number with bits d_1, d_2, ..., d_k (concatenated). a(n) = 2^d_1 * 3^d_2 * ... * prime(k)^d_k, where prime(k) is the k-th prime.

The programs for A110765, there is no canonical definition to state claims against.
-/

/-! ## A110765.P10307324582822606822

`A019565(A030101(n))`
-/

namespace A110765.P10307324582822606822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A030101 n).toNat

end

end A110765.P10307324582822606822

/-! ## A110765.P17416782816910373748

`A019565(A055944(n)-n)`
-/

namespace A110765.P17416782816910373748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A055944 n - (n : ℤ)).toNat

end

end A110765.P17416782816910373748

/-! ## A110765.P14039194354066819163

`A302033(A378299(n))`
-/

namespace A110765.P14039194354066819163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302033 (A378299 n).toNat

end

end A110765.P14039194354066819163

/-! ## A110765.P12179701409976267011

`A387465(2*n)/A387465(n)`
-/

namespace A110765.P12179701409976267011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387465 (2 * n) : ℚ) / (A387465 n : ℚ)

end

end A110765.P12179701409976267011

/-! ## A110765.P4289657913559378825

`gcd(A186944(n+1), A387465(n))`
-/

namespace A110765.P4289657913559378825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A186944 (n + 1)) (A387465 n)

end

end A110765.P4289657913559378825

/-! ## A110765.P15832932808193538297

`A137502(A019565(n))`
-/

namespace A110765.P15832932808193538297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (A019565 n).toNat

end

end A110765.P15832932808193538297

/-! ## A110765.P5432606172725540563

`A273258(A019565(2*n-n))`
-/

namespace A110765.P5432606172725540563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273258 (A019565 (2 * n - n)).toNat

end

end A110765.P5432606172725540563

/-!
# A110766: Fractalization of Pi.

The programs for A110766, there is no canonical definition to state claims against.
-/

/-! ## A110766.P5143218531574333962

`A001355(floor(n/2^val(n+1, 2))+1)`
-/

namespace A110766.P5143218531574333962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ + 1).toNat

end

end A110766.P5143218531574333962

/-! ## A110766.P5861823787805661368

`A000796(floor(n/2^val(n+1, 2))/2)`
-/

namespace A110766.P5861823787805661368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((SequenceMachineLib.roundAway ((⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / 2)).toNat + 1)

end

end A110766.P5861823787805661368

/-! ## A110766.P18133411331485433027

`A001355(A000265(n+1))`
-/

namespace A110766.P18133411331485433027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A000265 (n + 1)).toNat

end

end A110766.P18133411331485433027

/-! ## A110766.P18296192194828919880

`A001355(A153733(n)+1)`
-/

namespace A110766.P18296192194828919880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A153733 n + 1).toNat

end

end A110766.P18296192194828919880

/-! ## A110766.P9089184022781613692

`A076790(A153733(n)+1)`
-/

namespace A110766.P9089184022781613692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076790 (A153733 n + 1).toNat

end

end A110766.P9089184022781613692

/-! ## A110766.P16148712162660346465

`A000796(A110962(2*n))`
-/

namespace A110766.P16148712162660346465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A110962 (2 * n)).toNat + 1)

end

end A110766.P16148712162660346465

/-! ## A110766.P11819818563228885757

`A000796(A003602(n+1)-1)`
-/

namespace A110766.P11819818563228885757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A003602 (n + 1) - 1).toNat + 1)

end

end A110766.P11819818563228885757

/-! ## A110766.P11996170367636217846

`A001355(2*A003602(n+1)-1)`
-/

namespace A110766.P11996170367636217846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * A003602 (n + 1) - 1).toNat

end

end A110766.P11996170367636217846

/-! ## A110766.P16783822461342510126

`A000796(A110963(2*n+1)-1)`
-/

namespace A110766.P16783822461342510126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A110963 (2 * n + 1) - 1).toNat + 1)

end

end A110766.P16783822461342510126

/-! ## A110766.P12153075268629122996

`A000796((A000265(n+1)-1)/2)`
-/

namespace A110766.P12153075268629122996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((SequenceMachineLib.roundAway ((A000265 (n + 1) - 1 : ℚ) / 2)).toNat + 1)

end

end A110766.P12153075268629122996

/-! ## A110766.P9142080579125954564

`A001355(A003602(n+1)+A003602(n+1)-1)`
-/

namespace A110766.P9142080579125954564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (A003602 (n + 1) + (A003602 (n + 1) - 1)).toNat

end

end A110766.P9142080579125954564

/-! ## A110766.P5707974596420176891

`A095709(A249725(n+1))`
-/

namespace A110766.P5707974596420176891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095709 (A249725 (n + 1)).toNat

end

end A110766.P5707974596420176891

/-! ## A110766.P4930060327489691156

`A138114(A209268(n+1))`
-/

namespace A110766.P4930060327489691156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138114 (A209268 (n + 1)).toNat

end

end A110766.P4930060327489691156

/-! ## A110766.P15628685456494468643

`A104691(A153733(n)+2)`
-/

namespace A110766.P15628685456494468643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104691 (A153733 n + 2).toNat

end

end A110766.P15628685456494468643

/-! ## A110766.P4107832107994381325

`A104691(A000265(n+1)+1)`
-/

namespace A110766.P4107832107994381325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104691 (A000265 (n + 1) + 1).toNat

end

end A110766.P4107832107994381325

/-!
# A110767: a(1) = 11 then the least number of concatenation of n that gives prime when placed on the most significant side of the previous concatenation.

The programs for A110767, there is no canonical definition to state claims against.
-/

/-! ## A110767.P18284671249965823222

`(n+1)*A000042(A088062(n+1))`
-/

namespace A110767.P18284671249965823222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000042 (A088062 (n + 1)).toNat

end

end A110767.P18284671249965823222

/-! ## A110767.P10928888811976938306

`A002275(A088062(n+1))*A342810(n+1)`
-/

namespace A110767.P10928888811976938306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A088062 (n + 1)).toNat * A342810 (n + 1)

end

end A110767.P10928888811976938306

/-!
# A110768: The r-th term of the n-th row of the following triangle contains product of r successive numbers in decreasing order beginning from T(n)-T(r-1) where T(n) is the n-th triangular number. 1 3 2 6 20 6 10 72 210 24 15 182 1320 3024 120 ... Sequence contains the triangle by rows.

The programs for A110768, there is no canonical definition to state claims against.
-/

/-! ## A110768.P8464071997660107396

`A110770(n+1)*A166350(n+1)`
-/

namespace A110768.P8464071997660107396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110770 (n + 1) * A166350 (n + 1)

end

end A110768.P8464071997660107396

/-! ## A110768.P1041313222573988499

`A002260(n+1)!*A110770(n+1)`
-/

namespace A110768.P1041313222573988499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1)).toNat : ℤ) * A110770 (n + 1)

end

end A110768.P1041313222573988499

/-! ## A110768.P13809462099160429856

`(log2(A059268(n))+1)!*A110770(n+1)`
-/

namespace A110768.P13809462099160429856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ) + 1)).toNat : ℤ) * A110770 (n + 1)

end

end A110768.P13809462099160429856

/-! ## A110768.P2281780793785491701

`(1-A057944(n)+n)!*A110770(n+1)`
-/

namespace A110768.P2281780793785491701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (1 - A057944 n + (n : ℤ)).toNat : ℤ) * A110770 (n + 1)

end

end A110768.P2281780793785491701

/-! ## A110768.P4873790737967981710

`A110770(n+1)*A112007(A112367(n))`
-/

namespace A110768.P4873790737967981710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110770 (n + 1) * A112007 (A112367 n).toNat

end

end A110768.P4873790737967981710

/-!
# A110769: The r-th term of the n-th row of the following triangle contains sum of r successive numbers in decreasing order beginning from T(n)-T(r-1) where T(n) is the n-th triangular number. 1 3 3 6 9 6 10 17 18 10 15 27 33 30 15 ... Sequence contains the triangle by rows.

The programs for A110769, the canonical program `A110769.P6747390078831941769` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110769 has offset 1).

The definition of A110769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110769.P6747390078831941769

`A093445(A038722(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A110769

/-- `A093445(A038722(n+1))` -/
def P6747390078831941769.Spec : Prop :=
  ∀ n, P6747390078831941769.a n = A110769 (n + 1)

theorem P6747390078831941769.correct : P6747390078831941769.Spec := by
  intro n
  simp only [A110769, Nat.add_sub_cancel]

end A110769

/-! ## A110769.P11713340183693773356

`A093445(A061579(n)+1)`
-/

namespace A110769.P11713340183693773356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093445 (A061579 n + 1).toNat

end

end A110769.P11713340183693773356

namespace A110769

/-- `A093445(A061579(n)+1)` -/
def P11713340183693773356.Spec : Prop :=
  ∀ n, P11713340183693773356.a n = A110769 (n + 1)

end A110769

/-! ## A110769.P7086532087707678955

`A093445(A114327(n)+1+n)`
-/

namespace A110769.P7086532087707678955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093445 (A114327 n + 1 + (n : ℤ)).toNat

end

end A110769.P7086532087707678955

namespace A110769

/-- `A093445(A114327(n)+1+n)` -/
def P7086532087707678955.Spec : Prop :=
  ∀ n, P7086532087707678955.a n = A110769 (n + 1)

end A110769

/-! ## A110769.P10678480072236341525

`A093445(A093995(n+1)-n)`
-/

namespace A110769.P10678480072236341525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093445 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A110769.P10678480072236341525

namespace A110769

/-- `A093445(A093995(n+1)-n)` -/
def P10678480072236341525.Spec : Prop :=
  ∀ n, P10678480072236341525.a n = A110769 (n + 1)

end A110769

/-! ## A110769.P6466350095790109985

`A095729(n+1)-A112367(n)`
-/

namespace A110769.P6466350095790109985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095729 (n + 1) - A112367 n

end

end A110769.P6466350095790109985

namespace A110769

/-- `A095729(n+1)-A112367(n)` -/
def P6466350095790109985.Spec : Prop :=
  ∀ n, P6466350095790109985.a n = A110769 (n + 1)

end A110769

/-! ## A110769.P9478831191192228506

`A093445(A002024(n+1)²-n)`
-/

namespace A110769.P9478831191192228506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093445 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A110769.P9478831191192228506

namespace A110769

/-- `A093445(A002024(n+1)²-n)` -/
def P9478831191192228506.Spec : Prop :=
  ∀ n, P9478831191192228506.a n = A110769 (n + 1)

end A110769

/-! ## A110769.P12803716241705790887

`A107985(n)+A062707(A061579(n))`
-/

namespace A110769.P12803716241705790887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107985 n + A062707 (A061579 n).toNat

end

end A110769.P12803716241705790887

namespace A110769

/-- `A107985(n)+A062707(A061579(n))` -/
def P12803716241705790887.Spec : Prop :=
  ∀ n, P12803716241705790887.a n = A110769 (n + 1)

end A110769

/-! ## A110769.P1458255919442569201

`A095729(n+1)-A000217(A002262(n))`
-/

namespace A110769.P1458255919442569201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095729 (n + 1) - A000217 (A002262 n).toNat

end

end A110769.P1458255919442569201

namespace A110769

/-- `A095729(n+1)-A000217(A002262(n))` -/
def P1458255919442569201.Spec : Prop :=
  ∀ n, P1458255919442569201.a n = A110769 (n + 1)

end A110769

/-! ## A110769.P1633117011375996119

`A095729(n+1)-A000217(A002260(n+1)-1)`
-/

namespace A110769.P1633117011375996119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095729 (n + 1) - A000217 (A002260 (n + 1) - 1).toNat

end

end A110769.P1633117011375996119

namespace A110769

/-- `A095729(n+1)-A000217(A002260(n+1)-1)` -/
def P1633117011375996119.Spec : Prop :=
  ∀ n, P1633117011375996119.a n = A110769 (n + 1)

end A110769

/-! ## A110769.P3955320754689278780

`A127777(n+1)+A127779(n+1)-A143219(n+1)`
-/

namespace A110769.P3955320754689278780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127777 (n + 1) + (A127779 (n + 1) - A143219 (n + 1))

end

end A110769.P3955320754689278780

namespace A110769

/-- `A127777(n+1)+A127779(n+1)-A143219(n+1)` -/
def P3955320754689278780.Spec : Prop :=
  ∀ n, P3955320754689278780.a n = A110769 (n + 1)

end A110769

/-!
# A110770: Triangle read by rows: T(n,k) = binomial(t(n) - t(k-1),k), where t(j) = j*(j+1)/2; 1<=k<=n.

The programs for A110770, the canonical program `A110770.P1014689969941647037` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110770 has offset 1).

The definition of A110770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110770.P1014689969941647037

`C(A049777(n+1), A002260(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A110770

/-- `C(A049777(n+1), A002260(n+1))` -/
def P1014689969941647037.Spec : Prop :=
  ∀ n, (P1014689969941647037.a n : ℤ) = A110770 (n + 1)

theorem P1014689969941647037.correct : P1014689969941647037.Spec := by
  intro n
  simp only [A110770, Nat.add_sub_cancel]

end A110770

/-! ## A110770.P8885443595380990352

`C(A049777(n+1), A002262(n+1))`
-/

namespace A110770.P8885443595380990352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049777 (n + 1)).toNat (A002262 (n + 1)).toNat

end

end A110770.P8885443595380990352

namespace A110770

/-- `C(A049777(n+1), A002262(n+1))` -/
def P8885443595380990352.Spec : Prop :=
  ∀ n, (P8885443595380990352.a n : ℤ) = A110770 (n + 1)

end A110770

/-! ## A110770.P14803471530365706813

`C(A271668(n+1), A002262(n+1))`
-/

namespace A110770.P14803471530365706813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A271668 (n + 1)).toNat (A002262 (n + 1)).toNat

end

end A110770.P14803471530365706813

namespace A110770

/-- `C(A271668(n+1), A002262(n+1))` -/
def P14803471530365706813.Spec : Prop :=
  ∀ n, (P14803471530365706813.a n : ℤ) = A110770 (n + 1)

end A110770

/-! ## A110770.P4435053780242370022

`C(A049777(n+1), abs(A140756(n+1)))`
-/

namespace A110770.P4435053780242370022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049777 (n + 1)).toNat |A140756 (n + 1)|.toNat

end

end A110770.P4435053780242370022

namespace A110770

/-- `C(A049777(n+1), abs(A140756(n+1)))` -/
def P4435053780242370022.Spec : Prop :=
  ∀ n, (P4435053780242370022.a n : ℤ) = A110770 (n + 1)

end A110770

/-! ## A110770.P3654438872021413583

`C(A049780(A007401(n+1)), A002260(n+1))`
-/

namespace A110770.P3654438872021413583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049780 (A007401 (n + 1)).toNat).toNat (A002260 (n + 1)).toNat

end

end A110770.P3654438872021413583

namespace A110770

/-- `C(A049780(A007401(n+1)), A002260(n+1))` -/
def P3654438872021413583.Spec : Prop :=
  ∀ n, (P3654438872021413583.a n : ℤ) = A110770 (n + 1)

end A110770

/-! ## A110770.P18297940609608275243

`C(A049777(n+1), A000720(A037126(n+1)))`
-/

namespace A110770.P18297940609608275243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049777 (n + 1)).toNat (A000720 (A037126 (n + 1)).toNat).toNat

end

end A110770.P18297940609608275243

namespace A110770

/-- `C(A049777(n+1), A000720(A037126(n+1)))` -/
def P18297940609608275243.Spec : Prop :=
  ∀ n, (P18297940609608275243.a n : ℤ) = A110770 (n + 1)

end A110770

/-! ## A110770.P8545001316454224131

`A007318(A002260(n+1)+A000217(A049777(n+1)))`
-/

namespace A110770.P8545001316454224131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A002260 (n + 1) + A000217 (A049777 (n + 1)).toNat).toNat

end

end A110770.P8545001316454224131

namespace A110770

/-- `A007318(A002260(n+1)+A000217(A049777(n+1)))` -/
def P8545001316454224131.Spec : Prop :=
  ∀ n, P8545001316454224131.a n = A110770 (n + 1)

end A110770

/-! ## A110770.P18341280936304976668

`A007318(A000096(A049777(n+1))-A002260(n+1))`
-/

namespace A110770.P18341280936304976668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 (A049777 (n + 1)).toNat - A002260 (n + 1)).toNat

end

end A110770.P18341280936304976668

namespace A110770

/-- `A007318(A000096(A049777(n+1))-A002260(n+1))` -/
def P18341280936304976668.Spec : Prop :=
  ∀ n, P18341280936304976668.a n = A110770 (n + 1)

end A110770

/-!
# A110771: The r-th term of the n-th row of the following triangle is C[{T(n)-T(r-1)},r] where T(n) is the n-th triangular number. 1 3 1 6 10 1 10 36 35 1 ... Sequence contains the row sums.

The programs for A110771, there is no canonical definition to state claims against.
-/

/-! ## A110771.P5706685537827131934

`A063978(∑[n+1])-1`
-/

namespace A110771.P5706685537827131934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063978 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A110771.P5706685537827131934

/-! ## A110771.P6709064297382873227

`record[A063978(A038722(n+1))-1]`
-/

namespace A110771.P6709064297382873227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063978 (A038722 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110771.P6709064297382873227

/-! ## A110771.P3681531656190537413

`record[A063978(A049777(n+1))-1]`
-/

namespace A110771.P3681531656190537413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063978 (A049777 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110771.P3681531656190537413

/-! ## A110771.P11196515506276246519

`A082551(2*n+1)+A063978(∑[n+1])`
-/

namespace A110771.P11196515506276246519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (2 * n + 1) + A063978 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110771.P11196515506276246519

/-! ## A110771.P13976397387072063966

`A092152(A139171(n+1))+A063978(∑[n+1])`
-/

namespace A110771.P13976397387072063966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (A139171 (n + 1)).toNat + A063978 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110771.P13976397387072063966

/-!
# A110774: Copies of 1 and 3 alternately such that every partial concatenation is a prime.

The programs for A110774, there is no canonical definition to state claims against.
-/

/-! ## A110774.P15010267820042755924

`A060002(a(n-1)+11)` with `a(0)=11, a(1)=3, a(2)=11`
-/

namespace A110774.P15010267820042755924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11, 3, 11] fun n a =>
  A060002 (a (n - 1) + 11).toNat

end

end A110774.P15010267820042755924

/-!
# A110775: Number of digits in A110774(n).

The programs for A110775, there is no canonical definition to state claims against.
-/

/-! ## A110775.P5096274008566933003

`A357368(n)+A316854(A290209(n))`
-/

namespace A110775.P5096274008566933003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357368 n + A316854 (A290209 n).toNat

end

end A110775.P5096274008566933003

/-! ## A110775.P17608541302897043688

`A209637(A209621(n)-A001045(n))`
-/

namespace A110775.P17608541302897043688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209637 (A209621 n - A001045 n).toNat

end

end A110775.P17608541302897043688

/-! ## A110775.P18316432593616433599

`A209637(A209622(n)-A001045(n))`
-/

namespace A110775.P18316432593616433599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209637 (A209622 n - A001045 n).toNat

end

end A110775.P18316432593616433599

/-!
# A110778: Copies of 3 and 7 alternately such that every partial concatenation is a prime.

The programs for A110778, there is no canonical definition to state claims against.
-/

/-! ## A110778.P17398871871650002996

`A188548(A058163(n+1))*A244189(n+2)`
-/

namespace A110778.P17398871871650002996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188548 (A058163 (n + 1)).toNat * A244189 (n + 2)

end

end A110778.P17398871871650002996

/-!
# A110779: Fractalization of e.

The programs for A110779, there is no canonical definition to state claims against.
-/

/-! ## A110779.P7500156637084195882

`A001113(floor(n/(xor(n, n+1)+1)))`
-/

namespace A110779.P7500156637084195882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat + 1)

end

end A110779.P7500156637084195882

/-! ## A110779.P8035133253984705320

`A001355(floor(n/2^val(n+1, 2))+2)`
-/

namespace A110779.P8035133253984705320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ + 2).toNat

end

end A110779.P8035133253984705320

/-! ## A110779.P12271795841904308877

`A001113(floor(n/2^val(n+1, 2))/2)`
-/

namespace A110779.P12271795841904308877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((SequenceMachineLib.roundAway ((⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / 2)).toNat + 1)

end

end A110779.P12271795841904308877

/-! ## A110779.P5870901128413534001

`9-A121239(floor(n/(xor(n, n+1)+1)))`
-/

namespace A110779.P5870901128413534001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A121239 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat + 1)

end

end A110779.P5870901128413534001

/-! ## A110779.P3536822830897916603

`A001355((n+1)/2^val(n+1, 2)+1)`
-/

namespace A110779.P3536822830897916603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1)).toNat

end

end A110779.P3536822830897916603

/-! ## A110779.P17211173267138240436

`A001355(2*(floor(n/(xor(n, n+1)+1))+1))`
-/

namespace A110779.P17211173267138240436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1)).toNat

end

end A110779.P17211173267138240436

/-! ## A110779.P6964686745303879682

`A001113(A110962(2*n))`
-/

namespace A110779.P6964686745303879682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A110962 (2 * n)).toNat + 1)

end

end A110779.P6964686745303879682

/-! ## A110779.P15992679495086000301

`A001113(A003602(n+1)-1)`
-/

namespace A110779.P15992679495086000301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A003602 (n + 1) - 1).toNat + 1)

end

end A110779.P15992679495086000301

/-! ## A110779.P8834259329664845505

`A001113(A110963(2*n+1)-1)`
-/

namespace A110779.P8834259329664845505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A110963 (2 * n + 1) - 1).toNat + 1)

end

end A110779.P8834259329664845505

/-! ## A110779.P11961253948266731096

`A095711(A249725(n+1))`
-/

namespace A110779.P11961253948266731096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095711 (A249725 (n + 1)).toNat

end

end A110779.P11961253948266731096

/-! ## A110779.P18319760431841944180

`A138115(A209268(n+1))`
-/

namespace A110779.P18319760431841944180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138115 (A209268 (n + 1)).toNat

end

end A110779.P18319760431841944180

/-! ## A110779.P8638461113242586658

`A104691((n+1)/2^val(n+1, 2))`
-/

namespace A110779.P8638461113242586658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104691 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A110779.P8638461113242586658

/-! ## A110779.P8187099752292093294

`A104691((n+1)/(or(n, n+1)-n))`
-/

namespace A110779.P8187099752292093294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104691 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat

end

end A110779.P8187099752292093294

/-! ## A110779.P10786352848902238389

`A104691((n+1)/xor(n, or(n, n+1)))`
-/

namespace A110779.P10786352848902238389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104691 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))).toNat

end

end A110779.P10786352848902238389

/-! ## A110779.P7761145739482427248

`A104691(2*(n+1)/(xor(n, n+1)+1))`
-/

namespace A110779.P7761145739482427248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104691 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat

end

end A110779.P7761145739482427248

/-!
# A110784: Palindromes in which the digits are in nondecreasing order halfway through.

The programs for A110784, there is no canonical definition to state claims against.
-/

/-! ## A110784.P17330129573836281413

`∩[A002113(n+1), A193408(n+1)]`
-/

namespace A110784.P17330129573836281413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110784.P17330129573836281413

/-! ## A110784.P5526636158490469423

`∩[A193408(n+1), A318535(n+1)]`
-/

namespace A110784.P5526636158490469423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110784.P5526636158490469423

/-! ## A110784.P12019919195424797372

`filter[A193408(n+1), A136522(#)]`
-/

namespace A110784.P12019919195424797372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A110784.P12019919195424797372

/-! ## A110784.P3686497289784123856

`∩[A072544(n+1), A110751(n+1)]`
-/

namespace A110784.P3686497289784123856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110784.P3686497289784123856

/-! ## A110784.P15692433932599966460

`A193408(n+1)%A055685(A005728(n))`
-/

namespace A110784.P15692433932599966460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193408 (n + 1)) (A055685 (A005728 n).toNat)

end

end A110784.P15692433932599966460

/-! ## A110784.P5076472821060279974

`A193408(n+1)*A267870(A367397(n+1))`
-/

namespace A110784.P5076472821060279974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193408 (n + 1) * A267870 (A367397 (n + 1)).toNat

end

end A110784.P5076472821060279974

/-! ## A110784.P5020987704806148015

`A006519(A322388(n+1))*A193408(n+1)`
-/

namespace A110784.P5020987704806148015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A322388 (n + 1)).toNat * A193408 (n + 1)

end

end A110784.P5020987704806148015

/-!
# A110785: Palindromes in which the digits are in nonincreasing order halfway through.

The programs for A110785, there is no canonical definition to state claims against.
-/

/-! ## A110785.P16715307464096391652

`∩[A002113(n+1), A193413(n+1)]`
-/

namespace A110785.P16715307464096391652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110785.P16715307464096391652

/-! ## A110785.P4608857153692689101

`∩[A072543(n+1), A110751(n+1)]`
-/

namespace A110785.P4608857153692689101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110785.P4608857153692689101

/-!
# A110786: To obtain a(n), take the n-th palindrome P = A002113(n) and concatenate it with the smallest palindrome Q such that PQ is a prime.

The programs for A110786, there is no canonical definition to state claims against.
-/

/-! ## A110786.P645046869214021492

`p?[A256481(A002113(n+2))]`
-/

namespace A110786.P645046869214021492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256481 (A002113 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A110786.P645046869214021492

/-!
# A110787: Least palindrome which when appended to the n-th palindrome gives a prime.

The programs for A110787, there is no canonical definition to state claims against.
-/

/-! ## A110787.P3529755976948187750

`A110786(n+1)%A005843(A110751(n+1))`
-/

namespace A110787.P3529755976948187750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110786 (n + 1)) (A005843 (A110751 (n + 1)).toNat)

end

end A110787.P3529755976948187750

/-! ## A110787.P3545104463286143101

`A010879(A030675(n+1))`
-/

namespace A110787.P3545104463286143101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A030675 (n + 1)).toNat

end

end A110787.P3545104463286143101

/-! ## A110787.P11782756699961244243

`A010879(A110786(n+1))`
-/

namespace A110787.P11782756699961244243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A110786 (n + 1)).toNat

end

end A110787.P11782756699961244243

/-! ## A110787.P4188366816087733439

`A010889(A030675(n+1)-1)`
-/

namespace A110787.P4188366816087733439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010889 (A030675 (n + 1) - 1).toNat

end

end A110787.P4188366816087733439

/-!
# A110788: Copies of 7 and 1 alternately such that every partial concatenation is a prime.

The programs for A110788, there is no canonical definition to state claims against.
-/

/-! ## A110788.P15839680127133389766

`A175637(or(1-C(∑[char[∑[n]]], 2)+n, A305512(n+1)))`
-/

namespace A110788.P15839680127133389766
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175637 (Int.lor (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) (A305512 (n + 1))).toNat

end

end A110788.P15839680127133389766

/-!
# A110789: Number of digits in A110788(n).

The programs for A110789, there is no canonical definition to state claims against.
-/

/-! ## A110789.P4319452652698722106

`A322832(∑[A008619(n!)])`
-/

namespace A110789.P4319452652698722106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A110789.P4319452652698722106

/-! ## A110789.P18056220815421764450

`A322832(∑[A328399(n!)])`
-/

namespace A110789.P18056220815421764450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A110789.P18056220815421764450

/-! ## A110789.P2573975637082165164

`A226763(ceil(∑[3^(n-2)])*A046951(n+1))`
-/

namespace A110789.P2573975637082165164
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226763 (⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ * A046951 (n + 1)).toNat

end

end A110789.P2573975637082165164

/-! ## A110789.P3876666009815798029

`A193296(n)+A193280(A193321(n))`
-/

namespace A110789.P3876666009815798029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193296 n + A193280 (A193321 n).toNat

end

end A110789.P3876666009815798029

/-!
# A110795: Least multiple of n! that leaves a palindrome if trailing zeros are ignored.

The programs for A110795, there is no canonical definition to state claims against.
-/

/-! ## A110795.P14603318690493936445

`(n+1)!*A110796(n+1)`
-/

namespace A110795.P14603318690493936445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A110796 (n + 1)

end

end A110795.P14603318690493936445

/-! ## A110795.P13222220240322742345

`Δ[A007489(n)]*A110796(n+1)`
-/

namespace A110795.P13222220240322742345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A110796 (n + 1)

end

end A110795.P13222220240322742345

/-! ## A110795.P10618290004622308153

`∏[A348553(n)]*A110796(n+1)`
-/

namespace A110795.P10618290004622308153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A110796 (n + 1)

end

end A110795.P10618290004622308153

/-! ## A110795.P4253472595743514960

`record[A084938(n)]*A110796(n+1)`
-/

namespace A110795.P4253472595743514960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A110796 (n + 1)

end

end A110795.P4253472595743514960

/-! ## A110795.P9859702595101761719

`∏[A000027(n+1)]*A110796(n+1)`
-/

namespace A110795.P9859702595101761719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A110796 (n + 1)

end

end A110795.P9859702595101761719

/-!
# A110796: A110795(n)/n!: least k such that n!*k divided by the largest power of 10 (that divides it) is a palindrome.

The programs for A110796, there is no canonical definition to state claims against.
-/

/-! ## A110796.P7679110575331015288

`A110795(n+1)/(n+1)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A110796.P7679110575331015288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110795 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A110796.P7679110575331015288

/-! ## A110796.P9923296619826818427

`A110795(n+1)/∏[A348553(n)]`
-/

namespace A110796.P9923296619826818427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110795 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A110796.P9923296619826818427

/-! ## A110796.P14428983435543720916

`A110795(n+1)/∏[A001057(2*n+1)]`
-/

namespace A110796.P14428983435543720916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110795 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A110796.P14428983435543720916

/-! ## A110796.P13900450071545526732

`A110795(n+1)/∏[A001222(2^(n+1))]`
-/

namespace A110796.P13900450071545526732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 ^ (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110795 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A110796.P13900450071545526732

/-!
# A110797: a(0) = 1, a(1) = 2; then all the products generated by these numbers, then the next number 3 and so on.

The programs for A110797, there is no canonical definition to state claims against.
-/

/-! ## A110797.P11110311291869759953

`A121663(A209862(n)%A326751(n+5))`
-/

namespace A110797.P11110311291869759953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121663 (Int.tmod (A209862 n) (A326751 (n + 5))).toNat

end

end A110797.P11110311291869759953

/-! ## A110797.P9586802486979328226

`A121663(A209862(n))%A335238(2*n+3)`
-/

namespace A110797.P9586802486979328226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121663 (A209862 n).toNat) (A335238 (2 * n + 3))

end

end A110797.P9586802486979328226

/-! ## A110797.P7386735655207582489

`A000005(A181821(A344085(n+1)))`
-/

namespace A110797.P7386735655207582489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A181821 (A344085 (n + 1)).toNat).toNat

end

end A110797.P7386735655207582489

/-! ## A110797.P12398625691010460819

`(A029837(n+1)+1)*A070861(n)^A015125(A107131(n))`
-/

namespace A110797.P12398625691010460819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029837 (n + 1) + 1 : ℚ) * (A070861 n : ℚ) ^ (A015125 (A107131 n).toNat : ℤ)

end

end A110797.P12398625691010460819

/-! ## A110797.P905906184571691206

`A121663(A209861(n)%A110600(n+1))`
-/

namespace A110797.P905906184571691206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121663 (Int.tmod (A209861 n) (A110600 (n + 1))).toNat

end

end A110797.P905906184571691206

