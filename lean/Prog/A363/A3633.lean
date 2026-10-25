import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
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
# A363301: a(1)=1, and thereafter, a(n) is the number of terms in the sequence thus far that appear with a frequency equal to or less than that of a(n-1).

The programs for A363301, there is no canonical definition to state claims against.
-/

/-! ## A363301.P15063719773725615508

`A085152(A152650(n)+A119387(n))`
-/

namespace A363301.P15063719773725615508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085152 (A152650 n + A119387 n).toNat

end

end A363301.P15063719773725615508

/-! ## A363301.P3588763768154100908

`gcd(A001788(n+3), A336159(A002999(n)))`
-/

namespace A363301.P3588763768154100908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001788 (n + 3)) (A336159 (A002999 n).toNat)

end

end A363301.P3588763768154100908

/-! ## A363301.P16331100510160494361

`A242618(lt[A118435(2*(n+1)), A305149(n+1)])`
-/

namespace A363301.P16331100510160494361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118435 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242618 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A363301.P16331100510160494361

/-! ## A363301.P10358089731153438350

`A242618(lt[A118435(2*(n+1)), A242618(n+3)])`
-/

namespace A363301.P10358089731153438350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118435 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242618 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242618 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A363301.P10358089731153438350

/-!
# A363302: E.g.f. satisfies log(A(x)) = exp(x / A(x)^3) - 1.

The programs for A363302, there is no canonical definition to state claims against.
-/

/-! ## A363302.P9875882907954180957

`A335977(A139272(n))`
-/

namespace A363302.P9875882907954180957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335977 (A139272 n).toNat

end

end A363302.P9875882907954180957

/-!
# A363303: Smallest positive integer that cannot be obtained from an expression consisting of digits 0,1,...,n-1, each used exactly once, and any mix of the four arithmetic operations +-*/ plus balanced parentheses. Digits may be concatenated as in 210+34. Neither unary minus signs nor exponents are allowed.

The programs for A363303, there is no canonical definition to state claims against.
-/

/-! ## A363303.P17462840198632987739

`A237799(A290625(n)+A003188(n+1))`
-/

namespace A363303.P17462840198632987739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237799 (A290625 n + A003188 (n + 1)).toNat

end

end A363303.P17462840198632987739

/-! ## A363303.P2152174358733540036

`A023831(A002110(n))-A268448(n+1)`
-/

namespace A363303.P2152174358733540036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023831 (A002110 n).toNat - A268448 (n + 1)

end

end A363303.P2152174358733540036

/-!
# A363305: Expansion of g.f. A(x) satisfying A(x) = 1 + x*(A(x)^5 + A(x)^9).

The programs for A363305, there is no canonical definition to state claims against.
-/

/-! ## A363305.P4170486971177308176

`A000142(n)*A111871(A026269(n+2))`
-/

namespace A363305.P4170486971177308176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A111871 (A026269 (n + 2)).toNat

end

end A363305.P4170486971177308176

/-!
# A363306: Expansion of g.f. A(x) satisfying 1 = Sum_{n>=0} x^n / (1 - (-x)^(n+1)*A(x)).

The programs for A363306, there is no canonical definition to state claims against.
-/

/-! ## A363306.P13973562926831365931

`A054846(A367258(n+1))`
-/

namespace A363306.P13973562926831365931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A367258 (n + 1)).toNat

end

end A363306.P13973562926831365931

/-! ## A363306.P8897832933697159908

`∑[A001462(A257084(n+1))]`
-/

namespace A363306.P8897832933697159908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A257084 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363306.P8897832933697159908

/-! ## A363306.P16430204898193103507

`A038567(∑[A052673(n)])-n`
-/

namespace A363306.P16430204898193103507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A363306.P16430204898193103507

/-!
# A363307: Expansion of g.f. A(x) satisfying 1 = Sum_{n>=0} (-x)^n * A(x)^n / Product_{k=1..n+1} (1 + (-x)^k).

The programs for A363307, there is no canonical definition to state claims against.
-/

/-! ## A363307.P17594407293652065591

`A000700(lt[A280787(n+2), 2]+3)`
-/

namespace A363307.P17594407293652065591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280787 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3)

end

end A363307.P17594407293652065591

/-! ## A363307.P4077629601841060351

`A000700(A239331(∑[n+2]-1)+2)`
-/

namespace A363307.P4077629601841060351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A239331 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + 2).toNat

end

end A363307.P4077629601841060351

/-! ## A363307.P394918367738766444

`A000700(C(A023052(n+1)+2, 2)+2)`
-/

namespace A363307.P394918367738766444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (Nat.choose (A023052 (n + 1) + 2).toNat 2 + 2)

end

end A363307.P394918367738766444

/-! ## A363307.P4846090515888237141

`A000700((∑[n+1]+2)%A197461(2*n+5))`
-/

namespace A363307.P4846090515888237141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ) (A197461 (2 * n + 5))).toNat

end

end A363307.P4846090515888237141

/-! ## A363307.P18138234708699734783

`A316345(A000051(n))+A190162(n)`
-/

namespace A363307.P18138234708699734783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316345 (A000051 n).toNat + A190162 n

end

end A363307.P18138234708699734783

/-!
# A363308: Expansion of g.f. C(x*C(x)^3), where C(x) = 1 + x*C(x)^2 is the g.f. of the Catalan numbers (A000108).

The programs for A363308, there is no canonical definition to state claims against.
-/

/-! ## A363308.P644462318485897440

`A005528(A007564(C(n, 6)+n))`
-/

namespace A363308.P644462318485897440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005528 (A007564 (Nat.choose n 6 + n)).toNat

end

end A363308.P644462318485897440

/-! ## A363308.P15779880641114892393

`A008615(A052977(3*n+1)+n+1)`
-/

namespace A363308.P15779880641114892393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A052977 (3 * n + 1) + (n + 1 : ℤ)).toNat

end

end A363308.P15779880641114892393

/-!
# A363309: Expansion of g.f. A(x) = F(x*F(x)^5), where F(x) = 1 + x*F(x)^3 is the g.f. of A001764.

The programs for A363309, there is no canonical definition to state claims against.
-/

/-! ## A363309.P10676061157881480480

`A209384(A209391(n+1))`
-/

namespace A363309.P10676061157881480480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209384 (A209391 (n + 1)).toNat

end

end A363309.P10676061157881480480

/-!
# A363310: Expansion of g.f. A(x) satisfying A(x) = 1 + x*G(x)^5, where G(x) = 1 + x*(G(x)^3 + G(x)^5) is the g.f. of A363311.

The programs for A363310, there is no canonical definition to state claims against.
-/

/-! ## A363310.P11441084525464464777

`A034448(C(abs(1-2*n), n)²-floor(n/3))`
-/

namespace A363310.P11441084525464464777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 ((Nat.choose |1 - (2 * n : ℤ)|.toNat n ^ 2 : ℤ) - ⌊(n : ℚ) / 3⌋).toNat

end

end A363310.P11441084525464464777

/-!
# A363311: Expansion of g.f. A(x) satisfying A(x) = 1 + x*(A(x)^3 + A(x)^5).

The programs for A363311, there is no canonical definition to state claims against.
-/

/-! ## A363311.P757030613072761872

`Δ[A000010(A087503(∑[n]))]`
-/

namespace A363311.P757030613072761872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A087503 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A363311.P757030613072761872

/-!
# A363316: Sum of divisors of 4*n-2 of form 4*k+1.

The programs for A363316, the canonical program `A363316.P139402600971360063` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363316 has offset 1).

The definition of A363316 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050449, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363316.P139402600971360063

`A050449(4*(n+1)-2)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A363316

/-- `A050449(4*(n+1)-2)` -/
def P139402600971360063.Spec : Prop :=
  ∀ n, P139402600971360063.a n = A363316 (n + 1)

theorem P139402600971360063.correct : P139402600971360063.Spec := by
  intro n
  simp only [A363316, Nat.add_sub_cancel]

end A363316

/-! ## A363316.P5195300298333823808

`∑{d}[2*n+1, #%or(2, #)]`
-/

namespace A363316.P5195300298333823808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d % Nat.lor 2 d

end

end A363316.P5195300298333823808

namespace A363316

/-- `∑{d}[2*n+1, #%or(2, #)]` -/
def P5195300298333823808.Spec : Prop :=
  ∀ n, (P5195300298333823808.a n : ℤ) = A363316 (n + 1)

end A363316

/-! ## A363316.P17945991571375313069

`Δ[n²]-A326049(Δ[n²])`
-/

namespace A363316.P17945991571375313069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A326049 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A363316.P17945991571375313069

namespace A363316

/-- `Δ[n²]-A326049(Δ[n²])` -/
def P17945991571375313069.Spec : Prop :=
  ∀ n, P17945991571375313069.a n = A363316 (n + 1)

end A363316

/-! ## A363316.P6394218616004147756

`A008438(n)-A363392(n+1)`
-/

namespace A363316.P6394218616004147756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 n - A363392 (n + 1)

end

end A363316.P6394218616004147756

namespace A363316

/-- `A008438(n)-A363392(n+1)` -/
def P6394218616004147756.Spec : Prop :=
  ∀ n, P6394218616004147756.a n = A363316 (n + 1)

end A363316

/-! ## A363316.P17700023183217368653

`A000203(2*n+1)-A363392(n+1)`
-/

namespace A363316.P17700023183217368653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1) - A363392 (n + 1)

end

end A363316.P17700023183217368653

namespace A363316

/-- `A000203(2*n+1)-A363392(n+1)` -/
def P17700023183217368653.Spec : Prop :=
  ∀ n, P17700023183217368653.a n = A363316 (n + 1)

end A363316

/-! ## A363316.P2132194543534790325

`A082053(Δ[n²])`
-/

namespace A363316.P2132194543534790325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082053 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A363316.P2132194543534790325

namespace A363316

/-- `A082053(Δ[n²])` -/
def P2132194543534790325.Spec : Prop :=
  ∀ n, P2132194543534790325.a n = A363316 (n + 1)

end A363316

/-! ## A363316.P5082039333223626790

`A050457(2*n+1)+A050452(2*n+1)`
-/

namespace A363316.P5082039333223626790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050457 (2 * n + 1) + A050452 (2 * n + 1)

end

end A363316.P5082039333223626790

namespace A363316

/-- `A050457(2*n+1)+A050452(2*n+1)` -/
def P5082039333223626790.Spec : Prop :=
  ∀ n, P5082039333223626790.a n = A363316 (n + 1)

end A363316

/-! ## A363316.P15795540710600282563

`A082052(2*n+1)+A050457(2*n+1)`
-/

namespace A363316.P15795540710600282563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082052 (2 * n + 1) + A050457 (2 * n + 1)

end

end A363316.P15795540710600282563

namespace A363316

/-- `A082052(2*n+1)+A050457(2*n+1)` -/
def P15795540710600282563.Spec : Prop :=
  ∀ n, P15795540710600282563.a n = A363316 (n + 1)

end A363316

/-! ## A363316.P8938960529608068140

`A326052(2*n+1)+A001065(2*n+1)`
-/

namespace A363316.P8938960529608068140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326052 (2 * n + 1) + A001065 (2 * n + 1)

end

end A363316.P8938960529608068140

namespace A363316

/-- `A326052(2*n+1)+A001065(2*n+1)` -/
def P8938960529608068140.Spec : Prop :=
  ∀ n, P8938960529608068140.a n = A363316 (n + 1)

end A363316

/-! ## A363316.P17952293942198071750

`A326052(2*n+1)+A091570(2*n+1)`
-/

namespace A363316.P17952293942198071750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326052 (2 * n + 1) + A091570 (2 * n + 1)

end

end A363316.P17952293942198071750

namespace A363316

/-- `A326052(2*n+1)+A091570(2*n+1)` -/
def P17952293942198071750.Spec : Prop :=
  ∀ n, P17952293942198071750.a n = A363316 (n + 1)

end A363316

/-! ## A363316.P1164011832894962612

`A000203(2*n+1)-A050452(2*n+1)`
-/

namespace A363316.P1164011832894962612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1) - A050452 (2 * n + 1)

end

end A363316.P1164011832894962612

namespace A363316

/-- `A000203(2*n+1)-A050452(2*n+1)` -/
def P1164011832894962612.Spec : Prop :=
  ∀ n, P1164011832894962612.a n = A363316 (n + 1)

end A363316

/-! ## A363316.P7019470941628051798

`A000593(2*n+1)-A050452(2*n+1)`
-/

namespace A363316.P7019470941628051798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (2 * n + 1) - A050452 (2 * n + 1)

end

end A363316.P7019470941628051798

namespace A363316

/-- `A000593(2*n+1)-A050452(2*n+1)` -/
def P7019470941628051798.Spec : Prop :=
  ∀ n, P7019470941628051798.a n = A363316 (n + 1)

end A363316

/-! ## A363316.P14557841897105514421

`A000203(2*n+1)-A082052(2*n+1)`
-/

namespace A363316.P14557841897105514421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1) - A082052 (2 * n + 1)

end

end A363316.P14557841897105514421

namespace A363316

/-- `A000203(2*n+1)-A082052(2*n+1)` -/
def P14557841897105514421.Spec : Prop :=
  ∀ n, P14557841897105514421.a n = A363316 (n + 1)

end A363316

/-! ## A363316.P10657198217305023284

`A000593(2*n+1)-A082052(2*n+1)`
-/

namespace A363316.P10657198217305023284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (2 * n + 1) - A082052 (2 * n + 1)

end

end A363316.P10657198217305023284

namespace A363316

/-- `A000593(2*n+1)-A082052(2*n+1)` -/
def P10657198217305023284.Spec : Prop :=
  ∀ n, P10657198217305023284.a n = A363316 (n + 1)

end A363316

/-! ## A363316.P15691671839004184616

`A143348(2*n+1)-A050452(2*n+1)`
-/

namespace A363316.P15691671839004184616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (2 * n + 1) - A050452 (2 * n + 1)

end

end A363316.P15691671839004184616

namespace A363316

/-- `A143348(2*n+1)-A050452(2*n+1)` -/
def P15691671839004184616.Spec : Prop :=
  ∀ n, P15691671839004184616.a n = A363316 (n + 1)

end A363316

/-! ## A363316.P2881100447580379498

`A215947(2*n+1)-A082052(2*n+1)`
-/

namespace A363316.P2881100447580379498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215947 (2 * n + 1) - A082052 (2 * n + 1)

end

end A363316.P2881100447580379498

namespace A363316

/-- `A215947(2*n+1)-A082052(2*n+1)` -/
def P2881100447580379498.Spec : Prop :=
  ∀ n, P2881100447580379498.a n = A363316 (n + 1)

end A363316

/-! ## A363316.P5360545927365816428

`A001065(2*n+1)-A326050(2*n+1)`
-/

namespace A363316.P5360545927365816428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (2 * n + 1) - A326050 (2 * n + 1)

end

end A363316.P5360545927365816428

namespace A363316

/-- `A001065(2*n+1)-A326050(2*n+1)` -/
def P5360545927365816428.Spec : Prop :=
  ∀ n, P5360545927365816428.a n = A363316 (n + 1)

end A363316

/-! ## A363316.P6776135235360486261

`A285895(2*n+1)-A082052(2*n+1)`
-/

namespace A363316.P6776135235360486261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285895 (2 * n + 1) - A082052 (2 * n + 1)

end

end A363316.P6776135235360486261

namespace A363316

/-- `A285895(2*n+1)-A082052(2*n+1)` -/
def P6776135235360486261.Spec : Prop :=
  ∀ n, P6776135235360486261.a n = A363316 (n + 1)

end A363316

/-! ## A363316.P4084224643241490733

`A293901(4*n+2)`
-/

namespace A363316.P4084224643241490733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293901 (4 * n + 2)

end

end A363316.P4084224643241490733

namespace A363316

/-- `A293901(4*n+2)` -/
def P4084224643241490733.Spec : Prop :=
  ∀ n, P4084224643241490733.a n = A363316 (n + 1)

end A363316

/-! ## A363316.P1146778090009874804

`filter[A050449(2*n+1), A267579(#)]`
-/

namespace A363316.P1146778090009874804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A363316.P1146778090009874804

namespace A363316

/-- `filter[A050449(2*n+1), A267579(#)]` -/
def P1146778090009874804.Spec : Prop :=
  ∀ n, P1146778090009874804.a n = A363316 (n + 1)

end A363316

/-!
# A363317: Sum of divisors of 4*n-3 of form 4*k+1.

The programs for A363317, the canonical program `A363317.P7308368219269641597` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363317 has offset 1).

The definition of A363317 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050449, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363317.P7308368219269641597

`A050449(4*n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A363317

/-- `A050449(4*n+1)` -/
def P7308368219269641597.Spec : Prop :=
  ∀ n, P7308368219269641597.a n = A363317 (n + 1)

theorem P7308368219269641597.correct : P7308368219269641597.Spec := by
  intro n
  simp only [A363317, Nat.add_sub_cancel]

end A363317

/-! ## A363317.P3374373467971048716

`A112610(n)-A363407(n+1)`
-/

namespace A363317.P3374373467971048716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112610 n - A363407 (n + 1)

end

end A363317.P3374373467971048716

namespace A363317

/-- `A112610(n)-A363407(n+1)` -/
def P3374373467971048716.Spec : Prop :=
  ∀ n, P3374373467971048716.a n = A363317 (n + 1)

end A363317

/-! ## A363317.P5529332763077681742

`A363316(Δ[n²])`
-/

namespace A363317.P5529332763077681742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363316 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A363317.P5529332763077681742

namespace A363317

/-- `A363316(Δ[n²])` -/
def P5529332763077681742.Spec : Prop :=
  ∀ n, P5529332763077681742.a n = A363317 (n + 1)

end A363317

/-! ## A363317.P18229389220681028630

`A008438(2*n)-A363392(2*n+1)`
-/

namespace A363317.P18229389220681028630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 (2 * n) - A363392 (2 * n + 1)

end

end A363317.P18229389220681028630

namespace A363317

/-- `A008438(2*n)-A363392(2*n+1)` -/
def P18229389220681028630.Spec : Prop :=
  ∀ n, P18229389220681028630.a n = A363317 (n + 1)

end A363317

/-! ## A363317.P2092544754830328725

`A050460(4*n+1)`
-/

namespace A363317.P2092544754830328725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050460 (4 * n + 1)

end

end A363317.P2092544754830328725

namespace A363317

/-- `A050460(4*n+1)` -/
def P2092544754830328725.Spec : Prop :=
  ∀ n, P2092544754830328725.a n = A363317 (n + 1)

end A363317

/-! ## A363317.P15370466787563807800

`A082053(3*n+n+1)`
-/

namespace A363317.P15370466787563807800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082053 (3 * n + (n + 1))

end

end A363317.P15370466787563807800

namespace A363317

/-- `A082053(3*n+n+1)` -/
def P15370466787563807800.Spec : Prop :=
  ∀ n, P15370466787563807800.a n = A363317 (n + 1)

end A363317

/-! ## A363317.P10032220355078267837

`filter[A363316(2*n+1), A267579(#)]`
-/

namespace A363317.P10032220355078267837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363316 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A363317.P10032220355078267837

namespace A363317

/-- `filter[A363316(2*n+1), A267579(#)]` -/
def P10032220355078267837.Spec : Prop :=
  ∀ n, P10032220355078267837.a n = A363317 (n + 1)

end A363317

/-! ## A363317.P4265530835415108878

`A293901(A063110(n+1))`
-/

namespace A363317.P4265530835415108878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293901 (A063110 (n + 1)).toNat

end

end A363317.P4265530835415108878

namespace A363317

/-- `A293901(A063110(n+1))` -/
def P4265530835415108878.Spec : Prop :=
  ∀ n, P4265530835415108878.a n = A363317 (n + 1)

end A363317

/-! ## A363317.P17215996579538416609

`A293901(A063164(n+1))`
-/

namespace A363317.P17215996579538416609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293901 (A063164 (n + 1)).toNat

end

end A363317.P17215996579538416609

namespace A363317

/-- `A293901(A063164(n+1))` -/
def P17215996579538416609.Spec : Prop :=
  ∀ n, P17215996579538416609.a n = A363317 (n + 1)

end A363317

/-!
# A363318: Total distance from n to each of its refactorable unitary divisors.

The programs for A363318, there is no canonical definition to state claims against.
-/

/-! ## A363318.P16598267573794447409

`(n+1)*A363298(n+1)-A363085(n+1)`
-/

namespace A363318.P16598267573794447409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A363298 (n + 1) - A363085 (n + 1)

end

end A363318.P16598267573794447409

/-! ## A363318.P13375963692321973591

`A130400(A246542(n+1)%2*C(n, 2))+n`
-/

namespace A363318.P13375963692321973591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130400 (Int.tmod (A246542 (n + 1)) 2 * (Nat.choose n 2 : ℤ)).toNat + (n : ℤ)

end

end A363318.P13375963692321973591

/-! ## A363318.P8210571556977109944

`A222258(n+2)-A089120(A016922(n))`
-/

namespace A363318.P8210571556977109944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222258 (n + 2) - A089120 (A016922 n).toNat

end

end A363318.P8210571556977109944

/-! ## A363318.P8673062732141702622

`A222258(n+2)-A089120(A131685(2*n+1))`
-/

namespace A363318.P8673062732141702622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222258 (n + 2) - A089120 (A131685 (2 * n + 1)).toNat

end

end A363318.P8673062732141702622

/-! ## A363318.P12397153378028512280

`A222259(n+3)-A111629(A106608(3*(n+1)))`
-/

namespace A363318.P12397153378028512280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222259 (n + 3) - A111629 (A106608 (3 * (n + 1))).toNat

end

end A363318.P12397153378028512280

/-!
# A363319: Squares (A000290) and centered squares (A001844) sorted, including duplicates.

The programs for A363319, the canonical program `A363319.P13538446356055515187` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363319 has offset 1).

The definition of A363319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363319.P767277256682564909

`ceil(∪[2*(n+1)², (2*n+1)²]/2)`
-/

namespace A363319.P767277256682564909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℚ) / 2⌉

end

end A363319.P767277256682564909

namespace A363319

/-- `ceil(∪[2*(n+1)², (2*n+1)²]/2)` -/
def P767277256682564909.Spec : Prop :=
  ∀ n, P767277256682564909.a n = A363319 (n + 1)

end A363319

/-! ## A363319.P15710571009022017324

`round(∪[2*(n+1)², (2*n+1)²]/2)`
-/

namespace A363319.P15710571009022017324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℚ) / 2)

end

end A363319.P15710571009022017324

namespace A363319

/-- `round(∪[2*(n+1)², (2*n+1)²]/2)` -/
def P15710571009022017324.Spec : Prop :=
  ∀ n, P15710571009022017324.a n = A363319 (n + 1)

end A363319

/-! ## A363319.P13538446356055515187

`ceil(A096033(n+1)/2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A363319

/-- `ceil(A096033(n+1)/2)` -/
def P13538446356055515187.Spec : Prop :=
  ∀ n, P13538446356055515187.a n = A363319 (n + 1)

theorem P13538446356055515187.correct : P13538446356055515187.Spec := by
  intro n
  simp only [A363319, Nat.add_sub_cancel]

end A363319

/-! ## A363319.P15707019570769922007

`floor((A096033(n+1)-char[A155659(n)]+1)/2)`
-/

namespace A363319.P15707019570769922007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155659 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A096033 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + 1 : ℚ) / 2⌋

end

end A363319.P15707019570769922007

namespace A363319

/-- `floor((A096033(n+1)-char[A155659(n)]+1)/2)` -/
def P15707019570769922007.Spec : Prop :=
  ∀ n, P15707019570769922007.a n = A363319 (n + 1)

end A363319

/-! ## A363319.P6539944077343107211

`floor((A096033(n+1)-char[A277739(n+5)]+1)/2)`
-/

namespace A363319.P6539944077343107211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277739 (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A096033 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + 1 : ℚ) / 2⌋

end

end A363319.P6539944077343107211

namespace A363319

/-- `floor((A096033(n+1)-char[A277739(n+5)]+1)/2)` -/
def P6539944077343107211.Spec : Prop :=
  ∀ n, P6539944077343107211.a n = A363319 (n + 1)

end A363319

/-! ## A363319.P13742076283097502198

`floor((A096033(A130472(2*(n+1)))+1)/2)`
-/

namespace A363319.P13742076283097502198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A096033 (A130472 (2 * (n + 1))).toNat + 1 : ℚ) / 2⌋

end

end A363319.P13742076283097502198

namespace A363319

/-- `floor((A096033(A130472(2*(n+1)))+1)/2)` -/
def P13742076283097502198.Spec : Prop :=
  ∀ n, P13742076283097502198.a n = A363319 (n + 1)

end A363319

/-! ## A363319.P14082116404900456622

`A004525(∪[2*(n+1)², (2*n+1)²])`
-/

namespace A363319.P14082116404900456622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n)

end

end A363319.P14082116404900456622

namespace A363319

/-- `A004525(∪[2*(n+1)², (2*n+1)²])` -/
def P14082116404900456622.Spec : Prop :=
  ∀ n, P14082116404900456622.a n = A363319 (n + 1)

end A363319

/-! ## A363319.P2744943941330599957

`A004525(A096033(n+1))`
-/

namespace A363319.P2744943941330599957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A096033 (n + 1)).toNat

end

end A363319.P2744943941330599957

namespace A363319

/-- `A004525(A096033(n+1))` -/
def P2744943941330599957.Spec : Prop :=
  ∀ n, P2744943941330599957.a n = A363319 (n + 1)

end A363319

/-! ## A363319.P11994968745948383523

`A008619(A155946(n+1))`
-/

namespace A363319.P11994968745948383523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A155946 (n + 1)).toNat

end

end A363319.P11994968745948383523

namespace A363319

/-- `A008619(A155946(n+1))` -/
def P11994968745948383523.Spec : Prop :=
  ∀ n, P11994968745948383523.a n = A363319 (n + 1)

end A363319

/-! ## A363319.P2339812080991492592

`A110654(eq[2, A214304(n)])`
-/

namespace A363319.P2339812080991492592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A363319.P2339812080991492592

namespace A363319

/-- `A110654(eq[2, A214304(n)])` -/
def P2339812080991492592.Spec : Prop :=
  ∀ n, P2339812080991492592.a n = A363319 (n + 1)

end A363319

/-! ## A363319.P11497961714216282661

`A004526(A096033(n+1)+1)`
-/

namespace A363319.P11497961714216282661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A096033 (n + 1) + 1).toNat

end

end A363319.P11497961714216282661

namespace A363319

/-- `A004526(A096033(n+1)+1)` -/
def P11497961714216282661.Spec : Prop :=
  ∀ n, P11497961714216282661.a n = A363319 (n + 1)

end A363319

/-!
# A363320: a(n) is the product of the frequencies of the distinct values obtained when the Euler totient function is applied to the divisors of n.

The programs for A363320, there is no canonical definition to state claims against.
-/

/-! ## A363320.P14407410730935728658

`A101872(A319344(n+1))`
-/

namespace A363320.P14407410730935728658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101872 (A319344 (n + 1)).toNat

end

end A363320.P14407410730935728658

/-! ## A363320.P9278446355215662101

`A005361(2*A319344(n+1))`
-/

namespace A363320.P9278446355215662101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (2 * A319344 (n + 1)).toNat

end

end A363320.P9278446355215662101

/-! ## A363320.P12793752173677213940

`gcd(A005574(A255919(n+2)), A327475(n))`
-/

namespace A363320.P12793752173677213940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005574 (A255919 (n + 2)).toNat) (A327475 n)

end

end A363320.P12793752173677213940

/-! ## A363320.P8698560449711697702

`gcd(A089554(A183127(3*n+1)), A183103(n+1))`
-/

namespace A363320.P8698560449711697702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089554 (A183127 (3 * n + 1)).toNat) (A183103 (n + 1))

end

end A363320.P8698560449711697702

/-! ## A363320.P9365599318176854648

`A211452(A211096(n))`
-/

namespace A363320.P9365599318176854648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211452 (A211096 n).toNat

end

end A363320.P9365599318176854648

/-!
# A363329: a(n) is the number of divisors of n that are both coreful and infinitary.

The programs for A363329, the canonical program `A363329.P11768281149440784561` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363329 has offset 1).

The definition of A363329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363329.P11768281149440784561

`∏{e}[n+1, A038573(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A363329

/-- `∏{e}[n+1, A038573(#)]` -/
def P11768281149440784561.Spec : Prop :=
  ∀ n, P11768281149440784561.a n = A363329 (n + 1)

theorem P11768281149440784561.correct : P11768281149440784561.Spec := by
  intro n
  simp only [A363329, Nat.add_sub_cancel]

end A363329

/-! ## A363329.P15376932746604497209

`∏{e}[n+1, A001316(#)-1]`
-/

namespace A363329.P15376932746604497209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A001316 (Nat.factorization (f1 n) p) - 1)

end

end A363329.P15376932746604497209

namespace A363329

/-- `∏{e}[n+1, A001316(#)-1]` -/
def P15376932746604497209.Spec : Prop :=
  ∀ n, P15376932746604497209.a n = A363329 (n + 1)

end A363329

/-! ## A363329.P13868598645386961150

`∏{e}[n+1, A000225(A000120(#))]`
-/

namespace A363329.P13868598645386961150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000225 (A000120 (Nat.factorization (f1 n) p)).toNat

end

end A363329.P13868598645386961150

namespace A363329

/-- `∏{e}[n+1, A000225(A000120(#))]` -/
def P13868598645386961150.Spec : Prop :=
  ∀ n, P13868598645386961150.a n = A363329 (n + 1)

end A363329

/-! ## A363329.P14265844035874909122

`∏{e}[n+1, A006257(A006257(#))]`
-/

namespace A363329.P14265844035874909122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A006257 (A006257 (Nat.factorization (f1 n) p)).toNat

end

end A363329.P14265844035874909122

namespace A363329

/-- `∏{e}[n+1, A006257(A006257(#))]` -/
def P14265844035874909122.Spec : Prop :=
  ∀ n, P14265844035874909122.a n = A363329 (n + 1)

end A363329

/-! ## A363329.P13087181874048383984

`∏{e}[n+1, A155828(A001317(#))]`
-/

namespace A363329.P13087181874048383984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A155828 (A001317 (Nat.factorization (f1 n) p)).toNat

end

end A363329.P13087181874048383984

namespace A363329

/-- `∏{e}[n+1, A155828(A001317(#))]` -/
def P13087181874048383984.Spec : Prop :=
  ∀ n, P13087181874048383984.a n = A363329 (n + 1)

end A363329

/-! ## A363329.P1194257642136959690

`A038712(A088218(∏{e}[n+1, #]))`
-/

namespace A363329.P1194257642136959690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A088218 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat

end

end A363329.P1194257642136959690

namespace A363329

/-- `A038712(A088218(∏{e}[n+1, #]))` -/
def P1194257642136959690.Spec : Prop :=
  ∀ n, P1194257642136959690.a n = A363329 (n + 1)

end A363329

/-! ## A363329.P2123874533769712866

`A062756(∏{e}[n+1, 2^#-1]²)`
-/

namespace A363329.P2123874533769712866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 ((∏ p ∈ Nat.primeFactors (f1 n), ((2 ^ Nat.factorization (f1 n) p : ℤ) - 1)) ^ 2).toNat

end

end A363329.P2123874533769712866

namespace A363329

/-- `A062756(∏{e}[n+1, 2^#-1]²)` -/
def P2123874533769712866.Spec : Prop :=
  ∀ n, P2123874533769712866.a n = A363329 (n + 1)

end A363329

/-! ## A363329.P10204851855580068863

`∏{e}[n+1, A111951(A279680(#))]`
-/

namespace A363329.P10204851855580068863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A111951 (A279680 (Nat.factorization (f1 n) p)).toNat

end

end A363329.P10204851855580068863

namespace A363329

/-- `∏{e}[n+1, A111951(A279680(#))]` -/
def P10204851855580068863.Spec : Prop :=
  ∀ n, P10204851855580068863.a n = A363329 (n + 1)

end A363329

/-! ## A363329.P15003193480958324650

`A051699(A000079(∏{e}[n+1, #])²)`
-/

namespace A363329.P15003193480958324650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A000079 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) ^ 2).toNat

end

end A363329.P15003193480958324650

namespace A363329

/-- `A051699(A000079(∏{e}[n+1, #])²)` -/
def P15003193480958324650.Spec : Prop :=
  ∀ n, P15003193480958324650.a n = A363329 (n + 1)

end A363329

/-! ## A363329.P2496126069773804788

`A325975(A343830(∏{e}[n+1, #])+2)`
-/

namespace A363329.P2496126069773804788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325975 (A343830 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + 2).toNat

end

end A363329.P2496126069773804788

namespace A363329

/-- `A325975(A343830(∏{e}[n+1, #])+2)` -/
def P2496126069773804788.Spec : Prop :=
  ∀ n, P2496126069773804788.a n = A363329 (n + 1)

end A363329

/-! ## A363329.P14630178583228325985

`A038712(A235791(∏{e}[n+1, #^4]))`
-/

namespace A363329.P14630178583228325985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A235791 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 4)).toNat

end

end A363329.P14630178583228325985

namespace A363329

/-- `A038712(A235791(∏{e}[n+1, #^4]))` -/
def P14630178583228325985.Spec : Prop :=
  ∀ n, P14630178583228325985.a n = A363329 (n + 1)

end A363329

/-! ## A363329.P16889734895079607263

`A038712(A235791(∏{e}[n+1, #²]²))`
-/

namespace A363329.P16889734895079607263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A235791 ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2) ^ 2)).toNat

end

end A363329.P16889734895079607263

namespace A363329

/-- `A038712(A235791(∏{e}[n+1, #²]²))` -/
def P16889734895079607263.Spec : Prop :=
  ∀ n, P16889734895079607263.a n = A363329 (n + 1)

end A363329

/-! ## A363329.P810572825738689312

`A093829(A000203((n+1)/∏{p}[n+1, #])²)`
-/

namespace A363329.P810572825738689312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat ^ 2).toNat

end

end A363329.P810572825738689312

namespace A363329

/-- `A093829(A000203((n+1)/∏{p}[n+1, #])²)` -/
def P810572825738689312.Spec : Prop :=
  ∀ n, P810572825738689312.a n = A363329 (n + 1)

end A363329

/-! ## A363329.P11581522828949381505

`2-A008836(A034718(n+1))`
-/

namespace A363329.P11581522828949381505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A008836 (A034718 (n + 1)).toNat

end

end A363329.P11581522828949381505

namespace A363329

/-- `2-A008836(A034718(n+1))` -/
def P11581522828949381505.Spec : Prop :=
  ∀ n, P11581522828949381505.a n = A363329 (n + 1)

end A363329

/-! ## A363329.P15518544392103582023

`A139351(A392451(n+1)²²)`
-/

namespace A363329.P15518544392103582023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 ((A392451 (n + 1) ^ 2) ^ 2).toNat

end

end A363329.P15518544392103582023

namespace A363329

/-- `A139351(A392451(n+1)²²)` -/
def P15518544392103582023.Spec : Prop :=
  ∀ n, P15518544392103582023.a n = A363329 (n + 1)

end A363329

/-! ## A363329.P12592562270788919109

`A275367(A303915((n+1)²))`
-/

namespace A363329.P12592562270788919109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275367 (A303915 ((n + 1) ^ 2)).toNat

end

end A363329.P12592562270788919109

namespace A363329

/-- `A275367(A303915((n+1)²))` -/
def P12592562270788919109.Spec : Prop :=
  ∀ n, P12592562270788919109.a n = A363329 (n + 1)

end A363329

/-! ## A363329.P2051899679333323185

`A362852(A331737(n+1)²)`
-/

namespace A363329.P2051899679333323185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362852 (A331737 (n + 1) ^ 2).toNat

end

end A363329.P2051899679333323185

namespace A363329

/-- `A362852(A331737(n+1)²)` -/
def P2051899679333323185.Spec : Prop :=
  ∀ n, P2051899679333323185.a n = A363329 (n + 1)

end A363329

/-!
# A363330: Numbers with a record number of divisors that are both coreful and infinitary.

The programs for A363330, there is no canonical definition to state claims against.
-/

/-! ## A363330.P17187264874406821079

`A331188(A231334(n+1)^4)`
-/

namespace A363330.P17187264874406821079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (A231334 (n + 1) ^ 4).toNat

end

end A363330.P17187264874406821079

/-! ## A363330.P17684267571916865117

`A333931(A141769(n+1))^3*A000142(A084532(n+1))`
-/

namespace A363330.P17684267571916865117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333931 (A141769 (n + 1)).toNat ^ 3 * A000142 (A084532 (n + 1)).toNat

end

end A363330.P17684267571916865117

/-!
# A363332: a(n) is the number of divisors of n that are both coreful and bi-unitary.

The programs for A363332, the canonical program `A363332.P9026878792141074640` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363332 has offset 1).

The definition of A363332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363332.P9026878792141074640

`∏{e}[n+1, or(1, #-1)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A363332

/-- `∏{e}[n+1, or(1, #-1)]` -/
def P9026878792141074640.Spec : Prop :=
  ∀ n, P9026878792141074640.a n = A363332 (n + 1)

theorem P9026878792141074640.correct : P9026878792141074640.Spec := by
  intro n
  simp only [A363332, Nat.add_sub_cancel]

end A363332

/-! ## A363332.P18405456187905091404

`∏{e}[n+1, -or(1, -#)]`
-/

namespace A363332.P18405456187905091404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-Int.lor 1 (-(Nat.factorization (f1 n) p : ℤ)))

end

end A363332.P18405456187905091404

namespace A363332

/-- `∏{e}[n+1, -or(1, -#)]` -/
def P18405456187905091404.Spec : Prop :=
  ∀ n, P18405456187905091404.a n = A363332 (n + 1)

end A363332

/-! ## A363332.P12034224367689569783

`∏{e}[((n+1)/∏{p}[n+1, #^val(n+1, #²)])²/∏{p}[n+1, #], #]`
-/

namespace A363332.P12034224367689569783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)) ^ 2 / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A363332.P12034224367689569783

namespace A363332

/-- `∏{e}[((n+1)/∏{p}[n+1, #^val(n+1, #²)])²/∏{p}[n+1, #], #]` -/
def P12034224367689569783.Spec : Prop :=
  ∀ n, (P12034224367689569783.a n : ℤ) = A363332 (n + 1)

end A363332

/-! ## A363332.P15925561673651145742

`∏{e}[A350390(n+1), #]`
-/

namespace A363332.P15925561673651145742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350390 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A363332.P15925561673651145742

namespace A363332

/-- `∏{e}[A350390(n+1), #]` -/
def P15925561673651145742.Spec : Prop :=
  ∀ n, (P15925561673651145742.a n : ℤ) = A363332 (n + 1)

end A363332

/-! ## A363332.P8901926127579683125

`∏{e}[A368170(n+1), #]`
-/

namespace A363332.P8901926127579683125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368170 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A363332.P8901926127579683125

namespace A363332

/-- `∏{e}[A368170(n+1), #]` -/
def P8901926127579683125.Spec : Prop :=
  ∀ n, (P8901926127579683125.a n : ℤ) = A363332 (n + 1)

end A363332

/-! ## A363332.P11342744616324193140

`∏{e}[A390371(n+1), #]`
-/

namespace A363332.P11342744616324193140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390371 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A363332.P11342744616324193140

namespace A363332

/-- `∏{e}[A390371(n+1), #]` -/
def P11342744616324193140.Spec : Prop :=
  ∀ n, (P11342744616324193140.a n : ℤ) = A363332 (n + 1)

end A363332

/-! ## A363332.P16355904236397461102

`∏{e}[n+1, A109613(#-1)]`
-/

namespace A363332.P16355904236397461102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A109613 (Nat.factorization (f1 n) p - 1)

end

end A363332.P16355904236397461102

namespace A363332

/-- `∏{e}[n+1, A109613(#-1)]` -/
def P16355904236397461102.Spec : Prop :=
  ∀ n, P16355904236397461102.a n = A363332 (n + 1)

end A363332

/-! ## A363332.P5226091202886596181

`∏{e}[n+1, #-A196563(#)]`
-/

namespace A363332.P5226091202886596181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - A196563 (Nat.factorization (f1 n) p))

end

end A363332.P5226091202886596181

namespace A363332

/-- `∏{e}[n+1, #-A196563(#)]` -/
def P5226091202886596181.Spec : Prop :=
  ∀ n, P5226091202886596181.a n = A363332 (n + 1)

end A363332

/-! ## A363332.P172830777841207306

`∏{e}[n+1, A212831(2*#)-1]`
-/

namespace A363332.P172830777841207306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A212831 (2 * Nat.factorization (f1 n) p) - 1)

end

end A363332.P172830777841207306

namespace A363332

/-- `∏{e}[n+1, A212831(2*#)-1]` -/
def P172830777841207306.Spec : Prop :=
  ∀ n, P172830777841207306.a n = A363332 (n + 1)

end A363332

/-! ## A363332.P18085712197518198201

`∏{e}[(n+1)/∏{p}[n+1, #^val(n+1, #²)], A062090(#)]`
-/

namespace A363332.P18085712197518198201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A062090 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A363332.P18085712197518198201

namespace A363332

/-- `∏{e}[(n+1)/∏{p}[n+1, #^val(n+1, #²)], A062090(#)]` -/
def P18085712197518198201.Spec : Prop :=
  ∀ n, P18085712197518198201.a n = A363332 (n + 1)

end A363332

/-! ## A363332.P12375082284664648580

`∏{e}[(n+1)/∏{p}[n+1, #^val(n+1, #²)], A324846(#)]`
-/

namespace A363332.P12375082284664648580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A324846 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A363332.P12375082284664648580

namespace A363332

/-- `∏{e}[(n+1)/∏{p}[n+1, #^val(n+1, #²)], A324846(#)]` -/
def P12375082284664648580.Spec : Prop :=
  ∀ n, P12375082284664648580.a n = A363332 (n + 1)

end A363332

/-! ## A363332.P10287565214979229908

`A005361(((n+1)/∏{p}[n+1, #^val(n+1, #²)])²/∏{p}[n+1, #])`
-/

namespace A363332.P10287565214979229908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)) ^ 2 / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A363332.P10287565214979229908

namespace A363332

/-- `A005361(((n+1)/∏{p}[n+1, #^val(n+1, #²)])²/∏{p}[n+1, #])` -/
def P10287565214979229908.Spec : Prop :=
  ∀ n, P10287565214979229908.a n = A363332 (n + 1)

end A363332

/-! ## A363332.P9743538672764274068

`A005361(A350390(n+1))`
-/

namespace A363332.P9743538672764274068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A350390 (n + 1)).toNat

end

end A363332.P9743538672764274068

namespace A363332

/-- `A005361(A350390(n+1))` -/
def P9743538672764274068.Spec : Prop :=
  ∀ n, P9743538672764274068.a n = A363332 (n + 1)

end A363332

/-! ## A363332.P13607628373102023678

`A000005(A295657(n+1)²)`
-/

namespace A363332.P13607628373102023678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A295657 (n + 1) ^ 2).toNat

end

end A363332.P13607628373102023678

namespace A363332

/-- `A000005(A295657(n+1)²)` -/
def P13607628373102023678.Spec : Prop :=
  ∀ n, P13607628373102023678.a n = A363332 (n + 1)

end A363332

/-! ## A363332.P9098277061779822572

`∏{e}[A019554(n+1), A004273(#)]`
-/

namespace A363332.P9098277061779822572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004273 (Nat.factorization (f1 n).natAbs p)

end

end A363332.P9098277061779822572

namespace A363332

/-- `∏{e}[A019554(n+1), A004273(#)]` -/
def P9098277061779822572.Spec : Prop :=
  ∀ n, P9098277061779822572.a n = A363332 (n + 1)

end A363332

/-! ## A363332.P6811185881983178857

`A000005((n+1)/A066990(n+1))`
-/

namespace A363332.P6811185881983178857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A066990 (n + 1) : ℚ))).toNat

end

end A363332.P6811185881983178857

namespace A363332

/-- `A000005((n+1)/A066990(n+1))` -/
def P6811185881983178857.Spec : Prop :=
  ∀ n, P6811185881983178857.a n = A363332 (n + 1)

end A363332

/-! ## A363332.P12965700910104382799

`∏{e}[((n+1)/∏{p}[n+1, #^val(n+1, #²)])², A002113(#)]`
-/

namespace A363332.P12965700910104382799
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A002113 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A363332.P12965700910104382799

namespace A363332

/-- `∏{e}[((n+1)/∏{p}[n+1, #^val(n+1, #²)])², A002113(#)]` -/
def P12965700910104382799.Spec : Prop :=
  ∀ n, P12965700910104382799.a n = A363332 (n + 1)

end A363332

/-! ## A363332.P6125340256783374216

`∏{e}[((n+1)/∏{p}[n+1, #^val(n+1, #²)])², A056561(#)]`
-/

namespace A363332.P6125340256783374216
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A056561 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A363332.P6125340256783374216

namespace A363332

/-- `∏{e}[((n+1)/∏{p}[n+1, #^val(n+1, #²)])², A056561(#)]` -/
def P6125340256783374216.Spec : Prop :=
  ∀ n, P6125340256783374216.a n = A363332 (n + 1)

end A363332

/-! ## A363332.P8461876642884706659

`∏{e}[((n+1)/∏{p}[n+1, #^val(n+1, #²)])², A156552(#)]`
-/

namespace A363332.P8461876642884706659
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A156552 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A363332.P8461876642884706659

namespace A363332

/-- `∏{e}[((n+1)/∏{p}[n+1, #^val(n+1, #²)])², A156552(#)]` -/
def P8461876642884706659.Spec : Prop :=
  ∀ n, P8461876642884706659.a n = A363332 (n + 1)

end A363332

/-! ## A363332.P16757701212055389268

`∏{e}[((n+1)/∏{p}[n+1, #^val(n+1, #²)])², A201060(#)]`
-/

namespace A363332.P16757701212055389268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A201060 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A363332.P16757701212055389268

namespace A363332

/-- `∏{e}[((n+1)/∏{p}[n+1, #^val(n+1, #²)])², A201060(#)]` -/
def P16757701212055389268.Spec : Prop :=
  ∀ n, P16757701212055389268.a n = A363332 (n + 1)

end A363332

/-!
# A363333: Numbers with a record number of divisors that are both coreful and bi-unitary.

The programs for A363333, there is no canonical definition to state claims against.
-/

/-! ## A363333.P12917129622368567366

`record[A350389(A005934(n+1))]`
-/

namespace A363333.P12917129622368567366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (A005934 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363333.P12917129622368567366

/-! ## A363333.P11305202752167681440

`record[A368167(A048250(3*(n+1)))]`
-/

namespace A363333.P11305202752167681440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368167 (A048250 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363333.P11305202752167681440

/-! ## A363333.P5451006425025559928

`record[A368170(A048250(3*n+3))]`
-/

namespace A363333.P5451006425025559928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368170 (A048250 (3 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363333.P5451006425025559928

/-!
# A363336: G.f. satisfies A(x) = exp( Sum_{k>=1} A(x^(3*k)) * x^k/k ).

The programs for A363336, there is no canonical definition to state claims against.
-/

/-! ## A363336.P8904434391596911745

`A048766(A193844(n)+A010752(n+2))`
-/

namespace A363336.P8904434391596911745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A193844 n + A010752 (n + 2)).toNat

end

end A363336.P8904434391596911745

/-!
# A363337: G.f. satisfies A(x) = exp( Sum_{k>=1} A(x^(4*k)) * x^k/k ).

The programs for A363337, there is no canonical definition to state claims against.
-/

/-! ## A363337.P9283759686599830936

`A035451(n)+∑[A025456(A104144(n))]`
-/

namespace A363337.P9283759686599830936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 (A104144 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035451 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363337.P9283759686599830936

/-! ## A363337.P18022103272263771388

`A035451(n)+A010051(A252130(n+1))`
-/

namespace A363337.P18022103272263771388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035451 n + A010051 (A252130 (n + 1)).toNat

end

end A363337.P18022103272263771388

/-! ## A363337.P9388932787646337588

`A391623(A035451(n))%A230310(3*n+1)`
-/

namespace A363337.P9388932787646337588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391623 (A035451 n).toNat) (A230310 (3 * n + 1))

end

end A363337.P9388932787646337588

/-!
# A363338: G.f. satisfies A(x) = exp( Sum_{k>=1} (-1)^(k+1) * A(x^(3*k)) * x^k/k ).

The programs for A363338, there is no canonical definition to state claims against.
-/

/-! ## A363338.P17864045575387412589

`A151666(A356237(3*n+4))+A151666(n)`
-/

namespace A363338.P17864045575387412589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151666 (A356237 (3 * n + 4)).toNat + A151666 n

end

end A363338.P17864045575387412589

/-! ## A363338.P7232177733395921416

`A068907(A293702(n+1)+A144553(2*n+1))`
-/

namespace A363338.P7232177733395921416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068907 (A293702 (n + 1) + A144553 (2 * n + 1)).toNat

end

end A363338.P7232177733395921416

/-!
# A363340: a(n) is the smallest positive integer such that a(n) * n is the sum of two squares.

The programs for A363340, the canonical program `A363340.P2606073215060787245` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363340 has offset 1).

The definition of A363340 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, A097706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363340.P7040318319080568035

`(n+1)/A371015(n+1)`
-/

namespace A363340.P7040318319080568035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A371015 (n + 1) : ℚ)

end

end A363340.P7040318319080568035

namespace A363340

/-- `(n+1)/A371015(n+1)` -/
def P7040318319080568035.Spec : Prop :=
  ∀ n, P7040318319080568035.a n = (A363340 (n + 1) : ℚ)

end A363340

/-! ## A363340.P2606073215060787245

`A097706(A007913(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A363340

/-- `A097706(A007913(n+1))` -/
def P2606073215060787245.Spec : Prop :=
  ∀ n, P2606073215060787245.a n = A363340 (n + 1)

theorem P2606073215060787245.correct : P2606073215060787245.Spec := by
  intro n
  simp only [A363340, Nat.add_sub_cancel]

end A363340

/-! ## A363340.P5502462207875872150

`A390693(n+1)/(n+1)`
-/

namespace A363340.P5502462207875872150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390693 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A363340.P5502462207875872150

namespace A363340

/-- `A390693(n+1)/(n+1)` -/
def P5502462207875872150.Spec : Prop :=
  ∀ n, P5502462207875872150.a n = (A363340 (n + 1) : ℚ)

end A363340

/-! ## A363340.P7436145981206665891

`A097706(A364900(n))`
-/

namespace A363340.P7436145981206665891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (A364900 n).toNat

end

end A363340.P7436145981206665891

namespace A363340

/-- `A097706(A364900(n))` -/
def P7436145981206665891.Spec : Prop :=
  ∀ n, P7436145981206665891.a n = A363340 (n + 1)

end A363340

/-! ## A363340.P2353292968676526078

`A097706(A038387(n+1))`
-/

namespace A363340.P2353292968676526078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (A038387 (n + 1)).toNat

end

end A363340.P2353292968676526078

namespace A363340

/-- `A097706(A038387(n+1))` -/
def P2353292968676526078.Spec : Prop :=
  ∀ n, P2353292968676526078.a n = A363340 (n + 1)

end A363340

/-! ## A363340.P11987247949687044424

`A097706(A038389(n+1))`
-/

namespace A363340.P11987247949687044424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (A038389 (n + 1)).toNat

end

end A363340.P11987247949687044424

namespace A363340

/-- `A097706(A038389(n+1))` -/
def P11987247949687044424.Spec : Prop :=
  ∀ n, P11987247949687044424.a n = A363340 (n + 1)

end A363340

/-! ## A363340.P4961024264338240410

`A170819(A071975(n+1))`
-/

namespace A363340.P4961024264338240410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170819 (A071975 (n + 1)).toNat

end

end A363340.P4961024264338240410

namespace A363340

/-- `A170819(A071975(n+1))` -/
def P4961024264338240410.Spec : Prop :=
  ∀ n, P4961024264338240410.a n = A363340 (n + 1)

end A363340

/-! ## A363340.P2996928333664498262

`A147661(A097706(n+1))`
-/

namespace A363340.P2996928333664498262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147661 (A097706 (n + 1)).toNat

end

end A363340.P2996928333664498262

namespace A363340

/-- `A147661(A097706(n+1))` -/
def P2996928333664498262.Spec : Prop :=
  ∀ n, P2996928333664498262.a n = A363340 (n + 1)

end A363340

/-! ## A363340.P10546402219253852535

`A097706(A245474(n+1))`
-/

namespace A363340.P10546402219253852535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (A245474 (n + 1)).toNat

end

end A363340.P10546402219253852535

namespace A363340

/-- `A097706(A245474(n+1))` -/
def P10546402219253852535.Spec : Prop :=
  ∀ n, P10546402219253852535.a n = A363340 (n + 1)

end A363340

/-! ## A363340.P8632977913785013851

`A170819(A350389(n+1))`
-/

namespace A363340.P8632977913785013851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170819 (A350389 (n + 1)).toNat

end

end A363340.P8632977913785013851

namespace A363340

/-- `A170819(A350389(n+1))` -/
def P8632977913785013851.Spec : Prop :=
  ∀ n, P8632977913785013851.a n = A363340 (n + 1)

end A363340

/-! ## A363340.P4619762210753193283

`A170819(A000265(A007913(A000265(n+1))))`
-/

namespace A363340.P4619762210753193283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170819 (A000265 (A007913 (A000265 (n + 1)).toNat).toNat).toNat

end

end A363340.P4619762210753193283

namespace A363340

/-- `A170819(A000265(A007913(A000265(n+1))))` -/
def P4619762210753193283.Spec : Prop :=
  ∀ n, P4619762210753193283.a n = A363340 (n + 1)

end A363340

/-! ## A363340.P17322214358126601713

`A170819(A007913(2*(n+1)))`
-/

namespace A363340.P17322214358126601713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170819 (A007913 (2 * (n + 1))).toNat

end

end A363340.P17322214358126601713

namespace A363340

/-- `A170819(A007913(2*(n+1)))` -/
def P17322214358126601713.Spec : Prop :=
  ∀ n, P17322214358126601713.a n = A363340 (n + 1)

end A363340

/-! ## A363340.P8906478388400541327

`A170819(2*A245474(n+1))`
-/

namespace A363340.P8906478388400541327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170819 (2 * A245474 (n + 1)).toNat

end

end A363340.P8906478388400541327

namespace A363340

/-- `A170819(2*A245474(n+1))` -/
def P8906478388400541327.Spec : Prop :=
  ∀ n, P8906478388400541327.a n = A363340 (n + 1)

end A363340

/-! ## A363340.P17510318672729458430

`A170819(A007913(n+1)+n+1)`
-/

namespace A363340.P17510318672729458430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170819 (A007913 (n + 1) + (n + 1 : ℤ)).toNat

end

end A363340.P17510318672729458430

namespace A363340

/-- `A170819(A007913(n+1)+n+1)` -/
def P17510318672729458430.Spec : Prop :=
  ∀ n, P17510318672729458430.a n = A363340 (n + 1)

end A363340

/-! ## A363340.P736013157152103877

`A097706(A037449(n+1))`
-/

namespace A363340.P736013157152103877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (A037449 (n + 1)).toNat

end

end A363340.P736013157152103877

namespace A363340

/-- `A097706(A037449(n+1))` -/
def P736013157152103877.Spec : Prop :=
  ∀ n, P736013157152103877.a n = A363340 (n + 1)

end A363340

/-! ## A363340.P17524038054199508137

`A097706(A056135(n+1))`
-/

namespace A363340.P17524038054199508137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (A056135 (n + 1)).toNat

end

end A363340.P17524038054199508137

namespace A363340

/-- `A097706(A056135(n+1))` -/
def P17524038054199508137.Spec : Prop :=
  ∀ n, P17524038054199508137.a n = A363340 (n + 1)

end A363340

/-! ## A363340.P6873257792023007844

`A097706(A204993(n+1))`
-/

namespace A363340.P6873257792023007844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (A204993 (n + 1)).toNat

end

end A363340.P6873257792023007844

namespace A363340

/-- `A097706(A204993(n+1))` -/
def P6873257792023007844.Spec : Prop :=
  ∀ n, P6873257792023007844.a n = A363340 (n + 1)

end A363340

/-! ## A363340.P14610775941825686739

`A007913((n+1)*A371015(n+1))`
-/

namespace A363340.P14610775941825686739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1 : ℤ) * A371015 (n + 1)).toNat

end

end A363340.P14610775941825686739

namespace A363340

/-- `A007913((n+1)*A371015(n+1))` -/
def P14610775941825686739.Spec : Prop :=
  ∀ n, P14610775941825686739.a n = A363340 (n + 1)

end A363340

/-! ## A363340.P17493691817838423568

`A170819(A245474(n+1)²)`
-/

namespace A363340.P17493691817838423568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170819 (A245474 (n + 1) ^ 2).toNat

end

end A363340.P17493691817838423568

namespace A363340

/-- `A170819(A245474(n+1)²)` -/
def P17493691817838423568.Spec : Prop :=
  ∀ n, P17493691817838423568.a n = A363340 (n + 1)

end A363340

/-! ## A363340.P2462896105139890503

`A170819(A055491(n+1))`
-/

namespace A363340.P2462896105139890503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170819 (A055491 (n + 1)).toNat

end

end A363340.P2462896105139890503

namespace A363340

/-- `A170819(A055491(n+1))` -/
def P2462896105139890503.Spec : Prop :=
  ∀ n, P2462896105139890503.a n = A363340 (n + 1)

end A363340

/-!
# A363341: Number of positive integers k <= n such that round(n/k) is odd.

The programs for A363341, the canonical program `A363341.P11856642166053254809` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363341 has offset 1).

The definition of A363341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363341.P11856642166053254809

`A014200(2*(n+1))-(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A363341

/-- `A014200(2*(n+1))-(n+1)` -/
def P11856642166053254809.Spec : Prop :=
  ∀ n, P11856642166053254809.a n = A363341 (n + 1)

theorem P11856642166053254809.correct : P11856642166053254809.Spec := by
  intro n
  simp only [A363341, Nat.add_sub_cancel]

end A363341

/-!
# A363343: Array read by ascending antidiagonals: T(n,k) is the value of the k-th cell on the n-th diagonal from the right of rule-30 1-D cellular automaton, when started from a single ON cell, with n, k >= 1.

The programs for A363343, there is no canonical definition to state claims against.
-/

/-! ## A363343.P1014593300850272470

`A252488(A096465(n))`
-/

namespace A363343.P1014593300850272470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252488 (A096465 n).toNat

end

end A363343.P1014593300850272470

/-! ## A363343.P3456470241279561771

`A039971(A221275(n+1)+1)`
-/

namespace A363343.P3456470241279561771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039971 (A221275 (n + 1) + 1).toNat

end

end A363343.P3456470241279561771

/-! ## A363343.P5022610329981226551

`and(A076670(n+1), A334997(n+1))`
-/

namespace A363343.P5022610329981226551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A076670 (n + 1)) (A334997 (n + 1))

end

end A363343.P5022610329981226551

/-! ## A363343.P100843820447844711

`and(A091459(n+1), A334997(n+1))`
-/

namespace A363343.P100843820447844711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091459 (n + 1)) (A334997 (n + 1))

end

end A363343.P100843820447844711

/-! ## A363343.P12882028219049802563

`and(A273949(n+1), A334997(n+1))`
-/

namespace A363343.P12882028219049802563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A273949 (n + 1)) (A334997 (n + 1))

end

end A363343.P12882028219049802563

/-!
# A363344: Array read by ascending antidiagonals: T(n,k) is the value of the k-th cell on the n-th diagonal from the left of rule-30 1-D cellular automaton, when started from a single ON cell, with n, k >= 1.

The programs for A363344, there is no canonical definition to state claims against.
-/

/-! ## A363344.P14872961100401922625

`A230901(A271044(n+2))`
-/

namespace A363344.P14872961100401922625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230901 (A271044 (n + 2)).toNat

end

end A363344.P14872961100401922625

/-! ## A363344.P1694823814667802909

`A008966(A212121(n+1)+A084938(n))`
-/

namespace A363344.P1694823814667802909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A212121 (n + 1) + A084938 n).toNat

end

end A363344.P1694823814667802909

/-! ## A363344.P15526586933286873334

`and(A171528(A135894(n)), A178788(3*n+4))`
-/

namespace A363344.P15526586933286873334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171528 (A135894 n).toNat) (A178788 (3 * n + 4))

end

end A363344.P15526586933286873334

/-! ## A363344.P9761162820498138538

`A065828(A159924(n+1))`
-/

namespace A363344.P9761162820498138538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065828 (A159924 (n + 1)).toNat

end

end A363344.P9761162820498138538

/-! ## A363344.P11395648294779977902

`A035250(A101479(n))%2`
-/

namespace A363344.P11395648294779977902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035250 (A101479 n).toNat) 2

end

end A363344.P11395648294779977902

/-!
# A363347: Denominator of the continued fraction 1/(2-3/(3-4/(4-5/(...(n-1)-n/(-4))))).

The programs for A363347, there is no canonical definition to state claims against.
-/

/-! ## A363347.P7084005276487743726

`A006530(5*A201236(n+4))`
-/

namespace A363347.P7084005276487743726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (5 * A201236 (n + 4)).toNat

end

end A363347.P7084005276487743726

/-! ## A363347.P17571231122503267116

`A006530(A000330(n+1)*A028875(n+4))`
-/

namespace A363347.P17571231122503267116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000330 (n + 1) * A028875 (n + 4)).toNat

end

end A363347.P17571231122503267116

/-! ## A363347.P17362669490634252341

`A006530(A229525(n+1)^A350910(n+2))`
-/

namespace A363347.P17362669490634252341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A229525 (n + 1) : ℚ) ^ (A350910 (n + 2) : ℤ))).toNat

end

end A363347.P17362669490634252341

/-! ## A363347.P12203907681007661513

`A006530(A108494(2*(n+1))/2*A028875(n+4))`
-/

namespace A363347.P12203907681007661513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A108494 (2 * (n + 1)) : ℚ) / 2 * (A028875 (n + 4) : ℚ))).toNat

end

end A363347.P12203907681007661513

/-!
# A363348: Turn sequence of a non-Eulerian path for drawing an infinite aperiodic tiling based on the "hat" monotile. See the comments section for details.

The programs for A363348, there is no canonical definition to state claims against.
-/

/-! ## A363348.P1814897016173965391

`A363445(n+1)+A000007(A338435(n))`
-/

namespace A363348.P1814897016173965391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363445 (n + 1) + A000007 (A338435 n).toNat

end

end A363348.P1814897016173965391

/-! ## A363348.P18019152372233452835

`A363445(n+1)+A010054(A001248(n+1))`
-/

namespace A363348.P18019152372233452835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363445 (n + 1) + A010054 (A001248 (n + 1)).toNat

end

end A363348.P18019152372233452835

/-! ## A363348.P15853295766725063280

`A363445(n+1)+A000122(A057429(n+1))`
-/

namespace A363348.P15853295766725063280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363445 (n + 1) + A000122 (A057429 (n + 1)).toNat

end

end A363348.P15853295766725063280

/-! ## A363348.P5977215232804477481

`A363445(n+1)+A122841(A073522(n+1))`
-/

namespace A363348.P5977215232804477481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363445 (n + 1) + A122841 (A073522 (n + 1)).toNat

end

end A363348.P5977215232804477481

/-! ## A363348.P8625001557937482266

`A001221(A089819(n+1))*A363445(n+1)`
-/

namespace A363348.P8625001557937482266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A089819 (n + 1)).toNat * A363445 (n + 1)

end

end A363348.P8625001557937482266

/-!
# A363349: Array read by antidiagonals: T(n,k) is the number of equivalence classes of n X k binary matrices under permutation of rows and columns and complementation of columns.

The programs for A363349, there is no canonical definition to state claims against.
-/

/-! ## A363349.P14608956139835038440

`A007306(A362905(n)%A340871(n+1))`
-/

namespace A363349.P14608956139835038440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (Int.tmod (A362905 n) (A340871 (n + 1))).toNat

end

end A363349.P14608956139835038440

/-!
# A363350: Number of n element multisets of length 4 vectors over GF(2) that sum to zero.

The programs for A363350, there is no canonical definition to state claims against.
-/

/-! ## A363350.P8466978628280299115

`A362905(∑[n+5]+5)`
-/

namespace A363350.P8466978628280299115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362905 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A363350.P8466978628280299115

/-!
# A363351: Number of n element multisets of length n vectors over GF(2) that sum to zero.

The programs for A363351, there is no canonical definition to state claims against.
-/

/-! ## A363351.P6993571120995386722

`A362905(∑[4*n])`
-/

namespace A363351.P6993571120995386722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362905 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A363351.P6993571120995386722

/-! ## A363351.P12567362430352206141

`or(A000035(n), A362905(A046092(n)))`
-/

namespace A363351.P12567362430352206141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A362905 (A046092 n).toNat)

end

end A363351.P12567362430352206141

/-! ## A363351.P11164064251410580648

`A362905(A046092(n))+A000007(n+2)`
-/

namespace A363351.P11164064251410580648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362905 (A046092 n).toNat + A000007 (n + 2)

end

end A363351.P11164064251410580648

/-!
# A363354: E.g.f. satisfies A(x) = exp(x * (1 + x * A(x)^3)).

The programs for A363354, there is no canonical definition to state claims against.
-/

/-! ## A363354.P7517203385074249172

`abs(A336450(n!))`
-/

namespace A363354.P7517203385074249172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A336450 (Nat.factorial n)|

end

end A363354.P7517203385074249172

/-!
# A363355: E.g.f. satisfies A(x) = exp(x * A(x) * (1 + x * A(x)^2)).

The programs for A363355, there is no canonical definition to state claims against.
-/

/-! ## A363355.P17656566192738482030

`A057364(n!*C(2*n, n))+1`
-/

namespace A363355.P17656566192738482030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057364 (Nat.factorial n * Nat.choose (2 * n) n) + 1

end

end A363355.P17656566192738482030

/-!
# A363356: E.g.f. satisfies A(x) = exp(x * A(x) * (1 + x * A(x)^3)).

The programs for A363356, there is no canonical definition to state claims against.
-/

/-! ## A363356.P1922411674272466167

`A333404(n²*a(n-1))` with `a(0)=1`
-/

namespace A363356.P1922411674272466167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A333404 ((n ^ 2 : ℤ) * a (n - 1)).toNat

end

end A363356.P1922411674272466167

/-!
# A363357: E.g.f. satisfies A(x) = exp(x * A(x)^2 * (1 + x * A(x))).

The programs for A363357, there is no canonical definition to state claims against.
-/

/-! ## A363357.P17942104565922312343

`A020497(A082004(n!))`
-/

namespace A363357.P17942104565922312343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020497 (A082004 (Nat.factorial n)).toNat

end

end A363357.P17942104565922312343

/-!
# A363358: E.g.f. satisfies A(x) = exp(x * A(x)^2 * (1 + x * A(x)^2)).

The programs for A363358, there is no canonical definition to state claims against.
-/

/-! ## A363358.P5877382202889501690

`A055945(2*A365014(n))`
-/

namespace A363358.P5877382202889501690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (2 * A365014 n).toNat

end

end A363358.P5877382202889501690

/-!
# A363359: Sum of divisors of 4*n-1 of form 4*k+3.

The programs for A363359, the canonical program `A363359.P5416786752996279757` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363359 has offset 1).

The definition of A363359 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363359.P5416786752996279757

`A050452(4*(n+1)-1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A363359

/-- `A050452(4*(n+1)-1)` -/
def P5416786752996279757.Spec : Prop :=
  ∀ n, P5416786752996279757.a n = A363359 (n + 1)

theorem P5416786752996279757.correct : P5416786752996279757.Spec := by
  intro n
  simp only [A363359, Nat.add_sub_cancel]

end A363359

/-! ## A363359.P5230627804508222493

`A239053(n+1)-A363291(n+1)`
-/

namespace A363359.P5230627804508222493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239053 (n + 1) - A363291 (n + 1)

end

end A363359.P5230627804508222493

namespace A363359

/-- `A239053(n+1)-A363291(n+1)` -/
def P5230627804508222493.Spec : Prop :=
  ∀ n, P5230627804508222493.a n = A363359 (n + 1)

end A363359

/-! ## A363359.P14208559294736117180

`A053091(n+1)+A239053(n+1)/2`
-/

namespace A363359.P14208559294736117180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053091 (n + 1) : ℚ) + (A239053 (n + 1) : ℚ) / 2

end

end A363359.P14208559294736117180

namespace A363359

/-- `A053091(n+1)+A239053(n+1)/2` -/
def P14208559294736117180.Spec : Prop :=
  ∀ n, P14208559294736117180.a n = (A363359 (n + 1) : ℚ)

end A363359

/-! ## A363359.P17546731177384772195

`A363392(2*(n+1))`
-/

namespace A363359.P17546731177384772195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363392 (2 * (n + 1))

end

end A363359.P17546731177384772195

namespace A363359

/-- `A363392(2*(n+1))` -/
def P17546731177384772195.Spec : Prop :=
  ∀ n, P17546731177384772195.a n = A363359 (n + 1)

end A363359

/-! ## A363359.P17363969920016506757

`A008438(2*n+1)-A363316(2*(n+1))`
-/

namespace A363359.P17363969920016506757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 (2 * n + 1) - A363316 (2 * (n + 1))

end

end A363359.P17363969920016506757

namespace A363359

/-- `A008438(2*n+1)-A363316(2*(n+1))` -/
def P17363969920016506757.Spec : Prop :=
  ∀ n, P17363969920016506757.a n = A363359 (n + 1)

end A363359

/-! ## A363359.P276597510399571422

`A050460(3*(n+1)+n)`
-/

namespace A363359.P276597510399571422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050460 (3 * (n + 1) + n)

end

end A363359.P276597510399571422

namespace A363359

/-- `A050460(3*(n+1)+n)` -/
def P276597510399571422.Spec : Prop :=
  ∀ n, P276597510399571422.a n = A363359 (n + 1)

end A363359

/-! ## A363359.P2715641597184391030

`A082052(3*(n+1)+n)`
-/

namespace A363359.P2715641597184391030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082052 (3 * (n + 1) + n)

end

end A363359.P2715641597184391030

namespace A363359

/-- `A082052(3*(n+1)+n)` -/
def P2715641597184391030.Spec : Prop :=
  ∀ n, P2715641597184391030.a n = A363359 (n + 1)

end A363359

/-! ## A363359.P10951030934074109176

`A293903(2*record[xor(3, n)])`
-/

namespace A363359.P10951030934074109176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293903 (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A363359.P10951030934074109176

namespace A363359

/-- `A293903(2*record[xor(3, n)])` -/
def P10951030934074109176.Spec : Prop :=
  ∀ n, P10951030934074109176.a n = A363359 (n + 1)

end A363359

/-! ## A363359.P16758397970377763620

`A053091(n+1)+A001281(A239053(n+1))`
-/

namespace A363359.P16758397970377763620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053091 (n + 1) + A001281 (A239053 (n + 1)).toNat

end

end A363359.P16758397970377763620

namespace A363359

/-- `A053091(n+1)+A001281(A239053(n+1))` -/
def P16758397970377763620.Spec : Prop :=
  ∀ n, P16758397970377763620.a n = A363359 (n + 1)

end A363359

/-!
# A363362: Number of connected weakly pancyclic graphs on n unlabeled nodes.

The programs for A363362, there is no canonical definition to state claims against.
-/

/-! ## A363362.P6801890780153343793

`A001349(n+1)-A363363(n+1)`
-/

namespace A363362.P6801890780153343793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A363363 (n + 1)

end

end A363362.P6801890780153343793

/-! ## A363362.P15302619511984581095

`A219842(A047891(n+1)+A003842(n))`
-/

namespace A363362.P15302619511984581095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219842 (A047891 (n + 1) + A003842 n).toNat

end

end A363362.P15302619511984581095

/-! ## A363362.P12293149540664002536

`A076323(n+1)+A049783(A076323(n+1))`
-/

namespace A363362.P12293149540664002536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076323 (n + 1) + A049783 (A076323 (n + 1)).toNat

end

end A363362.P12293149540664002536

/-!
# A363363: Number of connected unlabeled n-node graphs G that are not weakly pancyclic, i.e., there exists an integer k such that G contains a cycle that is longer than k and a cycle that is shorter than k but no cycle of length k.

The programs for A363363, there is no canonical definition to state claims against.
-/

/-! ## A363363.P14274768813882815397

`A001349(n+1)-A363362(n+1)`
-/

namespace A363363.P14274768813882815397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A363362 (n + 1)

end

end A363363.P14274768813882815397

/-! ## A363363.P8621335941524580912

`A059169(A008480(n!))`
-/

namespace A363363.P8621335941524580912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A008480 (Nat.factorial n)).toNat

end

end A363363.P8621335941524580912

/-! ## A363363.P302931874560452229

`A306488(A059188(n+1))`
-/

namespace A363363.P302931874560452229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306488 (A059188 (n + 1)).toNat

end

end A363363.P302931874560452229

/-! ## A363363.P17949486014476360821

`A339218(A298348(n+1))`
-/

namespace A363363.P17949486014476360821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339218 (A298348 (n + 1)).toNat

end

end A363363.P17949486014476360821

/-!
# A363366: Antidiagonal sums of A363365.

The programs for A363366, there is no canonical definition to state claims against.
-/

/-! ## A363366.P2039723327220017764

`A127757(A151100(n+1))`
-/

namespace A363366.P2039723327220017764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A151100 (n + 1)).toNat

end

end A363366.P2039723327220017764

/-! ## A363366.P8113776199779597485

`A282380(4*A001576(n))+n`
-/

namespace A363366.P8113776199779597485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282380 (4 * A001576 n).toNat + (n : ℤ)

end

end A363366.P8113776199779597485

/-!
# A363369: Number of steps x -> x+1 or x/prime required to go from n to 1.

The programs for A363369, there is no canonical definition to state claims against.
-/

/-! ## A363369.P10095889757627959142

`A055640(A165847(n+2)%A165831(n+1))`
-/

namespace A363369.P10095889757627959142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (Int.tmod (A165847 (n + 2)) (A165831 (n + 1))).toNat

end

end A363369.P10095889757627959142

/-! ## A363369.P1362734330663369714

`A001222(gcd(A165840(2*(n+2)), A165840(n+1)))`
-/

namespace A363369.P1362734330663369714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A165840 (2 * (n + 2))) (A165840 (n + 1)))

end

end A363369.P1362734330663369714

/-! ## A363369.P14598892468631120416

`A001222(gcd(A165852(2*(n+2)), A165852(n+1)))`
-/

namespace A363369.P14598892468631120416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A165852 (2 * (n + 2))) (A165852 (n + 1)))

end

end A363369.P14598892468631120416

/-! ## A363369.P6149944152760687648

`A127322(gcd(A165824(2*(n+2)), A165824(n+1)))`
-/

namespace A363369.P6149944152760687648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127322 (Int.gcd (A165824 (2 * (n + 2))) (A165824 (n + 1)))

end

end A363369.P6149944152760687648

/-! ## A363369.P10162323885765037232

`A257991(gcd(A165839(2*(n+2)), A165839(n+1)))`
-/

namespace A363369.P10162323885765037232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (Int.gcd (A165839 (2 * (n + 2))) (A165839 (n + 1)))

end

end A363369.P10162323885765037232

/-!
# A363370: Number of ways to distribute n guards on the corners and walls of a square castle so that each wall has an equal number of guards modulo rotations and reflections.

The programs for A363370, there is no canonical definition to state claims against.
-/

/-! ## A363370.P9405095951898394886

`A341465(n)+A000120(A214202(n))`
-/

namespace A363370.P9405095951898394886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341465 (n + 38) + A000120 (A214202 n).toNat

end

end A363370.P9405095951898394886

/-!
# A363377: Largest positive integer having n holes that can be made using the fewest possible digits.

The programs for A363377, the canonical program `A363377.P7171003822585683104` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363377 has offset 0).

The definition of A363377 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363377.P7171003822585683104

`a(n-1)+10*a(n-2)-10*a(n-3)` with `a(0)=7, a(1)=9, a(2)=8, a(3)=98`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A363377

/-- `a(n-1)+10*a(n-2)-10*a(n-3)` -/
def P7171003822585683104.Spec : Prop :=
  ∀ n, P7171003822585683104.a n = A363377 n

theorem P7171003822585683104.correct : P7171003822585683104.Spec := by
  intro n
  simp only [A363377]

end A363377

/-! ## A363377.P9663140997686040815

`10*a(n-2)+8` with `a(0)=7, a(1)=9, a(2)=8`
-/

namespace A363377.P9663140997686040815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7, 9, 8] fun n a =>
  10 * a (n - 2) + 8

end

end A363377.P9663140997686040815

namespace A363377

/-- `10*a(n-2)+8` -/
def P9663140997686040815.Spec : Prop :=
  ∀ n, (P9663140997686040815.a n : ℤ) = A363377 n

end A363377

/-!
# A363378: Third Lie-Betti number of a cycle graph on n vertices.

The programs for A363378, there is no canonical definition to state claims against.
-/

/-! ## A363378.P3701525271693538096

`A360572(n²+6*(n+1))`
-/

namespace A363378.P3701525271693538096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360572 (n ^ 2 + 6 * (n + 1))

end

end A363378.P3701525271693538096

/-!
# A363379: Numbers k such that the sum of the first k terms of A180405 is composite.

The programs for A363379, there is no canonical definition to state claims against.
-/

/-! ## A363379.P13022765678992220818

`eq[char[A180405(n+1)], A000007(n)]`
-/

namespace A363379.P13022765678992220818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180405 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A363379.P13022765678992220818

/-! ## A363379.P12851356725867103784

`eq[char[A180405(n+1)], A000038(n)]`
-/

namespace A363379.P12851356725867103784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180405 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A363379.P12851356725867103784

/-! ## A363379.P16744296589930715832

`or(A064814(A006382(n)), A346256(n+1))`
-/

namespace A363379.P16744296589930715832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064814 (A006382 n).toNat) (A346256 (n + 1))

end

end A363379.P16744296589930715832

/-! ## A363379.P4406884098118692952

`lt[A046523(A304709(n+1)), A383097(n+3)]`
-/

namespace A363379.P4406884098118692952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A304709 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383097 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A363379.P4406884098118692952

/-!
# A363381: a(n) is the number of distinct n-cell patterns (or quasi-polyominoes) that tile an n X n square.

The programs for A363381, there is no canonical definition to state claims against.
-/

/-! ## A363381.P8197910773340725657

`A124151(∑{d}[n², #]+n+1)`
-/

namespace A363381.P8197910773340725657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124151 (∑ d ∈ Nat.divisors (f1 n), d + (n + 1))

end

end A363381.P8197910773340725657

/-! ## A363381.P3038674276526668578

`A352451(A088218(n)*A113381(n))`
-/

namespace A363381.P3038674276526668578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352451 (A088218 n * A113381 n).toNat

end

end A363381.P3038674276526668578

/-!
# A363382: Three-dimensional polyknights, identifying rotations and reflections.

The programs for A363382, there is no canonical definition to state claims against.
-/

/-! ## A363382.P12452136008035180141

`A382776(n)+A265188(A000680(n))`
-/

namespace A363382.P12452136008035180141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382776 n + A265188 (A000680 n).toNat

end

end A363382.P12452136008035180141

/-!
# A363387: G.f. A(x) satisfies: A(x) = x + x^2 * exp( Sum_{k>=1} A(x^k)^2 / (k*x^k) ).

The programs for A363387, there is no canonical definition to state claims against.
-/

/-! ## A363387.P14323167120128590412

`A134403(A325294(n))`
-/

namespace A363387.P14323167120128590412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134403 (A325294 n).toNat

end

end A363387.P14323167120128590412

/-! ## A363387.P15867687268113246355

`A261104(2*A036611(n)²)`
-/

namespace A363387.P15867687268113246355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (2 * A036611 n ^ 2).toNat

end

end A363387.P15867687268113246355

/-! ## A363387.P10105225040680161667

`A082447(A000142(n))-A381990(n)`
-/

namespace A363387.P10105225040680161667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A000142 n).toNat - A381990 n

end

end A363387.P10105225040680161667

/-! ## A363387.P1865345153323828548

`A151756(A001045(n+1))+A019497(n)`
-/

namespace A363387.P1865345153323828548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151756 (A001045 (n + 1)).toNat + A019497 n

end

end A363387.P1865345153323828548

/-!
# A363388: G.f. A(x) satisfies: A(x) = x + x^2 * exp( Sum_{k>=1} (-1)^(k+1) * A(x^k)^2 / (k*x^k) ).

The programs for A363388, there is no canonical definition to state claims against.
-/

/-! ## A363388.P17882150216332594418

`A287963(n)-A324088(A259046(n+1))`
-/

namespace A363388.P17882150216332594418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287963 n - A324088 (A259046 (n + 1)).toNat

end

end A363388.P17882150216332594418

/-!
# A363389: G.f. A(x) satisfies: A(x) = x * exp(2 * Sum_{k>=1} A(x^k)^2 / (k*x^k) ).

The programs for A363389, there is no canonical definition to state claims against.
-/

/-! ## A363389.P10710000663646515720

`A000625(2*n+1)-A371571(A362204(n))`
-/

namespace A363389.P10710000663646515720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000625 (2 * n + 1) - A371571 (A362204 n).toNat

end

end A363389.P10710000663646515720

/-! ## A363389.P1249093996617426834

`A000625(2*n+1)-A347249(A341917(n+1))`
-/

namespace A363389.P1249093996617426834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000625 (2 * n + 1) - A347249 (A341917 (n + 1)).toNat

end

end A363389.P1249093996617426834

/-!
# A363390: G.f. A(x) satisfies: A(x) = x * exp(2 * Sum_{k>=1} (-1)^(k+1) * A(x^k)^2 / (k*x^k) ).

The programs for A363390, there is no canonical definition to state claims against.
-/

/-! ## A363390.P10368428447684803379

`∑[A338857(a(n-1))-1]` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A363390.P10368428447684803379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7] fun n f1 =>
  A338857 (f1 (n - 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363390.P10368428447684803379

/-!
# A363392: Sum of divisors of 4*n-2 of form 4*k+3.

The programs for A363392, the canonical program `A363392.P17888585954708400925` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363392 has offset 1).

The definition of A363392 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363392.P17888585954708400925

`A050452(4*(n+1)-2)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A363392

/-- `A050452(4*(n+1)-2)` -/
def P17888585954708400925.Spec : Prop :=
  ∀ n, P17888585954708400925.a n = A363392 (n + 1)

theorem P17888585954708400925.correct : P17888585954708400925.Spec := by
  intro n
  simp only [A363392, Nat.add_sub_cancel]

end A363392

/-! ## A363392.P14488100956616290683

`A326050(2*n+1)+2*n+1`
-/

namespace A363392.P14488100956616290683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326050 (2 * n + 1) + (2 * n + 1 : ℤ)

end

end A363392.P14488100956616290683

namespace A363392

/-- `A326050(2*n+1)+2*n+1` -/
def P14488100956616290683.Spec : Prop :=
  ∀ n, P14488100956616290683.a n = A363392 (n + 1)

end A363392

/-! ## A363392.P14949598455656480549

`2*n+1-A326052(2*n+1)`
-/

namespace A363392.P14949598455656480549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A326052 (2 * n + 1)

end

end A363392.P14949598455656480549

namespace A363392

/-- `2*n+1-A326052(2*n+1)` -/
def P14949598455656480549.Spec : Prop :=
  ∀ n, P14949598455656480549.a n = A363392 (n + 1)

end A363392

/-! ## A363392.P3519427298120945946

`A008438(n)-A363316(n+1)`
-/

namespace A363392.P3519427298120945946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 n - A363316 (n + 1)

end

end A363392.P3519427298120945946

namespace A363392

/-- `A008438(n)-A363316(n+1)` -/
def P3519427298120945946.Spec : Prop :=
  ∀ n, P3519427298120945946.a n = A363392 (n + 1)

end A363392

/-! ## A363392.P11909121594553043973

`A082052(Δ[n²])`
-/

namespace A363392.P11909121594553043973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082052 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A363392.P11909121594553043973

namespace A363392

/-- `A082052(Δ[n²])` -/
def P11909121594553043973.Spec : Prop :=
  ∀ n, P11909121594553043973.a n = A363392 (n + 1)

end A363392

/-! ## A363392.P15657709507391085223

`∑{d}[Δ[n²], #%A062828(#)]`
-/

namespace A363392.P15657709507391085223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (d : ℤ) (A062828 d)

end

end A363392.P15657709507391085223

namespace A363392

/-- `∑{d}[Δ[n²], #%A062828(#)]` -/
def P15657709507391085223.Spec : Prop :=
  ∀ n, P15657709507391085223.a n = A363392 (n + 1)

end A363392

/-! ## A363392.P16732174725429301185

`or(char[1], A050452(2*n+1))`
-/

namespace A363392.P16732174725429301185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A050452 (2 * n + 1))

end

end A363392.P16732174725429301185

namespace A363392

/-- `or(char[1], A050452(2*n+1))` -/
def P16732174725429301185.Spec : Prop :=
  ∀ n, P16732174725429301185.a n = A363392 (n + 1)

end A363392

/-! ## A363392.P2866354961687329987

`A008438(n)-A050449(2*n+1)`
-/

namespace A363392.P2866354961687329987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 n - A050449 (2 * n + 1)

end

end A363392.P2866354961687329987

namespace A363392

/-- `A008438(n)-A050449(2*n+1)` -/
def P2866354961687329987.Spec : Prop :=
  ∀ n, P2866354961687329987.a n = A363392 (n + 1)

end A363392

/-! ## A363392.P5526625474099525807

`filter[A050452(2*n+1), A347523(#)]`
-/

namespace A363392.P5526625474099525807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050452 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A363392.P5526625474099525807

namespace A363392

/-- `filter[A050452(2*n+1), A347523(#)]` -/
def P5526625474099525807.Spec : Prop :=
  ∀ n, P5526625474099525807.a n = A363392 (n + 1)

end A363392

/-! ## A363392.P14695913767678876244

`filter[A082052(2*n+1), A347523(#)]`
-/

namespace A363392.P14695913767678876244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082052 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A363392.P14695913767678876244

namespace A363392

/-- `filter[A082052(2*n+1), A347523(#)]` -/
def P14695913767678876244.Spec : Prop :=
  ∀ n, P14695913767678876244.a n = A363392 (n + 1)

end A363392

/-! ## A363392.P13017427529361196868

`A000593(2*n+1)-A363316(n+1)`
-/

namespace A363392.P13017427529361196868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (2 * n + 1) - A363316 (n + 1)

end

end A363392.P13017427529361196868

namespace A363392

/-- `A000593(2*n+1)-A363316(n+1)` -/
def P13017427529361196868.Spec : Prop :=
  ∀ n, P13017427529361196868.a n = A363392 (n + 1)

end A363392

/-! ## A363392.P12841415353073063525

`A326049(2*n+1)+A001065(2*n+1)`
-/

namespace A363392.P12841415353073063525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326049 (2 * n + 1) + A001065 (2 * n + 1)

end

end A363392.P12841415353073063525

namespace A363392

/-- `A326049(2*n+1)+A001065(2*n+1)` -/
def P12841415353073063525.Spec : Prop :=
  ∀ n, P12841415353073063525.a n = A363392 (n + 1)

end A363392

/-! ## A363392.P9143090366587600546

`A000203(2*n+1)-A050449(2*n+1)`
-/

namespace A363392.P9143090366587600546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1) - A050449 (2 * n + 1)

end

end A363392.P9143090366587600546

namespace A363392

/-- `A000203(2*n+1)-A050449(2*n+1)` -/
def P9143090366587600546.Spec : Prop :=
  ∀ n, P9143090366587600546.a n = A363392 (n + 1)

end A363392

/-! ## A363392.P13582333391104388412

`A000593(2*n+1)-A050449(2*n+1)`
-/

namespace A363392.P13582333391104388412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (2 * n + 1) - A050449 (2 * n + 1)

end

end A363392.P13582333391104388412

namespace A363392

/-- `A000593(2*n+1)-A050449(2*n+1)` -/
def P13582333391104388412.Spec : Prop :=
  ∀ n, P13582333391104388412.a n = A363392 (n + 1)

end A363392

/-! ## A363392.P17656146158163597012

`A002129(2*n+1)-A050449(2*n+1)`
-/

namespace A363392.P17656146158163597012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (2 * n + 1) - A050449 (2 * n + 1)

end

end A363392.P17656146158163597012

namespace A363392

/-- `A002129(2*n+1)-A050449(2*n+1)` -/
def P17656146158163597012.Spec : Prop :=
  ∀ n, P17656146158163597012.a n = A363392 (n + 1)

end A363392

/-! ## A363392.P14876077711136026692

`A002131(2*n+1)-A050449(2*n+1)`
-/

namespace A363392.P14876077711136026692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (2 * n + 1) - A050449 (2 * n + 1)

end

end A363392.P14876077711136026692

namespace A363392

/-- `A002131(2*n+1)-A050449(2*n+1)` -/
def P14876077711136026692.Spec : Prop :=
  ∀ n, P14876077711136026692.a n = A363392 (n + 1)

end A363392

/-! ## A363392.P4736988561839493686

`A000203(2*n+1)-A082053(2*n+1)`
-/

namespace A363392.P4736988561839493686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1) - A082053 (2 * n + 1)

end

end A363392.P4736988561839493686

namespace A363392

/-- `A000203(2*n+1)-A082053(2*n+1)` -/
def P4736988561839493686.Spec : Prop :=
  ∀ n, P4736988561839493686.a n = A363392 (n + 1)

end A363392

/-! ## A363392.P13609991158038183115

`A000593(2*n+1)-A082053(2*n+1)`
-/

namespace A363392.P13609991158038183115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (2 * n + 1) - A082053 (2 * n + 1)

end

end A363392.P13609991158038183115

namespace A363392

/-- `A000593(2*n+1)-A082053(2*n+1)` -/
def P13609991158038183115.Spec : Prop :=
  ∀ n, P13609991158038183115.a n = A363392 (n + 1)

end A363392

/-! ## A363392.P16206805656045910636

`A050449(2*n+1)-A050457(2*n+1)`
-/

namespace A363392.P16206805656045910636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (2 * n + 1) - A050457 (2 * n + 1)

end

end A363392.P16206805656045910636

namespace A363392

/-- `A050449(2*n+1)-A050457(2*n+1)` -/
def P16206805656045910636.Spec : Prop :=
  ∀ n, P16206805656045910636.a n = A363392 (n + 1)

end A363392

/-! ## A363392.P13542253478290329139

`A082053(2*n+1)-A050457(2*n+1)`
-/

namespace A363392.P13542253478290329139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082053 (2 * n + 1) - A050457 (2 * n + 1)

end

end A363392.P13542253478290329139

namespace A363392

/-- `A082053(2*n+1)-A050457(2*n+1)` -/
def P13542253478290329139.Spec : Prop :=
  ∀ n, P13542253478290329139.a n = A363392 (n + 1)

end A363392

/-!
# A363393: Triangle read by rows. T(n, k) = [x^k] (2 - Sum_{k=0..n} binomial(n, k)*Euler(k, 1)*(-2*x)^k).

The programs for A363393, there is no canonical definition to state claims against.
-/

/-! ## A363393.P2131760983520931547

`A007318(n)*A155585(A002262(n))`
-/

namespace A363393.P2131760983520931547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A155585 (A002262 n).toNat

end

end A363393.P2131760983520931547

/-!
# A363399: Triangle read by rows. T(n, k) = [x^k] P(n, x), where P(n, x) = Sum_{k=0..n} 2^(n - k) * Sum_{j=0..k} (x^j * binomial(k, j) * (j + 1)^n), (tangent case).

The programs for A363399, there is no canonical definition to state claims against.
-/

/-! ## A363399.P12254256919948450621

`A076014(n+1)*A104709(n)`
-/

namespace A363399.P12254256919948450621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076014 (n + 1) * A104709 n

end

end A363399.P12254256919948450621

