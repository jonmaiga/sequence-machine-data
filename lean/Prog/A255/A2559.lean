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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
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
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
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
# A255900: Expansion of exp( Sum_{n >= 1} A000464(n-1)*x^n/n ).

The programs for A255900, there is no canonical definition to state claims against.
-/

/-! ## A255900.P1230833634025317116

`A047415(A177853(n!))`
-/

namespace A255900.P1230833634025317116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047415 (A177853 (Nat.factorial n)).toNat

end

end A255900.P1230833634025317116

/-!
# A255903: Number T(n,k) of collections of nonempty multisets with a total of n objects of exactly k colors; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A255903, there is no canonical definition to state claims against.
-/

/-! ## A255903.P15908228962070780234

`or(A185284(3*n+1), A326500(n))`
-/

namespace A255903.P15908228962070780234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (3 * n + 1)) (A326500 n)

end

end A255903.P15908228962070780234

/-! ## A255903.P2277163671945770020

`A326500(n)+A107846(A042950(n))`
-/

namespace A255903.P2277163671945770020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326500 n + A107846 (A042950 n).toNat

end

end A255903.P2277163671945770020

/-! ## A255903.P15100672716064037526

`or(A326499(A092453(3*n+1)), A326500(n))`
-/

namespace A255903.P15100672716064037526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A326499 ((A092453 (3 * n + 1)).toNat + 50)) (A326500 n)

end

end A255903.P15100672716064037526

/-! ## A255903.P14725801921398826601

`A001222(2^A326500(n))`
-/

namespace A255903.P14725801921398826601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A326500 n : ℤ))).toNat

end

end A255903.P14725801921398826601

/-! ## A255903.P15093656078101273209

`A056239(2^A326500(n))`
-/

namespace A255903.P15093656078101273209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A326500 n : ℤ))).toNat

end

end A255903.P15093656078101273209

/-!
# A255904: Numbers that are neither triangular nor the sum of a positive triangular number and a prime.

The programs for A255904, there is no canonical definition to state claims against.
-/

/-! ## A255904.P11448908431971433167

`A111908(A047370(n+1))`
-/

namespace A255904.P11448908431971433167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111908 (A047370 (n + 1)).toNat

end

end A255904.P11448908431971433167

/-!
# A255906: Number of collections of nonempty multisets with a total of n objects having color set {1,...,k} for some k<=n.

The programs for A255906, there is no canonical definition to state claims against.
-/

/-! ## A255906.P13051086390854496614

`A326212(n)+A326211(n)`
-/

namespace A255906.P13051086390854496614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326212 n + A326211 n

end

end A255906.P13051086390854496614

/-! ## A255906.P9202148203966086537

`A326277(n)+A324171(n)`
-/

namespace A255906.P9202148203966086537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326277 n + A324171 n

end

end A255906.P9202148203966086537

/-!
# A255907: Number of collections of nonempty multisets with a total of 2n objects of exactly n colors.

The programs for A255907, there is no canonical definition to state claims against.
-/

/-! ## A255907.P12355362753083061559

`A255903(∑[4*n])`
-/

namespace A255907.P12355362753083061559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255907.P12355362753083061559

/-! ## A255907.P16323715736540754191

`gcd(A000038(n), A255903(A046092(n)))`
-/

namespace A255907.P16323715736540754191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A255903 (A046092 n).toNat)

end

end A255907.P16323715736540754191

/-! ## A255907.P13022886073752810793

`A255903(A046092(n))+A000007(n+1)`
-/

namespace A255907.P13022886073752810793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A046092 n).toNat + A000007 (n + 1)

end

end A255907.P13022886073752810793

/-! ## A255907.P8102443253348934284

`A255903(A046092(n))+A008683(4*(n+1))`
-/

namespace A255907.P8102443253348934284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A046092 n).toNat + A008683 (4 * (n + 1))

end

end A255907.P8102443253348934284

/-! ## A255907.P15889971105696321872

`A007318((-1)^n+1)*A255903(A046092(n))`
-/

namespace A255907.P15889971105696321872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((-1) ^ n + 1).toNat * A255903 (A046092 n).toNat

end

end A255907.P15889971105696321872

/-!
# A255908: Triangle read by rows: T(n,L) = number of rho-labeled graphs with n edges whose labeling is bipartite with boundary value L.

The programs for A255908, there is no canonical definition to state claims against.
-/

/-! ## A255908.P12880462425211968645

`A140513(n)*A299504(A007401(n+1))`
-/

namespace A255908.P12880462425211968645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n * A299504 (A007401 (n + 1)).toNat

end

end A255908.P12880462425211968645

/-! ## A255908.P8113990828764746469

`A140513(n)*A299504(A181133(n+1))`
-/

namespace A255908.P8113990828764746469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n * A299504 (A181133 (n + 1)).toNat

end

end A255908.P8113990828764746469

/-! ## A255908.P13848387992739998758

`A000079(A002024(n+1))*A299504(A007401(n+1))`
-/

namespace A255908.P13848387992739998758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002024 (n + 1)).toNat * A299504 (A007401 (n + 1)).toNat

end

end A255908.P13848387992739998758

/-! ## A255908.P197497529370671369

`A000079(A002024(n+1))*A299504(A181133(n+1))`
-/

namespace A255908.P197497529370671369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002024 (n + 1)).toNat * A299504 (A181133 (n + 1)).toNat

end

end A255908.P197497529370671369

/-!
# A255909: Second difference sequence of A070865.

The programs for A255909, there is no canonical definition to state claims against.
-/

/-! ## A255909.P1104193643713494414

`char[1]+Δ[A051935(n+1)]`
-/

namespace A255909.P1104193643713494414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051935 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A255909.P1104193643713494414

/-! ## A255909.P4463744298651122395

`char[1]+A051935(n+2)-A051935(n+1)`
-/

namespace A255909.P4463744298651122395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A051935 (n + 2) - A051935 (n + 1))

end

end A255909.P4463744298651122395

/-! ## A255909.P16444945967437495724

`Δ[A051935(n+1)+gcd(2, A002322(n+1))]`
-/

namespace A255909.P16444945967437495724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051935 (n + 1) + (Int.gcd 2 (A002322 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255909.P16444945967437495724

/-! ## A255909.P7202561247978810445

`Δ[A051935(n+1)]+and(n, A010051(n+1))`
-/

namespace A255909.P7202561247978810445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.land (n : ℤ) (A010051 (n + 1))

end

end A255909.P7202561247978810445

/-! ## A255909.P9029184105056237085

`Δ[Δ[A070865(n+1)]]`
-/

namespace A255909.P9029184105056237085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070865 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255909.P9029184105056237085

/-! ## A255909.P11215847170838889910

`Δ[Δ[record[A006530(A284188(n+1))]]]`
-/

namespace A255909.P11215847170838889910
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A284188 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255909.P11215847170838889910

/-!
# A255910: Decimal expansion of 16/9.

The programs for A255910, the canonical program `A255910.P9449504363860173293` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255910 has offset 1).

The definition of A255910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255910.P9449504363860173293

`a(n-1)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A255910

/-- `a(n-1)` -/
def P9449504363860173293.Spec : Prop :=
  ∀ n, (P9449504363860173293.a n : ℤ) = A255910 (n + 1)

theorem P9449504363860173293.correct : P9449504363860173293.Spec := by
  intro n
  simp only [A255910, Nat.add_sub_cancel]

end A255910

/-!
# A255911: a(n) is the smallest natural number such that A002182(n) = a(n) * A002182(n - i) for some i > 0, where A002182 is the sequence of highly composite numbers.

The programs for A255911, there is no canonical definition to state claims against.
-/

/-! ## A255911.P9400347261813787374

`p?[A349135(n+1)%A349093(n+1)]`
-/

namespace A255911.P9400347261813787374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349135 (n + 1)) (A349093 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255911.P9400347261813787374

/-! ## A255911.P10124288562296280763

`A215405(A122510(n+1)^A340653(3*n+2))`
-/

namespace A255911.P10124288562296280763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215405 (SequenceMachineLib.roundAway ((A122510 (n + 1) : ℚ) ^ (A340653 (3 * n + 2) : ℤ))).toNat

end

end A255911.P10124288562296280763

/-! ## A255911.P3269600281135560939

`p?[A115011(n)%A023193(A098550(n+1))]`
-/

namespace A255911.P3269600281135560939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115011 n) (A023193 (A098550 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A255911.P3269600281135560939

/-! ## A255911.P17371616189053432296

`gcd(A078511(A357635(2*n+1)), A163870(n+1))`
-/

namespace A255911.P17371616189053432296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078511 (A357635 (2 * n + 1)).toNat) (A163870 (n + 1))

end

end A255911.P17371616189053432296

/-! ## A255911.P2322491600400407055

`A000040(gcd(A217510(3*(n+1)), A358040(n+1)))`
-/

namespace A255911.P2322491600400407055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.gcd (A217510 (3 * (n + 1))) (A358040 (n + 1)))

end

end A255911.P2322491600400407055

/-!
# A255914: Triangle read by rows: T(n,k) = A007318(n,k)*A238453(n,k).

The programs for A255914, there is no canonical definition to state claims against.
-/

/-! ## A255914.P573136825750397017

`A007318(n)*A238453(n)`
-/

namespace A255914.P573136825750397017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A238453 n

end

end A255914.P573136825750397017

/-! ## A255914.P8065466611477331973

`abs(A108086(n)*A238453(n))`
-/

namespace A255914.P8065466611477331973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n * A238453 n|

end

end A255914.P8065466611477331973

/-! ## A255914.P9189346492929014762

`abs(A117440(n)*A238453(n))`
-/

namespace A255914.P9189346492929014762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 n * A238453 n|

end

end A255914.P9189346492929014762

/-! ## A255914.P7448452461383199491

`abs(A118433(n)*A238453(n))`
-/

namespace A255914.P7448452461383199491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118433 n * A238453 n|

end

end A255914.P7448452461383199491

/-! ## A255914.P1068368826056218879

`abs(A130595(n)*A238453(n))`
-/

namespace A255914.P1068368826056218879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n * A238453 n|

end

end A255914.P1068368826056218879

/-! ## A255914.P12429402883419253309

`sqrt(A008459(n))*A238453(n)`
-/

namespace A255914.P12429402883419253309
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A238453 n : ℝ)

end

end A255914.P12429402883419253309

/-! ## A255914.P14272464386114054660

`Δ[A102363(n)]*A238453(n)`
-/

namespace A255914.P14272464386114054660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A238453 n

end

end A255914.P14272464386114054660

/-! ## A255914.P14724232101848088352

`(A014473(n)+1)*A238453(n)`
-/

namespace A255914.P14724232101848088352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A238453 n

end

end A255914.P14724232101848088352

/-! ## A255914.P1196732653474420840

`A028326(n)/2*A238453(n)`
-/

namespace A255914.P1196732653474420840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A238453 n : ℚ)

end

end A255914.P1196732653474420840

/-! ## A255914.P16773015833233308790

`A246465(n)²*A000010(A048804(n)²)`
-/

namespace A255914.P16773015833233308790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246465 n ^ 2 * A000010 (A048804 n ^ 2).toNat

end

end A255914.P16773015833233308790

/-!
# A255915: Triangle read by rows: T(n,k) = A239672(n)/(A239672(k) * A239672(n-k)).

The programs for A255915, there is no canonical definition to state claims against.
-/

/-! ## A255915.P2726146075041986702

`A181543(n)²-A001222(A129455(n))²`
-/

namespace A255915.P2726146075041986702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181543 n ^ 2 - A001222 (A129455 n).toNat ^ 2

end

end A255915.P2726146075041986702

/-! ## A255915.P16305296895200162832

`A069091(A309876(n*A061674(n)))`
-/

namespace A255915.P16305296895200162832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069091 (A309876 ((n : ℤ) * A061674 n).toNat).toNat

end

end A255915.P16305296895200162832

/-! ## A255915.P277041372515177084

`A069091(A309876(n*A174544(n)))`
-/

namespace A255915.P277041372515177084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069091 (A309876 ((n : ℤ) * A174544 n).toNat).toNat

end

end A255915.P277041372515177084

/-! ## A255915.P3006870720555314744

`A069091(A309876(n)^A061674(n))`
-/

namespace A255915.P3006870720555314744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069091 (SequenceMachineLib.roundAway ((A309876 n : ℚ) ^ (A061674 n : ℤ))).toNat

end

end A255915.P3006870720555314744

/-! ## A255915.P177565966092078739

`A069091(A309876(n)^A174544(n))`
-/

namespace A255915.P177565966092078739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069091 (SequenceMachineLib.roundAway ((A309876 n : ℚ) ^ (A174544 n : ℤ))).toNat

end

end A255915.P177565966092078739

/-!
# A255916: Number of ways to write n as the sum of a generalized heptagonal number, an octagonal number and a nonagonal number.

The programs for A255916, there is no canonical definition to state claims against.
-/

/-! ## A255916.P637143108951349160

`A104610(gcd(A066285(n+2), A363336(2*(n+1))))`
-/

namespace A255916.P637143108951349160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104610 (Int.gcd (A066285 (n + 2)) (A363336 (2 * (n + 1))))

end

end A255916.P637143108951349160

/-! ## A255916.P5823702618387326391

`A110549(A000045(n)*A055527(n+3))`
-/

namespace A255916.P5823702618387326391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110549 (A000045 n * A055527 (n + 3)).toNat

end

end A255916.P5823702618387326391

/-!
# A255917: Triangular numbers n such that each decimal digit of n is equal to the difference of at least two other digits of n.

The programs for A255917, there is no canonical definition to state claims against.
-/

/-! ## A255917.P4685655417170020986

`∩[A075623(n+1), A255966(n+1)]`
-/

namespace A255917.P4685655417170020986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255917.P4685655417170020986

/-! ## A255917.P5384962315056067680

`∩[A116544(n+1), A255966(n+1)]`
-/

namespace A255917.P5384962315056067680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255917.P5384962315056067680

/-!
# A255919: Gray code of Fibonacci(n).

The programs for A255919, the canonical program `A255919.P10709878845704174550` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255919 has offset 0).

The definition of A255919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255919.P10709878845704174550

`A003188(A000045(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A255919

/-- `A003188(A000045(n))` -/
def P10709878845704174550.Spec : Prop :=
  ∀ n, P10709878845704174550.a n = A255919 n

theorem P10709878845704174550.correct : P10709878845704174550.Spec := by
  intro n
  simp only [A255919]

end A255919

/-! ## A255919.P12681561492979638444

`xor(A000045(n), A004695(n))`
-/

namespace A255919.P12681561492979638444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000045 n) (A004695 n)

end

end A255919.P12681561492979638444

namespace A255919

/-- `xor(A000045(n), A004695(n))` -/
def P12681561492979638444.Spec : Prop :=
  ∀ n, P12681561492979638444.a n = A255919 n

end A255919

/-! ## A255919.P15698369801411828235

`xor(abs(A236191(n)), A004695(n))`
-/

namespace A255919.P15698369801411828235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor |A236191 n| (A004695 n)

end

end A255919.P15698369801411828235

namespace A255919

/-- `xor(abs(A236191(n)), A004695(n))` -/
def P15698369801411828235.Spec : Prop :=
  ∀ n, P15698369801411828235.a n = A255919 n

end A255919

/-! ## A255919.P9212780245356202208

`xor(A004695(n), A212804(n+1))`
-/

namespace A255919.P9212780245356202208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004695 n) (A212804 (n + 1))

end

end A255919.P9212780245356202208

namespace A255919

/-- `xor(A004695(n), A212804(n+1))` -/
def P9212780245356202208.Spec : Prop :=
  ∀ n, P9212780245356202208.a n = A255919 n

end A255919

/-! ## A255919.P4272734485357791238

`xor(A001611(n)-1, A004695(n))`
-/

namespace A255919.P4272734485357791238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001611 n - 1) (A004695 n)

end

end A255919.P4272734485357791238

namespace A255919

/-- `xor(A001611(n)-1, A004695(n))` -/
def P4272734485357791238.Spec : Prop :=
  ∀ n, P4272734485357791238.a n = A255919 n

end A255919

/-!
# A255921: Bases b for which no primes p with p < b exist such that p is a base-b Wieferich prime.

The programs for A255921, there is no canonical definition to state claims against.
-/

/-! ## A255921.P8504275158117073370

`lt[A255920(n+2), 1]+2`
-/

namespace A255921.P8504275158117073370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255920 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A255921.P8504275158117073370

/-! ## A255921.P8357919039371276487

`eq[0, 2-a(A255920(n))]` with `a(0)=2, a(1)=3`
-/

namespace A255921.P8357919039371276487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  2 - f2 (A255920 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255921.P8357919039371276487

/-! ## A255921.P7538482879649312433

`eq[2, A005843(a(A255920(n)))]` with `a(0)=1, a(1)=3`
-/

namespace A255921.P7538482879649312433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  A005843 (f2 (A255920 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255921.P7538482879649312433

/-! ## A255921.P14193907735244411496

`eq[2, A164874(a(A255920(n)))]` with `a(0)=1, a(1)=5`
-/

namespace A255921.P14193907735244411496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f2 =>
  A164874 (f2 (A255920 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255921.P14193907735244411496

/-! ## A255921.P8309080241776225361

`eq[2, A000045(a(A255920(n)))]` with `a(0)=3, a(1)=5`
-/

namespace A255921.P8309080241776225361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n f2 =>
  A000045 (f2 (A255920 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255921.P8309080241776225361

/-! ## A255921.P5359519752110831000

`eq[A162296(n+1), A255920(n+2)]+2`
-/

namespace A255921.P5359519752110831000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255920 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A255921.P5359519752110831000

/-! ## A255921.P1414695524059678457

`eq[A255920(A233583(n+1))+n, A233583(n+1)]`
-/

namespace A255921.P1414695524059678457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255920 (A233583 (n + 1)).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255921.P1414695524059678457

/-!
# A255922: Bases b for which exactly one Wieferich prime p with p < b exists such that p is a base-b Wieferich prime.

The programs for A255922, there is no canonical definition to state claims against.
-/

/-! ## A255922.P16051021922221909423

`eq[1, A255920(n+2)]+2`
-/

namespace A255922.P16051021922221909423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255920 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A255922.P16051021922221909423

/-! ## A255922.P16800308961948201199

`eq[2, A005843(a(A255920(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A255922.P16800308961948201199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A005843 (f2 (A255920 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255922.P16800308961948201199

/-! ## A255922.P11709090543029053313

`eq[2, A255921(a(A255920(n)))]` with `a(0)=4, a(1)=1`
-/

namespace A255922.P11709090543029053313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  A255921 (f2 (A255920 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255922.P11709090543029053313

/-! ## A255922.P17701005774136421462

`eq[2, A164874(a(A255920(n)))]` with `a(0)=5, a(1)=1`
-/

namespace A255922.P17701005774136421462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 1] fun n f2 =>
  A164874 (f2 (A255920 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255922.P17701005774136421462

/-! ## A255922.P15189348092873487747

`record[A273786(n+1)/A255920(A273786(n+1))]`
-/

namespace A255922.P15189348092873487747
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273786 (n + 1) : ℚ) / (A255920 (A273786 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255922.P15189348092873487747

/-! ## A255922.P277437841613587956

`eq[1, A255920(A233583(n+1))]`
-/

namespace A255922.P277437841613587956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255920 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255922.P277437841613587956

/-!
# A255923: Bases b for which exactly two Wieferich primes p with p < b exist such that p is a base-b Wieferich prime.

The programs for A255923, there is no canonical definition to state claims against.
-/

/-! ## A255923.P7724863170038978526

`eq[2, A255920(n+2)]+2`
-/

namespace A255923.P7724863170038978526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255920 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A255923.P7724863170038978526

/-! ## A255923.P9547073107031545230

`eq[2, A005843(a(A255920(n)))]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A255923.P9547073107031545230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  A005843 (f2 (A255920 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255923.P9547073107031545230

/-! ## A255923.P4453838896138628809

`eq[2, A000005(a(A255920(n)))]` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A255923.P4453838896138628809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n f2 =>
  A000005 (f2 (A255920 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255923.P4453838896138628809

/-! ## A255923.P11794499928981112877

`eq[2, A164874(a(A255920(n)))]` with `a(0)=3, a(1)=3, a(2)=1`
-/

namespace A255923.P11794499928981112877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 1] fun n f2 =>
  A164874 (f2 (A255920 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255923.P11794499928981112877

/-! ## A255923.P7427198438094214188

`eq[2, A000040(a(A255920(n)))]` with `a(0)=3, a(1)=5, a(2)=1`
-/

namespace A255923.P7427198438094214188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 5, 1] fun n f2 =>
  A000040 (f2 (A255920 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255923.P7427198438094214188

/-! ## A255923.P6754580044010246772

`eq[2, A255921(a(A255920(n)))]` with `a(0)=4, a(1)=4, a(2)=1`
-/

namespace A255923.P6754580044010246772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4, 1] fun n f2 =>
  A255921 (f2 (A255920 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255923.P6754580044010246772

/-! ## A255923.P12771664145061829953

`eq[2, A255920(A233583(n+1))]`
-/

namespace A255923.P12771664145061829953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255920 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255923.P12771664145061829953

/-!
# A255924: Bases b for which exactly three Wieferich primes p with p < b exist such that p is a base-b Wieferich prime.

The programs for A255924, there is no canonical definition to state claims against.
-/

/-! ## A255924.P15523297986034721489

`eq[3, A255920(n+2)]+2`
-/

namespace A255924.P15523297986034721489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255920 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A255924.P15523297986034721489

/-! ## A255924.P12743377966122933197

`eq[2, A005843(a(A255920(n)))]` with `a(0)=0, a(1)=0, a(2)=5, a(3)=1`
-/

namespace A255924.P12743377966122933197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 5, 1] fun n f2 =>
  A005843 (f2 (A255920 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255924.P12743377966122933197

/-! ## A255924.P1921481052292936132

`eq[2, A000005(a(A255920(n)))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=5`
-/

namespace A255924.P1921481052292936132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 5] fun n f2 =>
  A000005 (f2 (A255920 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255924.P1921481052292936132

/-! ## A255924.P5207365786193845796

`eq[2, A000040(a(A255920(n)))]` with `a(0)=3, a(1)=4, a(2)=4, a(3)=1`
-/

namespace A255924.P5207365786193845796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 4, 1] fun n f2 =>
  A000040 (f2 (A255920 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255924.P5207365786193845796

/-! ## A255924.P12756622759509066952

`eq[2, A164874(a(A255920(n)))]` with `a(0)=3, a(1)=3, a(2)=5, a(3)=1`
-/

namespace A255924.P12756622759509066952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 5, 1] fun n f2 =>
  A164874 (f2 (A255920 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255924.P12756622759509066952

/-! ## A255924.P13662583392182163381

`eq[2, A255921(a(A255920(n)))]` with `a(0)=4, a(1)=4, a(2)=4, a(3)=1`
-/

namespace A255924.P13662583392182163381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4, 4, 1] fun n f2 =>
  A255921 (f2 (A255920 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255924.P13662583392182163381

/-! ## A255924.P14544313736453614111

`eq[3, A255920(A233583(n+1))]`
-/

namespace A255924.P14544313736453614111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255920 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255924.P14544313736453614111

/-!
# A255925: Bases b for which exactly four Wieferich primes p with p < b exist such that p is a base-b Wieferich prime.

The programs for A255925, there is no canonical definition to state claims against.
-/

/-! ## A255925.P7856508277610827368

`eq[4, A255920(n+2)]+2`
-/

namespace A255925.P7856508277610827368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255920 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A255925.P7856508277610827368

/-! ## A255925.P4685778507402596742

`eq[2, A005843(a(A255920(n)))]` with `a(0)=3, a(1)=3, a(2)=3, a(3)=0, a(4)=1`
-/

namespace A255925.P4685778507402596742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 3, 0, 1] fun n f2 =>
  A005843 (f2 (A255920 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255925.P4685778507402596742

/-! ## A255925.P10816157515145679915

`eq[2, A032302(a(A255920(n)))]` with `a(0)=3, a(1)=3, a(2)=3, a(3)=0, a(4)=1`
-/

namespace A255925.P10816157515145679915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 3, 0, 1] fun n f2 =>
  A032302 (f2 (A255920 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255925.P10816157515145679915

/-! ## A255925.P16657031918322052208

`eq[2, A000040(a(A255920(n)))]` with `a(0)=3, a(1)=3, a(2)=3, a(3)=5, a(4)=1`
-/

namespace A255925.P16657031918322052208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 3, 5, 1] fun n f2 =>
  A000040 (f2 (A255920 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255925.P16657031918322052208

/-! ## A255925.P15042253733612983731

`eq[4, A255920(A233583(n+1))]`
-/

namespace A255925.P15042253733612983731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255920 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255925.P15042253733612983731

/-!
# A255927: a(n) = (3/4) * Sum_{k>=0} (3*k)^n/4^k.

The programs for A255927, there is no canonical definition to state claims against.
-/

/-! ## A255927.P2648749323352238228

`ceil(A228938(n)/2)`
-/

namespace A255927.P2648749323352238228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A228938 n : ℚ) / 2⌉

end

end A255927.P2648749323352238228

/-! ## A255927.P424668534748938421

`A228938(n)/A036453(n+1)`
-/

namespace A255927.P424668534748938421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228938 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A255927.P424668534748938421

/-! ## A255927.P2850895248796845074

`A228938(n)/2*A014963(∑[2*(n+1)])`
-/

namespace A255927.P2850895248796845074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228938 n : ℚ) / 2 * (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A255927.P2850895248796845074

/-! ## A255927.P16473872852759179820

`A228938(n)/A020639(A001316(n))`
-/

namespace A255927.P16473872852759179820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228938 n : ℚ) / (A020639 (A001316 n).toNat : ℚ)

end

end A255927.P16473872852759179820

/-! ## A255927.P2208154114074701861

`A228938(n)/A020639(A008458(n))`
-/

namespace A255927.P2208154114074701861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228938 n : ℚ) / (A020639 (A008458 n).toNat : ℚ)

end

end A255927.P2208154114074701861

/-! ## A255927.P10701173502325062880

`A228938(n)/A020639(A008574(n))`
-/

namespace A255927.P10701173502325062880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228938 n : ℚ) / (A020639 (A008574 n).toNat : ℚ)

end

end A255927.P10701173502325062880

/-! ## A255927.P15877175176426148224

`A228938(n)/A020639(A008579(n))`
-/

namespace A255927.P15877175176426148224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228938 n : ℚ) / (A020639 (A008579 n).toNat : ℚ)

end

end A255927.P15877175176426148224

/-! ## A255927.P1662865662329882601

`A228938(n)/A006530(A062383(n))`
-/

namespace A255927.P1662865662329882601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228938 n : ℚ) / (A006530 (A062383 n).toNat : ℚ)

end

end A255927.P1662865662329882601

/-! ## A255927.P7048410885633178937

`A228938(n)/A000005(A006005(n+1))`
-/

namespace A255927.P7048410885633178937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228938 n : ℚ) / (A000005 (A006005 (n + 1)).toNat : ℚ)

end

end A255927.P7048410885633178937

/-!
# A255928: Expansion of exp( Sum_{n >= 1} A094088(n)*x^n/n ).

The programs for A255928, there is no canonical definition to state claims against.
-/

/-! ## A255928.P1625831519845501631

`A372740(∏[n!])`
-/

namespace A255928.P1625831519845501631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372740 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A255928.P1625831519845501631

/-!
# A255931: a(n) is the numerator of Gamma(n+1/2)^2/(2*n*Pi), the value of an integral with sinh in the denominator.

The programs for A255931, there is no canonical definition to state claims against.
-/

/-! ## A255931.P7640491098222408558

`lcm(n+1, ∏[(2*n+1)²])/(n+1)`
-/

namespace A255931.P7640491098222408558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A255931.P7640491098222408558

/-! ## A255931.P11430249070866415408

`∏[(2*n+1)²]/gcd(n+1, a(n-1))` with `a(0)=1`
-/

namespace A255931.P11430249070866415408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)

end

end A255931.P11430249070866415408

/-! ## A255931.P13237246937884021442

`∏[(2*n+1)²]/A000265(n+1)`
-/

namespace A255931.P13237246937884021442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A000265 (n + 1) : ℚ)

end

end A255931.P13237246937884021442

/-! ## A255931.P10162011811256489572

`A001147(n+1)*A130187(n)`
-/

namespace A255931.P10162011811256489572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (n + 1) * A130187 n

end

end A255931.P10162011811256489572

/-! ## A255931.P1700797411647471680

`A130187(n)²*A000265(n+1)`
-/

namespace A255931.P1700797411647471680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130187 n ^ 2 * A000265 (n + 1)

end

end A255931.P1700797411647471680

/-!
# A255932: a(n) is the denominator of Gamma(n+1/2)^2/(2*n*Pi), the value of an integral with sinh in the denominator.

The programs for A255932, the canonical program `A255932.P1020379480356809158` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255932 has offset 1).

The definition of A255932 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292608, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A255932.P1020379480356809158

`2^A292608(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A255932

/-- `2^A292608(n+1)` -/
def P1020379480356809158.Spec : Prop :=
  ∀ n, P1020379480356809158.a n = (A255932 (n + 1) : ℚ)

end A255932

/-! ## A255932.P12589380403857756732

`2^(2*n+3+val(n+1, 2))`
-/

namespace A255932.P12589380403857756732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (2 * n + 3 + SequenceMachineLib.valuation (n + 1) 2)

end

end A255932.P12589380403857756732

namespace A255932

/-- `2^(2*n+3+val(n+1, 2))` -/
def P12589380403857756732.Spec : Prop :=
  ∀ n, (P12589380403857756732.a n : ℤ) = A255932 (n + 1)

end A255932

/-! ## A255932.P3023537625981035009

`2^(val(n+1, 2)+3+n+n)`
-/

namespace A255932.P3023537625981035009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (SequenceMachineLib.valuation (n + 1) 2 + 3 + n + n)

end

end A255932.P3023537625981035009

namespace A255932

/-- `2^(val(n+1, 2)+3+n+n)` -/
def P3023537625981035009.Spec : Prop :=
  ∀ n, (P3023537625981035009.a n : ℤ) = A255932 (n + 1)

end A255932

/-! ## A255932.P16751656933892615186

`(xor(n, n+1)+1)*4^(n+1)`
-/

namespace A255932.P16751656933892615186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (n + 1) + 1) * 4 ^ (n + 1)

end

end A255932.P16751656933892615186

namespace A255932

/-- `(xor(n, n+1)+1)*4^(n+1)` -/
def P16751656933892615186.Spec : Prop :=
  ∀ n, (P16751656933892615186.a n : ℤ) = A255932 (n + 1)

end A255932

/-! ## A255932.P7243923902986501058

`2*A130188(Δ[n²])`
-/

namespace A255932.P7243923902986501058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130188 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A255932.P7243923902986501058

namespace A255932

/-- `2*A130188(Δ[n²])` -/
def P7243923902986501058.Spec : Prop :=
  ∀ n, P7243923902986501058.a n = A255932 (n + 1)

end A255932

/-! ## A255932.P16333645694089863418

`2^A093050(2*(n+1))`
-/

namespace A255932.P16333645694089863418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A093050 (2 * (n + 1)) : ℤ)

end

end A255932.P16333645694089863418

namespace A255932

/-- `2^A093050(2*(n+1))` -/
def P16333645694089863418.Spec : Prop :=
  ∀ n, P16333645694089863418.a n = (A255932 (n + 1) : ℚ)

end A255932

/-! ## A255932.P6631606356905327852

`A000079(A292608(n+1))`
-/

namespace A255932.P6631606356905327852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A292608 (n + 1)).toNat

end

end A255932.P6631606356905327852

namespace A255932

/-- `A000079(A292608(n+1))` -/
def P6631606356905327852.Spec : Prop :=
  ∀ n, P6631606356905327852.a n = A255932 (n + 1)

end A255932

/-! ## A255932.P15687066926169080305

`A090129(A093052(2*(n+1)))`
-/

namespace A255932.P15687066926169080305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090129 (A093052 (2 * (n + 1))).toNat

end

end A255932.P15687066926169080305

namespace A255932

/-- `A090129(A093052(2*(n+1)))` -/
def P15687066926169080305.Spec : Prop :=
  ∀ n, P15687066926169080305.a n = A255932 (n + 1)

end A255932

/-! ## A255932.P8880708340957269392

`A000302(n)*A037239(n+1)`
-/

namespace A255932.P8880708340957269392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A037239 (n + 1)

end

end A255932.P8880708340957269392

namespace A255932

/-- `A000302(n)*A037239(n+1)` -/
def P8880708340957269392.Spec : Prop :=
  ∀ n, P8880708340957269392.a n = A255932 (n + 1)

end A255932

/-! ## A255932.P3470516303087799297

`A004171(n)*A059159(n+1)`
-/

namespace A255932.P3470516303087799297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n * A059159 (n + 1)

end

end A255932.P3470516303087799297

namespace A255932

/-- `A004171(n)*A059159(n+1)` -/
def P3470516303087799297.Spec : Prop :=
  ∀ n, P3470516303087799297.a n = A255932 (n + 1)

end A255932

/-! ## A255932.P9518399278385079957

`A000079(A090739(n+1)+2*n)`
-/

namespace A255932.P9518399278385079957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A090739 (n + 1) + (2 * n : ℤ)).toNat

end

end A255932.P9518399278385079957

namespace A255932

/-- `A000079(A090739(n+1)+2*n)` -/
def P9518399278385079957.Spec : Prop :=
  ∀ n, P9518399278385079957.a n = A255932 (n + 1)

end A255932

/-! ## A255932.P14026321111177466308

`A004171(n)*A171977(2*(n+1))`
-/

namespace A255932.P14026321111177466308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n * A171977 (2 * (n + 1))

end

end A255932.P14026321111177466308

namespace A255932

/-- `A004171(n)*A171977(2*(n+1))` -/
def P14026321111177466308.Spec : Prop :=
  ∀ n, P14026321111177466308.a n = A255932 (n + 1)

end A255932

/-! ## A255932.P15103231434657727353

`A011782(A090739(n+1)+2*n+1)`
-/

namespace A255932.P15103231434657727353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A090739 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A255932.P15103231434657727353

namespace A255932

/-- `A011782(A090739(n+1)+2*n+1)` -/
def P15103231434657727353.Spec : Prop :=
  ∀ n, P15103231434657727353.a n = A255932 (n + 1)

end A255932

/-! ## A255932.P482532808208411497

`A000302(n+1)*A006519(2*(n+1))`
-/

namespace A255932.P482532808208411497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (n + 1) * A006519 (2 * (n + 1))

end

end A255932.P482532808208411497

namespace A255932

/-- `A000302(n+1)*A006519(2*(n+1))` -/
def P482532808208411497.Spec : Prop :=
  ∀ n, P482532808208411497.a n = A255932 (n + 1)

end A255932

/-! ## A255932.P16163290684996491959

`A006519(n+1)*A171497(2*n+1)`
-/

namespace A255932.P16163290684996491959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A171497 (2 * n + 1)

end

end A255932.P16163290684996491959

namespace A255932

/-- `A006519(n+1)*A171497(2*n+1)` -/
def P16163290684996491959.Spec : Prop :=
  ∀ n, P16163290684996491959.a n = A255932 (n + 1)

end A255932

/-! ## A255932.P12572200591164959381

`A006519(n+1)*A273692(2*n+1)`
-/

namespace A255932.P12572200591164959381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A273692 (2 * n + 1)

end

end A255932.P12572200591164959381

namespace A255932

/-- `A006519(n+1)*A273692(2*n+1)` -/
def P12572200591164959381.Spec : Prop :=
  ∀ n, P12572200591164959381.a n = A255932 (n + 1)

end A255932

/-! ## A255932.P5475071279054659347

`A004734(2*(n+1))*A048896(2*n)`
-/

namespace A255932.P5475071279054659347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004734 (2 * (n + 1)) * A048896 (2 * n)

end

end A255932.P5475071279054659347

namespace A255932

/-- `A004734(2*(n+1))*A048896(2*n)` -/
def P5475071279054659347.Spec : Prop :=
  ∀ n, P5475071279054659347.a n = A255932 (n + 1)

end A255932

/-! ## A255932.P5255337591979210138

`A059159(2*(n+1))*A059991(2*n+1)`
-/

namespace A255932.P5255337591979210138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059159 (2 * (n + 1)) * A059991 (2 * n + 1)

end

end A255932.P5255337591979210138

namespace A255932

/-- `A059159(2*(n+1))*A059991(2*n+1)` -/
def P5255337591979210138.Spec : Prop :=
  ∀ n, P5255337591979210138.a n = A255932 (n + 1)

end A255932

/-! ## A255932.P5083044813325929786

`A000302(n+1)/A046161(n)*A046161(n+1)`
-/

namespace A255932.P5083044813325929786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 (n + 1) : ℚ) / (A046161 n : ℚ) * (A046161 (n + 1) : ℚ)

end

end A255932.P5083044813325929786

namespace A255932

/-- `A000302(n+1)/A046161(n)*A046161(n+1)` -/
def P5083044813325929786.Spec : Prop :=
  ∀ n, P5083044813325929786.a n = (A255932 (n + 1) : ℚ)

end A255932

/-! ## A255932.P9487021529845660506

`A000079(n+1)/A075101(n+1)*A004171(n+1)`
-/

namespace A255932.P9487021529845660506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) : ℚ) / (A075101 (n + 1) : ℚ) * (A004171 (n + 1) : ℚ)

end

end A255932.P9487021529845660506

namespace A255932

/-- `A000079(n+1)/A075101(n+1)*A004171(n+1)` -/
def P9487021529845660506.Spec : Prop :=
  ∀ n, P9487021529845660506.a n = (A255932 (n + 1) : ℚ)

end A255932

/-!
# A255933: a(n) is the largest integer m such that s/(m!-1) is an integer, where s is the sum of all previous terms; a(1)=1.

The programs for A255933, there is no canonical definition to state claims against.
-/

/-! ## A255933.P359101499282642103

`A082091(A004911(n+2)-A297234(n+10))`
-/

namespace A255933.P359101499282642103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082091 (A004911 (n + 2) - A297234 (n + 10)).toNat

end

end A255933.P359101499282642103

/-! ## A255933.P2248935205687913304

`A001221(A029986(2*n+3)+A000290(3*n+2))`
-/

namespace A255933.P2248935205687913304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A029986 (2 * n + 3) + A000290 (3 * n + 2)).toNat

end

end A255933.P2248935205687913304

/-! ## A255933.P12576281454887492682

`A302041(A069352(2*n+3)*A335448(3*(n+1)))`
-/

namespace A255933.P12576281454887492682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302041 (A069352 (2 * n + 3) * A335448 (3 * (n + 1))).toNat

end

end A255933.P12576281454887492682

/-! ## A255933.P355675870376924035

`A275806(lcm(A178715(n+1), A272306(2*(n+1))))`
-/

namespace A255933.P355675870376924035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (Int.lcm (A178715 (n + 1)) (A272306 (2 * (n + 1))))

end

end A255933.P355675870376924035

/-! ## A255933.P13123465525935076841

`gcd(A334821(4*n)-∑[n], a(n-1))+1` with `a(0)=1`
-/

namespace A255933.P13123465525935076841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (A334821 (4 * n) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) (a (n - 1) : ℤ) + 1

end

end A255933.P13123465525935076841

/-!
# A255934: Number of ways to write n as the sum of four unordered generalized octagonal numbers.

The programs for A255934, there is no canonical definition to state claims against.
-/

/-! ## A255934.P4168966521923013878

`A303710(A362834(n)+A215924(n+2))`
-/

namespace A255934.P4168966521923013878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303710 (A362834 n + A215924 (n + 2)).toNat

end

end A255934.P4168966521923013878

/-! ## A255934.P4061238347095848650

`A262626(A058787(n+4)%A354763(3*n+2))`
-/

namespace A255934.P4061238347095848650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262626 (Int.tmod (A058787 (n + 4)) (A354763 (3 * n + 2))).toNat

end

end A255934.P4061238347095848650

/-! ## A255934.P4314767693031073179

`A058061(A163733(n+1)+1)`
-/

namespace A255934.P4314767693031073179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058061 (A163733 (n + 1) + 1).toNat

end

end A255934.P4314767693031073179

/-! ## A255934.P18226307286767549309

`A333806(A006355(n)+1)+1`
-/

namespace A255934.P18226307286767549309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333806 (A006355 n + 1).toNat + 1

end

end A255934.P18226307286767549309

/-! ## A255934.P7516209670351099320

`A333806(A163733(n+1)+1)+1`
-/

namespace A255934.P7516209670351099320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333806 (A163733 (n + 1) + 1).toNat + 1

end

end A255934.P7516209670351099320

/-!
# A255935: Triangle read by rows: a(n) = Pascal's triangle A007318(n) + A197870(n+1).

The programs for A255935, the canonical program `A255935.P3423858100455783659` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255935 has offset 0).

The definition of A255935 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A197870, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A255935.P3423858100455783659

`A007318(n)+A197870(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A255935

/-- `A007318(n)+A197870(n+1)` -/
def P3423858100455783659.Spec : Prop :=
  ∀ n, P3423858100455783659.a n = A255935 n

theorem P3423858100455783659.correct : P3423858100455783659.Spec := by
  intro n
  simp only [A255935]

end A255935

/-! ## A255935.P10768395460775342478

`A007318(n)-Δ[A003056(n)%2]`
-/

namespace A255935.P10768395460775342478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - (f1 (n + 1) - f1 n)

end

end A255935.P10768395460775342478

namespace A255935

/-- `A007318(n)-Δ[A003056(n)%2]` -/
def P10768395460775342478.Spec : Prop :=
  ∀ n, P10768395460775342478.a n = A255935 n

end A255935

/-! ## A255935.P2002259430897341189

`A007318(n)-Δ[A163359(n)%2]`
-/

namespace A255935.P2002259430897341189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163359 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - (f1 (n + 1) - f1 n)

end

end A255935.P2002259430897341189

namespace A255935

/-- `A007318(n)-Δ[A163359(n)%2]` -/
def P2002259430897341189.Spec : Prop :=
  ∀ n, P2002259430897341189.a n = A255935 n

end A255935

/-! ## A255935.P5110496209353225321

`Δ[gcd(2, A093573(n+1))]+A007318(n)`
-/

namespace A255935.P5110496209353225321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A093573 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + A007318 n

end

end A255935.P5110496209353225321

namespace A255935

/-- `Δ[gcd(2, A093573(n+1))]+A007318(n)` -/
def P5110496209353225321.Spec : Prop :=
  ∀ n, P5110496209353225321.a n = A255935 n

end A255935

/-! ## A255935.P4819147783625652795

`A007318(n)-A062157(A127648(n))`
-/

namespace A255935.P4819147783625652795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A062157 (A127648 n).toNat

end

end A255935.P4819147783625652795

namespace A255935

/-- `A007318(n)-A062157(A127648(n))` -/
def P4819147783625652795.Spec : Prop :=
  ∀ n, P4819147783625652795.a n = A255935 n

end A255935

/-! ## A255935.P11780586976874557375

`A007318(n)-Δ[A000034(A003056(n))]`
-/

namespace A255935.P11780586976874557375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - (f1 (n + 1) - f1 n)

end

end A255935.P11780586976874557375

namespace A255935

/-- `A007318(n)-Δ[A000034(A003056(n))]` -/
def P11780586976874557375.Spec : Prop :=
  ∀ n, P11780586976874557375.a n = A255935 n

end A255935

/-! ## A255935.P466751645068364476

`A007318(n)-A026729(n)*A320508(n)`
-/

namespace A255935.P466751645068364476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A026729 n * A320508 n

end

end A255935.P466751645068364476

namespace A255935

/-- `A007318(n)-A026729(n)*A320508(n)` -/
def P466751645068364476.Spec : Prop :=
  ∀ n, P466751645068364476.a n = A255935 n

end A255935

/-! ## A255935.P823018206655285306

`A007318(n)-A109466(n)*A320508(n)`
-/

namespace A255935.P823018206655285306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A109466 n * A320508 n

end

end A255935.P823018206655285306

namespace A255935

/-- `A007318(n)-A109466(n)*A320508(n)` -/
def P823018206655285306.Spec : Prop :=
  ∀ n, P823018206655285306.a n = A255935 n

end A255935

/-! ## A255935.P12480086590686318957

`A007318(n)-A112347(Δ[A003056(n)²])`
-/

namespace A255935.P12480086590686318957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A112347 (f1 (n + 1) - f1 n).toNat

end

end A255935.P12480086590686318957

namespace A255935

/-- `A007318(n)-A112347(Δ[A003056(n)²])` -/
def P12480086590686318957.Spec : Prop :=
  ∀ n, P12480086590686318957.a n = A255935 n

end A255935

/-! ## A255935.P10384534034309332231

`A112465(n+1)+A059260(n)`
-/

namespace A255935.P10384534034309332231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (n + 1) + A059260 n

end

end A255935.P10384534034309332231

namespace A255935

/-- `A112465(n+1)+A059260(n)` -/
def P10384534034309332231.Spec : Prop :=
  ∀ n, P10384534034309332231.a n = A255935 n

end A255935

/-! ## A255935.P10302617619078411849

`A112465(n+1)+abs(A239473(n))`
-/

namespace A255935.P10302617619078411849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (n + 1) + |A239473 n|

end

end A255935.P10302617619078411849

namespace A255935

/-- `A112465(n+1)+abs(A239473(n))` -/
def P10302617619078411849.Spec : Prop :=
  ∀ n, P10302617619078411849.a n = A255935 n

end A255935

/-! ## A255935.P12693006298338147371

`Δ[A057211(n+1)]+A007318(n)`
-/

namespace A255935.P12693006298338147371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A007318 n

end

end A255935.P12693006298338147371

namespace A255935

/-- `Δ[A057211(n+1)]+A007318(n)` -/
def P12693006298338147371.Spec : Prop :=
  ∀ n, P12693006298338147371.a n = A255935 n

end A255935

/-! ## A255935.P3921487094875349089

`Δ[A102363(n)+A057211(n+1)]`
-/

namespace A255935.P3921487094875349089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n + A057211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255935.P3921487094875349089

namespace A255935

/-- `Δ[A102363(n)+A057211(n+1)]` -/
def P3921487094875349089.Spec : Prop :=
  ∀ n, P3921487094875349089.a n = A255935 n

end A255935

/-! ## A255935.P8600117749277950115

`A007318(n)-Δ[A201208(n+1)]`
-/

namespace A255935.P8600117749277950115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - (f1 (n + 1) - f1 n)

end

end A255935.P8600117749277950115

namespace A255935

/-- `A007318(n)-Δ[A201208(n+1)]` -/
def P8600117749277950115.Spec : Prop :=
  ∀ n, P8600117749277950115.a n = A255935 n

end A255935

/-! ## A255935.P9552534023094376786

`Δ[A057211(n+1)]+sqrt(A008459(n))`
-/

namespace A255935.P9552534023094376786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℝ) + Real.sqrt (A008459 n : ℝ)

end

end A255935.P9552534023094376786

namespace A255935

/-- `Δ[A057211(n+1)]+sqrt(A008459(n))` -/
def P9552534023094376786.Spec : Prop :=
  ∀ n, P9552534023094376786.a n = (A255935 n : ℝ)

end A255935

/-! ## A255935.P18258694924426565748

`Δ[and(1, A002024(n+1))]+A007318(n)`
-/

namespace A255935.P18258694924426565748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A002024 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A007318 n

end

end A255935.P18258694924426565748

namespace A255935

/-- `Δ[and(1, A002024(n+1))]+A007318(n)` -/
def P18258694924426565748.Spec : Prop :=
  ∀ n, P18258694924426565748.a n = A255935 n

end A255935

/-! ## A255935.P12844606954036053154

`abs(A091917(A038722(n+2)))`
-/

namespace A255935.P12844606954036053154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A091917 (A038722 (n + 2)).toNat|

end

end A255935.P12844606954036053154

namespace A255935

/-- `abs(A091917(A038722(n+2)))` -/
def P12844606954036053154.Spec : Prop :=
  ∀ n, P12844606954036053154.a n = A255935 n

end A255935

/-! ## A255935.P7500670123181035129

`A112465(n+1)+A112465(comp[∑[n]])`
-/

namespace A255935.P7500670123181035129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (n + 1) + A112465 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A255935.P7500670123181035129

namespace A255935

/-- `A112465(n+1)+A112465(comp[∑[n]])` -/
def P7500670123181035129.Spec : Prop :=
  ∀ n, P7500670123181035129.a n = A255935 n

end A255935

/-! ## A255935.P4289968392975290675

`A007318(n)+A008297(n+1)%2`
-/

namespace A255935.P4289968392975290675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + Int.tmod (A008297 (n + 1)) 2

end

end A255935.P4289968392975290675

namespace A255935

/-- `A007318(n)+A008297(n+1)%2` -/
def P4289968392975290675.Spec : Prop :=
  ∀ n, P4289968392975290675.a n = A255935 n

end A255935

/-! ## A255935.P9544146618818206653

`A007318(n)-A136572(n)/A021012(n)`
-/

namespace A255935.P9544146618818206653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) - (A136572 n : ℚ) / (A021012 n : ℚ)

end

end A255935.P9544146618818206653

namespace A255935

/-- `A007318(n)-A136572(n)/A021012(n)` -/
def P9544146618818206653.Spec : Prop :=
  ∀ n, P9544146618818206653.a n = (A255935 n : ℚ)

end A255935

/-!
# A255936: Number of n X n binary matrices having a contiguous 2 by 2 submatrix whose every element is 1.

The programs for A255936, there is no canonical definition to state claims against.
-/

/-! ## A255936.P3062281873972484419

`A002416(n)-A139810(n)`
-/

namespace A255936.P3062281873972484419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002416 n - A139810 n

end

end A255936.P3062281873972484419

/-! ## A255936.P9837267053538013641

`2^n²-record[A141510(n)]`
-/

namespace A255936.P9837267053538013641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n ^ 2 : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255936.P9837267053538013641

/-! ## A255936.P12229946861439811986

`abs(A002416(n)-record[A141510(n)])`
-/

namespace A255936.P12229946861439811986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002416 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A255936.P12229946861439811986

/-! ## A255936.P6806124384202565066

`2^n²-A141510(A004277(n)-1)`
-/

namespace A255936.P6806124384202565066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n ^ 2 : ℤ) - A141510 (A004277 n - 1).toNat

end

end A255936.P6806124384202565066

/-! ## A255936.P3488917726313959650

`2^n²-A141510(eq[1, A288196(n)])`
-/

namespace A255936.P3488917726313959650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n ^ 2 : ℤ) - A141510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255936.P3488917726313959650

/-!
# A255937: Number of distinct products of distinct factorials up to n!.

The programs for A255937, there is no canonical definition to state claims against.
-/

/-! ## A255937.P3170542956242740480

`2*A102452(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A255937.P3170542956242740480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * A102452 (a (n - 1)).toNat

end

end A255937.P3170542956242740480

/-! ## A255937.P12247789076658923726

`2*A182113(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A255937.P12247789076658923726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * A182113 (a (n - 1)).toNat

end

end A255937.P12247789076658923726

/-! ## A255937.P3134253212316907511

`A331935(A003065(n))`
-/

namespace A255937.P3134253212316907511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331935 (A003065 n).toNat

end

end A255937.P3134253212316907511

/-! ## A255937.P13819394588099874553

`A331935(A073031(n))`
-/

namespace A255937.P13819394588099874553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331935 (A073031 n).toNat

end

end A255937.P13819394588099874553

/-! ## A255937.P10429136269381602611

`A331935(A079971(n))`
-/

namespace A255937.P10429136269381602611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331935 (A079971 n).toNat

end

end A255937.P10429136269381602611

/-!
# A255938: Langton's ant walk: number of black cells on the infinite grid after the ant moves n times.

The programs for A255938, there is no canonical definition to state claims against.
-/

/-! ## A255938.P3808139333509674550

`A326167(n)-A137189(n)%2`
-/

namespace A255938.P3808139333509674550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326167 n - Int.tmod (A137189 n) 2

end

end A255938.P3808139333509674550

/-! ## A255938.P8266263095058052525

`A326167(n)-floor(atan(A095726(n+1)))`
-/

namespace A255938.P8266263095058052525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326167 n - ⌊Real.arctan (A095726 (n + 1) : ℝ)⌋

end

end A255938.P8266263095058052525

/-! ## A255938.P10994646151792695236

`A326167(n)+A057428(A316729(n))`
-/

namespace A255938.P10994646151792695236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326167 n + A057428 (A316729 n).toNat

end

end A255938.P10994646151792695236

/-! ## A255938.P6925248585038114388

`A326167(n)-A000035(A137189(n))`
-/

namespace A255938.P6925248585038114388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326167 n - A000035 (A137189 n).toNat

end

end A255938.P6925248585038114388

/-! ## A255938.P4542810037910389910

`A326167(n)+A105812(A095726(n+1))`
-/

namespace A255938.P4542810037910389910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326167 n + A105812 (A095726 (n + 1)).toNat

end

end A255938.P4542810037910389910

/-! ## A255938.P8187739495199940259

`A326167(n)+A057428(A240674(n+1))`
-/

namespace A255938.P8187739495199940259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326167 n + A057428 (A240674 (n + 1)).toNat

end

end A255938.P8187739495199940259

/-! ## A255938.P10662392785362171679

`A326167(n)-A004530(A001248(n+1))`
-/

namespace A255938.P10662392785362171679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326167 n - A004530 (A001248 (n + 1)).toNat

end

end A255938.P10662392785362171679

/-! ## A255938.P501526101746938382

`A326167(n)-A035263(A006094(n+1))`
-/

namespace A255938.P501526101746938382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326167 n - A035263 (A006094 (n + 1)).toNat

end

end A255938.P501526101746938382

/-! ## A255938.P4557839168480909935

`A326167(n)-A005171(A084920(n+1))`
-/

namespace A255938.P4557839168480909935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326167 n - A005171 (A084920 (n + 1)).toNat

end

end A255938.P4557839168480909935

/-! ## A255938.P8226492820097090651

`A326167(n)-A000035(A171817(n+1))`
-/

namespace A255938.P8226492820097090651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326167 n - A000035 (A171817 (n + 1)).toNat

end

end A255938.P8226492820097090651

/-!
# A255942: Number of collections of nonempty multisets with a total of n objects of exactly two colors.

The programs for A255942, there is no canonical definition to state claims against.
-/

/-! ## A255942.P12774947937067091912

`A255903(∑[n+2]+3)`
-/

namespace A255942.P12774947937067091912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A255942.P12774947937067091912

/-! ## A255942.P10413878175274559277

`A255903(A134869(n+2)+1)+A063524(n+4)`
-/

namespace A255942.P10413878175274559277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A134869 (n + 2) + 1).toNat + A063524 (n + 4)

end

end A255942.P10413878175274559277

/-!
# A255943: Number of collections of nonempty multisets with a total of n objects of exactly three colors.

The programs for A255943, there is no canonical definition to state claims against.
-/

/-! ## A255943.P7827302925994956644

`A255903(A167614(n+2))`
-/

namespace A255943.P7827302925994956644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A167614 (n + 2)).toNat

end

end A255943.P7827302925994956644

/-! ## A255943.P18072840939325424846

`A255903(A052905(n)+8)`
-/

namespace A255943.P18072840939325424846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A052905 n + 8).toNat

end

end A255943.P18072840939325424846

/-! ## A255943.P1914442423303947794

`A255903(A055999(n)+9)`
-/

namespace A255943.P1914442423303947794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A055999 n + 9).toNat

end

end A255943.P1914442423303947794

/-! ## A255943.P1051471258212127455

`A255903(eq[3, A002262(n)])`
-/

namespace A255943.P1051471258212127455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255943.P1051471258212127455

/-! ## A255943.P1871389803838464860

`A255903(eq[3, A140207(n)])`
-/

namespace A255943.P1871389803838464860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255943.P1871389803838464860

/-! ## A255943.P8665267907662042484

`A255903(A000096(n+2)+4)`
-/

namespace A255943.P8665267907662042484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A000096 (n + 2) + 4).toNat

end

end A255943.P8665267907662042484

/-! ## A255943.P4527787749717893571

`A255903(A166136(n+2)-3)`
-/

namespace A255943.P4527787749717893571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A166136 (n + 2) - 3).toNat

end

end A255943.P4527787749717893571

/-! ## A255943.P18074553849253236015

`A255903(A055998(n+1)+6)`
-/

namespace A255943.P18074553849253236015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A055998 (n + 1) + 6).toNat

end

end A255943.P18074553849253236015

/-! ## A255943.P18046733758970751536

`A255903(eq[4, A002260(n+1)])`
-/

namespace A255943.P18046733758970751536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255943.P18046733758970751536

/-! ## A255943.P15975771224827315490

`A255903(eq[1, A144328(n+1)-2])`
-/

namespace A255943.P15975771224827315490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255943.P15975771224827315490

/-!
# A255944: Number of collections of nonempty multisets with a total of n objects of exactly four colors.

The programs for A255944, there is no canonical definition to state claims against.
-/

/-! ## A255944.P716643999691236987

`A255903(eq[4, A002262(n)])`
-/

namespace A255944.P716643999691236987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255944.P716643999691236987

/-! ## A255944.P2676638481667174783

`A255903(A167614(n+3)+1)`
-/

namespace A255944.P2676638481667174783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A167614 (n + 3) + 1).toNat

end

end A255944.P2676638481667174783

/-! ## A255944.P4080110740144958874

`A255903(A167499(n+3)-1)`
-/

namespace A255944.P4080110740144958874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A167499 (n + 3) - 1).toNat

end

end A255944.P4080110740144958874

/-! ## A255944.P1170885931488172105

`A255903(A000124(n+4)+3)`
-/

namespace A255944.P1170885931488172105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A000124 (n + 4) + 3).toNat

end

end A255944.P1170885931488172105

/-! ## A255944.P11405078775794144267

`A255903(A000096(n+3)+5)`
-/

namespace A255944.P11405078775794144267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A000096 (n + 3) + 5).toNat

end

end A255944.P11405078775794144267

/-! ## A255944.P6846225293683670107

`A255903(A000217(n+4)+4)`
-/

namespace A255944.P6846225293683670107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A000217 (n + 4) + 4).toNat

end

end A255944.P6846225293683670107

/-! ## A255944.P7117471923206787818

`A255903(A055998(n+2)+7)`
-/

namespace A255944.P7117471923206787818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A055998 (n + 2) + 7).toNat

end

end A255944.P7117471923206787818

/-! ## A255944.P73019216082089821

`A255903(A052905(n+1)+9)`
-/

namespace A255944.P73019216082089821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A052905 (n + 1) + 9).toNat

end

end A255944.P73019216082089821

/-! ## A255944.P5056392148115737437

`A255903(eq[2, A144328(n+1)-2])`
-/

namespace A255944.P5056392148115737437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255944.P5056392148115737437

/-! ## A255944.P4380142108749363911

`A255903(eq[2, A144328(n+1)/2])`
-/

namespace A255944.P4380142108749363911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A255944.P4380142108749363911

/-!
# A255945: Number of collections of nonempty multisets with a total of n objects of exactly five colors.

The programs for A255945, there is no canonical definition to state claims against.
-/

/-! ## A255945.P17501259684339053579

`A255903(A167499(n+4))`
-/

namespace A255945.P17501259684339053579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A167499 (n + 4)).toNat

end

end A255945.P17501259684339053579

/-! ## A255945.P2883411565800135077

`A255903(A166136(n+4)-1)`
-/

namespace A255945.P2883411565800135077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A166136 (n + 4) - 1).toNat

end

end A255945.P2883411565800135077

/-! ## A255945.P5073440073250303827

`A255903(A167614(n+4)+2)`
-/

namespace A255945.P5073440073250303827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A167614 (n + 4) + 2).toNat

end

end A255945.P5073440073250303827

/-! ## A255945.P9252065716831415862

`A255903(A000124(n+5)+4)`
-/

namespace A255945.P9252065716831415862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A000124 (n + 5) + 4).toNat

end

end A255945.P9252065716831415862

/-! ## A255945.P6771480198934438458

`A255903(A000096(n+4)+6)`
-/

namespace A255945.P6771480198934438458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A000096 (n + 4) + 6).toNat

end

end A255945.P6771480198934438458

/-! ## A255945.P1231223204273983567

`A255903(A055999(n+2)+11)`
-/

namespace A255945.P1231223204273983567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A055999 (n + 2) + 11).toNat

end

end A255945.P1231223204273983567

/-! ## A255945.P8795987745732524457

`A255903(A005843(n+7)+A000217(n+3))`
-/

namespace A255945.P8795987745732524457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A005843 (n + 7) + A000217 (n + 3)).toNat

end

end A255945.P8795987745732524457

/-!
# A255946: Number of collections of nonempty multisets with a total of n objects of exactly six colors.

The programs for A255946, there is no canonical definition to state claims against.
-/

/-! ## A255946.P7796641782918015200

`A255903(A167499(n+5)+1)`
-/

namespace A255946.P7796641782918015200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A167499 (n + 5) + 1).toNat

end

end A255946.P7796641782918015200

/-! ## A255946.P8987718554941156751

`A255903(A167614(n+5)+3)`
-/

namespace A255946.P8987718554941156751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A167614 (n + 5) + 3).toNat

end

end A255946.P8987718554941156751

/-! ## A255946.P15183123601543664249

`A255903(A000096(n+5)+7)`
-/

namespace A255946.P15183123601543664249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A000096 (n + 5) + 7).toNat

end

end A255946.P15183123601543664249

/-! ## A255946.P16232851233954974781

`A255903(A000217(n+6)+6)`
-/

namespace A255946.P16232851233954974781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A000217 (n + 6) + 6).toNat

end

end A255946.P16232851233954974781

/-! ## A255946.P8710125441447179108

`A255903(A005843(n+8)+A000124(n+4))`
-/

namespace A255946.P8710125441447179108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A005843 (n + 8) + A000124 (n + 4)).toNat

end

end A255946.P8710125441447179108

/-!
# A255947: Number of collections of nonempty multisets with a total of n objects of exactly seven colors.

The programs for A255947, there is no canonical definition to state claims against.
-/

/-! ## A255947.P17280516546648051027

`A255903(eq[7, A002262(n)])`
-/

namespace A255947.P17280516546648051027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255947.P17280516546648051027

/-! ## A255947.P3060378209272470079

`A255903(eq[7, A144328(n+1)])`
-/

namespace A255947.P3060378209272470079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255947.P3060378209272470079

/-! ## A255947.P15971032778083575392

`A255903(eq[8, A002260(n+1)])`
-/

namespace A255947.P15971032778083575392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255947.P15971032778083575392

/-! ## A255947.P9312950468506014246

`A255903(eq[8, A135223(n+1)])`
-/

namespace A255947.P9312950468506014246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255947.P9312950468506014246

/-! ## A255947.P15131244024810537319

`A255903(eq[15, A245093(n+1)])`
-/

namespace A255947.P15131244024810537319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255947.P15131244024810537319

/-!
# A255948: Number of collections of nonempty multisets with a total of n objects of exactly eight colors.

The programs for A255948, there is no canonical definition to state claims against.
-/

/-! ## A255948.P3936668665549821094

`A255903(eq[8, A002262(n)])`
-/

namespace A255948.P3936668665549821094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255948.P3936668665549821094

/-! ## A255948.P1507098593425251450

`A255903(eq[22, A140207(n)])`
-/

namespace A255948.P1507098593425251450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255948.P1507098593425251450

/-! ## A255948.P9509476123239365906

`A255903(eq[8, A144328(n+1)])`
-/

namespace A255948.P9509476123239365906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255948.P9509476123239365906

/-! ## A255948.P11049171121699360477

`A255903(eq[9, A002260(n+1)])`
-/

namespace A255948.P11049171121699360477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255948.P11049171121699360477

/-! ## A255948.P16882608903258736226

`A255903(eq[9, A135223(n+1)])`
-/

namespace A255948.P16882608903258736226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255948.P16882608903258736226

/-!
# A255949: Number of collections of nonempty multisets with a total of n objects of exactly nine colors.

The programs for A255949, there is no canonical definition to state claims against.
-/

/-! ## A255949.P6247177852295372323

`A255903(eq[9, A002262(n)])`
-/

namespace A255949.P6247177852295372323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255949.P6247177852295372323

/-! ## A255949.P5881937343900882111

`A255903(eq[9, A144328(n+1)])`
-/

namespace A255949.P5881937343900882111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255949.P5881937343900882111

/-! ## A255949.P11217451022162557640

`A255903(eq[10, A002260(n+1)])`
-/

namespace A255949.P11217451022162557640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255949.P11217451022162557640

/-! ## A255949.P8519303217776799491

`A255903(eq[10, A134868(n+1)])`
-/

namespace A255949.P8519303217776799491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255949.P8519303217776799491

/-! ## A255949.P1297854179504401415

`A255903(A000217(n+10)-(n+1))`
-/

namespace A255949.P1297854179504401415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A000217 (n + 10) - (n + 1 : ℤ)).toNat

end

end A255949.P1297854179504401415

/-!
# A255950: Number of collections of nonempty multisets with a total of n objects of exactly ten colors.

The programs for A255950, there is no canonical definition to state claims against.
-/

/-! ## A255950.P2770842072979533926

`A255903(eq[10, A002262(n)])`
-/

namespace A255950.P2770842072979533926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255950.P2770842072979533926

/-! ## A255950.P4623565905695142778

`A255903(A000217(n+10)+10)`
-/

namespace A255950.P4623565905695142778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A000217 (n + 10) + 10).toNat

end

end A255950.P4623565905695142778

/-! ## A255950.P1650994612535709851

`A255903(eq[10, A144328(n+1)])`
-/

namespace A255950.P1650994612535709851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255950.P1650994612535709851

/-! ## A255950.P11819763484740306689

`A255903(eq[11, A002260(n+1)])`
-/

namespace A255950.P11819763484740306689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255950.P11819763484740306689

/-! ## A255950.P6353000555725451554

`A255903(eq[11, A135223(n+1)])`
-/

namespace A255950.P6353000555725451554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255950.P6353000555725451554

/-! ## A255950.P2334053996023258193

`A255903(eq[21, A158405(n+1)])`
-/

namespace A255950.P2334053996023258193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255950.P2334053996023258193

/-!
# A255951: Number of collections of nonempty multisets with a total of n+1 objects of exactly n colors.

The programs for A255951, there is no canonical definition to state claims against.
-/

/-! ## A255951.P11948524890517244006

`n*A035098(n+1)`
-/

namespace A255951.P11948524890517244006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A035098 (n + 1)

end

end A255951.P11948524890517244006

/-! ## A255951.P11557298558731256833

`n*A346500(∑[n+1]+1)`
-/

namespace A255951.P11557298558731256833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A346500 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255951.P11557298558731256833

/-! ## A255951.P866765851118996191

`n*A346426(∑[n+2]-abs(1-n))`
-/

namespace A255951.P866765851118996191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A346426 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - |1 - (n : ℤ)|).toNat

end

end A255951.P866765851118996191

/-! ## A255951.P12067799520677239471

`n*record[A346500(n)/A131843(n)]`
-/

namespace A255951.P12067799520677239471
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346500 n : ℚ) / (A131843 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255951.P12067799520677239471

/-! ## A255951.P10739583642553976333

`n*record[gcd(A117316(n), A346500(n))]`
-/

namespace A255951.P10739583642553976333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117316 n) (A346500 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255951.P10739583642553976333

/-! ## A255951.P17273788065962898678

`n*gcd(floor(1/(n+1)), A346500(A034856(n+1)))`
-/

namespace A255951.P17273788065962898678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A346500 (A034856 (n + 1)).toNat)

end

end A255951.P17273788065962898678

/-! ## A255951.P6214110064772327743

`A255903(∑[n+2]-1)`
-/

namespace A255951.P6214110064772327743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A255951.P6214110064772327743

/-!
# A255952: Number of collections of nonempty multisets with a total of n+2 objects of exactly n colors.

The programs for A255952, there is no canonical definition to state claims against.
-/

/-! ## A255952.P18441983838265669543

`A255903(∑[n+3])`
-/

namespace A255952.P18441983838265669543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255952.P18441983838265669543

/-! ## A255952.P10791263463009286456

`record[A255903(A027379(A008611(n)))]`
-/

namespace A255952.P10791263463009286456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A027379 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255952.P10791263463009286456

/-! ## A255952.P7035300335518038006

`record[A255903(A027379(A106249(n)))]`
-/

namespace A255952.P7035300335518038006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A027379 (A106249 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255952.P7035300335518038006

/-! ## A255952.P9890708731403804782

`record[A255903(A027379(A226005(n)))]`
-/

namespace A255952.P9890708731403804782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A027379 (A226005 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255952.P9890708731403804782

/-! ## A255952.P13880472253700004158

`record[A255903(A027379(A263111(n)))]`
-/

namespace A255952.P13880472253700004158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A027379 (A263111 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255952.P13880472253700004158

/-! ## A255952.P7918693785906820663

`record[A255903(A027379(A328396(n)))]`
-/

namespace A255952.P7918693785906820663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A027379 (A328396 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255952.P7918693785906820663

/-! ## A255952.P19177783406553514

`record[A255903(A027379(A055396(n+1)))]`
-/

namespace A255952.P19177783406553514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A027379 (A055396 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255952.P19177783406553514

/-! ## A255952.P7701535475333547587

`record[A255903(A027379(A061395(n+1)))]`
-/

namespace A255952.P7701535475333547587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A027379 (A061395 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255952.P7701535475333547587

/-! ## A255952.P7549263668102803820

`record[A255903(A027379(A094727(n+1)))]`
-/

namespace A255952.P7549263668102803820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A027379 (A094727 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255952.P7549263668102803820

/-! ## A255952.P3728332492986897188

`record[A255903(A055998(n))]-A000007(n)`
-/

namespace A255952.P3728332492986897188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A055998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000007 n

end

end A255952.P3728332492986897188

/-!
# A255953: Number of collections of nonempty multisets with a total of n+3 objects of exactly n colors.

The programs for A255953, there is no canonical definition to state claims against.
-/

/-! ## A255953.P16043445072081188307

`A255903(∑[n+3]+n+3)`
-/

namespace A255953.P16043445072081188307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A255953.P16043445072081188307

/-! ## A255953.P828450054958681741

`char[A257684(n)]*A255903(A060577(n+3))`
-/

namespace A255953.P828450054958681741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A255903 (A060577 (n + 3)).toNat

end

end A255953.P828450054958681741

/-! ## A255953.P9510372430471588278

`char[A330396(n)]*A255903(A060577(n+3))`
-/

namespace A255953.P9510372430471588278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330396 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A255903 (A060577 (n + 3)).toNat

end

end A255953.P9510372430471588278

/-! ## A255953.P13260352480364059040

`char[A056538(n+1)]*A255903(A060577(n+3))`
-/

namespace A255953.P13260352480364059040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A255903 (A060577 (n + 3)).toNat

end

end A255953.P13260352480364059040

/-! ## A255953.P1110277363185442380

`char[A109814(n+1)]*A255903(A060577(n+3))`
-/

namespace A255953.P1110277363185442380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109814 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A255903 (A060577 (n + 3)).toNat

end

end A255953.P1110277363185442380

/-! ## A255953.P2520570591681805937

`char[A378251(n+1)]*A255903(A060577(n+3))`
-/

namespace A255953.P2520570591681805937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378251 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A255903 (A060577 (n + 3)).toNat

end

end A255953.P2520570591681805937

/-! ## A255953.P16527852123304486567

`A255903(A060577(n+3))+char[A075600(n+4)]`
-/

namespace A255953.P16527852123304486567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075600 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A060577 (n + 3)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A255953.P16527852123304486567

/-! ## A255953.P16749197788219472426

`A255903(A060577(n+3))+char[A171470(2*n+1)]`
-/

namespace A255953.P16749197788219472426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171470 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A060577 (n + 3)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A255953.P16749197788219472426

/-! ## A255953.P12091635253830453486

`A255903(A060577(n+3))+char[A152746(2*(n+2))]`
-/

namespace A255953.P12091635253830453486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152746 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A060577 (n + 3)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A255953.P12091635253830453486

/-! ## A255953.P18422652352202793318

`A255903(A060577(n+3))+char[A163276(3*n+2)]`
-/

namespace A255953.P18422652352202793318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163276 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A060577 (n + 3)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A255953.P18422652352202793318

/-!
# A255954: Number of collections of nonempty multisets with a total of n+4 objects of exactly n colors.

The programs for A255954, there is no canonical definition to state claims against.
-/

/-! ## A255954.P1639965589965204039

`A255903(A052905(n+2))`
-/

namespace A255954.P1639965589965204039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A052905 (n + 2)).toNat

end

end A255954.P1639965589965204039

/-! ## A255954.P6039799829731494044

`A255903(eq[4, A025581(n)])`
-/

namespace A255954.P6039799829731494044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255954.P6039799829731494044

/-! ## A255954.P6621930858424545528

`A255903(A046691(n+3)-1)`
-/

namespace A255954.P6621930858424545528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A046691 (n + 3) - 1).toNat

end

end A255954.P6621930858424545528

/-! ## A255954.P2851285461092256063

`A255903(A000217(n+5)-5)`
-/

namespace A255954.P2851285461092256063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A000217 (n + 5) - 5).toNat

end

end A255954.P2851285461092256063

/-! ## A255954.P9642898924577551434

`A255903(eq[5, A004736(n+1)])`
-/

namespace A255954.P9642898924577551434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255954.P9642898924577551434

/-! ## A255954.P2722201580983536459

`A255903(A167614(n+2)+2*n+1)`
-/

namespace A255954.P2722201580983536459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A167614 (n + 2) + (2 * n + 1 : ℤ)).toNat

end

end A255954.P2722201580983536459

/-!
# A255955: Number of collections of nonempty multisets with a total of n+5 objects of exactly n colors.

The programs for A255955, there is no canonical definition to state claims against.
-/

/-! ## A255955.P2854635656944323797

`A255903(A055999(n+3))`
-/

namespace A255955.P2854635656944323797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A055999 (n + 3)).toNat

end

end A255955.P2854635656944323797

/-! ## A255955.P6685232115418828789

`A255903(eq[5, A025581(n)])`
-/

namespace A255955.P6685232115418828789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255955.P6685232115418828789

/-! ## A255955.P17263645588211995280

`A255903(Δ[A023551(n+1)])`
-/

namespace A255955.P17263645588211995280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (f1 (n + 1) - f1 n).toNat

end

end A255955.P17263645588211995280

/-! ## A255955.P12055088817067585547

`A255903(A000217(n+6)-6)`
-/

namespace A255955.P12055088817067585547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A000217 (n + 6) - 6).toNat

end

end A255955.P12055088817067585547

/-! ## A255955.P16346879874076560715

`A255903(eq[36, A055461(n+1)])`
-/

namespace A255955.P16346879874076560715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255955.P16346879874076560715

/-! ## A255955.P10481791797916287520

`A255903(A000124(n+5)+n-1)`
-/

namespace A255955.P10481791797916287520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A000124 (n + 5) + ((n : ℤ) - 1)).toNat

end

end A255955.P10481791797916287520

/-! ## A255955.P18387449830961305039

`A255903(A046691(n+3)+n+4)`
-/

namespace A255955.P18387449830961305039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A046691 (n + 3) + (n + 4 : ℤ)).toNat

end

end A255955.P18387449830961305039

/-! ## A255955.P9291214166087880930

`A255903(A167499(n+3)+2*n)`
-/

namespace A255955.P9291214166087880930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A167499 (n + 3) + (2 * n : ℤ)).toNat

end

end A255955.P9291214166087880930

/-! ## A255955.P10478286987399689323

`A255903(A005843(n+2)+A000124(n+4))`
-/

namespace A255955.P10478286987399689323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A005843 (n + 2) + A000124 (n + 4)).toNat

end

end A255955.P10478286987399689323

/-!
# A255956: Number of collections of nonempty multisets with a total of n+6 objects of exactly n colors.

The programs for A255956, there is no canonical definition to state claims against.
-/

/-! ## A255956.P13603651905223149119

`A255903(eq[6, A025581(n)])`
-/

namespace A255956.P13603651905223149119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255956.P13603651905223149119

/-! ## A255956.P3380916237618935228

`A255903(eq[7, A193739(n)])`
-/

namespace A255956.P3380916237618935228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255956.P3380916237618935228

/-! ## A255956.P14732585638250327043

`A255903(eq[64, A130321(n)])`
-/

namespace A255956.P14732585638250327043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255956.P14732585638250327043

/-! ## A255956.P1599252924951506368

`A255903(eq[7, A004736(n+1)])`
-/

namespace A255956.P1599252924951506368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255956.P1599252924951506368

/-! ## A255956.P11193832903483985978

`A255903(Δ[A023551(n+2)]-1)`
-/

namespace A255956.P11193832903483985978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (f1 (n + 1) - f1 n - 1).toNat

end

end A255956.P11193832903483985978

/-! ## A255956.P8857454787884816262

`A255903(2*n+A167499(n+4)+1)`
-/

namespace A255956.P8857454787884816262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 ((2 * n : ℤ) + (A167499 (n + 4) + 1)).toNat

end

end A255956.P8857454787884816262

/-!
# A255957: Number of collections of nonempty multisets with a total of n+7 objects of exactly n colors.

The programs for A255957, there is no canonical definition to state claims against.
-/

/-! ## A255957.P13104158299303694562

`A255903(A155212(n+4))`
-/

namespace A255957.P13104158299303694562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A155212 (n + 4)).toNat

end

end A255957.P13104158299303694562

/-! ## A255957.P6618224279984554530

`A255903(eq[7, A025581(n)])`
-/

namespace A255957.P6618224279984554530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255957.P6618224279984554530

/-! ## A255957.P17427329984422198171

`A255903(eq[8, A193739(n)])`
-/

namespace A255957.P17427329984422198171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255957.P17427329984422198171

/-! ## A255957.P12118801634245526984

`A255903(eq[15, A099375(n)])`
-/

namespace A255957.P12118801634245526984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255957.P12118801634245526984

/-! ## A255957.P6064534168537591151

`A255903(A056000(n+4)+2)`
-/

namespace A255957.P6064534168537591151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A056000 (n + 4) + 2).toNat

end

end A255957.P6064534168537591151

/-! ## A255957.P13946624188481157271

`A255903(eq[8, A004736(n+1)])`
-/

namespace A255957.P13946624188481157271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255957.P13946624188481157271

/-!
# A255958: Number of collections of nonempty multisets with a total of n+8 objects of exactly n colors.

The programs for A255958, there is no canonical definition to state claims against.
-/

/-! ## A255958.P2488488063477722140

`A255903(eq[8, A025581(n)])`
-/

namespace A255958.P2488488063477722140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255958.P2488488063477722140

/-! ## A255958.P8681005767682681453

`A255903(eq[9, A193739(n)])`
-/

namespace A255958.P8681005767682681453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255958.P8681005767682681453

/-! ## A255958.P11850203396856955898

`A255903(eq[17, A099375(n)])`
-/

namespace A255958.P11850203396856955898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255958.P11850203396856955898

/-! ## A255958.P14423959341136799770

`A255903(eq[9, A004736(n+1)])`
-/

namespace A255958.P14423959341136799770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255958.P14423959341136799770

/-! ## A255958.P5651982434389828158

`A255903(eq[23, A104887(n+1)])`
-/

namespace A255958.P5651982434389828158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255958.P5651982434389828158

/-!
# A255959: Number of collections of nonempty multisets with a total of n+9 objects of exactly n colors.

The programs for A255959, there is no canonical definition to state claims against.
-/

/-! ## A255959.P10308421643685603766

`A255903(eq[8, A116598(n)])`
-/

namespace A255959.P10308421643685603766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255959.P10308421643685603766

/-! ## A255959.P1231363402696400380

`A255903(eq[9, A025581(n)])`
-/

namespace A255959.P1231363402696400380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255959.P1231363402696400380

/-! ## A255959.P8627763849546529508

`A255903(eq[10, A193739(n)])`
-/

namespace A255959.P8627763849546529508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255959.P8627763849546529508

/-! ## A255959.P707280271288835320

`A255903(eq[19, A099375(n)])`
-/

namespace A255959.P707280271288835320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255959.P707280271288835320

/-! ## A255959.P8880004918753368921

`A255903(eq[10, A004736(n+1)])`
-/

namespace A255959.P8880004918753368921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255959.P8880004918753368921

/-!
# A255960: Number of collections of nonempty multisets with a total of n+10 objects of exactly n colors.

The programs for A255960, there is no canonical definition to state claims against.
-/

/-! ## A255960.P16579001806031507783

`A255903(eq[10, A025581(n)])`
-/

namespace A255960.P16579001806031507783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255960.P16579001806031507783

/-! ## A255960.P11536229479940330954

`A255903(eq[11, A193739(n)])`
-/

namespace A255960.P11536229479940330954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255960.P11536229479940330954

/-! ## A255960.P5091986574383120936

`A255903(eq[21, A099375(n)])`
-/

namespace A255960.P5091986574383120936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255960.P5091986574383120936

/-! ## A255960.P18333619101025310550

`A255903(A000217(n+11)-11)`
-/

namespace A255960.P18333619101025310550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (A000217 (n + 11) - 11).toNat

end

end A255960.P18333619101025310550

/-! ## A255960.P12889911093975858919

`A255903(eq[11, A004736(n+1)])`
-/

namespace A255960.P12889911093975858919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255960.P12889911093975858919

/-!
# A255961: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is Euler transform of (j->j*k).

The programs for A255961, there is no canonical definition to state claims against.
-/

/-! ## A255961.P956892118417502733

`A297328(n)-A055641(A322266(n+1))`
-/

namespace A255961.P956892118417502733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 n - A055641 (A322266 (n + 1)).toNat

end

end A255961.P956892118417502733

/-! ## A255961.P7197752326386962329

`A297328(n)-A125005(A326323(n))`
-/

namespace A255961.P7197752326386962329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 n - A125005 (A326323 n).toNat

end

end A255961.P7197752326386962329

/-! ## A255961.P4604919754101459719

`A297328(n)-A031346(A028326(A293525(n)))`
-/

namespace A255961.P4604919754101459719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 n - A031346 (A028326 (A293525 n).toNat).toNat

end

end A255961.P4604919754101459719

/-! ## A255961.P12756480327497585042

`A297328(n)-A089311(A094544(n))`
-/

namespace A255961.P12756480327497585042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 n - A089311 (A094544 n).toNat

end

end A255961.P12756480327497585042

/-! ## A255961.P9870503006784147469

`A297328(n)-A025469(A163661(n))`
-/

namespace A255961.P9870503006784147469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 n - A025469 (A163661 n).toNat

end

end A255961.P9870503006784147469

/-!
# A255962: Number of repeating products of any subset of {1, 2, 3, ..., n}.

The programs for A255962, there is no canonical definition to state claims against.
-/

/-! ## A255962.P16046167377537334503

`∑[2^n]-A060957(n+1)`
-/

namespace A255962.P16046167377537334503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A060957 (n + 1)

end

end A255962.P16046167377537334503

/-! ## A255962.P11703268800988412212

`xor(A060957(n+1), A126646(n))`
-/

namespace A255962.P11703268800988412212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060957 (n + 1)) (A126646 n)

end

end A255962.P11703268800988412212

/-! ## A255962.P18158175948696196210

`xor(A000225(n+1), A060957(n+1))`
-/

namespace A255962.P18158175948696196210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 (n + 1)) (A060957 (n + 1))

end

end A255962.P18158175948696196210

/-! ## A255962.P9176474261811649776

`A000051(n+1)-A060957(n+1)-2`
-/

namespace A255962.P9176474261811649776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) - A060957 (n + 1) - 2

end

end A255962.P9176474261811649776

/-!
# A255964: Five-digit distinct-digit zeroless primes.

The programs for A255964, there is no canonical definition to state claims against.
-/

/-! ## A255964.P4602351923693559592

`∩[A038618(n+1), A074671(n+1)]`
-/

namespace A255964.P4602351923693559592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255964.P4602351923693559592

/-!
# A255965: Expansion of Product_{k>=1} 1/(1-x^k)^binomial(k+6,7).

The programs for A255965, there is no canonical definition to state claims against.
-/

/-! ## A255965.P10785708900816786927

`A293551(A051936(n+9))`
-/

namespace A255965.P10785708900816786927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A051936 (n + 9)).toNat

end

end A255965.P10785708900816786927

/-! ## A255965.P7454972507158461967

`A293551(A055999(n+6)-3)`
-/

namespace A255965.P7454972507158461967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A055999 (n + 6) - 3).toNat

end

end A255965.P7454972507158461967

/-! ## A255965.P2114342147012105911

`A293551(A000217(n+9)-9)`
-/

namespace A255965.P2114342147012105911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A000217 (n + 9) - 9).toNat

end

end A255965.P2114342147012105911

/-! ## A255965.P9474926291779383172

`A293551(A020715(n)²-A027379(n))`
-/

namespace A255965.P9474926291779383172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A020715 n ^ 2 - A027379 n).toNat

end

end A255965.P9474926291779383172

/-! ## A255965.P16354232883489923818

`A293551(A027379(n+3)+A008574(n+6))`
-/

namespace A255965.P16354232883489923818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A027379 (n + 3) + A008574 (n + 6)).toNat

end

end A255965.P16354232883489923818

/-! ## A255965.P7972918682586091015

`A293551(A133263(n+7)+A004277(n+3))`
-/

namespace A255965.P7972918682586091015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A133263 (n + 7) + A004277 (n + 3)).toNat

end

end A255965.P7972918682586091015

/-!
# A255966: Numbers n such that each decimal digit of n is equal to the difference of at least two other digits of n.

The programs for A255966, there is no canonical definition to state claims against.
-/

/-! ## A255966.P9859761619208776024

`∩[A261021(n+1), A342142(n+1)]`
-/

namespace A255966.P9859761619208776024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255966.P9859761619208776024

/-! ## A255966.P3361289357018905938

`A352438(A117142(n+1)+9)`
-/

namespace A255966.P3361289357018905938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352438 (A117142 (n + 1) + 9).toNat

end

end A255966.P3361289357018905938

/-! ## A255966.P10621517357611718895

`A352438(eq[1, A007318(n+1)]+10)`
-/

namespace A255966.P10621517357611718895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352438 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10)

end

end A255966.P10621517357611718895

/-! ## A255966.P18321849688943196394

`∩[A233345(n+1), A352438(n+1)]`
-/

namespace A255966.P18321849688943196394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255966.P18321849688943196394

/-! ## A255966.P7307331653081083869

`∩[A261021(n+1), A352438(n+1)]`
-/

namespace A255966.P7307331653081083869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255966.P7307331653081083869

/-!
# A255967: Odd numbers m that are neither of the form p + 2^k nor of the form p - 2^k with 2^k < m, k >= 1, and p prime.

The programs for A255967, there is no canonical definition to state claims against.
-/

/-! ## A255967.P4399965192853809553

`A153352(A029804(a(floor(n/5))+n))` with `a(0)=1`
-/

namespace A255967.P4399965192853809553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A153352 (A029804 (a ⌊(n : ℚ) / 5⌋.toNat + (n : ℤ)).toNat).toNat

end

end A255967.P4399965192853809553

/-!
# A255969: E.g.f.: 1/Product_{k>=1} (1-x^k)^(x^k).

The programs for A255969, there is no canonical definition to state claims against.
-/

/-! ## A255969.P15345883701153483232

`A004525(A356588(n)+A356565(n))/A303758(n+1)`
-/

namespace A255969.P15345883701153483232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004525 (A356588 n + A356565 n).toNat : ℚ) / (A303758 (n + 1) : ℚ)

end

end A255969.P15345883701153483232

/-!
# A255970: Number T(n,k) of partitions of n into parts of exactly k sorts; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A255970, there is no canonical definition to state claims against.
-/

/-! ## A255970.P2205266518351839932

`A233543(n)*A256130(n)`
-/

namespace A255970.P2205266518351839932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A256130 n

end

end A255970.P2205266518351839932

/-! ## A255970.P2896737539775037966

`A002262(n)!*A256130(n)`
-/

namespace A255970.P2896737539775037966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A256130 n

end

end A255970.P2896737539775037966

/-! ## A255970.P13784745579929923000

`A144328(n+1)!*A256130(n)`
-/

namespace A255970.P13784745579929923000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A144328 (n + 1)).toNat : ℤ) * A256130 n

end

end A255970.P13784745579929923000

/-! ## A255970.P11263614899515161726

`A119502(A061579(n))*A256130(n)`
-/

namespace A255970.P11263614899515161726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 (A061579 n).toNat * A256130 n

end

end A255970.P11263614899515161726

/-! ## A255970.P16395919789040090171

`A256130(n)*A265312(A245300(n))`
-/

namespace A255970.P16395919789040090171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 n * A265312 (A245300 n).toNat

end

end A255970.P16395919789040090171

/-! ## A255970.P16458090321081471559

`A256130(n)*A265312(A292564(n))`
-/

namespace A255970.P16458090321081471559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 n * A265312 (A292564 n).toNat

end

end A255970.P16458090321081471559

/-! ## A255970.P6951100259481829017

`A001222(A059268(n))!*A256130(n)`
-/

namespace A255970.P6951100259481829017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001222 (A059268 n).toNat).toNat : ℤ) * A256130 n

end

end A255970.P6951100259481829017

/-! ## A255970.P12317955144909872592

`A112624(A059268(n))*A256130(n)`
-/

namespace A255970.P12317955144909872592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A059268 n).toNat * A256130 n

end

end A255970.P12317955144909872592

/-!
# A255971: Number of terms in A255967 less than 10^n.

The programs for A255971, there is no canonical definition to state claims against.
-/

/-! ## A255971.P11305175677338085634

`abs(Δ[A319778(floor((n/2)²))])`
-/

namespace A255971.P11305175677338085634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319778 ⌊((n : ℚ) / 2) ^ 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A255971.P11305175677338085634

/-! ## A255971.P12414105011653576195

`A023109(a(n-1))+1` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A255971.P12414105011653576195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  A023109 (a (n - 1)).toNat + 1

end

end A255971.P12414105011653576195

/-!
# A255973: Trace of the minimal alternating Fibonacci representation of n.

The programs for A255973, there is no canonical definition to state claims against.
-/

/-! ## A255973.P5155967248829440329

`A256655(∑[A256660(n)]-1)`
-/

namespace A255973.P5155967248829440329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256655 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A255973.P5155967248829440329

/-! ## A255973.P5332159732425368583

`A256655(∑[A057427(n)*A256660(n)])`
-/

namespace A255973.P5332159732425368583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A256660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256655 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A255973.P5332159732425368583

/-! ## A255973.P12162185104224132220

`A256655(lt[A308117(2*(n+1)), A256655(n+1)])`
-/

namespace A255973.P12162185104224132220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308117 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256655 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A255973.P12162185104224132220

/-! ## A255973.P7714856708603008202

`A256655(lt[A116378(3*n+2), A256655(n+1)])`
-/

namespace A255973.P7714856708603008202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116378 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256655 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A255973.P7714856708603008202

/-! ## A255973.P14172373820620566194

`A256655(lt[A305830(2*n+1), A256655(n+1)])`
-/

namespace A255973.P14172373820620566194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305830 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256655 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A255973.P14172373820620566194

/-!
# A255975: Rectangular array T(i,j) read by downwards antidiagonals: an interspersion associated with the fractal sequence A022328.

The programs for A255975, there is no canonical definition to state claims against.
-/

/-! ## A255975.P15891030472114475027

`A247714(A061579(n))`
-/

namespace A255975.P15891030472114475027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247714 (A061579 n).toNat

end

end A255975.P15891030472114475027

/-! ## A255975.P12917154689943877154

`A372744(A247714(n))`
-/

namespace A255975.P12917154689943877154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372744 (A247714 n).toNat

end

end A255975.P12917154689943877154

/-! ## A255975.P980499642346190943

`A247714(A114327(n)+n)`
-/

namespace A255975.P980499642346190943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247714 (A114327 n + (n : ℤ)).toNat

end

end A255975.P980499642346190943

/-! ## A255975.P6965826550925071195

`A247714(A038722(n+1)-1)`
-/

namespace A255975.P6965826550925071195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247714 (A038722 (n + 1) - 1).toNat

end

end A255975.P6965826550925071195

/-! ## A255975.P17386114144651855682

`A247714(A093995(n+1)-(n+1))`
-/

namespace A255975.P17386114144651855682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247714 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A255975.P17386114144651855682

/-! ## A255975.P12872032959335746298

`A247714(A002024(n+1)²-(n+1))`
-/

namespace A255975.P12872032959335746298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247714 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A255975.P12872032959335746298

/-! ## A255975.P6278064293193160385

`A247714(A000194(2*(n+1))²-(n+1))`
-/

namespace A255975.P6278064293193160385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247714 (A000194 (2 * (n + 1)) ^ 2 - (n + 1 : ℤ)).toNat

end

end A255975.P6278064293193160385

/-! ## A255975.P9949173274587437646

`A322026(A175840(n))`
-/

namespace A255975.P9949173274587437646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (A175840 n).toNat

end

end A255975.P9949173274587437646

/-!
# A255976: Primes that are the concatenation of two 3-digit primes.

The programs for A255976, there is no canonical definition to state claims against.
-/

/-! ## A255976.P11996201445313749797

`A358421(n+85)`
-/

namespace A255976.P11996201445313749797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358421 (n + 85)

end

end A255976.P11996201445313749797

/-!
# A255977: The number of numbers j+k*r <= n, where r = golden ratio and j and k are nonnegative integers.

The programs for A255977, the canonical program `A255977.P8832656642429450021` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255977 has offset 1).

The definition of A255977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255977.P6039700933128788367

`∑[floor(n/ϕ)+1]`
-/

namespace A255977.P6039700933128788367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255977.P6039700933128788367

namespace A255977

/-- `∑[floor(n/ϕ)+1]` -/
def P6039700933128788367.Spec : Prop :=
  ∀ n, P6039700933128788367.a n = A255977 (n + 1)

end A255977

/-! ## A255977.P8251005485886029131

`ceil(a(n-1)+n/ϕ)` with `a(0)=1`
-/

namespace A255977.P8251005485886029131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) / Real.goldenRatio⌉

end

end A255977.P8251005485886029131

namespace A255977

/-- `ceil(a(n-1)+n/ϕ)` -/
def P8251005485886029131.Spec : Prop :=
  ∀ n, P8251005485886029131.a n = A255977 (n + 1)

end A255977

/-! ## A255977.P8087129342316241221

`floor(a(n-1)+n/ϕ+1)` with `a(0)=1`
-/

namespace A255977.P8087129342316241221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) + ((n : ℝ) / Real.goldenRatio + 1)⌋

end

end A255977.P8087129342316241221

namespace A255977

/-- `floor(a(n-1)+n/ϕ+1)` -/
def P8087129342316241221.Spec : Prop :=
  ∀ n, P8087129342316241221.a n = A255977 (n + 1)

end A255977

/-! ## A255977.P4336379591137853670

`a(n-1)-floor(n*(1-ϕ))` with `a(0)=1`
-/

namespace A255977.P4336379591137853670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ⌊(n : ℝ) * (1 - Real.goldenRatio)⌋

end

end A255977.P4336379591137853670

namespace A255977

/-- `a(n-1)-floor(n*(1-ϕ))` -/
def P4336379591137853670.Spec : Prop :=
  ∀ n, P4336379591137853670.a n = A255977 (n + 1)

end A255977

/-! ## A255977.P8832656642429450021

`∑[n+1-a(a(n-1))]+1` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A255977

/-- `∑[n+1-a(a(n-1))]+1` -/
def P8832656642429450021.Spec : Prop :=
  ∀ n, P8832656642429450021.a n = A255977 (n + 1)

theorem P8832656642429450021.correct : P8832656642429450021.Spec := by
  intro n
  simp only [A255977, Nat.add_sub_cancel]

end A255977

/-! ## A255977.P8313377526070397174

`A283733(n)-∑[n]`
-/

namespace A255977.P8313377526070397174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283733 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A255977.P8313377526070397174

namespace A255977

/-- `A283733(n)-∑[n]` -/
def P8313377526070397174.Spec : Prop :=
  ∀ n, P8313377526070397174.a n = A255977 (n + 1)

end A255977

/-! ## A255977.P11972722402113006558

`A283969(n)-(n²+n)`
-/

namespace A255977.P11972722402113006558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283969 n - (n ^ 2 + n : ℤ)

end

end A255977.P11972722402113006558

namespace A255977

/-- `A283969(n)-(n²+n)` -/
def P11972722402113006558.Spec : Prop :=
  ∀ n, P11972722402113006558.a n = A255977 (n + 1)

end A255977

/-! ## A255977.P3632771832623026403

`A019446(n)+a(n-1)` with `a(0)=1`
-/

namespace A255977.P3632771832623026403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019446 n + a (n - 1)

end

end A255977.P3632771832623026403

namespace A255977

/-- `A019446(n)+a(n-1)` -/
def P3632771832623026403.Spec : Prop :=
  ∀ n, P3632771832623026403.a n = A255977 (n + 1)

end A255977

/-! ## A255977.P4571617025058033918

`∑[∑[A189479(n+1)]]+1`
-/

namespace A255977.P4571617025058033918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189479 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A255977.P4571617025058033918

namespace A255977

/-- `∑[∑[A189479(n+1)]]+1` -/
def P4571617025058033918.Spec : Prop :=
  ∀ n, P4571617025058033918.a n = A255977 (n + 1)

end A255977

/-! ## A255977.P10162118458931169654

`(n+1)²-∑[A195121(n)]`
-/

namespace A255977.P10162118458931169654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255977.P10162118458931169654

namespace A255977

/-- `(n+1)²-∑[A195121(n)]` -/
def P10162118458931169654.Spec : Prop :=
  ∀ n, P10162118458931169654.a n = A255977 (n + 1)

end A255977

/-! ## A255977.P5547098487154521904

`∑[A026356(n+1)]-(n+1)²`
-/

namespace A255977.P5547098487154521904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A255977.P5547098487154521904

namespace A255977

/-- `∑[A026356(n+1)]-(n+1)²` -/
def P5547098487154521904.Spec : Prop :=
  ∀ n, P5547098487154521904.a n = A255977 (n + 1)

end A255977

/-! ## A255977.P4618660121365497230

`A080956(n)+A054347(n)`
-/

namespace A255977.P4618660121365497230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 n + A054347 n

end

end A255977.P4618660121365497230

namespace A255977

/-- `A080956(n)+A054347(n)` -/
def P4618660121365497230.Spec : Prop :=
  ∀ n, P4618660121365497230.a n = A255977 (n + 1)

end A255977

/-! ## A255977.P11975958296099459658

`A258837(n)+A088207(n)`
-/

namespace A255977.P11975958296099459658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258837 n + A088207 n

end

end A255977.P11975958296099459658

namespace A255977

/-- `A258837(n)+A088207(n)` -/
def P11975958296099459658.Spec : Prop :=
  ∀ n, P11975958296099459658.a n = A255977 (n + 1)

end A255977

/-! ## A255977.P5429541102525045591

`A385177(n+1)-A005206(n)`
-/

namespace A255977.P5429541102525045591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385177 (n + 1) - A005206 n

end

end A255977.P5429541102525045591

namespace A255977

/-- `A385177(n+1)-A005206(n)` -/
def P5429541102525045591.Spec : Prop :=
  ∀ n, P5429541102525045591.a n = A255977 (n + 1)

end A255977

/-! ## A255977.P16616228287463260630

`A189663(n+2)+A183136(n+1)`
-/

namespace A255977.P16616228287463260630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (n + 2) + A183136 (n + 1)

end

end A255977.P16616228287463260630

namespace A255977

/-- `A189663(n+2)+A183136(n+1)` -/
def P16616228287463260630.Spec : Prop :=
  ∀ n, P16616228287463260630.a n = A255977 (n + 1)

end A255977

/-! ## A255977.P12302702221530015742

`A385177(n+1)-A060143(n+1)`
-/

namespace A255977.P12302702221530015742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385177 (n + 1) - A060143 (n + 1)

end

end A255977.P12302702221530015742

namespace A255977

/-- `A385177(n+1)-A060143(n+1)` -/
def P12302702221530015742.Spec : Prop :=
  ∀ n, P12302702221530015742.a n = A255977 (n + 1)

end A255977

/-! ## A255977.P1509958184968027080

`A054347(n)+A283733(n)-A088207(n)`
-/

namespace A255977.P1509958184968027080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054347 n + (A283733 n - A088207 n)

end

end A255977.P1509958184968027080

namespace A255977

/-- `A054347(n)+A283733(n)-A088207(n)` -/
def P1509958184968027080.Spec : Prop :=
  ∀ n, P1509958184968027080.a n = A255977 (n + 1)

end A255977

/-! ## A255977.P11351822470145078355

`A183136(n+1)+A019446(A005206(n+1))`
-/

namespace A255977.P11351822470145078355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183136 (n + 1) + A019446 (A005206 (n + 1)).toNat

end

end A255977.P11351822470145078355

namespace A255977

/-- `A183136(n+1)+A019446(A005206(n+1))` -/
def P11351822470145078355.Spec : Prop :=
  ∀ n, P11351822470145078355.a n = A255977 (n + 1)

end A255977

/-! ## A255977.P11265084248129205158

`A379663(n²)+a(n-1)` with `a(0)=1`
-/

namespace A255977.P11265084248129205158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A379663 (n ^ 2) + a (n - 1)

end

end A255977.P11265084248129205158

namespace A255977

/-- `A379663(n²)+a(n-1)` -/
def P11265084248129205158.Spec : Prop :=
  ∀ n, P11265084248129205158.a n = A255977 (n + 1)

end A255977

/-!
# A255978: a(n) = a(n-1) + a(n-2) + (1 + (-1)^(a(n-1) + a(n-2))) with a(0)=0, a(1)=1.

The programs for A255978, the canonical program `A255978.P10061575874709905162` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255978 has offset 0).

The definition of A255978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255978.P10061575874709905162

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4, a(4)=5`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A255978

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` -/
def P10061575874709905162.Spec : Prop :=
  ∀ n, P10061575874709905162.a n = A255978 n

theorem P10061575874709905162.correct : P10061575874709905162.Spec := by
  intro n
  simp only [A255978]

end A255978

/-! ## A255978.P1406961825066267407

`gcd(3, n)-1+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A255978.P1406961825066267407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Nat.gcd 3 n : ℤ) - 1 + (a (n - 1) + a (n - 2))

end

end A255978.P1406961825066267407

namespace A255978

/-- `gcd(3, n)-1+a(n-1)+a(n-2)` -/
def P1406961825066267407.Spec : Prop :=
  ∀ n, P1406961825066267407.a n = A255978 n

end A255978

/-! ## A255978.P2889383766942276218

`A377368(n)-1`
-/

namespace A255978.P2889383766942276218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377368 n - 1

end

end A255978.P2889383766942276218

namespace A255978

/-- `A377368(n)-1` -/
def P2889383766942276218.Spec : Prop :=
  ∀ n, P2889383766942276218.a n = A255978 n

end A255978

/-! ## A255978.P5375219319298917926

`A104221(n)+A000045(n)`
-/

namespace A255978.P5375219319298917926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104221 n + A000045 n

end

end A255978.P5375219319298917926

namespace A255978

/-- `A104221(n)+A000045(n)` -/
def P5375219319298917926.Spec : Prop :=
  ∀ n, P5375219319298917926.a n = A255978 n

end A255978

/-! ## A255978.P4548379846831679907

`A001588(n)-A130196(n)`
-/

namespace A255978.P4548379846831679907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n - A130196 n

end

end A255978.P4548379846831679907

namespace A255978

/-- `A001588(n)-A130196(n)` -/
def P4548379846831679907.Spec : Prop :=
  ∀ n, P4548379846831679907.a n = A255978 n

end A255978

/-! ## A255978.P14773913296125689904

`A253198(n)-A022003(n)`
-/

namespace A255978.P14773913296125689904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253198 n - A022003 n

end

end A255978.P14773913296125689904

namespace A255978

/-- `A253198(n)-A022003(n)` -/
def P14773913296125689904.Spec : Prop :=
  ∀ n, P14773913296125689904.a n = A255978 n

end A255978

/-! ## A255978.P3581750364365157046

`A166012(n)-A117447(n)`
-/

namespace A255978.P3581750364365157046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166012 n - A117447 n

end

end A255978.P3581750364365157046

namespace A255978

/-- `A166012(n)-A117447(n)` -/
def P3581750364365157046.Spec : Prop :=
  ∀ n, P3581750364365157046.a n = A255978 n

end A255978

/-! ## A255978.P7350476009910547601

`A055389(n)-A267208(n)`
-/

namespace A255978.P7350476009910547601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 n - A267208 n

end

end A255978.P7350476009910547601

namespace A255978

/-- `A055389(n)-A267208(n)` -/
def P7350476009910547601.Spec : Prop :=
  ∀ n, P7350476009910547601.a n = A255978 n

end A255978

/-! ## A255978.P7365486350961311476

`xor(A169609(n), A377368(n))`
-/

namespace A255978.P7365486350961311476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A169609 n) (A377368 n)

end

end A255978.P7365486350961311476

namespace A255978

/-- `xor(A169609(n), A377368(n))` -/
def P7365486350961311476.Spec : Prop :=
  ∀ n, P7365486350961311476.a n = A255978 n

end A255978

/-! ## A255978.P6380305508593641014

`A212804(n+1)+A104221(n)`
-/

namespace A255978.P6380305508593641014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + A104221 n

end

end A255978.P6380305508593641014

namespace A255978

/-- `A212804(n+1)+A104221(n)` -/
def P6380305508593641014.Spec : Prop :=
  ∀ n, P6380305508593641014.a n = A255978 n

end A255978

/-! ## A255978.P15467178615975351167

`A001588(n)-(A011655(n)+1)`
-/

namespace A255978.P15467178615975351167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n - (A011655 n + 1)

end

end A255978.P15467178615975351167

namespace A255978

/-- `A001588(n)-(A011655(n)+1)` -/
def P15467178615975351167.Spec : Prop :=
  ∀ n, P15467178615975351167.a n = A255978 n

end A255978

/-! ## A255978.P9585135022579377121

`A000045(n)+A104220(n)-1`
-/

namespace A255978.P9585135022579377121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A104220 n - 1)

end

end A255978.P9585135022579377121

namespace A255978

/-- `A000045(n)+A104220(n)-1` -/
def P9585135022579377121.Spec : Prop :=
  ∀ n, P9585135022579377121.a n = A255978 n

end A255978

/-! ## A255978.P12130819318843122587

`A001611(n)+A104221(n)-1`
-/

namespace A255978.P12130819318843122587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (A104221 n - 1)

end

end A255978.P12130819318843122587

namespace A255978

/-- `A001611(n)+A104221(n)-1` -/
def P12130819318843122587.Spec : Prop :=
  ∀ n, P12130819318843122587.a n = A255978 n

end A255978

/-! ## A255978.P1869633043858617724

`A253198(n)-A079978(n+1)`
-/

namespace A255978.P1869633043858617724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253198 n - A079978 (n + 1)

end

end A255978.P1869633043858617724

namespace A255978

/-- `A253198(n)-A079978(n+1)` -/
def P1869633043858617724.Spec : Prop :=
  ∀ n, P1869633043858617724.a n = A255978 n

end A255978

/-! ## A255978.P5754107531092341204

`A000045(n)+2*A004695(n)`
-/

namespace A255978.P5754107531092341204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + 2 * A004695 n

end

end A255978.P5754107531092341204

namespace A255978

/-- `A000045(n)+2*A004695(n)` -/
def P5754107531092341204.Spec : Prop :=
  ∀ n, P5754107531092341204.a n = A255978 n

end A255978

/-! ## A255978.P10593559425924805800

`A011655(n)+2*A104221(n)`
-/

namespace A255978.P10593559425924805800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n + 2 * A104221 n

end

end A255978.P10593559425924805800

namespace A255978

/-- `A011655(n)+2*A104221(n)` -/
def P10593559425924805800.Spec : Prop :=
  ∀ n, P10593559425924805800.a n = A255978 n

end A255978

/-! ## A255978.P6700078785872323620

`2*A000045(n)-A011655(n)`
-/

namespace A255978.P6700078785872323620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n - A011655 n

end

end A255978.P6700078785872323620

namespace A255978

/-- `2*A000045(n)-A011655(n)` -/
def P6700078785872323620.Spec : Prop :=
  ∀ n, P6700078785872323620.a n = A255978 n

end A255978

/-! ## A255978.P14184584157114767393

`A062114(n)-A112690(2*n)`
-/

namespace A255978.P14184584157114767393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062114 n - A112690 (2 * n)

end

end A255978.P14184584157114767393

namespace A255978

/-- `A062114(n)-A112690(2*n)` -/
def P14184584157114767393.Spec : Prop :=
  ∀ n, P14184584157114767393.a n = A255978 n

end A255978

/-! ## A255978.P6288497921364381219

`A253198(n)-A173857(n+4)`
-/

namespace A255978.P6288497921364381219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253198 n - A173857 (n + 4)

end

end A255978.P6288497921364381219

namespace A255978

/-- `A253198(n)-A173857(n+4)` -/
def P6288497921364381219.Spec : Prop :=
  ∀ n, P6288497921364381219.a n = A255978 n

end A255978

/-! ## A255978.P11139585685951885415

`A065220(n)+A104221(n)+n`
-/

namespace A255978.P11139585685951885415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + (A104221 n + (n : ℤ))

end

end A255978.P11139585685951885415

namespace A255978

/-- `A065220(n)+A104221(n)+n` -/
def P11139585685951885415.Spec : Prop :=
  ∀ n, P11139585685951885415.a n = A255978 n

end A255978

/-!
# A255979: a(n) = smallest nonnegative integer solution z to the system of congruences: z == 0 (mod n), z == 1 (mod A038610(n)) if n is in A033948; or z == 0 (mod n), z == -1 (mod A038610(n)) if n is in A033949.

The programs for A255979, there is no canonical definition to state claims against.
-/

/-! ## A255979.P14275901591657874228

`A157249(n+1)%A038610(n+1)`
-/

namespace A255979.P14275901591657874228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157249 (n + 1)) (A038610 (n + 1))

end

end A255979.P14275901591657874228

/-! ## A255979.P1718280706766655278

`floor((A001783(n+1)+1)/(n+1))%A038610(n+1)`
-/

namespace A255979.P1718280706766655278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A001783 (n + 1) + 1 : ℚ) / (n + 1 : ℚ)⌋ (A038610 (n + 1))

end

end A255979.P1718280706766655278

/-! ## A255979.P716687824662101194

`A000027(A157249(n+1))%A002944(n+1)`
-/

namespace A255979.P716687824662101194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A157249 (n + 1)).toNat) (A002944 (n + 1))

end

end A255979.P716687824662101194

/-! ## A255979.P4845321703247315721

`A157249(n+1)%A274922(A003418(n))`
-/

namespace A255979.P4845321703247315721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157249 (n + 1)) (A274922 (A003418 n).toNat)

end

end A255979.P4845321703247315721

/-!
# A255980: Number of iterations of A067565 required to reach a perfect square.

The programs for A255980, there is no canonical definition to state claims against.
-/

/-! ## A255980.P3102392963259388257

`A033676(n+1)%A297022(A228337(n))`
-/

namespace A255980.P3102392963259388257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033676 (n + 1)) (A297022 (A228337 n).toNat)

end

end A255980.P3102392963259388257

/-! ## A255980.P8315040831145124369

`A060775(n+1)%A265903(A210039(n+1))`
-/

namespace A255980.P8315040831145124369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060775 (n + 1)) (A265903 (A210039 (n + 1)).toNat)

end

end A255980.P8315040831145124369

/-! ## A255980.P7340836768255673097

`A063655(n+1)%or(A025469(n^3), A095163(n+1))`
-/

namespace A255980.P7340836768255673097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063655 (n + 1)) (Int.lor (A025469 (n ^ 3)) (A095163 (n + 1)))

end

end A255980.P7340836768255673097

/-! ## A255980.P13995584505639420629

`A102097(A008605(n+1))%or(A025469(n^3), A095163(n+1))`
-/

namespace A255980.P13995584505639420629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102097 (A008605 (n + 1)).toNat) (Int.lor (A025469 (n ^ 3)) (A095163 (n + 1)))

end

end A255980.P13995584505639420629

/-! ## A255980.P18015443541673255679

`A102097(A085959(n+1))%or(A025469(n^3), A095163(n+1))`
-/

namespace A255980.P18015443541673255679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102097 (A085959 (n + 1)).toNat) (Int.lor (A025469 (n ^ 3)) (A095163 (n + 1)))

end

end A255980.P18015443541673255679

/-!
# A255982: Number T(n,k) of partitions of the k-dimensional hypercube resulting from a sequence of n bisections, each of which splits any part perpendicular to any of the axes, such that each axis is used at least once; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A255982, there is no canonical definition to state claims against.
-/

/-! ## A255982.P664342140910125716

`A256061(n)-A025465(A148014(n))`
-/

namespace A255982.P664342140910125716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256061 n - A025465 (A148014 n).toNat

end

end A255982.P664342140910125716

/-! ## A255982.P7750672596331723125

`A323099(n)-A347519(A000048(n))`
-/

namespace A255982.P7750672596331723125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323099 n - A347519 (A000048 n).toNat

end

end A255982.P7750672596331723125

/-! ## A255982.P17424678826185639657

`A323099(n)-A373973(A000108(n))`
-/

namespace A255982.P17424678826185639657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323099 n - A373973 (A000108 n).toNat

end

end A255982.P17424678826185639657

/-! ## A255982.P13924958079161734940

`A131689(n)*A168256(n)-A025465(A148014(n))`
-/

namespace A255982.P13924958079161734940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 n * A168256 n - A025465 (A148014 n).toNat

end

end A255982.P13924958079161734940

/-! ## A255982.P17005469051070868426

`A233543(n)*A253180(n)-A025465(A148014(n))`
-/

namespace A255982.P17005469051070868426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A253180 n - A025465 (A148014 n).toNat

end

end A255982.P17005469051070868426

/-!
# A255988: Number of length n+4 0..1 arrays with at most one downstep in every 4 consecutive neighbor pairs.

The programs for A255988, the canonical program `A255988.P14670930200303753614` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255988 has offset 1).

The definition of A255988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 397 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255988.P14670930200303753614

`2*a(n-1)-a(n-2)+3*a(n-4)-2*a(n-5)` with `a(0)=26, a(1)=45, a(2)=80, a(3)=144, a(4)=256`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A255988

/-- `2*a(n-1)-a(n-2)+3*a(n-4)-2*a(n-5)` -/
def P14670930200303753614.Spec : Prop :=
  ∀ n, P14670930200303753614.a n = A255988 (n + 1)

theorem P14670930200303753614.correct : P14670930200303753614.Spec := by
  intro n
  simp only [A255988, Nat.add_sub_cancel]

end A255988

/-! ## A255988.P13995876016394312330

`A255992(A055998(n+2))`
-/

namespace A255988.P13995876016394312330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A055998 (n + 2)).toNat

end

end A255988.P13995876016394312330

namespace A255988

/-- `A255992(A055998(n+2))` -/
def P13995876016394312330.Spec : Prop :=
  ∀ n, P13995876016394312330.a n = A255988 (n + 1)

end A255988

/-! ## A255988.P9994149597754673159

`A255992(A052905(n+1)+2)`
-/

namespace A255988.P9994149597754673159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A052905 (n + 1) + 2).toNat

end

end A255988.P9994149597754673159

namespace A255988

/-- `A255992(A052905(n+1)+2)` -/
def P9994149597754673159.Spec : Prop :=
  ∀ n, P9994149597754673159.a n = A255988 (n + 1)

end A255988

/-! ## A255988.P8277542274301736020

`A255992(A000096(n+3)-2)`
-/

namespace A255988.P8277542274301736020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A000096 (n + 3) - 2).toNat

end

end A255988.P8277542274301736020

namespace A255988

/-- `A255992(A000096(n+3)-2)` -/
def P8277542274301736020.Spec : Prop :=
  ∀ n, P8277542274301736020.a n = A255988 (n + 1)

end A255988

/-! ## A255988.P6366610288817008405

`A255992(A000217(n+4)-3)`
-/

namespace A255988.P6366610288817008405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A000217 (n + 4) - 3).toNat

end

end A255988.P6366610288817008405

namespace A255988

/-- `A255992(A000217(n+4)-3)` -/
def P6366610288817008405.Spec : Prop :=
  ∀ n, P6366610288817008405.a n = A255988 (n + 1)

end A255988

/-! ## A255988.P3613007572979600362

`A255992(A000124(n+4)-4)`
-/

namespace A255988.P3613007572979600362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A000124 (n + 4) - 4).toNat

end

end A255988.P3613007572979600362

namespace A255988

/-- `A255992(A000124(n+4)-4)` -/
def P3613007572979600362.Spec : Prop :=
  ∀ n, P3613007572979600362.a n = A255988 (n + 1)

end A255988

/-! ## A255988.P151023094836354850

`A255992(n+1+A167614(n+1)+n)`
-/

namespace A255988.P151023094836354850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 ((n + 1 : ℤ) + (A167614 (n + 1) + (n : ℤ))).toNat

end

end A255988.P151023094836354850

namespace A255988

/-- `A255992(n+1+A167614(n+1)+n)` -/
def P151023094836354850.Spec : Prop :=
  ∀ n, P151023094836354850.a n = A255988 (n + 1)

end A255988

/-! ## A255988.P11773981274754138741

`A255992(A167499(n)+A016777(n))`
-/

namespace A255988.P11773981274754138741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A167499 n + A016777 n).toNat

end

end A255988.P11773981274754138741

namespace A255988

/-- `A255992(A167499(n)+A016777(n))` -/
def P11773981274754138741.Spec : Prop :=
  ∀ n, P11773981274754138741.a n = A255988 (n + 1)

end A255988

/-! ## A255988.P1226761847160484947

`A255992(A167614(n+1)+A005408(n))`
-/

namespace A255988.P1226761847160484947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A167614 (n + 1) + A005408 n).toNat

end

end A255988.P1226761847160484947

namespace A255988

/-- `A255992(A167614(n+1)+A005408(n))` -/
def P1226761847160484947.Spec : Prop :=
  ∀ n, P1226761847160484947.a n = A255988 (n + 1)

end A255988

/-! ## A255988.P981878666200427471

`A255992(A255993(n+1)-A000292(n+1))`
-/

namespace A255988.P981878666200427471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A255993 (n + 1) - A000292 (n + 1)).toNat

end

end A255988.P981878666200427471

namespace A255988

/-- `A255992(A255993(n+1)-A000292(n+1))` -/
def P981878666200427471.Spec : Prop :=
  ∀ n, P981878666200427471.a n = A255988 (n + 1)

end A255988

/-!
# A255989: Number of length n+5 0..1 arrays with at most one downstep in every 5 consecutive neighbor pairs.

The programs for A255989, the canonical program `A255989.P17523633857785032143` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255989 has offset 1).

The definition of A255989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 436 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255989.P17523633857785032143

`2*a(n-1)-a(n-2)+4*a(n-5)-3*a(n-6)` with `a(0)=42, a(1)=68, a(2)=114, a(3)=196, a(4)=337, a(5)=568`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A255989

/-- `2*a(n-1)-a(n-2)+4*a(n-5)-3*a(n-6)` -/
def P17523633857785032143.Spec : Prop :=
  ∀ n, P17523633857785032143.a n = A255989 (n + 1)

theorem P17523633857785032143.correct : P17523633857785032143.Spec := by
  intro n
  simp only [A255989, Nat.add_sub_cancel]

end A255989

/-! ## A255989.P3520337440373271685

`A255992(A046691(n+3))`
-/

namespace A255989.P3520337440373271685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A046691 (n + 3)).toNat

end

end A255989.P3520337440373271685

namespace A255989

/-- `A255992(A046691(n+3))` -/
def P3520337440373271685.Spec : Prop :=
  ∀ n, P3520337440373271685.a n = A255989 (n + 1)

end A255989

/-! ## A255989.P13286979335847415430

`A255992(Δ[A023545(n+1)])`
-/

namespace A255989.P13286979335847415430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (f1 (n + 1) - f1 n).toNat

end

end A255989.P13286979335847415430

namespace A255989

/-- `A255992(Δ[A023545(n+1)])` -/
def P13286979335847415430.Spec : Prop :=
  ∀ n, P13286979335847415430.a n = A255989 (n + 1)

end A255989

/-! ## A255989.P6169512877985321075

`A255992(A052905(n+2)+1)`
-/

namespace A255989.P6169512877985321075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A052905 (n + 2) + 1).toNat

end

end A255989.P6169512877985321075

namespace A255989

/-- `A255992(A052905(n+2)+1)` -/
def P6169512877985321075.Spec : Prop :=
  ∀ n, P6169512877985321075.a n = A255989 (n + 1)

end A255989

/-! ## A255989.P16552274729447869761

`A255992(A000217(n+5)-4)`
-/

namespace A255989.P16552274729447869761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A000217 (n + 5) - 4).toNat

end

end A255989.P16552274729447869761

namespace A255989

/-- `A255992(A000217(n+5)-4)` -/
def P16552274729447869761.Spec : Prop :=
  ∀ n, P16552274729447869761.a n = A255989 (n + 1)

end A255989

/-! ## A255989.P12542157080251943328

`A255992(A000096(n+3)+n+2)`
-/

namespace A255989.P12542157080251943328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A000096 (n + 3) + (n + 2 : ℤ)).toNat

end

end A255989.P12542157080251943328

namespace A255989

/-- `A255992(A000096(n+3)+n+2)` -/
def P12542157080251943328.Spec : Prop :=
  ∀ n, P12542157080251943328.a n = A255989 (n + 1)

end A255989

/-! ## A255989.P1839573765156662476

`A255992(A060577(A020705(n)))`
-/

namespace A255989.P1839573765156662476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A060577 (A020705 n).toNat).toNat

end

end A255989.P1839573765156662476

namespace A255989

/-- `A255992(A060577(A020705(n)))` -/
def P1839573765156662476.Spec : Prop :=
  ∀ n, P1839573765156662476.a n = A255989 (n + 1)

end A255989

/-!
# A255990: Number of length n+6 0..1 arrays with at most one downstep in every 6 consecutive neighbor pairs.

The programs for A255990, there is no canonical definition to state claims against.
-/

/-! ## A255990.P15665455747089472583

`A255992(A052905(n+3))`
-/

namespace A255990.P15665455747089472583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A052905 (n + 3)).toNat

end

end A255990.P15665455747089472583

/-! ## A255990.P15588998646987146379

`A255992(A000217(n+6)-5)`
-/

namespace A255990.P15588998646987146379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A000217 (n + 6) - 5).toNat

end

end A255990.P15588998646987146379

/-! ## A255990.P2730944142093932055

`A255992(A000124(n+6)-6)`
-/

namespace A255990.P2730944142093932055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A000124 (n + 6) - 6).toNat

end

end A255990.P2730944142093932055

/-! ## A255990.P18216886367065776787

`A255992(Δ[A023545(n+2)]-1)`
-/

namespace A255990.P18216886367065776787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (f1 (n + 1) - f1 n - 1).toNat

end

end A255990.P18216886367065776787

/-! ## A255990.P8104004695133522756

`A255992(Δ[A026054(n+3)]+1)`
-/

namespace A255990.P8104004695133522756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (f1 (n + 1) - f1 n + 1).toNat

end

end A255990.P8104004695133522756

/-! ## A255990.P4281599303211192571

`A255992(A016777(2*n+5)+∑[n])`
-/

namespace A255990.P4281599303211192571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A016777 (2 * n + 5) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A255990.P4281599303211192571

/-! ## A255990.P15790742871718318319

`A255992(A087156(n+1)+A000217(n+5))`
-/

namespace A255990.P15790742871718318319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A087156 (n + 1) + A000217 (n + 5)).toNat

end

end A255990.P15790742871718318319

/-!
# A255991: Number of length n+7 0..1 arrays with at most one downstep in every 7 consecutive neighbor pairs.

The programs for A255991, there is no canonical definition to state claims against.
-/

/-! ## A255991.P16402975541755046607

`A255992(A055999(n+4))`
-/

namespace A255991.P16402975541755046607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A055999 (n + 4)).toNat

end

end A255991.P16402975541755046607

/-! ## A255991.P4147278377110944181

`A255992(Δ[A026054(n+4)])`
-/

namespace A255991.P4147278377110944181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (f1 (n + 1) - f1 n).toNat

end

end A255991.P4147278377110944181

/-! ## A255991.P13090698555679942646

`A255992(A052905(n+4)-1)`
-/

namespace A255991.P13090698555679942646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A052905 (n + 4) - 1).toNat

end

end A255991.P13090698555679942646

/-! ## A255991.P6364970813566651058

`A255992(A046691(n+5)-2)`
-/

namespace A255991.P6364970813566651058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A046691 (n + 5) - 2).toNat

end

end A255991.P6364970813566651058

/-! ## A255991.P14226783205276721742

`A255992(A166136(n+4)+A005408(n))`
-/

namespace A255991.P14226783205276721742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A166136 (n + 4) + A005408 n).toNat

end

end A255991.P14226783205276721742

/-! ## A255991.P8566313106697736373

`A255992(A167499(n+3)+A016777(n+2))`
-/

namespace A255991.P8566313106697736373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A167499 (n + 3) + A016777 (n + 2)).toNat

end

end A255991.P8566313106697736373

/-! ## A255991.P13859201136104433803

`A255992(A000096(n+8)-A005843(n+11))`
-/

namespace A255991.P13859201136104433803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A000096 (n + 8) - A005843 (n + 11)).toNat

end

end A255991.P13859201136104433803

/-!
# A255993: Number of length n+2 0..1 arrays with at most one downstep in every n consecutive neighbor pairs.

The programs for A255993, the canonical program `A255993.P12910159753791559165` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255993 has offset 1).

The definition of A255993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255993.P12910159753791559165

`∑[∑[n+2]+3]+3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A255993

/-- `∑[∑[n+2]+3]+3` -/
def P12910159753791559165.Spec : Prop :=
  ∀ n, (P12910159753791559165.a n : ℤ) = A255993 (n + 1)

theorem P12910159753791559165.correct : P12910159753791559165.Spec := by
  intro n
  simp only [A255993, Nat.add_sub_cancel]

end A255993

/-! ## A255993.P1294152579414359811

`Δ[C(n+4, 4)+n*(n+3)]`
-/

namespace A255993.P1294152579414359811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 4 + n * (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A255993.P1294152579414359811

namespace A255993

/-- `Δ[C(n+4, 4)+n*(n+3)]` -/
def P1294152579414359811.Spec : Prop :=
  ∀ n, P1294152579414359811.a n = A255993 (n + 1)

end A255993

/-! ## A255993.P1074197679512222005

`abs(Δ[n²]+C(n+4, 3)+3)`
-/

namespace A255993.P1074197679512222005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.choose (n + 4) 3 : ℤ) + 3|

end

end A255993.P1074197679512222005

namespace A255993

/-- `abs(Δ[n²]+C(n+4, 3)+3)` -/
def P1074197679512222005.Spec : Prop :=
  ∀ n, P1074197679512222005.a n = A255993 (n + 1)

end A255993

/-! ## A255993.P5046592887187515205

`(C(n+4, 2)/3+2)*(n+2)`
-/

namespace A255993.P5046592887187515205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 4) 2 : ℚ) / 3 + 2) * (n + 2 : ℚ)

end

end A255993.P5046592887187515205

namespace A255993

/-- `(C(n+4, 2)/3+2)*(n+2)` -/
def P5046592887187515205.Spec : Prop :=
  ∀ n, P5046592887187515205.a n = (A255993 (n + 1) : ℚ)

end A255993

/-! ## A255993.P17938604341721571913

`∑[∑[2*a(n-1)-n]]` with `a(0)=8, a(1)=0, a(2)=4`
-/

namespace A255993.P17938604341721571913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8, 0, 4] fun n f2 =>
  2 * f2 (n - 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255993.P17938604341721571913

namespace A255993

/-- `∑[∑[2*a(n-1)-n]]` -/
def P17938604341721571913.Spec : Prop :=
  ∀ n, P17938604341721571913.a n = A255993 (n + 1)

end A255993

/-! ## A255993.P5675890933575062867

`abs(1-(C(n+2, 3)+(n+3)²))`
-/

namespace A255993.P5675890933575062867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.choose (n + 2) 3 + (n + 3) ^ 2 : ℤ)|

end

end A255993.P5675890933575062867

namespace A255993

/-- `abs(1-(C(n+2, 3)+(n+3)²))` -/
def P5675890933575062867.Spec : Prop :=
  ∀ n, P5675890933575062867.a n = A255993 (n + 1)

end A255993

/-! ## A255993.P5554484862021896886

`∑[∑[floor(a(n-1)²/n)]]` with `a(0)=8, a(1)=0, a(2)=4`
-/

namespace A255993.P5554484862021896886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8, 0, 4] fun n f2 =>
  ⌊(f2 (n - 1) ^ 2 : ℚ) / (n : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255993.P5554484862021896886

namespace A255993

/-- `∑[∑[floor(a(n-1)²/n)]]` -/
def P5554484862021896886.Spec : Prop :=
  ∀ n, P5554484862021896886.a n = A255993 (n + 1)

end A255993

/-! ## A255993.P8253130337461477806

`floor(a(n-1)+C(n+3, 2)+2)` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A255993.P8253130337461477806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + (Nat.choose (n + 3) 2 + 2)

end

end A255993.P8253130337461477806

namespace A255993

/-- `floor(a(n-1)+C(n+3, 2)+2)` -/
def P8253130337461477806.Spec : Prop :=
  ∀ n, (P8253130337461477806.a n : ℤ) = A255993 (n + 1)

end A255993

/-! ## A255993.P14309053567082521788

`abs(4-A026041(n+4))`
-/

namespace A255993.P14309053567082521788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A026041 (n + 4)|

end

end A255993.P14309053567082521788

namespace A255993

/-- `abs(4-A026041(n+4))` -/
def P14309053567082521788.Spec : Prop :=
  ∀ n, P14309053567082521788.a n = A255993 (n + 1)

end A255993

/-! ## A255993.P3069636933846185042

`4/(n+1)*A051744(n+1)`
-/

namespace A255993.P3069636933846185042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (n + 1 : ℚ) * (A051744 (n + 1) : ℚ)

end

end A255993.P3069636933846185042

namespace A255993

/-- `4/(n+1)*A051744(n+1)` -/
def P3069636933846185042.Spec : Prop :=
  ∀ n, P3069636933846185042.a n = (A255993 (n + 1) : ℚ)

end A255993

/-! ## A255993.P1373616793265846038

`(A000217(n+3)/3+2)*(n+2)`
-/

namespace A255993.P1373616793265846038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000217 (n + 3) : ℚ) / 3 + 2) * (n + 2 : ℚ)

end

end A255993.P1373616793265846038

namespace A255993

/-- `(A000217(n+3)/3+2)*(n+2)` -/
def P1373616793265846038.Spec : Prop :=
  ∀ n, P1373616793265846038.a n = (A255993 (n + 1) : ℚ)

end A255993

/-! ## A255993.P8183387413849868777

`∑[2*a(n-1)-A000124(n)]` with `a(0)=8, a(1)=8`
-/

namespace A255993.P8183387413849868777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 8] fun n f1 =>
  2 * f1 (n - 1) - A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255993.P8183387413849868777

namespace A255993

/-- `∑[2*a(n-1)-A000124(n)]` -/
def P8183387413849868777.Spec : Prop :=
  ∀ n, P8183387413849868777.a n = A255993 (n + 1)

end A255993

/-! ## A255993.P5763772577323971589

`abs(a(n-1)+A000217(n+2)+2)` with `a(0)=8`
-/

namespace A255993.P5763772577323971589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  |a (n - 1) + (A000217 (n + 2) + 2)|

end

end A255993.P5763772577323971589

namespace A255993

/-- `abs(a(n-1)+A000217(n+2)+2)` -/
def P5763772577323971589.Spec : Prop :=
  ∀ n, P5763772577323971589.a n = A255993 (n + 1)

end A255993

/-! ## A255993.P235682432271327362

`Δ[A223764(n+1)]`
-/

namespace A255993.P235682432271327362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255993.P235682432271327362

namespace A255993

/-- `Δ[A223764(n+1)]` -/
def P235682432271327362.Spec : Prop :=
  ∀ n, P235682432271327362.a n = A255993 (n + 1)

end A255993

/-! ## A255993.P14825363932650876917

`Δ[A005718(n)-∑[∑[n]]]`
-/

namespace A255993.P14825363932650876917
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005718 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255993.P14825363932650876917

namespace A255993

/-- `Δ[A005718(n)-∑[∑[n]]]` -/
def P14825363932650876917.Spec : Prop :=
  ∀ n, P14825363932650876917.a n = A255993 (n + 1)

end A255993

/-! ## A255993.P10971651906024550181

`Δ[A051743(n+1)+(n+1)²]`
-/

namespace A255993.P10971651906024550181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051743 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255993.P10971651906024550181

namespace A255993

/-- `Δ[A051743(n+1)+(n+1)²]` -/
def P10971651906024550181.Spec : Prop :=
  ∀ n, P10971651906024550181.a n = A255993 (n + 1)

end A255993

/-! ## A255993.P18092248981076387815

`Δ[A051744(n+1)+A000096(n)]`
-/

namespace A255993.P18092248981076387815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051744 (n + 1) + A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255993.P18092248981076387815

namespace A255993

/-- `Δ[A051744(n+1)+A000096(n)]` -/
def P18092248981076387815.Spec : Prop :=
  ∀ n, P18092248981076387815.a n = A255993 (n + 1)

end A255993

/-! ## A255993.P6554670310378854332

`Δ[Δ[A256817(n+1)]]`
-/

namespace A255993.P6554670310378854332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256817 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255993.P6554670310378854332

namespace A255993

/-- `Δ[Δ[A256817(n+1)]]` -/
def P6554670310378854332.Spec : Prop :=
  ∀ n, P6554670310378854332.a n = A255993 (n + 1)

end A255993

/-! ## A255993.P5606018422070242814

`Δ[A002378(n+1)+C(n+4, 4)]`
-/

namespace A255993.P5606018422070242814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) + (Nat.choose (n + 4) 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255993.P5606018422070242814

namespace A255993

/-- `Δ[A002378(n+1)+C(n+4, 4)]` -/
def P5606018422070242814.Spec : Prop :=
  ∀ n, P5606018422070242814.a n = A255993 (n + 1)

end A255993

/-!
# A255994: Number of length n+3 0..1 arrays with at most one downstep in every n consecutive neighbor pairs.

The programs for A255994, the canonical program `A255994.P15716268318531218347` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255994 has offset 1).

The definition of A255994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255994.P15716268318531218347

`∑[∑[n+3]+9]+4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A255994

/-- `∑[∑[n+3]+9]+4` -/
def P15716268318531218347.Spec : Prop :=
  ∀ n, (P15716268318531218347.a n : ℤ) = A255994 (n + 1)

theorem P15716268318531218347.correct : P15716268318531218347.Spec := by
  intro n
  simp only [A255994, Nat.add_sub_cancel]

end A255994

/-! ## A255994.P9957262389894556342

`abs(5-A224039(n+2))`
-/

namespace A255994.P9957262389894556342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - A224039 (n + 2)|

end

end A255994.P9957262389894556342

namespace A255994

/-- `abs(5-A224039(n+2))` -/
def P9957262389894556342.Spec : Prop :=
  ∀ n, P9957262389894556342.a n = A255994 (n + 1)

end A255994

/-! ## A255994.P7072716781663202127

`Δ[A003215(n)+C(n+5, 4)]`
-/

namespace A255994.P7072716781663202127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n + (Nat.choose (n + 5) 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255994.P7072716781663202127

namespace A255994

/-- `Δ[A003215(n)+C(n+5, 4)]` -/
def P7072716781663202127.Spec : Prop :=
  ∀ n, P7072716781663202127.a n = A255994 (n + 1)

end A255994

/-! ## A255994.P16008115588917260957

`Δ[A004538(n)+C(n+5, 4)]`
-/

namespace A255994.P16008115588917260957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004538 n + (Nat.choose (n + 5) 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255994.P16008115588917260957

namespace A255994

/-- `Δ[A004538(n)+C(n+5, 4)]` -/
def P16008115588917260957.Spec : Prop :=
  ∀ n, P16008115588917260957.a n = A255994 (n + 1)

end A255994

/-! ## A255994.P8523328323853218486

`abs(A023545(n+2)-(n²+1))`
-/

namespace A255994.P8523328323853218486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A023545 (n + 2) - (n ^ 2 + 1 : ℤ)|

end

end A255994.P8523328323853218486

namespace A255994

/-- `abs(A023545(n+2)-(n²+1))` -/
def P8523328323853218486.Spec : Prop :=
  ∀ n, P8523328323853218486.a n = A255994 (n + 1)

end A255994

/-! ## A255994.P9726371732575468059

`Δ[A063258(n)+A003215(n)]`
-/

namespace A255994.P9726371732575468059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063258 n + A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255994.P9726371732575468059

namespace A255994

/-- `Δ[A063258(n)+A003215(n)]` -/
def P9726371732575468059.Spec : Prop :=
  ∀ n, P9726371732575468059.a n = A255994 (n + 1)

end A255994

/-! ## A255994.P12254208217012879211

`Δ[A063258(n)+A004538(n)]`
-/

namespace A255994.P12254208217012879211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063258 n + A004538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255994.P12254208217012879211

namespace A255994

/-- `Δ[A063258(n)+A004538(n)]` -/
def P12254208217012879211.Spec : Prop :=
  ∀ n, P12254208217012879211.a n = A255994 (n + 1)

end A255994

/-! ## A255994.P18376888758501777572

`Δ[A063258(n)+A028896(n)]`
-/

namespace A255994.P18376888758501777572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063258 n + A028896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255994.P18376888758501777572

namespace A255994

/-- `Δ[A063258(n)+A028896(n)]` -/
def P18376888758501777572.Spec : Prop :=
  ∀ n, P18376888758501777572.a n = A255994 (n + 1)

end A255994

/-! ## A255994.P12775656783995595426

`Δ[A140676(n)+A005718(n)]`
-/

namespace A255994.P12775656783995595426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140676 n + A005718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255994.P12775656783995595426

namespace A255994

/-- `Δ[A140676(n)+A005718(n)]` -/
def P12775656783995595426.Spec : Prop :=
  ∀ n, P12775656783995595426.a n = A255994 (n + 1)

end A255994

/-! ## A255994.P9634544101318683913

`Δ[Δ[A256818(n+1)]]`
-/

namespace A255994.P9634544101318683913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256818 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255994.P9634544101318683913

namespace A255994

/-- `Δ[Δ[A256818(n+1)]]` -/
def P9634544101318683913.Spec : Prop :=
  ∀ n, P9634544101318683913.a n = A255994 (n + 1)

end A255994

/-! ## A255994.P7654121641371069825

`Δ[A003215(n)+A000332(n+5)]`
-/

namespace A255994.P7654121641371069825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n + A000332 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255994.P7654121641371069825

namespace A255994

/-- `Δ[A003215(n)+A000332(n+5)]` -/
def P7654121641371069825.Spec : Prop :=
  ∀ n, P7654121641371069825.a n = A255994 (n + 1)

end A255994

/-! ## A255994.P11637270957881264982

`∑[A166136(A052938(A103517(n)))]`
-/

namespace A255994.P11637270957881264982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166136 (A052938 (A103517 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255994.P11637270957881264982

namespace A255994

/-- `∑[A166136(A052938(A103517(n)))]` -/
def P11637270957881264982.Spec : Prop :=
  ∀ n, P11637270957881264982.a n = A255994 (n + 1)

end A255994

/-! ## A255994.P13803718350113266735

`∑[record[A256998(n+11)]-n]`
-/

namespace A255994.P13803718350113266735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256998 (n + 11)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255994.P13803718350113266735

namespace A255994

/-- `∑[record[A256998(n+11)]-n]` -/
def P13803718350113266735.Spec : Prop :=
  ∀ n, P13803718350113266735.a n = A255994 (n + 1)

end A255994

/-! ## A255994.P16728163082364565800

`A255992(∑[n+2]+4)`
-/

namespace A255994.P16728163082364565800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A255994.P16728163082364565800

namespace A255994

/-- `A255992(∑[n+2]+4)` -/
def P16728163082364565800.Spec : Prop :=
  ∀ n, P16728163082364565800.a n = A255994 (n + 1)

end A255994

/-!
# A255995: Number of length n+4 0..1 arrays with at most one downstep in every n consecutive neighbor pairs.

The programs for A255995, there is no canonical definition to state claims against.
-/

/-! ## A255995.P5063635404191318719

`Δ[Δ[A256819(n+1)]]`
-/

namespace A255995.P5063635404191318719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256819 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255995.P5063635404191318719

/-! ## A255995.P2768843975667806419

`A255992(A167614(n+2)+1)`
-/

namespace A255995.P2768843975667806419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A167614 (n + 2) + 1).toNat

end

end A255995.P2768843975667806419

/-! ## A255995.P15597495872701569560

`A255992(A166136(n+2)-2)`
-/

namespace A255995.P15597495872701569560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A166136 (n + 2) - 2).toNat

end

end A255995.P15597495872701569560

/-! ## A255995.P12833600328668839589

`A255992(A000124(n+3)+3)`
-/

namespace A255995.P12833600328668839589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A000124 (n + 3) + 3).toNat

end

end A255995.P12833600328668839589

/-! ## A255995.P791319199360505254

`A255992(A167487(n+2)-3)`
-/

namespace A255995.P791319199360505254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A167487 (n + 2) - 3).toNat

end

end A255995.P791319199360505254

/-! ## A255995.P4688895567221781745

`A255992(A000217(n+3)+4)`
-/

namespace A255995.P4688895567221781745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A000217 (n + 3) + 4).toNat

end

end A255995.P4688895567221781745

/-! ## A255995.P5415504875571899153

`A255992(Δ[A255993(n+1)]+2)`
-/

namespace A255995.P5415504875571899153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (f1 (n + 1) - f1 n + 2).toNat

end

end A255995.P5415504875571899153

/-! ## A255995.P12836675092392282480

`A255992(A166136(n+1)+1+n)`
-/

namespace A255995.P12836675092392282480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A255995.P12836675092392282480

/-! ## A255995.P9309713682182267017

`A255992(Δ[A023545(n+1)-n²])`
-/

namespace A255995.P9309713682182267017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (f1 (n + 1) - f1 n).toNat

end

end A255995.P9309713682182267017

/-! ## A255995.P16514043611081426554

`Δ[Δ[A256816(A052905(n)+9)]]`
-/

namespace A255995.P16514043611081426554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256816 (A052905 n + 9).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255995.P16514043611081426554

/-!
# A255996: Number of length n+5 0..1 arrays with at most one downstep in every n consecutive neighbor pairs.

The programs for A255996, there is no canonical definition to state claims against.
-/

/-! ## A255996.P14219521977473578803

`Δ[Δ[A256820(n+1)]]`
-/

namespace A255996.P14219521977473578803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256820 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255996.P14219521977473578803

/-! ## A255996.P11995700681820397685

`A255992(A167499(n+3))`
-/

namespace A255996.P11995700681820397685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A167499 (n + 3)).toNat

end

end A255996.P11995700681820397685

/-! ## A255996.P11493823795416180032

`A255992(A056000(n)+15)`
-/

namespace A255996.P11493823795416180032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A056000 n + 15).toNat

end

end A255996.P11493823795416180032

/-! ## A255996.P2824628357476521168

`A255992(A000217(n+4)+5)`
-/

namespace A255996.P2824628357476521168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A000217 (n + 4) + 5).toNat

end

end A255996.P2824628357476521168

/-! ## A255996.P3707761932129040579

`A255992(A055998(n+2)+8)`
-/

namespace A255996.P3707761932129040579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A055998 (n + 2) + 8).toNat

end

end A255996.P3707761932129040579

/-! ## A255996.P15416260015107771973

`A255992(A052905(n+1)+10)`
-/

namespace A255996.P15416260015107771973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A052905 (n + 1) + 10).toNat

end

end A255996.P15416260015107771973

/-! ## A255996.P3294103489111366501

`A255992(Δ[A255994(n+1)]-1)`
-/

namespace A255996.P3294103489111366501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (f1 (n + 1) - f1 n - 1).toNat

end

end A255996.P3294103489111366501

/-! ## A255996.P11966150278406307306

`A255992(A000124(n+5)-(n+1))`
-/

namespace A255996.P11966150278406307306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A255996.P11966150278406307306

/-!
# A255997: Number of length n+6 0..1 arrays with at most one downstep in every n consecutive neighbor pairs.

The programs for A255997, there is no canonical definition to state claims against.
-/

/-! ## A255997.P8740093233888997519

`A255992(A166136(n+4))`
-/

namespace A255997.P8740093233888997519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A166136 (n + 4)).toNat

end

end A255997.P8740093233888997519

/-! ## A255997.P7000699987094019025

`A255992(Δ[A255994(n+2)])`
-/

namespace A255997.P7000699987094019025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255994 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (f1 (n + 1) - f1 n).toNat

end

end A255997.P7000699987094019025

/-! ## A255997.P13304835865604090880

`A255992(A167499(n+4)+1)`
-/

namespace A255997.P13304835865604090880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A167499 (n + 4) + 1).toNat

end

end A255997.P13304835865604090880

/-! ## A255997.P5830009010220908000

`A255992(A167614(n+4)+3)`
-/

namespace A255997.P5830009010220908000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A167614 (n + 4) + 3).toNat

end

end A255997.P5830009010220908000

/-! ## A255997.P16032020294870080680

`A255992(A000217(n+5)+6)`
-/

namespace A255997.P16032020294870080680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A000217 (n + 5) + 6).toNat

end

end A255997.P16032020294870080680

/-! ## A255997.P12375129237935675362

`A255992(A052905(n)+A005843(n+10))`
-/

namespace A255997.P12375129237935675362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A052905 n + A005843 (n + 10)).toNat

end

end A255997.P12375129237935675362

/-! ## A255997.P8504656087135595738

`A255992(A255994(n+3)-A255994(n+2))`
-/

namespace A255997.P8504656087135595738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A255994 (n + 3) - A255994 (n + 2)).toNat

end

end A255997.P8504656087135595738

/-!
# A255998: Number of length n+7 0..1 arrays with at most one downstep in every n consecutive neighbor pairs.

The programs for A255998, there is no canonical definition to state claims against.
-/

/-! ## A255998.P2781490164545222788

`A255992(A167487(n+5))`
-/

namespace A255998.P2781490164545222788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A167487 (n + 5)).toNat

end

end A255998.P2781490164545222788

/-! ## A255998.P16035188627025709142

`A255992(A167499(n+5)+2)`
-/

namespace A255998.P16035188627025709142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A167499 (n + 5) + 2).toNat

end

end A255998.P16035188627025709142

/-! ## A255998.P4748809232263911346

`A255992(A167614(n+5)+4)`
-/

namespace A255998.P4748809232263911346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A167614 (n + 5) + 4).toNat

end

end A255998.P4748809232263911346

/-! ## A255998.P4272203975533743934

`A255992(A133263(n+6)+5)`
-/

namespace A255998.P4272203975533743934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A133263 (n + 6) + 5).toNat

end

end A255998.P4272203975533743934

/-! ## A255998.P13119656124265600944

`A255992(A000217(n+6)+7)`
-/

namespace A255998.P13119656124265600944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A000217 (n + 6) + 7).toNat

end

end A255998.P13119656124265600944

/-! ## A255998.P8151780755425951728

`A255992(A000124(n+7)-(n+1))`
-/

namespace A255998.P8151780755425951728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255992 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A255998.P8151780755425951728

