import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
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
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
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
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A193101: Minimal number of numbers of the form (m^3+5m)/6 (see A004006) needed to sum to n.

The programs for A193101, there is no canonical definition to state claims against.
-/

/-! ## A193101.P8745349985712694497

`A088696(∑[A020903(A143172(n+1))])`
-/

namespace A193101.P8745349985712694497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020903 (A143172 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088696 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193101.P8745349985712694497

/-! ## A193101.P10103549750127528885

`A088696(A325044(n+1))%A344161(3*(n+1))`
-/

namespace A193101.P10103549750127528885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088696 (A325044 (n + 1)).toNat) (A344161 (3 * (n + 1)))

end

end A193101.P10103549750127528885

/-!
# A193102: G.f.: exp( Sum_{n>=1} 2*sigma(n*3^n)*x^n/n ).

The programs for A193102, there is no canonical definition to state claims against.
-/

/-! ## A193102.P13216406738877754951

`A007095(A293888(n+7)+A238913(n))`
-/

namespace A193102.P13216406738877754951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A293888 (n + 7) + A238913 n).toNat

end

end A193102.P13216406738877754951

/-!
# A193105: Numbers n such that A193101(n) = 5.

The programs for A193105, there is no canonical definition to state claims against.
-/

/-! ## A193105.P3831244656588409564

`A065475(eq[5, A193101(n+1)])`
-/

namespace A193105.P3831244656588409564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A193105.P3831244656588409564

/-!
# A193106: Minimal number of terms of A005826 needed to sum to n.

The programs for A193106, there is no canonical definition to state claims against.
-/

/-! ## A193106.P10906287466554301968

`gcd(A134856(n+1), A338479(A028310(n)))`
-/

namespace A193106.P10906287466554301968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134856 (n + 1)) (A338479 (A028310 n).toNat)

end

end A193106.P10906287466554301968

/-! ## A193106.P13065769568201064783

`A338479(A028310(n))+A000038(A145825(n+1))`
-/

namespace A193106.P13065769568201064783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338479 (A028310 n).toNat + A000038 (A145825 (n + 1)).toNat

end

end A193106.P13065769568201064783

/-! ## A193106.P2658085717911921916

`A338479(A028310(n))^A156581(A164659(n))`
-/

namespace A193106.P2658085717911921916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338479 (A028310 n).toNat : ℚ) ^ (A156581 (A164659 n).toNat : ℤ)

end

end A193106.P2658085717911921916

/-! ## A193106.P16875714791443311407

`A338479(C(A365042(n), n²)+n)`
-/

namespace A193106.P16875714791443311407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338479 (Nat.choose (A365042 n).toNat (n ^ 2) + n)

end

end A193106.P16875714791443311407

/-! ## A193106.P9477301158342151670

`A200370(C(n, 2)+1)*A338479(A028310(n))`
-/

namespace A193106.P9477301158342151670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (Nat.choose n 2 + 1) * A338479 (A028310 n).toNat

end

end A193106.P9477301158342151670

/-!
# A193108: The tetrahedral numbers A000292 mod 10.

The programs for A193108, the canonical program `A193108.P4041872397605072286` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193108 has offset 1).

The definition of A193108 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193108.P4041872397605072286

`C(n+3, 3)%10`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193108

/-- `C(n+3, 3)%10` -/
def P4041872397605072286.Spec : Prop :=
  ∀ n, (P4041872397605072286.a n : ℤ) = A193108 (n + 1)

theorem P4041872397605072286.correct : P4041872397605072286.Spec := by
  intro n
  simp only [A193108, Nat.add_sub_cancel]

end A193108

/-!
# A193109: Least k such that 2^x + k produces primes for x=1..n and composite for x=n+1.

The programs for A193109, there is no canonical definition to state claims against.
-/

/-! ## A193109.P7721066799485978352

`A354585(n+1)-2`
-/

namespace A193109.P7721066799485978352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354585 (n + 1) - 2

end

end A193109.P7721066799485978352

/-!
# A193110: G.f.: Sum_{n>=0} x^n * Product_{k=1..n} (1+k*x)/(1-k*x).

The programs for A193110, there is no canonical definition to state claims against.
-/

/-! ## A193110.P3884490805967139684

`or(1, A008612(A155328(n+5)))`
-/

namespace A193110.P3884490805967139684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008612 (A155328 (n + 5)).toNat)

end

end A193110.P3884490805967139684

/-! ## A193110.P3321602733240566246

`A109613(round(sqrt(A190916(n+1))))`
-/

namespace A193110.P3321602733240566246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.roundAway (Real.sqrt (A190916 (n + 1) : ℝ))).toNat

end

end A193110.P3321602733240566246

/-! ## A193110.P6777610910431054504

`A207542(n)+A060128(A060095(n))`
-/

namespace A193110.P6777610910431054504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207542 n + A060128 (A060095 n).toNat

end

end A193110.P6777610910431054504

/-!
# A193111: G.f. satisfies: 1 = Sum_{n>=0} (-x)^(n*(n+1)/2) * A(x)^(n+1).

The programs for A193111, there is no canonical definition to state claims against.
-/

/-! ## A193111.P10592272584151626038

`ceil(A000720(A000045(3*n+2)+1)/4)`
-/

namespace A193111.P10592272584151626038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000720 (A000045 (3 * n + 2) + 1).toNat : ℚ) / 4⌉

end

end A193111.P10592272584151626038

/-! ## A193111.P2929280065316119079

`A226762(A150536(n))`
-/

namespace A193111.P2929280065316119079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A150536 n).toNat

end

end A193111.P2929280065316119079

/-! ## A193111.P7850947191074728585

`A230772(A340357(n+1))`
-/

namespace A193111.P7850947191074728585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230772 (A340357 (n + 1)).toNat

end

end A193111.P7850947191074728585

/-!
# A193112: G.f. satisfies: 1 = Sum_{n>=0} (-x)^(n*(n+1)/2) * A(x)^(2*n+1).

The programs for A193112, there is no canonical definition to state claims against.
-/

/-! ## A193112.P14956209274219673402

`A367061(n)-A056170(A005651(n))`
-/

namespace A193112.P14956209274219673402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367061 n - A056170 (A005651 n).toNat

end

end A193112.P14956209274219673402

/-! ## A193112.P10704068029083800796

`A367061(n)-A121262(A005573(n))`
-/

namespace A193112.P10704068029083800796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367061 n - A121262 (A005573 n).toNat

end

end A193112.P10704068029083800796

/-! ## A193112.P2893226275279543180

`A367061(n)-A316863(A088714(n))`
-/

namespace A193112.P2893226275279543180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367061 n - A316863 (A088714 n).toNat

end

end A193112.P2893226275279543180

/-!
# A193113: G.f. satisfies: 1 = Sum_{n>=0} (-x)^(n*(n+1)/2) * A(x)^(3*n+1).

The programs for A193113, there is no canonical definition to state claims against.
-/

/-! ## A193113.P16671595697129310138

`A192730(n)-A085981(A025014(n))`
-/

namespace A193113.P16671595697129310138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192730 n - A085981 (A025014 n).toNat

end

end A193113.P16671595697129310138

/-! ## A193113.P13362014656134009958

`A192730(n)-A010059(A120792(n))`
-/

namespace A193113.P13362014656134009958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192730 n - A010059 (A120792 n).toNat

end

end A193113.P13362014656134009958

/-!
# A193114: G.f. A(x) satisfies 1 = Sum_{n>=0} (-x)^(n^2) * A(x)^(n+1).

The programs for A193114, there is no canonical definition to state claims against.
-/

/-! ## A193114.P13726752279072784184

`A380058(n+1)+A083892(A103662(n))`
-/

namespace A193114.P13726752279072784184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380058 (n + 1) + A083892 (A103662 n).toNat

end

end A193114.P13726752279072784184

/-! ## A193114.P7140651591151746650

`A380058(n+1)+A184963(A181153(n))`
-/

namespace A193114.P7140651591151746650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380058 (n + 1) + A184963 (A181153 n).toNat

end

end A193114.P7140651591151746650

/-! ## A193114.P2155753523437375582

`A380058(n+1)+A285957(A147210(n+1))`
-/

namespace A193114.P2155753523437375582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380058 (n + 1) + A285957 (A147210 (n + 1)).toNat

end

end A193114.P2155753523437375582

/-! ## A193114.P13355908658981696267

`A355452(n+5)+A070321(A380058(n+1))`
-/

namespace A193114.P13355908658981696267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355452 (n + 5) + A070321 (A380058 (n + 1)).toNat

end

end A193114.P13355908658981696267

/-! ## A193114.P10390558645582845552

`A355452(n+5)+A114509(n)-A181153(A293440(n))`
-/

namespace A193114.P10390558645582845552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355452 (n + 5) + (A114509 n - A181153 (A293440 n).toNat)

end

end A193114.P10390558645582845552

/-!
# A193115: G.f. satisfies: 1 = Sum_{n>=0} (-x)^(n^2) * A(x)^(2*n+1).

The programs for A193115, there is no canonical definition to state claims against.
-/

/-! ## A193115.P902761022691601788

`A024811(A391380(n)+1)`
-/

namespace A193115.P902761022691601788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024811 (A391380 n + 1).toNat

end

end A193115.P902761022691601788

/-! ## A193115.P5957291911948072921

`A083382(A215575(n))`
-/

namespace A193115.P5957291911948072921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (A215575 n).toNat

end

end A193115.P5957291911948072921

/-!
# A193116: G.f. satisfies: 1 = Sum_{n>=0} (-x)^(n^2) * A(x)^(3*n+1).

The programs for A193116, there is no canonical definition to state claims against.
-/

/-! ## A193116.P529831577966759773

`A301989(5^n+1-2^n)+A200731(n)`
-/

namespace A193116.P529831577966759773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301989 ((5 ^ n : ℤ) + (1 - (2 ^ n : ℤ))).toNat + A200731 n

end

end A193116.P529831577966759773

/-! ## A193116.P955440465152616089

`A200731(n)+A006924(A006924(n))`
-/

namespace A193116.P955440465152616089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200731 n + A006924 (A006924 n).toNat

end

end A193116.P955440465152616089

/-!
# A193118: Number of n X n symmetric 0..1 arrays with each element equal to the sum mod 2 of two of its horizontal and vertical neighbors.

The programs for A193118, there is no canonical definition to state claims against.
-/

/-! ## A193118.P2812808880911730668

`A057360(A282662(∑[n]))`
-/

namespace A193118.P2812808880911730668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (A282662 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A193118.P2812808880911730668

/-!
# A193125: Number of molecular topological index-nonunique connected simple graphs on n nodes.

The programs for A193125, there is no canonical definition to state claims against.
-/

/-! ## A193125.P1259613377143255327

`A004722(floor(A000849(n)/4))`
-/

namespace A193125.P1259613377143255327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004722 ⌊(A000849 n : ℚ) / 4⌋.toNat

end

end A193125.P1259613377143255327

/-! ## A193125.P16122764115059247004

`A002265(A048862(n)+A001405(n))`
-/

namespace A193125.P16122764115059247004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A048862 n + A001405 n).toNat

end

end A193125.P16122764115059247004

/-! ## A193125.P740560476455332415

`A052375(A001621(n)+A000698(n))`
-/

namespace A193125.P740560476455332415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052375 (A001621 n + A000698 n).toNat

end

end A193125.P740560476455332415

/-!
# A193127: Numbers of spanning trees of the antiprism graphs.

The programs for A193127, the canonical program `A193127.P9581717253284052073` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193127 has offset 1).

The definition of A193127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193127.P1439933344910807879

`2*(n+1)*∑[∑[ceil((ϕ^n)²²)]]`
-/

namespace A193127.P1439933344910807879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Real.goldenRatio ^ n) ^ 2) ^ 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193127.P1439933344910807879

namespace A193127

/-- `2*(n+1)*∑[∑[ceil((ϕ^n)²²)]]` -/
def P1439933344910807879.Spec : Prop :=
  ∀ n, P1439933344910807879.a n = A193127 (n + 1)

end A193127

/-! ## A193127.P9581717253284052073

`A169630(2*(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A193127

/-- `A169630(2*(n+1))` -/
def P9581717253284052073.Spec : Prop :=
  ∀ n, P9581717253284052073.a n = A193127 (n + 1)

theorem P9581717253284052073.correct : P9581717253284052073.Spec := by
  intro n
  simp only [A193127, Nat.add_sub_cancel]

end A193127

/-! ## A193127.P8024699033146255268

`Δ[2*∑[n*A000045(2*n)²]]`
-/

namespace A193127.P8024699033146255268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000045 (2 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193127.P8024699033146255268

namespace A193127

/-- `Δ[2*∑[n*A000045(2*n)²]]` -/
def P8024699033146255268.Spec : Prop :=
  ∀ n, P8024699033146255268.a n = A193127 (n + 1)

end A193127

/-! ## A193127.P14866144032778031937

`A282464(2*(n+1))-A282464(2*n+1)`
-/

namespace A193127.P14866144032778031937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282464 (2 * (n + 1)) - A282464 (2 * n + 1)

end

end A193127.P14866144032778031937

namespace A193127

/-- `A282464(2*(n+1))-A282464(2*n+1)` -/
def P14866144032778031937.Spec : Prop :=
  ∀ n, P14866144032778031937.a n = A193127 (n + 1)

end A193127

/-! ## A193127.P4115621434861305043

`A045925(A004277(n+1))²/A004277(n+1)`
-/

namespace A193127.P4115621434861305043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045925 (A004277 (n + 1)).toNat ^ 2 : ℚ) / (A004277 (n + 1) : ℚ)

end

end A193127.P4115621434861305043

namespace A193127

/-- `A045925(A004277(n+1))²/A004277(n+1)` -/
def P4115621434861305043.Spec : Prop :=
  ∀ n, P4115621434861305043.a n = (A193127 (n + 1) : ℚ)

end A193127

/-! ## A193127.P4008267846411767760

`A045925(A005843(n+1))²/A005843(n+1)`
-/

namespace A193127.P4008267846411767760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045925 (A005843 (n + 1)).toNat ^ 2 : ℚ) / (A005843 (n + 1) : ℚ)

end

end A193127.P4008267846411767760

namespace A193127

/-- `A045925(A005843(n+1))²/A005843(n+1)` -/
def P4008267846411767760.Spec : Prop :=
  ∀ n, P4008267846411767760.a n = (A193127 (n + 1) : ℚ)

end A193127

/-!
# A193129: Number of spanning trees of the n-barbell graph.

The programs for A193129, there is no canonical definition to state claims against.
-/

/-! ## A193129.P5327150524989206563

`(n^floor(n-atan(n)))²`
-/

namespace A193129.P5327150524989206563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) ^ (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ : ℤ)) ^ 2

end

end A193129.P5327150524989206563

/-! ## A193129.P11397907791686589248

`(n^(n-ceil(atan(n))))²`
-/

namespace A193129.P11397907791686589248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) ^ ((n : ℤ) - ⌈Real.arctan (n : ℝ)⌉ : ℤ)) ^ 2

end

end A193129.P11397907791686589248

/-! ## A193129.P961796013247933280

`(n^(abs(1-n)-1))²`
-/

namespace A193129.P961796013247933280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) ^ (|1 - (n : ℤ)| - 1 : ℤ)) ^ 2

end

end A193129.P961796013247933280

/-! ## A193129.P16646629109236626060

`n²^((n-2)%n!)`
-/

namespace A193129.P16646629109236626060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) ^ (Int.tmod ((n : ℤ) - 2) (Nat.factorial n : ℤ) : ℤ)

end

end A193129.P16646629109236626060

/-! ## A193129.P4387752598526228775

`n^(2*floor(n-atan(n)))`
-/

namespace A193129.P4387752598526228775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (2 * ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ : ℤ)

end

end A193129.P4387752598526228775

/-!
# A193130: Numbers of spanning trees of the cocktail party graphs.

The programs for A193130, there is no canonical definition to state claims against.
-/

/-! ## A193130.P4370951881313599515

`n*∑[8*n]^n/(n+1)`
-/

namespace A193130.P4370951881313599515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) ^ n : ℕ) : ℚ) / (n + 1 : ℚ)

end

end A193130.P4370951881313599515

/-! ## A193130.P1351466579754539783

`A053506(n+1)*A091483(n)`
-/

namespace A193130.P1351466579754539783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053506 (n + 1) * A091483 n

end

end A193130.P1351466579754539783

/-! ## A193130.P14328675402432484061

`A000272(n+1)*A034008(n+2)²*A007778(n)`
-/

namespace A193130.P14328675402432484061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 (n + 1) * A034008 (n + 2) ^ 2 * A007778 n

end

end A193130.P14328675402432484061

/-! ## A193130.P14806337707604360878

`A000272(n+1)*A034008(2*(n+1))*A007778(n)`
-/

namespace A193130.P14806337707604360878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 (n + 1) * A034008 (2 * (n + 1)) * A007778 n

end

end A193130.P14806337707604360878

/-! ## A193130.P381317243270818901

`A004248(A064226(n))*A004248(A081268(n))`
-/

namespace A193130.P381317243270818901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A064226 n).toNat * A004248 (A081268 n).toNat

end

end A193130.P381317243270818901

/-!
# A193131: Numbers of spanning trees of the complete tripartite graphs K_{n,n,n}.

The programs for A193131, the canonical program `A193131.P8563635100983268379` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193131 has offset 1).

The definition of A193131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193131.P8563635100983268379

`3*8^n*(n+1)^(3*(n+1)-2)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193131

/-- `3*8^n*(n+1)^(3*(n+1)-2)` -/
def P8563635100983268379.Spec : Prop :=
  ∀ n, P8563635100983268379.a n = (A193131 (n + 1) : ℚ)

end A193131

/-! ## A193131.P13182412347229907858

`A338110(n+1)+A338110(n+1)+A338110(n+1)`
-/

namespace A193131.P13182412347229907858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338110 (n + 1) + (A338110 (n + 1) + A338110 (n + 1))

end

end A193131.P13182412347229907858

namespace A193131

/-- `A338110(n+1)+A338110(n+1)+A338110(n+1)` -/
def P13182412347229907858.Spec : Prop :=
  ∀ n, P13182412347229907858.a n = A193131 (n + 1)

end A193131

/-!
# A193132: a(n) = 3n*4^(2n-1).

The programs for A193132, the canonical program `A193132.P17867830295078621488` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193132 has offset 1).

The definition of A193132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193132.P12593898048158096821

`3*(n+1)*4^(2*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A193132.P12593898048158096821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℚ) * (4 : ℚ) ^ ((2 * (n + 1) : ℤ) - 1 : ℤ)

end

end A193132.P12593898048158096821

namespace A193132

/-- `3*(n+1)*4^(2*(n+1)-1)` -/
def P12593898048158096821.Spec : Prop :=
  ∀ n, P12593898048158096821.a n = (A193132 (n + 1) : ℚ)

end A193132

/-! ## A193132.P17867830295078621488

`32*a(n-1)-256*a(n-2)` with `a(0)=12, a(1)=384`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193132

/-- `32*a(n-1)-256*a(n-2)` -/
def P17867830295078621488.Spec : Prop :=
  ∀ n, P17867830295078621488.a n = A193132 (n + 1)

theorem P17867830295078621488.correct : P17867830295078621488.Spec := by
  intro n
  simp only [A193132, Nat.add_sub_cancel]

end A193132

/-! ## A193132.P16569801020196836501

`A084858(record[xor(3, n)])/2`
-/

namespace A193132.P16569801020196836501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084858 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / 2

end

end A193132.P16569801020196836501

namespace A193132

/-- `A084858(record[xor(3, n)])/2` -/
def P16569801020196836501.Spec : Prop :=
  ∀ n, P16569801020196836501.a n = (A193132 (n + 1) : ℚ)

end A193132

/-! ## A193132.P7740877471497374100

`A212698(2*(n+1))/2`
-/

namespace A193132.P7740877471497374100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212698 (2 * (n + 1)) : ℚ) / 2

end

end A193132.P7740877471497374100

namespace A193132

/-- `A212698(2*(n+1))/2` -/
def P7740877471497374100.Spec : Prop :=
  ∀ n, P7740877471497374100.a n = (A193132 (n + 1) : ℚ)

end A193132

/-! ## A193132.P7537560455501704830

`3*A268147(n+1)/4`
-/

namespace A193132.P7537560455501704830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A268147 (n + 1) : ℚ) / 4

end

end A193132.P7537560455501704830

namespace A193132

/-- `3*A268147(n+1)/4` -/
def P7537560455501704830.Spec : Prop :=
  ∀ n, P7537560455501704830.a n = (A193132 (n + 1) : ℚ)

end A193132

/-! ## A193132.P15441493234633820437

`(n+1)*A002023(Δ[n²])/2`
-/

namespace A193132.P15441493234633820437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A002023 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A193132.P15441493234633820437

namespace A193132

/-- `(n+1)*A002023(Δ[n²])/2` -/
def P15441493234633820437.Spec : Prop :=
  ∀ n, P15441493234633820437.a n = (A193132 (n + 1) : ℚ)

end A193132

/-! ## A193132.P9013640807228034997

`A084858(A004767(n))/2`
-/

namespace A193132.P9013640807228034997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084858 (A004767 n).toNat : ℚ) / 2

end

end A193132.P9013640807228034997

namespace A193132

/-- `A084858(A004767(n))/2` -/
def P9013640807228034997.Spec : Prop :=
  ∀ n, P9013640807228034997.a n = (A193132 (n + 1) : ℚ)

end A193132

/-! ## A193132.P9977736525261596927

`A133224(2*(n+1))-A057711(2*(n+1))`
-/

namespace A193132.P9977736525261596927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133224 (2 * (n + 1)) - A057711 (2 * (n + 1))

end

end A193132.P9977736525261596927

namespace A193132

/-- `A133224(2*(n+1))-A057711(2*(n+1))` -/
def P9977736525261596927.Spec : Prop :=
  ∀ n, P9977736525261596927.a n = A193132 (n + 1)

end A193132

/-! ## A193132.P508969227199132472

`A001792(4*n+2)+A001792(4*n+2)/2`
-/

namespace A193132.P508969227199132472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001792 (4 * n + 2) : ℚ) + (A001792 (4 * n + 2) : ℚ) / 2

end

end A193132.P508969227199132472

namespace A193132

/-- `A001792(4*n+2)+A001792(4*n+2)/2` -/
def P508969227199132472.Spec : Prop :=
  ∀ n, P508969227199132472.a n = (A193132 (n + 1) : ℚ)

end A193132

/-!
# A193133: Number of spanning trees in the n-crown graph.

The programs for A193133, the canonical program `A193133.P11134938974788988656` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193133 has offset 3).

The definition of A193133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193133.P11134938974788988656

`(n+1)^(n+2)*(n+2)*(n+3)^(n+1)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193133

/-- `(n+1)^(n+2)*(n+2)*(n+3)^(n+1)` -/
def P11134938974788988656.Spec : Prop :=
  ∀ n, (P11134938974788988656.a n : ℤ) = A193133 (n + 3)

theorem P11134938974788988656.correct : P11134938974788988656.Spec := by
  intro n
  simp only [A193133, Nat.add_sub_cancel]

end A193133

/-!
# A193137: 

The programs for A193137, there is no canonical definition to state claims against.
-/

/-! ## A193137.P6599486530788970675

`2^n²*(n+1)^((n+1)²-3)`
-/

namespace A193137.P6599486530788970675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n ^ 2 : ℚ) * (n + 1 : ℚ) ^ (((n + 1) ^ 2 : ℤ) - 3 : ℤ)

end

end A193137.P6599486530788970675

/-!
# A193138: Number of square satins of order n.

The programs for A193138, the canonical program `A193138.P12552581172921823484` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193138 has offset 3).

The definition of A193138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193138.P12102333620931490974

`A157228(n+3)`
-/

namespace A193138.P12102333620931490974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157228 (n + 3)

end

end A193138.P12102333620931490974

namespace A193138

/-- `A157228(n+3)` -/
def P12102333620931490974.Spec : Prop :=
  ∀ n, P12102333620931490974.a n = A193138 (n + 3)

end A193138

/-! ## A193138.P13136372362065910419

`A000089(n+3)/2`
-/

namespace A193138.P13136372362065910419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000089 (n + 3) : ℚ) / 2

end

end A193138.P13136372362065910419

namespace A193138

/-- `A000089(n+3)/2` -/
def P13136372362065910419.Spec : Prop :=
  ∀ n, P13136372362065910419.a n = (A193138 (n + 3) : ℚ)

end A193138

/-! ## A193138.P11673469708609176350

`Δ[A305117(n+2)/2]`
-/

namespace A193138.P11673469708609176350
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305117 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193138.P11673469708609176350

namespace A193138

/-- `Δ[A305117(n+2)/2]` -/
def P11673469708609176350.Spec : Prop :=
  ∀ n, P11673469708609176350.a n = (A193138 (n + 3) : ℚ)

end A193138

/-! ## A193138.P4821698574049558339

`A024362(A145051(n+2))`
-/

namespace A193138.P4821698574049558339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (A145051 (n + 2)).toNat

end

end A193138.P4821698574049558339

namespace A193138

/-- `A024362(A145051(n+2))` -/
def P4821698574049558339.Spec : Prop :=
  ∀ n, P4821698574049558339.a n = A193138 (n + 3)

end A193138

/-! ## A193138.P8512690085396251424

`A024362(A026741(n+3))`
-/

namespace A193138.P8512690085396251424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (A026741 (n + 3)).toNat

end

end A193138.P8512690085396251424

namespace A193138

/-- `A024362(A026741(n+3))` -/
def P8512690085396251424.Spec : Prop :=
  ∀ n, P8512690085396251424.a n = A193138 (n + 3)

end A193138

/-! ## A193138.P7033461277200228658

`A025426(A076109(n+3))`
-/

namespace A193138.P7033461277200228658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (A076109 (n + 3)).toNat

end

end A193138.P7033461277200228658

namespace A193138

/-- `A025426(A076109(n+3))` -/
def P7033461277200228658.Spec : Prop :=
  ∀ n, P7033461277200228658.a n = A193138 (n + 3)

end A193138

/-! ## A193138.P12552581172921823484

`A004525(Δ[A305117(n+2)])`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A193138

/-- `A004525(Δ[A305117(n+2)])` -/
def P12552581172921823484.Spec : Prop :=
  ∀ n, P12552581172921823484.a n = A193138 (n + 3)

theorem P12552581172921823484.correct : P12552581172921823484.Spec := by
  intro n
  simp only [A193138, Nat.add_sub_cancel]

end A193138

/-! ## A193138.P8683342765211596422

`A004526(Δ[A305117(n+2)])`
-/

namespace A193138.P8683342765211596422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A193138.P8683342765211596422

namespace A193138

/-- `A004526(Δ[A305117(n+2)])` -/
def P8683342765211596422.Spec : Prop :=
  ∀ n, P8683342765211596422.a n = A193138 (n + 3)

end A193138

/-! ## A193138.P6073539739057515985

`A110654(Δ[A305117(n+2)])`
-/

namespace A193138.P6073539739057515985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (n + 1) - f1 n).toNat

end

end A193138.P6073539739057515985

namespace A193138

/-- `A110654(Δ[A305117(n+2)])` -/
def P6073539739057515985.Spec : Prop :=
  ∀ n, P6073539739057515985.a n = A193138 (n + 3)

end A193138

/-! ## A193138.P11008723496382634107

`A024362(gcd(n+3, A000096(n)))`
-/

namespace A193138.P11008723496382634107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (Int.gcd (n + 3 : ℤ) (A000096 n))

end

end A193138.P11008723496382634107

namespace A193138

/-- `A024362(gcd(n+3, A000096(n)))` -/
def P11008723496382634107.Spec : Prop :=
  ∀ n, P11008723496382634107.a n = A193138 (n + 3)

end A193138

/-! ## A193138.P13637881709203511572

`A086669(n+3)-A157230(n+3)`
-/

namespace A193138.P13637881709203511572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086669 (n + 3) - A157230 (n + 3)

end

end A193138.P13637881709203511572

namespace A193138

/-- `A086669(n+3)-A157230(n+3)` -/
def P13637881709203511572.Spec : Prop :=
  ∀ n, P13637881709203511572.a n = A193138 (n + 3)

end A193138

/-! ## A193138.P9942081355721092334

`A295819(n+3)/2`
-/

namespace A193138.P9942081355721092334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295819 (n + 3) : ℚ) / 2

end

end A193138.P9942081355721092334

namespace A193138

/-- `A295819(n+3)/2` -/
def P9942081355721092334.Spec : Prop :=
  ∀ n, P9942081355721092334.a n = (A193138 (n + 3) : ℚ)

end A193138

/-! ## A193138.P17776092978246663937

`A024362(A283971(n+3))`
-/

namespace A193138.P17776092978246663937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (A283971 (n + 3)).toNat

end

end A193138.P17776092978246663937

namespace A193138

/-- `A024362(A283971(n+3))` -/
def P17776092978246663937.Spec : Prop :=
  ∀ n, P17776092978246663937.a n = A193138 (n + 3)

end A193138

/-! ## A193138.P15742532323422834437

`Δ[A295820(n+2)/2]`
-/

namespace A193138.P15742532323422834437
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295820 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193138.P15742532323422834437

namespace A193138

/-- `Δ[A295820(n+2)/2]` -/
def P15742532323422834437.Spec : Prop :=
  ∀ n, P15742532323422834437.a n = (A193138 (n + 3) : ℚ)

end A193138

/-! ## A193138.P7423737878688050749

`A024362(A175542(n+2)+1)`
-/

namespace A193138.P7423737878688050749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (A175542 (n + 2) + 1).toNat

end

end A193138.P7423737878688050749

namespace A193138

/-- `A024362(A175542(n+2)+1)` -/
def P7423737878688050749.Spec : Prop :=
  ∀ n, P7423737878688050749.a n = A193138 (n + 3)

end A193138

/-! ## A193138.P11195663679002967789

`A024362(A079097(n+2))`
-/

namespace A193138.P11195663679002967789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (A079097 (n + 2)).toNat

end

end A193138.P11195663679002967789

namespace A193138

/-- `A024362(A079097(n+2))` -/
def P11195663679002967789.Spec : Prop :=
  ∀ n, P11195663679002967789.a n = A193138 (n + 3)

end A193138

/-! ## A193138.P1862410956674745494

`A193140(n+3)-A193139(n+3)`
-/

namespace A193138.P1862410956674745494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193140 (n + 3) - A193139 (n + 3)

end

end A193138.P1862410956674745494

namespace A193138

/-- `A193140(n+3)-A193139(n+3)` -/
def P1862410956674745494.Spec : Prop :=
  ∀ n, P1862410956674745494.a n = A193138 (n + 3)

end A193138

/-!
# A193139: Number of symmetric satins of order n.

The programs for A193139, the canonical program `A193139.P1676092991408974637` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193139 has offset 3).

The definition of A193139 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A157230, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A193139.P1676092991408974637

`A157230(n+3)-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A193139

/-- `A157230(n+3)-1` -/
def P1676092991408974637.Spec : Prop :=
  ∀ n, P1676092991408974637.a n = A193139 (n + 3)

theorem P1676092991408974637.correct : P1676092991408974637.Spec := by
  intro n
  simp only [A193139, Nat.add_sub_cancel]

end A193139

/-! ## A193139.P843827855032153670

`floor(A155828(n+3)/2)`
-/

namespace A193139.P843827855032153670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155828 (n + 3) : ℚ) / 2⌋

end

end A193139.P843827855032153670

namespace A193139

/-- `floor(A155828(n+3)/2)` -/
def P843827855032153670.Spec : Prop :=
  ∀ n, P843827855032153670.a n = A193139 (n + 3)

end A193139

/-! ## A193139.P4139119763426346682

`val(A060594(n+3)!, 4)`
-/

namespace A193139.P4139119763426346682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (A060594 (n + 3)).toNat) 4

end

end A193139.P4139119763426346682

namespace A193139

/-- `val(A060594(n+3)!, 4)` -/
def P4139119763426346682.Spec : Prop :=
  ∀ n, (P4139119763426346682.a n : ℤ) = A193139 (n + 3)

end A193139

/-! ## A193139.P13143071440102938676

`A063514(A060594(n+3))`
-/

namespace A193139.P13143071440102938676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063514 (A060594 (n + 3)).toNat

end

end A193139.P13143071440102938676

namespace A193139

/-- `A063514(A060594(n+3))` -/
def P13143071440102938676.Spec : Prop :=
  ∀ n, P13143071440102938676.a n = A193139 (n + 3)

end A193139

/-! ## A193139.P313678695503788641

`A001065(A157230(n+3))`
-/

namespace A193139.P313678695503788641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A157230 (n + 3)).toNat

end

end A193139.P313678695503788641

namespace A193139

/-- `A001065(A157230(n+3))` -/
def P313678695503788641.Spec : Prop :=
  ∀ n, P313678695503788641.a n = A193139 (n + 3)

end A193139

/-! ## A193139.P933779218701580395

`A004524(A155828(n+3))`
-/

namespace A193139.P933779218701580395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A155828 (n + 3)).toNat

end

end A193139.P933779218701580395

namespace A193139

/-- `A004524(A155828(n+3))` -/
def P933779218701580395.Spec : Prop :=
  ∀ n, P933779218701580395.a n = A193139 (n + 3)

end A193139

/-! ## A193139.P577711451536110508

`A004525(A060594(n+3)-2)`
-/

namespace A193139.P577711451536110508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A060594 (n + 3) - 2).toNat

end

end A193139.P577711451536110508

namespace A193139

/-- `A004525(A060594(n+3)-2)` -/
def P577711451536110508.Spec : Prop :=
  ∀ n, P577711451536110508.a n = A193139 (n + 3)

end A193139

/-! ## A193139.P1678693589233950038

`A001065(A060594(n+3)/2)`
-/

namespace A193139.P1678693589233950038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.roundAway ((A060594 (n + 3) : ℚ) / 2)).toNat

end

end A193139.P1678693589233950038

namespace A193139

/-- `A001065(A060594(n+3)/2)` -/
def P1678693589233950038.Spec : Prop :=
  ∀ n, P1678693589233950038.a n = A193139 (n + 3)

end A193139

/-! ## A193139.P15331879147884627636

`A193140(n+3)-A157228(n+3)`
-/

namespace A193139.P15331879147884627636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193140 (n + 3) - A157228 (n + 3)

end

end A193139.P15331879147884627636

namespace A193139

/-- `A193140(n+3)-A157228(n+3)` -/
def P15331879147884627636.Spec : Prop :=
  ∀ n, P15331879147884627636.a n = A193139 (n + 3)

end A193139

/-! ## A193139.P11792297982830545919

`A193140(n+3)-A193138(n+3)`
-/

namespace A193139.P11792297982830545919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193140 (n + 3) - A193138 (n + 3)

end

end A193139.P11792297982830545919

namespace A193139

/-- `A193140(n+3)-A193138(n+3)` -/
def P11792297982830545919.Spec : Prop :=
  ∀ n, P11792297982830545919.a n = A193139 (n + 3)

end A193139

/-!
# A193140: Number of isonemal satins of exact period n.

The programs for A193140, the canonical program `A193140.P15573877660645811182` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193140 has offset 2).

The definition of A193140 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086669, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A193140.P15573877660645811182

`A086669(n+2)-1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A193140

/-- `A086669(n+2)-1` -/
def P15573877660645811182.Spec : Prop :=
  ∀ n, P15573877660645811182.a n = A193140 (n + 2)

theorem P15573877660645811182.correct : P15573877660645811182.Spec := by
  intro n
  simp only [A193140, Nat.add_sub_cancel]

end A193140

/-! ## A193140.P8434485687125122734

`7%A086669(4/2+n)`
-/

namespace A193140.P8434485687125122734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A086669 (SequenceMachineLib.roundAway ((4 : ℚ) / 2 + (n : ℚ))).toNat)

end

end A193140.P8434485687125122734

namespace A193140

/-- `7%A086669(4/2+n)` -/
def P8434485687125122734.Spec : Prop :=
  ∀ n, P8434485687125122734.a n = A193140 (n + 2)

end A193140

/-! ## A193140.P7005085987790501457

`∑[Δ[A086669(n+1)]%7]`
-/

namespace A193140.P7005085987790501457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086669 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193140.P7005085987790501457

namespace A193140

/-- `∑[Δ[A086669(n+1)]%7]` -/
def P7005085987790501457.Spec : Prop :=
  ∀ n, P7005085987790501457.a n = A193140 (n + 2)

end A193140

/-! ## A193140.P874985809045936501

`floor(∑{d}[A086669(C(n+1, n)+1), #/2])`
-/

namespace A193140.P874985809045936501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086669 (Nat.choose (n + 1) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / 2⌋

end

end A193140.P874985809045936501

namespace A193140

/-- `floor(∑{d}[A086669(C(n+1, n)+1), #/2])` -/
def P874985809045936501.Spec : Prop :=
  ∀ n, P874985809045936501.a n = A193140 (n + 2)

end A193140

/-! ## A193140.P13236197557769172613

`A000401(A086669(n+2))`
-/

namespace A193140.P13236197557769172613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (A086669 (n + 2)).toNat

end

end A193140.P13236197557769172613

namespace A193140

/-- `A000401(A086669(n+2))` -/
def P13236197557769172613.Spec : Prop :=
  ∀ n, P13236197557769172613.a n = A193140 (n + 2)

end A193140

/-! ## A193140.P106943212164870178

`abs(1-A086669(A145979(n)))`
-/

namespace A193140.P106943212164870178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A086669 (A145979 n).toNat|

end

end A193140.P106943212164870178

namespace A193140

/-- `abs(1-A086669(A145979(n)))` -/
def P106943212164870178.Spec : Prop :=
  ∀ n, P106943212164870178.a n = A193140 (n + 2)

end A193140

/-! ## A193140.P14547776180176416124

`A000225(log2(A086669(n+2)))`
-/

namespace A193140.P14547776180176416124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.roundAway (Real.logb 2 (A086669 (n + 2) : ℝ))).toNat

end

end A193140.P14547776180176416124

namespace A193140

/-- `A000225(log2(A086669(n+2)))` -/
def P14547776180176416124.Spec : Prop :=
  ∀ n, P14547776180176416124.a n = A193140 (n + 2)

end A193140

/-! ## A193140.P1687612212065482268

`∑{d}[A086669(n+2), A000720(#)]`
-/

namespace A193140.P1687612212065482268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086669 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d

end

end A193140.P1687612212065482268

namespace A193140

/-- `∑{d}[A086669(n+2), A000720(#)]` -/
def P1687612212065482268.Spec : Prop :=
  ∀ n, P1687612212065482268.a n = A193140 (n + 2)

end A193140

/-! ## A193140.P15992423607805094694

`A004914(A086669(n+2)%(n+2))`
-/

namespace A193140.P15992423607805094694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004914 (Int.tmod (A086669 (n + 2)) (n + 2 : ℤ)).toNat

end

end A193140.P15992423607805094694

namespace A193140

/-- `A004914(A086669(n+2)%(n+2))` -/
def P15992423607805094694.Spec : Prop :=
  ∀ n, P15992423607805094694.a n = A193140 (n + 2)

end A193140

/-! ## A193140.P7023602040848587582

`A001489(n+1)+A086669(n+2)+n`
-/

namespace A193140.P7023602040848587582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + (A086669 (n + 2) + (n : ℤ))

end

end A193140.P7023602040848587582

namespace A193140

/-- `A001489(n+1)+A086669(n+2)+n` -/
def P7023602040848587582.Spec : Prop :=
  ∀ n, P7023602040848587582.a n = A193140 (n + 2)

end A193140

/-! ## A193140.P11900551505511326072

`A233931(A086669(A145979(n)))`
-/

namespace A193140.P11900551505511326072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233931 (A086669 (A145979 n).toNat).toNat

end

end A193140.P11900551505511326072

namespace A193140

/-- `A233931(A086669(A145979(n)))` -/
def P11900551505511326072.Spec : Prop :=
  ∀ n, P11900551505511326072.a n = A193140 (n + 2)

end A193140

/-! ## A193140.P746371656346197741

`A035327(A086669(2-A001489(n)))`
-/

namespace A193140.P746371656346197741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A086669 (2 - A001489 n).toNat).toNat

end

end A193140.P746371656346197741

namespace A193140

/-- `A035327(A086669(2-A001489(n)))` -/
def P746371656346197741.Spec : Prop :=
  ∀ n, P746371656346197741.a n = A193140 (n + 2)

end A193140

/-!
# A193142: Primes which are the sum of 5 distinct positive squares.

The programs for A193142, there is no canonical definition to state claims against.
-/

/-! ## A193142.P6219713081978224776

`record[A014963(A004434(n+4))]`
-/

namespace A193142.P6219713081978224776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A004434 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193142.P6219713081978224776

/-! ## A193142.P414968236554266033

`eq[A157928(A025444(n)+1), A226378(n)]`
-/

namespace A193142.P414968236554266033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A025444 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A193142.P414968236554266033

/-! ## A193142.P11112404460467956686

`eq[A157928(2*A025444(n)), A226378(n)]`
-/

namespace A193142.P11112404460467956686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (2 * A025444 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A193142.P11112404460467956686

/-! ## A193142.P12244879221312467097

`lt[(1-A210442(n))², A025444(n)]`
-/

namespace A193142.P12244879221312467097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A210442 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193142.P12244879221312467097

/-! ## A193142.P585098086465383722

`eq[n*A057427(A025444(n)), A136548(n+1)]`
-/

namespace A193142.P585098086465383722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A057427 (A025444 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A193142.P585098086465383722

/-! ## A193142.P3413579711710604256

`eq[A003415(n), A054977(A025439(n))]`
-/

namespace A193142.P3413579711710604256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A025439 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A193142.P3413579711710604256

/-!
# A193143: Primes which are the sum of 5 distinct positive squares in more than one way.

The programs for A193143, there is no canonical definition to state claims against.
-/

/-! ## A193143.P16361878124284045561

`p?[abs(n*a(A025444(n))-n)]` with `a(0)=1, a(1)=1`
-/

namespace A193143.P16361878124284045561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  |(n : ℤ) * f1 (A025444 n).toNat - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A193143.P16361878124284045561

/-! ## A193143.P17783325547495874139

`lt[A003415(n), A025444(n)]`
-/

namespace A193143.P17783325547495874139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193143.P17783325547495874139

/-! ## A193143.P948198575575751644

`lt[A210442(n), A025444(n)]`
-/

namespace A193143.P948198575575751644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193143.P948198575575751644

/-! ## A193143.P10816802126940187826

`eq[A157928(A025444(n)), A226378(n)]`
-/

namespace A193143.P10816802126940187826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A025444 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A193143.P10816802126940187826

/-! ## A193143.P17094121805002269753

`p?[n*A032741(n)*A141044(A025444(n))]`
-/

namespace A193143.P17094121805002269753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032741 n * A141044 (A025444 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A193143.P17094121805002269753

/-!
# A193144: Primes of the form n^2 + n + 1, where n is semiprime.

The programs for A193144, there is no canonical definition to state claims against.
-/

/-! ## A193144.P2714872568076061335

`p?[2*C(A088707(n+1), 2)+1]`
-/

namespace A193144.P2714872568076061335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A088707 (n + 1)).toNat 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A193144.P2714872568076061335

/-! ## A193144.P15057816731268490274

`p?[2*C(A001358(n+1)+1, 2)+1]`
-/

namespace A193144.P15057816731268490274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A001358 (n + 1) + 1).toNat 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A193144.P15057816731268490274

/-! ## A193144.P7579351195680765553

`A046163(A192321(n+1))`
-/

namespace A193144.P7579351195680765553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046163 (A192321 (n + 1)).toNat

end

end A193144.P7579351195680765553

/-! ## A193144.P6700705825102122641

`record[A081257(A006881(n+1))]`
-/

namespace A193144.P6700705825102122641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081257 (A006881 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193144.P6700705825102122641

/-! ## A193144.P7212723733130643181

`record[A081257(A001358(n+2))]`
-/

namespace A193144.P7212723733130643181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081257 (A001358 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A193144.P7212723733130643181

/-!
# A193146: Expansion of 1/(1 - x - x^2 + x^3 - x^4 + x^6).

The programs for A193146, the canonical program `A193146.P8120847286672154966` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193146 has offset 0).

The definition of A193146 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2+x^3-x^4+x^6))` (program `A193146.P8120847286672154966`, by `A193146.P8120847286672154966.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193146.P8120847286672154966

`ogf(1/(1-x-x^2+x^3-x^4+x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193146

/-- `ogf(1/(1-x-x^2+x^3-x^4+x^6))` -/
def P8120847286672154966.Spec : Prop :=
  ∀ n, P8120847286672154966.a n = A193146 n

theorem P8120847286672154966.correct : P8120847286672154966.Spec := by
  intro n
  simp only [A193146]

end A193146

/-! ## A193146.P14332306792880660902

`a(n-1)+a(n-2)-a(n-3)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=4, a(5)=5`
-/

namespace A193146.P14332306792880660902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2, 4, 5] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3) + a (n - 4) - a (n - 6)

end

end A193146.P14332306792880660902

namespace A193146

/-- `a(n-1)+a(n-2)-a(n-3)+a(n-4)-a(n-6)` -/
def P14332306792880660902.Spec : Prop :=
  ∀ n, P14332306792880660902.a n = A193146 n

end A193146

/-! ## A193146.P62178898128040739

`∑[a(n-2)+a(n-4)+a(n-5)]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=2`
-/

namespace A193146.P62178898128040739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0, 2] fun n f1 =>
  f1 (n - 2) + (f1 (n - 4) + f1 (n - 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193146.P62178898128040739

namespace A193146

/-- `∑[a(n-2)+a(n-4)+a(n-5)]` -/
def P62178898128040739.Spec : Prop :=
  ∀ n, (P62178898128040739.a n : ℤ) = A193146 n

end A193146

/-! ## A193146.P10241174295663738483

`∑[A079974(n)]`
-/

namespace A193146.P10241174295663738483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193146.P10241174295663738483

namespace A193146

/-- `∑[A079974(n)]` -/
def P10241174295663738483.Spec : Prop :=
  ∀ n, P10241174295663738483.a n = A193146 n

end A193146

/-! ## A193146.P8050581336634338104

`∑[∑[A017898(n)-a(n-1)]]` with `a(0)=1`
-/

namespace A193146.P8050581336634338104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A017898 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193146.P8050581336634338104

namespace A193146

/-- `∑[∑[A017898(n)-a(n-1)]]` -/
def P8050581336634338104.Spec : Prop :=
  ∀ n, P8050581336634338104.a n = A193146 n

end A193146

/-! ## A193146.P8123691291803621841

`∑[A003269(n+1)-a(n-1)]` with `a(0)=1`
-/

namespace A193146.P8123691291803621841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A003269 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A193146.P8123691291803621841

namespace A193146

/-- `∑[A003269(n+1)-a(n-1)]` -/
def P8123691291803621841.Spec : Prop :=
  ∀ n, P8123691291803621841.a n = A193146 n

end A193146

/-! ## A193146.P2158052043475141830

`A103632(n+3)+1-A176895(2*n)`
-/

namespace A193146.P2158052043475141830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103632 (n + 3) + 1 - A176895 (2 * n)

end

end A193146.P2158052043475141830

namespace A193146

/-- `A103632(n+3)+1-A176895(2*n)` -/
def P2158052043475141830.Spec : Prop :=
  ∀ n, P2158052043475141830.a n = A193146 n

end A193146

/-! ## A193146.P5895077498919173582

`A098578(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A193146.P5895077498919173582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098578 (n + 1) - a (n - 1)

end

end A193146.P5895077498919173582

namespace A193146

/-- `A098578(n+1)-a(n-1)` -/
def P5895077498919173582.Spec : Prop :=
  ∀ n, P5895077498919173582.a n = A193146 n

end A193146

/-! ## A193146.P14501618794609575870

`Δ[A145131(n)]-a(n-1)` with `a(0)=1`
-/

namespace A193146.P14501618794609575870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145131 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A193146.P14501618794609575870

namespace A193146

/-- `Δ[A145131(n)]-a(n-1)` -/
def P14501618794609575870.Spec : Prop :=
  ∀ n, P14501618794609575870.a n = A193146 n

end A193146

/-!
# A193147: Expansion of 1/(1 - x - 2*x^3 - x^5).

The programs for A193147, the canonical program `A193147.P2297551302937584024` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193147 has offset 0).

The definition of A193147 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-2x^3-x^5))` (program `A193147.P2297551302937584024`, by `A193147.P2297551302937584024.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A193147.P2297551302937584024

`ogf(1/(1-x-2x^3-x^5))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193147

/-- `ogf(1/(1-x-2x^3-x^5))` -/
def P2297551302937584024.Spec : Prop :=
  ∀ n, P2297551302937584024.a n = A193147 n

theorem P2297551302937584024.correct : P2297551302937584024.Spec := by
  intro n
  simp only [A193147]

end A193147

/-! ## A193147.P18084858219958594358

`a(n-1)+2*a(n-3)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=5`
-/

namespace A193147.P18084858219958594358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3, 5] fun n a =>
  a (n - 1) + 2 * a (n - 3) + a (n - 5)

end

end A193147.P18084858219958594358

namespace A193147

/-- `a(n-1)+2*a(n-3)+a(n-5)` -/
def P18084858219958594358.Spec : Prop :=
  ∀ n, (P18084858219958594358.a n : ℤ) = A193147 n

end A193147

/-! ## A193147.P3968763435796491276

`A003520(2*n)`
-/

namespace A193147.P3968763435796491276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (2 * n)

end

end A193147.P3968763435796491276

namespace A193147

/-- `A003520(2*n)` -/
def P3968763435796491276.Spec : Prop :=
  ∀ n, P3968763435796491276.a n = A193147 n

end A193147

/-! ## A193147.P6795728609781947562

`A017899(2*n+5)`
-/

namespace A193147.P6795728609781947562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (2 * n + 5)

end

end A193147.P6795728609781947562

namespace A193147

/-- `A017899(2*n+5)` -/
def P6795728609781947562.Spec : Prop :=
  ∀ n, P6795728609781947562.a n = A193147 n

end A193147

/-! ## A193147.P16119667196761840391

`A226516(3*(n+3)+n+2)`
-/

namespace A193147.P16119667196761840391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226516 (3 * (n + 3) + (n + 2))

end

end A193147.P16119667196761840391

namespace A193147

/-- `A226516(3*(n+3)+n+2)` -/
def P16119667196761840391.Spec : Prop :=
  ∀ n, P16119667196761840391.a n = A193147 n

end A193147

/-! ## A193147.P2755330007904643822

`Δ[A079955(2*n+3)]`
-/

namespace A193147.P2755330007904643822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079955 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A193147.P2755330007904643822

namespace A193147

/-- `Δ[A079955(2*n+3)]` -/
def P2755330007904643822.Spec : Prop :=
  ∀ n, P2755330007904643822.a n = A193147 n

end A193147

/-! ## A193147.P858822366962083724

`A098523(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A193147.P858822366962083724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098523 (2 * n) - a (n - 1)

end

end A193147.P858822366962083724

namespace A193147

/-- `A098523(2*n)-a(n-1)` -/
def P858822366962083724.Spec : Prop :=
  ∀ n, P858822366962083724.a n = A193147 n

end A193147

/-! ## A193147.P14099009639904111197

`A233522(2*n)-A017830(2*n+1)`
-/

namespace A193147.P14099009639904111197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233522 (2 * n) - A017830 (2 * n + 1)

end

end A193147.P14099009639904111197

namespace A193147

/-- `A233522(2*n)-A017830(2*n+1)` -/
def P14099009639904111197.Spec : Prop :=
  ∀ n, P14099009639904111197.a n = A193147 n

end A193147

/-! ## A193147.P12479327434930701515

`A098523(2*n+1)-A182097(2*n+1)`
-/

namespace A193147.P12479327434930701515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098523 (2 * n + 1) - A182097 (2 * n + 1)

end

end A193147.P12479327434930701515

namespace A193147

/-- `A098523(2*n+1)-A182097(2*n+1)` -/
def P12479327434930701515.Spec : Prop :=
  ∀ n, P12479327434930701515.a n = A193147 n

end A193147

/-! ## A193147.P7459088012283681918

`A233522(2*n)+A233522(2*n)-A233522(2*n+1)`
-/

namespace A193147.P7459088012283681918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233522 (2 * n) + (A233522 (2 * n) - A233522 (2 * n + 1))

end

end A193147.P7459088012283681918

namespace A193147

/-- `A233522(2*n)+A233522(2*n)-A233522(2*n+1)` -/
def P7459088012283681918.Spec : Prop :=
  ∀ n, P7459088012283681918.a n = A193147 n

end A193147

/-! ## A193147.P9401279409244790073

`A099559(2*n+1)-A099559(2*n)`
-/

namespace A193147.P9401279409244790073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099559 (2 * n + 1) - A099559 (2 * n)

end

end A193147.P9401279409244790073

namespace A193147

/-- `A099559(2*n+1)-A099559(2*n)` -/
def P9401279409244790073.Spec : Prop :=
  ∀ n, P9401279409244790073.a n = A193147 n

end A193147

/-! ## A193147.P16493332064622334080

`2*A233522(2*n)-A233522(2*n+1)`
-/

namespace A193147.P16493332064622334080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233522 (2 * n) - A233522 (2 * n + 1)

end

end A193147.P16493332064622334080

namespace A193147

/-- `2*A233522(2*n)-A233522(2*n+1)` -/
def P16493332064622334080.Spec : Prop :=
  ∀ n, P16493332064622334080.a n = A193147 n

end A193147

/-! ## A193147.P3851126299448120192

`A143284(2*n+1)+A005708(2*n)-A143284(2*n)`
-/

namespace A193147.P3851126299448120192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143284 (2 * n + 1) + (A005708 (2 * n) - A143284 (2 * n))

end

end A193147.P3851126299448120192

namespace A193147

/-- `A143284(2*n+1)+A005708(2*n)-A143284(2*n)` -/
def P3851126299448120192.Spec : Prop :=
  ∀ n, P3851126299448120192.a n = A193147 n

end A193147

/-! ## A193147.P1665006128516261427

`A003269(2*n+1)+A143283(2*n)-A143283(2*n+1)`
-/

namespace A193147.P1665006128516261427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (2 * n + 1) + (A143283 (2 * n) - A143283 (2 * n + 1))

end

end A193147.P1665006128516261427

namespace A193147

/-- `A003269(2*n+1)+A143283(2*n)-A143283(2*n+1)` -/
def P1665006128516261427.Spec : Prop :=
  ∀ n, P1665006128516261427.a n = A193147 n

end A193147

/-! ## A193147.P2695928577437841218

`sqrt(A224811(4*n))`
-/

namespace A193147.P2695928577437841218
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A224811 (4 * n) : ℝ)

end

end A193147.P2695928577437841218

namespace A193147

/-- `sqrt(A224811(4*n))` -/
def P2695928577437841218.Spec : Prop :=
  ∀ n, P2695928577437841218.a n = (A193147 n : ℝ)

end A193147

/-! ## A193147.P13977852918664528926

`A373717(∑[n+3])`
-/

namespace A193147.P13977852918664528926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373717 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A193147.P13977852918664528926

namespace A193147

/-- `A373717(∑[n+3])` -/
def P13977852918664528926.Spec : Prop :=
  ∀ n, P13977852918664528926.a n = A193147 n

end A193147

/-!
# A193159: Numbers having in binary representation longest palindromic subwords not longer than 3.

The programs for A193159, there is no canonical definition to state claims against.
-/

/-! ## A193159.P2206290194882237122

`lt[A050430(n+1), 4]+1`
-/

namespace A193159.P2206290194882237122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050430 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A193159.P2206290194882237122

/-! ## A193159.P15725813789933269156

`lt[A215256(n), A216096(3*n)]`
-/

namespace A193159.P15725813789933269156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215256 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216096 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193159.P15725813789933269156

/-! ## A193159.P3543835382458792173

`lt[A215256(n), A122553(n)^5]`
-/

namespace A193159.P3543835382458792173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215256 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A193159.P3543835382458792173

/-! ## A193159.P18405825889749596088

`lt[A050431(A005836(n+2)), 4]+1`
-/

namespace A193159.P18405825889749596088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050431 (A005836 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A193159.P18405825889749596088

/-! ## A193159.P5079255824147106298

`lt[A050431(A191107(n+2)+1), 4]+1`
-/

namespace A193159.P5079255824147106298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050431 (A191107 (n + 2) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A193159.P5079255824147106298

/-!
# A193160: E.g.f. A(x) satisfies: A(x/(1-x)) = x*A'(x).

The programs for A193160, there is no canonical definition to state claims against.
-/

/-! ## A193160.P12453261535616306852

`(n+1)*A193161(n)`
-/

namespace A193160.P12453261535616306852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A193161 n

end

end A193160.P12453261535616306852

/-! ## A193160.P4330613606402442187

`A193161(n)*A208341(A000124(n))`
-/

namespace A193160.P4330613606402442187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193161 n * A208341 (A000124 n).toNat

end

end A193160.P4330613606402442187

/-! ## A193160.P18294590295025171805

`(n+1)*A000142(n)/A177209(n)*A177208(n)`
-/

namespace A193160.P18294590295025171805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A000142 n : ℚ) / (A177209 n : ℚ) * (A177208 n : ℚ))

end

end A193160.P18294590295025171805

/-! ## A193160.P12147562152239646389

`A193161(n)*A200370(A133263(n))`
-/

namespace A193160.P12147562152239646389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193161 n * A200370 (A133263 n).toNat

end

end A193160.P12147562152239646389

/-!
# A193161: E.g.f. A(x) satisfies: A(x/(1-x))/(1-x) = d/dx x*A(x).

The programs for A193161, there is no canonical definition to state claims against.
-/

/-! ## A193161.P626674871105460660

`A193160(n+1)/(n+1)`
-/

namespace A193161.P626674871105460660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193160 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A193161.P626674871105460660

/-! ## A193161.P15493108389754549837

`n!*A177208(n)/A177209(n)`
-/

namespace A193161.P15493108389754549837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * A177208 n : ℚ) / (A177209 n : ℚ)

end

end A193161.P15493108389754549837

/-! ## A193161.P12921244624268723891

`A000142(n)/A177209(n)*A177208(n)`
-/

namespace A193161.P12921244624268723891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A177209 n : ℚ) * (A177208 n : ℚ)

end

end A193161.P12921244624268723891

/-!
# A193162: G.f. A(x) satisfies: A'(x) = 1 + A(x*exp(x)).

The programs for A193162, there is no canonical definition to state claims against.
-/

/-! ## A193162.P5016917567755452653

`A120750(A050342(∑[n]))`
-/

namespace A193162.P5016917567755452653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120750 (A050342 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A193162.P5016917567755452653

/-! ## A193162.P14329833101260542888

`A248183(A001147(n)+n)`
-/

namespace A193162.P14329833101260542888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (A001147 n + (n : ℤ)).toNat

end

end A193162.P14329833101260542888

/-!
# A193163: Irregular table read by rows, in which row n lists the factorions in base n, for n >= 2.

The programs for A193163, there is no canonical definition to state claims against.
-/

/-! ## A193163.P16006893128921555320

`A139038(A192916(n)+A139827(n+1))`
-/

namespace A193163.P16006893128921555320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139038 (A192916 n + A139827 (n + 1)).toNat

end

end A193163.P16006893128921555320

/-! ## A193163.P7992647864947615490

`A134832(2*(n+2))+A000688(A000108(n))`
-/

namespace A193163.P7992647864947615490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134832 (2 * (n + 2)) + A000688 (A000108 n).toNat

end

end A193163.P7992647864947615490

/-! ## A193163.P11589783121627621593

`A007717(A058343(2*(n+1)))*A007717(A055087(n+2))`
-/

namespace A193163.P11589783121627621593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007717 (A058343 (2 * (n + 1))).toNat * A007717 (A055087 (n + 2)).toNat

end

end A193163.P11589783121627621593

/-!
# A193164: a(1) = 1 ; for n > 1, a(n) is the smallest number such that a(n)^2 + 1 contains n distinct prime divisors dividing a(n+1)^2 + 1.

The programs for A193164, there is no canonical definition to state claims against.
-/

/-! ## A193164.P5027173430819351109

`A065876(a(n-1))` with `a(0)=1, a(1)=3, a(2)=13`
-/

namespace A193164.P5027173430819351109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 13] fun n a =>
  A065876 (a (n - 1)).toNat

end

end A193164.P5027173430819351109

/-!
# A193165: Semiprimes m = p*q such that p-1 and q-1 are semiprimes.

The programs for A193165, there is no canonical definition to state claims against.
-/

/-! ## A193165.P11840585144933716083

`∪[A005385(n+1)², A157352(n+1)]`
-/

namespace A193165.P11840585144933716083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193165.P11840585144933716083

/-! ## A193165.P1771557796737567298

`∪[(A077065(n+1)+1)², A157352(n+1)]`
-/

namespace A193165.P1771557796737567298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077065 (n + 1) + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193165.P1771557796737567298

/-! ## A193165.P7021610890670600705

`∪[A157352(n+1), (A176045(n+1)+A005384(n+1))²]`
-/

namespace A193165.P7021610890670600705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176045 (n + 1) + A005384 (n + 1)) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193165.P7021610890670600705

/-! ## A193165.P6120861780860469548

`∪[(A005384(n+1)-A175666(n+1))², A157352(n+1)]`
-/

namespace A193165.P6120861780860469548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005384 (n + 1) - A175666 (n + 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193165.P6120861780860469548

/-!
# A193166: Numbers that are not the product of consecutive primes.

The programs for A193166, the canonical program `A193166.P2077116164672252544` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193166 has offset 1).

The definition of A193166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A193166.P11058820044123316632

`comp[A073485(n+1)-1]+1`
-/

namespace A193166.P11058820044123316632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A193166.P11058820044123316632

namespace A193166

/-- `comp[A073485(n+1)-1]+1` -/
def P11058820044123316632.Spec : Prop :=
  ∀ n, (P11058820044123316632.a n : ℤ) = A193166 (n + 1)

end A193166

/-! ## A193166.P13038817911135053593

`∪[A013929(n+1), A073486(n+1)]`
-/

namespace A193166.P13038817911135053593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A193166.P13038817911135053593

namespace A193166

/-- `∪[A013929(n+1), A073486(n+1)]` -/
def P13038817911135053593.Spec : Prop :=
  ∀ n, (P13038817911135053593.a n : ℤ) = A193166 (n + 1)

end A193166

/-! ## A193166.P2077116164672252544

`∪[A013929(n+1), A073492(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A193166

/-- `∪[A013929(n+1), A073492(n+1)]` -/
def P2077116164672252544.Spec : Prop :=
  ∀ n, (P2077116164672252544.a n : ℤ) = A193166 (n + 1)

theorem P2077116164672252544.correct : P2077116164672252544.Spec := by
  intro n
  simp only [A193166, Nat.add_sub_cancel]

end A193166

/-! ## A193166.P760416341417218078

`lt[A300820(n+1), A001222(n+1)]+1`
-/

namespace A193166.P760416341417218078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A193166.P760416341417218078

namespace A193166

/-- `lt[A300820(n+1), A001222(n+1)]+1` -/
def P760416341417218078.Spec : Prop :=
  ∀ n, (P760416341417218078.a n : ℤ) = A193166 (n + 1)

end A193166

/-! ## A193166.P15079996570062838416

`A061767(lt[A300820(n+1), A001222(n+1)])`
-/

namespace A193166.P15079996570062838416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A193166.P15079996570062838416

namespace A193166

/-- `A061767(lt[A300820(n+1), A001222(n+1)])` -/
def P15079996570062838416.Spec : Prop :=
  ∀ n, P15079996570062838416.a n = A193166 (n + 1)

end A193166

/-! ## A193166.P14352877909308157757

`eq[0, A192280(n+1)]+1`
-/

namespace A193166.P14352877909308157757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192280 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A193166.P14352877909308157757

namespace A193166

/-- `eq[0, A192280(n+1)]+1` -/
def P14352877909308157757.Spec : Prop :=
  ∀ n, (P14352877909308157757.a n : ℤ) = A193166 (n + 1)

end A193166

/-! ## A193166.P8013064407220756119

`lt[A053590(n+1), n]+1`
-/

namespace A193166.P8013064407220756119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053590 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A193166.P8013064407220756119

namespace A193166

/-- `lt[A053590(n+1), n]+1` -/
def P8013064407220756119.Spec : Prop :=
  ∀ n, (P8013064407220756119.a n : ℤ) = A193166 (n + 1)

end A193166

/-! ## A193166.P17111990304979346328

`A061767(eq[0, A192280(n+1)])`
-/

namespace A193166.P17111990304979346328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A193166.P17111990304979346328

namespace A193166

/-- `A061767(eq[0, A192280(n+1)])` -/
def P17111990304979346328.Spec : Prop :=
  ∀ n, P17111990304979346328.a n = A193166 (n + 1)

end A193166

/-! ## A193166.P2059253443797179846

`A065475(eq[0, A192280(n+1)])`
-/

namespace A193166.P2059253443797179846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A193166.P2059253443797179846

namespace A193166

/-- `A065475(eq[0, A192280(n+1)])` -/
def P2059253443797179846.Spec : Prop :=
  ∀ n, P2059253443797179846.a n = A193166 (n + 1)

end A193166

/-! ## A193166.P14743469619246248584

`A020705(eq[0, A192280(n+4)])`
-/

namespace A193166.P14743469619246248584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192280 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A193166.P14743469619246248584

namespace A193166

/-- `A020705(eq[0, A192280(n+4)])` -/
def P14743469619246248584.Spec : Prop :=
  ∀ n, P14743469619246248584.a n = A193166 (n + 1)

end A193166

/-! ## A193166.P10557077037324561788

`eq[0, A192280(A000038(n)+n)]`
-/

namespace A193166.P10557077037324561788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192280 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193166.P10557077037324561788

namespace A193166

/-- `eq[0, A192280(A000038(n)+n)]` -/
def P10557077037324561788.Spec : Prop :=
  ∀ n, (P10557077037324561788.a n : ℤ) = A193166 (n + 1)

end A193166

/-! ## A193166.P5182843864312904569

`eq[0, A192280(xor(n, A000038(n)))]`
-/

namespace A193166.P5182843864312904569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192280 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193166.P5182843864312904569

namespace A193166

/-- `eq[0, A192280(xor(n, A000038(n)))]` -/
def P5182843864312904569.Spec : Prop :=
  ∀ n, (P5182843864312904569.a n : ℤ) = A193166 (n + 1)

end A193166

/-! ## A193166.P15201043778578825888

`eq[0, A192280(A123108(2*n))]`
-/

namespace A193166.P15201043778578825888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192280 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193166.P15201043778578825888

namespace A193166

/-- `eq[0, A192280(A123108(2*n))]` -/
def P15201043778578825888.Spec : Prop :=
  ∀ n, (P15201043778578825888.a n : ℤ) = A193166 (n + 1)

end A193166

/-! ## A193166.P12819518597938547655

`eq[0, A192280(A233583(n+1))]`
-/

namespace A193166.P12819518597938547655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192280 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193166.P12819518597938547655

namespace A193166

/-- `eq[0, A192280(A233583(n+1))]` -/
def P12819518597938547655.Spec : Prop :=
  ∀ n, (P12819518597938547655.a n : ℤ) = A193166 (n + 1)

end A193166

/-!
# A193167: Composite numbers k such that phi(k) divides 4*(k-1).

The programs for A193167, there is no canonical definition to state claims against.
-/

/-! ## A193167.P7569447800324612916

`eq[1, 5%A160595(n+1)]+1`
-/

namespace A193167.P7569447800324612916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A160595 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A193167.P7569447800324612916

/-! ## A193167.P17563234767962852656

`eq[1, (5-A160595(A028310(n)))%2]`
-/

namespace A193167.P17563234767962852656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 - A160595 (A028310 n).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A193167.P17563234767962852656

/-!
# A193168: Number of simple paths from (1, 1) to (n, 3) on an n X 3 grid with king moves allowed.

The programs for A193168, there is no canonical definition to state claims against.
-/

/-! ## A193168.P18017452426944755063

`A329118(∑[n+3]+1)`
-/

namespace A193168.P18017452426944755063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329118 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A193168.P18017452426944755063

/-! ## A193168.P8793505855942792017

`A329118(A167614(n+1))^A178334(n)`
-/

namespace A193168.P8793505855942792017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329118 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A193168.P8793505855942792017

/-! ## A193168.P10920099504441790752

`gcd(A000038(n), A329118(A167614(n+1)))`
-/

namespace A193168.P10920099504441790752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A329118 (A167614 (n + 1)).toNat)

end

end A193168.P10920099504441790752

/-! ## A193168.P17072482465792973140

`or(A000007(n), A329118(A167614(n+1)))`
-/

namespace A193168.P17072482465792973140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A329118 (A167614 (n + 1)).toNat)

end

end A193168.P17072482465792973140

/-! ## A193168.P8431878013408803161

`A329118(A167614(n+1))+A008683(9*(n+1))`
-/

namespace A193168.P8431878013408803161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329118 (A167614 (n + 1)).toNat + A008683 (9 * (n + 1))

end

end A193168.P8431878013408803161

/-!
# A193169: Number of odd divisors of lambda(n).

The programs for A193169, there is no canonical definition to state claims against.
-/

/-! ## A193169.P5338357310835516064

`A001227(A002322(n+1))`
-/

namespace A193169.P5338357310835516064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A002322 (n + 1)).toNat

end

end A193169.P5338357310835516064

/-! ## A193169.P6107784526307168992

`A001227(A011773(n+1))`
-/

namespace A193169.P6107784526307168992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A011773 (n + 1)).toNat

end

end A193169.P6107784526307168992

/-! ## A193169.P18056218066060003010

`∑{d}[A002322(n+1), A000035(#)]`
-/

namespace A193169.P18056218066060003010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000035 d

end

end A193169.P18056218066060003010

/-! ## A193169.P8063215161261196513

`A066800(n+1)-A191613(n+1)`
-/

namespace A193169.P8063215161261196513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066800 (n + 1) - A191613 (n + 1)

end

end A193169.P8063215161261196513

/-! ## A193169.P7488852114778679840

`A000005(2*A002322(n+1))-A066800(n+1)`
-/

namespace A193169.P7488852114778679840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A002322 (n + 1)).toNat - A066800 (n + 1)

end

end A193169.P7488852114778679840

/-! ## A193169.P6967156761460552061

`∑{d}[A002322(2*(n+1)), #%2]`
-/

namespace A193169.P6967156761460552061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d % 2

end

end A193169.P6967156761460552061

/-! ## A193169.P4878860217006793936

`A113414(A002322(2*(n+1)))`
-/

namespace A193169.P4878860217006793936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113414 (A002322 (2 * (n + 1))).toNat

end

end A193169.P4878860217006793936

/-! ## A193169.P15727191942566454855

`A056924(4*A002322(n+1))-A056924(A002322(n+1))`
-/

namespace A193169.P15727191942566454855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (4 * A002322 (n + 1)).toNat - A056924 (A002322 (n + 1)).toNat

end

end A193169.P15727191942566454855

/-! ## A193169.P607856475175422355

`A001227(A000010(n+1)%A320773(n+2))`
-/

namespace A193169.P607856475175422355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (Int.tmod (A000010 (n + 1)) (A320773 (n + 2))).toNat

end

end A193169.P607856475175422355

/-! ## A193169.P2854038815283675163

`and(A002223(n+1), A193453(n+1))`
-/

namespace A193169.P2854038815283675163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002223 (n + 1)) (A193453 (n + 1))

end

end A193169.P2854038815283675163

/-!
# A193170: Number of simple paths from (1, 1) to (n, 4) on an n X 4 grid with king moves allowed.

The programs for A193170, there is no canonical definition to state claims against.
-/

/-! ## A193170.P2666960029465532595

`A329118(A141214(n+1))`
-/

namespace A193170.P2666960029465532595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329118 (A141214 (n + 1)).toNat

end

end A193170.P2666960029465532595

/-! ## A193170.P8813008153443791528

`A329118(A374004(n+1))`
-/

namespace A193170.P8813008153443791528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329118 (A374004 (n + 1)).toNat

end

end A193170.P8813008153443791528

/-! ## A193170.P15986520896231836046

`A329118(A056000(n)+7)`
-/

namespace A193170.P15986520896231836046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329118 (A056000 n + 7).toNat

end

end A193170.P15986520896231836046

/-! ## A193170.P12875061893096468412

`A329118(A052905(n)+9)`
-/

namespace A193170.P12875061893096468412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329118 (A052905 n + 9).toNat

end

end A193170.P12875061893096468412

/-! ## A193170.P4131140492446389789

`A329118(A055999(n)+10)`
-/

namespace A193170.P4131140492446389789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329118 (A055999 n + 10).toNat

end

end A193170.P4131140492446389789

/-!
# A193171: Number of simple paths from (1, 1) to (n, 5) on an n X 5 grid with king moves allowed.

The programs for A193171, there is no canonical definition to state claims against.
-/

/-! ## A193171.P10268567397399615122

`A329118(A374005(n+1))`
-/

namespace A193171.P10268567397399615122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329118 (A374005 (n + 1)).toNat

end

end A193171.P10268567397399615122

/-! ## A193171.P6965578367827409811

`A329118(A046691(n+3))`
-/

namespace A193171.P6965578367827409811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329118 (A046691 (n + 3)).toNat

end

end A193171.P6965578367827409811

/-! ## A193171.P10576687867745045638

`A329118(A167499(n+3))`
-/

namespace A193171.P10576687867745045638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329118 (A167499 (n + 3)).toNat

end

end A193171.P10576687867745045638

/-! ## A193171.P7708424961960636436

`A329118(A155212(n)+13)`
-/

namespace A193171.P7708424961960636436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329118 (A155212 n + 13).toNat

end

end A193171.P7708424961960636436

/-! ## A193171.P3680954083862441040

`A329118(A056000(n)+15)`
-/

namespace A193171.P3680954083862441040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329118 (A056000 n + 15).toNat

end

end A193171.P3680954083862441040

/-!
# A193172: Number of simple paths from (1, 1) to (n, 6) on an n X 6 grid with king moves allowed.

The programs for A193172, there is no canonical definition to state claims against.
-/

/-! ## A193172.P8261078457874567083

`A329118(A374007(n+1))`
-/

namespace A193172.P8261078457874567083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329118 (A374007 (n + 1)).toNat

end

end A193172.P8261078457874567083

/-! ## A193172.P5976538755445465162

`A329118(eq[3, A219347(n)])`
-/

namespace A193172.P5976538755445465162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329118 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A193172.P5976538755445465162

/-! ## A193172.P17854334665803003761

`A329118(eq[5, A193592(n)])`
-/

namespace A193172.P17854334665803003761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329118 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A193172.P17854334665803003761

/-! ## A193172.P17493276472937284818

`A329118(eq[8, A258709(n)])`
-/

namespace A193172.P17493276472937284818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329118 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A193172.P17493276472937284818

/-! ## A193172.P10498884623458658527

`A329118(A167499(n+4)+1)`
-/

namespace A193172.P10498884623458658527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329118 (A167499 (n + 4) + 1).toNat

end

end A193172.P10498884623458658527

/-!
# A193173: Triangle in which n-th row lists the number of elements in lexicographically ordered partitions of n, A026791.

The programs for A193173, there is no canonical definition to state claims against.
-/

/-! ## A193173.P5344882280150480559

`A001222(A334437(n+1))`
-/

namespace A193173.P5344882280150480559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A334437 (n + 1)).toNat

end

end A193173.P5344882280150480559

/-! ## A193173.P15537604341573792360

`A194546(n+1)-A194547(n+1)`
-/

namespace A193173.P15537604341573792360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194546 (n + 1) - A194547 (n + 1)

end

end A193173.P15537604341573792360

/-! ## A193173.P9479940650932224395

`log2(∏{e}[A334437(n+1), A000079(#)])`
-/

namespace A193173.P9479940650932224395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334437 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000079 (Nat.factorization (f1 n).natAbs p) : ℤ) : ℝ)

end

end A193173.P9479940650932224395

/-! ## A193173.P10521438675579107943

`∑{d}[A334437(n+1), A001221(A014963(#))]`
-/

namespace A193173.P10521438675579107943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 (A014963 d).toNat

end

end A193173.P10521438675579107943

/-! ## A193173.P17120765875025069837

`A106487(A171429(n+1))`
-/

namespace A193173.P17120765875025069837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106487 (A171429 (n + 1)).toNat

end

end A193173.P17120765875025069837

/-!
# A193175: Numbers k such that there exists a two-dimensional generalized Bravais lattice with k-fold symmetry.

The programs for A193175, there is no canonical definition to state claims against.
-/

/-! ## A193175.P12844125688089349505

`2*A193176(n+1)`
-/

namespace A193175.P12844125688089349505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193176 (n + 1)

end

end A193175.P12844125688089349505

/-! ## A193175.P12220655204479700122

`2*(eq[1, A193179(n+2)]+2)`
-/

namespace A193175.P12220655204479700122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193179 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A193175.P12220655204479700122

/-! ## A193175.P15046383656548697309

`A004277(A193176(n+1))`
-/

namespace A193175.P15046383656548697309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A193176 (n + 1)).toNat

end

end A193175.P15046383656548697309

/-! ## A193175.P14325071882809057029

`A000267(A193176(n+1)²)`
-/

namespace A193175.P14325071882809057029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A193176 (n + 1) ^ 2).toNat

end

end A193175.P14325071882809057029

/-! ## A193175.P14689880820438296894

`A004275(A193176(n+1)+1)`
-/

namespace A193175.P14689880820438296894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A193176 (n + 1) + 1).toNat

end

end A193175.P14689880820438296894

/-!
# A193176: A193175/2.

The programs for A193176, there is no canonical definition to state claims against.
-/

/-! ## A193176.P7391147484087811217

`A193175(n+1)/2`
-/

namespace A193176.P7391147484087811217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193175 (n + 1) : ℚ) / 2

end

end A193176.P7391147484087811217

/-! ## A193176.P16612409238920526784

`eq[1, A193179(n+2)]+2`
-/

namespace A193176.P16612409238920526784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193179 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A193176.P16612409238920526784

/-! ## A193176.P595011809382132202

`A001281(A193175(n+1))`
-/

namespace A193176.P595011809382132202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A193175 (n + 1)).toNat

end

end A193176.P595011809382132202

/-! ## A193176.P10258089468537452413

`A004524(A193175(n+1)+1)`
-/

namespace A193176.P10258089468537452413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A193175 (n + 1) + 1).toNat

end

end A193176.P10258089468537452413

/-! ## A193176.P780873670755525389

`A004526(A193175(n+1)+1)`
-/

namespace A193176.P780873670755525389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A193175 (n + 1) + 1).toNat

end

end A193176.P780873670755525389

/-!
# A193177: Numbers k such that 2*17^k - 1 is prime.

The programs for A193177, there is no canonical definition to state claims against.
-/

/-! ## A193177.P9207555253522911473

`A096494(record[A191664(3*n+1)²])`
-/

namespace A193177.P9207555253522911473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191664 (3 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096494 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A193177.P9207555253522911473

/-!
# A193179: Number of classes of two-dimensional generalized Bravais lattices with 2n-fold symmetry.

The programs for A193179, there is no canonical definition to state claims against.
-/

/-! ## A193179.P8854350434108731136

`or(A061653(2*(n+2)), A358842(A079398(2*n)))`
-/

namespace A193179.P8854350434108731136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061653 (2 * (n + 2))) (A358842 (A079398 (2 * n)).toNat)

end

end A193179.P8854350434108731136

/-!
# A193181: a(n) = lcm(f(1),f(2),...,f(n)) with f(x) = x^2+1.

The programs for A193181, the canonical program `A193181.P9368549925582793118` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A193181 has offset 1).

The definition of A193181 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A193181.P9368549925582793118

`lcm(a(n-1), (n+1)²+1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A193181

/-- `lcm(a(n-1), (n+1)²+1)` -/
def P9368549925582793118.Spec : Prop :=
  ∀ n, (P9368549925582793118.a n : ℤ) = A193181 (n + 1)

theorem P9368549925582793118.correct : P9368549925582793118.Spec := by
  intro n
  simp only [A193181, Nat.add_sub_cancel]

end A193181

/-! ## A193181.P16857255486756861263

`lcm(n*(n+2)+2, -a(n-1))` with `a(0)=2`
-/

namespace A193181.P16857255486756861263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (n * (n + 2) + 2 : ℤ) (-(a (n - 1) : ℤ))

end

end A193181.P16857255486756861263

namespace A193181

/-- `lcm(n*(n+2)+2, -a(n-1))` -/
def P16857255486756861263.Spec : Prop :=
  ∀ n, (P16857255486756861263.a n : ℤ) = A193181 (n + 1)

end A193181

/-! ## A193181.P11111496531141054634

`lcm(2*n+1-(n+3)*(n+1), floor(a(n-1)))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A193181.P11111496531141054634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm ((2 * n + 1 : ℤ) - ((n + 3) * (n + 1) : ℤ)) (a (n - 1) : ℤ)

end

end A193181.P11111496531141054634

namespace A193181

/-- `lcm(2*n+1-(n+3)*(n+1), floor(a(n-1)))` -/
def P11111496531141054634.Spec : Prop :=
  ∀ n, (P11111496531141054634.a n : ℤ) = A193181 (n + 1)

end A193181

/-! ## A193181.P9853353745578941313

`lcm(-a(n-1), record[A160457(n)])` with `a(0)=2`
-/

namespace A193181.P9853353745578941313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160457 n

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A193181.P9853353745578941313

namespace A193181

/-- `lcm(-a(n-1), record[A160457(n)])` -/
def P9853353745578941313.Spec : Prop :=
  ∀ n, (P9853353745578941313.a n : ℤ) = A193181 (n + 1)

end A193181

/-!
# A193188: G.f.: A(x) = Sum_{n>=0} x^n / Product_{k=1..n} (1 - 2^(n-k)*x^k).

The programs for A193188, there is no canonical definition to state claims against.
-/

/-! ## A193188.P2177703565583492943

`A200738(A193215(n))`
-/

namespace A193188.P2177703565583492943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200738 (A193215 n).toNat

end

end A193188.P2177703565583492943

/-! ## A193188.P1985136389218144823

`A164878(A035877(n!))`
-/

namespace A193188.P1985136389218144823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164878 (A035877 (Nat.factorial n)).toNat

end

end A193188.P1985136389218144823

/-! ## A193188.P12871734153596872523

`A094189(A310916(n!))`
-/

namespace A193188.P12871734153596872523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094189 (A310916 (Nat.factorial n)).toNat

end

end A193188.P12871734153596872523

/-!
# A193189: G.f.: A(x) = Sum_{n>=0} x^n / Product_{k=1..n} (1 - 3^(n-k)*x^k).

The programs for A193189, there is no canonical definition to state claims against.
-/

/-! ## A193189.P11213781769420915594

`A376774(2^n)-n`
-/

namespace A193189.P11213781769420915594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376774 (2 ^ n) - (n : ℤ)

end

end A193189.P11213781769420915594

/-! ## A193189.P4489679149423780562

`A380751(∑[(n+1)^(n-1)])`
-/

namespace A193189.P4489679149423780562
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380751 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A193189.P4489679149423780562

/-!
# A193190: G.f.: A(x) = Sum_{n>=0} x^n / Product_{k=1..n} (1 - 4^(n-k)*x^k).

The programs for A193190, there is no canonical definition to state claims against.
-/

/-! ## A193190.P8895367374163956365

`or(n%3, A317080(n))`
-/

namespace A193190.P8895367374163956365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 3 : ℕ) : ℤ) (A317080 n)

end

end A193190.P8895367374163956365

/-! ## A193190.P5349489651934882101

`A036788(a(n-1)+1)-(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A193190.P5349489651934882101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A036788 (a (n - 1) + 1).toNat - (n + 1 : ℤ)

end

end A193190.P5349489651934882101

/-!
# A193191: G.f.: A(x) = Sum_{n>=0} x^n / Product_{k=1..n} (1 - 5^(n-k)*x^k).

The programs for A193191, there is no canonical definition to state claims against.
-/

/-! ## A193191.P5985894040233086283

`A020655(A193190(n))`
-/

namespace A193191.P5985894040233086283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (A193190 n).toNat

end

end A193191.P5985894040233086283

/-! ## A193191.P8201577475387485582

`A000945(3*a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A193191.P8201577475387485582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A000945 (3 * a (n - 2)).toNat

end

end A193191.P8201577475387485582

/-!
# A193192: G.f. satisfies: A(A(x)) = Sum_{n>=1} a(n)*x^n * (1+x)^(n^2), where g.f. A(x) = Sum_{n>=1} a(n)*x^n.

The programs for A193192, there is no canonical definition to state claims against.
-/

/-! ## A193192.P18422212175969062030

`A051215(n!)+1`
-/

namespace A193192.P18422212175969062030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051215 (Nat.factorial n) + 1

end

end A193192.P18422212175969062030

/-!
# A193193: G.f. satisfies: A(A(x)) = Sum_{n>=1} a(n)*x^n / (1-x)^(n^2), where g.f. A(x) = Sum_{n>=1} a(n)*x^n.

The programs for A193193, there is no canonical definition to state claims against.
-/

/-! ## A193193.P7834733465193143093

`or(A000217(n), A047994(A120974(n)))`
-/

namespace A193193.P7834733465193143093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000217 n) (A047994 (A120974 n).toNat)

end

end A193193.P7834733465193143093

/-!
# A193194: G.f. satisfies: A(A(x)) = Sum_{n>=1} a(n)*x^n * (1+x)^(n*(n+1)/2), where g.f. A(x) = Sum_{n>=1} a(n)*x^n.

The programs for A193194, there is no canonical definition to state claims against.
-/

/-! ## A193194.P9837830044252758918

`ceil(A353425(n+4)/53)`
-/

namespace A193194.P9837830044252758918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353425 (n + 4) : ℚ) / 53⌉

end

end A193194.P9837830044252758918

/-! ## A193194.P6392724430657547692

`A034328(A261329(n))`
-/

namespace A193194.P6392724430657547692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034328 (A261329 n).toNat

end

end A193194.P6392724430657547692

/-!
# A193195: G.f. satisfies: A(A(x)) = Sum_{n>=1} a(n)*x^n / (1-x)^(n*(n+1)/2), where g.f. A(x) = Sum_{n>=1} a(n)*x^n.

The programs for A193195, there is no canonical definition to state claims against.
-/

/-! ## A193195.P11837884375858486831

`A124525(∑[A349361(n)])`
-/

namespace A193195.P11837884375858486831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124525 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A193195.P11837884375858486831

/-! ## A193195.P1242222810749436495

`A143773(3^A001096(n))`
-/

namespace A193195.P1242222810749436495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143773 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A001096 n : ℤ))).toNat

end

end A193195.P1242222810749436495

/-!
# A193196: G.f.: A(x) = Sum_{n>=0} x^n / Product_{k=1..n} (1 - k*x^k).

The programs for A193196, there is no canonical definition to state claims against.
-/

/-! ## A193196.P13817910902342811533

`A364882(A147852(n+1))`
-/

namespace A193196.P13817910902342811533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364882 (A147852 (n + 1)).toNat

end

end A193196.P13817910902342811533

/-! ## A193196.P5739106801007153104

`A112231(A079284(n))`
-/

namespace A193196.P5739106801007153104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112231 (A079284 n).toNat

end

end A193196.P5739106801007153104

/-! ## A193196.P2472951822363301430

`A133137(A191398(n))`
-/

namespace A193196.P2472951822363301430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (A191398 n).toNat

end

end A193196.P2472951822363301430

/-! ## A193196.P7885684204289264658

`A347498(A206290(n))`
-/

namespace A193196.P7885684204289264658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347498 (A206290 n).toNat

end

end A193196.P7885684204289264658

/-! ## A193196.P15853355891723589227

`A347498(A206788(n+1))`
-/

namespace A193196.P15853355891723589227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347498 (A206788 (n + 1)).toNat

end

end A193196.P15853355891723589227

/-!
# A193197: G.f.: A(x) = Sum_{n>=0} x^(n^2) / Product_{k=1..n} (1 - x^k)^n.

The programs for A193197, there is no canonical definition to state claims against.
-/

/-! ## A193197.P6659503685842232274

`A321993(A052810(n))-n`
-/

namespace A193197.P6659503685842232274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321993 (A052810 n).toNat - (n : ℤ)

end

end A193197.P6659503685842232274

/-! ## A193197.P6793532255843957492

`A002024(A309864(n))+A000094(n+1)`
-/

namespace A193197.P6793532255843957492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A309864 n).toNat + A000094 (n + 1)

end

end A193197.P6793532255843957492

/-! ## A193197.P12877918064554070199

`(A046208(A309864(n))+A000094(n+1))^A213000(n)`
-/

namespace A193197.P12877918064554070199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046208 (A309864 n).toNat + A000094 (n + 1) : ℚ) ^ (A213000 n : ℤ)

end

end A193197.P12877918064554070199

/-! ## A193197.P8737095025865437251

`A007949(3*n+1)+A046208(A309864(n))+A000094(n+1)`
-/

namespace A193197.P8737095025865437251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (3 * n + 1) + (A046208 (A309864 n).toNat + A000094 (n + 1))

end

end A193197.P8737095025865437251

/-! ## A193197.P1336452479737007925

`A012265(A132302(n))`
-/

namespace A193197.P1336452479737007925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (A132302 n).toNat

end

end A193197.P1336452479737007925

/-!
# A193198: G.f.: A(x) = Sum_{n>=0} x^n/(1 - 3^n*x)^n.

The programs for A193198, there is no canonical definition to state claims against.
-/

/-! ## A193198.P8213538686340839448

`ceil(A135079(n)/2)`
-/

namespace A193198.P8213538686340839448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135079 n : ℚ) / 2⌉

end

end A193198.P8213538686340839448

/-! ## A193198.P1116127852676045040

`A135079(A028310(n))/2`
-/

namespace A193198.P1116127852676045040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135079 (A028310 n).toNat : ℚ) / 2

end

end A193198.P1116127852676045040

/-! ## A193198.P4723122253289966087

`A011782(n)*A172389(n)`
-/

namespace A193198.P4723122253289966087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A172389 n

end

end A193198.P4723122253289966087

/-! ## A193198.P6967789723507703782

`A135079(n)/A006530(A000079(n))`
-/

namespace A193198.P6967789723507703782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135079 n : ℚ) / (A006530 (A000079 n).toNat : ℚ)

end

end A193198.P6967789723507703782

/-!
# A193199: G.f.: A(x) = Sum_{n>=0} x^n/(1 - 4^n*x)^n.

The programs for A193199, there is no canonical definition to state claims against.
-/

/-! ## A193199.P3994913907781028630

`ceil(A355440(n)/2)`
-/

namespace A193199.P3994913907781028630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A355440 n : ℚ) / 2⌉

end

end A193199.P3994913907781028630

/-! ## A193199.P876339577657531197

`A355440(round(sqrt(n²+1)))/2`
-/

namespace A193199.P876339577657531197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355440 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 2

end

end A193199.P876339577657531197

/-! ## A193199.P203976045718895257

`round(A355440(n)/A006530(A000079(n)))`
-/

namespace A193199.P203976045718895257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A355440 n : ℚ) / (A006530 (A000079 n).toNat : ℚ))

end

end A193199.P203976045718895257

