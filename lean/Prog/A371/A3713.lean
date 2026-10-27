import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C001
import Seq.B007.C000
import Seq.B008.C000
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
# A371300: Triangle read by rows: Riordan array (1/(1 - x), (1 + x)/(1 - x - x^2)).

The programs for A371300, there is no canonical definition to state claims against.
-/

/-! ## A371300.P1440302278366495837

`A085516(A299444(n))`
-/

namespace A371300.P1440302278366495837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (A299444 n).toNat

end

end A371300.P1440302278366495837

/-!
# A371301: Expansion of (x^2 + x - 1)/((1 - x)*(2*x^2 + 3*x - 1)). Row sums of A371300.

The programs for A371301, the canonical program `A371301.P12359518584367882938` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371301 has offset 0).

The definition of A371301 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-x^2)/(1-4x+x^2+2x^3))` (program `A371301.P12359518584367882938`, by `A371301.P12359518584367882938.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371301.P12359518584367882938

`ogf((1-x-x^2)/(1-4x+x^2+2x^3))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A371301

/-- `ogf((1-x-x^2)/(1-4x+x^2+2x^3))` -/
def P12359518584367882938.Spec : Prop :=
  ∀ n, P12359518584367882938.a n = A371301 n

theorem P12359518584367882938.correct : P12359518584367882938.Spec := by
  intro n
  simp only [A371301]

end A371301

/-! ## A371301.P6953733512274270246

`2*a(n-2)+3*a(n-1)-1` with `a(0)=1, a(1)=3`
-/

namespace A371301.P6953733512274270246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 2) + (3 * a (n - 1) - 1)

end

end A371301.P6953733512274270246

namespace A371301

/-- `2*a(n-2)+3*a(n-1)-1` -/
def P6953733512274270246.Spec : Prop :=
  ∀ n, P6953733512274270246.a n = A371301 n

end A371301

/-! ## A371301.P4879340385981918091

`2*a(n-2)-(1-3*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A371301.P4879340385981918091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 2) - (1 - 3 * a (n - 1))

end

end A371301.P4879340385981918091

namespace A371301

/-- `2*a(n-2)-(1-3*a(n-1))` -/
def P4879340385981918091.Spec : Prop :=
  ∀ n, P4879340385981918091.a n = A371301 n

end A371301

/-! ## A371301.P8072154903300119893

`A193653(n+1)/2`
-/

namespace A371301.P8072154903300119893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193653 (n + 1) : ℚ) / 2

end

end A371301.P8072154903300119893

namespace A371301

/-- `A193653(n+1)/2` -/
def P8072154903300119893.Spec : Prop :=
  ∀ n, P8072154903300119893.a n = (A371301 n : ℚ)

end A371301

/-! ## A371301.P10515133183568522097

`A007482(n+1)-(A180144(n)+A180143(n))`
-/

namespace A371301.P10515133183568522097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007482 (n + 1) - (A180144 n + A180143 n)

end

end A371301.P10515133183568522097

namespace A371301

/-- `A007482(n+1)-(A180144(n)+A180143(n))` -/
def P10515133183568522097.Spec : Prop :=
  ∀ n, P10515133183568522097.a n = A371301 n

end A371301

/-!
# A371308: Expansion of e.g.f. Product_{k>=1} (1 + x^k/k!)^prime(k).

The programs for A371308, there is no canonical definition to state claims against.
-/

/-! ## A371308.P10891253292420684654

`A165199(A148762(n+1))`
-/

namespace A371308.P10891253292420684654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (A148762 (n + 1)).toNat

end

end A371308.P10891253292420684654

/-! ## A371308.P13837969048015037616

`or(A000522(n), A353427(A027610(n+1)))`
-/

namespace A371308.P13837969048015037616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000522 n) (A353427 (A027610 (n + 1)).toNat)

end

end A371308.P13837969048015037616

/-!
# A371310: Expansion of e.g.f. Product_{k>=1} (1 + prime(k)*x^k/k!).

The programs for A371310, there is no canonical definition to state claims against.
-/

/-! ## A371310.P1255415193405480600

`A322572(A302687(n+1))`
-/

namespace A371310.P1255415193405480600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322572 (A302687 (n + 1)).toNat

end

end A371310.P1255415193405480600

/-!
# A371312: Expansion of e.g.f. Product_{k>=1} 1 / (1 - x^k/k!)^2.

The programs for A371312, there is no canonical definition to state claims against.
-/

/-! ## A371312.P7038557951268422100

`A172427(n)+A000720(A270369(n))`
-/

namespace A371312.P7038557951268422100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172427 n + A000720 (A270369 n).toNat

end

end A371312.P7038557951268422100

/-! ## A371312.P247847446057601006

`A303821(A350954(n))+A002720(n)`
-/

namespace A371312.P247847446057601006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303821 (A350954 n).toNat + A002720 n

end

end A371312.P247847446057601006

/-!
# A371313: Expansion of e.g.f. Product_{k>=1} 1 / (1 - x^k/k)^2.

The programs for A371313, there is no canonical definition to state claims against.
-/

/-! ## A371313.P16899717481498380000

`A078899(C((n+1)², n))`
-/

namespace A371313.P16899717481498380000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078899 (Nat.choose ((n + 1) ^ 2) n)

end

end A371313.P16899717481498380000

/-!
# A371314: E.g.f. satisfies A(x) = -log(1 - x)/(1 - A(x))^2.

The programs for A371314, there is no canonical definition to state claims against.
-/

/-! ## A371314.P1406199086258054196

`record[Δ[A098988(A326248(n))]]`
-/

namespace A371314.P1406199086258054196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098988 (A326248 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371314.P1406199086258054196

/-!
# A371315: E.g.f. satisfies A(x) = -log(1 - x)/(1 - A(x))^3.

The programs for A371315, there is no canonical definition to state claims against.
-/

/-! ## A371315.P13313320995123188713

`A153781(A089006(n))`
-/

namespace A371315.P13313320995123188713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153781 (A089006 n).toNat

end

end A371315.P13313320995123188713

/-!
# A371316: E.g.f. satisfies A(x) = (exp(x) - 1)/(1 - A(x))^2.

The programs for A371316, there is no canonical definition to state claims against.
-/

/-! ## A371316.P7576121744570263786

`A098831(A007056(n))`
-/

namespace A371316.P7576121744570263786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098831 (A007056 n).toNat

end

end A371316.P7576121744570263786

/-!
# A371317: E.g.f. satisfies A(x) = (exp(x) - 1)/(1 - A(x))^3.

The programs for A371317, there is no canonical definition to state claims against.
-/

/-! ## A371317.P2548449370685507113

`A070321(A049505(n))-A078822(n)`
-/

namespace A371317.P2548449370685507113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (A049505 n).toNat - A078822 n

end

end A371317.P2548449370685507113

/-!
# A371318: E.g.f. satisfies A(x) = exp(x) + x*A(x)^3.

The programs for A371318, there is no canonical definition to state claims against.
-/

/-! ## A371318.P4575989050651969722

`A005117(∑[A367157(n)])`
-/

namespace A371318.P4575989050651969722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A371318.P4575989050651969722

/-!
# A371319: E.g.f. satisfies A(x) = exp(x) + x^2*A(x)^2.

The programs for A371319, there is no canonical definition to state claims against.
-/

/-! ## A371319.P12190437353269595777

`n*A172311(floor(n!/2))+1`
-/

namespace A371319.P12190437353269595777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A172311 ⌊(Nat.factorial n : ℚ) / 2⌋.toNat + 1

end

end A371319.P12190437353269595777

/-! ## A371319.P12954085730208074630

`A396402(A148486(n))`
-/

namespace A371319.P12954085730208074630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396402 (A148486 n).toNat

end

end A371319.P12954085730208074630

/-!
# A371320: E.g.f. satisfies A(x) = exp(x) + x^2*A(x)^3.

The programs for A371320, there is no canonical definition to state claims against.
-/

/-! ## A371320.P3857659984023964845

`A194598(a(n-1)+1)` with `a(0)=1, a(1)=1`
-/

namespace A371320.P3857659984023964845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A194598 (a (n - 1) + 1).toNat

end

end A371320.P3857659984023964845

/-! ## A371320.P14046470368572735399

`or(1, A001615(A338193(n)))`
-/

namespace A371320.P14046470368572735399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001615 (A338193 n).toNat)

end

end A371320.P14046470368572735399

/-!
# A371326: E.g.f. satisfies A(x) = log(1 + x/(1 - A(x)))/(1 - A(x))^2.

The programs for A371326, there is no canonical definition to state claims against.
-/

/-! ## A371326.P15314309471253200827

`A186106(A116735(n+1))`
-/

namespace A371326.P15314309471253200827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186106 (A116735 (n + 1)).toNat

end

end A371326.P15314309471253200827

/-!
# A371327: E.g.f. satisfies A(x) = -log(1 - x/(1 - A(x)))/(1 - A(x)).

The programs for A371327, there is no canonical definition to state claims against.
-/

/-! ## A371327.P6956351527888972731

`A079688(A275557(n+2))+n`
-/

namespace A371327.P6956351527888972731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079688 (A275557 (n + 2)).toNat + (n : ℤ)

end

end A371327.P6956351527888972731

/-!
# A371328: E.g.f. satisfies A(x) = -log(1 - x/(1 - A(x)))/(1 - A(x))^2.

The programs for A371328, there is no canonical definition to state claims against.
-/

/-! ## A371328.P620122881263960772

`A003415(A011861(n)+A003422(2*n))`
-/

namespace A371328.P620122881263960772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A011861 n + A003422 (2 * n)).toNat

end

end A371328.P620122881263960772

/-!
# A371329: E.g.f. satisfies A(x) = (exp(x/(1 - A(x))) - 1)/(1 - A(x)).

The programs for A371329, there is no canonical definition to state claims against.
-/

/-! ## A371329.P543886557534327273

`A083338(A005258(n))+n`
-/

namespace A371329.P543886557534327273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083338 (A005258 n).toNat + (n : ℤ)

end

end A371329.P543886557534327273

/-!
# A371330: E.g.f. satisfies A(x) = (exp(x/(1 - A(x))) - 1)/(1 - A(x))^2.

The programs for A371330, there is no canonical definition to state claims against.
-/

/-! ## A371330.P12433740710069868949

`xor(A001906(n), A281264(A293839(n)))`
-/

namespace A371330.P12433740710069868949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001906 n) (A281264 (A293839 n).toNat)

end

end A371330.P12433740710069868949

/-!
# A371339: a(n) = Product_{k=1..n} A000178(k)^k.

The programs for A371339, there is no canonical definition to state claims against.
-/

/-! ## A371339.P6934904987985834019

`∏[∏[n!]^n]`
-/

namespace A371339.P6934904987985834019
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f2 j) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A371339.P6934904987985834019

/-!
# A371341: G.f. A(x) satisfies A(x) = 1 + x/A(x) * (1 + A(x)^5).

The programs for A371341, there is no canonical definition to state claims against.
-/

/-! ## A371341.P7880093574825091721

`2*A360093(a(n-1))` with `a(0)=1`
-/

namespace A371341.P7880093574825091721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A360093 (a (n - 1)).toNat

end

end A371341.P7880093574825091721

/-!
# A371342: E.g.f. satisfies A(x) = log(1 + x/(1 - A(x))).

The programs for A371342, there is no canonical definition to state claims against.
-/

/-! ## A371342.P12208226839704702190

`A070098(∑{d}[A038054(n), #])`
-/

namespace A371342.P12208226839704702190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070098 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A371342.P12208226839704702190

/-! ## A371342.P4780886501545191066

`A004526(A355471(char[1]+n))`
-/

namespace A371342.P4780886501545191066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A355471 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat

end

end A371342.P4780886501545191066

/-!
# A371344: a(n)/144 is the minimum squared volume > 0 of a tetrahedron with integer edge lengths whose largest is n.

The programs for A371344, there is no canonical definition to state claims against.
-/

/-! ## A371344.P4495827803943882829

`A033428(n+1)-A099257(A335405(2*n+1))`
-/

namespace A371344.P4495827803943882829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 (n + 1) - A099257 (A335405 (2 * n + 1)).toNat

end

end A371344.P4495827803943882829

/-! ## A371344.P11000451124316198290

`A033428(n+1)-A127616(A348129(2*n))`
-/

namespace A371344.P11000451124316198290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 (n + 1) - A127616 (A348129 (2 * n)).toNat

end

end A371344.P11000451124316198290

/-!
# A371345: a(n) is the number of distinct volumes > 0 of tetrahedra with edges of integer length whose largest is n.

The programs for A371345, there is no canonical definition to state claims against.
-/

/-! ## A371345.P13234814246888542774

`A360104(A004186(3*n))+A034262(n)`
-/

namespace A371345.P13234814246888542774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360104 (A004186 (3 * n)).toNat + A034262 n

end

end A371345.P13234814246888542774

/-!
# A371346: a(n) is the largest prime < prime(n)^prime(n).

The programs for A371346, there is no canonical definition to state claims against.
-/

/-! ## A371346.P15311434556109677291

`A098681(A000040(n+1))`
-/

namespace A371346.P15311434556109677291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098681 (A000040 (n + 1)).toNat

end

end A371346.P15311434556109677291

/-! ## A371346.P9087200483181616529

`A051674(n+1)-A388418(n+1)`
-/

namespace A371346.P9087200483181616529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051674 (n + 1) - A388418 (n + 1)

end

end A371346.P9087200483181616529

/-!
# A371347: a(n) is the least prime > prime(n)^prime(n).

The programs for A371347, there is no canonical definition to state claims against.
-/

/-! ## A371347.P4412053989520445734

`A098682(Δ[A007504(n)])`
-/

namespace A371347.P4412053989520445734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098682 (f1 (n + 1) - f1 n).toNat

end

end A371347.P4412053989520445734

/-! ## A371347.P8965019236562263562

`A388417(n+1)+A051674(n+1)`
-/

namespace A371347.P8965019236562263562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388417 (n + 1) + A051674 (n + 1)

end

end A371347.P8965019236562263562

/-!
# A371350: Number of chiral pairs of polyominoes composed of n tetrahedral cells of the hyperbolic regular tiling with Schläfli symbol {3,3,oo}.

The programs for A371350, there is no canonical definition to state claims against.
-/

/-! ## A371350.P11965706404876687599

`A007173(n+1)-A027610(n+1)`
-/

namespace A371350.P11965706404876687599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007173 (n + 1) - A027610 (n + 1)

end

end A371350.P11965706404876687599

/-! ## A371350.P16580108233558159451

`A027610(n+1)-A371351(n+1)`
-/

namespace A371350.P16580108233558159451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027610 (n + 1) - A371351 (n + 1)

end

end A371350.P16580108233558159451

/-! ## A371350.P8924122438599845290

`(A007173(n+1)-A371351(n+1))/2`
-/

namespace A371350.P8924122438599845290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007173 (n + 1) - A371351 (n + 1) : ℚ) / 2

end

end A371350.P8924122438599845290

/-! ## A371350.P10045294716039557866

`A025429(A149437(n))`
-/

namespace A371350.P10045294716039557866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 (A149437 n).toNat

end

end A371350.P10045294716039557866

/-!
# A371351: Number of achiral polyominoes composed of n tetrahedral cells of the hyperbolic regular tiling with Schläfli symbol {3,3,oo}.

The programs for A371351, there is no canonical definition to state claims against.
-/

/-! ## A371351.P12239880927700481673

`A027610(n+1)-A371350(n+1)`
-/

namespace A371351.P12239880927700481673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027610 (n + 1) - A371350 (n + 1)

end

end A371351.P12239880927700481673

/-! ## A371351.P4425534560157367020

`2*A027610(n+1)-A007173(n+1)`
-/

namespace A371351.P4425534560157367020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027610 (n + 1) - A007173 (n + 1)

end

end A371351.P4425534560157367020

/-! ## A371351.P16107697826457218185

`A007173(n+1)-2*A371350(n+1)`
-/

namespace A371351.P16107697826457218185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007173 (n + 1) - 2 * A371350 (n + 1)

end

end A371351.P16107697826457218185

/-! ## A371351.P5351727877115627419

`A102451(A352044(n))`
-/

namespace A371351.P5351727877115627419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102451 (A352044 n).toNat

end

end A371351.P5351727877115627419

/-! ## A371351.P10099688310971190439

`A342777(A000628(n+1))`
-/

namespace A371351.P10099688310971190439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342777 (A000628 (n + 1)).toNat

end

end A371351.P10099688310971190439

/-!
# A371352: Prime numbers such that the sum of their prime digits is equal to the sum of their nonprime digits.

The programs for A371352, there is no canonical definition to state claims against.
-/

/-! ## A371352.P9764841789505396725

`∩[A158087(n+1), A118592(n)]`
-/

namespace A371352.P9764841789505396725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371352.P9764841789505396725

/-!
# A371355: Minimum diameter of a Cayley graph on the cyclic group Z_n with two generators.

The programs for A371355, the canonical program `A371355.P4954341584235417044` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371355 has offset 1).

The definition of A371355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371355.P4954341584235417044

`ceil((sqrt(2*(n+1)-1)-1)/2)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A371355

/-- `ceil((sqrt(2*(n+1)-1)-1)/2)` -/
def P4954341584235417044.Spec : Prop :=
  ∀ n, P4954341584235417044.a n = A371355 (n + 1)

theorem P4954341584235417044.correct : P4954341584235417044.Spec := by
  intro n
  simp only [A371355, Nat.add_sub_cancel]

end A371355

/-! ## A371355.P8084261716394023062

`round(sqrt(∑[n%2]))`
-/

namespace A371355.P8084261716394023062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A371355.P8084261716394023062

namespace A371355

/-- `round(sqrt(∑[n%2]))` -/
def P8084261716394023062.Spec : Prop :=
  ∀ n, P8084261716394023062.a n = A371355 (n + 1)

end A371355

/-! ## A371355.P9291854395557800300

`∑[char[xor(1, ∑[4*n])]]`
-/

namespace A371355.P9291854395557800300
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371355.P9291854395557800300

namespace A371355

/-- `∑[char[xor(1, ∑[4*n])]]` -/
def P9291854395557800300.Spec : Prop :=
  ∀ n, (P9291854395557800300.a n : ℤ) = A371355 (n + 1)

end A371355

/-! ## A371355.P13750991691033173114

`round(sqrt(log(sqrt(cosh(n+1)))))`
-/

namespace A371355.P13750991691033173114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.log (Real.sqrt (Real.cosh (n + 1 : ℝ)))))

end

end A371355.P13750991691033173114

namespace A371355

/-- `round(sqrt(log(sqrt(cosh(n+1)))))` -/
def P13750991691033173114.Spec : Prop :=
  ∀ n, P13750991691033173114.a n = A371355 (n + 1)

end A371355

/-! ## A371355.P16781030771619503614

`round(sqrt(log(sqrt(sinh(n+1)))))`
-/

namespace A371355.P16781030771619503614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.log (Real.sqrt (Real.sinh (n + 1 : ℝ)))))

end

end A371355.P16781030771619503614

namespace A371355

/-- `round(sqrt(log(sqrt(sinh(n+1)))))` -/
def P16781030771619503614.Spec : Prop :=
  ∀ n, P16781030771619503614.a n = A371355 (n + 1)

end A371355

/-! ## A371355.P9945815350933484584

`∑[char[4*C(n, 2)+1]]`
-/

namespace A371355.P9945815350933484584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose n 2 + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371355.P9945815350933484584

namespace A371355

/-- `∑[char[4*C(n, 2)+1]]` -/
def P9945815350933484584.Spec : Prop :=
  ∀ n, (P9945815350933484584.a n : ℤ) = A371355 (n + 1)

end A371355

/-! ## A371355.P9261812736022356567

`comp[∑[or(1, 4*n)]]-n`
-/

namespace A371355.P9261812736022356567
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A371355.P9261812736022356567

namespace A371355

/-- `comp[∑[or(1, 4*n)]]-n` -/
def P9261812736022356567.Spec : Prop :=
  ∀ n, P9261812736022356567.a n = A371355 (n + 1)

end A371355

/-! ## A371355.P9212496330168487682

`comp[∑[xor(1, 4*n)]]-n`
-/

namespace A371355.P9212496330168487682
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A371355.P9212496330168487682

namespace A371355

/-- `comp[∑[xor(1, 4*n)]]-n` -/
def P9212496330168487682.Spec : Prop :=
  ∀ n, P9212496330168487682.a n = A371355 (n + 1)

end A371355

/-! ## A371355.P7913310916624876142

`comp[C(2*(n+1), 2)]-n`
-/

namespace A371355.P7913310916624876142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1)) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A371355.P7913310916624876142

namespace A371355

/-- `comp[C(2*(n+1), 2)]-n` -/
def P7913310916624876142.Spec : Prop :=
  ∀ n, P7913310916624876142.a n = A371355 (n + 1)

end A371355

/-! ## A371355.P10193806261347170329

`dr(round(sqrt(∑[char[2*n+1]])))`
-/

namespace A371355.P10193806261347170329
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)))

end

end A371355.P10193806261347170329

namespace A371355

/-- `dr(round(sqrt(∑[char[2*n+1]])))` -/
def P10193806261347170329.Spec : Prop :=
  ∀ n, (P10193806261347170329.a n : ℤ) = A371355 (n + 1)

end A371355

/-! ## A371355.P12686896836013249073

`comp[lcm(2*n+1, n+1)]-n`
-/

namespace A371355.P12686896836013249073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A371355.P12686896836013249073

namespace A371355

/-- `comp[lcm(2*n+1, n+1)]-n` -/
def P12686896836013249073.Spec : Prop :=
  ∀ n, P12686896836013249073.a n = A371355 (n + 1)

end A371355

/-! ## A371355.P6449269540599186869

`round(sqrt(A004525(n)))`
-/

namespace A371355.P6449269540599186869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A004525 n : ℝ))

end

end A371355.P6449269540599186869

namespace A371355

/-- `round(sqrt(A004525(n)))` -/
def P6449269540599186869.Spec : Prop :=
  ∀ n, P6449269540599186869.a n = A371355 (n + 1)

end A371355

/-! ## A371355.P2933077760987375961

`round(sqrt(A110654(n)))`
-/

namespace A371355.P2933077760987375961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A110654 n : ℝ))

end

end A371355.P2933077760987375961

namespace A371355

/-- `round(sqrt(A110654(n)))` -/
def P2933077760987375961.Spec : Prop :=
  ∀ n, P2933077760987375961.a n = A371355 (n + 1)

end A371355

/-! ## A371355.P8650985149538130893

`round(sqrt(A285869(n)))`
-/

namespace A371355.P8650985149538130893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A285869 n : ℝ))

end

end A371355.P8650985149538130893

namespace A371355

/-- `round(sqrt(A285869(n)))` -/
def P8650985149538130893.Spec : Prop :=
  ∀ n, P8650985149538130893.a n = A371355 (n + 1)

end A371355

/-! ## A371355.P160750087375991211

`A084359(Δ[n²])`
-/

namespace A371355.P160750087375991211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084359 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A371355.P160750087375991211

namespace A371355

/-- `A084359(Δ[n²])` -/
def P160750087375991211.Spec : Prop :=
  ∀ n, P160750087375991211.a n = A371355 (n + 1)

end A371355

/-! ## A371355.P16159148283551953628

`A391618(Δ[n²])`
-/

namespace A371355.P16159148283551953628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391618 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A371355.P16159148283551953628

namespace A371355

/-- `A391618(Δ[n²])` -/
def P16159148283551953628.Spec : Prop :=
  ∀ n, P16159148283551953628.a n = A371355 (n + 1)

end A371355

/-! ## A371355.P8319225861027443729

`∑[char[A001844(n)]]`
-/

namespace A371355.P8319225861027443729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371355.P8319225861027443729

namespace A371355

/-- `∑[char[A001844(n)]]` -/
def P8319225861027443729.Spec : Prop :=
  ∀ n, (P8319225861027443729.a n : ℤ) = A371355 (n + 1)

end A371355

/-! ## A371355.P1459008561962794542

`A000194(ceil(n/2))`
-/

namespace A371355.P1459008561962794542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ⌈(n : ℚ) / 2⌉.toNat

end

end A371355.P1459008561962794542

namespace A371355

/-- `A000194(ceil(n/2))` -/
def P1459008561962794542.Spec : Prop :=
  ∀ n, P1459008561962794542.a n = A371355 (n + 1)

end A371355

/-! ## A371355.P13755867348803193345

`∑[char[A152271(n²)]]`
-/

namespace A371355.P13755867348803193345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (n ^ 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371355.P13755867348803193345

namespace A371355

/-- `∑[char[A152271(n²)]]` -/
def P13755867348803193345.Spec : Prop :=
  ∀ n, (P13755867348803193345.a n : ℤ) = A371355 (n + 1)

end A371355

/-! ## A371355.P11236226578083650520

`round(sqrt(A004526(n+1)))`
-/

namespace A371355.P11236226578083650520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A004526 (n + 1) : ℝ))

end

end A371355.P11236226578083650520

namespace A371355

/-- `round(sqrt(A004526(n+1)))` -/
def P11236226578083650520.Spec : Prop :=
  ∀ n, P11236226578083650520.a n = A371355 (n + 1)

end A371355

/-!
# A371357: a(n) = 2^(n - HammingWeight(n)) * binomial(2*n, n).

The programs for A371357, the canonical program `A371357.P11199775498877504883` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371357 has offset 0).

The definition of A371357 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371357.P335155386575021953

`2^(n-A000120(n))*C(2*n, n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A371357.P335155386575021953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A000120 n : ℤ) * (Nat.choose (2 * n) n : ℚ)

end

end A371357.P335155386575021953

namespace A371357

/-- `2^(n-A000120(n))*C(2*n, n)` -/
def P335155386575021953.Spec : Prop :=
  ∀ n, P335155386575021953.a n = (A371357 n : ℚ)

end A371357

/-! ## A371357.P11199775498877504883

`A060818(n)*A000984(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A371357

/-- `A060818(n)*A000984(n)` -/
def P11199775498877504883.Spec : Prop :=
  ∀ n, P11199775498877504883.a n = A371357 n

theorem P11199775498877504883.correct : P11199775498877504883.Spec := by
  intro n
  simp only [A371357]

end A371357

/-! ## A371357.P7548853082696130719

`lcm(2^n, C(2*n, n))`
-/

namespace A371357.P7548853082696130719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ n) (Nat.choose (2 * n) n)

end

end A371357.P7548853082696130719

namespace A371357

/-- `lcm(2^n, C(2*n, n))` -/
def P7548853082696130719.Spec : Prop :=
  ∀ n, (P7548853082696130719.a n : ℤ) = A371357 n

end A371357

/-! ## A371357.P5681651698438604189

`2^n*A001790(n)`
-/

namespace A371357.P5681651698438604189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001790 n

end

end A371357.P5681651698438604189

namespace A371357

/-- `2^n*A001790(n)` -/
def P5681651698438604189.Spec : Prop :=
  ∀ n, P5681651698438604189.a n = A371357 n

end A371357

/-! ## A371357.P7046258742185023036

`lcm(A000079(n), A000984(n))`
-/

namespace A371357.P7046258742185023036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A000984 n)

end

end A371357.P7046258742185023036

namespace A371357

/-- `lcm(A000079(n), A000984(n))` -/
def P7046258742185023036.Spec : Prop :=
  ∀ n, (P7046258742185023036.a n : ℤ) = A371357 n

end A371357

/-! ## A371357.P6735358457716113086

`lcm(A001790(n), A120617(n))`
-/

namespace A371357.P6735358457716113086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001790 n) (A120617 n)

end

end A371357.P6735358457716113086

namespace A371357

/-- `lcm(A001790(n), A120617(n))` -/
def P6735358457716113086.Spec : Prop :=
  ∀ n, (P6735358457716113086.a n : ℤ) = A371357 n

end A371357

/-! ## A371357.P5743625427407192817

`lcm(A088218(n), A122803(n))`
-/

namespace A371357.P5743625427407192817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A088218 n) (A122803 n)

end

end A371357.P5743625427407192817

namespace A371357

/-- `lcm(A088218(n), A122803(n))` -/
def P5743625427407192817.Spec : Prop :=
  ∀ n, (P5743625427407192817.a n : ℤ) = A371357 n

end A371357

/-! ## A371357.P12754623819738932423

`lcm(A110556(n), A143126(n))`
-/

namespace A371357.P12754623819738932423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A110556 n) (A143126 n)

end

end A371357.P12754623819738932423

namespace A371357

/-- `lcm(A110556(n), A143126(n))` -/
def P12754623819738932423.Spec : Prop :=
  ∀ n, (P12754623819738932423.a n : ℤ) = A371357 n

end A371357

/-! ## A371357.P12587166140452162854

`A014964(n+1)*A098597(n)`
-/

namespace A371357.P12587166140452162854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014964 (n + 1) * A098597 n

end

end A371357.P12587166140452162854

namespace A371357

/-- `A014964(n+1)*A098597(n)` -/
def P12587166140452162854.Spec : Prop :=
  ∀ n, P12587166140452162854.a n = A371357 n

end A371357

/-! ## A371357.P8129289851910454733

`A056040(2*n)*A060818(n)`
-/

namespace A371357.P8129289851910454733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (2 * n) * A060818 n

end

end A371357.P8129289851910454733

namespace A371357

/-- `A056040(2*n)*A060818(n)` -/
def P8129289851910454733.Spec : Prop :=
  ∀ n, P8129289851910454733.a n = A371357 n

end A371357

/-! ## A371357.P11319499432168264041

`A000079(n)*A163590(2*n)`
-/

namespace A371357.P11319499432168264041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A163590 (2 * n)

end

end A371357.P11319499432168264041

namespace A371357

/-- `A000079(n)*A163590(2*n)` -/
def P11319499432168264041.Spec : Prop :=
  ∀ n, P11319499432168264041.a n = A371357 n

end A371357

/-! ## A371357.P293167039905015764

`A001790(n)*A300622(2*n)`
-/

namespace A371357.P293167039905015764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n * A300622 (2 * n)

end

end A371357.P293167039905015764

namespace A371357

/-- `A001790(n)*A300622(2*n)` -/
def P293167039905015764.Spec : Prop :=
  ∀ n, P293167039905015764.a n = A371357 n

end A371357

/-! ## A371357.P148242565958696453

`A000051(n)*A001790(n)-A001790(n)`
-/

namespace A371357.P148242565958696453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A001790 n - A001790 n

end

end A371357.P148242565958696453

namespace A371357

/-- `A000051(n)*A001790(n)-A001790(n)` -/
def P148242565958696453.Spec : Prop :=
  ∀ n, P148242565958696453.a n = A371357 n

end A371357

/-! ## A371357.P6993535490007516965

`A001790(n)/A060818(n)*A046161(n)`
-/

namespace A371357.P6993535490007516965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001790 n : ℚ) / (A060818 n : ℚ) * (A046161 n : ℚ)

end

end A371357.P6993535490007516965

namespace A371357

/-- `A001790(n)/A060818(n)*A046161(n)` -/
def P6993535490007516965.Spec : Prop :=
  ∀ n, P6993535490007516965.a n = (A371357 n : ℚ)

end A371357

/-! ## A371357.P11711259494402203538

`A001790(n)/A086117(n+1)*A101926(n)`
-/

namespace A371357.P11711259494402203538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001790 n : ℚ) / (A086117 (n + 1) : ℚ) * (A101926 n : ℚ)

end

end A371357.P11711259494402203538

namespace A371357

/-- `A001790(n)/A086117(n+1)*A101926(n)` -/
def P11711259494402203538.Spec : Prop :=
  ∀ n, P11711259494402203538.a n = (A371357 n : ℚ)

end A371357

/-! ## A371357.P6739390573173337523

`A059304(n)/A004982(n)*A067002(n)`
-/

namespace A371357.P6739390573173337523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059304 n : ℚ) / (A004982 n : ℚ) * (A067002 n : ℚ)

end

end A371357.P6739390573173337523

namespace A371357

/-- `A059304(n)/A004982(n)*A067002(n)` -/
def P6739390573173337523.Spec : Prop :=
  ∀ n, P6739390573173337523.a n = (A371357 n : ℚ)

end A371357

/-!
# A371358: Number of binary strings of length n which have more 00 than 01 substrings.

The programs for A371358, there is no canonical definition to state claims against.
-/

/-! ## A371358.P7610945826544784039

`2*a(n-1)+A163493(n-1)-A163493(n-2)-A370048(n-2)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A371358.P7610945826544784039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 2] fun n a =>
  2 * a (n - 1) + A163493 (n - 1) - A163493 (n - 2) - A370048 (n - 2)

end

end A371358.P7610945826544784039

/-! ## A371358.P7852866996670675893

`2^n-A163493(n)-A371564(n)`
-/

namespace A371358.P7852866996670675893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A163493 n - A371564 n

end

end A371358.P7852866996670675893

/-! ## A371358.P17641844832506501631

`A000079(n)-(A371564(n)+A163493(n))`
-/

namespace A371358.P17641844832506501631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A371564 n + A163493 n)

end

end A371358.P17641844832506501631

/-! ## A371358.P15690558922777743603

`A000196(A166861(n)*A354909(n))`
-/

namespace A371358.P15690558922777743603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A166861 n * A354909 n).toNat

end

end A371358.P15690558922777743603

/-! ## A371358.P8002628651769515850

`A007477(n+1)-A000002(A284116(3*n+2))`
-/

namespace A371358.P8002628651769515850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007477 (n + 1) - A000002 (A284116 (3 * n + 2)).toNat

end

end A371358.P8002628651769515850

/-!
# A371359: a(1)=1; for n>1, a(n) = a(n-1) / k if there exists an unused positive integer k (choose the smallest) such that a(n) is a distinct positive integer; otherwise a(n) = a(n-1) * k if the same conditions apply.

The programs for A371359, there is no canonical definition to state claims against.
-/

/-! ## A371359.P1053753848438140564

`A260850(n+1)%A337486(A039669(n+1))`
-/

namespace A371359.P1053753848438140564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260850 (n + 1)) (A337486 (A039669 (n + 1)).toNat)

end

end A371359.P1053753848438140564

/-!
# A371362: Expansion of (1/x) * Series_Reversion( x * (1-3*x)^2 / (1-2*x) ).

The programs for A371362, there is no canonical definition to state claims against.
-/

/-! ## A371362.P17871895178155767504

`A172392(n)+A111895(A172392(n))`
-/

namespace A371362.P17871895178155767504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172392 n + A111895 (A172392 n).toNat

end

end A371362.P17871895178155767504

/-!
# A371364: Expansion of (1/x) * Series_Reversion( x * (1-4*x)^2 / (1-3*x) ).

The programs for A371364, there is no canonical definition to state claims against.
-/

/-! ## A371364.P7715975706120874145

`A348957(Δ[n²])/2`
-/

namespace A371364.P7715975706120874145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348957 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A371364.P7715975706120874145

/-! ## A371364.P2465962290609725656

`A372018(Δ[n²])/2`
-/

namespace A371364.P2465962290609725656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372018 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A371364.P2465962290609725656

/-! ## A371364.P4409628315592524594

`floor(A372018(2*n+1)/2)`
-/

namespace A371364.P4409628315592524594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A372018 (2 * n + 1) : ℚ) / 2⌋

end

end A371364.P4409628315592524594

/-! ## A371364.P11547550195858199496

`ceil(A348957(2*n+1)/2)`
-/

namespace A371364.P11547550195858199496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A348957 (2 * n + 1) : ℚ) / 2⌉

end

end A371364.P11547550195858199496

/-! ## A371364.P2784896689943880105

`round(A348957(2*n+1)/A020639(2*(n+1)))`
-/

namespace A371364.P2784896689943880105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A348957 (2 * n + 1) : ℚ) / (A020639 (2 * (n + 1)) : ℚ))

end

end A371364.P2784896689943880105

/-!
# A371370: E.g.f. satisfies A(x) = -log(1 - x/(1 - A(x))^2).

The programs for A371370, there is no canonical definition to state claims against.
-/

/-! ## A371370.P13058735426383307757

`Δ[A039101(A365287(n))]`
-/

namespace A371370.P13058735426383307757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039101 (A365287 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371370.P13058735426383307757

/-!
# A371371: E.g.f. satisfies A(x) = exp(x/(1 - A(x))^2) - 1.

The programs for A371371, there is no canonical definition to state claims against.
-/

/-! ## A371371.P12180653780904954896

`A230980(A055792(n)+n)`
-/

namespace A371371.P12180653780904954896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A055792 n + (n : ℤ)).toNat

end

end A371371.P12180653780904954896

/-!
# A371372: a(n) = Sum_{d|2*n} binomial(4*n/d-1, 2*n/d)*phi(d)/(4*n) for n>0 with a(0)=0.

The programs for A371372, there is no canonical definition to state claims against.
-/

/-! ## A371372.P6323728812655408432

`floor(A003239(2*n)/2)`
-/

namespace A371372.P6323728812655408432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003239 (2 * n) : ℚ) / 2⌋

end

end A371372.P6323728812655408432

/-! ## A371372.P2670284724121611998

`A003239(2*n)/2*A000035(A038889(n+1))`
-/

namespace A371372.P2670284724121611998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003239 (2 * n) : ℚ) / 2 * (A000035 (A038889 (n + 1)).toNat : ℚ)

end

end A371372.P2670284724121611998

/-! ## A371372.P3462080706034514038

`A003239(2*n)/2*A000035(A106856(n+1))`
-/

namespace A371372.P3462080706034514038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003239 (2 * n) : ℚ) / 2 * (A000035 (A106856 (n + 1)).toNat : ℚ)

end

end A371372.P3462080706034514038

/-! ## A371372.P7022772171530540427

`A003239(2*n)/2*A000035(A142199(n+1))`
-/

namespace A371372.P7022772171530540427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003239 (2 * n) : ℚ) / 2 * (A000035 (A142199 (n + 1)).toNat : ℚ)

end

end A371372.P7022772171530540427

/-! ## A371372.P9009639950557931634

`A003239(2*n)/2*A000035(A019320(n))`
-/

namespace A371372.P9009639950557931634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003239 (2 * n) : ℚ) / 2 * (A000035 (A019320 n).toNat : ℚ)

end

end A371372.P9009639950557931634

/-!
# A371373: Place n equally spaced points around the circumference of a circle and then, for each pair of points, draw two distinct circles, whose radii are the same as the first circle, such that both points lie on their circumferences. The sequence gives the total number of vertices formed.

The programs for A371373, there is no canonical definition to state claims against.
-/

/-! ## A371373.P14709087332536056061

`A371375(n+1)-A371374(n+1)+1`
-/

namespace A371373.P14709087332536056061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371375 (n + 1) - A371374 (n + 1) + 1

end

end A371373.P14709087332536056061

/-! ## A371373.P1089804079802075302

`A371375(n+1)+A024000(A371374(n+1))`
-/

namespace A371373.P1089804079802075302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371375 (n + 1) + A024000 (A371374 (n + 1)).toNat

end

end A371373.P1089804079802075302

/-! ## A371373.P17808985967705654432

`A298212(A014192(3*n+2)+A004212(n))`
-/

namespace A371373.P17808985967705654432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298212 (A014192 (3 * n + 2) + A004212 n).toNat

end

end A371373.P17808985967705654432

/-!
# A371374: Place n equally spaced points around the circumference of a circle and then, for each pair of points, draw two distinct circles, whose radii are the same as the first circle, such that both points lie on their circumferences. The sequence gives the total number of regions formed.

The programs for A371374, there is no canonical definition to state claims against.
-/

/-! ## A371374.P12581619389016491580

`A371375(n+1)-A371373(n+1)+1`
-/

namespace A371374.P12581619389016491580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371375 (n + 1) - A371373 (n + 1) + 1

end

end A371374.P12581619389016491580

/-! ## A371374.P5045976742005038782

`A371375(n+1)+A024000(A371373(n+1))`
-/

namespace A371374.P5045976742005038782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371375 (n + 1) + A024000 (A371373 (n + 1)).toNat

end

end A371374.P5045976742005038782

/-! ## A371374.P16710531670628562253

`A371375(n+1)+1-A298212(A014192(3*n+2)+A004212(n))`
-/

namespace A371374.P16710531670628562253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371375 (n + 1) + 1 - A298212 (A014192 (3 * n + 2) + A004212 n).toNat

end

end A371374.P16710531670628562253

/-!
# A371375: Place n equally spaced points around the circumference of a circle and then, for each pair of points, draw two distinct circles, whose radii are the same as the first circle, such that both points lie on their circumferences. The sequence gives the total number of (curved) edges formed.

The programs for A371375, there is no canonical definition to state claims against.
-/

/-! ## A371375.P4448943531732448391

`A371373(n+1)+A371374(n+1)-1`
-/

namespace A371375.P4448943531732448391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371373 (n + 1) + A371374 (n + 1) - 1

end

end A371375.P4448943531732448391

/-! ## A371375.P5144878105443439040

`A371373(n+1)+A023443(A371374(n+1))`
-/

namespace A371375.P5144878105443439040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371373 (n + 1) + A023443 (A371374 (n + 1)).toNat

end

end A371375.P5144878105443439040

/-!
# A371380: Expansion of (1/x) * Series_Reversion( x * (1-3*x)^2 / (1-x) ).

The programs for A371380, there is no canonical definition to state claims against.
-/

/-! ## A371380.P8719219582230827150

`or(A048103(A379282(n)), A163123(n+1))`
-/

namespace A371380.P8719219582230827150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048103 (A379282 n).toNat) (A163123 (n + 1))

end

end A371380.P8719219582230827150

/-!
# A371381: Main diagonal of A219875.

The programs for A371381, the canonical program `A371381.P5949282707073329261` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371381 has offset 1).

The definition of A371381 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371381.P5949282707073329261

`(n+1)²+A019446(n+1)²`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A371381

/-- `(n+1)²+A019446(n+1)²` -/
def P5949282707073329261.Spec : Prop :=
  ∀ n, P5949282707073329261.a n = A371381 (n + 1)

theorem P5949282707073329261.correct : P5949282707073329261.Spec := by
  intro n
  simp only [A371381, Nat.add_sub_cancel]

end A371381

/-! ## A371381.P1604668716685917668

`ceil((n+1)/ϕ)²+(n+1)²`
-/

namespace A371381.P1604668716685917668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.goldenRatio⌉ ^ 2 + ((n + 1) ^ 2 : ℤ)

end

end A371381.P1604668716685917668

namespace A371381

/-- `ceil((n+1)/ϕ)²+(n+1)²` -/
def P1604668716685917668.Spec : Prop :=
  ∀ n, P1604668716685917668.a n = A371381 (n + 1)

end A371381

/-! ## A371381.P12682179109749414957

`A070216(A054066(n+1))`
-/

namespace A371381.P12682179109749414957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070216 (A054066 (n + 1)).toNat

end

end A371381.P12682179109749414957

namespace A371381

/-- `A070216(A054066(n+1))` -/
def P12682179109749414957.Spec : Prop :=
  ∀ n, P12682179109749414957.a n = A371381 (n + 1)

end A371381

/-! ## A371381.P10896599881718842378

`A219875((n+1)²+n²)`
-/

namespace A371381.P10896599881718842378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219875 ((n + 1) ^ 2 + n ^ 2)

end

end A371381.P10896599881718842378

namespace A371381

/-- `A219875((n+1)²+n²)` -/
def P10896599881718842378.Spec : Prop :=
  ∀ n, P10896599881718842378.a n = A371381 (n + 1)

end A371381

/-! ## A371381.P1547260552917074868

`A189663(A101867(n+1))`
-/

namespace A371381.P1547260552917074868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A101867 (n + 1)).toNat

end

end A371381.P1547260552917074868

namespace A371381

/-- `A189663(A101867(n+1))` -/
def P1547260552917074868.Spec : Prop :=
  ∀ n, P1547260552917074868.a n = A371381 (n + 1)

end A371381

/-! ## A371381.P17607551590183837018

`A060144(A101867(n+1)+2)`
-/

namespace A371381.P17607551590183837018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A101867 (n + 1) + 2).toNat

end

end A371381.P17607551590183837018

namespace A371381

/-- `A060144(A101867(n+1)+2)` -/
def P17607551590183837018.Spec : Prop :=
  ∀ n, P17607551590183837018.a n = A371381 (n + 1)

end A371381

/-! ## A371381.P5693347400639731420

`A019446(A019446(A371382(n+1))+n+1)`
-/

namespace A371381.P5693347400639731420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A019446 (A371382 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A371381.P5693347400639731420

namespace A371381

/-- `A019446(A019446(A371382(n+1))+n+1)` -/
def P5693347400639731420.Spec : Prop :=
  ∀ n, P5693347400639731420.a n = A371381 (n + 1)

end A371381

/-!
# A371382: a(n) = n^2 + q*(q + 1), where q = floor(n*(1 + sqrt(5))/2) = A000201(n).

The programs for A371382, the canonical program `A371382.P2869972747339708103` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371382 has offset 1).

The definition of A371382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371382.P2869972747339708103

`floor(ϕ*(n+1))+floor(ϕ*(n+1))²+(n+1)²`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A371382

/-- `floor(ϕ*(n+1))+floor(ϕ*(n+1))²+(n+1)²` -/
def P2869972747339708103.Spec : Prop :=
  ∀ n, P2869972747339708103.a n = A371382 (n + 1)

theorem P2869972747339708103.correct : P2869972747339708103.Spec := by
  intro n
  simp only [A371382, Nat.add_sub_cancel]

end A371382

/-! ## A371382.P11325344802652670269

`A295573((n+1)²+n²)`
-/

namespace A371382.P11325344802652670269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295573 ((n + 1) ^ 2 + n ^ 2)

end

end A371382.P11325344802652670269

namespace A371382

/-- `A295573((n+1)²+n²)` -/
def P11325344802652670269.Spec : Prop :=
  ∀ n, P11325344802652670269.a n = A371382 (n + 1)

end A371382

/-! ## A371382.P54650854435804834

`A000201(A371388(n+1)+n+1)`
-/

namespace A371382.P54650854435804834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A371388 (n + 1) + (n + 1 : ℤ)).toNat

end

end A371382.P54650854435804834

namespace A371382

/-- `A000201(A371388(n+1)+n+1)` -/
def P54650854435804834.Spec : Prop :=
  ∀ n, P54650854435804834.a n = A371382 (n + 1)

end A371382

/-! ## A371382.P14359527172498031398

`A007067(A371388(n+1)+n+1)`
-/

namespace A371382.P14359527172498031398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A371388 (n + 1) + (n + 1 : ℤ)).toNat

end

end A371382.P14359527172498031398

namespace A371382

/-- `A007067(A371388(n+1)+n+1)` -/
def P14359527172498031398.Spec : Prop :=
  ∀ n, P14359527172498031398.a n = A371382 (n + 1)

end A371382

/-! ## A371382.P8264683204959165417

`A066096(A371388(n+1)+n+1)`
-/

namespace A371382.P8264683204959165417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (A371388 (n + 1) + (n + 1 : ℤ)).toNat

end

end A371382.P8264683204959165417

namespace A371382

/-- `A066096(A371388(n+1)+n+1)` -/
def P8264683204959165417.Spec : Prop :=
  ∀ n, P8264683204959165417.a n = A371382 (n + 1)

end A371382

/-! ## A371382.P14608876790484442524

`A003623(A189663(A371388(n+1)+n+1))`
-/

namespace A371382.P14608876790484442524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (A189663 (A371388 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A371382.P14608876790484442524

namespace A371382

/-- `A003623(A189663(A371388(n+1)+n+1))` -/
def P14608876790484442524.Spec : Prop :=
  ∀ n, P14608876790484442524.a n = A371382 (n + 1)

end A371382

/-! ## A371382.P11865066169292867680

`A000201((n+1)*A195121(A000201(n+1)))`
-/

namespace A371382.P11865066169292867680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 ((n + 1 : ℤ) * A195121 (A000201 (n + 1)).toNat).toNat

end

end A371382.P11865066169292867680

namespace A371382

/-- `A000201((n+1)*A195121(A000201(n+1)))` -/
def P11865066169292867680.Spec : Prop :=
  ∀ n, P11865066169292867680.a n = A371382 (n + 1)

end A371382

/-! ## A371382.P3728274172865629079

`A000201((n+1)*A276886(n+2))`
-/

namespace A371382.P3728274172865629079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 ((n + 1 : ℤ) * A276886 (n + 2)).toNat

end

end A371382.P3728274172865629079

namespace A371382

/-- `A000201((n+1)*A276886(n+2))` -/
def P3728274172865629079.Spec : Prop :=
  ∀ n, P3728274172865629079.a n = A371382 (n + 1)

end A371382

/-!
# A371383: a(n) is the numerator of the arithmetic mean of the digits of n.

The programs for A371383, there is no canonical definition to state claims against.
-/

/-! ## A371383.P9501191518502788820

`∑{digits}[A375968(n), #]`
-/

namespace A371383.P9501191518502788820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A371383.P9501191518502788820

/-! ## A371383.P11728934804430014282

`A007953(A375968(n))`
-/

namespace A371383.P11728934804430014282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A375968 n).toNat

end

end A371383.P11728934804430014282

/-! ## A371383.P8005713960969464558

`A007953(n)/A055642(n)*A371384(n)`
-/

namespace A371383.P8005713960969464558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007953 n : ℚ) / (A055642 n : ℚ) * (A371384 n : ℚ)

end

end A371383.P8005713960969464558

/-! ## A371383.P14533378134305573783

`A169805(A375968(n))/A020639(2*(n+1))`
-/

namespace A371383.P14533378134305573783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 (A375968 n).toNat : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A371383.P14533378134305573783

/-! ## A371383.P2768685434392230041

`A217928(A375968(n)%A388276(2*n+5))`
-/

namespace A371383.P2768685434392230041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217928 (Int.tmod (A375968 n) (A388276 (2 * n + 5))).toNat

end

end A371383.P2768685434392230041

/-! ## A371383.P17376693118525528355

`A033930(A375968(n))%A110029(n+1)`
-/

namespace A371383.P17376693118525528355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033930 (A375968 n).toNat) (A110029 (n + 1))

end

end A371383.P17376693118525528355

/-! ## A371383.P11410337480912551314

`A026741(A088133(n))%A232161(3*n+1)`
-/

namespace A371383.P11410337480912551314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026741 (A088133 n).toNat) (A232161 (3 * n + 1))

end

end A371383.P11410337480912551314

/-!
# A371384: a(n) is the denominator of the arithmetic mean of the digits of n.

The programs for A371384, there is no canonical definition to state claims against.
-/

/-! ## A371384.P12462467283840511870

`A055642(A375968(n))`
-/

namespace A371384.P12462467283840511870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A375968 n).toNat

end

end A371384.P12462467283840511870

/-! ## A371384.P6045095217041676871

`A160093(or(1, A375968(n)))`
-/

namespace A371384.P6045095217041676871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160093 (Int.lor 1 (A375968 n)).toNat

end

end A371384.P6045095217041676871

/-! ## A371384.P13371382402749244397

`∑{digits}[A375968(n), A015130(#)]`
-/

namespace A371384.P13371382402749244397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015130 x).sum

end

end A371384.P13371382402749244397

/-! ## A371384.P9583275426242878713

`∑{digits}[A375968(n), A105586(#)]`
-/

namespace A371384.P9583275426242878713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A105586 x).sum

end

end A371384.P9583275426242878713

/-! ## A371384.P15781906662946835333

`gcd(A073053(n)%5, A212656(A118880(n)))`
-/

namespace A371384.P15781906662946835333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A073053 n) 5) (A212656 (A118880 n).toNat)

end

end A371384.P15781906662946835333

/-! ## A371384.P1723280714346315217

`A055642(n^A180160(n))`
-/

namespace A371384.P1723280714346315217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A180160 n : ℤ))).toNat

end

end A371384.P1723280714346315217

/-! ## A371384.P14633519284593613392

`gcd(A273005(n), A348674(n))`
-/

namespace A371384.P14633519284593613392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A273005 n) (A348674 n)

end

end A371384.P14633519284593613392

/-! ## A371384.P2629039396912369150

`A001176(A065031(n)²)`
-/

namespace A371384.P2629039396912369150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (A065031 n ^ 2).toNat

end

end A371384.P2629039396912369150

/-! ## A371384.P6070284381827314960

`A332202(A151949(n)+1)`
-/

namespace A371384.P6070284381827314960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332202 (A151949 n + 1).toNat

end

end A371384.P6070284381827314960

/-! ## A371384.P5599944772740922056

`A220122(lcm(4, A073053(n)))`
-/

namespace A371384.P5599944772740922056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (Int.lcm 4 (A073053 n))

end

end A371384.P5599944772740922056

/-! ## A371384.P11344209320436499859

`A000034(A040115(n)²²)`
-/

namespace A371384.P11344209320436499859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 ((A040115 n ^ 2) ^ 2).toNat

end

end A371384.P11344209320436499859

/-! ## A371384.P8689668090106976165

`A000034((n-A004086(n)+2)²)`
-/

namespace A371384.P8689668090106976165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (((n : ℤ) - A004086 n + 2) ^ 2).toNat

end

end A371384.P8689668090106976165

/-! ## A371384.P17023463632438949141

`val(A329362(A065031(n)+3), 4)+1`
-/

namespace A371384.P17023463632438949141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A329362 (A065031 n + 3).toNat).toNat 4 + 1

end

end A371384.P17023463632438949141

/-!
# A371388: a(n) = 2*n*floor(n*(1 + sqrt(5))/2) - n^2. Main diagonal of A340429.

The programs for A371388, the canonical program `A371388.P12283048043086054537` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371388 has offset 1).

The definition of A371388 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)*floor((n+1)*(1+sqrt(5))/2)-(n+1)²` (program `A371388.P12283048043086054537`, by `A371388.P12283048043086054537.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371388.P12283048043086054537

`2*(n+1)*floor((n+1)*(1+sqrt(5))/2)-(n+1)²`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A371388

/-- `2*(n+1)*floor((n+1)*(1+sqrt(5))/2)-(n+1)²` -/
def P12283048043086054537.Spec : Prop :=
  ∀ n, P12283048043086054537.a n = A371388 (n + 1)

theorem P12283048043086054537.correct : P12283048043086054537.Spec := by
  intro n
  simp only [A371388, Nat.add_sub_cancel]

end A371388

/-! ## A371388.P11595969549885262334

`(n+1)*A050140(n+1)`
-/

namespace A371388.P11595969549885262334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A050140 (n + 1)

end

end A371388.P11595969549885262334

namespace A371388

/-- `(n+1)*A050140(n+1)` -/
def P11595969549885262334.Spec : Prop :=
  ∀ n, P11595969549885262334.a n = A371388 (n + 1)

theorem P11595969549885262334.correct : P11595969549885262334.Spec := by
  intro n
  simp only [A371388, Nat.add_sub_cancel, A371388.P11595969549885262334.a, A371388.P12283048043086054537.a, A050140, A050140.P425220450931223841.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A371388

/-! ## A371388.P2321869611518588435

`(n+1)*(A284625(n+1)-2)`
-/

namespace A371388.P2321869611518588435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A284625 (n + 1) - 2)

end

end A371388.P2321869611518588435

namespace A371388

/-- `(n+1)*(A284625(n+1)-2)` -/
def P2321869611518588435.Spec : Prop :=
  ∀ n, P2321869611518588435.a n = A371388 (n + 1)

theorem P2321869611518588435.correct : P2321869611518588435.Spec := by
  intro n
  simp only [A371388, Nat.add_sub_cancel, A371388.P2321869611518588435.a, A371388.P12283048043086054537.a, A284625, A284625.P40886296300427175.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A371388

/-! ## A371388.P1211277397652015998

`(n+1)*(A075317(n+1)-n)`
-/

namespace A371388.P1211277397652015998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A075317 (n + 1) - (n : ℤ))

end

end A371388.P1211277397652015998

namespace A371388

/-- `(n+1)*(A075317(n+1)-n)` -/
def P1211277397652015998.Spec : Prop :=
  ∀ n, P1211277397652015998.a n = A371388 (n + 1)

theorem P1211277397652015998.correct : P1211277397652015998.Spec := by
  intro n
  simp only [A371388, Nat.add_sub_cancel, A371388.P1211277397652015998.a, A371388.P12283048043086054537.a, A075317, A075317.P11695724334803457321.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A371388

/-! ## A371388.P9940540732105632100

`(n+1)*(A283233(n+1)-(n+1))`
-/

namespace A371388.P9940540732105632100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A283233 (n + 1) - (n + 1 : ℤ))

end

end A371388.P9940540732105632100

namespace A371388

/-- `(n+1)*(A283233(n+1)-(n+1))` -/
def P9940540732105632100.Spec : Prop :=
  ∀ n, P9940540732105632100.a n = A371388 (n + 1)

end A371388

/-! ## A371388.P1951037657215260317

`(n+1)*A249115(A000201(n+1))`
-/

namespace A371388.P1951037657215260317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A249115 (A000201 (n + 1)).toNat

end

end A371388.P1951037657215260317

namespace A371388

/-- `(n+1)*A249115(A000201(n+1))` -/
def P1951037657215260317.Spec : Prop :=
  ∀ n, P1951037657215260317.a n = A371388 (n + 1)

end A371388

/-! ## A371388.P12283055605441196078

`A340429((n+1)²+n²)`
-/

namespace A371388.P12283055605441196078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340429 ((n + 1) ^ 2 + n ^ 2)

end

end A371388.P12283055605441196078

namespace A371388

/-- `A340429((n+1)²+n²)` -/
def P12283055605441196078.Spec : Prop :=
  ∀ n, P12283055605441196078.a n = A371388 (n + 1)

end A371388

/-! ## A371388.P14412241048568611519

`A060143(A101863(n+1))`
-/

namespace A371388.P14412241048568611519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A101863 (n + 1)).toNat

end

end A371388.P14412241048568611519

namespace A371388

/-- `A060143(A101863(n+1))` -/
def P14412241048568611519.Spec : Prop :=
  ∀ n, P14412241048568611519.a n = A371388 (n + 1)

end A371388

/-! ## A371388.P3688203402001304526

`A019446(A101863(n+1)-1)`
-/

namespace A371388.P3688203402001304526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A101863 (n + 1) - 1).toNat

end

end A371388.P3688203402001304526

namespace A371388

/-- `A019446(A101863(n+1)-1)` -/
def P3688203402001304526.Spec : Prop :=
  ∀ n, P3688203402001304526.a n = A371388 (n + 1)

end A371388

/-!
# A371389: Expansion of e.g.f. Product_{k>=1} (1 + x^k/k)^2.

The programs for A371389, there is no canonical definition to state claims against.
-/

/-! ## A371389.P8580806124957573898

`A356874(A122286(n)+A005568(n))`
-/

namespace A371389.P8580806124957573898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356874 (A122286 n + A005568 n).toNat

end

end A371389.P8580806124957573898

/-! ## A371389.P3632595616039090795

`A322520(n+1)+A028900(A381143(n))`
-/

namespace A371389.P3632595616039090795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322520 (n + 1) + A028900 (A381143 n).toNat

end

end A371389.P3632595616039090795

/-!
# A371391: Expansion of (1/x) * Series_Reversion( x * (1-x) / (1+2*x)^2 ).

The programs for A371391, there is no canonical definition to state claims against.
-/

/-! ## A371391.P10590017660848255983

`A110520(n+1)/2`
-/

namespace A371391.P10590017660848255983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110520 (n + 1) : ℚ) / 2

end

end A371391.P10590017660848255983

/-!
# A371393: Expansion of (1/x) * Series_Reversion( x * (1-x) / (1+3*x)^2 ).

The programs for A371393, there is no canonical definition to state claims against.
-/

/-! ## A371393.P5182124770565173910

`A132863(n+1)/3`
-/

namespace A371393.P5182124770565173910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132863 (n + 1) : ℚ) / 3

end

end A371393.P5182124770565173910

/-!
# A371395: Triangle read by rows: T(n, k) = binomial(n + k, k) * binomial(2*n - k, n - k) / (n + 1).

The programs for A371395, the canonical program `A371395.P10557087988676634117` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371395 has offset 0).

The definition of A371395 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A371395.P10557087988676634117

`C(row(n)+col(n), col(n))*C(2*row(n)-col(n), row(n)-col(n))/(row(n)+1)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A371395

/-- `C(row(n)+col(n), col(n))*C(2*row(n)-col(n), row(n)-col(n))/(row(n)+1)` -/
def P10557087988676634117.Spec : Prop :=
  ∀ n, P10557087988676634117.a n = (A371395 n : ℚ)

end A371395

/-! ## A371395.P9239782390903320987

`1/∑[char[∑[n]]]*A371400(n)`
-/

namespace A371395.P9239782390903320987
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * (A371400 n : ℚ)

end

end A371395.P9239782390903320987

namespace A371395

/-- `1/∑[char[∑[n]]]*A371400(n)` -/
def P9239782390903320987.Spec : Prop :=
  ∀ n, P9239782390903320987.a n = (A371395 n : ℚ)

end A371395

/-! ## A371395.P11332846233236469200

`A371400(n)/∑[A010054(n)]`
-/

namespace A371395.P11332846233236469200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A371400 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A371395.P11332846233236469200

namespace A371395

/-- `A371400(n)/∑[A010054(n)]` -/
def P11332846233236469200.Spec : Prop :=
  ∀ n, P11332846233236469200.a n = (A371395 n : ℚ)

end A371395

/-! ## A371395.P16222000073587100502

`A371400(n)/A002024(n+1)`
-/

namespace A371395.P16222000073587100502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A371400 n : ℚ) / (A002024 (n + 1) : ℚ)

end

end A371395.P16222000073587100502

namespace A371395

/-- `A371400(n)/A002024(n+1)` -/
def P16222000073587100502.Spec : Prop :=
  ∀ n, P16222000073587100502.a n = (A371395 n : ℚ)

end A371395

/-! ## A371395.P12332371860306897113

`A060693(n)/A001263(n+1)*A088617(n)`
-/

namespace A371395.P12332371860306897113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060693 n : ℚ) / (A001263 (n + 1) : ℚ) * (A088617 n : ℚ)

end

end A371395.P12332371860306897113

namespace A371395

/-- `A060693(n)/A001263(n+1)*A088617(n)` -/
def P12332371860306897113.Spec : Prop :=
  ∀ n, P12332371860306897113.a n = (A371395 n : ℚ)

end A371395

/-!
# A371397: Number of chiral pairs of polyominoes with n cubical cells of the regular tiling with Schläfli symbol {4,3,4}.

The programs for A371397, there is no canonical definition to state claims against.
-/

/-! ## A371397.P7921500531410666904

`A000162(n+1)-A038119(n+1)`
-/

namespace A371397.P7921500531410666904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000162 (n + 1) - A038119 (n + 1)

end

end A371397.P7921500531410666904

/-! ## A371397.P17277120523478919614

`A038119(n+1)-A007743(n+1)`
-/

namespace A371397.P17277120523478919614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038119 (n + 1) - A007743 (n + 1)

end

end A371397.P17277120523478919614

/-! ## A371397.P2481009198232779319

`(A000162(n+1)-A007743(n+1))/2`
-/

namespace A371397.P2481009198232779319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000162 (n + 1) - A007743 (n + 1) : ℚ) / 2

end

end A371397.P2481009198232779319

/-! ## A371397.P17975782100546706370

`A000162(A000027(n+1))%A038119(n+1)`
-/

namespace A371397.P17975782100546706370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000162 (A000027 (n + 1)).toNat) (A038119 (n + 1))

end

end A371397.P17975782100546706370

/-! ## A371397.P456799973396204697

`A006759(n+1)+Δ[A173271(n)]-A038119(n+1)`
-/

namespace A371397.P456799973396204697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006759 (n + 1) + (f1 (n + 1) - f1 n) - A038119 (n + 1)

end

end A371397.P456799973396204697

/-!
# A371398: Expansion of (1/x) * Series_Reversion( x / ( (1+x) * (1+2*x)^3 ) ).

The programs for A371398, there is no canonical definition to state claims against.
-/

/-! ## A371398.P8581735461697462743

`A243675(n+1)`
-/

namespace A371398.P8581735461697462743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243675 (n + 1)

end

end A371398.P8581735461697462743

/-! ## A371398.P831736960103413327

`A144097(n+1)/2`
-/

namespace A371398.P831736960103413327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144097 (n + 1) : ℚ) / 2

end

end A371398.P831736960103413327

/-! ## A371398.P18130787006830850909

`record[A187920(n+2)/2]`
-/

namespace A371398.P18130787006830850909
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187920 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371398.P18130787006830850909

/-! ## A371398.P15818527355992595703

`record[A243675(A142150(n))]`
-/

namespace A371398.P15818527355992595703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243675 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371398.P15818527355992595703

/-! ## A371398.P15629374681950209793

`record[A243675(A249783(n))]`
-/

namespace A371398.P15629374681950209793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243675 (A249783 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371398.P15629374681950209793

/-!
# A371399: a(n) = 2^n * Sum_{k=0..n} binomial(k + n, k) * binomial(2*n - k, n) * (-1/2)^k.

The programs for A371399, there is no canonical definition to state claims against.
-/

/-! ## A371399.P12314708783594089879

`A073370(∑[4*n])`
-/

namespace A371399.P12314708783594089879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A371399.P12314708783594089879

/-! ## A371399.P16634352496634551779

`(n+1)*A250886(n+1)`
-/

namespace A371399.P16634352496634551779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A250886 (n + 1)

end

end A371399.P16634352496634551779

/-! ## A371399.P1337009921365361966

`A112883(A062728(n))`
-/

namespace A371399.P1337009921365361966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112883 (A062728 n).toNat

end

end A371399.P1337009921365361966

/-! ## A371399.P17028009383835321176

`lcm(A073370(A046092(n)), A198339(n+1))`
-/

namespace A371399.P17028009383835321176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A073370 (A046092 n).toNat) (A198339 (n + 1))

end

end A371399.P17028009383835321176

/-! ## A371399.P14228659693561618622

`A073370(A046092(n))^(A031178(n)%2)`
-/

namespace A371399.P14228659693561618622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073370 (A046092 n).toNat : ℚ) ^ (Int.tmod (A031178 n) 2 : ℤ)

end

end A371399.P14228659693561618622

