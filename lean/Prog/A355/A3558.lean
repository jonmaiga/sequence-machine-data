import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
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
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B007.C000
import Seq.B007.C001
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
# A355800: Number of edges formed in a square by straight line segments when connecting the n-1 points between each corner that divide each edge into n equal parts to the n-1 points on the edge on the opposite side of the square.

The programs for A355800, there is no canonical definition to state claims against.
-/

/-! ## A355800.P6747555750528594959

`A355798(n+1)+A355799(n+1)-1`
-/

namespace A355800.P6747555750528594959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355798 (n + 1) + A355799 (n + 1) - 1

end

end A355800.P6747555750528594959

/-! ## A355800.P18130254944149514682

`A185048(A355799(n+1)+A355798(n+1))`
-/

namespace A355800.P18130254944149514682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (A355799 (n + 1) + A355798 (n + 1)).toNat

end

end A355800.P18130254944149514682

/-! ## A355800.P12551199286075244706

`A004442(A355799(n+1)+A355798(n+1))`
-/

namespace A355800.P12551199286075244706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A355799 (n + 1) + A355798 (n + 1)).toNat

end

end A355800.P12551199286075244706

/-! ## A355800.P14842774152006665073

`A129760(A355799(n+1)+A355798(n+1))`
-/

namespace A355800.P14842774152006665073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A355799 (n + 1) + A355798 (n + 1)).toNat

end

end A355800.P14842774152006665073

/-! ## A355800.P2766028662873384196

`A199969(A355799(n+1)+A355798(n+1))`
-/

namespace A355800.P2766028662873384196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A355799 (n + 1) + A355798 (n + 1)).toNat

end

end A355800.P2766028662873384196

/-!
# A355802: A variant of Pascal's triangle (A007318) where new rows are added cyclically below, to the right and to the left.

The programs for A355802, there is no canonical definition to state claims against.
-/

/-! ## A355802.P4121640448515382470

`round(root(A153288(n), 5))`
-/

namespace A355802.P4121640448515382470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A153288 n : ℝ) ^ (1 / (5 : ℝ)))

end

end A355802.P4121640448515382470

/-! ## A355802.P9917811467545392911

`A043559(A174545(n)+7)`
-/

namespace A355802.P9917811467545392911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 (A174545 n + 7).toNat

end

end A355802.P9917811467545392911

/-! ## A355802.P14446489883299520921

`A280737(A174545(n)+27)`
-/

namespace A355802.P14446489883299520921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280737 (A174545 n + 27).toNat

end

end A355802.P14446489883299520921

/-! ## A355802.P8910668689068311203

`A356852(A144470(n))`
-/

namespace A355802.P8910668689068311203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356852 (A144470 n).toNat

end

end A355802.P8910668689068311203

/-! ## A355802.P15062074270785895441

`A043537(ceil(sqrt(A153651(n+1))))`
-/

namespace A355802.P15062074270785895441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 ⌈Real.sqrt (A153651 (n + 1) : ℝ)⌉.toNat

end

end A355802.P15062074270785895441

/-!
# A355805: Number of compositions (ordered partitions) of n into Pell numbers (A000129).

The programs for A355805, there is no canonical definition to state claims against.
-/

/-! ## A355805.P2355405896950273662

`A209081(A340215(n+1))`
-/

namespace A355805.P2355405896950273662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209081 (A340215 (n + 1)).toNat

end

end A355805.P2355405896950273662

/-! ## A355805.P9754468905481595019

`A029900(a(n-1))-1` with `a(0)=1, a(1)=1`
-/

namespace A355805.P9754468905481595019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029900 (a (n - 1)).toNat - 1

end

end A355805.P9754468905481595019

/-! ## A355805.P17229516757266322367

`A185284(A000701(n))+A079971(n)`
-/

namespace A355805.P17229516757266322367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000701 n).toNat + A079971 n

end

end A355805.P17229516757266322367

/-! ## A355805.P9954285753998966561

`or(A079971(n), A079978(A079989(n+1)))`
-/

namespace A355805.P9954285753998966561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079971 n) (A079978 (A079989 (n + 1)).toNat)

end

end A355805.P9954285753998966561

/-! ## A355805.P5375608623772851923

`or(A079971(n), A079979(A079999(3*n)))`
-/

namespace A355805.P5375608623772851923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079971 n) (A079979 (A079999 (3 * n)).toNat)

end

end A355805.P5375608623772851923

/-!
# A355807: a(n) is the number at the apex of a triangle whose base contains the distinct powers of 2 summing to n (in ascending order), and each number in a higher row is the absolute difference of the two numbers directly below it; a(0) = 0.

The programs for A355807, there is no canonical definition to state claims against.
-/

/-! ## A355807.P8556509053191937991

`abs(A355808(n)%A355853(n+1))`
-/

namespace A355807.P8556509053191937991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A355808 n) (A355853 (n + 1))|

end

end A355807.P8556509053191937991

/-! ## A355807.P3787672549391497065

`A347706(A005117(n+1))+abs(A355808(n))`
-/

namespace A355807.P3787672549391497065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347706 (A005117 (n + 1)).toNat + |A355808 n|

end

end A355807.P3787672549391497065

/-! ## A355807.P7940167877663288964

`abs(A355808(n))-C(n+1, A345958(n+3))`
-/

namespace A355807.P7940167877663288964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355808 n| - (Nat.choose (n + 1) (A345958 (n + 3)).toNat : ℤ)

end

end A355807.P7940167877663288964

/-! ## A355807.P2862138330228352766

`lcm(A250208(A128515(n+1)+1), A355808(n))`
-/

namespace A355807.P2862138330228352766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A250208 (A128515 (n + 1) + 1).toNat) (A355808 n)

end

end A355807.P2862138330228352766

/-! ## A355807.P2751319672633453952

`abs(A355808(n)%A355760(n))`
-/

namespace A355807.P2751319672633453952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A355808 n) (A355760 n)|

end

end A355807.P2751319672633453952

/-!
# A355811: a(n) is the number at the apex of a triangle whose base contains the distinct powers of 2 summing to n (in ascending order), and each number in a higher row is the product of the two numbers directly below it; a(0) = 1.

The programs for A355811, there is no canonical definition to state claims against.
-/

/-! ## A355811.P16224996594852515630

`A363827(A309841(n))`
-/

namespace A355811.P16224996594852515630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363827 (A309841 n).toNat

end

end A355811.P16224996594852515630

/-! ## A355811.P691722872262840690

`A373303(A189601(n+1))`
-/

namespace A355811.P691722872262840690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373303 (A189601 (n + 1)).toNat

end

end A355811.P691722872262840690

/-! ## A355811.P5389663702593629104

`A380122(A184616(n)+A102291(n))`
-/

namespace A355811.P5389663702593629104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380122 (A184616 n + A102291 n).toNat

end

end A355811.P5389663702593629104

/-! ## A355811.P16366187506482143156

`A034444(A034386(n)/A347045(n+1))`
-/

namespace A355811.P16366187506482143156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (SequenceMachineLib.roundAway ((A034386 n : ℚ) / (A347045 (n + 1) : ℚ))).toNat

end

end A355811.P16366187506482143156

/-! ## A355811.P17833591360657042917

`A181819(A034386(n)/A329618(n+1))`
-/

namespace A355811.P17833591360657042917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (SequenceMachineLib.roundAway ((A034386 n : ℚ) / (A329618 (n + 1) : ℚ))).toNat

end

end A355811.P17833591360657042917

/-!
# A355813: Number of solutions (p,q) to 1/s^2 + 1/t^2 = 1/p^2 + 1/q^2 where p,q < t = A355812(n).

The programs for A355813, there is no canonical definition to state claims against.
-/

/-! ## A355813.P14936887572691468479

`A379895(n+1)%A333490(n+1)`
-/

namespace A355813.P14936887572691468479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379895 (n + 1)) (A333490 (n + 1))

end

end A355813.P14936887572691468479

/-! ## A355813.P11686866579623818434

`A379895(n+1)%A001567(A304405(n))`
-/

namespace A355813.P11686866579623818434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379895 (n + 1)) (A001567 (A304405 n).toNat)

end

end A355813.P11686866579623818434

/-! ## A355813.P2583340999338425359

`A379895(n+1)+A000007(A389734(n+2))`
-/

namespace A355813.P2583340999338425359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379895 (n + 1) + A000007 (A389734 (n + 2)).toNat

end

end A355813.P2583340999338425359

/-! ## A355813.P12363799446418960032

`A057427(A000695(2*n+1))*A379895(n+1)`
-/

namespace A355813.P12363799446418960032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A000695 (2 * n + 1)).toNat * A379895 (n + 1)

end

end A355813.P12363799446418960032

/-! ## A355813.P5665000278187165872

`A379895(n+1)+A010051(A094159(2*n+3))`
-/

namespace A355813.P5665000278187165872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379895 (n + 1) + A010051 (A094159 (2 * n + 3)).toNat

end

end A355813.P5665000278187165872

/-! ## A355813.P17450750957908695176

`A235042(A379895(n+1))%A227165(2*n+1)`
-/

namespace A355813.P17450750957908695176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235042 (A379895 (n + 1)).toNat) (A227165 (2 * n + 1))

end

end A355813.P17450750957908695176

/-! ## A355813.P18071994456295807326

`A379895(C(A166719(n+1), n))`
-/

namespace A355813.P18071994456295807326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379895 (Nat.choose (A166719 (n + 1)).toNat n)

end

end A355813.P18071994456295807326

/-! ## A355813.P3161911507333832522

`A379895(n+1)^A010689(∑[8*n/gcd(2, n)²])`
-/

namespace A355813.P3161911507333832522
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * ((n : ℚ) / (Nat.gcd 2 n ^ 2 : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379895 (n + 1) : ℚ) ^ (A010689 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℤ)

end

end A355813.P3161911507333832522

/-! ## A355813.P18087852631840478995

`A379895(n+1)^A010689(2*∑[n*4^and(1, n)])`
-/

namespace A355813.P18087852631840478995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 4 ^ Nat.land 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379895 (n + 1) : ℚ) ^ (A010689 (2 * (∑ j ∈ Finset.range (n + 1), f1 j)) : ℤ)

end

end A355813.P18087852631840478995

/-! ## A355813.P18393691159637969106

`A379895(n+1)+A010052(A141965(n+1))`
-/

namespace A355813.P18393691159637969106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379895 (n + 1) + A010052 (A141965 (n + 1)).toNat

end

end A355813.P18393691159637969106

/-!
# A355815: a(n) = gcd(A276086(n), A277791(n)), where A276086 is primorial base exp-function and A277791 is the denominator of sum of reciprocals of proper divisors of n.

The programs for A355815, there is no canonical definition to state claims against.
-/

/-! ## A355815.P16895010949600209990

`gcd(A276086(n+1), A277791(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A355815.P16895010949600209990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 (n + 1)) (A277791 (n + 1))

end

end A355815.P16895010949600209990

/-! ## A355815.P5903969069975698023

`gcd(A324198(n+1), A329383(2*n+1))`
-/

namespace A355815.P5903969069975698023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324198 (n + 1)) (A329383 (2 * n + 1))

end

end A355815.P5903969069975698023

/-! ## A355815.P13667960194957011111

`gcd(A228955(n), A324198(n+1))`
-/

namespace A355815.P13667960194957011111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A228955 n) (A324198 (n + 1))

end

end A355815.P13667960194957011111

/-! ## A355815.P4926007133318253010

`gcd(A007094(A355403(n+9))+2+n, n+1)`
-/

namespace A355815.P4926007133318253010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007094 (A355403 (n + 9)).toNat + 2 + (n : ℤ)) (n + 1 : ℤ)

end

end A355815.P4926007133318253010

/-! ## A355815.P17175868320770236230

`gcd(A380951(n), A388264(n+1))`
-/

namespace A355815.P17175868320770236230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A380951 n) (A388264 (n + 1))

end

end A355815.P17175868320770236230

/-!
# A355816: a(n) = 1 if n and sigma(n) are relatively prime, and n has at least two distinct prime factors, otherwise 0.

The programs for A355816, the canonical program `A355816.P18014603131133608948` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355816 has offset 1).

The definition of A355816 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143731, A325964, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A355816.P18014603131133608948

`A143731(n+1)*A325964(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A355816

/-- `A143731(n+1)*A325964(n+1)` -/
def P18014603131133608948.Spec : Prop :=
  ∀ n, P18014603131133608948.a n = A355816 (n + 1)

theorem P18014603131133608948.correct : P18014603131133608948.Spec := by
  intro n
  simp only [A355816, Nat.add_sub_cancel]

end A355816

/-! ## A355816.P11894682045684421030

`char[A095738(n+1)-1]`
-/

namespace A355816.P11894682045684421030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095738 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A355816.P11894682045684421030

namespace A355816

/-- `char[A095738(n+1)-1]` -/
def P11894682045684421030.Spec : Prop :=
  ∀ n, (P11894682045684421030.a n : ℤ) = A355816 (n + 1)

end A355816

/-! ## A355816.P17913276054183893722

`A325964(n+1)-A010055(n+1)`
-/

namespace A355816.P17913276054183893722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325964 (n + 1) - A010055 (n + 1)

end

end A355816.P17913276054183893722

namespace A355816

/-- `A325964(n+1)-A010055(n+1)` -/
def P17913276054183893722.Spec : Prop :=
  ∀ n, P17913276054183893722.a n = A355816 (n + 1)

end A355816

/-! ## A355816.P9485098235513829914

`and(A079872(n+1), A325964(n+1))`
-/

namespace A355816.P9485098235513829914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A079872 (n + 1)) (A325964 (n + 1))

end

end A355816.P9485098235513829914

namespace A355816

/-- `and(A079872(n+1), A325964(n+1))` -/
def P9485098235513829914.Spec : Prop :=
  ∀ n, P9485098235513829914.a n = A355816 (n + 1)

end A355816

/-! ## A355816.P1957171322921788785

`floor(A143731(n+1)/A009194(n+1))`
-/

namespace A355816.P1957171322921788785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A143731 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)⌋

end

end A355816.P1957171322921788785

namespace A355816

/-- `floor(A143731(n+1)/A009194(n+1))` -/
def P1957171322921788785.Spec : Prop :=
  ∀ n, P1957171322921788785.a n = A355816 (n + 1)

end A355816

/-! ## A355816.P899629734989449195

`char[eq[A074591(n+1), A325976(n+1)]]`
-/

namespace A355816.P899629734989449195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325976 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A355816.P899629734989449195

namespace A355816

/-- `char[eq[A074591(n+1), A325976(n+1)]]` -/
def P899629734989449195.Spec : Prop :=
  ∀ n, (P899629734989449195.a n : ℤ) = A355816 (n + 1)

end A355816

/-! ## A355816.P1173830736208175854

`A000007(A240923(n+1)+A010055(n+1))`
-/

namespace A355816.P1173830736208175854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A240923 (n + 1) + A010055 (n + 1)).toNat

end

end A355816.P1173830736208175854

namespace A355816

/-- `A000007(A240923(n+1)+A010055(n+1))` -/
def P1173830736208175854.Spec : Prop :=
  ∀ n, P1173830736208175854.a n = A355816 (n + 1)

end A355816

/-! ## A355816.P8793949979184276642

`A079275(n+1)%A173431(n+1)`
-/

namespace A355816.P8793949979184276642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079275 (n + 1)) (A173431 (n + 1))

end

end A355816.P8793949979184276642

namespace A355816

/-- `A079275(n+1)%A173431(n+1)` -/
def P8793949979184276642.Spec : Prop :=
  ∀ n, P8793949979184276642.a n = A355816 (n + 1)

end A355816

/-! ## A355816.P17858266735938978556

`A262202(n+1)%A173431(n+1)`
-/

namespace A355816.P17858266735938978556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262202 (n + 1)) (A173431 (n + 1))

end

end A355816.P17858266735938978556

namespace A355816

/-- `A262202(n+1)%A173431(n+1)` -/
def P17858266735938978556.Spec : Prop :=
  ∀ n, P17858266735938978556.a n = A355816 (n + 1)

end A355816

/-! ## A355816.P3272030576347377026

`A297155(n+1)%A173431(n+1)`
-/

namespace A355816.P3272030576347377026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297155 (n + 1)) (A173431 (n + 1))

end

end A355816.P3272030576347377026

namespace A355816

/-- `A297155(n+1)%A173431(n+1)` -/
def P3272030576347377026.Spec : Prop :=
  ∀ n, P3272030576347377026.a n = A355816 (n + 1)

end A355816

/-! ## A355816.P10333684187403327021

`A376504(n+1)%A173431(n+1)`
-/

namespace A355816.P10333684187403327021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376504 (n + 1)) (A173431 (n + 1))

end

end A355816.P10333684187403327021

namespace A355816

/-- `A376504(n+1)%A173431(n+1)` -/
def P10333684187403327021.Spec : Prop :=
  ∀ n, P10333684187403327021.a n = A355816 (n + 1)

end A355816

/-!
# A355817: Dirichlet inverse of A010055, characteristic function of powers of primes.

The programs for A355817, there is no canonical definition to state claims against.
-/

/-! ## A355817.P17508229918611843844

`(-1)^∑{e}[n+1, #]*A335452(C(2, C(3, n²))+n)`
-/

namespace A355817.P17508229918611843844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A335452 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n)

end

end A355817.P17508229918611843844

/-! ## A355817.P4261312138994922264

`Δ[A002819(n)]*A335452(n+1)`
-/

namespace A355817.P4261312138994922264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A335452 (n + 1)

end

end A355817.P4261312138994922264

/-! ## A355817.P18436424299814189124

`A008836(n+1)*A335452(n+1)`
-/

namespace A355817.P18436424299814189124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A335452 (n + 1)

end

end A355817.P18436424299814189124

/-! ## A355817.P8595512578964522471

`(-1)^A001222(n+1)*A335452(n+1)`
-/

namespace A355817.P8595512578964522471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001222 (n + 1) : ℤ) * (A335452 (n + 1) : ℚ)

end

end A355817.P8595512578964522471

/-! ## A355817.P6079031083846817161

`A008683(A007913(n+1))*A335452(n+1)`
-/

namespace A355817.P6079031083846817161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007913 (n + 1)).toNat * A335452 (n + 1)

end

end A355817.P6079031083846817161

/-! ## A355817.P10937971581985679136

`A008480(n+1)*A335452(n+1)/A355939(n+1)`
-/

namespace A355817.P10937971581985679136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008480 (n + 1) * A335452 (n + 1) : ℚ) / (A355939 (n + 1) : ℚ)

end

end A355817.P10937971581985679136

/-! ## A355817.P16978243982511684371

`A358679(A003961(n+1))`
-/

namespace A355817.P16978243982511684371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358679 (A003961 (n + 1)).toNat

end

end A355817.P16978243982511684371

/-! ## A355817.P15738874962392049528

`A358679(A332818(n+1))`
-/

namespace A355817.P15738874962392049528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358679 (A332818 (n + 1)).toNat

end

end A355817.P15738874962392049528

/-! ## A355817.P2444205123664028568

`A358679(A359600(n+1))`
-/

namespace A355817.P2444205123664028568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358679 (A359600 (n + 1)).toNat

end

end A355817.P2444205123664028568

/-! ## A355817.P2294086137671762344

`A358679(A064988(n+1))`
-/

namespace A355817.P2294086137671762344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358679 (A064988 (n + 1)).toNat

end

end A355817.P2294086137671762344

/-! ## A355817.P15286627953681723700

`A358679(A348746(n+1))`
-/

namespace A355817.P15286627953681723700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358679 (A348746 (n + 1)).toNat

end

end A355817.P15286627953681723700

/-! ## A355817.P885734214314506116

`A358679(A297002(n+1))`
-/

namespace A355817.P885734214314506116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358679 (A297002 (n + 1)).toNat

end

end A355817.P885734214314506116

/-! ## A355817.P5265803483922453897

`A358679(A389092(n+1))`
-/

namespace A355817.P5265803483922453897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358679 (A389092 (n + 1)).toNat

end

end A355817.P5265803483922453897

/-! ## A355817.P10736760464175315961

`A358679(A354091(n+1))`
-/

namespace A355817.P10736760464175315961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358679 (A354091 (n + 1)).toNat

end

end A355817.P10736760464175315961

/-! ## A355817.P4061132936820010320

`A358679(A354202(n+1))`
-/

namespace A355817.P4061132936820010320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358679 (A354202 (n + 1)).toNat

end

end A355817.P4061132936820010320

/-! ## A355817.P46103855469077802

`A358679(A357852(n+1))`
-/

namespace A355817.P46103855469077802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358679 (A357852 (n + 1)).toNat

end

end A355817.P46103855469077802

/-!
# A355818: Greatest common divisor of n, sigma(n) and A276086(n), where A276086 is primorial base exp-function.

The programs for A355818, there is no canonical definition to state claims against.
-/

/-! ## A355818.P8434009146016127657

`gcd(n+1, A324644(n+1))`
-/

namespace A355818.P8434009146016127657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A324644 (n + 1))

end

end A355818.P8434009146016127657

/-! ## A355818.P2643832919131088700

`gcd(A000203(n+1), A324198(n+1))`
-/

namespace A355818.P2643832919131088700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A324198 (n + 1))

end

end A355818.P2643832919131088700

/-! ## A355818.P16162027261351339902

`gcd(A009194(n+1), A276086(n+1))`
-/

namespace A355818.P16162027261351339902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009194 (n + 1)) (A276086 (n + 1))

end

end A355818.P16162027261351339902

/-! ## A355818.P16383566641500716531

`gcd(A351544(A351551(n+1)), A353666(n+1))`
-/

namespace A355818.P16383566641500716531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A351544 (A351551 (n + 1)).toNat) (A353666 (n + 1))

end

end A355818.P16383566641500716531

/-! ## A355818.P7062189577855448065

`gcd(A024215(A273561(n)), A353666(n+1))`
-/

namespace A355818.P7062189577855448065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024215 (A273561 n).toNat) (A353666 (n + 1))

end

end A355818.P7062189577855448065

/-! ## A355818.P6321436087361932449

`gcd(A356303(A356314(n+2)), A356306(n+1))`
-/

namespace A355818.P6321436087361932449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A356303 (A356314 (n + 2)).toNat) (A356306 (n + 1))

end

end A355818.P6321436087361932449

/-!
# A355819: Dirichlet inverse of A270419, denominator of the rational number obtained when the exponents in prime factorization of n are reinterpreted as alternating binary sums (A065620).

The programs for A355819, there is no canonical definition to state claims against.
-/

/-! ## A355819.P14946593769842660912

`A195842(A007426(n+1))*A355826(n+1)`
-/

namespace A355819.P14946593769842660912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195842 (A007426 (n + 1)).toNat * A355826 (n + 1)

end

end A355819.P14946593769842660912

/-! ## A355819.P17735745929657104478

`A162512(n+1)%A080847(A355777(3*n))`
-/

namespace A355819.P17735745929657104478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162512 (n + 1)) (A080847 (A355777 (3 * n)).toNat)

end

end A355819.P17735745929657104478

/-! ## A355819.P12698565806573076399

`A131797(A046523(n+1)%A128404(n+1))`
-/

namespace A355819.P12698565806573076399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131797 (Int.tmod (A046523 (n + 1)) (A128404 (n + 1))).toNat

end

end A355819.P12698565806573076399

/-! ## A355819.P3041339579329919161

`A162512(n+1)%A231821(A286795(n))`
-/

namespace A355819.P3041339579329919161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162512 (n + 1)) (A231821 (A286795 n).toNat)

end

end A355819.P3041339579329919161

/-!
# A355820: a(n) = 1 if A003961(n) and A276086(n) are relatively prime, otherwise 0, where A003961 is fully multiplicative with a(p) = nextprime(p), and A276086 is primorial base exp-function.

The programs for A355820, there is no canonical definition to state claims against.
-/

/-! ## A355820.P9070492710884681683

`round(acot(A355442(n+1)))`
-/

namespace A355820.P9070492710884681683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A355442 (n + 1) : ℝ))

end

end A355820.P9070492710884681683

/-! ## A355820.P849948584978696645

`floor(1/A355001(n+1))`
-/

namespace A355820.P849948584978696645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A355001 (n + 1) : ℚ)⌋

end

end A355820.P849948584978696645

/-! ## A355820.P15353070840901417075

`A003849(A355001(n+1))`
-/

namespace A355820.P15353070840901417075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A355001 (n + 1)).toNat

end

end A355820.P15353070840901417075

/-! ## A355820.P6315243789735360960

`A010054(A355001(n+1)²)`
-/

namespace A355820.P6315243789735360960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A355001 (n + 1) ^ 2).toNat

end

end A355820.P6315243789735360960

/-! ## A355820.P16096444219555854252

`A019590(A355001(n+1)²)`
-/

namespace A355820.P16096444219555854252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A355001 (n + 1) ^ 2).toNat

end

end A355820.P16096444219555854252

/-! ## A355820.P8657058068812567471

`A299406(A355001(n+1)²)`
-/

namespace A355820.P8657058068812567471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299406 (A355001 (n + 1) ^ 2).toNat

end

end A355820.P8657058068812567471

/-! ## A355820.P7793470395050703864

`A010051(A355442(n+1)+1)`
-/

namespace A355820.P7793470395050703864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A355442 (n + 1) + 1).toNat

end

end A355820.P7793470395050703864

/-! ## A355820.P3611768857365311136

`A000007(A355001(n+1)-1)`
-/

namespace A355820.P3611768857365311136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A355001 (n + 1) - 1).toNat

end

end A355820.P3611768857365311136

/-! ## A355820.P4911275701042026272

`A355449(A355442(n+1)-1)`
-/

namespace A355820.P4911275701042026272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355449 (A355442 (n + 1) - 1).toNat

end

end A355820.P4911275701042026272

/-! ## A355820.P4686000588979638181

`A354982(4*A355001(n+1))`
-/

namespace A355820.P4686000588979638181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354982 (4 * A355001 (n + 1)).toNat

end

end A355820.P4686000588979638181

/-! ## A355820.P4609661160874232930

`A355444(A355442(n+1)+11)`
-/

namespace A355820.P4609661160874232930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355444 (A355442 (n + 1) + 11).toNat

end

end A355820.P4609661160874232930

/-! ## A355820.P6021828773770135069

`A000045(C(2, A355001(n+1)))`
-/

namespace A355820.P6021828773770135069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A355001 (n + 1)).toNat)

end

end A355820.P6021828773770135069

/-! ## A355820.P2736844122345921685

`A000045(C(2, A355442(n+1)))`
-/

namespace A355820.P2736844122345921685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A355442 (n + 1)).toNat)

end

end A355820.P2736844122345921685

/-! ## A355820.P14179333685929482540

`A356162(A355001(n+1)²²)`
-/

namespace A355820.P14179333685929482540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356162 ((A355001 (n + 1) ^ 2) ^ 2).toNat

end

end A355820.P14179333685929482540

/-! ## A355820.P15730812146733766505

`∑{d}[A355442(n+1), A008683(#)]`
-/

namespace A355820.P15730812146733766505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A355820.P15730812146733766505

/-! ## A355820.P6679572955816888706

`∏{e}[A355442(n+1), A355443(#)]`
-/

namespace A355820.P6679572955816888706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A355443 (Nat.factorization (f1 n).natAbs p)

end

end A355820.P6679572955816888706

/-! ## A355820.P14640703668325037828

`∏{e}[A355442(n+1), A355447(#)]`
-/

namespace A355820.P14640703668325037828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A355447 (Nat.factorization (f1 n).natAbs p)

end

end A355820.P14640703668325037828

/-! ## A355820.P16423563766534817400

`C(2, A000040(A355001(n+1)²))`
-/

namespace A355820.P16423563766534817400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000040 (A355001 (n + 1) ^ 2).toNat).toNat

end

end A355820.P16423563766534817400

/-! ## A355820.P16969101399483596743

`C(A355437(n)², A355442(n+1))`
-/

namespace A355820.P16969101399483596743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A355437 n ^ 2).toNat (A355442 (n + 1)).toNat

end

end A355820.P16969101399483596743

/-! ## A355820.P14515470320032705263

`A001222(C(2, A355442(n+1))+1)`
-/

namespace A355820.P14515470320032705263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose 2 (A355442 (n + 1)).toNat + 1)

end

end A355820.P14515470320032705263

/-!
# A355821: Numbers k for which A003961(k) and A276086(k) are relatively prime, where A003961 is fully multiplicative with a(p) = nextprime(p), and A276086 is primorial base exp-function.

The programs for A355821, there is no canonical definition to state claims against.
-/

/-! ## A355821.P1076381650440425836

`eq[1, A355001(n+1)]+1`
-/

namespace A355821.P1076381650440425836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355001 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A355821.P1076381650440425836

/-! ## A355821.P9042093219998858000

`eq[1, A355820(n+1)]+1`
-/

namespace A355821.P9042093219998858000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A355821.P9042093219998858000

/-! ## A355821.P10451118093540312258

`comp[A355820(xor(1, n)+1)+n]`
-/

namespace A355821.P10451118093540312258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355820 (Nat.xor 1 n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A355821.P10451118093540312258

/-! ## A355821.P6473957686389219794

`comp[A355820(abs(1-n)+2)+n]+1`
-/

namespace A355821.P6473957686389219794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355820 (|1 - (n : ℤ)| + 2).toNat + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A355821.P6473957686389219794

/-! ## A355821.P16265862086537911370

`comp[A355820(C(2, (n+1)²)+n)+n]`
-/

namespace A355821.P16265862086537911370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355820 (Nat.choose 2 ((n + 1) ^ 2) + n) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A355821.P16265862086537911370

/-! ## A355821.P5932403685273248852

`record[(2*n+1)/A355001(2*n+1)]`
-/

namespace A355821.P5932403685273248852
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A355001 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355821.P5932403685273248852

/-! ## A355821.P8221693571840389056

`filter[A004273(n+1), A355820(#)]`
-/

namespace A355821.P8221693571840389056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355820 (f1 j).toNat = 1) n)

end

end A355821.P8221693571840389056

/-! ## A355821.P5989677293501383977

`filter[A004280(n+1), A355820(#)]`
-/

namespace A355821.P5989677293501383977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355820 (f1 j).toNat = 1) n)

end

end A355821.P5989677293501383977

/-! ## A355821.P9630904648285999834

`filter[A060747(n+1), A355820(#)]`
-/

namespace A355821.P9630904648285999834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355820 (f1 j).toNat = 1) n)

end

end A355821.P9630904648285999834

/-! ## A355821.P1121320185215749530

`filter[A004281(n), A355820(#)]`
-/

namespace A355821.P1121320185215749530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355820 (f1 j).toNat = 1) n)

end

end A355821.P1121320185215749530

/-! ## A355821.P8474731050617244966

`filter[A004274(n+1), A355820(#)]`
-/

namespace A355821.P8474731050617244966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355820 (f1 j).toNat = 1) n)

end

end A355821.P8474731050617244966

/-! ## A355821.P15750959120927649793

`filter[A004276(n+1), A355820(#)]`
-/

namespace A355821.P15750959120927649793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355820 (f1 j).toNat = 1) n)

end

end A355821.P15750959120927649793

/-! ## A355821.P12485766928245110831

`filter[A053460(n+1), A355820(#)]`
-/

namespace A355821.P12485766928245110831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355820 (f1 j).toNat = 1) n)

end

end A355821.P12485766928245110831

/-! ## A355821.P4283513750516103012

`filter[A128201(n+1), A355820(#)]`
-/

namespace A355821.P4283513750516103012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355820 (f1 j).toNat = 1) n)

end

end A355821.P4283513750516103012

/-! ## A355821.P9663534595755969519

`filter[A293205(n+1), A355820(#)]`
-/

namespace A355821.P9663534595755969519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355820 (f1 j).toNat = 1) n)

end

end A355821.P9663534595755969519

/-! ## A355821.P10522936621842650614

`filter[A171087(n+1), A355820(#)]`
-/

namespace A355821.P10522936621842650614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355820 (f1 j).toNat = 1) n)

end

end A355821.P10522936621842650614

/-! ## A355821.P12748557142036047634

`filter[A190941(n+1), A355820(#)]`
-/

namespace A355821.P12748557142036047634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355820 (f1 j).toNat = 1) n)

end

end A355821.P12748557142036047634

/-! ## A355821.P11015517746074143544

`filter[A042996(n+1), A355820(#)]`
-/

namespace A355821.P11015517746074143544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355820 (f1 j).toNat = 1) n)

end

end A355821.P11015517746074143544

/-! ## A355821.P15681132219641773867

`filter[A196499(n+1), A355820(#)]`
-/

namespace A355821.P15681132219641773867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355820 (f1 j).toNat = 1) n)

end

end A355821.P15681132219641773867

/-!
# A355822: Numbers k such that A003961(k) and A276086(k) share a prime factor, where A003961 is fully multiplicative with a(p) = nextprime(p), and A276086 is primorial base exp-function.

The programs for A355822, there is no canonical definition to state claims against.
-/

/-! ## A355822.P11988757692825687997

`eq[0, A355820(n+1)]+1`
-/

namespace A355822.P11988757692825687997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A355822.P11988757692825687997

/-! ## A355822.P15262173212172521124

`comp[comp[A355820(n+1)+n]%A072055(n+1)]+1`
-/

namespace A355822.P15262173212172521124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355820 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) (A072055 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A355822.P15262173212172521124

/-! ## A355822.P3865436475756008710

`lt[1, A355442(n+1)]+1`
-/

namespace A355822.P3865436475756008710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355442 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A355822.P3865436475756008710

/-! ## A355822.P4497643309685054547

`lt[1, A355442(A028310(n))]`
-/

namespace A355822.P4497643309685054547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355442 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A355822.P4497643309685054547

/-! ## A355822.P9442140763711168791

`lt[1, A355442(∏{p}[n, #^val(2*n, #)])]`
-/

namespace A355822.P9442140763711168791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355442 (∏ p ∈ Nat.primeFactors (f3 n), p ^ SequenceMachineLib.valuation (2 * n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A355822.P9442140763711168791

/-!
# A355823: a(n) = 1 if all exponents in prime factorization of n are powers of 2, otherwise 0.

The programs for A355823, the canonical program `A355823.P14712113044676311275` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355823 has offset 1).

The definition of A355823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355823.P1218147335422848047

`A321167(n+1)%2`
-/

namespace A355823.P1218147335422848047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321167 (n + 1)) 2

end

end A355823.P1218147335422848047

namespace A355823

/-- `A321167(n+1)%2` -/
def P1218147335422848047.Spec : Prop :=
  ∀ n, P1218147335422848047.a n = A355823 (n + 1)

end A355823

/-! ## A355823.P17562821857631531166

`A359411(n+1)%2`
-/

namespace A355823.P17562821857631531166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359411 (n + 1)) 2

end

end A355823.P17562821857631531166

namespace A355823

/-- `A359411(n+1)%2` -/
def P17562821857631531166.Spec : Prop :=
  ∀ n, P17562821857631531166.a n = A355823 (n + 1)

end A355823

/-! ## A355823.P14712113044676311275

`A209229(∏{e}[n+1, #])`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A355823

/-- `A209229(∏{e}[n+1, #])` -/
def P14712113044676311275.Spec : Prop :=
  ∀ n, P14712113044676311275.a n = A355823 (n + 1)

theorem P14712113044676311275.correct : P14712113044676311275.Spec := by
  intro n
  simp only [A355823, Nat.add_sub_cancel]

end A355823

/-! ## A355823.P16019964182751212916

`char[A138302(n+1)-1]`
-/

namespace A355823.P16019964182751212916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A355823.P16019964182751212916

namespace A355823

/-- `char[A138302(n+1)-1]` -/
def P16019964182751212916.Spec : Prop :=
  ∀ n, (P16019964182751212916.a n : ℤ) = A355823 (n + 1)

end A355823

/-! ## A355823.P5290796726329677826

`char[eq[1, A363329(n+1)]]`
-/

namespace A355823.P5290796726329677826
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363329 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A355823.P5290796726329677826

namespace A355823

/-- `char[eq[1, A363329(n+1)]]` -/
def P5290796726329677826.Spec : Prop :=
  ∀ n, (P5290796726329677826.a n : ℤ) = A355823 (n + 1)

end A355823

/-! ## A355823.P18131598725321499681

`char[lt[n, A270418(n+1)]]`
-/

namespace A355823.P18131598725321499681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270418 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A355823.P18131598725321499681

namespace A355823

/-- `char[lt[n, A270418(n+1)]]` -/
def P18131598725321499681.Spec : Prop :=
  ∀ n, (P18131598725321499681.a n : ℤ) = A355823 (n + 1)

end A355823

/-! ## A355823.P991972309114823786

`C(2, A368540(n+1)+1)`
-/

namespace A355823.P991972309114823786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A368540 (n + 1) + 1).toNat

end

end A355823.P991972309114823786

namespace A355823

/-- `C(2, A368540(n+1)+1)` -/
def P991972309114823786.Spec : Prop :=
  ∀ n, (P991972309114823786.a n : ℤ) = A355823 (n + 1)

end A355823

/-! ## A355823.P15743350627088737247

`C(n+1, A270436(n+1))`
-/

namespace A355823.P15743350627088737247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A270436 (n + 1)).toNat

end

end A355823.P15743350627088737247

namespace A355823

/-- `C(n+1, A270436(n+1))` -/
def P15743350627088737247.Spec : Prop :=
  ∀ n, (P15743350627088737247.a n : ℤ) = A355823 (n + 1)

end A355823

/-! ## A355823.P2467726576339868520

`C(A353897(n+1), n+1)`
-/

namespace A355823.P2467726576339868520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A353897 (n + 1)).toNat (n + 1)

end

end A355823.P2467726576339868520

namespace A355823

/-- `C(A353897(n+1), n+1)` -/
def P2467726576339868520.Spec : Prop :=
  ∀ n, (P2467726576339868520.a n : ℤ) = A355823 (n + 1)

end A355823

/-! ## A355823.P11124420520616783571

`C(n+1, A361810(n+1))`
-/

namespace A355823.P11124420520616783571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A361810 (n + 1)).toNat

end

end A355823.P11124420520616783571

namespace A355823

/-- `C(n+1, A361810(n+1))` -/
def P11124420520616783571.Spec : Prop :=
  ∀ n, (P11124420520616783571.a n : ℤ) = A355823 (n + 1)

end A355823

/-! ## A355823.P11392618537440053558

`C(n+1, A363331(n+1))`
-/

namespace A355823.P11392618537440053558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A363331 (n + 1)).toNat

end

end A355823.P11392618537440053558

namespace A355823

/-- `C(n+1, A363331(n+1))` -/
def P11392618537440053558.Spec : Prop :=
  ∀ n, (P11392618537440053558.a n : ℤ) = A355823 (n + 1)

end A355823

/-! ## A355823.P12693744095804113473

`A034448(∏{e}[n+1, #])%2`
-/

namespace A355823.P12693744095804113473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034448 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) 2

end

end A355823.P12693744095804113473

namespace A355823

/-- `A034448(∏{e}[n+1, #])%2` -/
def P12693744095804113473.Spec : Prop :=
  ∀ n, P12693744095804113473.a n = A355823 (n + 1)

end A355823

/-! ## A355823.P5391742838602943360

`A048250(∏{e}[n+1, #])%2`
-/

namespace A355823.P5391742838602943360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048250 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) 2

end

end A355823.P5391742838602943360

namespace A355823

/-- `A048250(∏{e}[n+1, #])%2` -/
def P5391742838602943360.Spec : Prop :=
  ∀ n, P5391742838602943360.a n = A355823 (n + 1)

end A355823

/-! ## A355823.P8511937043749284914

`∏{p}[A005361(n+1), val(#, 2)]`
-/

namespace A355823.P8511937043749284914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation p 2

end

end A355823.P8511937043749284914

namespace A355823

/-- `∏{p}[A005361(n+1), val(#, 2)]` -/
def P8511937043749284914.Spec : Prop :=
  ∀ n, (P8511937043749284914.a n : ℤ) = A355823 (n + 1)

end A355823

/-! ## A355823.P14497237805051369819

`A209229(A005361(n+1))`
-/

namespace A355823.P14497237805051369819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A005361 (n + 1)).toNat

end

end A355823.P14497237805051369819

namespace A355823

/-- `A209229(A005361(n+1))` -/
def P14497237805051369819.Spec : Prop :=
  ∀ n, P14497237805051369819.a n = A355823 (n + 1)

end A355823

/-! ## A355823.P15913789004745721587

`A135416(A368540(n+1))`
-/

namespace A355823.P15913789004745721587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (A368540 (n + 1)).toNat

end

end A355823.P15913789004745721587

namespace A355823

/-- `A135416(A368540(n+1))` -/
def P15913789004745721587.Spec : Prop :=
  ∀ n, P15913789004745721587.a n = A355823 (n + 1)

end A355823

/-! ## A355823.P9789045843743436091

`A209229(A372504(n+1))`
-/

namespace A355823.P9789045843743436091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A372504 (n + 1)).toNat

end

end A355823.P9789045843743436091

namespace A355823

/-- `A209229(A372504(n+1))` -/
def P9789045843743436091.Spec : Prop :=
  ∀ n, P9789045843743436091.a n = A355823 (n + 1)

end A355823

/-! ## A355823.P4082932411429910771

`abs(A008683(A331737(n+1)))`
-/

namespace A355823.P4082932411429910771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (A331737 (n + 1)).toNat|

end

end A355823.P4082932411429910771

namespace A355823

/-- `abs(A008683(A331737(n+1)))` -/
def P4082932411429910771.Spec : Prop :=
  ∀ n, P4082932411429910771.a n = A355823 (n + 1)

end A355823

/-! ## A355823.P1003923329908184050

`A392629(A363329(n+1)²)`
-/

namespace A355823.P1003923329908184050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392629 (A363329 (n + 1) ^ 2).toNat

end

end A355823.P1003923329908184050

namespace A355823

/-- `A392629(A363329(n+1)²)` -/
def P1003923329908184050.Spec : Prop :=
  ∀ n, P1003923329908184050.a n = A355823 (n + 1)

end A355823

/-! ## A355823.P3918196649429371696

`and(A016760(n), A321167(n+1))`
-/

namespace A355823.P3918196649429371696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A321167 (n + 1))

end

end A355823.P3918196649429371696

namespace A355823

/-- `and(A016760(n), A321167(n+1))` -/
def P3918196649429371696.Spec : Prop :=
  ∀ n, P3918196649429371696.a n = A355823 (n + 1)

end A355823

/-!
# A355824: Dirichlet inverse of A355823, characteristic function of exponentially 2^n-numbers.

The programs for A355824, there is no canonical definition to state claims against.
-/

/-! ## A355824.P9976018905960963958

`∏{e}[n+1, A339422(#)]`
-/

namespace A355824.P9976018905960963958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A339422 (Nat.factorization (f1 n) p)

end

end A355824.P9976018905960963958

/-! ## A355824.P7092458986352844435

`or(A064873(A057954(3*n+5)), A355826(n+1))`
-/

namespace A355824.P7092458986352844435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064873 (A057954 (3 * n + 5)).toNat) (A355826 (n + 1))

end

end A355824.P7092458986352844435

/-!
# A355825: a(n) = 1 if all exponents in prime factorization of n have an odd binary weight, otherwise 0.

The programs for A355825, the canonical program `A355825.P15495116383470503426` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355825 has offset 1).

The definition of A355825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355825.P4035003920145618499

`A295316(A268385(n+1))`
-/

namespace A355825.P4035003920145618499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295316 (A268385 (n + 1)).toNat

end

end A355825.P4035003920145618499

namespace A355825

/-- `A295316(A268385(n+1))` -/
def P4035003920145618499.Spec : Prop :=
  ∀ n, P4035003920145618499.a n = A355825 (n + 1)

end A355825

/-! ## A355825.P15495116383470503426

`A363329(n+1)%3`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A355825

/-- `A363329(n+1)%3` -/
def P15495116383470503426.Spec : Prop :=
  ∀ n, P15495116383470503426.a n = A355825 (n + 1)

theorem P15495116383470503426.correct : P15495116383470503426.Spec := by
  intro n
  simp only [A355825, Nat.add_sub_cancel]

end A355825

/-! ## A355825.P15581403584952084289

`round(acot(A270419(n+1)))`
-/

namespace A355825.P15581403584952084289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A270419 (n + 1) : ℝ))

end

end A355825.P15581403584952084289

namespace A355825

/-- `round(acot(A270419(n+1)))` -/
def P15581403584952084289.Spec : Prop :=
  ∀ n, P15581403584952084289.a n = A355825 (n + 1)

end A355825

/-! ## A355825.P16284185416253127773

`char[A270428(n+1)-1]`
-/

namespace A355825.P16284185416253127773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270428 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A355825.P16284185416253127773

namespace A355825

/-- `char[A270428(n+1)-1]` -/
def P16284185416253127773.Spec : Prop :=
  ∀ n, (P16284185416253127773.a n : ℤ) = A355825 (n + 1)

end A355825

/-! ## A355825.P1514096594968690932

`A011655(A363329(n+1))`
-/

namespace A355825.P1514096594968690932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A363329 (n + 1)).toNat

end

end A355825.P1514096594968690932

namespace A355825

/-- `A011655(A363329(n+1))` -/
def P1514096594968690932.Spec : Prop :=
  ∀ n, P1514096594968690932.a n = A355825 (n + 1)

end A355825

/-! ## A355825.P343823354526398389

`A372504(A367513(n+1))`
-/

namespace A355825.P343823354526398389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372504 (A367513 (n + 1)).toNat

end

end A355825.P343823354526398389

namespace A355825

/-- `A372504(A367513(n+1))` -/
def P343823354526398389.Spec : Prop :=
  ∀ n, P343823354526398389.a n = A355825 (n + 1)

end A355825

/-! ## A355825.P16952229343913317839

`A008683(A270419(n+1)²)`
-/

namespace A355825.P16952229343913317839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A270419 (n + 1) ^ 2).toNat

end

end A355825.P16952229343913317839

namespace A355825

/-- `A008683(A270419(n+1)²)` -/
def P16952229343913317839.Spec : Prop :=
  ∀ n, P16952229343913317839.a n = A355825 (n + 1)

end A355825

/-! ## A355825.P10765038361422982042

`A010892(A363329(n+1)-1)`
-/

namespace A355825.P10765038361422982042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A363329 (n + 1) - 1).toNat

end

end A355825.P10765038361422982042

namespace A355825

/-- `A010892(A363329(n+1)-1)` -/
def P10765038361422982042.Spec : Prop :=
  ∀ n, P10765038361422982042.a n = A355825 (n + 1)

end A355825

/-! ## A355825.P5080471832122738465

`A087371(A290107(n+1)+3)`
-/

namespace A355825.P5080471832122738465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087371 (A290107 (n + 1) + 3).toNat

end

end A355825.P5080471832122738465

namespace A355825

/-- `A087371(A290107(n+1)+3)` -/
def P5080471832122738465.Spec : Prop :=
  ∀ n, P5080471832122738465.a n = A355825 (n + 1)

end A355825

/-! ## A355825.P3512759638403170618

`and(A016760(n), A367516(n+1))`
-/

namespace A355825.P3512759638403170618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A367516 (n + 1))

end

end A355825.P3512759638403170618

namespace A355825

/-- `and(A016760(n), A367516(n+1))` -/
def P3512759638403170618.Spec : Prop :=
  ∀ n, P3512759638403170618.a n = A355825 (n + 1)

end A355825

/-! ## A355825.P2933929553174384919

`and(A036088(n), A367516(n+1))`
-/

namespace A355825.P2933929553174384919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036088 n) (A367516 (n + 1))

end

end A355825.P2933929553174384919

namespace A355825

/-- `and(A036088(n), A367516(n+1))` -/
def P2933929553174384919.Spec : Prop :=
  ∀ n, P2933929553174384919.a n = A355825 (n + 1)

end A355825

/-! ## A355825.P17938729388485478000

`and(A055428(n), A367516(n+1))`
-/

namespace A355825.P17938729388485478000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055428 n) (A367516 (n + 1))

end

end A355825.P17938729388485478000

namespace A355825

/-- `and(A055428(n), A367516(n+1))` -/
def P17938729388485478000.Spec : Prop :=
  ∀ n, P17938729388485478000.a n = A355825 (n + 1)

end A355825

/-! ## A355825.P112240725617896828

`∑{d}[n+1, A008683(#)*A366901((n+1)/#)]`
-/

namespace A355825.P112240725617896828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A366901 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A355825.P112240725617896828

namespace A355825

/-- `∑{d}[n+1, A008683(#)*A366901((n+1)/#)]` -/
def P112240725617896828.Spec : Prop :=
  ∀ n, P112240725617896828.a n = A355825 (n + 1)

end A355825

/-! ## A355825.P13669252595627979138

`char[A270436(n+1)-1]`
-/

namespace A355825.P13669252595627979138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270436 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A355825.P13669252595627979138

namespace A355825

/-- `char[A270436(n+1)-1]` -/
def P13669252595627979138.Spec : Prop :=
  ∀ n, (P13669252595627979138.a n : ℤ) = A355825 (n + 1)

end A355825

/-! ## A355825.P11915252011698436137

`A033041(3*n+2)%A001285(A005361(n+1))`
-/

namespace A355825.P11915252011698436137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033041 (3 * n + 2)) (A001285 (A005361 (n + 1)).toNat)

end

end A355825.P11915252011698436137

namespace A355825

/-- `A033041(3*n+2)%A001285(A005361(n+1))` -/
def P11915252011698436137.Spec : Prop :=
  ∀ n, P11915252011698436137.a n = A355825 (n + 1)

end A355825

/-! ## A355825.P12480122350254626330

`and(A010060(A005361(n+1)), A139643(3*(n+1)))`
-/

namespace A355825.P12480122350254626330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010060 (A005361 (n + 1)).toNat) (A139643 (3 * (n + 1)))

end

end A355825.P12480122350254626330

namespace A355825

/-- `and(A010060(A005361(n+1)), A139643(3*(n+1)))` -/
def P12480122350254626330.Spec : Prop :=
  ∀ n, P12480122350254626330.a n = A355825 (n + 1)

end A355825

/-! ## A355825.P1298027493937969895

`A273672(gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n]))%2`
-/

namespace A355825.P1298027493937969895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273672 (Int.gcd (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ 2)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))) 2

end

end A355825.P1298027493937969895

namespace A355825

/-- `A273672(gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n]))%2` -/
def P1298027493937969895.Spec : Prop :=
  ∀ n, P1298027493937969895.a n = A355825 (n + 1)

end A355825

/-! ## A355825.P1198864864638799109

`and(A002064(n), A367516(n+1))`
-/

namespace A355825.P1198864864638799109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002064 n) (A367516 (n + 1))

end

end A355825.P1198864864638799109

namespace A355825

/-- `and(A002064(n), A367516(n+1))` -/
def P1198864864638799109.Spec : Prop :=
  ∀ n, P1198864864638799109.a n = A355825 (n + 1)

end A355825

/-! ## A355825.P9455150306660315846

`and(A048482(n), A367516(n+1))`
-/

namespace A355825.P9455150306660315846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048482 n) (A367516 (n + 1))

end

end A355825.P9455150306660315846

namespace A355825

/-- `and(A048482(n), A367516(n+1))` -/
def P9455150306660315846.Spec : Prop :=
  ∀ n, P9455150306660315846.a n = A355825 (n + 1)

end A355825

/-! ## A355825.P6914181617290800021

`and(A048482(n), A392452(n+1))`
-/

namespace A355825.P6914181617290800021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048482 n) (A392452 (n + 1))

end

end A355825.P6914181617290800021

namespace A355825

/-- `and(A048482(n), A392452(n+1))` -/
def P6914181617290800021.Spec : Prop :=
  ∀ n, P6914181617290800021.a n = A355825 (n + 1)

end A355825

/-!
# A355826: Dirichlet inverse of A355825, characteristic function of exponentially odious numbers.

The programs for A355826, there is no canonical definition to state claims against.
-/

/-! ## A355826.P16449123218079159215

`A355824(n+1)%Δ[A078540(n+2)]`
-/

namespace A355826.P16449123218079159215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078540 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355824 (n + 1)) (f1 (n + 1) - f1 n)

end

end A355826.P16449123218079159215

/-! ## A355826.P5729470501742757568

`A355824(n+1)%A098905(A048883(n))`
-/

namespace A355826.P5729470501742757568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355824 (n + 1)) (A098905 (A048883 n).toNat)

end

end A355826.P5729470501742757568

/-! ## A355826.P8981436135285026033

`A355824(n+1)+A063524(A054588(n+3))`
-/

namespace A355826.P8981436135285026033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355824 (n + 1) + A063524 (A054588 (n + 3)).toNat

end

end A355826.P8981436135285026033

/-! ## A355826.P15327096819490666233

`A343408(A272367(3*n+1))*A355824(n+1)`
-/

namespace A355826.P15327096819490666233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343408 (A272367 (3 * n + 1)).toNat * A355824 (n + 1)

end

end A355826.P15327096819490666233

/-! ## A355826.P10930336128230884018

`A355824(n+1)+A000007(A001597(n+1))`
-/

namespace A355826.P10930336128230884018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355824 (n + 1) + A000007 (A001597 (n + 1)).toNat

end

end A355826.P10930336128230884018

/-! ## A355826.P10447475781980521165

`A003415(A355856(2*n+3))*A355824(n+1)`
-/

namespace A355826.P10447475781980521165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A355856 (2 * n + 3)).toNat * A355824 (n + 1)

end

end A355826.P10447475781980521165

/-! ## A355826.P7996924490575961268

`A006519(A184247(3*n+4))*A355824(n+1)`
-/

namespace A355826.P7996924490575961268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A184247 (3 * n + 4)).toNat * A355824 (n + 1)

end

end A355826.P7996924490575961268

/-! ## A355826.P7477042788374566640

`A355824(n+1)+A355816(A141977(3*n+4))`
-/

namespace A355826.P7477042788374566640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355824 (n + 1) + A355816 (A141977 (3 * n + 4)).toNat

end

end A355826.P7477042788374566640

/-! ## A355826.P11506919722464753871

`A062362(A062391(3*n+2))*A355824(n+1)`
-/

namespace A355826.P11506919722464753871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062362 (A062391 (3 * n + 2)).toNat * A355824 (n + 1)

end

end A355826.P11506919722464753871

/-! ## A355826.P8633972247411451456

`A355824(n+1)/A355818(A355813(3*n+2))`
-/

namespace A355826.P8633972247411451456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355824 (n + 1) : ℚ) / (A355818 (A355813 (3 * n + 2)).toNat : ℚ)

end

end A355826.P8633972247411451456

/-! ## A355826.P15683535255868336920

`A355824(n+1)+A185014(A235661(2*(n+2)))`
-/

namespace A355826.P15683535255868336920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355824 (n + 1) + A185014 (A235661 (2 * (n + 2))).toNat

end

end A355826.P15683535255868336920

/-!
# A355827: a(1) = 1, and for n > 1, a(n) = -Sum_{d|n, d

The programs for A355827, there is no canonical definition to state claims against.
-/

/-! ## A355827.P11671511946264345315

`A353422(A187829(n+1)²)`
-/

namespace A355827.P11671511946264345315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353422 (A187829 (n + 1) ^ 2).toNat

end

end A355827.P11671511946264345315

/-! ## A355827.P12868203217212791817

`A353422((n+1)*A187829(n+1))`
-/

namespace A355827.P12868203217212791817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353422 ((n + 1 : ℤ) * A187829 (n + 1)).toNat

end

end A355827.P12868203217212791817

/-! ## A355827.P7041453342683591447

`A353422(A003961(A003961((n+1)²)))`
-/

namespace A355827.P7041453342683591447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353422 (A003961 (A003961 ((n + 1) ^ 2)).toNat).toNat

end

end A355827.P7041453342683591447

/-! ## A355827.P10329767284604763973

`A282634(A165835(n+1)+A051903(n+1))`
-/

namespace A355827.P10329767284604763973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282634 (A165835 (n + 1) + A051903 (n + 1)).toNat

end

end A355827.P10329767284604763973

/-!
# A355830: Lexicographically earliest infinite sequence such that a(i) = a(j) => A046523(i) = A046523(j) and A345000(i) = A345000(j) for all i, j >= 1.

The programs for A355830, there is no canonical definition to state claims against.
-/

/-! ## A355830.P1530531770606815636

`A355831(n+1)%A000978(n+1)`
-/

namespace A355830.P1530531770606815636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355831 (n + 1)) (A000978 (n + 1))

end

end A355830.P1530531770606815636

/-! ## A355830.P8255240003345199213

`A355831(n+1)+A000007(A113326(n))`
-/

namespace A355830.P8255240003345199213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355831 (n + 1) + A000007 (A113326 n).toNat

end

end A355830.P8255240003345199213

/-! ## A355830.P17120544152528909232

`A355831(n+1)+A185017(A005897(n))`
-/

namespace A355830.P17120544152528909232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355831 (n + 1) + A185017 (A005897 n).toNat

end

end A355830.P17120544152528909232

/-! ## A355830.P16853980232166038840

`A355831(n+1)+A059841(A337562(n))`
-/

namespace A355830.P16853980232166038840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355831 (n + 1) + A059841 (A337562 n).toNat

end

end A355830.P16853980232166038840

/-! ## A355830.P8080343878862267218

`A355831(n+1)/A008480(A005846(2*n+5))`
-/

namespace A355830.P8080343878862267218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355831 (n + 1) : ℚ) / (A008480 (A005846 (2 * n + 5)).toNat : ℚ)

end

end A355830.P8080343878862267218

/-!
# A355832: Lexicographically earliest infinite sequence such that a(i) = a(j) => A354347(i) = A354347(j) for all i, j >= 1.

The programs for A355832, there is no canonical definition to state claims against.
-/

/-! ## A355832.P17272055995734304917

`gcd(A010711(A010752(n+4)), A075254(n+1))`
-/

namespace A355832.P17272055995734304917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010711 (A010752 (n + 4)).toNat) (A075254 (n + 1))

end

end A355832.P17272055995734304917

/-! ## A355832.P459799532955220437

`A001511(or(A098474(3*n+2), A324818(n+1)))`
-/

namespace A355832.P459799532955220437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.lor (A098474 (3 * n + 2)) (A324818 (n + 1))).toNat

end

end A355832.P459799532955220437

/-! ## A355832.P11303584197017453079

`A160651((∏{p}[n+1, (n+1)/#]%(n+1))%A223170(3*n+1))`
-/

namespace A355832.P11303584197017453079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 (Int.tmod (Int.tmod (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) (n + 1 : ℤ)) (A223170 (3 * n + 1))).toNat

end

end A355832.P11303584197017453079

/-! ## A355832.P18381575123275930910

`A304495(n+1)+A010060(A076745(n+1))`
-/

namespace A355832.P18381575123275930910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304495 (n + 1) + A010060 (A076745 (n + 1)).toNat

end

end A355832.P18381575123275930910

/-! ## A355832.P8213841541989107109

`A124765(A003680(n+1))/A114536(n+1)`
-/

namespace A355832.P8213841541989107109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124765 (A003680 (n + 1)).toNat : ℚ) / (A114536 (n + 1) : ℚ)

end

end A355832.P8213841541989107109

/-!
# A355833: Lexicographically earliest infinite sequence such that a(i) = a(j) => A342671(i) = A342671(j) and A348717(i) = A348717(j) for all i, j >= 1.

The programs for A355833, there is no canonical definition to state claims against.
-/

/-! ## A355833.P9464976036271157797

`A318887(n+1)+A059841(A006156(n))`
-/

namespace A355833.P9464976036271157797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318887 (n + 1) + A059841 (A006156 n).toNat

end

end A355833.P9464976036271157797

/-! ## A355833.P7946133634129566564

`A001222(2^A319339(n+1))`
-/

namespace A355833.P7946133634129566564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A319339 (n + 1) : ℤ))).toNat

end

end A355833.P7946133634129566564

/-! ## A355833.P914229408228524167

`A051903(2^A319339(n+1))`
-/

namespace A355833.P914229408228524167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A319339 (n + 1) : ℤ))).toNat

end

end A355833.P914229408228524167

/-! ## A355833.P7087462543575214917

`A318887(n+1)+A084360(A015128(n))`
-/

namespace A355833.P7087462543575214917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318887 (n + 1) + A084360 (A015128 n).toNat

end

end A355833.P7087462543575214917

/-! ## A355833.P15653526681275784371

`A319339(n+1)*A368414(A008578(n+1))`
-/

namespace A355833.P15653526681275784371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319339 (n + 1) * A368414 (A008578 (n + 1)).toNat

end

end A355833.P15653526681275784371

/-!
# A355834: Lexicographically earliest infinite sequence such that a(i) = a(j) => A348717(i) = A348717(j) and A355931(i) = A355931(j) for all i, j >= 1.

The programs for A355834, there is no canonical definition to state claims against.
-/

/-! ## A355834.P4084389823574483912

`A305897(lt[A108917(n), A055998(n)])`
-/

namespace A355834.P4084389823574483912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108917 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A355834.P4084389823574483912

/-! ## A355834.P16145214357092671105

`A305897(lt[A259200(n), A011371(3*n+2)])`
-/

namespace A355834.P16145214357092671105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259200 (n + 18)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A355834.P16145214357092671105

/-! ## A355834.P13178998328633711399

`A246277(n+1)+A018242(A261477(n))`
-/

namespace A355834.P13178998328633711399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (n + 1) + A018242 (A261477 n).toNat

end

end A355834.P13178998328633711399

/-! ## A355834.P9485011450887072257

`A277203(A136640(n+1))+A246277(n+1)`
-/

namespace A355834.P9485011450887072257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277203 (A136640 (n + 1)).toNat + A246277 (n + 1)

end

end A355834.P9485011450887072257

/-!
# A355835: Lexicographically earliest infinite sequence such that a(i) = a(j) => A348717(i) = A348717(j) and A355442(i) = A355442(j) for all i, j >= 1.

The programs for A355835, there is no canonical definition to state claims against.
-/

/-! ## A355835.P15366414518440071242

`A305810(A305801(n+1)%A118936(n+1))`
-/

namespace A355835.P15366414518440071242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305810 (Int.tmod (A305801 (n + 1)) (A118936 (n + 1))).toNat

end

end A355835.P15366414518440071242

/-! ## A355835.P4375662684307375208

`A305810(A305801(n+1))%A305823(n+3)`
-/

namespace A355835.P4375662684307375208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305810 (A305801 (n + 1)).toNat) (A305823 (n + 3))

end

end A355835.P4375662684307375208

/-! ## A355835.P1139123861276058278

`A322024(n+1)+A000122(A000009(3*n+4))`
-/

namespace A355835.P1139123861276058278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322024 (n + 1) + A000122 (A000009 (3 * n + 4)).toNat

end

end A355835.P1139123861276058278

/-!
# A355836: Lexicographically earliest infinite sequence such that a(i) = a(j) => A046523(i) = A046523(j) and A355442(i) = A355442(j) for all i, j >= 1.

The programs for A355836, there is no canonical definition to state claims against.
-/

/-! ## A355836.P11633934114495780890

`or(A007949(A029744(n+3)), A305893(n+1))`
-/

namespace A355836.P11633934114495780890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007949 (A029744 (n + 3)).toNat) (A305893 (n + 1))

end

end A355836.P11633934114495780890

/-! ## A355836.P9014135474138687499

`or(A000035(A260443(n)), A305893(n+1))`
-/

namespace A355836.P9014135474138687499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A260443 n).toNat) (A305893 (n + 1))

end

end A355836.P9014135474138687499

/-! ## A355836.P13245677157327162857

`A158289(A355835(n+1)%A123142(2*(n+1)))`
-/

namespace A355836.P13245677157327162857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158289 (Int.tmod (A355835 (n + 1)) (A123142 (2 * (n + 1) + 64))).toNat

end

end A355836.P13245677157327162857

/-! ## A355836.P280050953705604509

`xor(A163529(A185264(2*(n+1))), A323371(n+1))`
-/

namespace A355836.P280050953705604509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A163529 (A185264 (2 * (n + 1))).toNat) (A323371 (n + 1))

end

end A355836.P280050953705604509

/-!
# A355837: Dirichlet inverse of A322327.

The programs for A355837, the canonical program `A355837.P12297603814747181440` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355837 has offset 1).

The definition of A355837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355837.P12297603814747181440

`∏{e}[n+1, A084099(#+2)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A355837

/-- `∏{e}[n+1, A084099(#+2)]` -/
def P12297603814747181440.Spec : Prop :=
  ∀ n, P12297603814747181440.a n = A355837 (n + 1)

theorem P12297603814747181440.correct : P12297603814747181440.Spec := by
  intro n
  simp only [A355837, Nat.add_sub_cancel]

end A355837

/-! ## A355837.P10912642148183174349

`∑{d}[n+1, A007428(#)*A353519((n+1)/#)]`
-/

namespace A355837.P10912642148183174349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A353519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A355837.P10912642148183174349

namespace A355837

/-- `∑{d}[n+1, A007428(#)*A353519((n+1)/#)]` -/
def P10912642148183174349.Spec : Prop :=
  ∀ n, P10912642148183174349.a n = A355837 (n + 1)

end A355837

/-! ## A355837.P8039616266870265528

`∑{d}[n+1, A219009(#)*A307445((n+1)/#)]`
-/

namespace A355837.P8039616266870265528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A219009 d * A307445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A355837.P8039616266870265528

namespace A355837

/-- `∑{d}[n+1, A219009(#)*A307445((n+1)/#)]` -/
def P8039616266870265528.Spec : Prop :=
  ∀ n, P8039616266870265528.a n = A355837 (n + 1)

end A355837

/-! ## A355837.P2832197592230990664

`∑{d}[n+1, A247343(#)*A365171((n+1)/#)]`
-/

namespace A355837.P2832197592230990664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A247343 d * A365171 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A355837.P2832197592230990664

namespace A355837

/-- `∑{d}[n+1, A247343(#)*A365171((n+1)/#)]` -/
def P2832197592230990664.Spec : Prop :=
  ∀ n, P2832197592230990664.a n = A355837 (n + 1)

end A355837

/-! ## A355837.P9628651972194657808

`∑{d}[n+1, A369255(#)*A378213((n+1)/#)]`
-/

namespace A355837.P9628651972194657808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A369255 d * A378213 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A355837.P9628651972194657808

namespace A355837

/-- `∑{d}[n+1, A369255(#)*A378213((n+1)/#)]` -/
def P9628651972194657808.Spec : Prop :=
  ∀ n, P9628651972194657808.a n = A355837 (n + 1)

end A355837

/-! ## A355837.P6960825401039408959

`∏{e}[(n+1)*∏{p}[n+1, #], A176742(#)]`
-/

namespace A355837.P6960825401039408959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A176742 (Nat.factorization (f1 n) p)

end

end A355837.P6960825401039408959

namespace A355837

/-- `∏{e}[(n+1)*∏{p}[n+1, #], A176742(#)]` -/
def P6960825401039408959.Spec : Prop :=
  ∀ n, P6960825401039408959.a n = A355837 (n + 1)

end A355837

/-!
# A355838: Number of regions formed in a square by straight line segments when connecting the n+1 points along each edge that divide it into n equal parts to the n+1 points on the edge on the opposite side of the square.

The programs for A355838, there is no canonical definition to state claims against.
-/

/-! ## A355838.P1312348342208633864

`A355840(n+1)-A355839(n+1)+1`
-/

namespace A355838.P1312348342208633864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355840 (n + 1) - A355839 (n + 1) + 1

end

end A355838.P1312348342208633864

/-! ## A355838.P5513537571777212988

`A092486(A355840(n+1)-A355839(n+1))`
-/

namespace A355838.P5513537571777212988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (A355840 (n + 1) - A355839 (n + 1)).toNat

end

end A355838.P5513537571777212988

/-! ## A355838.P6001476567538982392

`A014681(A355840(n+1)-A355839(n+1))`
-/

namespace A355838.P6001476567538982392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A355840 (n + 1) - A355839 (n + 1)).toNat

end

end A355838.P6001476567538982392

/-! ## A355838.P15042307079099460702

`A015906(A355840(n+1)-A355839(n+1))`
-/

namespace A355838.P15042307079099460702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (A355840 (n + 1) - A355839 (n + 1)).toNat

end

end A355838.P15042307079099460702

/-!
# A355839: Number of vertices formed in a square by straight line segments when connecting the n+1 points along each edge that divide it into n equal parts to the n+1 points on the edge on the opposite side of the square.

The programs for A355839, there is no canonical definition to state claims against.
-/

/-! ## A355839.P5480824258623705019

`A355840(n+1)-A355838(n+1)+1`
-/

namespace A355839.P5480824258623705019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355840 (n + 1) - A355838 (n + 1) + 1

end

end A355839.P5480824258623705019

/-! ## A355839.P13345433963549580888

`A004442(A355840(n+1)-A355838(n+1))`
-/

namespace A355839.P13345433963549580888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A355840 (n + 1) - A355838 (n + 1)).toNat

end

end A355839.P13345433963549580888

/-!
# A355840: Number of edges formed in a square by straight line segments when connecting the n+1 points along each edge that divide it into n equal parts to the n+1 points on the edge on the opposite side of the square.

The programs for A355840, there is no canonical definition to state claims against.
-/

/-! ## A355840.P14737300823758562900

`A355838(n+1)+A355839(n+1)-1`
-/

namespace A355840.P14737300823758562900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355838 (n + 1) + A355839 (n + 1) - 1

end

end A355840.P14737300823758562900

/-! ## A355840.P15204674470413647256

`A355838(n+1)+A185048(A355839(n+1))`
-/

namespace A355840.P15204674470413647256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355838 (n + 1) + A185048 (A355839 (n + 1)).toNat

end

end A355840.P15204674470413647256

/-! ## A355840.P11552485747904935790

`A004442(A355839(n+1)+A355838(n+1))`
-/

namespace A355840.P11552485747904935790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A355839 (n + 1) + A355838 (n + 1)).toNat

end

end A355840.P11552485747904935790

/-!
# A355842: E.g.f. satisfies A(x) = 1/(1 - x)^(x * A(x)).

The programs for A355842, there is no canonical definition to state claims against.
-/

/-! ## A355842.P831302790274979593

`A008615(2*A053490(n))`
-/

namespace A355842.P831302790274979593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A053490 n).toNat

end

end A355842.P831302790274979593

/-! ## A355842.P12730800689585753366

`A008615(6*A375687(n))`
-/

namespace A355842.P12730800689585753366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (6 * A375687 n).toNat

end

end A355842.P12730800689585753366

/-!
# A355843: E.g.f. satisfies log(A(x)) = x * (exp(x) - 1) * A(x).

The programs for A355843, there is no canonical definition to state claims against.
-/

/-! ## A355843.P8879459798668825546

`A231797(n)+A038760(A053490(n))`
-/

namespace A355843.P8879459798668825546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231797 n + A038760 (A053490 n).toNat

end

end A355843.P8879459798668825546

/-! ## A355843.P11990377899513766480

`A008615(2*A351734(n))`
-/

namespace A355843.P11990377899513766480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A351734 n).toNat

end

end A355843.P11990377899513766480

/-!
# A355844: a(n) is the number of different self-avoiding (n-1)-move routes for a king on an empty n X n chessboard.

The programs for A355844, there is no canonical definition to state claims against.
-/

/-! ## A355844.P3333477147046430553

`A186861(∑[4*n]+1)`
-/

namespace A355844.P3333477147046430553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A355844.P3333477147046430553

/-! ## A355844.P14611001786313189451

`record[A003982(n)*A186861(n+1)]`
-/

namespace A355844.P14611001786313189451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A186861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355844.P14611001786313189451

/-! ## A355844.P13120504557444182914

`record[gcd(A037012(n), A186861(n+1))]`
-/

namespace A355844.P13120504557444182914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A186861 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355844.P13120504557444182914

/-! ## A355844.P12099694768538111577

`A186861(A001844(n))+C(n%2, 2)`
-/

namespace A355844.P12099694768538111577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (A001844 n).toNat + (Nat.choose (n % 2) 2 : ℤ)

end

end A355844.P12099694768538111577

/-! ## A355844.P7265478148913197542

`A186861(A001844(n))+A064834(n)`
-/

namespace A355844.P7265478148913197542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (A001844 n).toNat + A064834 n

end

end A355844.P7265478148913197542

/-!
# A355845: First of three consecutive primes p,q,r such that p*r - q^2 + q*r is prime.

The programs for A355845, there is no canonical definition to state claims against.
-/

/-! ## A355845.P16026089775280242491

`A065091(lt[A172264(n), A134724(n)])`
-/

namespace A355845.P16026089775280242491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172264 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A355845.P16026089775280242491

/-! ## A355845.P7831169071970169400

`A123318(A319755(n)+1+n)`
-/

namespace A355845.P7831169071970169400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123318 (A319755 n + 1 + (n : ℤ)).toNat

end

end A355845.P7831169071970169400

/-! ## A355845.P15014643199670673079

`filter[A117243(n+1), A092079(#)]`
-/

namespace A355845.P15014643199670673079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092079 (f1 j).toNat = 1) n)

end

end A355845.P15014643199670673079

/-! ## A355845.P8062340368143844763

`filter[A051750(n+2), A092079(#)]`
-/

namespace A355845.P8062340368143844763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051750 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092079 (f1 j).toNat = 1) n)

end

end A355845.P8062340368143844763

/-! ## A355845.P9447470938031504142

`filter[A341661(n+2), A092079(#)]`
-/

namespace A355845.P9447470938031504142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341661 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092079 (f1 j).toNat = 1) n)

end

end A355845.P9447470938031504142

/-!
# A355846: a(n) = A066653(n+1)/3.

The programs for A355846, the canonical program `A355846.P4029753952884185879` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355846 has offset 1).

The definition of A355846 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066653, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A355846.P4029753952884185879

`A066653(n+2)/3`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A355846

/-- `A066653(n+2)/3` -/
def P4029753952884185879.Spec : Prop :=
  ∀ n, P4029753952884185879.a n = (A355846 (n + 1) : ℚ)

end A355846

/-! ## A355846.P5517279844413714349

`filter[A283809(n+1), A014578(#)]`
-/

namespace A355846.P5517279844413714349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A355846.P5517279844413714349

namespace A355846

/-- `filter[A283809(n+1), A014578(#)]` -/
def P5517279844413714349.Spec : Prop :=
  ∀ n, P5517279844413714349.a n = A355846 (n + 1)

end A355846

/-! ## A355846.P6029033955584524823

`filter[A002822(n+1), A359377(#)]`
-/

namespace A355846.P6029033955584524823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A355846.P6029033955584524823

namespace A355846

/-- `filter[A002822(n+1), A359377(#)]` -/
def P6029033955584524823.Spec : Prop :=
  ∀ n, P6029033955584524823.a n = A355846 (n + 1)

end A355846

/-! ## A355846.P12070070543682512582

`filter[A283809(n+1), A359377(#)]`
-/

namespace A355846.P12070070543682512582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A355846.P12070070543682512582

namespace A355846

/-- `filter[A283809(n+1), A359377(#)]` -/
def P12070070543682512582.Spec : Prop :=
  ∀ n, P12070070543682512582.a n = A355846 (n + 1)

end A355846

/-! ## A355846.P16758766469695825318

`filter[A283809(n+1), A374039(#)]`
-/

namespace A355846.P16758766469695825318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374039 (f1 j).toNat = 1) n)

end

end A355846.P16758766469695825318

namespace A355846

/-- `filter[A283809(n+1), A374039(#)]` -/
def P16758766469695825318.Spec : Prop :=
  ∀ n, P16758766469695825318.a n = A355846 (n + 1)

end A355846

/-! ## A355846.P18176041929346088262

`∩[A108118(n+1), A283809(n+1)]`
-/

namespace A355846.P18176041929346088262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355846.P18176041929346088262

namespace A355846

/-- `∩[A108118(n+1), A283809(n+1)]` -/
def P18176041929346088262.Spec : Prop :=
  ∀ n, (P18176041929346088262.a n : ℤ) = A355846 (n + 1)

end A355846

/-! ## A355846.P15453303199160544245

`∩[A182337(n+1), A283809(n+1)]`
-/

namespace A355846.P15453303199160544245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355846.P15453303199160544245

namespace A355846

/-- `∩[A182337(n+1), A283809(n+1)]` -/
def P15453303199160544245.Spec : Prop :=
  ∀ n, (P15453303199160544245.a n : ℤ) = A355846 (n + 1)

end A355846

/-! ## A355846.P16661174222236024472

`∩[A074232(n+1), A283809(n+1)]`
-/

namespace A355846.P16661174222236024472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355846.P16661174222236024472

namespace A355846

/-- `∩[A074232(n+1), A283809(n+1)]` -/
def P16661174222236024472.Spec : Prop :=
  ∀ n, (P16661174222236024472.a n : ℤ) = A355846 (n + 1)

end A355846

/-! ## A355846.P4100740723940020753

`∩[A283809(n+1), A325431(n+1)]`
-/

namespace A355846.P4100740723940020753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355846.P4100740723940020753

namespace A355846

/-- `∩[A283809(n+1), A325431(n+1)]` -/
def P4100740723940020753.Spec : Prop :=
  ∀ n, (P4100740723940020753.a n : ℤ) = A355846 (n + 1)

end A355846

/-! ## A355846.P16742776372810362155

`∩[A001651(n+1), A283809(n+1)]`
-/

namespace A355846.P16742776372810362155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355846.P16742776372810362155

namespace A355846

/-- `∩[A001651(n+1), A283809(n+1)]` -/
def P16742776372810362155.Spec : Prop :=
  ∀ n, (P16742776372810362155.a n : ℤ) = A355846 (n + 1)

end A355846

/-! ## A355846.P5016737149703053745

`∩[A007417(n+1), A283809(n+1)]`
-/

namespace A355846.P5016737149703053745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355846.P5016737149703053745

namespace A355846

/-- `∩[A007417(n+1), A283809(n+1)]` -/
def P5016737149703053745.Spec : Prop :=
  ∀ n, (P5016737149703053745.a n : ℤ) = A355846 (n + 1)

end A355846

/-! ## A355846.P6647757494504892114

`filter[A283809(n+1), A011655(#)]`
-/

namespace A355846.P6647757494504892114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A355846.P6647757494504892114

namespace A355846

/-- `filter[A283809(n+1), A011655(#)]` -/
def P6647757494504892114.Spec : Prop :=
  ∀ n, P6647757494504892114.a n = A355846 (n + 1)

end A355846

/-! ## A355846.P457977703576631784

`filter[A283809(n+1), A267208(#)]`
-/

namespace A355846.P457977703576631784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A355846.P457977703576631784

namespace A355846

/-- `filter[A283809(n+1), A267208(#)]` -/
def P457977703576631784.Spec : Prop :=
  ∀ n, P457977703576631784.a n = A355846 (n + 1)

end A355846

/-! ## A355846.P13681345695449497549

`∩[A283809(n+1), A382751(n+1)]`
-/

namespace A355846.P13681345695449497549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355846.P13681345695449497549

namespace A355846

/-- `∩[A283809(n+1), A382751(n+1)]` -/
def P13681345695449497549.Spec : Prop :=
  ∀ n, (P13681345695449497549.a n : ℤ) = A355846 (n + 1)

end A355846

/-! ## A355846.P9700484839410592375

`A002264(A066653(n+2))`
-/

namespace A355846.P9700484839410592375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A066653 (n + 2)).toNat

end

end A355846.P9700484839410592375

namespace A355846

/-- `A002264(A066653(n+2))` -/
def P9700484839410592375.Spec : Prop :=
  ∀ n, P9700484839410592375.a n = A355846 (n + 1)

end A355846

/-!
# A355850: Number of monotonic lattice paths of length n which do not pass above the line y = x/(log_2(3)-1).

The programs for A355850, there is no canonical definition to state claims against.
-/

/-! ## A355850.P6906739529060840082

`A325393(∑[comp[A002342(n+1)]])`
-/

namespace A355850.P6906739529060840082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002342 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325393 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A355850.P6906739529060840082

/-! ## A355850.P10122186749597476490

`A128695(n)-(A091090(A244333(n+1))-1)`
-/

namespace A355850.P10122186749597476490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128695 n - (A091090 (A244333 (n + 1)).toNat - 1)

end

end A355850.P10122186749597476490

/-! ## A355850.P4382595349745340337

`A002024(A148477(n))`
-/

namespace A355850.P4382595349745340337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A148477 n).toNat

end

end A355850.P4382595349745340337

/-! ## A355850.P8390240006876653069

`A071860(A148396(n))`
-/

namespace A355850.P8390240006876653069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071860 (A148396 n).toNat

end

end A355850.P8390240006876653069

/-! ## A355850.P3774802796404515425

`A168255(A149171(n))`
-/

namespace A355850.P3774802796404515425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168255 (A149171 n).toNat

end

end A355850.P3774802796404515425

/-!
# A355851: The difference between the indices of the two most recent instances of a(n-1), not including a(n-1) itself, or 0 if not enough such instances exist.

The programs for A355851, there is no canonical definition to state claims against.
-/

/-! ## A355851.P7662821741149700961

`A276004(A292372(n+2)+A001045(n))`
-/

namespace A355851.P7662821741149700961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276004 (A292372 (n + 2) + A001045 n).toNat

end

end A355851.P7662821741149700961

/-! ## A355851.P17893641530094088971

`A002099(n)%A169818(A112088(n+5))`
-/

namespace A355851.P17893641530094088971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002099 n) (A169818 (A112088 (n + 5)).toNat)

end

end A355851.P17893641530094088971

/-! ## A355851.P5742589529779027498

`A045778(n+3)-A010054(A156289(n+1))`
-/

namespace A355851.P5742589529779027498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 3) - A010054 (A156289 (n + 1)).toNat

end

end A355851.P5742589529779027498

/-! ## A355851.P898026074486412388

`A020639(A216379(n))%A216325(n+1)`
-/

namespace A355851.P898026074486412388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A216379 n).toNat) (A216325 (n + 1))

end

end A355851.P898026074486412388

/-! ## A355851.P18232996592765989216

`A052216(2*n+1)%A071820(A079443(n))`
-/

namespace A355851.P18232996592765989216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052216 (2 * n + 1)) (A071820 (A079443 n).toNat)

end

end A355851.P18232996592765989216

/-!
# A355853: Primes in A333369.

The programs for A355853, there is no canonical definition to state claims against.
-/

/-! ## A355853.P6990321606597028751

`p?[A333369(n+1)]`
-/

namespace A355853.P6990321606597028751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A355853.P6990321606597028751

/-! ## A355853.P7577501243625193355

`p?[A355773(n+1)]`
-/

namespace A355853.P7577501243625193355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A355853.P7577501243625193355

/-! ## A355853.P10978141664955167801

`record[A001414(A333369(n+2))]`
-/

namespace A355853.P10978141664955167801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A333369 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355853.P10978141664955167801

/-! ## A355853.P11767713331850293244

`record[A006530(A355773(n+2))]`
-/

namespace A355853.P11767713331850293244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A355773 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355853.P11767713331850293244

/-! ## A355853.P327964857253676440

`filter[A333369(n+1), A010051(#)]`
-/

namespace A355853.P327964857253676440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A355853.P327964857253676440

/-! ## A355853.P16648869688851297288

`filter[A355773(n+1), A010051(#)]`
-/

namespace A355853.P16648869688851297288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A355853.P16648869688851297288

/-! ## A355853.P12439647343655144078

`filter[A333369(n+1), A257531(#)]`
-/

namespace A355853.P12439647343655144078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A355853.P12439647343655144078

/-! ## A355853.P9123247275817859170

`filter[A355773(n+1), A257531(#)]`
-/

namespace A355853.P9123247275817859170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A355853.P9123247275817859170

/-! ## A355853.P16908927289073787717

`filter[A333369(n+1), A323153(#)]`
-/

namespace A355853.P16908927289073787717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A355853.P16908927289073787717

/-! ## A355853.P7006625594555321766

`filter[A333369(n+1), A327861(#)]`
-/

namespace A355853.P7006625594555321766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A355853.P7006625594555321766

/-!
# A355855: A family of triangles T(m), m > 0, read by triangles and then by rows; triangle T(1) is [1; 1, 1]; for m > 0, triangle T(m+1) is obtained by replacing each subtriangle [t; u, v] in T(m) by [t; t+u, t+v; u, u+v, v].

The programs for A355855, there is no canonical definition to state claims against.
-/

/-! ## A355855.P10787609281266814286

`A064372(A115178(n)+A002182(n+1))`
-/

namespace A355855.P10787609281266814286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064372 (A115178 n + A002182 (n + 1)).toNat

end

end A355855.P10787609281266814286

/-!
# A355856: Primes, with at least one prime digit, that remain primes when all of their prime digits are removed.

The programs for A355856, there is no canonical definition to state claims against.
-/

/-! ## A355856.P17818588355529176012

`∩[A171017(n+1), A361530(n+1)]`
-/

namespace A355856.P17818588355529176012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355856.P17818588355529176012

/-!
# A355857: The smallest number in A355852 whose binary value shares n out of n+1 bits with the concatenation of the binary values of its divisors' product.

The programs for A355857, there is no canonical definition to state claims against.
-/

/-! ## A355857.P8494617101097419604

`A355852(A226649(2*n+3)-A286324(2*n+3))`
-/

namespace A355857.P8494617101097419604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355852 (A226649 (2 * n + 3) - A286324 (2 * n + 3)).toNat

end

end A355857.P8494617101097419604

/-!
# A355858: a(n) = n^(2*n-1) mod (2*n-1).

The programs for A355858, there is no canonical definition to state claims against.
-/

/-! ## A355858.P14184580055084081367

`A060154(A064225(n))`
-/

namespace A355858.P14184580055084081367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060154 (A064225 n).toNat

end

end A355858.P14184580055084081367

/-! ## A355858.P2597674822453902198

`A114448(A081267(n))`
-/

namespace A355858.P2597674822453902198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114448 (A081267 n).toNat

end

end A355858.P2597674822453902198

/-! ## A355858.P5865849162021570770

`A060154(A000217(3*n)+n+1)`
-/

namespace A355858.P5865849162021570770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060154 (A000217 (3 * n) + (n + 1 : ℤ)).toNat

end

end A355858.P5865849162021570770

/-! ## A355858.P13098214779110230802

`A114448(A000217(3*n+1)-n)`
-/

namespace A355858.P13098214779110230802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114448 (A000217 (3 * n + 1) - (n : ℤ)).toNat

end

end A355858.P13098214779110230802

/-! ## A355858.P1183898853628482138

`A114448(A005475(n)+A000217(2*n+1))`
-/

namespace A355858.P1183898853628482138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114448 (A005475 n + A000217 (2 * n + 1)).toNat

end

end A355858.P1183898853628482138

/-!
# A355859: Triangle read by rows: T(n,k) = (n + k)/2 if (n + k) is congruent to 0 (mod 2), otherwise T(n,k) = 0; n >= 1, k >= 1.

The programs for A355859, the canonical program `A355859.P3189748681053471770` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355859 has offset 1).

The definition of A355859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355859.P11669242585765584588

`comp[∑[4*n]]%2*A209279(n+1)`
-/

namespace A355859.P11669242585765584588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ) * A209279 (n + 1)

end

end A355859.P11669242585765584588

namespace A355859

/-- `comp[∑[4*n]]%2*A209279(n+1)` -/
def P11669242585765584588.Spec : Prop :=
  ∀ n, P11669242585765584588.a n = A355859 (n + 1)

end A355859

/-! ## A355859.P3189748681053471770

`A027656(A051162(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A355859

/-- `A027656(A051162(n))` -/
def P3189748681053471770.Spec : Prop :=
  ∀ n, P3189748681053471770.a n = A355859 (n + 1)

theorem P3189748681053471770.correct : P3189748681053471770.Spec := by
  intro n
  simp only [A355859, Nat.add_sub_cancel]

end A355859

/-! ## A355859.P12064661617639193086

`A142150(A108872(n+1))`
-/

namespace A355859.P12064661617639193086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A108872 (n + 1)).toNat

end

end A355859.P12064661617639193086

namespace A355859

/-- `A142150(A108872(n+1))` -/
def P12064661617639193086.Spec : Prop :=
  ∀ n, P12064661617639193086.a n = A355859 (n + 1)

end A355859

/-! ## A355859.P7623862161192384787

`A142150(A051162(n)+2)`
-/

namespace A355859.P7623862161192384787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A051162 n + 2).toNat

end

end A355859.P7623862161192384787

namespace A355859

/-- `A142150(A051162(n)+2)` -/
def P7623862161192384787.Spec : Prop :=
  ∀ n, P7623862161192384787.a n = A355859 (n + 1)

end A355859

/-! ## A355859.P5239578756307310931

`A142150(A094727(n+1)+1)`
-/

namespace A355859.P5239578756307310931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A094727 (n + 1) + 1).toNat

end

end A355859.P5239578756307310931

namespace A355859

/-- `A142150(A094727(n+1)+1)` -/
def P5239578756307310931.Spec : Prop :=
  ∀ n, P5239578756307310931.a n = A355859 (n + 1)

end A355859

/-! ## A355859.P2904449584310286510

`A027656(A094727(n+1)-1)`
-/

namespace A355859.P2904449584310286510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A094727 (n + 1) - 1).toNat

end

end A355859.P2904449584310286510

namespace A355859

/-- `A027656(A094727(n+1)-1)` -/
def P2904449584310286510.Spec : Prop :=
  ∀ n, P2904449584310286510.a n = A355859 (n + 1)

theorem P2904449584310286510.correct : P2904449584310286510.Spec := by
  intro n
  simp only [A355859, Nat.add_sub_cancel, A355859.P2904449584310286510.a, A355859.P3189748681053471770.a, A027656, A027656.P3303400326036793752.a, A051162, A051162.P14261216125704105833.a, A094727, A094727.P1759177724676722475.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A008619, A008619.P16053834178911111118.a, A059841, A059841.P2666504972441551157.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A355859

/-! ## A355859.P1000205453474296946

`lcm(A128180(n+1), A369736(n))`
-/

namespace A355859.P1000205453474296946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A128180 (n + 1)) (A369736 n)

end

end A355859.P1000205453474296946

namespace A355859

/-- `lcm(A128180(n+1), A369736(n))` -/
def P1000205453474296946.Spec : Prop :=
  ∀ n, (P1000205453474296946.a n : ℤ) = A355859 (n + 1)

end A355859

/-! ## A355859.P5070053357528049766

`A128174(n+1)*A128180(n+1)`
-/

namespace A355859.P5070053357528049766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A128180 (n + 1)

end

end A355859.P5070053357528049766

namespace A355859

/-- `A128174(n+1)*A128180(n+1)` -/
def P5070053357528049766.Spec : Prop :=
  ∀ n, P5070053357528049766.a n = A355859 (n + 1)

end A355859

/-! ## A355859.P17652494066157624635

`A128174(n+1)*A209279(n+1)`
-/

namespace A355859.P17652494066157624635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A209279 (n + 1)

end

end A355859.P17652494066157624635

namespace A355859

/-- `A128174(n+1)*A209279(n+1)` -/
def P17652494066157624635.Spec : Prop :=
  ∀ n, P17652494066157624635.a n = A355859 (n + 1)

end A355859

/-! ## A355859.P18104874905284629145

`A049777(n+1)%A108872(n+1)`
-/

namespace A355859.P18104874905284629145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049777 (n + 1)) (A108872 (n + 1))

end

end A355859.P18104874905284629145

namespace A355859

/-- `A049777(n+1)%A108872(n+1)` -/
def P18104874905284629145.Spec : Prop :=
  ∀ n, P18104874905284629145.a n = A355859 (n + 1)

end A355859

/-! ## A355859.P12850415300415252691

`(A209279(n+1)+A128180(n+1))/2`
-/

namespace A355859.P12850415300415252691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209279 (n + 1) + A128180 (n + 1) : ℚ) / 2

end

end A355859.P12850415300415252691

namespace A355859

/-- `(A209279(n+1)+A128180(n+1))/2` -/
def P12850415300415252691.Spec : Prop :=
  ∀ n, P12850415300415252691.a n = (A355859 (n + 1) : ℚ)

end A355859

/-! ## A355859.P18275587413084022516

`A004526(A209279(n+1)+A128180(n+1))`
-/

namespace A355859.P18275587413084022516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A209279 (n + 1) + A128180 (n + 1)).toNat

end

end A355859.P18275587413084022516

namespace A355859

/-- `A004526(A209279(n+1)+A128180(n+1))` -/
def P18275587413084022516.Spec : Prop :=
  ∀ n, P18275587413084022516.a n = A355859 (n + 1)

end A355859

/-! ## A355859.P17983592210058416025

`A128180(n+1)+A211161(n+1)-A128179(n+1)`
-/

namespace A355859.P17983592210058416025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128180 (n + 1) + (A211161 (n + 1) - A128179 (n + 1))

end

end A355859.P17983592210058416025

namespace A355859

/-- `A128180(n+1)+A211161(n+1)-A128179(n+1)` -/
def P17983592210058416025.Spec : Prop :=
  ∀ n, P17983592210058416025.a n = A355859 (n + 1)

end A355859

/-! ## A355859.P12811501450362117453

`A128179(n+1)/A002260(n+1)*A128180(n+1)`
-/

namespace A355859.P12811501450362117453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128179 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A128180 (n + 1) : ℚ)

end

end A355859.P12811501450362117453

namespace A355859

/-- `A128179(n+1)/A002260(n+1)*A128180(n+1)` -/
def P12811501450362117453.Spec : Prop :=
  ∀ n, P12811501450362117453.a n = (A355859 (n + 1) : ℚ)

end A355859

/-! ## A355859.P16925477769827817626

`A128179(n+1)/A002260(n+1)*A209279(n+1)`
-/

namespace A355859.P16925477769827817626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128179 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A209279 (n + 1) : ℚ)

end

end A355859.P16925477769827817626

namespace A355859

/-- `A128179(n+1)/A002260(n+1)*A209279(n+1)` -/
def P16925477769827817626.Spec : Prop :=
  ∀ n, P16925477769827817626.a n = (A355859 (n + 1) : ℚ)

end A355859

/-! ## A355859.P17610762604479126633

`A187881(A209293(n+1))`
-/

namespace A355859.P17610762604479126633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187881 (A209293 (n + 1)).toNat

end

end A355859.P17610762604479126633

namespace A355859

/-- `A187881(A209293(n+1))` -/
def P17610762604479126633.Spec : Prop :=
  ∀ n, P17610762604479126633.a n = A355859 (n + 1)

end A355859

/-!
# A355860: Triangle read by rows: T(n,k) = n*k/(n + k) if n+k divides n*k, otherwise T(n,k) = 0; n >= 1, k >= 1.

The programs for A355860, there is no canonical definition to state claims against.
-/

/-! ## A355860.P17420176594966029086

`val(A000463(A223949(n+1)), A075527(n))`
-/

namespace A355860.P17420176594966029086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000463 (A223949 (n + 1)).toNat).toNat (A075527 n).toNat

end

end A355860.P17420176594966029086

/-!
# A355861: G.f. A(x) satisfies: 0 = Sum_{n=-oo..+oo} x^(n*(n-1)/2) * (x^n - A(x))^n.

The programs for A355861, there is no canonical definition to state claims against.
-/

/-! ## A355861.P12352176089397373436

`A108141(∑[A148834(n)])`
-/

namespace A355861.P12352176089397373436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A355861.P12352176089397373436

/-! ## A355861.P7219614373887012182

`A108141(∑[A148835(n)])`
-/

namespace A355861.P7219614373887012182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A355861.P7219614373887012182

/-! ## A355861.P67784785415866726

`A108141(∑[A148836(n)])`
-/

namespace A355861.P67784785415866726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A355861.P67784785415866726

/-!
# A355862: G.f. A(x) satisfies: 0 = Sum_{n=-oo..+oo} x^(n*(n+1)/2) * (x^n - 2*A(x))^(n+1).

The programs for A355862, there is no canonical definition to state claims against.
-/

/-! ## A355862.P17250671960048104302

`A225819(A149956(n))`
-/

namespace A355862.P17250671960048104302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225819 (A149956 n).toNat

end

end A355862.P17250671960048104302

/-! ## A355862.P7596622879593103662

`∑[A045917(A277382(n))]+1`
-/

namespace A355862.P7596622879593103662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A277382 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A355862.P7596622879593103662

/-!
# A355863: G.f. A(x) satisfies: 0 = Sum_{n=-oo..+oo} x^(n^2) * (x^n - A(x))^(n+1).

The programs for A355863, there is no canonical definition to state claims against.
-/

/-! ## A355863.P3268327505746540244

`A248227(A000108(n))+A000045(n)`
-/

namespace A355863.P3268327505746540244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A000108 n).toNat + A000045 n

end

end A355863.P3268327505746540244

/-! ## A355863.P14919442144009901655

`A248227(A000108(n))+A214365(n)`
-/

namespace A355863.P14919442144009901655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A000108 n).toNat + A214365 n

end

end A355863.P14919442144009901655

/-! ## A355863.P592429748229759882

`A248227(A120304(n)+2)+A000045(n)`
-/

namespace A355863.P592429748229759882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A120304 n + 2).toNat + A000045 n

end

end A355863.P592429748229759882

/-!
# A355865: Expansion of g.f. A(x) satisfying 0 = Sum_{n=-oo..+oo} x^n * (x^n - (-1)^n*2*A(x))^(2*n+1).

The programs for A355865, there is no canonical definition to state claims against.
-/

/-! ## A355865.P13866758336575876245

`A300061(A000108(2*n)-floor((n/2)²))`
-/

namespace A355865.P13866758336575876245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300061 (A000108 (2 * n) - ⌊((n : ℚ) / 2) ^ 2⌋).toNat

end

end A355865.P13866758336575876245

/-!
# A355866: Expansion of g.f. A(x) satisfying 0 = Sum_{n=-oo..+oo} x^n * (x^n - A(x))^(3*n+1).

The programs for A355866, there is no canonical definition to state claims against.
-/

/-! ## A355866.P8553538078975780377

`A108141(A150243(n))`
-/

namespace A355866.P8553538078975780377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A150243 n).toNat

end

end A355866.P8553538078975780377

/-! ## A355866.P10863363983943945363

`A229301(A097147(n+1))-n`
-/

namespace A355866.P10863363983943945363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (A097147 (n + 1)).toNat - (n : ℤ)

end

end A355866.P10863363983943945363

/-!
# A355868: G.f. A(x) satisfies: 1 = Sum_{n=-oo..+oo} (x^n - 2*x*A(x))^n.

The programs for A355868, there is no canonical definition to state claims against.
-/

/-! ## A355868.P13212214874657373828

`A359671(n)/2`
-/

namespace A355868.P13212214874657373828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359671 n : ℚ) / 2

end

end A355868.P13212214874657373828

/-! ## A355868.P17210435496940975377

`A370030(∑[n+2])`
-/

namespace A355868.P17210435496940975377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370030 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A355868.P17210435496940975377

/-! ## A355868.P49831250500110059

`A014682(A359671(n))`
-/

namespace A355868.P49831250500110059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A359671 n).toNat

end

end A355868.P49831250500110059

/-! ## A355868.P9988989654916832228

`A004526(A359671(n)+1)`
-/

namespace A355868.P9988989654916832228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A359671 n + 1).toNat

end

end A355868.P9988989654916832228

/-! ## A355868.P1875797034786942515

`A071281(A359671(n)+1)`
-/

namespace A355868.P1875797034786942515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071281 (A359671 n + 1).toNat

end

end A355868.P1875797034786942515

/-!
# A355869: G.f. A(x) satisfies: x = Sum_{n=-oo..+oo} (-x)^n * (1 + A(x)*x^n)^n.

The programs for A355869, there is no canonical definition to state claims against.
-/

/-! ## A355869.P12204332456158420780

`A088940(A184936(n))`
-/

namespace A355869.P12204332456158420780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088940 (A184936 n).toNat

end

end A355869.P12204332456158420780

/-! ## A355869.P16485172153613600647

`A088940(A275862(n))`
-/

namespace A355869.P16485172153613600647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088940 (A275862 n).toNat

end

end A355869.P16485172153613600647

/-! ## A355869.P12901721089177788239

`A088940(A299106(n))`
-/

namespace A355869.P12901721089177788239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088940 (A299106 n).toNat

end

end A355869.P12901721089177788239

/-!
# A355871: G.f. A(x) satisfies: 2 = Sum_{n=-oo..+oo} x^(n*(n+1)/2) * A(x)^n.

The programs for A355871, there is no canonical definition to state claims against.
-/

/-! ## A355871.P1135058758705620931

`or(A230926(A221020(n+1)), A369086(n))`
-/

namespace A355871.P1135058758705620931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A230926 (A221020 (n + 1)).toNat) (A369086 n)

end

end A355871.P1135058758705620931

/-! ## A355871.P16623973195782184130

`A369086(A001096(n))`
-/

namespace A355871.P16623973195782184130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369086 (A001096 n).toNat

end

end A355871.P16623973195782184130

/-!
# A355874: Expansion of e.g.f. -LambertW(x^2 * log(1-x))/2.

The programs for A355874, there is no canonical definition to state claims against.
-/

/-! ## A355874.P3731073442816578431

`A014682(lcm(n, A351503(n)))`
-/

namespace A355874.P3731073442816578431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm (n : ℤ) (A351503 n))

end

end A355874.P3731073442816578431

/-! ## A355874.P1176592774008668104

`floor(A351503(n)/2)%A268281(n+3)`
-/

namespace A355874.P1176592774008668104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A351503 n : ℚ) / 2⌋ (A268281 (n + 3))

end

end A355874.P1176592774008668104

/-! ## A355874.P16660398774222863722

`A014682(A351503(n)%∏[1-2*n])`
-/

namespace A355874.P16660398774222863722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.tmod (A351503 n) (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A355874.P16660398774222863722

/-! ## A355874.P879589319892433470

`A014682(A351503(A000007(n)+n))`
-/

namespace A355874.P879589319892433470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A351503 (A000007 n + (n : ℤ)).toNat).toNat

end

end A355874.P879589319892433470

/-! ## A355874.P5460297468031793429

`A014682(A351503(n)-A000007(n))`
-/

namespace A355874.P5460297468031793429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A351503 n - A000007 n).toNat

end

end A355874.P5460297468031793429

/-!
# A355876: Smallest prime p == 1 (mod 8) such that Q(sqrt(p)) has class number 2n+1.

The programs for A355876, there is no canonical definition to state claims against.
-/

/-! ## A355876.P17201717438151606749

`A146348(eq[A245920(n), A246142(n+1)])`
-/

namespace A355876.P17201717438151606749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146348 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A355876.P17201717438151606749

/-!
# A355878: Smallest p == 1 (mod 4) such that Q(sqrt(p)) has class number 2n+1.

The programs for A355878, there is no canonical definition to state claims against.
-/

/-! ## A355878.P11985206937752807411

`A081364(record[Δ[∑{digits}[n, #²]]])`
-/

namespace A355878.P11985206937752807411
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x ^ 2).sum

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081364 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A355878.P11985206937752807411

/-! ## A355878.P3352099610446926715

`A081364(A294923(n+1))`
-/

namespace A355878.P3352099610446926715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081364 (A294923 (n + 1)).toNat

end

end A355878.P3352099610446926715

/-! ## A355878.P18247702051487679659

`A081364(A000005(4^n))`
-/

namespace A355878.P18247702051487679659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081364 (A000005 (4 ^ n)).toNat

end

end A355878.P18247702051487679659

/-! ## A355878.P4481521129816246357

`A081364(A061219(n+1)+n)`
-/

namespace A355878.P4481521129816246357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081364 (A061219 (n + 1) + (n : ℤ)).toNat

end

end A355878.P4481521129816246357

/-! ## A355878.P10538642532530113169

`A081364(A072941(n+1)+n)`
-/

namespace A355878.P10538642532530113169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081364 (A072941 (n + 1) + (n : ℤ)).toNat

end

end A355878.P10538642532530113169

/-!
# A355879: Class number of Q(sqrt((-1)^((p-1)/2)*p)), where p = prime(n).

The programs for A355879, there is no canonical definition to state claims against.
-/

/-! ## A355879.P17046055753094549413

`or(A128174(A172369(n)), A165951(n+1))`
-/

namespace A355879.P17046055753094549413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A128174 (A172369 n).toNat) (A165951 (n + 1))

end

end A355879.P17046055753094549413

/-! ## A355879.P9250676585107085122

`A028310(A165951(n+1))%A320540(2*n+3)`
-/

namespace A355879.P9250676585107085122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A165951 (n + 1)).toNat) (A320540 (2 * n + 3))

end

end A355879.P9250676585107085122

/-! ## A355879.P8855857182407338134

`A028310(A165951(n+1))%A198391(n+1)`
-/

namespace A355879.P8855857182407338134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A165951 (n + 1)).toNat) (A198391 (n + 1))

end

end A355879.P8855857182407338134

/-! ## A355879.P904721942852963431

`or(A165951(n+1), A286623(A000217(n+3)))`
-/

namespace A355879.P904721942852963431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A165951 (n + 1)) (A286623 (A000217 (n + 3)).toNat)

end

end A355879.P904721942852963431

/-! ## A355879.P4235875300030586683

`or(A165951(n+1), A348928(A233346(2*n+5)))`
-/

namespace A355879.P4235875300030586683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A165951 (n + 1)) (A348928 (A233346 (2 * n + 5)).toNat)

end

end A355879.P4235875300030586683

/-!
# A355882: Number of ways to 4-color a 3 X n grid ignoring the variations of two colors.

The programs for A355882, the canonical program `A355882.P16261794406410392758` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355882 has offset 1).

The definition of A355882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355882.P12515092441033500004

`2*A198710(n+1)-1`
-/

namespace A355882.P12515092441033500004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198710 (n + 1) - 1

end

end A355882.P12515092441033500004

namespace A355882

/-- `2*A198710(n+1)-1` -/
def P12515092441033500004.Spec : Prop :=
  ∀ n, P12515092441033500004.a n = A355882 (n + 1)

end A355882

/-! ## A355882.P16261794406410392758

`18*a(n-1)-27*a(n-2)` with `a(0)=3, a(1)=49`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A355882

/-- `18*a(n-1)-27*a(n-2)` -/
def P16261794406410392758.Spec : Prop :=
  ∀ n, P16261794406410392758.a n = A355882 (n + 1)

theorem P16261794406410392758.correct : P16261794406410392758.Spec := by
  intro n
  simp only [A355882, Nat.add_sub_cancel]

end A355882

/-! ## A355882.P4093899628310759

`A222439(n+1)/3`
-/

namespace A355882.P4093899628310759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222439 (n + 1) : ℚ) / 3

end

end A355882.P4093899628310759

namespace A355882

/-- `A222439(n+1)/3` -/
def P4093899628310759.Spec : Prop :=
  ∀ n, P4093899628310759.a n = (A355882 (n + 1) : ℚ)

end A355882

/-! ## A355882.P16006466661143115355

`floor(2*A233013(n+1)/3)`
-/

namespace A355882.P16006466661143115355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((A233013 (n + 1) : ℚ) / 3)⌋

end

end A355882.P16006466661143115355

namespace A355882

/-- `floor(2*A233013(n+1)/3)` -/
def P16006466661143115355.Spec : Prop :=
  ∀ n, P16006466661143115355.a n = A355882 (n + 1)

end A355882

/-! ## A355882.P7946919578202163918

`2*A222444(∑[n+3]+1)/6`
-/

namespace A355882.P7946919578202163918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A222444 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 6)

end

end A355882.P7946919578202163918

namespace A355882

/-- `2*A222444(∑[n+3]+1)/6` -/
def P7946919578202163918.Spec : Prop :=
  ∀ n, P7946919578202163918.a n = (A355882 (n + 1) : ℚ)

end A355882

/-!
# A355883: Number of ways to 5-color a 3 X n grid ignoring the variations of two colors.

The programs for A355883, the canonical program `A355883.P15318210534753661636` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355883 has offset 1).

The definition of A355883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355883.P15318210534753661636

`45*a(n-1)-116*a(n-2)` with `a(0)=4, a(1)=169`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A355883

/-- `45*a(n-1)-116*a(n-2)` -/
def P15318210534753661636.Spec : Prop :=
  ∀ n, P15318210534753661636.a n = A355883 (n + 1)

theorem P15318210534753661636.correct : P15318210534753661636.Spec := by
  intro n
  simp only [A355883, Nat.add_sub_cancel]

end A355883

/-! ## A355883.P2004539122938600283

`A222139(n+1)/4`
-/

namespace A355883.P2004539122938600283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222139 (n + 1) : ℚ) / 4

end

end A355883.P2004539122938600283

namespace A355883

/-- `A222139(n+1)/4` -/
def P2004539122938600283.Spec : Prop :=
  ∀ n, P2004539122938600283.a n = (A355883 (n + 1) : ℚ)

end A355883

/-! ## A355883.P13838723728259386489

`A222144(∑[n+2]+4)/4`
-/

namespace A355883.P13838723728259386489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222144 (∑ j ∈ Finset.range (n + 1), f1 j + 4) : ℚ) / 4

end

end A355883.P13838723728259386489

namespace A355883

/-- `A222144(∑[n+2]+4)/4` -/
def P13838723728259386489.Spec : Prop :=
  ∀ n, P13838723728259386489.a n = (A355883 (n + 1) : ℚ)

end A355883

/-! ## A355883.P16909288622553884878

`and(-4, A222144(A167499(n)+n))/4`
-/

namespace A355883.P16909288622553884878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-4) (A222144 (A167499 n + (n : ℤ)).toNat) : ℚ) / 4

end

end A355883.P16909288622553884878

namespace A355883

/-- `and(-4, A222144(A167499(n)+n))/4` -/
def P16909288622553884878.Spec : Prop :=
  ∀ n, P16909288622553884878.a n = (A355883 (n + 1) : ℚ)

end A355883

/-! ## A355883.P18354080391643044812

`(A222144(A167614(n+1))+A025439(n))/4`
-/

namespace A355883.P18354080391643044812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222144 (A167614 (n + 1)).toNat + A025439 n : ℚ) / 4

end

end A355883.P18354080391643044812

namespace A355883

/-- `(A222144(A167614(n+1))+A025439(n))/4` -/
def P18354080391643044812.Spec : Prop :=
  ∀ n, P18354080391643044812.a n = (A355883 (n + 1) : ℚ)

end A355883

/-!
# A355884: Number of circles in an n X n grid passing through at least three points.

The programs for A355884, there is no canonical definition to state claims against.
-/

/-! ## A355884.P5997595988003221508

`A064574(floor(log2(3*n+1))^n)`
-/

namespace A355884.P5997595988003221508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064574 (Nat.log 2 (3 * n + 1) ^ n)

end

end A355884.P5997595988003221508

/-!
# A355886: a(n) = n! * Sum_{k=1..n} floor(n/k)/k!.

The programs for A355886, there is no canonical definition to state claims against.
-/

/-! ## A355886.P3960924220285181206

`A057625(n+1)+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A355886.P3960924220285181206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057625 (n + 1) + (n + 1 : ℤ) * a (n - 1)

end

end A355886.P3960924220285181206

/-!
# A355887: a(n) = Sum_{k=1..n} k^k * floor(n/k).

The programs for A355887, there is no canonical definition to state claims against.
-/

/-! ## A355887.P9472878856241421822

`∑[∑{d}[n+1, #^#]]`
-/

namespace A355887.P9472878856241421822
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d ^ d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355887.P9472878856241421822

/-! ## A355887.P5452862490502258939

`∑[record[∑{d}[1-n, #^#]]]`
-/

namespace A355887.P5452862490502258939
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n).natAbs, d ^ d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355887.P5452862490502258939

/-! ## A355887.P3558906872054014510

`∑{d}[n+1, #^#]+a(n-1)` with `a(0)=1`
-/

namespace A355887.P3558906872054014510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ d + a (n - 1)

end

end A355887.P3558906872054014510

/-! ## A355887.P15493977105314066267

`∑[A062796(n+1)]`
-/

namespace A355887.P15493977105314066267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355887.P15493977105314066267

/-! ## A355887.P17871675598581395413

`∑[A308698(∑[n+2])]`
-/

namespace A355887.P17871675598581395413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308698 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355887.P17871675598581395413

/-!
# A355888: a(n) = Sum_{k=1..n} k! * floor(n/k).

The programs for A355888, there is no canonical definition to state claims against.
-/

/-! ## A355888.P12572694636782144375

`∑[∑{d}[n+1, #!]]`
-/

namespace A355888.P12572694636782144375
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.factorial d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355888.P12572694636782144375

/-! ## A355888.P8433772018745556499

`∑[record[∑{d}[1-n, #!]]]`
-/

namespace A355888.P8433772018745556499
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n).natAbs, Nat.factorial d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355888.P8433772018745556499

/-! ## A355888.P16812054804967759905

`∑{d}[n+1, #!]+a(n-1)` with `a(0)=1`
-/

namespace A355888.P16812054804967759905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.factorial d + a (n - 1)

end

end A355888.P16812054804967759905

/-! ## A355888.P17477944392296323401

`∑[A062363(n+1)]`
-/

namespace A355888.P17477944392296323401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355888.P17477944392296323401

/-! ## A355888.P296617957284384724

`∑[∑{d}[n+1, A000142(#)]]`
-/

namespace A355888.P296617957284384724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000142 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355888.P296617957284384724

/-!
# A355890: Let s(k) = A052551(k), and write down s(0) consecutive integers beginning with 0, skip one integer, continue with s(1) consecutive numbers, skip one integer, then s(2) consecutive numbers, skip one integer, then s(3) consecutive numbers, and so on.

The programs for A355890, there is no canonical definition to state claims against.
-/

/-! ## A355890.P8744930444157525617

`comp[∑[∏[gcd(2, n)]]-1]`
-/

namespace A355890.P8744930444157525617
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A355890.P8744930444157525617

/-! ## A355890.P5091581521240155794

`lt[3*and(n, -n), n]-5`
-/

namespace A355890.P5091581521240155794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 5

end

end A355890.P5091581521240155794

/-! ## A355890.P11378093461959063379

`lt[and(n, -n), n/3]-5`
-/

namespace A355890.P11378093461959063379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n : ℤ) - 5

end

end A355890.P11378093461959063379

/-! ## A355890.P10039069279635849432

`lt[2*xor(n, n+1), n]-4`
-/

namespace A355890.P10039069279635849432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor n (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 4

end

end A355890.P10039069279635849432

/-! ## A355890.P10362885892676838335

`lt[xor(n, n+1), n/2]-4`
-/

namespace A355890.P10362885892676838335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n : ℤ) - 4

end

end A355890.P10362885892676838335

/-! ## A355890.P10081284245384397493

`comp[∑[∏[and(1, n)+1]]-1]-1`
-/

namespace A355890.P10081284245384397493
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A355890.P10081284245384397493

/-! ## A355890.P6644026401977787870

`comp[2*(a(n-2)+1)]-3` with `a(0)=0, a(1)=1`
-/

namespace A355890.P6644026401977787870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * (f1 (n - 2) + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 3

end

end A355890.P6644026401977787870

/-! ## A355890.P14743519989009988654

`comp[∑[2*a(n-3)]]-2` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A355890.P14743519989009988654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  2 * f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 2

end

end A355890.P14743519989009988654

/-! ## A355890.P5416122432033978516

`∑[char[∑[∏[2-n%2]-1]]]+n`
-/

namespace A355890.P5416122432033978516
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n % 2 : ℕ) : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f4 j - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A355890.P5416122432033978516

/-!
# A355892: a(n) = binary expansion of A354169(n).

The programs for A355892, there is no canonical definition to state claims against.
-/

/-! ## A355892.P2499847556198978837

`A054841(A355701(n))`
-/

namespace A355892.P2499847556198978837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (A355701 n).toNat

end

end A355892.P2499847556198978837

/-! ## A355892.P1325416192111249922

`A303596(A372060(A354169(n)))`
-/

namespace A355892.P1325416192111249922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303596 (A372060 (A354169 n).toNat).toNat

end

end A355892.P1325416192111249922

/-! ## A355892.P11306663971672030164

`A007088(A354169(n))`
-/

namespace A355892.P11306663971672030164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A354169 n).toNat

end

end A355892.P11306663971672030164

/-! ## A355892.P44873875050739136

`A182979(lt[A056476(n+1), A000203(n+1)])`
-/

namespace A355892.P44873875050739136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182979 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A355892.P44873875050739136

/-! ## A355892.P11323119563047864269

`A182979(lt[A101752(n+1), A100083(n+1)])`
-/

namespace A355892.P11323119563047864269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182979 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A355892.P11323119563047864269

/-!
# A355893: Let A090252(n) = Product_{i >= 1} prime(i)^e(i); then a(n) is the concatenation, in reverse order, of e_1, e_2, ..., ending at the exponent of the largest prime factor of A090252(n); a(1)=0 by convention.

The programs for A355893, there is no canonical definition to state claims against.
-/

/-! ## A355893.P12673149787654178624

`A054841(A090252(n+1))`
-/

namespace A355893.P12673149787654178624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (A090252 (n + 1)).toNat

end

end A355893.P12673149787654178624

/-! ## A355893.P423255727630347655

`A054841(A008578(n+1)-A354154(n+1))`
-/

namespace A355893.P423255727630347655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (A008578 (n + 1) - A354154 (n + 1)).toNat

end

end A355893.P423255727630347655

/-! ## A355893.P7832189116757126900

`A054841(record[A006530(n+1)]-A354154(n+1))`
-/

namespace A355893.P7832189116757126900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A354154 (n + 1)).toNat

end

end A355893.P7832189116757126900

/-! ## A355893.P5936377233170250772

`A054841(record[A014963(n+1)]-A354154(n+1))`
-/

namespace A355893.P5936377233170250772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A354154 (n + 1)).toNat

end

end A355893.P5936377233170250772

/-! ## A355893.P1319295812864094698

`A054841(record[A020639(n+1)]-A354154(n+1))`
-/

namespace A355893.P1319295812864094698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A354154 (n + 1)).toNat

end

end A355893.P1319295812864094698

/-! ## A355893.P13596438849291635069

`A054841(record[A064989(n+1)]-A354154(n+1))`
-/

namespace A355893.P13596438849291635069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A354154 (n + 1)).toNat

end

end A355893.P13596438849291635069

/-! ## A355893.P9328233262715244125

`A054841(record[A089026(n+1)]-A354154(n+1))`
-/

namespace A355893.P9328233262715244125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A354154 (n + 1)).toNat

end

end A355893.P9328233262715244125

/-! ## A355893.P15216691201769409974

`A054841(record[A354764(n+1)]-A354154(n+1))`
-/

namespace A355893.P15216691201769409974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A354154 (n + 1)).toNat

end

end A355893.P15216691201769409974

/-!
# A355894: Let A354790(n) = Product_{i >= 1} prime(i)^e(i); then a(n) is the concatenation, in reverse order, of e_1, e_2, ..., ending at the exponent of the largest prime factor of A354790(n); a(1)=0 by convention.

The programs for A355894, there is no canonical definition to state claims against.
-/

/-! ## A355894.P12008024904932309231

`A054841(A354790(n+1))`
-/

namespace A355894.P12008024904932309231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054841 (A354790 (n + 1)).toNat

end

end A355894.P12008024904932309231

/-!
# A355898: a(1) = a(2) = 1; a(n) = gcd(a(n-1), a(n-2)) + (a(n-1) + a(n-2))/gcd(a(n-1), a(n-2)).

The programs for A355898, the canonical program `A355898.P8074828173734640967` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355898 has offset 1).

The definition of A355898 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355898.P8074828173734640967

`gcd(a(n-1), a(n-2))+(a(n-1)+a(n-2))/gcd(a(n-1), a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A355898

/-- `gcd(a(n-1), a(n-2))+(a(n-1)+a(n-2))/gcd(a(n-1), a(n-2))` -/
def P8074828173734640967.Spec : Prop :=
  ∀ n, P8074828173734640967.a n = (A355898 (n + 1) : ℚ)

end A355898

/-! ## A355898.P14799592746284266546

`A214526(A027893(n+1)+1)`
-/

namespace A355898.P14799592746284266546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A027893 (n + 1) + 1).toNat

end

end A355898.P14799592746284266546

namespace A355898

/-- `A214526(A027893(n+1)+1)` -/
def P14799592746284266546.Spec : Prop :=
  ∀ n, P14799592746284266546.a n = A355898 (n + 1)

end A355898

/-!
# A355899: The successive gcd's arising in A355898.

The programs for A355899, the canonical program `A355899.P11055395003201486861` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355899 has offset 1).

The definition of A355899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355899.P11055395003201486861

`gcd(A355898(n+1), A355898(n+2))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A355899

/-- `gcd(A355898(n+1), A355898(n+2))` -/
def P11055395003201486861.Spec : Prop :=
  ∀ n, (P11055395003201486861.a n : ℤ) = A355899 (n + 1)

theorem P11055395003201486861.correct : P11055395003201486861.Spec := by
  intro n
  simp only [A355899, Nat.add_sub_cancel]

end A355899

/-! ## A355899.P1310823695141234047

`gcd(A052023(A027833(3*n+1)), A092203(n))`
-/

namespace A355899.P1310823695141234047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052023 (A027833 (3 * n + 1)).toNat) (A092203 n)

end

end A355899.P1310823695141234047

namespace A355899

/-- `gcd(A052023(A027833(3*n+1)), A092203(n))` -/
def P1310823695141234047.Spec : Prop :=
  ∀ n, (P1310823695141234047.a n : ℤ) = A355899 (n + 1)

end A355899

