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
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A274300: Arises in study of A000587.

The programs for A274300, there is no canonical definition to state claims against.
-/

/-! ## A274300.P10166173962947358665

`floor(A274301(n)/24)`
-/

namespace A274300.P10166173962947358665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A274301 n : ℚ) / 24⌋

end

end A274300.P10166173962947358665

/-! ## A274300.P7000951990162704769

`round(A274301(n)/24)-A007318(C(2, n))`
-/

namespace A274300.P7000951990162704769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A274301 n : ℚ) / 24) - A007318 (Nat.choose 2 n)

end

end A274300.P7000951990162704769

/-! ## A274300.P2124319422108776807

`round(A274301(n)/24)-A014963(12*n+10)`
-/

namespace A274300.P2124319422108776807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A274301 n : ℚ) / 24) - A014963 (12 * n + 10)

end

end A274300.P2124319422108776807

/-! ## A274300.P13043101347249315128

`round(A274301(n)/24)-abs(A008683(n+1))!`
-/

namespace A274300.P13043101347249315128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A274301 n : ℚ) / 24) - (Nat.factorial |A008683 (n + 1)|.toNat : ℤ)

end

end A274300.P13043101347249315128

/-! ## A274300.P3421490542888393617

`A000587(24*a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=5, a(4)=13, a(5)=13, a(6)=13, a(7)=77, a(8)=77`
-/

namespace A274300.P3421490542888393617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 5, 13, 13, 13, 77, 77] fun n a =>
  A000587 (24 * a (n - 1)).toNat

end

end A274300.P3421490542888393617

/-!
# A274301: a(n) = 24*A274300(n) + 14.

The programs for A274301, there is no canonical definition to state claims against.
-/

/-! ## A274301.P5065714050460172546

`24*A274300(n)+14`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A274301.P5065714050460172546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A274300 n + 14

end

end A274301.P5065714050460172546

/-! ## A274301.P876744465370181155

`A183010(A274300(n))+15`
-/

namespace A274301.P876744465370181155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 (A274300 n).toNat + 15

end

end A274301.P876744465370181155

/-!
# A274303: A bisection of A007346.

The programs for A274303, there is no canonical definition to state claims against.
-/

/-! ## A274303.P5732772229431361972

`A007346(2*(n+1))`
-/

namespace A274303.P5732772229431361972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007346 (2 * (n + 1))

end

end A274303.P5732772229431361972

/-! ## A274303.P16736140078820031919

`lcm(8, A007346(A103517(n)))`
-/

namespace A274303.P16736140078820031919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (A007346 (A103517 n).toNat)

end

end A274303.P16736140078820031919

/-!
# A274304: A bisection of A002866.

The programs for A274304, there is no canonical definition to state claims against.
-/

/-! ## A274304.P5504053833055683225

`(2*n)!*ceil(4^n/2)`
-/

namespace A274304.P5504053833055683225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℤ) * ⌈(4 ^ n : ℚ) / 2⌉

end

end A274304.P5504053833055683225

/-! ## A274304.P17254142380895573227

`4^n*round((2*n)!/2)`
-/

namespace A274304.P17254142380895573227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * SequenceMachineLib.roundAway ((Nat.factorial (2 * n) : ℚ) / 2)

end

end A274304.P17254142380895573227

/-! ## A274304.P5825601990750957399

`record[-((n+2)*a(n-2))]` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A274304.P5825601990750957399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4] fun n f1 =>
  -((n + 2 : ℤ) * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274304.P5825601990750957399

/-! ## A274304.P14449785578338165904

`record[(1-n)*a(n-2)]` with `a(0)=1, a(1)=-4, a(2)=0, a(3)=-1`
-/

namespace A274304.P14449785578338165904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -4, 0, -1] fun n f1 =>
  (1 - (n : ℤ)) * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274304.P14449785578338165904

/-! ## A274304.P13722144009433574461

`A002866(2*n)`
-/

namespace A274304.P13722144009433574461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002866 (2 * n)

end

end A274304.P13722144009433574461

/-!
# A274305: Order of shuffle group generated by in- and out-horseshoe shuffles of a deck of 2n cards.

The programs for A274305, there is no canonical definition to state claims against.
-/

/-! ## A274305.P6855357440866307942

`A014767(2*(n+1))`
-/

namespace A274305.P6855357440866307942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014767 (2 * (n + 1))

end

end A274305.P6855357440866307942

/-! ## A274305.P16089084294736652771

`A014767(A103517(n))+A000007(n)`
-/

namespace A274305.P16089084294736652771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014767 (A103517 n).toNat + A000007 n

end

end A274305.P16089084294736652771

/-!
# A274306: a(n) = Product_{k=1..n} (4*k^4+1).

The programs for A274306, there is no canonical definition to state claims against.
-/

/-! ## A274306.P7332120339104704601

`∏[4*n^4+1]`
-/

namespace A274306.P7332120339104704601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n ^ 4 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A274306.P7332120339104704601

/-! ## A274306.P8816222117037715082

`(4*n^4+1)*a(n-1)` with `a(0)=1`
-/

namespace A274306.P8816222117037715082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (4 * n ^ 4 + 1) * a (n - 1)

end

end A274306.P8816222117037715082

/-! ## A274306.P6433369712172106275

`a(n-1)+(2*n²)²*a(n-1)` with `a(0)=1`
-/

namespace A274306.P6433369712172106275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n ^ 2) ^ 2 * a (n - 1)

end

end A274306.P6433369712172106275

/-! ## A274306.P7873067853927677131

`a(n-1)*A211412(n)` with `a(0)=1`
-/

namespace A274306.P7873067853927677131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A211412 n

end

end A274306.P7873067853927677131

/-! ## A274306.P9443493033579261438

`a(n-1)*A053755(n²)` with `a(0)=1, a(1)=5`
-/

namespace A274306.P9443493033579261438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) * A053755 (n ^ 2)

end

end A274306.P9443493033579261438

/-!
# A274308: Number of n-tuples of singular vectors of a 3 X 3 X 3 X ... X 3 n-dimensional tensor.

The programs for A274308, there is no canonical definition to state claims against.
-/

/-! ## A274308.P15518033694040536350

`A284308(∑[n+2]+4)`
-/

namespace A274308.P15518033694040536350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284308 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A274308.P15518033694040536350

/-! ## A274308.P7733329721093815428

`A308322(∑[n+3]+5)`
-/

namespace A274308.P7733329721093815428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308322 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A274308.P7733329721093815428

/-! ## A274308.P16970895872608193692

`or(1, A284308(A167614(n+1)))`
-/

namespace A274308.P16970895872608193692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A284308 (A167614 (n + 1)).toNat)

end

end A274308.P16970895872608193692

/-! ## A274308.P16085956873457561104

`A284308(A167614(n+1))^A178334(n)`
-/

namespace A274308.P16085956873457561104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284308 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A274308.P16085956873457561104

/-! ## A274308.P4340163752563479243

`lcm(A016287(n), A284308(A167614(n+1)))`
-/

namespace A274308.P4340163752563479243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016287 n) (A284308 (A167614 (n + 1)).toNat)

end

end A274308.P4340163752563479243

/-!
# A274309: Related to integral generalized binomial coefficients of multiplicative functions (see Comments for precise definition).

The programs for A274309, there is no canonical definition to state claims against.
-/

/-! ## A274309.P11431033127848741101

`A119420(A008458(n))%6`
-/

namespace A274309.P11431033127848741101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119420 (A008458 n).toNat) 6

end

end A274309.P11431033127848741101

/-!
# A274310: Triangle read by rows: T(n,k) = number of parity alternating partitions of [n] into k blocks (1 <= k <= m).

The programs for A274310, there is no canonical definition to state claims against.
-/

/-! ## A274310.P15843908991837138197

`A002024(A034801(n)^A185646(n))`
-/

namespace A274310.P15843908991837138197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (SequenceMachineLib.roundAway ((A034801 n : ℚ) ^ (A185646 n : ℤ))).toNat

end

end A274310.P15843908991837138197

/-! ## A274310.P17167897125950981929

`A123229(A034801(n)^A318757(n))`
-/

namespace A274310.P17167897125950981929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (SequenceMachineLib.roundAway ((A034801 n : ℚ) ^ (A318757 n : ℤ))).toNat

end

end A274310.P17167897125950981929

/-! ## A274310.P2045761530620780083

`A000040(A007318(n))-A006345(A226234(n))`
-/

namespace A274310.P2045761530620780083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A007318 n).toNat - A006345 (A226234 n).toNat

end

end A274310.P2045761530620780083

/-! ## A274310.P2486258439690975934

`A000040(A007318(n))-A125311(A210209(n))`
-/

namespace A274310.P2486258439690975934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A007318 n).toNat - A125311 (A210209 n).toNat

end

end A274310.P2486258439690975934

/-! ## A274310.P16008851660724032045

`A087739(A022166(n))`
-/

namespace A274310.P16008851660724032045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087739 (A022166 n).toNat

end

end A274310.P16008851660724032045

/-!
# A274311: a(n) = 15*binomial(n,6)-6*binomial(n-2,4)+binomial(n-4,4).

The programs for A274311, the canonical program `A274311.P17629043609709350306` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274311 has offset 4).

The definition of A274311 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*C(n+4, 6)-6*C(n+2, 4)+C(n, 4)` (program `A274311.P17629043609709350306`, by `A274311.P17629043609709350306.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274311.P17629043609709350306

`15*C(n+4, 6)-6*C(n+2, 4)+C(n, 4)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A274311

/-- `15*C(n+4, 6)-6*C(n+2, 4)+C(n, 4)` -/
def P17629043609709350306.Spec : Prop :=
  ∀ n, P17629043609709350306.a n = A274311 (n + 4)

theorem P17629043609709350306.correct : P17629043609709350306.Spec := by
  intro n
  simp only [A274311, Nat.add_sub_cancel]

end A274311

/-! ## A274311.P5100231468716724845

`A000332(n)+A005582(n)*A161680(n)`
-/

namespace A274311.P5100231468716724845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n + A005582 n * A161680 n

end

end A274311.P5100231468716724845

namespace A274311

/-- `A000332(n)+A005582(n)*A161680(n)` -/
def P5100231468716724845.Spec : Prop :=
  ∀ n, P5100231468716724845.a n = A274311 (n + 4)

end A274311

/-! ## A274311.P16905279920427063120

`A000332(n)+A000332(n+2)*A134227(n+1)`
-/

namespace A274311.P16905279920427063120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n + A000332 (n + 2) * A134227 (n + 1)

end

end A274311.P16905279920427063120

namespace A274311

/-- `A000332(n)+A000332(n+2)*A134227(n+1)` -/
def P16905279920427063120.Spec : Prop :=
  ∀ n, P16905279920427063120.a n = A274311 (n + 4)

end A274311

/-!
# A274312: Number of right-shifted down-sets of size n.

The programs for A274312, there is no canonical definition to state claims against.
-/

/-! ## A274312.P8660083413263553769

`A135660(2*A079289(n+1))`
-/

namespace A274312.P8660083413263553769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (2 * A079289 (n + 1)).toNat

end

end A274312.P8660083413263553769

/-! ## A274312.P8833779519566632360

`A000196(A034887(∑[A038754(n)]))`
-/

namespace A274312.P8833779519566632360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A034887 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A274312.P8833779519566632360

/-! ## A274312.P3777394447585570016

`A004396(A000196(record[A213933(n)]))`
-/

namespace A274312.P3777394447585570016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A000196 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A274312.P3777394447585570016

/-! ## A274312.P1473447310752561356

`A391618(∑[A357182(n)+A349052(n)])`
-/

namespace A274312.P1473447310752561356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357182 n + A349052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391618 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A274312.P1473447310752561356

/-! ## A274312.P9657914823567957630

`A237752(n+1)+A147612(A384069(n))`
-/

namespace A274312.P9657914823567957630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237752 (n + 1) + A147612 (A384069 n).toNat

end

end A274312.P9657914823567957630

/-!
# A274313: The number of conjugacy classes of n X n matrices over GF(2) which are squares of other such matrices.

The programs for A274313, there is no canonical definition to state claims against.
-/

/-! ## A274313.P10641257221483190632

`A100196(A001394(n)-n)`
-/

namespace A274313.P10641257221483190632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A001394 n - (n : ℤ)).toNat

end

end A274313.P10641257221483190632

/-! ## A274313.P593738324957748365

`A100196(A000045(n+3)*A358836(n))`
-/

namespace A274313.P593738324957748365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A000045 (n + 3) * A358836 n).toNat

end

end A274313.P593738324957748365

/-! ## A274313.P6950453605375904001

`A161205(A155084(n))`
-/

namespace A274313.P6950453605375904001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A155084 n).toNat

end

end A274313.P6950453605375904001

/-! ## A274313.P10247445347834197278

`A073188(A393593(n))`
-/

namespace A274313.P10247445347834197278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A393593 n).toNat

end

end A274313.P10247445347834197278

/-!
# A274314: a(n) = number of squares in GL(n,2), the ring of invertible n X n matrices over GF(2).

The programs for A274314, there is no canonical definition to state claims against.
-/

/-! ## A274314.P13817813056718919456

`9*A259587(3*a(n-1)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A274314.P13817813056718919456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  9 * A259587 (3 * a (n - 1) - a (n - 3)).toNat

end

end A274314.P13817813056718919456

/-!
# A274315: First row of infinite Sudoku-type array A269526.

The programs for A274315, there is no canonical definition to state claims against.
-/

/-! ## A274315.P6650052657957077246

`A295563(n)+1`
-/

namespace A274315.P6650052657957077246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295563 n + 1

end

end A274315.P6650052657957077246

/-! ## A274315.P2279431983635869080

`A008619(2*A295563(n))`
-/

namespace A274315.P2279431983635869080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A295563 n).toNat

end

end A274315.P2279431983635869080

/-! ## A274315.P8060054039484374485

`A027656(2*A295563(n))`
-/

namespace A274315.P8060054039484374485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A295563 n).toNat

end

end A274315.P8060054039484374485

/-! ## A274315.P4887248390808416821

`A028242(2*A295563(n))`
-/

namespace A274315.P4887248390808416821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A295563 n).toNat

end

end A274315.P4887248390808416821

/-! ## A274315.P1625323898814366215

`A029579(2*A295563(n))`
-/

namespace A274315.P1625323898814366215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A295563 n).toNat

end

end A274315.P1625323898814366215

/-! ## A274315.P7560356922196612382

`A052938(2*A295563(n))`
-/

namespace A274315.P7560356922196612382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A295563 n).toNat

end

end A274315.P7560356922196612382

/-! ## A274315.P8835261770971805473

`A008620(3*A295563(n))`
-/

namespace A274315.P8835261770971805473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A295563 n).toNat

end

end A274315.P8835261770971805473

/-! ## A274315.P18017244573149663935

`n-(A023443(n)-A295563(n))`
-/

namespace A274315.P18017244573149663935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A295563 n)

end

end A274315.P18017244573149663935

/-! ## A274315.P12368078359730107300

`1-(A106404(A128059(n))-A295563(n))`
-/

namespace A274315.P12368078359730107300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A106404 (A128059 n).toNat - A295563 n)

end

end A274315.P12368078359730107300

/-! ## A274315.P10845063183852227461

`A109613(2*A295563(n))-A295563(n)`
-/

namespace A274315.P10845063183852227461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * A295563 n).toNat - A295563 n

end

end A274315.P10845063183852227461

/-! ## A274315.P2445259354783458012

`A274528(∑[n]+n)+1`
-/

namespace A274315.P2445259354783458012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274528 (∑ j ∈ Finset.range (n + 1), f1 j + n) + 1

end

end A274315.P2445259354783458012

/-! ## A274315.P7562595458005037038

`A269526(∑[n+1])`
-/

namespace A274315.P7562595458005037038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269526 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274315.P7562595458005037038

/-! ## A274315.P7871554346180306105

`A274528(A000217(A269526(A000217(n+1))))`
-/

namespace A274315.P7871554346180306105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274528 (A000217 (A269526 (A000217 (n + 1)).toNat).toNat).toNat

end

end A274315.P7871554346180306105

/-!
# A274316: Second row of infinite Sudoku-type array A269526.

The programs for A274316, there is no canonical definition to state claims against.
-/

/-! ## A274316.P14600911291145936010

`A274528(∑[n+2]-1)+1`
-/

namespace A274316.P14600911291145936010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274528 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + 1

end

end A274316.P14600911291145936010

/-! ## A274316.P7283609400111346227

`A269526(∑[n+2])`
-/

namespace A274316.P7283609400111346227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269526 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274316.P7283609400111346227

/-! ## A274316.P12772178438510886852

`or(char[2], A269526(A000096(n+1)))`
-/

namespace A274316.P12772178438510886852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A269526 (A000096 (n + 1)).toNat)

end

end A274316.P12772178438510886852

/-! ## A274316.P5534522977830545811

`A033999(n)²*A269526(A000096(n+1))`
-/

namespace A274316.P5534522977830545811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A269526 (A000096 (n + 1)).toNat

end

end A274316.P5534522977830545811

/-! ## A274316.P2241054961813398006

`A000034(2*n)*A269526(A000096(n+1))`
-/

namespace A274316.P2241054961813398006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A269526 (A000096 (n + 1)).toNat

end

end A274316.P2241054961813398006

/-! ## A274316.P9441785072176312773

`A269526(A000096(n+1))%A000040(n+2)`
-/

namespace A274316.P9441785072176312773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269526 (A000096 (n + 1)).toNat) (A000040 (n + 2))

end

end A274316.P9441785072176312773

/-! ## A274316.P13484894457792144179

`A009001(2*n)²*A269526(A000096(n+1))`
-/

namespace A274316.P13484894457792144179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) ^ 2 * A269526 (A000096 (n + 1)).toNat

end

end A274316.P13484894457792144179

/-! ## A274316.P1791314022055165491

`A007318(val(n+1, 5))*A269526(A000096(n+1))`
-/

namespace A274316.P1791314022055165491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 5) * A269526 (A000096 (n + 1)).toNat

end

end A274316.P1791314022055165491

/-! ## A274316.P17807153990369093463

`A000041(C(2, 2*n))*A269526(A000096(n+1))`
-/

namespace A274316.P17807153990369093463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A269526 (A000096 (n + 1)).toNat

end

end A274316.P17807153990369093463

/-! ## A274316.P12056046560989693561

`A000108(gcd(n, n+1))*A269526(A000096(n+1))`
-/

namespace A274316.P12056046560989693561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.gcd n (n + 1)) * A269526 (A000096 (n + 1)).toNat

end

end A274316.P12056046560989693561

/-! ## A274316.P17197515613473010411

`A010054(A000217(n))*A269526(A000096(n+1))`
-/

namespace A274316.P17197515613473010411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A000217 n).toNat * A269526 (A000096 (n + 1)).toNat

end

end A274316.P17197515613473010411

/-! ## A274316.P6275726439949810281

`A009195(A082061(n+1))*A269526(A000096(n+1))`
-/

namespace A274316.P6275726439949810281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (A082061 (n + 1)).toNat * A269526 (A000096 (n + 1)).toNat

end

end A274316.P6275726439949810281

/-! ## A274316.P16105614206291946173

`A009195(A082067(n+1))*A269526(A000096(n+1))`
-/

namespace A274316.P16105614206291946173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (A082067 (n + 1)).toNat * A269526 (A000096 (n + 1)).toNat

end

end A274316.P16105614206291946173

/-! ## A274316.P14968960774475557408

`A008683(A014963(n+1))²*A269526(A000096(n+1))`
-/

namespace A274316.P14968960774475557408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A014963 (n + 1)).toNat ^ 2 * A269526 (A000096 (n + 1)).toNat

end

end A274316.P14968960774475557408

/-!
# A274317: Third row of infinite Sudoku-type array A269526.

The programs for A274317, there is no canonical definition to state claims against.
-/

/-! ## A274317.P8862506794518688894

`A274528(∑[n+3])+1`
-/

namespace A274317.P8862506794518688894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274528 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A274317.P8862506794518688894

/-! ## A274317.P7592661043113957795

`A269526(∑[n+3]+1)`
-/

namespace A274317.P7592661043113957795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269526 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A274317.P7592661043113957795

/-! ## A274317.P9129928451660495125

`or(char[1], A269526(A052905(n)+3))`
-/

namespace A274317.P9129928451660495125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A269526 (A052905 n + 3).toNat)

end

end A274317.P9129928451660495125

/-! ## A274317.P12692709599780278621

`(A269526(Δ[A008778(n)])^(1/2))²`
-/

namespace A274317.P12692709599780278621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A269526 (f1 (n + 1) - f1 n).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A274317.P12692709599780278621

/-! ## A274317.P8728086774788407829

`A269526(A055999(n)+4)%(n+2)²`
-/

namespace A274317.P8728086774788407829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269526 (A055999 n + 4).toNat) ((n + 2) ^ 2 : ℤ)

end

end A274317.P8728086774788407829

/-! ## A274317.P8495665087030858906

`A269526(A034856(n+2))%A167499(n)`
-/

namespace A274317.P8495665087030858906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269526 (A034856 (n + 2)).toNat) (A167499 n)

end

end A274317.P8495665087030858906

/-! ## A274317.P18278193273231931726

`A269526(Δ[A008778(n)])+A000007(n+1)`
-/

namespace A274317.P18278193273231931726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269526 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A274317.P18278193273231931726

/-! ## A274317.P18150073036009114802

`A000041(C(2, n+2))*A269526(A034856(n+2))`
-/

namespace A274317.P18150073036009114802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A269526 (A034856 (n + 2)).toNat

end

end A274317.P18150073036009114802

/-! ## A274317.P4744304959217508019

`A110517(A000096(n))*A269526(A052905(n)+3)`
-/

namespace A274317.P4744304959217508019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110517 (A000096 n).toNat * A269526 (A052905 n + 3).toNat

end

end A274317.P4744304959217508019

/-!
# A274318: Main diagonal of infinite Sudoku-type array A269526.

The programs for A274318, there is no canonical definition to state claims against.
-/

/-! ## A274318.P17065770203589831439

`A274528(∑[4*n])+1`
-/

namespace A274318.P17065770203589831439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274528 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A274318.P17065770203589831439

/-! ## A274318.P10981287651037259208

`1+A274528(2*(n²+n))`
-/

namespace A274318.P10981287651037259208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A274528 (2 * (n ^ 2 + n))

end

end A274318.P10981287651037259208

/-! ## A274318.P16291012258754403497

`A008619(2*A274528(∑[4*n]))`
-/

namespace A274318.P16291012258754403497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A274528 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A274318.P16291012258754403497

/-! ## A274318.P3177214463591980803

`A028242(2*A274528(∑[4*n]))`
-/

namespace A274318.P3177214463591980803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A274528 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A274318.P3177214463591980803

/-! ## A274318.P11754726216796381333

`A029579(2*A274528(∑[4*n]))`
-/

namespace A274318.P11754726216796381333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A274528 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A274318.P11754726216796381333

/-! ## A274318.P17314922580177473124

`A008611(3*A274528(∑[4*n]))`
-/

namespace A274318.P17314922580177473124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A274528 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A274318.P17314922580177473124

/-! ## A274318.P14621162105824642543

`A269526(∑[4*n]+1)`
-/

namespace A274318.P14621162105824642543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269526 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A274318.P14621162105824642543

/-! ## A274318.P17443833684437116411

`or(char[3], A269526(A001844(n)))`
-/

namespace A274318.P17443833684437116411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A269526 (A001844 n).toNat)

end

end A274318.P17443833684437116411

/-! ## A274318.P15182455166527026189

`A269526((n+1)²+n²)%(A000040(n+1)+2)`
-/

namespace A274318.P15182455166527026189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269526 ((n + 1) ^ 2 + n ^ 2)) (A000040 (n + 1) + 2)

end

end A274318.P15182455166527026189

/-! ## A274318.P4061109010158685852

`A269526(A001844(n))%A000040(n+2)²`
-/

namespace A274318.P4061109010158685852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269526 (A001844 n).toNat) (A000040 (n + 2) ^ 2)

end

end A274318.P4061109010158685852

/-!
# A274319: Numbers whose digit sum is divisible by 6.

The programs for A274319, the canonical program `A274319.P11083266819951197590` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274319 has offset 1).

The definition of A274319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274319.P11083266819951197590

`∩[3*n, A054683(n+1)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A274319

/-- `∩[3*n, A054683(n+1)]` -/
def P11083266819951197590.Spec : Prop :=
  ∀ n, (P11083266819951197590.a n : ℤ) = A274319 (n + 1)

theorem P11083266819951197590.correct : P11083266819951197590.Spec := by
  intro n
  simp only [A274319, Nat.add_sub_cancel]

end A274319

/-! ## A274319.P4931471854706043816

`∩[A054683(n+1), A008585(n)]`
-/

namespace A274319.P4931471854706043816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274319.P4931471854706043816

namespace A274319

/-- `∩[A054683(n+1), A008585(n)]` -/
def P4931471854706043816.Spec : Prop :=
  ∀ n, (P4931471854706043816.a n : ℤ) = A274319 (n + 1)

end A274319

/-! ## A274319.P11687134047266920420

`eq[0, A010875(A055012(n))]`
-/

namespace A274319.P11687134047266920420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A055012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A274319.P11687134047266920420

namespace A274319

/-- `eq[0, A010875(A055012(n))]` -/
def P11687134047266920420.Spec : Prop :=
  ∀ n, (P11687134047266920420.a n : ℤ) = A274319 (n + 1)

end A274319

/-! ## A274319.P6564122133688798186

`eq[1, dr(A329562(n))]`
-/

namespace A274319.P6564122133688798186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A329562 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274319.P6564122133688798186

namespace A274319

/-- `eq[1, dr(A329562(n))]` -/
def P6564122133688798186.Spec : Prop :=
  ∀ n, (P6564122133688798186.a n : ℤ) = A274319 (n + 1)

end A274319

/-! ## A274319.P14671868207321039923

`eq[0, A007953(n)%6]`
-/

namespace A274319.P14671868207321039923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 n) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A274319.P14671868207321039923

namespace A274319

/-- `eq[0, A007953(n)%6]` -/
def P14671868207321039923.Spec : Prop :=
  ∀ n, (P14671868207321039923.a n : ℤ) = A274319 (n + 1)

end A274319

/-! ## A274319.P7113222484002139469

`∩[A196564(2*n)%2+2*n, 3*n]`
-/

namespace A274319.P7113222484002139469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196564 (2 * n)) 2 + (2 * n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A274319.P7113222484002139469

namespace A274319

/-- `∩[A196564(2*n)%2+2*n, 3*n]` -/
def P7113222484002139469.Spec : Prop :=
  ∀ n, (P7113222484002139469.a n : ℤ) = A274319 (n + 1)

end A274319

/-! ## A274319.P3617726098530947661

`record[gcd(2*(n+1), A007953(3*n)%2)+n]-2`
-/

namespace A274319.P3617726098530947661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) (Int.tmod (A007953 (3 * n)) 2) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 2

end

end A274319.P3617726098530947661

namespace A274319

/-- `record[gcd(2*(n+1), A007953(3*n)%2)+n]-2` -/
def P3617726098530947661.Spec : Prop :=
  ∀ n, P3617726098530947661.a n = A274319 (n + 1)

end A274319

/-! ## A274319.P11985063473501270889

`eq[0, A010875(A007953(n))]`
-/

namespace A274319.P11985063473501270889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A274319.P11985063473501270889

namespace A274319

/-- `eq[0, A010875(A007953(n))]` -/
def P11985063473501270889.Spec : Prop :=
  ∀ n, (P11985063473501270889.a n : ℤ) = A274319 (n + 1)

end A274319

/-! ## A274319.P5970268588484244934

`eq[0, A179081(A088439(n))]`
-/

namespace A274319.P5970268588484244934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (A088439 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A274319.P5970268588484244934

namespace A274319

/-- `eq[0, A179081(A088439(n))]` -/
def P5970268588484244934.Spec : Prop :=
  ∀ n, (P5970268588484244934.a n : ℤ) = A274319 (n + 1)

end A274319

/-! ## A274319.P9175995223098602679

`eq[1, A135694(A028902(n))]`
-/

namespace A274319.P9175995223098602679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135694 (A028902 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A274319.P9175995223098602679

namespace A274319

/-- `eq[1, A135694(A028902(n))]` -/
def P9175995223098602679.Spec : Prop :=
  ∀ n, (P9175995223098602679.a n : ℤ) = A274319 (n + 1)

end A274319

/-! ## A274319.P10641220613798341875

`eq[1, A057079(A118881(n))]`
-/

namespace A274319.P10641220613798341875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (A118881 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A274319.P10641220613798341875

namespace A274319

/-- `eq[1, A057079(A118881(n))]` -/
def P10641220613798341875.Spec : Prop :=
  ∀ n, (P10641220613798341875.a n : ℤ) = A274319 (n + 1)

end A274319

/-! ## A274319.P6954096272397285727

`eq[A087509(n), A179081(n)]`
-/

namespace A274319.P6954096272397285727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087509 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274319.P6954096272397285727

namespace A274319

/-- `eq[A087509(n), A179081(n)]` -/
def P6954096272397285727.Spec : Prop :=
  ∀ n, (P6954096272397285727.a n : ℤ) = A274319 (n + 1)

end A274319

/-! ## A274319.P16982055145391907688

`eq[A131185(n), A179081(n)]`
-/

namespace A274319.P16982055145391907688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274319.P16982055145391907688

namespace A274319

/-- `eq[A131185(n), A179081(n)]` -/
def P16982055145391907688.Spec : Prop :=
  ∀ n, (P16982055145391907688.a n : ℤ) = A274319 (n + 1)

end A274319

/-! ## A274319.P3508921136504450391

`eq[A131715(n), A179081(n)]`
-/

namespace A274319.P3508921136504450391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131715 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274319.P3508921136504450391

namespace A274319

/-- `eq[A131715(n), A179081(n)]` -/
def P3508921136504450391.Spec : Prop :=
  ∀ n, (P3508921136504450391.a n : ℤ) = A274319 (n + 1)

end A274319

/-! ## A274319.P16667538916184402346

`eq[A179081(n), A353327(n)]`
-/

namespace A274319.P16667538916184402346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353327 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274319.P16667538916184402346

namespace A274319

/-- `eq[A179081(n), A353327(n)]` -/
def P16667538916184402346.Spec : Prop :=
  ∀ n, (P16667538916184402346.a n : ℤ) = A274319 (n + 1)

end A274319

/-! ## A274319.P11923427725835283389

`filter[A054683(n+1), A079978(#)]`
-/

namespace A274319.P11923427725835283389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A274319.P11923427725835283389

namespace A274319

/-- `filter[A054683(n+1), A079978(#)]` -/
def P11923427725835283389.Spec : Prop :=
  ∀ n, P11923427725835283389.a n = A274319 (n + 1)

end A274319

/-! ## A274319.P11707185645115050036

`filter[A054683(n+1), A329680(#)]`
-/

namespace A274319.P11707185645115050036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329680 (f1 j).toNat = 1) n)

end

end A274319.P11707185645115050036

namespace A274319

/-- `filter[A054683(n+1), A329680(#)]` -/
def P11707185645115050036.Spec : Prop :=
  ∀ n, P11707185645115050036.a n = A274319 (n + 1)

end A274319

/-! ## A274319.P7056777273250357187

`eq[A179081(n), A266578(n+1)]`
-/

namespace A274319.P7056777273250357187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266578 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274319.P7056777273250357187

namespace A274319

/-- `eq[A179081(n), A266578(n+1)]` -/
def P7056777273250357187.Spec : Prop :=
  ∀ n, (P7056777273250357187.a n : ℤ) = A274319 (n + 1)

end A274319

/-!
# A274320: Least inverse of A073454: Smallest m such that m divided by the primes up to m have exactly n repeated residues.

The programs for A274320, there is no canonical definition to state claims against.
-/

/-! ## A274320.P3998825322611748963

`A338904(A233350(n+2))`
-/

namespace A274320.P3998825322611748963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338904 (A233350 (n + 2)).toNat

end

end A274320.P3998825322611748963

/-!
# A274321: Primes equal to a concatenation of a prime and a nonzero palindromic number.

The programs for A274321, there is no canonical definition to state claims against.
-/

/-! ## A274321.P5478036639431873893

`A109395(C(A137812(n+5), 2))`
-/

namespace A274321.P5478036639431873893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (Nat.choose (A137812 (n + 5)).toNat 2)

end

end A274321.P5478036639431873893

/-! ## A274321.P101656243761209396

`A137812(n+5)%A089521(n+1)`
-/

namespace A274321.P101656243761209396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137812 (n + 5)) (A089521 (n + 1))

end

end A274321.P101656243761209396

/-! ## A274321.P108226144355252238

`A137812(n+5)+A000007(A226136(n+1))`
-/

namespace A274321.P108226144355252238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137812 (n + 5) + A000007 (A226136 (n + 1)).toNat

end

end A274321.P108226144355252238

/-! ## A274321.P3287584354615894093

`∩[A137812(n+1), A384393(n+1)]`
-/

namespace A274321.P3287584354615894093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274321.P3287584354615894093

/-! ## A274321.P12994652651251474558

`∩[A080603(n+1), A236403(n+1)]`
-/

namespace A274321.P12994652651251474558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274321.P12994652651251474558

/-!
# A274322: Number of partitions of n^2 into at most five parts.

The programs for A274322, the canonical program `A274322.P9926579910520313793` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274322 has offset 0).

The definition of A274322 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001401, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A274322.P9926579910520313793

`A001401(n²)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A274322

/-- `A001401(n²)` -/
def P9926579910520313793.Spec : Prop :=
  ∀ n, P9926579910520313793.a n = A274322 n

theorem P9926579910520313793.correct : P9926579910520313793.Spec := by
  intro n
  simp only [A274322]

end A274322

/-! ## A274322.P11068422915338118844

`A001402(n²)-A026812(n²)`
-/

namespace A274322.P11068422915338118844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 (n ^ 2) - A026812 (n ^ 2)

end

end A274322.P11068422915338118844

namespace A274322

/-- `A001402(n²)-A026812(n²)` -/
def P11068422915338118844.Spec : Prop :=
  ∀ n, P11068422915338118844.a n = A274322 n

theorem P11068422915338118844.correct : P11068422915338118844.Spec := by
  intro n
  simp only [A274322, Nat.add_sub_cancel, A274322.P11068422915338118844.a, A274322.P9926579910520313793.a, A001401, A001401.P12728375563230237513.a, A001402, A001402.P12217424370709294362.f1, A001402.P12217424370709294362.a, A026812, A026812.P368867106460486570.a, A001400, A001400.P17105359062635275807.a, A026811, A026811.P6823680176287512686.f1, A026811.P6823680176287512686.a, A037145, A037145.P14292097428719380923.a, A008667, A008667.P1446437464412478859.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274322

/-! ## A274322.P7334563451073257175

`A026811(n²+5)`
-/

namespace A274322.P7334563451073257175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (n ^ 2 + 5)

end

end A274322.P7334563451073257175

namespace A274322

/-- `A026811(n²+5)` -/
def P7334563451073257175.Spec : Prop :=
  ∀ n, P7334563451073257175.a n = A274322 n

end A274322

/-! ## A274322.P15753637572175008204

`and(-1, A001401(A000290(n)))`
-/

namespace A274322.P15753637572175008204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A001401 (A000290 n).toNat)

end

end A274322.P15753637572175008204

namespace A274322

/-- `and(-1, A001401(A000290(n)))` -/
def P15753637572175008204.Spec : Prop :=
  ∀ n, P15753637572175008204.a n = A274322 n

end A274322

/-! ## A274322.P10824206355054492835

`or(char[1], A026811(A117951(n)))`
-/

namespace A274322.P10824206355054492835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A026811 (A117951 n).toNat)

end

end A274322.P10824206355054492835

namespace A274322

/-- `or(char[1], A026811(A117951(n)))` -/
def P10824206355054492835.Spec : Prop :=
  ∀ n, P10824206355054492835.a n = A274322 n

end A274322

/-! ## A274322.P1364853841254430262

`A026811(A117951(n))^A178334(n)`
-/

namespace A274322.P1364853841254430262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026811 (A117951 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A274322.P1364853841254430262

namespace A274322

/-- `A026811(A117951(n))^A178334(n)` -/
def P1364853841254430262.Spec : Prop :=
  ∀ n, P1364853841254430262.a n = (A274322 n : ℚ)

end A274322

/-! ## A274322.P818459409127642436

`gcd(A000038(n), A026811(A117951(n)))`
-/

namespace A274322.P818459409127642436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A026811 (A117951 n).toNat)

end

end A274322.P818459409127642436

namespace A274322

/-- `gcd(A000038(n), A026811(A117951(n)))` -/
def P818459409127642436.Spec : Prop :=
  ∀ n, (P818459409127642436.a n : ℤ) = A274322 n

end A274322

/-! ## A274322.P16800041760032716992

`A109613(n)%2*A026811(A117951(n))`
-/

namespace A274322.P16800041760032716992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109613 n) 2 * A026811 (A117951 n).toNat

end

end A274322.P16800041760032716992

namespace A274322

/-- `A109613(n)%2*A026811(A117951(n))` -/
def P16800041760032716992.Spec : Prop :=
  ∀ n, P16800041760032716992.a n = A274322 n

end A274322

/-! ## A274322.P17064989164515542971

`A026811(A117951(n))^A014963(∑[n+1])`
-/

namespace A274322.P17064989164515542971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026811 (A117951 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A274322.P17064989164515542971

namespace A274322

/-- `A026811(A117951(n))^A014963(∑[n+1])` -/
def P17064989164515542971.Spec : Prop :=
  ∀ n, P17064989164515542971.a n = (A274322 n : ℚ)

end A274322

/-! ## A274322.P13783680954041047538

`log2(A020639(2*(n+1)))*A026811(A117951(n))`
-/

namespace A274322.P13783680954041047538
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A020639 (2 * (n + 1)) : ℝ) * (A026811 (A117951 n).toNat : ℝ)

end

end A274322.P13783680954041047538

namespace A274322

/-- `log2(A020639(2*(n+1)))*A026811(A117951(n))` -/
def P13783680954041047538.Spec : Prop :=
  ∀ n, P13783680954041047538.a n = (A274322 n : ℝ)

end A274322

/-!
# A274323: Number of partitions of n^4 into at most two parts.

The programs for A274323, the canonical program `A274323.P15730840828573365` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274323 has offset 0).

The definition of A274323 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274323.P15730840828573365

`1+floor(n^4/2)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A274323

/-- `1+floor(n^4/2)` -/
def P15730840828573365.Spec : Prop :=
  ∀ n, P15730840828573365.a n = A274323 n

theorem P15730840828573365.correct : P15730840828573365.Spec := by
  intro n
  simp only [A274323]

end A274323

/-! ## A274323.P13953369747320810756

`A008619(n^4)`
-/

namespace A274323.P13953369747320810756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n ^ 4)

end

end A274323.P13953369747320810756

namespace A274323

/-- `A008619(n^4)` -/
def P13953369747320810756.Spec : Prop :=
  ∀ n, P13953369747320810756.a n = A274323 n

theorem P13953369747320810756.correct : P13953369747320810756.Spec := by
  intro n
  simp only [A274323, Nat.add_sub_cancel, A274323.P13953369747320810756.a, A274323.P15730840828573365.a, A008619, A008619.P16053834178911111118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274323

/-! ## A274323.P9459893343802240187

`or(1, floor(n^4/2))`
-/

namespace A274323.P9459893343802240187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(n ^ 4 : ℚ) / 2⌋

end

end A274323.P9459893343802240187

namespace A274323

/-- `or(1, floor(n^4/2))` -/
def P9459893343802240187.Spec : Prop :=
  ∀ n, P9459893343802240187.a n = A274323 n

end A274323

/-! ## A274323.P16568977426787666538

`xor(1, floor(n^4/2))`
-/

namespace A274323.P16568977426787666538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌊(n ^ 4 : ℚ) / 2⌋

end

end A274323.P16568977426787666538

namespace A274323

/-- `xor(1, floor(n^4/2))` -/
def P16568977426787666538.Spec : Prop :=
  ∀ n, P16568977426787666538.a n = A274323 n

end A274323

/-! ## A274323.P18425558816470461438

`ceil(or(1, n^4)/2)`
-/

namespace A274323.P18425558816470461438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (n ^ 4) : ℚ) / 2⌉

end

end A274323.P18425558816470461438

namespace A274323

/-- `ceil(or(1, n^4)/2)` -/
def P18425558816470461438.Spec : Prop :=
  ∀ n, P18425558816470461438.a n = A274323 n

end A274323

/-! ## A274323.P16242086758683222573

`round(or(1, n^4)/2)`
-/

namespace A274323.P16242086758683222573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (n ^ 4) : ℚ) / 2)

end

end A274323.P16242086758683222573

namespace A274323

/-- `round(or(1, n^4)/2)` -/
def P16242086758683222573.Spec : Prop :=
  ∀ n, P16242086758683222573.a n = A274323 n

end A274323

/-! ## A274323.P2552120868009558434

`floor(or(2, n²²)/2)`
-/

namespace A274323.P2552120868009558434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 2 ((n ^ 2) ^ 2) : ℚ) / 2⌋

end

end A274323.P2552120868009558434

namespace A274323

/-- `floor(or(2, n²²)/2)` -/
def P2552120868009558434.Spec : Prop :=
  ∀ n, P2552120868009558434.a n = A274323 n

end A274323

/-! ## A274323.P7060227915007448607

`floor(xor(2, n²²)/2)`
-/

namespace A274323.P7060227915007448607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 2 ((n ^ 2) ^ 2) : ℚ) / 2⌋

end

end A274323.P7060227915007448607

namespace A274323

/-- `floor(xor(2, n²²)/2)` -/
def P7060227915007448607.Spec : Prop :=
  ∀ n, P7060227915007448607.a n = A274323 n

end A274323

/-! ## A274323.P1617549389116010266

`round(cosh(log(n²²+1)))`
-/

namespace A274323.P1617549389116010266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log ((n ^ 2) ^ 2 + 1 : ℝ)))

end

end A274323.P1617549389116010266

namespace A274323

/-- `round(cosh(log(n²²+1)))` -/
def P1617549389116010266.Spec : Prop :=
  ∀ n, P1617549389116010266.a n = A274323 n

end A274323

/-! ## A274323.P522696207219824468

`floor(sinh(log(n²²+3)))`
-/

namespace A274323.P522696207219824468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log ((n ^ 2) ^ 2 + 3 : ℝ))⌋

end

end A274323.P522696207219824468

namespace A274323

/-- `floor(sinh(log(n²²+3)))` -/
def P522696207219824468.Spec : Prop :=
  ∀ n, P522696207219824468.a n = A274323 n

end A274323

/-! ## A274323.P2996063265260691226

`(gcd(2, n)+n^4)/2`
-/

namespace A274323.P2996063265260691226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n + n ^ 4 : ℚ) / 2

end

end A274323.P2996063265260691226

namespace A274323

/-- `(gcd(2, n)+n^4)/2` -/
def P2996063265260691226.Spec : Prop :=
  ∀ n, P2996063265260691226.a n = (A274323 n : ℚ)

end A274323

/-! ## A274323.P18247645807849804821

`ceil(A002523(n)/2)`
-/

namespace A274323.P18247645807849804821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002523 n : ℚ) / 2⌉

end

end A274323.P18247645807849804821

namespace A274323

/-- `ceil(A002523(n)/2)` -/
def P18247645807849804821.Spec : Prop :=
  ∀ n, P18247645807849804821.a n = A274323 n

end A274323

/-! ## A274323.P12756950170911629581

`xor(n²², A010693(n))/2`
-/

namespace A274323.P12756950170911629581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor ((n ^ 2) ^ 2 : ℤ) (A010693 n) : ℚ) / 2

end

end A274323.P12756950170911629581

namespace A274323

/-- `xor(n²², A010693(n))/2` -/
def P12756950170911629581.Spec : Prop :=
  ∀ n, P12756950170911629581.a n = (A274323 n : ℚ)

end A274323

/-! ## A274323.P8723207480639114677

`ceil((n²*A000290(n)+1)/2)`
-/

namespace A274323.P8723207480639114677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n ^ 2 : ℤ) * A000290 n + 1 : ℚ) / 2⌉

end

end A274323.P8723207480639114677

namespace A274323

/-- `ceil((n²*A000290(n)+1)/2)` -/
def P8723207480639114677.Spec : Prop :=
  ∀ n, P8723207480639114677.a n = A274323 n

end A274323

/-! ## A274323.P16286991090166529229

`A099392(n²+1)`
-/

namespace A274323.P16286991090166529229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (n ^ 2 + 1)

end

end A274323.P16286991090166529229

namespace A274323

/-- `A099392(n²+1)` -/
def P16286991090166529229.Spec : Prop :=
  ∀ n, P16286991090166529229.a n = A274323 n

end A274323

/-! ## A274323.P9538481465100480132

`A080827(A253909(n))`
-/

namespace A274323.P9538481465100480132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080827 (A253909 n).toNat

end

end A274323.P9538481465100480132

namespace A274323

/-- `A080827(A253909(n))` -/
def P9538481465100480132.Spec : Prop :=
  ∀ n, P9538481465100480132.a n = A274323 n

end A274323

/-! ## A274323.P1712808339010753625

`A248800(n²)/2`
-/

namespace A274323.P1712808339010753625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248800 (n ^ 2) : ℚ) / 2

end

end A274323.P1712808339010753625

namespace A274323

/-- `A248800(n²)/2` -/
def P1712808339010753625.Spec : Prop :=
  ∀ n, P1712808339010753625.a n = (A274323 n : ℚ)

end A274323

/-! ## A274323.P15677381005440608441

`floor(A059100(n²)/2)`
-/

namespace A274323.P15677381005440608441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059100 (n ^ 2) : ℚ) / 2⌋

end

end A274323.P15677381005440608441

namespace A274323

/-- `floor(A059100(n²)/2)` -/
def P15677381005440608441.Spec : Prop :=
  ∀ n, P15677381005440608441.a n = A274323 n

end A274323

/-! ## A274323.P5981283600570188583

`ceil(A002522(n²)/2)`
-/

namespace A274323.P5981283600570188583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002522 (n ^ 2) : ℚ) / 2⌉

end

end A274323.P5981283600570188583

namespace A274323

/-- `ceil(A002522(n²)/2)` -/
def P5981283600570188583.Spec : Prop :=
  ∀ n, P5981283600570188583.a n = A274323 n

end A274323

/-! ## A274323.P6112588685958018868

`ceil(A098748(n²)/2)`
-/

namespace A274323.P6112588685958018868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A098748 (n ^ 2) : ℚ) / 2⌉

end

end A274323.P6112588685958018868

namespace A274323

/-- `ceil(A098748(n²)/2)` -/
def P6112588685958018868.Spec : Prop :=
  ∀ n, P6112588685958018868.a n = A274323 n

end A274323

/-!
# A274324: Number of partitions of n^3 into at most two parts.

The programs for A274324, the canonical program `A274324.P17569220236766290205` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274324 has offset 0).

The definition of A274324 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274324.P11848984135181465518

`(3+(-1)^n+2*n^3)/4`
-/

namespace A274324.P11848984135181465518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 + (-1) ^ n + (2 * n ^ 3 : ℤ) : ℚ) / 4

end

end A274324.P11848984135181465518

namespace A274324

/-- `(3+(-1)^n+2*n^3)/4` -/
def P11848984135181465518.Spec : Prop :=
  ∀ n, P11848984135181465518.a n = (A274324 n : ℚ)

theorem P11848984135181465518.correct : P11848984135181465518.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A274324, Nat.add_sub_cancel, A274324.P11848984135181465518.a, A274324.P17569220236766290205.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A274324, Nat.add_sub_cancel, A274324.P11848984135181465518.a, A274324.P17569220236766290205.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A274324

/-! ## A274324.P17569220236766290205

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=14, a(4)=33`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A274324

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P17569220236766290205.Spec : Prop :=
  ∀ n, P17569220236766290205.a n = A274324 n

theorem P17569220236766290205.correct : P17569220236766290205.Spec := by
  intro n
  simp only [A274324]

end A274324

/-! ## A274324.P11791142955477114756

`A008619(n^3)`
-/

namespace A274324.P11791142955477114756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n ^ 3)

end

end A274324.P11791142955477114756

namespace A274324

/-- `A008619(n^3)` -/
def P11791142955477114756.Spec : Prop :=
  ∀ n, P11791142955477114756.a n = A274324 n

end A274324

/-! ## A274324.P16072069485488300612

`ceil(or(1, n^3)/2)`
-/

namespace A274324.P16072069485488300612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (n ^ 3) : ℚ) / 2⌉

end

end A274324.P16072069485488300612

namespace A274324

/-- `ceil(or(1, n^3)/2)` -/
def P16072069485488300612.Spec : Prop :=
  ∀ n, P16072069485488300612.a n = A274324 n

end A274324

/-! ## A274324.P18080407585101273948

`round(or(1, n^3)/2)`
-/

namespace A274324.P18080407585101273948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (n ^ 3) : ℚ) / 2)

end

end A274324.P18080407585101273948

namespace A274324

/-- `round(or(1, n^3)/2)` -/
def P18080407585101273948.Spec : Prop :=
  ∀ n, P18080407585101273948.a n = A274324 n

end A274324

/-! ## A274324.P829522659698654846

`floor(cosh(log(n^3+2)))`
-/

namespace A274324.P829522659698654846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (n ^ 3 + 2 : ℝ))⌋

end

end A274324.P829522659698654846

namespace A274324

/-- `floor(cosh(log(n^3+2)))` -/
def P829522659698654846.Spec : Prop :=
  ∀ n, P829522659698654846.a n = A274324 n

end A274324

/-! ## A274324.P63833437937294781

`round(cosh(log(n^3+1)))`
-/

namespace A274324.P63833437937294781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (n ^ 3 + 1 : ℝ)))

end

end A274324.P63833437937294781

namespace A274324

/-- `round(cosh(log(n^3+1)))` -/
def P63833437937294781.Spec : Prop :=
  ∀ n, P63833437937294781.a n = A274324 n

end A274324

/-! ## A274324.P3277925725406064975

`∑[3-∑[a(n-2)-6]]` with `a(0)=2, a(1)=1`
-/

namespace A274324.P3277925725406064975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  f2 (n - 2) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274324.P3277925725406064975

namespace A274324

/-- `∑[3-∑[a(n-2)-6]]` -/
def P3277925725406064975.Spec : Prop :=
  ∀ n, P3277925725406064975.a n = A274324 n

end A274324

/-! ## A274324.P3461980727422515015

`floor(C(∑[2*n], 2)/(n+2)+ϕ)`
-/

namespace A274324.P3461980727422515015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℚ) / (n + 2 : ℚ) : ℝ) + Real.goldenRatio⌋

end

end A274324.P3461980727422515015

namespace A274324

/-- `floor(C(∑[2*n], 2)/(n+2)+ϕ)` -/
def P3461980727422515015.Spec : Prop :=
  ∀ n, P3461980727422515015.a n = A274324 n

end A274324

/-! ## A274324.P3122967501622590788

`A036487(n)+1`
-/

namespace A274324.P3122967501622590788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036487 n + 1

end

end A274324.P3122967501622590788

namespace A274324

/-- `A036487(n)+1` -/
def P3122967501622590788.Spec : Prop :=
  ∀ n, P3122967501622590788.a n = A274324 n

end A274324

/-! ## A274324.P9391237323457246053

`floor(A084380(n)/2)`
-/

namespace A274324.P9391237323457246053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084380 n : ℚ) / 2⌋

end

end A274324.P9391237323457246053

namespace A274324

/-- `floor(A084380(n)/2)` -/
def P9391237323457246053.Spec : Prop :=
  ∀ n, P9391237323457246053.a n = A274324 n

end A274324

/-! ## A274324.P10503263601607571810

`ceil(sqrt(A002604(n))/2)`
-/

namespace A274324.P10503263601607571810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A002604 n : ℝ) / 2⌉

end

end A274324.P10503263601607571810

namespace A274324

/-- `ceil(sqrt(A002604(n))/2)` -/
def P10503263601607571810.Spec : Prop :=
  ∀ n, P10503263601607571810.a n = A274324 n

end A274324

/-! ## A274324.P13812816739971772398

`ceil(sqrt(A060883(n))/2)`
-/

namespace A274324.P13812816739971772398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A060883 n : ℝ) / 2⌉

end

end A274324.P13812816739971772398

namespace A274324

/-- `ceil(sqrt(A060883(n))/2)` -/
def P13812816739971772398.Spec : Prop :=
  ∀ n, P13812816739971772398.a n = A274324 n

end A274324

/-! ## A274324.P6754118428417057236

`floor((A084378(n)-1)/2)`
-/

namespace A274324.P6754118428417057236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084378 n - 1 : ℚ) / 2⌋

end

end A274324.P6754118428417057236

namespace A274324

/-- `floor((A084378(n)-1)/2)` -/
def P6754118428417057236.Spec : Prop :=
  ∀ n, P6754118428417057236.a n = A274324 n

end A274324

/-! ## A274324.P2310968360048956669

`ceil((A061600(n)+n)/2)`
-/

namespace A274324.P2310968360048956669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A061600 n + (n : ℤ) : ℚ) / 2⌉

end

end A274324.P2310968360048956669

namespace A274324

/-- `ceil((A061600(n)+n)/2)` -/
def P2310968360048956669.Spec : Prop :=
  ∀ n, P2310968360048956669.a n = A274324 n

end A274324

/-! ## A274324.P16682451995672012315

`A057566(n+1)-∑[n]`
-/

namespace A274324.P16682451995672012315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057566 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A274324.P16682451995672012315

namespace A274324

/-- `A057566(n+1)-∑[n]` -/
def P16682451995672012315.Spec : Prop :=
  ∀ n, P16682451995672012315.a n = A274324 n

end A274324

/-! ## A274324.P2393909906252227996

`A059841(n)+A036486(n)`
-/

namespace A274324.P2393909906252227996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A036486 n

end

end A274324.P2393909906252227996

namespace A274324

/-- `A059841(n)+A036486(n)` -/
def P2393909906252227996.Spec : Prop :=
  ∀ n, P2393909906252227996.a n = A274324 n

end A274324

/-! ## A274324.P666357718053539164

`A135503(n)+A008619(n)`
-/

namespace A274324.P666357718053539164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A008619 n

end

end A274324.P666357718053539164

namespace A274324

/-- `A135503(n)+A008619(n)` -/
def P666357718053539164.Spec : Prop :=
  ∀ n, P666357718053539164.a n = A274324 n

end A274324

/-! ## A274324.P14624267443818912983

`A158842(n)+A004526(n)`
-/

namespace A274324.P14624267443818912983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158842 n + A004526 n

end

end A274324.P14624267443818912983

namespace A274324

/-- `A158842(n)+A004526(n)` -/
def P14624267443818912983.Spec : Prop :=
  ∀ n, P14624267443818912983.a n = A274324 n

end A274324

/-!
# A274325: Number of partitions of n^5 into at most two parts.

The programs for A274325, the canonical program `A274325.P6992868875536074226` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274325 has offset 0).

The definition of A274325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274325.P12421567285030053465

`(3+(-1)^n+2*n^5)/4`
-/

namespace A274325.P12421567285030053465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 + (-1) ^ n + (2 * n ^ 5 : ℤ) : ℚ) / 4

end

end A274325.P12421567285030053465

namespace A274325

/-- `(3+(-1)^n+2*n^5)/4` -/
def P12421567285030053465.Spec : Prop :=
  ∀ n, P12421567285030053465.a n = (A274325 n : ℚ)

end A274325

/-! ## A274325.P6992868875536074226

`A008619(n^5)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A274325

/-- `A008619(n^5)` -/
def P6992868875536074226.Spec : Prop :=
  ∀ n, P6992868875536074226.a n = A274325 n

theorem P6992868875536074226.correct : P6992868875536074226.Spec := by
  intro n
  simp only [A274325]

end A274325

/-! ## A274325.P10129495933490021380

`ceil(or(1, n^5)/2)`
-/

namespace A274325.P10129495933490021380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (n ^ 5) : ℚ) / 2⌉

end

end A274325.P10129495933490021380

namespace A274325

/-- `ceil(or(1, n^5)/2)` -/
def P10129495933490021380.Spec : Prop :=
  ∀ n, P10129495933490021380.a n = A274325 n

end A274325

/-! ## A274325.P14361074303598521337

`round(or(1, n^5)/2)`
-/

namespace A274325.P14361074303598521337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (n ^ 5) : ℚ) / 2)

end

end A274325.P14361074303598521337

namespace A274325

/-- `round(or(1, n^5)/2)` -/
def P14361074303598521337.Spec : Prop :=
  ∀ n, P14361074303598521337.a n = A274325 n

end A274325

/-! ## A274325.P7680904242658295667

`round(sqrt(C(n*n²²+2, 2)/2))`
-/

namespace A274325.P7680904242658295667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((Nat.choose (n * (n ^ 2) ^ 2 + 2) 2 : ℚ) / 2 : ℝ))

end

end A274325.P7680904242658295667

namespace A274325

/-- `round(sqrt(C(n*n²²+2, 2)/2))` -/
def P7680904242658295667.Spec : Prop :=
  ∀ n, P7680904242658295667.a n = A274325 n

end A274325

/-! ## A274325.P1799667286998427077

`ceil((A000584(n)+1)/2)`
-/

namespace A274325.P1799667286998427077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000584 n + 1 : ℚ) / 2⌉

end

end A274325.P1799667286998427077

namespace A274325

/-- `ceil((A000584(n)+1)/2)` -/
def P1799667286998427077.Spec : Prop :=
  ∀ n, P1799667286998427077.a n = A274325 n

end A274325

/-! ## A274325.P13952455288386543363

`ceil((2-A024003(n))/2)`
-/

namespace A274325.P13952455288386543363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 - A024003 n : ℚ) / 2⌉

end

end A274325.P13952455288386543363

namespace A274325

/-- `ceil((2-A024003(n))/2)` -/
def P13952455288386543363.Spec : Prop :=
  ∀ n, P13952455288386543363.a n = A274325 n

end A274325

/-! ## A274325.P17910398823062035653

`round((n*A000290(n)²+1)/2)`
-/

namespace A274325.P17910398823062035653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) * A000290 n ^ 2 + 1 : ℚ) / 2)

end

end A274325.P17910398823062035653

namespace A274325

/-- `round((n*A000290(n)²+1)/2)` -/
def P17910398823062035653.Spec : Prop :=
  ∀ n, P17910398823062035653.a n = A274325 n

end A274325

/-! ## A274325.P8720317043039253512

`round((n²*A000578(n)+1)/2)`
-/

namespace A274325.P8720317043039253512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n ^ 2 : ℤ) * A000578 n + 1 : ℚ) / 2)

end

end A274325.P8720317043039253512

namespace A274325

/-- `round((n²*A000578(n)+1)/2)` -/
def P8720317043039253512.Spec : Prop :=
  ∀ n, P8720317043039253512.a n = A274325 n

end A274325

/-! ## A274325.P894353390198230209

`A321672(n)+A274324(n)`
-/

namespace A274325.P894353390198230209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321672 n + A274324 n

end

end A274325.P894353390198230209

namespace A274325

/-- `A321672(n)+A274324(n)` -/
def P894353390198230209.Spec : Prop :=
  ∀ n, P894353390198230209.a n = A274325 n

end A274325

/-! ## A274325.P335091240846568101

`round((A191012(n)+A060884(n))/2)`
-/

namespace A274325.P335091240846568101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A191012 n + A060884 n : ℚ) / 2)

end

end A274325.P335091240846568101

namespace A274325

/-- `round((A191012(n)+A060884(n))/2)` -/
def P335091240846568101.Spec : Prop :=
  ∀ n, P335091240846568101.a n = A274325 n

end A274325

/-! ## A274325.P11174341169110970479

`round((n*A089083(A089071(n+1))+1)/2)`
-/

namespace A274325.P11174341169110970479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) * A089083 (A089071 (n + 1)).toNat + 1 : ℚ) / 2)

end

end A274325.P11174341169110970479

namespace A274325

/-- `round((n*A089083(A089071(n+1))+1)/2)` -/
def P11174341169110970479.Spec : Prop :=
  ∀ n, P11174341169110970479.a n = A274325 n

end A274325

/-!
# A274327: Expansion of Product_{n>=1} (1 - x^(4*n))/(1 - x^n)^4 in powers of x.

The programs for A274327, there is no canonical definition to state claims against.
-/

/-! ## A274327.P6471651600804228812

`A160463(n)-A242830(A154921(∑[n]))`
-/

namespace A274327.P6471651600804228812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160463 n - A242830 (A154921 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A274327.P6471651600804228812

/-! ## A274327.P18342608887111015513

`A364534(n)+record[A286953(n)-A185037(n)]`
-/

namespace A274327.P18342608887111015513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286953 n - A185037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364534 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274327.P18342608887111015513

/-!
# A274329: Erase all pairs of contiguous terms that sum up to a prime; the remaining terms rebuild the starting sequence.

The programs for A274329, there is no canonical definition to state claims against.
-/

/-! ## A274329.P13772358888940363982

`A222253(A304337(n+1))+A000038(A016116(n))`
-/

namespace A274329.P13772358888940363982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A304337 (n + 1)).toNat + A000038 (A016116 n).toNat

end

end A274329.P13772358888940363982

/-! ## A274329.P4333430990332006903

`A222253(A304337(n+1))+A010054(A128674(n+1))`
-/

namespace A274329.P4333430990332006903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A304337 (n + 1)).toNat + A010054 (A128674 (n + 1)).toNat

end

end A274329.P4333430990332006903

/-! ## A274329.P18114713001244026324

`A222253(A304337(n+1))+A000038(A260106(n+1))`
-/

namespace A274329.P18114713001244026324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A304337 (n + 1)).toNat + A000038 (A260106 (n + 1)).toNat

end

end A274329.P18114713001244026324

/-!
# A274332: Team size n for which there exists a balanced tournament for 2n+1 players so that in 2n+1 matches each player plays exactly n-1 times with and n times against each other player.

The programs for A274332, there is no canonical definition to state claims against.
-/

/-! ## A274332.P8581440440119265170

`lt[0, tan(∑{e}[2*n+1, #])]`
-/

namespace A274332.P8581440440119265170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan ((∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p : ℕ) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A274332.P8581440440119265170

/-! ## A274332.P16495603604369843476

`lt[∏{e}[2*n+1, #-2], 0]`
-/

namespace A274332.P16495603604369843476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p : ℤ) - 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A274332.P16495603604369843476

/-! ## A274332.P5587251626285221775

`eq[1, ∑{e}[2*n+1, #]%3]`
-/

namespace A274332.P5587251626285221775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274332.P5587251626285221775

/-! ## A274332.P2883188179672481733

`floor(p?[2*n+1]/2)%35`
-/

namespace A274332.P2883188179672481733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌋ 35

end

end A274332.P2883188179672481733

/-! ## A274332.P13853935650224318843

`eq[5, C(5, ∑{e}[2*n+1, #])]`
-/

namespace A274332.P13853935650224318843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 5 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274332.P13853935650224318843

/-!
# A274333: Indices of Lucas numbers having exactly one primitive prime factor.

The programs for A274333, there is no canonical definition to state claims against.
-/

/-! ## A274333.P8637517567384215345

`record[A025480(A152012(n+1))]`
-/

namespace A274333.P8637517567384215345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A152012 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274333.P8637517567384215345

/-! ## A274333.P15983696044980070422

`record[A142150(A152012(floor(n/2)+1))]`
-/

namespace A274333.P15983696044980070422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A152012 (⌊(n : ℚ) / 2⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274333.P15983696044980070422

/-! ## A274333.P3638675781746166346

`ceil(eq[A000035(n), A086597(n+1)]/2)`
-/

namespace A274333.P3638675781746166346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2⌉

end

end A274333.P3638675781746166346

/-! ## A274333.P16795407447284955437

`ceil(eq[A086597(n+1), A266724(n)]/2)`
-/

namespace A274333.P16795407447284955437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2⌉

end

end A274333.P16795407447284955437

/-! ## A274333.P16698101805963949554

`A001057(eq[A000035(n), A086597(n+1)])`
-/

namespace A274333.P16698101805963949554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A274333.P16698101805963949554

/-! ## A274333.P6483644119237351730

`A110654(eq[A000035(n), A086597(n+1)])`
-/

namespace A274333.P6483644119237351730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A274333.P6483644119237351730

/-! ## A274333.P8305336689795380308

`A001057(eq[A086597(n+1), A266724(n)])`
-/

namespace A274333.P8305336689795380308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A274333.P8305336689795380308

/-! ## A274333.P12925573934908467253

`A110654(eq[A086597(n+1), A266724(n)])`
-/

namespace A274333.P12925573934908467253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A274333.P12925573934908467253

/-! ## A274333.P2393419562290816312

`A123108(record[A175542(A152012(n+1))])`
-/

namespace A274333.P2393419562290816312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175542 (A152012 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A274333.P2393419562290816312

/-!
# A274335: Prime numbers with digits abc...z such that (a+b+c+...+z) + (a^b+b^c+c^d+...+y^z) is also a prime number.

The programs for A274335, there is no canonical definition to state claims against.
-/

/-! ## A274335.P10765207637541549275

`∩[A000040(n+1), A125705(n+1)+1]`
-/

namespace A274335.P10765207637541549275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125705 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274335.P10765207637541549275

/-! ## A274335.P10316103118521758040

`eq[A018783(n), A034931(A185328(n+3))]`
-/

namespace A274335.P10316103118521758040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034931 (A185328 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274335.P10316103118521758040

/-! ## A274335.P10719674079743912539

`record[p?[A381048(n+1)]]`
-/

namespace A274335.P10719674079743912539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381048 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274335.P10719674079743912539

/-! ## A274335.P7271951127832645088

`record[A014963(A381048(n+2))]`
-/

namespace A274335.P7271951127832645088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A381048 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274335.P7271951127832645088

/-! ## A274335.P9719304072832296567

`eq[A003415(n), A159314(A153452(n+1))]`
-/

namespace A274335.P9719304072832296567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159314 (A153452 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274335.P9719304072832296567

/-!
# A274339: The period 3 sequence of the iterated sum of deficient divisors function (A187793) starting at 15.

The programs for A274339, the canonical program `A274339.P14161330974772152221` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274339 has offset 1).

The definition of A274339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274339.P14161330974772152221

`a(n-3)` with `a(0)=15, a(1)=24, a(2)=18`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A274339

/-- `a(n-3)` -/
def P14161330974772152221.Spec : Prop :=
  ∀ n, (P14161330974772152221.a n : ℤ) = A274339 (n + 1)

theorem P14161330974772152221.correct : P14161330974772152221.Spec := by
  intro n
  simp only [A274339, Nat.add_sub_cancel]

end A274339

/-!
# A274340: The period 4 sequence of the iterated sum of deficient divisors function (A187793) starting at 19.

The programs for A274340, the canonical program `A274340.P5891894812331933496` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274340 has offset 1).

The definition of A274340 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A187793, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A274340.P5891894812331933496

`A187793(a(n-1))` with `a(0)=19`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A274340

/-- `A187793(a(n-1))` -/
def P5891894812331933496.Spec : Prop :=
  ∀ n, P5891894812331933496.a n = A274340 (n + 1)

theorem P5891894812331933496.correct : P5891894812331933496.Spec := by
  intro n
  simp only [A274340, Nat.add_sub_cancel]

end A274340

/-!
# A274341: Numbers that cannot be represented as ror(x)+rol(x), where ror(x)=A038572(x) is x rotated one binary place to the right, rol(x)=A006257(x) is x rotated one binary place to the left.

The programs for A274341, there is no canonical definition to state claims against.
-/

/-! ## A274341.P4401885874781402428

`comp[A273105(n)]`
-/

namespace A274341.P4401885874781402428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273105 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A274341.P4401885874781402428

/-! ## A274341.P14514559059240821479

`comp[A038572(n)+A006257(n)]`
-/

namespace A274341.P14514559059240821479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 n + A006257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A274341.P14514559059240821479

/-! ## A274341.P2306696748924960928

`comp[A088161(n)+2*A006257(n)]`
-/

namespace A274341.P2306696748924960928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088161 n + 2 * A006257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A274341.P2306696748924960928

/-! ## A274341.P13381292344448337189

`comp[A246591(2*n)+A038572(n)]`
-/

namespace A274341.P13381292344448337189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246591 (2 * n) + A038572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A274341.P13381292344448337189

/-! ## A274341.P1413947741566743801

`comp[2*A038572(n)-A088161(n)]`
-/

namespace A274341.P1413947741566743801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038572 n - A088161 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A274341.P1413947741566743801

/-! ## A274341.P1477012014848637571

`comp[A160588(4*n)+A038572(n)]`
-/

namespace A274341.P1477012014848637571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160588 (4 * n) + A038572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A274341.P1477012014848637571

/-! ## A274341.P17071337788979089076

`comp[A038572(n)+xor(n, A038556(n))]`
-/

namespace A274341.P17071337788979089076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 n + Int.xor (n : ℤ) (A038556 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A274341.P17071337788979089076

/-! ## A274341.P2622098796821468953

`comp[A053645(2*n+1)+A038572(n)]`
-/

namespace A274341.P2622098796821468953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (2 * n + 1) + A038572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A274341.P2622098796821468953

/-! ## A274341.P2382826559668051209

`comp[2*n+A038572(n)-A003817(n)]`
-/

namespace A274341.P2382826559668051209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A038572 n - A003817 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A274341.P2382826559668051209

/-! ## A274341.P12632552842071867822

`comp[A053645(A080544(2*n+1)+2*n+1)]`
-/

namespace A274341.P12632552842071867822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A080544 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A274341.P12632552842071867822

/-!
# A274344: Coefficients in the expansion of q^(1/2) in odd powers of k/4, where q is the Jacobi nome and k^2 the parameter of elliptic functions. Also coefficients in the expansion of q in odd powers of (1/4)*(1 - k') / (1 + k') with k'^2 the complementary parameter.

The programs for A274344, there is no canonical definition to state claims against.
-/

/-! ## A274344.P3560688048327105545

`A285500(∑[∑[A005260(n)]])`
-/

namespace A274344.P3560688048327105545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005260 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285500 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A274344.P3560688048327105545

/-!
# A274345: Numerators of coefficients in the expansion of (log(q) - log(k^2/16))/(8*k^2/16) in powers of k^2/16, where q is the Jacobi nome and k^2 the parameter of elliptic functions.

The programs for A274345, there is no canonical definition to state claims against.
-/

/-! ## A274345.P3182595223385535324

`A227503(n+1)/(n+1)*A274346(n)`
-/

namespace A274345.P3182595223385535324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227503 (n + 1) : ℚ) / (n + 1 : ℚ) * (A274346 n : ℚ)

end

end A274345.P3182595223385535324

/-! ## A274345.P7964653027905166885

`A227503(n+1)/A003484(A038553(n+1))`
-/

namespace A274345.P7964653027905166885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227503 (n + 1) : ℚ) / (A003484 (A038553 (n + 1)).toNat : ℚ)

end

end A274345.P7964653027905166885

/-! ## A274345.P16565950716974298025

`A227503(n+1)/gcd(A003484(n+1), A227503(n+1))`
-/

namespace A274345.P16565950716974298025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227503 (n + 1) : ℚ) / (Int.gcd (A003484 (n + 1)) (A227503 (n + 1)) : ℚ)

end

end A274345.P16565950716974298025

/-! ## A274345.P12062562614653228436

`A227503(n+1)/A111616((n+1)²)`
-/

namespace A274345.P12062562614653228436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227503 (n + 1) : ℚ) / (A111616 ((n + 1) ^ 2) : ℚ)

end

end A274345.P12062562614653228436

/-!
# A274346: Denominators of coefficients in the expansion of (log(q) - log(k^2/16))/(8*k^2/16) in powers of k^2/16, where q is the Jacobi nome and k^2 the parameter of elliptic functions.

The programs for A274346, there is no canonical definition to state claims against.
-/

/-! ## A274346.P2667601998381096338

`lcm(A053585(n+1), A055231(A027620(n)))`
-/

namespace A274346.P2667601998381096338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053585 (n + 1)) (A055231 (A027620 n).toNat)

end

end A274346.P2667601998381096338

/-! ## A274346.P15194592683505913493

`(n+1)/A003484(A038553(n+1))`
-/

namespace A274346.P15194592683505913493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003484 (A038553 (n + 1)).toNat : ℚ)

end

end A274346.P15194592683505913493

/-! ## A274346.P3755124644940676038

`gcd(n+1, A243963(A000265(n+1)))`
-/

namespace A274346.P3755124644940676038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A243963 (A000265 (n + 1)).toNat)

end

end A274346.P3755124644940676038

/-! ## A274346.P4989955224686538776

`A000027(n+1)/A006519(A038553(n+1))`
-/

namespace A274346.P4989955224686538776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A006519 (A038553 (n + 1)).toNat : ℚ)

end

end A274346.P4989955224686538776

/-! ## A274346.P13471473639297094043

`gcd(A000027(n+1), A008486(A046021(n+1)))`
-/

namespace A274346.P13471473639297094043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A008486 (A046021 (n + 1)).toNat)

end

end A274346.P13471473639297094043

/-!
# A274347: Products of two distinct Lucas numbers (3,4,7,11,18,...).

The programs for A274347, there is no canonical definition to state claims against.
-/

/-! ## A274347.P5049235578412940223

`A274426(A078633(n+1)-A122197(n+1))`
-/

namespace A274347.P5049235578412940223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274426 (A078633 (n + 1) - A122197 (n + 1)).toNat

end

end A274347.P5049235578412940223

/-! ## A274347.P2718688424627084957

`A274426(A000196(n)+eq[0, A026729(n)]+2)`
-/

namespace A274347.P2718688424627084957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274426 (A000196 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2 : ℤ)).toNat

end

end A274347.P2718688424627084957

/-! ## A274347.P9309076092403054979

`A274426(A000196(n)+eq[0, A098158(n)]+2)`
-/

namespace A274347.P9309076092403054979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274426 (A000196 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2 : ℤ)).toNat

end

end A274347.P9309076092403054979

/-! ## A274347.P14249943809010580072

`A274426(A000196(n)+eq[0, A099040(n)]+2)`
-/

namespace A274347.P14249943809010580072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274426 (A000196 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2 : ℤ)).toNat

end

end A274347.P14249943809010580072

/-! ## A274347.P8839207126023541216

`A274426(A000196(n)+eq[0, A099089(n)]+2)`
-/

namespace A274347.P8839207126023541216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274426 (A000196 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2 : ℤ)).toNat

end

end A274347.P8839207126023541216

/-! ## A274347.P9297786978822214770

`A274426(A000196(n)+eq[0, A099097(n)]+2)`
-/

namespace A274347.P9297786978822214770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274426 (A000196 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2 : ℤ)).toNat

end

end A274347.P9297786978822214770

/-! ## A274347.P963568019722156218

`A274426(A000196(n)+eq[0, A101688(n)]+2)`
-/

namespace A274347.P963568019722156218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274426 (A000196 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2 : ℤ)).toNat

end

end A274347.P963568019722156218

/-! ## A274347.P10003929093701441221

`A274426(A274428(n+1))`
-/

namespace A274347.P10003929093701441221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274426 (A274428 (n + 1)).toNat

end

end A274347.P10003929093701441221

/-! ## A274347.P2140913927834414527

`A274426(A000196(n)+eq[0, A105868(n)]+2)`
-/

namespace A274347.P2140913927834414527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274426 (A000196 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2 : ℤ)).toNat

end

end A274347.P2140913927834414527

/-! ## A274347.P17009877958231122240

`∩[A274280(n+1), A274426(n+1)]`
-/

namespace A274347.P17009877958231122240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274347.P17009877958231122240

/-! ## A274347.P2879503236713330102

`A274349(A130233(A049997(n+1))+n+1)`
-/

namespace A274347.P2879503236713330102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274349 (A130233 (A049997 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A274347.P2879503236713330102

/-!
# A274348: Products of three distinct Lucas numbers (3,4,7,11,18,...)

The programs for A274348, there is no canonical definition to state claims against.
-/

/-! ## A274348.P4988038086001049671

`∩[A274280(n+1), A274350(n+1)]`
-/

namespace A274348.P4988038086001049671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274348.P4988038086001049671

/-!
# A274349: Products of two distinct Lucas numbers (2,3,4,7,11,18,...).

The programs for A274349, there is no canonical definition to state claims against.
-/

/-! ## A274349.P2736421959324107843

`A050116(lt[A057854(3*(n+1)), A376370(2*(n+1))])`
-/

namespace A274349.P2736421959324107843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057854 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376370 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050116 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A274349.P2736421959324107843

/-! ## A274349.P2807735503184797705

`∩[A050116(n+1), comp[A000032(n)]]`
-/

namespace A274349.P2807735503184797705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050116 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A274349.P2807735503184797705

/-! ## A274349.P5056145201318033787

`∩[A050116(n+1), comp[A090244(n)]]`
-/

namespace A274349.P5056145201318033787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050116 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A274349.P5056145201318033787

/-! ## A274349.P2853322771941567558

`∩[A050116(n+1), A057854(n+1)]`
-/

namespace A274349.P2853322771941567558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274349.P2853322771941567558

/-! ## A274349.P14593618942422399499

`∩[A050116(n+1), comp[A050123(n+2)]]`
-/

namespace A274349.P14593618942422399499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050116 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050123 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A274349.P14593618942422399499

/-! ## A274349.P6926239800709885982

`∩[A050116(n+1), comp[A000211(n)-2]]`
-/

namespace A274349.P6926239800709885982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050116 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 n - 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A274349.P6926239800709885982

/-! ## A274349.P2004413431452983099

`∩[comp[A127218(2*n)], A050116(n+1)]`
-/

namespace A274349.P2004413431452983099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A274349.P2004413431452983099

/-!
# A274350: Products of three distinct Lucas numbers (2,3,4,7,11,18,...).

The programs for A274350, there is no canonical definition to state claims against.
-/

/-! ## A274350.P5236882522202182907

`∪[2*A274347(n+1), A274348(n+1)]`
-/

namespace A274350.P5236882522202182907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A274347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274350.P5236882522202182907

/-!
# A274352: Convolution of A015723 and A000700.

The programs for A274352, there is no canonical definition to state claims against.
-/

/-! ## A274352.P15948968773038128460

`A078408(n)-A054635(A000932(n))`
-/

namespace A274352.P15948968773038128460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078408 n - A054635 (A000932 n).toNat

end

end A274352.P15948968773038128460

/-! ## A274352.P7034869063196408072

`A078374(2*(n+1))+A046660(A000108(n))`
-/

namespace A274352.P7034869063196408072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078374 (2 * (n + 1)) + A046660 (A000108 n).toNat

end

end A274352.P7034869063196408072

/-! ## A274352.P16173604252935704698

`A354996(A006012(n))+A078374(2*(n+1))`
-/

namespace A274352.P16173604252935704698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354996 (A006012 n).toNat + A078374 (2 * (n + 1))

end

end A274352.P16173604252935704698

/-! ## A274352.P11395000632895332848

`A209229(A112442(n+1))+A078374(2*(n+1))`
-/

namespace A274352.P11395000632895332848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A112442 (n + 1)).toNat + A078374 (2 * (n + 1))

end

end A274352.P11395000632895332848

/-! ## A274352.P7032423957078286349

`eq[A334044(n+1), A395255(n)]`
-/

namespace A274352.P7032423957078286349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274352.P7032423957078286349

/-!
# A274353: Number of factors L(i) > 1 of A274280(n), where L = A000032 (Lucas numbers, 1,3,4,...)

The programs for A274353, there is no canonical definition to state claims against.
-/

/-! ## A274353.P12715549622740725228

`A046072(A062050((∑{d}[n+1, #]+2*(n+1))²))`
-/

namespace A274353.P12715549622740725228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (A062050 ((∑ d ∈ Nat.divisors (f1 n), d + 2 * (n + 1)) ^ 2)).toNat

end

end A274353.P12715549622740725228

/-! ## A274353.P10138674079632203246

`A126305(A032741(∑[A316674(n)]))`
-/

namespace A274353.P10138674079632203246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316674 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126305 (A032741 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A274353.P10138674079632203246

/-! ## A274353.P11210118277336506147

`A124736(A091562(n))+A124735(A091579(n+1))`
-/

namespace A274353.P11210118277336506147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124736 (A091562 n).toNat + A124735 (A091579 (n + 1)).toNat

end

end A274353.P11210118277336506147

/-! ## A274353.P10436559821313627471

`A214566(A328699(n+1)+A000040(n+1))`
-/

namespace A274353.P10436559821313627471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214566 (A328699 (n + 1) + A000040 (n + 1)).toNat

end

end A274353.P10436559821313627471

/-! ## A274353.P5285483488007902341

`A214566(A328699(n+1)+record[A006530(n+2)])`
-/

namespace A274353.P5285483488007902341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214566 (A328699 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A274353.P5285483488007902341

/-!
# A274354: Number of factors L(i) > 1 of A274281(n), where L = A000032 (Lucas numbers, 2,1,3,4,..., with 1 excluded).

The programs for A274354, there is no canonical definition to state claims against.
-/

/-! ## A274354.P12220642303965929104

`A368594(A274281(n+2))`
-/

namespace A274354.P12220642303965929104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368594 (A274281 (n + 2)).toNat

end

end A274354.P12220642303965929104

/-! ## A274354.P10714252591914296179

`A124765(A181823(n+1)%A340606(2*(n+2)))`
-/

namespace A274354.P10714252591914296179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (Int.tmod (A181823 (n + 1)) (A340606 (2 * (n + 2)))).toNat

end

end A274354.P10714252591914296179

/-! ## A274354.P3568049266207393535

`A124765(16*A181823(n+1))`
-/

namespace A274354.P3568049266207393535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (16 * A181823 (n + 1)).toNat

end

end A274354.P3568049266207393535

/-! ## A274354.P9767920052145392666

`A007302(16*A181823(n+1))`
-/

namespace A274354.P9767920052145392666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (16 * A181823 (n + 1)).toNat

end

end A274354.P9767920052145392666

/-! ## A274354.P15409787198728067881

`A344339(A340606(n+1))`
-/

namespace A274354.P15409787198728067881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344339 (A340606 (n + 1)).toNat

end

end A274354.P15409787198728067881

/-!
# A274355: Convolution of A048272 and A022567.

The programs for A274355, there is no canonical definition to state claims against.
-/

/-! ## A274355.P7880679551034837084

`A178786(A003261(n+1)-A132432(n))`
-/

namespace A274355.P7880679551034837084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A003261 (n + 1) - A132432 n).toNat

end

end A274355.P7880679551034837084

/-! ## A274355.P8674007099294715323

`A339405(2*(n+1))-∏{e}[A000142(n)+1, A242699(#)]`
-/

namespace A274355.P8674007099294715323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339405 (2 * (n + 1)) - ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A242699 (Nat.factorization (f1 n).natAbs p + 64)

end

end A274355.P8674007099294715323

/-! ## A274355.P9279634126008292250

`∑[A120886(record[A176893(n)])]`
-/

namespace A274355.P9279634126008292250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176893 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120886 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274355.P9279634126008292250

/-! ## A274355.P18052885532730557853

`A000194(A145130(n))-A068499(n+1)`
-/

namespace A274355.P18052885532730557853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A145130 n).toNat - A068499 (n + 1)

end

end A274355.P18052885532730557853

/-! ## A274355.P10917488080999912108

`xor(A001221(A184310(n+1)), A340658(n))`
-/

namespace A274355.P10917488080999912108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A184310 (n + 1)).toNat) (A340658 n)

end

end A274355.P10917488080999912108

/-!
# A274356: Numbers n such that n^k is of the form (a^2 + b^4)/2 for all k > 0 (a, b > 0).

The programs for A274356, there is no canonical definition to state claims against.
-/

/-! ## A274356.P5727943745306332758

`∩[A035108(n+1), A108549(n+1)]`
-/

namespace A274356.P5727943745306332758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274356.P5727943745306332758

/-! ## A274356.P4168436942710194252

`∩[A274012(n+1), A357864(n+1)]`
-/

namespace A274356.P4168436942710194252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274356.P4168436942710194252

/-!
# A274357: Numbers n such that n and n+1 both have 8 divisors.

The programs for A274357, the canonical program `A274357.P15400264292422820349` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274357 has offset 1).

The definition of A274357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274357.P4256417071185374868

`∩[A005237(n+1), A030626(n+1)]`
-/

namespace A274357.P4256417071185374868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274357.P4256417071185374868

namespace A274357

/-- `∩[A005237(n+1), A030626(n+1)]` -/
def P4256417071185374868.Spec : Prop :=
  ∀ n, (P4256417071185374868.a n : ℤ) = A274357 (n + 1)

end A274357

/-! ## A274357.P4375753793160839902

`∩[A005237(n+1), A111398(n+1)]`
-/

namespace A274357.P4375753793160839902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274357.P4375753793160839902

namespace A274357

/-- `∩[A005237(n+1), A111398(n+1)]` -/
def P4375753793160839902.Spec : Prop :=
  ∀ n, (P4375753793160839902.a n : ℤ) = A274357 (n + 1)

end A274357

/-! ## A274357.P6012388043721202653

`∩[A030626(n+1), A171665(n+1)]`
-/

namespace A274357.P6012388043721202653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274357.P6012388043721202653

namespace A274357

/-- `∩[A030626(n+1), A171665(n+1)]` -/
def P6012388043721202653.Spec : Prop :=
  ∀ n, (P6012388043721202653.a n : ℤ) = A274357 (n + 1)

end A274357

/-! ## A274357.P15973197108884496512

`∩[A111398(n+1), A171665(n+1)]`
-/

namespace A274357.P15973197108884496512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274357.P15973197108884496512

namespace A274357

/-- `∩[A111398(n+1), A171665(n+1)]` -/
def P15973197108884496512.Spec : Prop :=
  ∀ n, (P15973197108884496512.a n : ℤ) = A274357 (n + 1)

end A274357

/-! ## A274357.P8735148002581114682

`∩[A030626(n+2)-1, A030626(n+2)]`
-/

namespace A274357.P8735148002581114682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274357.P8735148002581114682

namespace A274357

/-- `∩[A030626(n+2)-1, A030626(n+2)]` -/
def P8735148002581114682.Spec : Prop :=
  ∀ n, (P8735148002581114682.a n : ℤ) = A274357 (n + 1)

end A274357

/-! ## A274357.P8410779545665335333

`∩[A111398(n+2)-1, A111398(n+2)]`
-/

namespace A274357.P8410779545665335333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274357.P8410779545665335333

namespace A274357

/-- `∩[A111398(n+2)-1, A111398(n+2)]` -/
def P8410779545665335333.Spec : Prop :=
  ∀ n, (P8410779545665335333.a n : ℤ) = A274357 (n + 1)

end A274357

/-! ## A274357.P15400264292422820349

`A030626(eq[1, A030626(n+1)-A111398(n+1)])`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A274357

/-- `A030626(eq[1, A030626(n+1)-A111398(n+1)])` -/
def P15400264292422820349.Spec : Prop :=
  ∀ n, P15400264292422820349.a n = A274357 (n + 1)

theorem P15400264292422820349.correct : P15400264292422820349.Spec := by
  intro n
  simp only [A274357, Nat.add_sub_cancel]

end A274357

/-! ## A274357.P10717218486141381043

`A030626(eq[1, A030626(n+2)-A030626(n+1)]+1)`
-/

namespace A274357.P10717218486141381043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 2) - A030626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A274357.P10717218486141381043

namespace A274357

/-- `A030626(eq[1, A030626(n+2)-A030626(n+1)]+1)` -/
def P10717218486141381043.Spec : Prop :=
  ∀ n, P10717218486141381043.a n = A274357 (n + 1)

end A274357

/-! ## A274357.P11095078256027206863

`A111398(eq[1, A111398(n+2)-A111398(n+1)]+1)`
-/

namespace A274357.P11095078256027206863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 2) - A111398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A274357.P11095078256027206863

namespace A274357

/-- `A111398(eq[1, A111398(n+2)-A111398(n+1)]+1)` -/
def P11095078256027206863.Spec : Prop :=
  ∀ n, P11095078256027206863.a n = A274357 (n + 1)

end A274357

/-! ## A274357.P17971021943058226668

`A030626(eq[1, A030626(n+2)%A030626(n+1)]+1)`
-/

namespace A274357.P17971021943058226668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030626 (n + 2)) (A030626 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A274357.P17971021943058226668

namespace A274357

/-- `A030626(eq[1, A030626(n+2)%A030626(n+1)]+1)` -/
def P17971021943058226668.Spec : Prop :=
  ∀ n, P17971021943058226668.a n = A274357 (n + 1)

end A274357

/-! ## A274357.P12631218465409118823

`∩[A123193(n+1), A171665(n+1)]`
-/

namespace A274357.P12631218465409118823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274357.P12631218465409118823

namespace A274357

/-- `∩[A123193(n+1), A171665(n+1)]` -/
def P12631218465409118823.Spec : Prop :=
  ∀ n, (P12631218465409118823.a n : ℤ) = A274357 (n + 1)

end A274357

/-! ## A274357.P4405536552170740620

`filter[A030626(n+1), A130638(#)]`
-/

namespace A274357.P4405536552170740620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130638 (f1 j).toNat = 1) n)

end

end A274357.P4405536552170740620

namespace A274357

/-- `filter[A030626(n+1), A130638(#)]` -/
def P4405536552170740620.Spec : Prop :=
  ∀ n, P4405536552170740620.a n = A274357 (n + 1)

end A274357

/-! ## A274357.P11926189656676930312

`filter[A111398(n+1), A130638(#)]`
-/

namespace A274357.P11926189656676930312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130638 (f1 j).toNat = 1) n)

end

end A274357.P11926189656676930312

namespace A274357

/-- `filter[A111398(n+1), A130638(#)]` -/
def P11926189656676930312.Spec : Prop :=
  ∀ n, P11926189656676930312.a n = A274357 (n + 1)

end A274357

/-! ## A274357.P13269380793444988333

`filter[A171665(n+1), A122895(#)]`
-/

namespace A274357.P13269380793444988333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122895 (f1 j).toNat = 1) n)

end

end A274357.P13269380793444988333

namespace A274357

/-- `filter[A171665(n+1), A122895(#)]` -/
def P13269380793444988333.Spec : Prop :=
  ∀ n, P13269380793444988333.a n = A274357 (n + 1)

end A274357

/-! ## A274357.P3835823910700354453

`filter[A005237(n+2), A122895(#)]`
-/

namespace A274357.P3835823910700354453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122895 (f1 j).toNat = 1) n)

end

end A274357.P3835823910700354453

namespace A274357

/-- `filter[A005237(n+2), A122895(#)]` -/
def P3835823910700354453.Spec : Prop :=
  ∀ n, P3835823910700354453.a n = A274357 (n + 1)

end A274357

/-! ## A274357.P16240816003901579018

`eq[A128261(n+1), A273315(n)]`
-/

namespace A274357.P16240816003901579018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274357.P16240816003901579018

namespace A274357

/-- `eq[A128261(n+1), A273315(n)]` -/
def P16240816003901579018.Spec : Prop :=
  ∀ n, (P16240816003901579018.a n : ℤ) = A274357 (n + 1)

end A274357

/-! ## A274357.P5373112002461311750

`∩[A005237(n+1), A139588(n+1)]`
-/

namespace A274357.P5373112002461311750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274357.P5373112002461311750

namespace A274357

/-- `∩[A005237(n+1), A139588(n+1)]` -/
def P5373112002461311750.Spec : Prop :=
  ∀ n, (P5373112002461311750.a n : ℤ) = A274357 (n + 1)

end A274357

/-! ## A274357.P150076481433051176

`∩[A139588(n+1), A171665(n+1)]`
-/

namespace A274357.P150076481433051176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274357.P150076481433051176

namespace A274357

/-- `∩[A139588(n+1), A171665(n+1)]` -/
def P150076481433051176.Spec : Prop :=
  ∀ n, (P150076481433051176.a n : ℤ) = A274357 (n + 1)

end A274357

/-! ## A274357.P14126631836468336422

`∩[A005237(n+1), A176238(n+1)]`
-/

namespace A274357.P14126631836468336422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274357.P14126631836468336422

namespace A274357

/-- `∩[A005237(n+1), A176238(n+1)]` -/
def P14126631836468336422.Spec : Prop :=
  ∀ n, (P14126631836468336422.a n : ℤ) = A274357 (n + 1)

end A274357

/-! ## A274357.P5155647609312863131

`∩[A171665(n+1), A176238(n+1)]`
-/

namespace A274357.P5155647609312863131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274357.P5155647609312863131

namespace A274357

/-- `∩[A171665(n+1), A176238(n+1)]` -/
def P5155647609312863131.Spec : Prop :=
  ∀ n, (P5155647609312863131.a n : ℤ) = A274357 (n + 1)

end A274357

/-!
# A274359: Numbers k such that k and k+1 both have 16 divisors.

The programs for A274359, the canonical program `A274359.P5756310034310855443` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274359 has offset 1).

The definition of A274359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 661 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274359.P5756310034310855443

`∩[A005237(n+1), A030634(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A274359

/-- `∩[A005237(n+1), A030634(n+1)]` -/
def P5756310034310855443.Spec : Prop :=
  ∀ n, (P5756310034310855443.a n : ℤ) = A274359 (n + 1)

theorem P5756310034310855443.correct : P5756310034310855443.Spec := by
  intro n
  simp only [A274359, Nat.add_sub_cancel]

end A274359

/-!
# A274360: Numbers n such that n and n+1 both have 18 divisors.

The programs for A274360, there is no canonical definition to state claims against.
-/

/-! ## A274360.P12198608357421748562

`∩[A030636(n+1)-1, A030636(n+1)]`
-/

namespace A274360.P12198608357421748562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274360.P12198608357421748562

/-!
# A274369: Let the starting square of Langton's ant have coordinates (0, 0), with the ant looking in negative x-direction. a(n) is the x-coordinate of the ant after n moves.

The programs for A274369, there is no canonical definition to state claims against.
-/

/-! ## A274369.P8048495665544671906

`1-∑[A056594(A255938(n))]`
-/

namespace A274369.P8048495665544671906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A255938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274369.P8048495665544671906

/-! ## A274369.P221581311682703329

`a(n-1)+A033999(n+1)*A056594(A255938(n))` with `a(0)=0`
-/

namespace A274369.P221581311682703329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A033999 (n + 1) * A056594 (A255938 n).toNat

end

end A274369.P221581311682703329

/-! ## A274369.P11949665727607808549

`∑[A033999(2*n+3)*A056594(A255938(n))]+1`
-/

namespace A274369.P11949665727607808549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 3) * A056594 (A255938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A274369.P11949665727607808549

/-! ## A274369.P8626626156574785690

`A131852(A131829(3*n+1)-A131806(n+1))`
-/

namespace A274369.P8626626156574785690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (A131829 (3 * n + 1) - A131806 (n + 1)).toNat

end

end A274369.P8626626156574785690

/-! ## A274369.P10461843745119770912

`∑[A134452(A014681(n)*A087682(n+1))]`
-/

namespace A274369.P10461843745119770912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 (A014681 n * A087682 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274369.P10461843745119770912

/-!
# A274370: Let the starting square of Langton's ant have coordinates (0, 0), with the ant looking in negative x-direction. a(n) is the y-coordinate of the ant after n moves.

The programs for A274370, there is no canonical definition to state claims against.
-/

/-! ## A274370.P18201982650056215564

`∑[A056594(A255938(n)+3)]`
-/

namespace A274370.P18201982650056215564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A255938 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274370.P18201982650056215564

/-! ## A274370.P6924292044416108500

`∑[A132380(2*A255938(n))]`
-/

namespace A274370.P6924292044416108500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132380 (2 * A255938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274370.P6924292044416108500

/-! ## A274370.P14761793787798934678

`∑[A056594(and(3, 1-A255938(n)))]`
-/

namespace A274370.P14761793787798934678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (Int.land 3 (1 - A255938 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274370.P14761793787798934678

/-! ## A274370.P15753774781332375614

`∑[A056594(A004442(A255938(n)))]`
-/

namespace A274370.P15753774781332375614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A004442 (A255938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274370.P15753774781332375614

/-! ## A274370.P10421868099150371398

`∑[A009531(A255938(n)%A009531(3*(n+1)))]`
-/

namespace A274370.P10421868099150371398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (Int.tmod (A255938 n) (A009531 (3 * (n + 1)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274370.P10421868099150371398

/-!
# A274371: Numbers that are a product of distinct Fibonacci numbers (A000045) and also a product of distinct Lucas numbers (A000032, including 2).

The programs for A274371, there is no canonical definition to state claims against.
-/

/-! ## A274371.P14403726032822184751

`∩[A160009(n+1), A274281(n+1)]`
-/

namespace A274371.P14403726032822184751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274371.P14403726032822184751

/-!
# A274372: Number T(n,k) of modified skew Dyck paths of semilength n such that the area between the x-axis and the path is k; triangle T(n,k), n>=0, n<=k<=n^2, read by rows.

The programs for A274372, there is no canonical definition to state claims against.
-/

/-! ## A274372.P240068954863444645

`A089224(A050291(n+1)+1)`
-/

namespace A274372.P240068954863444645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089224 (A050291 (n + 1) + 1).toNat

end

end A274372.P240068954863444645

/-! ## A274372.P14945082864975209476

`A064692(and(A002620(n), A079738(n)))`
-/

namespace A274372.P14945082864975209476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (Int.land (A002620 n) (A079738 n)).toNat

end

end A274372.P14945082864975209476

/-! ## A274372.P8009641925258731336

`xor(A124764(n), A331509(A331567(n)))`
-/

namespace A274372.P8009641925258731336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A124764 n) (A331509 (A331567 n).toNat)

end

end A274372.P8009641925258731336

/-! ## A274372.P10427522194073102047

`A083025(A321491(3*n+5)-A070462(2*n+1))`
-/

namespace A274372.P10427522194073102047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (A321491 (3 * n + 5) - A070462 (2 * n + 1)).toNat

end

end A274372.P10427522194073102047

/-!
# A274373: Sum of the areas of all modified skew Dyck paths of semilength n.

The programs for A274373, there is no canonical definition to state claims against.
-/

/-! ## A274373.P5392715988455692169

`A002265(A018011(2*n)-1)`
-/

namespace A274373.P5392715988455692169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A018011 (2 * n) - 1).toNat

end

end A274373.P5392715988455692169

/-! ## A274373.P13733825060144639274

`A193331(A344605(n)+A249925(n))`
-/

namespace A274373.P13733825060144639274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193331 (A344605 n + A249925 n).toNat

end

end A274373.P13733825060144639274

/-!
# A274375: Products of 2 distinct Fibonacci numbers and products of two distinct Lucas numbers (including 2), arranged in increasing order.

The programs for A274375, there is no canonical definition to state claims against.
-/

/-! ## A274375.P15231086761999236806

`∪[A022112(n), A274374(n+1)]`
-/

namespace A274375.P15231086761999236806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274375.P15231086761999236806

/-! ## A274375.P16892164254573764146

`∪[A050116(n+1), A274374(n+1)]`
-/

namespace A274375.P16892164254573764146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274375.P16892164254573764146

/-!
# A274376: Number of modified skew Dyck paths such that the area between the x-axis and the path is n.

The programs for A274376, there is no canonical definition to state claims against.
-/

/-! ## A274376.P15436573163814718446

`A033183(4*A281362(n))`
-/

namespace A274376.P15436573163814718446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (4 * A281362 n).toNat

end

end A274376.P15436573163814718446

/-! ## A274376.P2860501603432368447

`A065033(Δ[A008615(A022367(n))])`
-/

namespace A274376.P2860501603432368447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A022367 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (n + 1) - f1 n).toNat

end

end A274376.P2860501603432368447

/-! ## A274376.P1375781448301917131

`A177849(A022363(n))`
-/

namespace A274376.P1375781448301917131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A022363 n).toNat

end

end A274376.P1375781448301917131

/-! ## A274376.P3118062109065833198

`A276571(∑[A339985(n)]+1)`
-/

namespace A274376.P3118062109065833198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A274376.P3118062109065833198

/-! ## A274376.P3864149153563166030

`round(A111916(n+2)/A007611(n))`
-/

namespace A274376.P3864149153563166030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A111916 (n + 2) : ℚ) / (A007611 n : ℚ))

end

end A274376.P3864149153563166030

/-!
# A274377: E.g.f. satisfies: A(x)^A(x) = exp(2*x) * A(-x)^A(-x).

The programs for A274377, there is no canonical definition to state claims against.
-/

/-! ## A274377.P12271834176423823135

`C(A061129(n), A157272(2*n))`
-/

namespace A274377.P12271834176423823135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A061129 n).toNat (A157272 (2 * n)).toNat

end

end A274377.P12271834176423823135

/-! ## A274377.P15076433622288909796

`C(A061129(n), A168293(2*n))`
-/

namespace A274377.P15076433622288909796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A061129 n).toNat (A168293 (2 * n)).toNat

end

end A274377.P15076433622288909796

/-! ## A274377.P6700456137946091635

`C(A061131(n), A238754(2*n))`
-/

namespace A274377.P6700456137946091635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A061131 n).toNat (A238754 (2 * n)).toNat

end

end A274377.P6700456137946091635

/-! ## A274377.P9379318721787075063

`C(A061131(n), A027642(3*n))`
-/

namespace A274377.P9379318721787075063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A061131 n).toNat (A027642 (3 * n)).toNat

end

end A274377.P9379318721787075063

/-!
# A274378: G.f. satisfies A(x) = (1 + x*A(x))^2 * (1 + x^2*A(x)^3).

The programs for A274378, there is no canonical definition to state claims against.
-/

/-! ## A274378.P3818031461423785272

`A105512(5^n)+1`
-/

namespace A274378.P3818031461423785272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105512 (5 ^ n) + 1

end

end A274378.P3818031461423785272

/-! ## A274378.P5786699177718753054

`A325039(∑[4*n])+p?[round(8*n/7)]-2`
-/

namespace A274378.P5786699177718753054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325039 (∑ j ∈ Finset.range (n + 1), f1 j) + (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2)

end

end A274378.P5786699177718753054

/-!
# A274379: G.f. satisfies A(x) = (1 + x*A(x))^3 * (1 + x^2*A(x)^3).

The programs for A274379, there is no canonical definition to state claims against.
-/

/-! ## A274379.P6765667519028590644

`A195121(A211789(n+1))-A000007(n)`
-/

namespace A274379.P6765667519028590644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195121 (A211789 (n + 1)).toNat - A000007 n

end

end A274379.P6765667519028590644

/-! ## A274379.P13475619431636833900

`A195121(A211789(n+1))^A276134(n)`
-/

namespace A274379.P13475619431636833900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195121 (A211789 (n + 1)).toNat : ℚ) ^ (A276134 n : ℤ)

end

end A274379.P13475619431636833900

/-!
# A274380: The period 4 sequence of the iterated sum of deficient divisors function (A187793) starting at 34.

The programs for A274380, the canonical program `A274380.P2249063439286474997` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274380 has offset 1).

The definition of A274380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274380.P2249063439286474997

`a(n-4)` with `a(0)=34, a(1)=54, a(2)=42, a(3)=48`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A274380

/-- `a(n-4)` -/
def P2249063439286474997.Spec : Prop :=
  ∀ n, (P2249063439286474997.a n : ℤ) = A274380 (n + 1)

theorem P2249063439286474997.correct : P2249063439286474997.Spec := by
  intro n
  simp only [A274380, Nat.add_sub_cancel]

end A274380

/-!
# A274381: Safe primes p such that p + 24 is also a safe prime.

The programs for A274381, the canonical program `A274381.P13109682840946942016` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274381 has offset 1).

The definition of A274381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 387 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274381.P13109682840946942016

`∩[A005385(n+1)-24, A005385(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A274381

/-- `∩[A005385(n+1)-24, A005385(n+1)]` -/
def P13109682840946942016.Spec : Prop :=
  ∀ n, (P13109682840946942016.a n : ℤ) = A274381 (n + 1)

theorem P13109682840946942016.correct : P13109682840946942016.Spec := by
  intro n
  simp only [A274381, Nat.add_sub_cancel]

end A274381

/-! ## A274381.P12386245465768140322

`filter[A118072(n+3), A123594(#)]`
-/

namespace A274381.P12386245465768140322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118072 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123594 (f1 j).toNat = 1) n)

end

end A274381.P12386245465768140322

namespace A274381

/-- `filter[A118072(n+3), A123594(#)]` -/
def P12386245465768140322.Spec : Prop :=
  ∀ n, P12386245465768140322.a n = A274381 (n + 1)

end A274381

/-!
# A274382: a(n) = gcd(n, n*(n+1)/2 - sigma(n)).

The programs for A274382, the canonical program `A274382.P14265109169498225242` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274382 has offset 1).

The definition of A274382 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, (n+1)*(n+2)/2-A000203(n+1))` (program `A274382.P14265109169498225242`, by `A274382.P14265109169498225242.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274382.P5095635014473517218

`gcd(n+1, A024816(n+1))`
-/

namespace A274382.P5095635014473517218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A024816 (n + 1))

end

end A274382.P5095635014473517218

namespace A274382

/-- `gcd(n+1, A024816(n+1))` -/
def P5095635014473517218.Spec : Prop :=
  ∀ n, (P5095635014473517218.a n : ℤ) = A274382 (n + 1)

end A274382

/-! ## A274382.P14265109169498225242

`gcd(n+1, (n+1)*(n+2)/2-A000203(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A274382

/-- `gcd(n+1, (n+1)*(n+2)/2-A000203(n+1))` -/
def P14265109169498225242.Spec : Prop :=
  ∀ n, (P14265109169498225242.a n : ℤ) = A274382 (n + 1)

theorem P14265109169498225242.correct : P14265109169498225242.Spec := by
  intro n
  simp only [A274382, Nat.add_sub_cancel]

end A274382

/-! ## A274382.P1571475677087158685

`gcd(∑[n+1]-∑[n], A229110(n+1))`
-/

namespace A274382.P1571475677087158685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) (A229110 (n + 1))

end

end A274382.P1571475677087158685

namespace A274382

/-- `gcd(∑[n+1]-∑[n], A229110(n+1))` -/
def P1571475677087158685.Spec : Prop :=
  ∀ n, (P1571475677087158685.a n : ℤ) = A274382 (n + 1)

end A274382

/-! ## A274382.P2911933572870123473

`gcd(A061019(n+1), A362625(n+1))`
-/

namespace A274382.P2911933572870123473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061019 (n + 1)) (A362625 (n + 1))

end

end A274382.P2911933572870123473

namespace A274382

/-- `gcd(A061019(n+1), A362625(n+1))` -/
def P2911933572870123473.Spec : Prop :=
  ∀ n, (P2911933572870123473.a n : ℤ) = A274382 (n + 1)

end A274382

/-! ## A274382.P3759589755703570910

`gcd(A000203(n+1)+∑[n], A131738(n))`
-/

namespace A274382.P3759589755703570910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) (A131738 n)

end

end A274382.P3759589755703570910

namespace A274382

/-- `gcd(A000203(n+1)+∑[n], A131738(n))` -/
def P3759589755703570910.Spec : Prop :=
  ∀ n, (P3759589755703570910.a n : ℤ) = A274382 (n + 1)

end A274382

/-! ## A274382.P3093902256750231674

`gcd(A088580(n+1)-C(n, 2), A000027(n+1))`
-/

namespace A274382.P3093902256750231674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A088580 (n + 1) - (Nat.choose n 2 : ℤ)) (A000027 (n + 1))

end

end A274382.P3093902256750231674

namespace A274382

/-- `gcd(A088580(n+1)-C(n, 2), A000027(n+1))` -/
def P3093902256750231674.Spec : Prop :=
  ∀ n, (P3093902256750231674.a n : ℤ) = A274382 (n + 1)

end A274382

/-! ## A274382.P2005443377119644806

`A000027(gcd(A000027(n+1), A229110(n+1)))`
-/

namespace A274382.P2005443377119644806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.gcd (A000027 (n + 1)) (A229110 (n + 1)))

end

end A274382.P2005443377119644806

namespace A274382

/-- `A000027(gcd(A000027(n+1), A229110(n+1)))` -/
def P2005443377119644806.Spec : Prop :=
  ∀ n, P2005443377119644806.a n = A274382 (n + 1)

end A274382

/-! ## A274382.P1720142979009056322

`gcd(Δ[A001057(n)], A296955(n+1))`
-/

namespace A274382.P1720142979009056322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A296955 (n + 1))

end

end A274382.P1720142979009056322

namespace A274382

/-- `gcd(Δ[A001057(n)], A296955(n+1))` -/
def P1720142979009056322.Spec : Prop :=
  ∀ n, (P1720142979009056322.a n : ℤ) = A274382 (n + 1)

end A274382

/-! ## A274382.P3113222223011864559

`gcd(∑[n]-A001065(n+1), A008619(2*n))`
-/

namespace A274382.P3113222223011864559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001065 (n + 1)) (A008619 (2 * n))

end

end A274382.P3113222223011864559

namespace A274382

/-- `gcd(∑[n]-A001065(n+1), A008619(2*n))` -/
def P3113222223011864559.Spec : Prop :=
  ∀ n, (P3113222223011864559.a n : ℤ) = A274382 (n + 1)

end A274382

/-! ## A274382.P7859350479777459523

`gcd(A001057(2*n+1), A296955(A001057(2*n+1)))`
-/

namespace A274382.P7859350479777459523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001057 (2 * n + 1)) (A296955 (A001057 (2 * n + 1)).toNat)

end

end A274382.P7859350479777459523

namespace A274382

/-- `gcd(A001057(2*n+1), A296955(A001057(2*n+1)))` -/
def P7859350479777459523.Spec : Prop :=
  ∀ n, (P7859350479777459523.a n : ℤ) = A274382 (n + 1)

end A274382

/-! ## A274382.P15851812020286517756

`gcd(A026741(A074400(n+1)+n+1), A074400(n+1))`
-/

namespace A274382.P15851812020286517756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026741 (A074400 (n + 1) + (n + 1 : ℤ)).toNat) (A074400 (n + 1))

end

end A274382.P15851812020286517756

namespace A274382

/-- `gcd(A026741(A074400(n+1)+n+1), A074400(n+1))` -/
def P15851812020286517756.Spec : Prop :=
  ∀ n, (P15851812020286517756.a n : ℤ) = A274382 (n + 1)

end A274382

/-!
# A274384: Numbers n such that 2^n is not the average of three positive cubes.

The programs for A274384, there is no canonical definition to state claims against.
-/

/-! ## A274384.P16228204470048452017

`comp[a(n-2)+3]` with `a(0)=0, a(1)=35`
-/

namespace A274384.P16228204470048452017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 35] fun n f1 =>
  f1 (n - 2) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A274384.P16228204470048452017

/-! ## A274384.P5496702470995121447

`lt[3, a(n-3)-2]` with `a(0)=0, a(1)=34, a(2)=24`
-/

namespace A274384.P5496702470995121447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 34, 24] fun n f2 =>
  f2 (n - 3) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A274384.P5496702470995121447

/-! ## A274384.P5925307064112751992

`comp[3-floor(-a(n-2))]` with `a(0)=0, a(1)=35`

`floor` is left out, it is the identity on integers.
-/

namespace A274384.P5925307064112751992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 35] fun n f1 =>
  3 - (-f1 (n - 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A274384.P5925307064112751992

/-! ## A274384.P7503806146289265654

`comp[3-ceil(-a(n-2))]` with `a(0)=0, a(1)=35`

`ceil` is left out, it is the identity on integers.
-/

namespace A274384.P7503806146289265654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 35] fun n f1 =>
  3 - (-f1 (n - 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A274384.P7503806146289265654

/-! ## A274384.P9565516092017181918

`comp[3-round(-a(n-2))]` with `a(0)=0, a(1)=35`

`round` is left out, it is the identity on integers.
-/

namespace A274384.P9565516092017181918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 35] fun n f1 =>
  3 - (-f1 (n - 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A274384.P9565516092017181918

/-!
# A274385: Double factorial primes: primes which are within 1 of a double factorial number.

The programs for A274385, there is no canonical definition to state claims against.
-/

/-! ## A274385.P8021656569058037853

`or(n, A117141(A028310(n)))`
-/

namespace A274385.P8021656569058037853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A117141 (A028310 n).toNat)

end

end A274385.P8021656569058037853

/-! ## A274385.P15831024179449391903

`record[or(n, A117141(A026233(n+1)))]`
-/

namespace A274385.P15831024179449391903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A117141 (A026233 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274385.P15831024179449391903

/-! ## A274385.P6678307576801894774

`record[or(n, A117141(A139169(n+1)))]`
-/

namespace A274385.P6678307576801894774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A117141 (A139169 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274385.P6678307576801894774

/-! ## A274385.P5042861174495529292

`A117141(A028310(n))+char[A016998(n)]`
-/

namespace A274385.P5042861174495529292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016998 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117141 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A274385.P5042861174495529292

/-! ## A274385.P12080256635298352290

`A117141(A028310(n))+char[A021829(n)]`
-/

namespace A274385.P12080256635298352290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021829 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117141 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A274385.P12080256635298352290

/-!
# A274386: Triple factorial primes: primes which are within 1 of a triple factorial number.

The programs for A274386, there is no canonical definition to state claims against.
-/

/-! ## A274386.P15213192318580232365

`A006530(∪[A037082(n+1), A135726(n+1)])`
-/

namespace A274386.P15213192318580232365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135726 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A274386.P15213192318580232365

/-! ## A274386.P4701059555834062700

`A020639(∪[A037082(n+1), A135726(n+1)])`
-/

namespace A274386.P4701059555834062700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135726 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A274386.P4701059555834062700

/-!
# A274387: A diagonal of rectangular array A274391 of coefficients in functions that satisfy W_n(x) = W_{n-1}(x)^W_n(x), with W_0(x) = exp(x).

The programs for A274387, there is no canonical definition to state claims against.
-/

/-! ## A274387.P12298513662400909230

`A274391(2*n²)`
-/

namespace A274387.P12298513662400909230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274391 (2 * n ^ 2)

end

end A274387.P12298513662400909230

/-! ## A274387.P12072580850202782750

`A007318(∑[n])*A274391(A001105(n))`
-/

namespace A274387.P12072580850202782750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A274391 (A001105 n).toNat

end

end A274387.P12072580850202782750

/-! ## A274387.P5083781917140944520

`A274391(A001105(n))/A274391(∑[n])`
-/

namespace A274387.P5083781917140944520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274391 (A001105 n).toNat : ℚ) / (A274391 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A274387.P5083781917140944520

/-! ## A274387.P6992197409965881158

`A274391(A001105(n))/A007318(C(n, 2))`
-/

namespace A274387.P6992197409965881158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274391 (A001105 n).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A274387.P6992197409965881158

/-!
# A274388: Main diagonal of rectangular array A274391 of coefficients in functions that satisfy W_n(x) = W_{n-1}(x)^W_n(x), with W_0(x) = exp(x).

The programs for A274388, there is no canonical definition to state claims against.
-/

/-! ## A274388.P17918010144138452055

`A274391(∑[4*n])`
-/

namespace A274388.P17918010144138452055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274391 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274388.P17918010144138452055

/-! ## A274388.P11692381829275110379

`A274391(A046092(n))+A061858(n)`
-/

namespace A274388.P11692381829275110379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274391 (A046092 n).toNat + A061858 n

end

end A274388.P11692381829275110379

/-! ## A274388.P7338940032609119673

`A274391(A046092(n))^A178334(n)`
-/

namespace A274388.P7338940032609119673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274391 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A274388.P7338940032609119673

/-! ## A274388.P17147124240058212606

`A274391(A046092(n))/A007318(∑[n])`
-/

namespace A274388.P17147124240058212606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274391 (A046092 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A274388.P17147124240058212606

/-! ## A274388.P15732291828630594957

`A274391(A046092(n))^A014963(∑[n+1])`
-/

namespace A274388.P15732291828630594957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274391 (A046092 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A274388.P15732291828630594957

/-!
# A274389: Main diagonal of rectangular array A274390 of coefficients in the iterations of Euler's tree function (A000169).

The programs for A274389, there is no canonical definition to state claims against.
-/

/-! ## A274389.P4732896640777186252

`(n+1)*A396567(n)`
-/

namespace A274389.P4732896640777186252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A396567 n

end

end A274389.P4732896640777186252

/-! ## A274389.P7502190271731593041

`A274390(∑[4*n])`
-/

namespace A274389.P7502190271731593041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274390 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274389.P7502190271731593041

/-! ## A274389.P788524609784657061

`record[A003982(n)*A274390(n)]`
-/

namespace A274389.P788524609784657061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A274390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274389.P788524609784657061

/-! ## A274389.P12857200006980046151

`record[A274390(n*A008619(n))]`
-/

namespace A274389.P12857200006980046151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274390 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274389.P12857200006980046151

/-! ## A274389.P7217893261927330337

`record[A274390(n*A027656(n))]`
-/

namespace A274389.P7217893261927330337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274390 ((n : ℤ) * A027656 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274389.P7217893261927330337

/-!
# A274390: Array read by ascending antidiagonals: the coefficients in the iterations of Euler's tree function (A000169).

The programs for A274390, there is no canonical definition to state claims against.
-/

/-! ## A274390.P13591480142224046402

`A274740(∑[2*n]%(comp[∑[n+1]]+1))`
-/

namespace A274390.P13591480142224046402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274740 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1))

end

end A274390.P13591480142224046402

/-! ## A274390.P12421260142905197765

`A274740(A061579(n%A249251(n)²))`
-/

namespace A274390.P12421260142905197765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274740 (A061579 (Int.tmod (n : ℤ) (A249251 n ^ 2)).toNat).toNat

end

end A274390.P12421260142905197765

/-! ## A274390.P16068772549003137845

`A274740(A107436(n+2)*A107436(n+1)-(n+1))`
-/

namespace A274390.P16068772549003137845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274740 (A107436 (n + 2) * A107436 (n + 1) - (n + 1 : ℤ)).toNat

end

end A274390.P16068772549003137845

/-! ## A274390.P11016569096273246353

`A274740(∑[char[∑[n]]]²-(n+1))`
-/

namespace A274390.P11016569096273246353
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274740 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A274390.P11016569096273246353

/-! ## A274390.P11695980020139251393

`A274740(A061579(n))^A035214(n)`
-/

namespace A274390.P11695980020139251393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274740 (A061579 n).toNat : ℚ) ^ (A035214 n : ℤ)

end

end A274390.P11695980020139251393

/-! ## A274390.P8274402261504098754

`A274740(A061579(n))^A178334(n)`
-/

namespace A274390.P8274402261504098754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274740 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A274390.P8274402261504098754

/-! ## A274390.P11627198888206999601

`or(A000007(n), A274740(A061579(n)))`
-/

namespace A274390.P11627198888206999601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A274740 (A061579 n).toNat)

end

end A274390.P11627198888206999601

/-! ## A274390.P9281687502400532122

`A274740(A061579(n))%A221703(n+2)`
-/

namespace A274390.P9281687502400532122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274740 (A061579 n).toNat) (A221703 (n + 2))

end

end A274390.P9281687502400532122

/-! ## A274390.P13186696619898808133

`A128227(n)*A396498(n)`
-/

namespace A274390.P13186696619898808133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n * A396498 n

end

end A274390.P13186696619898808133

/-! ## A274390.P15407558699686549044

`A193738(n)*A396498(n)`
-/

namespace A274390.P15407558699686549044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 n * A396498 n

end

end A274390.P15407558699686549044

/-!
# A274391: Square array A(n,k), n>=0, k>=0, read by antidiagonals upwards, where A(n,k) = k! * [x^k] W_n(x) and W_n(x) = W_{n-1}(x)^W_n(x), with W_0(x) = exp(x).

The programs for A274391, there is no canonical definition to state claims against.
-/

/-! ## A274391.P9023512059482260376

`A274741(A002378(n)%A080036(n))`
-/

namespace A274391.P9023512059482260376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274741 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A274391.P9023512059482260376

/-! ## A274391.P4212391482216779319

`A274741(∑[2*n]%comp[∑[n]])`
-/

namespace A274391.P4212391482216779319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274741 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A274391.P4212391482216779319

/-! ## A274391.P8961619188732903321

`A274741(∑[char[∑[n]]]²-n-1)`
-/

namespace A274391.P8961619188732903321
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274741 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A274391.P8961619188732903321

/-! ## A274391.P2327575376940603214

`A274741(A061579(n))%A080132(n)`
-/

namespace A274391.P2327575376940603214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274741 (A061579 n).toNat) (A080132 n)

end

end A274391.P2327575376940603214

/-! ## A274391.P2241082444664050625

`A274741(A061579(n))+A000007(n+2)`
-/

namespace A274391.P2241082444664050625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274741 (A061579 n).toNat + A000007 (n + 2)

end

end A274391.P2241082444664050625

/-!
# A274392: A diagonal of rectangular array A274390 of coefficients in the iterations of Euler's tree function (A000169).

The programs for A274392, there is no canonical definition to state claims against.
-/

/-! ## A274392.P8945890345635192621

`A274390(A056220(n+1))`
-/

namespace A274392.P8945890345635192621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274390 (A056220 (n + 1)).toNat

end

end A274392.P8945890345635192621

/-! ## A274392.P2021012648496585251

`A274390(A004273((n+1)²))`
-/

namespace A274392.P2021012648496585251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274390 (A004273 ((n + 1) ^ 2)).toNat

end

end A274392.P2021012648496585251

/-! ## A274392.P8716777713662644882

`A274390(∑[A016825(n)]-1)`
-/

namespace A274392.P8716777713662644882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274390 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A274392.P8716777713662644882

/-! ## A274392.P15648056020713893512

`A274390(eq[2, A007913(n+1)])`
-/

namespace A274392.P15648056020713893512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274392.P15648056020713893512

/-! ## A274392.P11169355347020292209

`A274390(A000217(2*n+1)+n)`
-/

namespace A274392.P11169355347020292209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274390 (A000217 (2 * n + 1) + (n : ℤ)).toNat

end

end A274392.P11169355347020292209

/-!
# A274393: E.g.f. A(x) satisfies: A( A( x^3*exp(-3*x) )^(1/3) ) = x.

The programs for A274393, there is no canonical definition to state claims against.
-/

/-! ## A274393.P11154057660484733833

`A350429(a(n-1))+n` with `a(0)=1, a(1)=2`
-/

namespace A274393.P11154057660484733833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A350429 (a (n - 1)).toNat + (n : ℤ)

end

end A274393.P11154057660484733833

/-!
# A274394: E.g.f. A(x) satisfies: A( A( x^4*exp(-4*x) )^(1/4) ) = x.

The programs for A274394, there is no canonical definition to state claims against.
-/

/-! ## A274394.P753622016975887727

`(n+1)*A216433(n!)`
-/

namespace A274394.P753622016975887727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A216433 (Nat.factorial n)

end

end A274394.P753622016975887727

/-!
# A274395: E.g.f. A(x) satisfies: A( A( x^5*exp(-5*x) )^(1/5) ) = x.

The programs for A274395, there is no canonical definition to state claims against.
-/

/-! ## A274395.P14618068680153291855

`(n+1)*A285041((n+1)^(n-1))`
-/

namespace A274395.P14618068680153291855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A285041 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A274395.P14618068680153291855

/-! ## A274395.P1908903348184093258

`A226952(A202657(n+1))+(n+1)^n`
-/

namespace A274395.P1908903348184093258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226952 (A202657 (n + 1)).toNat + ((n + 1) ^ n : ℤ)

end

end A274395.P1908903348184093258

/-!
# A274396: G.f. A(x) satisfies: A(x)^3 - 3*A(x)^4 = A(x^3).

The programs for A274396, there is no canonical definition to state claims against.
-/

/-! ## A274396.P3780110858917135248

`A110655(or(n+1, A091843(n)))`
-/

namespace A274396.P3780110858917135248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (Int.lor (n + 1 : ℤ) (A091843 n)).toNat

end

end A274396.P3780110858917135248

/-! ## A274396.P6954929271054570776

`A299113(n)-A234323(A299121(n))`
-/

namespace A274396.P6954929271054570776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299113 n - A234323 (A299121 n).toNat

end

end A274396.P6954929271054570776

/-! ## A274396.P2775165761989376372

`A299113(n)-A122287(A092653(n+1))`
-/

namespace A274396.P2775165761989376372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299113 n - A122287 (A092653 (n + 1)).toNat

end

end A274396.P2775165761989376372

/-!
# A274397: Positive integers m such that sigma(m) is divisible by 5.

The programs for A274397, the canonical program `A274397.P17572640647558603460` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274397 has offset 1).

The definition of A274397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274397.P17572640647558603460

`lt[1, gcd(5, A000203(n+1))]+1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A274397

/-- `lt[1, gcd(5, A000203(n+1))]+1` -/
def P17572640647558603460.Spec : Prop :=
  ∀ n, (P17572640647558603460.a n : ℤ) = A274397 (n + 1)

theorem P17572640647558603460.correct : P17572640647558603460.Spec := by
  intro n
  simp only [A274397, Nat.add_sub_cancel]

end A274397

/-! ## A274397.P15260285566355197328

`lt[A011558(A000203(n+1)), 1]+1`
-/

namespace A274397.P15260285566355197328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A000203 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A274397.P15260285566355197328

namespace A274397

/-- `lt[A011558(A000203(n+1)), 1]+1` -/
def P15260285566355197328.Spec : Prop :=
  ∀ n, (P15260285566355197328.a n : ℤ) = A274397 (n + 1)

end A274397

/-! ## A274397.P17978735826673096306

`eq[1, A105825(n+1)+1]+1`
-/

namespace A274397.P17978735826673096306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105825 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A274397.P17978735826673096306

namespace A274397

/-- `eq[1, A105825(n+1)+1]+1` -/
def P17978735826673096306.Spec : Prop :=
  ∀ n, (P17978735826673096306.a n : ℤ) = A274397 (n + 1)

end A274397

/-! ## A274397.P7005717820768349000

`eq[0, A227216(n)]`
-/

namespace A274397.P7005717820768349000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A274397.P7005717820768349000

namespace A274397

/-- `eq[0, A227216(n)]` -/
def P7005717820768349000.Spec : Prop :=
  ∀ n, (P7005717820768349000.a n : ℤ) = A274397 (n + 1)

end A274397

/-! ## A274397.P13155252357276914110

`eq[5, gcd(5, A006352(n))]`
-/

namespace A274397.P13155252357276914110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A006352 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274397.P13155252357276914110

namespace A274397

/-- `eq[5, gcd(5, A006352(n))]` -/
def P13155252357276914110.Spec : Prop :=
  ∀ n, (P13155252357276914110.a n : ℤ) = A274397 (n + 1)

end A274397

/-! ## A274397.P13151348875808453642

`eq[0, A229802(n+1)]+1`
-/

namespace A274397.P13151348875808453642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229802 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A274397.P13151348875808453642

namespace A274397

/-- `eq[0, A229802(n+1)]+1` -/
def P13151348875808453642.Spec : Prop :=
  ∀ n, (P13151348875808453642.a n : ℤ) = A274397 (n + 1)

end A274397

/-! ## A274397.P12213746662411039694

`lt[(A088580(n+1)-1)%5, 1]+1`
-/

namespace A274397.P12213746662411039694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088580 (n + 1) - 1) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A274397.P12213746662411039694

namespace A274397

/-- `lt[(A088580(n+1)-1)%5, 1]+1` -/
def P12213746662411039694.Spec : Prop :=
  ∀ n, (P12213746662411039694.a n : ℤ) = A274397 (n + 1)

end A274397

/-! ## A274397.P10156788133964168755

`eq[0, A229802(A028310(n))]`
-/

namespace A274397.P10156788133964168755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229802 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A274397.P10156788133964168755

namespace A274397

/-- `eq[0, A229802(A028310(n))]` -/
def P10156788133964168755.Spec : Prop :=
  ∀ n, (P10156788133964168755.a n : ℤ) = A274397 (n + 1)

end A274397

/-! ## A274397.P430059905604477317

`∪[A173080(n+1), A297575(n+1)]`
-/

namespace A274397.P430059905604477317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A274397.P430059905604477317

namespace A274397

/-- `∪[A173080(n+1), A297575(n+1)]` -/
def P430059905604477317.Spec : Prop :=
  ∀ n, (P430059905604477317.a n : ℤ) = A274397 (n + 1)

end A274397

/-!
# A274399: a(n) = floor(n*Pi/3).

The programs for A274399, the canonical program `A274399.P16597808757634837479` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274399 has offset 0).

The definition of A274399 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*π/3)` (program `A274399.P16597808757634837479`, by `A274399.P16597808757634837479.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274399.P16597808757634837479

`floor(n*π/3)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A274399

/-- `floor(n*π/3)` -/
def P16597808757634837479.Spec : Prop :=
  ∀ n, P16597808757634837479.a n = A274399 n

theorem P16597808757634837479.correct : P16597808757634837479.Spec := by
  intro n
  simp only [A274399]

end A274399

/-! ## A274399.P927358578781865273

`comp[floor((n+1)/(1-3/π))]%floor((n+1)/(1-3/π))`
-/

namespace A274399.P927358578781865273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (1 - 3 / Real.pi)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) ⌊(n + 1 : ℝ) / (1 - 3 / Real.pi)⌋

end

end A274399.P927358578781865273

namespace A274399

/-- `comp[floor((n+1)/(1-3/π))]%floor((n+1)/(1-3/π))` -/
def P927358578781865273.Spec : Prop :=
  ∀ n, P927358578781865273.a n = A274399 n

end A274399

/-! ## A274399.P11010403596222312847

`comp[A277051(n+1)]`
-/

namespace A274399.P11010403596222312847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A274399.P11010403596222312847

namespace A274399

/-- `comp[A277051(n+1)]` -/
def P11010403596222312847.Spec : Prop :=
  ∀ n, (P11010403596222312847.a n : ℤ) = A274399 n

end A274399

/-! ## A274399.P15800554297925028960

`A002264(A022844(n))`
-/

namespace A274399.P15800554297925028960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A022844 n).toNat

end

end A274399.P15800554297925028960

namespace A274399

/-- `A002264(A022844(n))` -/
def P15800554297925028960.Spec : Prop :=
  ∀ n, P15800554297925028960.a n = A274399 n

end A274399

/-! ## A274399.P4695899992866580728

`A152467(A038130(n))`
-/

namespace A274399.P4695899992866580728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A038130 n).toNat

end

end A274399.P4695899992866580728

namespace A274399

/-- `A152467(A038130(n))` -/
def P4695899992866580728.Spec : Prop :=
  ∀ n, P4695899992866580728.a n = A274399 n

end A274399

