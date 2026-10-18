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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
# A356300: Square array read by antidiagonals. A(n,k) is the nearest common ancestor of n and k in the binary tree depicted in A253563.

The programs for A356300, there is no canonical definition to state claims against.
-/

/-! ## A356300.P12644456680557443164

`gcd(A000010(A154233(n)), A281726(n+1))`
-/

namespace A356300.P12644456680557443164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A154233 n).toNat) (A281726 (n + 1))

end

end A356300.P12644456680557443164

/-! ## A356300.P12290691966951715609

`A159335(n)%A006577(A089447(n)+1)+1`
-/

namespace A356300.P12290691966951715609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159335 n) (A006577 (A089447 n + 1).toNat) + 1

end

end A356300.P12290691966951715609

/-! ## A356300.P10585241594995319607

`(A109004(n)%A089447(n))%A352185(A315721(n))+1`
-/

namespace A356300.P10585241594995319607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A109004 n) (A089447 n)) (A352185 (A315721 n).toNat) + 1

end

end A356300.P10585241594995319607

/-! ## A356300.P2656877704644541802

`A320458(n+1)%A003983(n+1)+1`
-/

namespace A356300.P2656877704644541802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320458 (n + 1)) (A003983 (n + 1)) + 1

end

end A356300.P2656877704644541802

/-! ## A356300.P12839997441662052652

`A010883(A320458(n+1)%A003983(n+1))`
-/

namespace A356300.P12839997441662052652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (Int.tmod (A320458 (n + 1)) (A003983 (n + 1))).toNat

end

end A356300.P12839997441662052652

/-!
# A356302: The least k >= 0 such that n and A276086(n+k) are relatively prime, where A276086 is the primorial base exp-function.

The programs for A356302, there is no canonical definition to state claims against.
-/

/-! ## A356302.P2766036470045254411

`A356309(n)-n`
-/

namespace A356302.P2766036470045254411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356309 n - (n : ℤ)

end

end A356302.P2766036470045254411

/-! ## A356302.P9580038882784820234

`abs(A356309(n)+A001489(n))`
-/

namespace A356302.P9580038882784820234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A356309 n + A001489 n|

end

end A356302.P9580038882784820234

/-! ## A356302.P5141027887122548296

`(A356309(n)+A001489(n))%∑[A029635(n)]`
-/

namespace A356302.P5141027887122548296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356309 n + A001489 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A356302.P5141027887122548296

/-! ## A356302.P14352959614086475479

`(A063524(n)+1)*(A356309(n)+A001489(n))`
-/

namespace A356302.P14352959614086475479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063524 n + 1) * (A356309 n + A001489 n)

end

end A356302.P14352959614086475479

/-! ## A356302.P1161996277597518220

`(A356309(n)+A001489(n))*A001511(2*n+1)`
-/

namespace A356302.P1161996277597518220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A356309 n + A001489 n) * A001511 (2 * n + 1)

end

end A356302.P1161996277597518220

/-! ## A356302.P2280742923991426104

`A064911(A282594(3*n+2))+A356309(n)+A001489(n)`
-/

namespace A356302.P2280742923991426104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A282594 (3 * n + 2)).toNat + (A356309 n + A001489 n)

end

end A356302.P2280742923991426104

/-!
# A356305: The least k >= 0 such that A003415(n) and A276086(n-k) are relatively prime, where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A356305, there is no canonical definition to state claims against.
-/

/-! ## A356305.P12152083254874895625

`A008619(A006075(n+1))%A327858(n)`
-/

namespace A356305.P12152083254874895625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A006075 (n + 1)).toNat) (A327858 n)

end

end A356305.P12152083254874895625

/-! ## A356305.P125944999356235867

`A026791(n+1)%A024011(A327858(n))`
-/

namespace A356305.P125944999356235867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026791 (n + 1)) (A024011 (A327858 n).toNat)

end

end A356305.P125944999356235867

/-! ## A356305.P17479371671532488493

`A334028(A369449(n)²*A289436(n+2))`
-/

namespace A356305.P17479371671532488493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (A369449 n ^ 2 * A289436 (n + 2)).toNat

end

end A356305.P17479371671532488493

/-! ## A356305.P882122338594998554

`A334028(A289436(2*(n+1))*A369449(n))`
-/

namespace A356305.P882122338594998554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (A289436 (2 * (n + 1)) * A369449 n).toNat

end

end A356305.P882122338594998554

/-! ## A356305.P7374557126490277316

`A006881(A299283(2*n+3))%A327858(n)`
-/

namespace A356305.P7374557126490277316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006881 (A299283 (2 * n + 3)).toNat) (A327858 n)

end

end A356305.P7374557126490277316

/-!
# A356306: The nearest common ancestor of A000265(n) and gcd(A000265(n), sigma(n)) in the A253563-tree.

The programs for A356306, the canonical program `A356306.P4886106723290676406` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356306 has offset 1).

The definition of A356306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356306.P15172395403549486322

`A355931(n+1)%A355992(A355834(n+5))`
-/

namespace A356306.P15172395403549486322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355931 (n + 1)) (A355992 (A355834 (n + 5)).toNat)

end

end A356306.P15172395403549486322

namespace A356306

/-- `A355931(n+1)%A355992(A355834(n+5))` -/
def P15172395403549486322.Spec : Prop :=
  ∀ n, P15172395403549486322.a n = A356306 (n + 1)

end A356306

/-! ## A356306.P4886106723290676406

`and(A141304(A009262(n+1)), A355931(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A356306

/-- `and(A141304(A009262(n+1)), A355931(n+1))` -/
def P4886106723290676406.Spec : Prop :=
  ∀ n, P4886106723290676406.a n = A356306 (n + 1)

theorem P4886106723290676406.correct : P4886106723290676406.Spec := by
  intro n
  simp only [A356306, Nat.add_sub_cancel]

end A356306

/-! ## A356306.P11387627214087162454

`A030101(A009194(n+1)%A306773(3*n+4))`
-/

namespace A356306.P11387627214087162454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.tmod (A009194 (n + 1)) (A306773 (3 * n + 4))).toNat

end

end A356306.P11387627214087162454

namespace A356306

/-- `A030101(A009194(n+1)%A306773(3*n+4))` -/
def P11387627214087162454.Spec : Prop :=
  ∀ n, P11387627214087162454.a n = A356306 (n + 1)

end A356306

/-! ## A356306.P2648812206195953961

`and(A136973(n+1), A355931(n+1))`
-/

namespace A356306.P2648812206195953961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A136973 (n + 1)) (A355931 (n + 1))

end

end A356306.P2648812206195953961

namespace A356306

/-- `and(A136973(n+1), A355931(n+1))` -/
def P2648812206195953961.Spec : Prop :=
  ∀ n, P2648812206195953961.a n = A356306 (n + 1)

end A356306

/-! ## A356306.P13948753285098069400

`∏{p}[A355931(n+1)^(A232270(n+1)+2), #]`
-/

namespace A356306.P13948753285098069400
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355931 (n + 1) : ℚ) ^ (A232270 (n + 1) + 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A356306.P13948753285098069400

namespace A356306

/-- `∏{p}[A355931(n+1)^(A232270(n+1)+2), #]` -/
def P13948753285098069400.Spec : Prop :=
  ∀ n, (P13948753285098069400.a n : ℤ) = A356306 (n + 1)

end A356306

/-! ## A356306.P11609939639212507880

`or(A057427(A301569(2*n+3)), A355931(n+1))`
-/

namespace A356306.P11609939639212507880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057427 (A301569 (2 * n + 3)).toNat) (A355931 (n + 1))

end

end A356306.P11609939639212507880

namespace A356306

/-- `or(A057427(A301569(2*n+3)), A355931(n+1))` -/
def P11609939639212507880.Spec : Prop :=
  ∀ n, P11609939639212507880.a n = A356306 (n + 1)

end A356306

/-! ## A356306.P5436384342162643149

`and(A169628(n+1), A355931(n+1))`
-/

namespace A356306.P5436384342162643149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A169628 (n + 1)) (A355931 (n + 1))

end

end A356306.P5436384342162643149

namespace A356306

/-- `and(A169628(n+1), A355931(n+1))` -/
def P5436384342162643149.Spec : Prop :=
  ∀ n, P5436384342162643149.a n = A356306 (n + 1)

end A356306

/-! ## A356306.P12766293291332209341

`gcd(A009194(n+1), A237628(n+3))`
-/

namespace A356306.P12766293291332209341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009194 (n + 1)) (A237628 (n + 3))

end

end A356306.P12766293291332209341

namespace A356306

/-- `gcd(A009194(n+1), A237628(n+3))` -/
def P12766293291332209341.Spec : Prop :=
  ∀ n, (P12766293291332209341.a n : ℤ) = A356306 (n + 1)

end A356306

/-! ## A356306.P4098261268878089217

`A355931(n+1)%A002189(n)`
-/

namespace A356306.P4098261268878089217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355931 (n + 1)) (A002189 n)

end

end A356306.P4098261268878089217

namespace A356306

/-- `A355931(n+1)%A002189(n)` -/
def P4098261268878089217.Spec : Prop :=
  ∀ n, P4098261268878089217.a n = A356306 (n + 1)

end A356306

/-! ## A356306.P17872378634372360892

`A078701(A306682(n+1)²)`
-/

namespace A356306.P17872378634372360892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A306682 (n + 1) ^ 2).toNat

end

end A356306.P17872378634372360892

namespace A356306

/-- `A078701(A306682(n+1)²)` -/
def P17872378634372360892.Spec : Prop :=
  ∀ n, P17872378634372360892.a n = A356306 (n + 1)

end A356306

/-!
# A356307: The nearest common ancestor of A161942(n) and gcd(A000265(n), sigma(n)) in the A253563-tree.

The programs for A356307, there is no canonical definition to state claims against.
-/

/-! ## A356307.P4932945082189109312

`A005811(3^A355931(n+1))`
-/

namespace A356307.P4932945082189109312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A355931 (n + 1) : ℤ))).toNat

end

end A356307.P4932945082189109312

/-! ## A356307.P6576908695347480789

`A038573(A306682(n+1))%A005239(A060980(n+1))`
-/

namespace A356307.P6576908695347480789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038573 (A306682 (n + 1)).toNat) (A005239 (A060980 (n + 1)).toNat)

end

end A356307.P6576908695347480789

/-! ## A356307.P3777399174335119896

`A356301(A355931(n+1)^floor(log2(n+1)))`
-/

namespace A356307.P3777399174335119896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356301 (A355931 (n + 1) ^ Nat.log 2 (n + 1)).toNat

end

end A356307.P3777399174335119896

/-! ## A356307.P15743201693590182244

`A038573(A009194(n+1)*A059268(n))`
-/

namespace A356307.P15743201693590182244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (A009194 (n + 1) * A059268 n).toNat

end

end A356307.P15743201693590182244

/-! ## A356307.P2113926260088600920

`A038573(gcd(A033885(n+1), A107603(n+1)))`
-/

namespace A356307.P2113926260088600920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (Int.gcd (A033885 (n + 1)) (A107603 (n + 1)))

end

end A356307.P2113926260088600920

/-! ## A356307.P6315493672397659382

`A356354(A356306(n+1)%A356316(n+5))`
-/

namespace A356307.P6315493672397659382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356354 (Int.tmod (A356306 (n + 1)) (A356316 (n + 5))).toNat

end

end A356307.P6315493672397659382

/-! ## A356307.P12909531237311675997

`A330960(lcm(2, A306682(n+1)))`
-/

namespace A356307.P12909531237311675997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330960 (Int.lcm 2 (A306682 (n + 1)))

end

end A356307.P12909531237311675997

/-! ## A356307.P16504500109408482996

`A038573(A306682(n+1))/A306682(A306682(n+1)²)`
-/

namespace A356307.P16504500109408482996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038573 (A306682 (n + 1)).toNat : ℚ) / (A306682 (A306682 (n + 1) ^ 2).toNat : ℚ)

end

end A356307.P16504500109408482996

/-!
# A356308: a(n) = gcd(n, A356301(n)), where A356301(n) is the nearest common ancestor of A000265(sigma(n)) and A000265(n) in the A253563-tree.

The programs for A356308, there is no canonical definition to state claims against.
-/

/-! ## A356308.P8421131287597035569

`gcd(n+1, A356301(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356308.P8421131287597035569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A356301 (n + 1))

end

end A356308.P8421131287597035569

/-! ## A356308.P15502645986723512099

`A050873(A356301(n+1)+A000217(n))`
-/

namespace A356308.P15502645986723512099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A356301 (n + 1) + A000217 n).toNat

end

end A356308.P15502645986723512099

/-! ## A356308.P6194352492523575860

`gcd(A356301(n+1), A367122(n))`
-/

namespace A356308.P6194352492523575860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A356301 (n + 1)) (A367122 n)

end

end A356308.P6194352492523575860

/-! ## A356308.P11812704153925446633

`gcd(A191131(A270613(n+1)), A306927(n+1))`
-/

namespace A356308.P11812704153925446633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A191131 (A270613 (n + 1)).toNat) (A306927 (n + 1))

end

end A356308.P11812704153925446633

/-! ## A356308.P5195072377317077821

`gcd(A001615(n+1), A380952(n))`
-/

namespace A356308.P5195072377317077821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001615 (n + 1)) (A380952 n)

end

end A356308.P5195072377317077821

/-!
# A356309: The least j >= n such that n and A276086(j) are relatively prime, where A276086 is the primorial base exp-function.

The programs for A356309, there is no canonical definition to state claims against.
-/

/-! ## A356309.P7751582386389352032

`n+A356302(n)`
-/

namespace A356309.P7751582386389352032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A356302 n

end

end A356309.P7751582386389352032

/-! ## A356309.P4950241581863808547

`A356302(n)-A001489(n)`
-/

namespace A356309.P4950241581863808547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356302 n - A001489 n

end

end A356309.P4950241581863808547

/-! ## A356309.P10342186330263768710

`A002378(n)-(n²-A356302(n))`
-/

namespace A356309.P10342186330263768710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n - ((n ^ 2 : ℤ) - A356302 n)

end

end A356309.P10342186330263768710

/-! ## A356309.P10144121544262756241

`n--A356302(n)%A005893(n)`
-/

namespace A356309.P10144121544262756241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (-A356302 n) (A005893 n)

end

end A356309.P10144121544262756241

/-!
# A356310: a(n) = 1 if A003415(n) and A276086(n) are relatively prime, otherwise 0. Here A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A356310, there is no canonical definition to state claims against.
-/

/-! ## A356310.P16636355864327949068

`C(A351233(n), n)`
-/

namespace A356310.P16636355864327949068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A351233 n).toNat n

end

end A356310.P16636355864327949068

/-! ## A356310.P10789679999806068444

`floor(1/A327858(n))`
-/

namespace A356310.P10789679999806068444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A327858 n : ℚ)⌋

end

end A356310.P10789679999806068444

/-! ## A356310.P12903194590840899553

`char[A356311(n+1)]`
-/

namespace A356310.P12903194590840899553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A356310.P12903194590840899553

/-! ## A356310.P6348190433704200284

`char[eq[0, A351234(n)]]`
-/

namespace A356310.P6348190433704200284
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351234 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A356310.P6348190433704200284

/-! ## A356310.P16519716217339260800

`char[eq[0, A356305(n)]]`
-/

namespace A356310.P16519716217339260800
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356305 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A356310.P16519716217339260800

/-! ## A356310.P6760344032561129929

`A000007(A351234(n))`
-/

namespace A356310.P6760344032561129929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A351234 n).toNat

end

end A356310.P6760344032561129929

/-! ## A356310.P18035793312864337341

`A000007(A356305(n))`
-/

namespace A356310.P18035793312864337341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A356305 n).toNat

end

end A356310.P18035793312864337341

/-! ## A356310.P15008536053419290769

`A000007(A369449(n))`
-/

namespace A356310.P15008536053419290769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A369449 n).toNat

end

end A356310.P15008536053419290769

/-! ## A356310.P5136029649505892363

`A010051(2*A327858(n))`
-/

namespace A356310.P5136029649505892363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A327858 n).toNat

end

end A356310.P5136029649505892363

/-! ## A356310.P11765882339410915345

`A358220(6*A327858(n))`
-/

namespace A356310.P11765882339410915345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358220 (6 * A327858 n).toNat

end

end A356310.P11765882339410915345

/-! ## A356310.P227264031368392071

`A354817(8*A327858(n))`
-/

namespace A356310.P227264031368392071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354817 (8 * A327858 n).toNat

end

end A356310.P227264031368392071

/-! ## A356310.P4596329990423632516

`A300251(ceil(2/A327858(n)))`
-/

namespace A356310.P4596329990423632516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300251 ⌈2 / (A327858 n : ℚ)⌉.toNat

end

end A356310.P4596329990423632516

/-! ## A356310.P8463641633933664537

`∏{p}[A327858(n), 1-A300251(#)]`
-/

namespace A356310.P8463641633933664537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - A300251 p)

end

end A356310.P8463641633933664537

/-! ## A356310.P9348675297849950881

`∏{p}[A327858(n), 1-A327858(#)]`
-/

namespace A356310.P9348675297849950881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - A327858 p)

end

end A356310.P9348675297849950881

/-! ## A356310.P10257362348725692946

`∏{p}[A327858(n), A300251(A300251(#))]`
-/

namespace A356310.P10257362348725692946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A300251 (A300251 p).toNat

end

end A356310.P10257362348725692946

/-! ## A356310.P3688256370929028987

`C(A003754(n+1), A003754(n+1)*A327858(n))`
-/

namespace A356310.P3688256370929028987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003754 (n + 1)).toNat (A003754 (n + 1) * A327858 n).toNat

end

end A356310.P3688256370929028987

/-! ## A356310.P16853354900006957725

`A008966(A327858(n)²)`
-/

namespace A356310.P16853354900006957725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A327858 n ^ 2).toNat

end

end A356310.P16853354900006957725

/-! ## A356310.P7499383851952384102

`A373486(A327858(n)²)`
-/

namespace A356310.P7499383851952384102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373486 (A327858 n ^ 2).toNat

end

end A356310.P7499383851952384102

/-! ## A356310.P4227470105986043082

`A354817((A327858(n)+1)²)`
-/

namespace A356310.P4227470105986043082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354817 ((A327858 n + 1) ^ 2).toNat

end

end A356310.P4227470105986043082

/-! ## A356310.P11807505782868579410

`A341517((A327858(n)+3)²)`
-/

namespace A356310.P11807505782868579410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341517 ((A327858 n + 3) ^ 2).toNat

end

end A356310.P11807505782868579410

/-!
# A356311: Numbers k for which A003415(k) and A276086(k) are relatively prime, where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A356311, there is no canonical definition to state claims against.
-/

/-! ## A356311.P3827201041413936747

`eq[1, A327858(n)]`
-/

namespace A356311.P3827201041413936747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327858 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356311.P3827201041413936747

/-! ## A356311.P14336883976896041377

`lt[0, A356310(n)]`
-/

namespace A356311.P14336883976896041377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A356311.P14336883976896041377

/-! ## A356311.P13930252239242447444

`eq[n, A351233(n)]`
-/

namespace A356311.P13930252239242447444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351233 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356311.P13930252239242447444

/-! ## A356311.P3238229527356449063

`eq[A351086(n), A356310(n)]`
-/

namespace A356311.P3238229527356449063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356311.P3238229527356449063

/-! ## A356311.P6700795040079742823

`eq[0, A369449(n)]`
-/

namespace A356311.P6700795040079742823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369449 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356311.P6700795040079742823

/-! ## A356311.P9102991605720490828

`eq[0, A351234(n)]`
-/

namespace A356311.P9102991605720490828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351234 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356311.P9102991605720490828

/-! ## A356311.P14845773720780363101

`eq[0, A356305(n)]`
-/

namespace A356311.P14845773720780363101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356305 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356311.P14845773720780363101

/-! ## A356311.P10383622307818328568

`eq[A276086(n), A351231(n)]`
-/

namespace A356311.P10383622307818328568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351231 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356311.P10383622307818328568

/-! ## A356311.P18004787700391824611

`filter[A092942(n), A356310(#)]`
-/

namespace A356311.P18004787700391824611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356310 (f1 j).toNat = 1) n)

end

end A356311.P18004787700391824611

/-!
# A356312: Numbers k such that A003415(k) and A276086(k) are not relatively prime, where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A356312, there is no canonical definition to state claims against.
-/

/-! ## A356312.P8907654554951399357

`eq[0, A356310(n)]`
-/

namespace A356312.P8907654554951399357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356312.P8907654554951399357

/-! ## A356312.P4152571913793907185

`lt[1, A327858(n)]`
-/

namespace A356312.P4152571913793907185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327858 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A356312.P4152571913793907185

/-! ## A356312.P16081973970575808410

`lt[A351233(n), n]`
-/

namespace A356312.P16081973970575808410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351233 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A356312.P16081973970575808410

/-! ## A356312.P12164535116043212913

`comp[A356311(n+1)]`
-/

namespace A356312.P12164535116043212913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A356312.P12164535116043212913

/-! ## A356312.P5628531705362249133

`lt[0, A351234(n)]`
-/

namespace A356312.P5628531705362249133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351234 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A356312.P5628531705362249133

/-! ## A356312.P3107170856117268570

`lt[0, A356305(n)]`
-/

namespace A356312.P3107170856117268570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356305 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A356312.P3107170856117268570

/-! ## A356312.P13569891615957444139

`eq[1, A261143(A327858(n)²)]`
-/

namespace A356312.P13569891615957444139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 (A327858 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356312.P13569891615957444139

/-! ## A356312.P9315245404014055386

`eq[A301941(A356305(n)²), A356305(n)]`
-/

namespace A356312.P9315245404014055386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301941 (A356305 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356305 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356312.P9315245404014055386

/-!
# A356313: a(n) = 1 if {the least k >= n such that n and A276086(k) are coprime} is one of the primorial numbers (A002110), otherwise 0.

The programs for A356313, there is no canonical definition to state claims against.
-/

/-! ## A356313.P11404795863401908923

`and(char[A356314(n+1)], A077949(n))`
-/

namespace A356313.P11404795863401908923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356314 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A077949 n)

end

end A356313.P11404795863401908923

/-! ## A356313.P12340910111210046611

`and(char[A356314(n+1)], A015441(n))`
-/

namespace A356313.P12340910111210046611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356314 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A015441 n)

end

end A356313.P12340910111210046611

/-! ## A356313.P9898341544424605615

`and(char[A356314(n+1)], A051997(n+1))`
-/

namespace A356313.P9898341544424605615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356314 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A051997 (n + 1))

end

end A356313.P9898341544424605615

/-! ## A356313.P5883485319409464756

`and(char[A356314(n+1)], A300945(n))`
-/

namespace A356313.P5883485319409464756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356314 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A300945 n)

end

end A356313.P5883485319409464756

/-! ## A356313.P126050441034319952

`A001221(A152760(3*n+2))%2`
-/

namespace A356313.P126050441034319952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001221 (A152760 (3 * n + 2)).toNat) 2

end

end A356313.P126050441034319952

/-!
# A356314: Positions of primorial numbers (A002110) in A356309.

The programs for A356314, there is no canonical definition to state claims against.
-/

/-! ## A356314.P9533411835823417145

`lt[0, A356313(n)]`
-/

namespace A356314.P9533411835823417145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356313 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A356314.P9533411835823417145

/-! ## A356314.P1640156330888644752

`filter[n+1, A356313(#)]`
-/

namespace A356314.P1640156330888644752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356313 (f1 j) = 1) n)

end

end A356314.P1640156330888644752

/-! ## A356314.P13621492499323102263

`record[(n+1)*A356313(n+1)]`
-/

namespace A356314.P13621492499323102263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A356313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356314.P13621492499323102263

/-! ## A356314.P4428876621868003763

`eq[A054977(n), A356313(n)]`
-/

namespace A356314.P4428876621868003763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356313 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356314.P4428876621868003763

/-! ## A356314.P2706431843047552453

`eq[A158388(n), A356313(n)]`
-/

namespace A356314.P2706431843047552453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356313 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356314.P2706431843047552453

/-! ## A356314.P9372806838431967127

`eq[A307609(n+1), A356313(n)]`
-/

namespace A356314.P9372806838431967127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356313 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356314.P9372806838431967127

/-! ## A356314.P2242779101466071708

`eq[A356313(n), A376663(n+1)]`
-/

namespace A356314.P2242779101466071708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356313 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376663 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356314.P2242779101466071708

/-! ## A356314.P6427291602414109152

`eq[A356313(n), A380939(n+1)]`
-/

namespace A356314.P6427291602414109152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356313 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380939 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356314.P6427291602414109152

/-! ## A356314.P14920539567288748040

`eq[A059233(n+2), A356313(n)]`
-/

namespace A356314.P14920539567288748040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059233 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356313 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356314.P14920539567288748040

/-!
# A356315: a(n) = 1 if n divides the least j >= n such that n and A276086(j) are coprime, otherwise 0. Here A276086 is the primorial base exp-function.

The programs for A356315, there is no canonical definition to state claims against.
-/

/-! ## A356315.P8282306933332924743

`char[record[gcd(n+1, A356309(n+1))]-1]`
-/

namespace A356315.P8282306933332924743
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A356309 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A356315.P8282306933332924743

/-! ## A356315.P14357141605921786767

`A328682(gcd(A059319(n), A290645(n+2)))`
-/

namespace A356315.P14357141605921786767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (Int.gcd (A059319 n) (A290645 (n + 2)))

end

end A356315.P14357141605921786767

/-! ## A356315.P16804787651848037604

`A121361(A284002(3*n)*A342656(n+2))`
-/

namespace A356315.P16804787651848037604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121361 (A284002 (3 * n) * A342656 (n + 2)).toNat

end

end A356315.P16804787651848037604

/-! ## A356315.P6486108055558967108

`A010052(A287170(n+2)^A066633(n+1))`
-/

namespace A356315.P6486108055558967108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (SequenceMachineLib.roundAway ((A287170 (n + 2) : ℚ) ^ (A066633 (n + 1) : ℤ))).toNat

end

end A356315.P6486108055558967108

/-! ## A356315.P15249623312989181509

`A070887(A320436(2*n+3)+A084511(n+3))`
-/

namespace A356315.P15249623312989181509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070887 (A320436 (2 * n + 3) + A084511 (n + 3)).toNat

end

end A356315.P15249623312989181509

/-!
# A356316: Numbers k such that k divides the least j >= k for which k and A276086(j) are coprime, where A276086 is the primorial base exp-function.

The programs for A356316, there is no canonical definition to state claims against.
-/

/-! ## A356316.P11004433116374742943

`filter[n+1, A356315(#)]`
-/

namespace A356316.P11004433116374742943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356315 (f1 j) = 1) n)

end

end A356316.P11004433116374742943

/-! ## A356316.P3638852758812477022

`lt[0, A356315(n+1)]+1`
-/

namespace A356316.P3638852758812477022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356315 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A356316.P3638852758812477022

/-! ## A356316.P540329060316999875

`comp[A356317(n+1)-1]+1`
-/

namespace A356316.P540329060316999875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356317 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A356316.P540329060316999875

/-! ## A356316.P15682581719885965204

`record[gcd(n+1, A356309(n+1))]`
-/

namespace A356316.P15682581719885965204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A356309 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356316.P15682581719885965204

/-! ## A356316.P12614895593750056509

`record[gcd(A356309(n)-n, A028310(n))]`
-/

namespace A356316.P12614895593750056509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A356309 n - (n : ℤ)) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356316.P12614895593750056509

/-! ## A356316.P14496484073582890613

`eq[1, A356315(A028310(n)+1)]+1`
-/

namespace A356316.P14496484073582890613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356315 (A028310 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356316.P14496484073582890613

/-! ## A356316.P17007655236433496407

`record[A000027(n+1)*A356315(n+1)]`
-/

namespace A356316.P17007655236433496407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A356315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356316.P17007655236433496407

/-! ## A356316.P1364101337863463378

`eq[A024000(n)+n, A356315(n+1)]+1`
-/

namespace A356316.P1364101337863463378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356315 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A356316.P1364101337863463378

/-! ## A356316.P12154666005987726204

`eq[A204129(3*(n+1)), A356315(n+1)]+1`
-/

namespace A356316.P12154666005987726204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204129 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356315 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A356316.P12154666005987726204

/-!
# A356317: Numbers k such that k does not divide the least j >= k for which k and A276086(j) are coprime, where A276086 is the primorial base exp-function.

The programs for A356317, there is no canonical definition to state claims against.
-/

/-! ## A356317.P13428128315137193248

`lt[gcd(n, A356302(n)), n]`
-/

namespace A356317.P13428128315137193248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A356302 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356317.P13428128315137193248

/-! ## A356317.P7960907658875639578

`eq[0, A356315(n+1)]+1`
-/

namespace A356317.P7960907658875639578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356315 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A356317.P7960907658875639578

/-! ## A356317.P2051679837663498784

`lt[A356315(n+2), 1]+2`
-/

namespace A356317.P2051679837663498784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356315 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A356317.P2051679837663498784

/-! ## A356317.P13261557205429707374

`lt[A356315(A000007(n)+n), 1]`
-/

namespace A356317.P13261557205429707374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356315 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A356317.P13261557205429707374

/-! ## A356317.P6019640114309072168

`eq[char[A356318(n+1)], A356162(n)]`
-/

namespace A356317.P6019640114309072168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356318 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A356317.P6019640114309072168

/-!
# A356318: Numbers k such that the least j >= k for which k and A276086(j) are coprime is a nontrivial multiple of k, where A276086 is the primorial base exp-function.

The programs for A356318, there is no canonical definition to state claims against.
-/

/-! ## A356318.P3861872901908344962

`filter[A324584(n+1), A356315(#)]`
-/

namespace A356318.P3861872901908344962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356315 (f1 j).toNat = 1) n)

end

end A356318.P3861872901908344962

/-! ## A356318.P12897094580834418454

`∩[A324584(n+1), A356316(n+1)]`
-/

namespace A356318.P12897094580834418454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356318.P12897094580834418454

/-!
# A356319: Numbers k such that {the least j >= k for which k and A276086(k+j) are coprime} is larger than 0, but less than k, where A276086 is the primorial base exp-function.

The programs for A356319, there is no canonical definition to state claims against.
-/

/-! ## A356319.P433660948138398128

`lt[1, C(n, A356302(n))]`
-/

namespace A356319.P433660948138398128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A356302 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356319.P433660948138398128

/-! ## A356319.P15817544887354415444

`∩[A356317(n+1), A028974(n+2)]`
-/

namespace A356319.P15817544887354415444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028974 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356319.P15817544887354415444

/-! ## A356319.P3347330238874420520

`A356317(A052382(n+1)^A210954(n+1))`
-/

namespace A356319.P3347330238874420520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356317 (SequenceMachineLib.roundAway ((A052382 (n + 1) : ℚ) ^ (A210954 (n + 1) : ℤ))).toNat

end

end A356319.P3347330238874420520

/-! ## A356319.P16427908291534375725

`A356317(A106000(n+1))`
-/

namespace A356319.P16427908291534375725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356317 (A106000 (n + 1)).toNat

end

end A356319.P16427908291534375725

/-! ## A356319.P15737981090551037816

`A356317(A064704(n+1))`
-/

namespace A356319.P15737981090551037816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356317 (A064704 (n + 1)).toNat

end

end A356319.P15737981090551037816

/-!
# A356320: Length of the common prefix in binary expansions of n and A332221(n) = A156552(sigma(A005940(1+n))).

The programs for A356320, there is no canonical definition to state claims against.
-/

/-! ## A356320.P2429756635366891765

`A347380(A005940(1+n))`
-/

namespace A356320.P2429756635366891765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347380 (A005940 (1 + n)).toNat

end

end A356320.P2429756635366891765

/-! ## A356320.P1477055432625937365

`A029837(n+1)-A356321(n)`
-/

namespace A356320.P1477055432625937365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) - A356321 n

end

end A356320.P1477055432625937365

/-! ## A356320.P1544559563320535567

`A238845(2*n)-A356321(n)`
-/

namespace A356320.P1544559563320535567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238845 (2 * n) - A356321 n

end

end A356320.P1544559563320535567

/-! ## A356320.P2063048863927880381

`A000523(2*n+1)-A356321(n)`
-/

namespace A356320.P2063048863927880381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * n + 1) - A356321 n

end

end A356320.P2063048863927880381

/-! ## A356320.P2230803448532634730

`A347380(A292602(4*n+3))`
-/

namespace A356320.P2230803448532634730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347380 (A292602 (4 * n + 3)).toNat

end

end A356320.P2230803448532634730

/-! ## A356320.P15236089963142236305

`A347380(2*A290077(n)-A324052(n))`
-/

namespace A356320.P15236089963142236305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347380 (2 * A290077 n - A324052 n).toNat

end

end A356320.P15236089963142236305

/-! ## A356320.P567485383848343658

`A347380(A340362(n+1)+A324106(n+1))`
-/

namespace A356320.P567485383848343658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347380 (A340362 (n + 1) + A324106 (n + 1)).toNat

end

end A356320.P567485383848343658

/-! ## A356320.P4341323572955235328

`A347380(A290077(n)+A290077(n)-A324052(n))`
-/

namespace A356320.P4341323572955235328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347380 (A290077 n + (A290077 n - A324052 n)).toNat

end

end A356320.P4341323572955235328

/-! ## A356320.P6017724395920703903

`A347380(A290077(n)-(A324052(n)-A290077(n)))`
-/

namespace A356320.P6017724395920703903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347380 (A290077 n - (A324052 n - A290077 n)).toNat

end

end A356320.P6017724395920703903

/-! ## A356320.P2796967146421574547

`A347380(A340362(n+1)+A340364(n+1)*A340366(n+1))`
-/

namespace A356320.P2796967146421574547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347380 (A340362 (n + 1) + A340364 (n + 1) * A340366 (n + 1)).toNat

end

end A356320.P2796967146421574547

/-! ## A356320.P7820761295779844024

`A252464(A005940(n+1))-A356321(n)`
-/

namespace A356320.P7820761295779844024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A005940 (n + 1)).toNat - A356321 n

end

end A356320.P7820761295779844024

/-!
# A356321: a(n) = A347381(A005940(1+n)).

The programs for A356321, there is no canonical definition to state claims against.
-/

/-! ## A356321.P963617902515705122

`A347381(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356321.P963617902515705122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (A005940 (1 + n)).toNat

end

end A356321.P963617902515705122

/-! ## A356321.P14130290797285907259

`∑[A209229(n)]-A356320(n)`
-/

namespace A356321.P14130290797285907259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A356320 n

end

end A356321.P14130290797285907259

/-! ## A356321.P3483352741120894318

`A029837(n+1)-A356320(n)`
-/

namespace A356321.P3483352741120894318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) - A356320 n

end

end A356321.P3483352741120894318

/-! ## A356321.P2547728299756762614

`A000523(2*n+1)-A356320(n)`
-/

namespace A356321.P2547728299756762614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * n + 1) - A356320 n

end

end A356321.P2547728299756762614

/-! ## A356321.P12293340027880714416

`A374215(A005940(n+1))+A374214(A005940(n+1))`
-/

namespace A356321.P12293340027880714416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374215 (A005940 (n + 1)).toNat + A374214 (A005940 (n + 1)).toNat

end

end A356321.P12293340027880714416

/-! ## A356321.P12657374556773945877

`A347381(A324394(n)*A324395(n))`
-/

namespace A356321.P12657374556773945877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (A324394 n * A324395 n).toNat

end

end A356321.P12657374556773945877

/-! ## A356321.P10833768155857153797

`A347381(A337375(n)*A337376(n))`
-/

namespace A356321.P10833768155857153797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (A337375 n * A337376 n).toNat

end

end A356321.P10833768155857153797

/-! ## A356321.P9199935548646086177

`A347381(2*A290077(n)-A324052(n))`
-/

namespace A356321.P9199935548646086177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (2 * A290077 n - A324052 n).toNat

end

end A356321.P9199935548646086177

/-! ## A356321.P3899284194340317688

`A347381(A337375(2*n)*A337377(2*n))`
-/

namespace A356321.P3899284194340317688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (A337375 (2 * n) * A337377 (2 * n)).toNat

end

end A356321.P3899284194340317688

/-! ## A356321.P7209166633286147881

`A347381(A290077(n)+A290077(n)-A324052(n))`
-/

namespace A356321.P7209166633286147881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (A290077 n + (A290077 n - A324052 n)).toNat

end

end A356321.P7209166633286147881

/-! ## A356321.P386340102672061658

`A347381(A290077(n)-(A324052(n)-A290077(n)))`
-/

namespace A356321.P386340102672061658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (A290077 n - (A324052 n - A290077 n)).toNat

end

end A356321.P386340102672061658

/-! ## A356321.P17379492978919958827

`A252464(A005940(n+1))-A356320(n)`
-/

namespace A356321.P17379492978919958827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A005940 (n + 1)).toNat - A356320 n

end

end A356321.P17379492978919958827

/-!
# A356325: Array A(n, k), n, k >= 0, read by antidiagonals; the terms in the negaFibonacci representation of A(n, k) are the terms in common in the negaFibonacci representations of n and k.

The programs for A356325, there is no canonical definition to state claims against.
-/

/-! ## A356325.P15489313294222395579

`A117054(A100936(n))`
-/

namespace A356325.P15489313294222395579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117054 (A100936 n).toNat

end

end A356325.P15489313294222395579

/-! ## A356325.P284615779263329954

`A117054(A108359(n))`
-/

namespace A356325.P284615779263329954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117054 (A108359 n).toNat

end

end A356325.P284615779263329954

/-! ## A356325.P9935466802737409070

`A101211(A168287(n))-1`
-/

namespace A356325.P9935466802737409070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101211 (A168287 n).toNat - 1

end

end A356325.P9935466802737409070

/-! ## A356325.P15659473827526190374

`A005384(n+1)%A101211(A168287(n))`
-/

namespace A356325.P15659473827526190374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005384 (n + 1)) (A101211 (A168287 n).toNat)

end

end A356325.P15659473827526190374

/-! ## A356325.P14435351764265761983

`and(A277066(n+1), A356969(n))`
-/

namespace A356325.P14435351764265761983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A277066 (n + 1)) (A356969 n)

end

end A356325.P14435351764265761983

/-!
# A356326: The terms in the negaFibonacci representation of a(n) are the terms in common in the negaFibonacci representations of n and -n.

The programs for A356326, there is no canonical definition to state claims against.
-/

/-! ## A356326.P5051909432603599536

`A356327(and(A215024(n), A215025(n)))`
-/

namespace A356326.P5051909432603599536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356327 (Int.land (A215024 n) (A215025 n)).toNat

end

end A356326.P5051909432603599536

/-!
# A356327: Replace 2^k in binary expansion of n with A039834(1+k).

The programs for A356327, the canonical program `A356327.P6646034476295360312` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356327 has offset 0).

The definition of A356327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356327.P6646034476295360312

`a(floor(n/4))+n%2-a(floor(n/2))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A356327

/-- `a(floor(n/4))+n%2-a(floor(n/2))` -/
def P6646034476295360312.Spec : Prop :=
  ∀ n, P6646034476295360312.a n = A356327 n

theorem P6646034476295360312.correct : P6646034476295360312.Spec := by
  intro n
  simp only [A356327]

end A356327

/-! ## A356327.P7727116009228480452

`A345290(floor(n/2))+Δ[floor(n/2)]`
-/

namespace A356327.P7727116009228480452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345290 ⌊(n : ℚ) / 2⌋.toNat + (f1 (n + 1) - f1 n)

end

end A356327.P7727116009228480452

namespace A356327

/-- `A345290(floor(n/2))+Δ[floor(n/2)]` -/
def P7727116009228480452.Spec : Prop :=
  ∀ n, P7727116009228480452.a n = A356327 n

end A356327

/-! ## A356327.P17860198527276764415

`A345290(Δ[n²])+A345290(n)+1`
-/

namespace A356327.P17860198527276764415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345290 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A345290 n + 1

end

end A356327.P17860198527276764415

namespace A356327

/-- `A345290(Δ[n²])+A345290(n)+1` -/
def P17860198527276764415.Spec : Prop :=
  ∀ n, P17860198527276764415.a n = A356327 n

end A356327

/-! ## A356327.P13866608094152580366

`∑{p}[A344530(n), A286548(#)]`
-/

namespace A356327.P13866608094152580366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A286548 p

end

end A356327.P13866608094152580366

namespace A356327

/-- `∑{p}[A344530(n), A286548(#)]` -/
def P13866608094152580366.Spec : Prop :=
  ∀ n, P13866608094152580366.a n = A356327 n

end A356327

/-!
# A356329: Binary Look and Say sequence (method B - initial term is 1).

The programs for A356329, there is no canonical definition to state claims against.
-/

/-! ## A356329.P16687252717686120140

`A278038(A364005(n+1)+A073924(n+1))`
-/

namespace A356329.P16687252717686120140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278038 (A364005 (n + 1) + A073924 (n + 1)).toNat

end

end A356329.P16687252717686120140

/-!
# A356330: a(n) is the least prime p such that p^n-2 is prime.

The programs for A356330, there is no canonical definition to state claims against.
-/

/-! ## A356330.P10245035160192341461

`A000040(A258043(n+1))`
-/

namespace A356330.P10245035160192341461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A258043 (n + 1)).toNat

end

end A356330.P10245035160192341461

/-! ## A356330.P6185675255012661759

`A008578(A258043(n+1)+1)`
-/

namespace A356330.P6185675255012661759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A258043 (n + 1) + 1).toNat

end

end A356330.P6185675255012661759

/-! ## A356330.P6309464311398071853

`A008864(A258043(n-log2(1/2)))-1`
-/

namespace A356330.P6309464311398071853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A258043 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat - 1

end

end A356330.P6309464311398071853

/-! ## A356330.P5238109277967256898

`A057428(n+1)+A008864(A258043(n+1))`
-/

namespace A356330.P5238109277967256898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A008864 (A258043 (n + 1)).toNat

end

end A356330.P5238109277967256898

/-! ## A356330.P13552391086725989747

`A165326(2*(n+2))+A008864(A258043(n+1))`
-/

namespace A356330.P13552391086725989747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (2 * (n + 2)) + A008864 (A258043 (n + 1)).toNat

end

end A356330.P13552391086725989747

/-!
# A356331: Bit-reverse the odd part of the negaFibonacci representation of n: a(n) = A356327(A057889(A215024(n))).

The programs for A356331, there is no canonical definition to state claims against.
-/

/-! ## A356331.P17012815919082738602

`A356327(A057889(A215024(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356331.P17012815919082738602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356327 (A057889 (A215024 n).toNat).toNat

end

end A356331.P17012815919082738602

/-!
# A356332: Bit-reverse the odd part of the negaFibonacci representation of -n (and negate): a(n) = -A356327(A057889(A215025(n))).

The programs for A356332, there is no canonical definition to state claims against.
-/

/-! ## A356332.P1845213089593763785

`-A356327(A057889(A215025(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A356332.P1845213089593763785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A356327 (A057889 (A215025 n).toNat).toNat

end

end A356332.P1845213089593763785

/-!
# A356333: Lengths of Paterson's worms.

The programs for A356333, there is no canonical definition to state claims against.
-/

/-! ## A356333.P7061818139282103221

`lt[A198472(A198465(2*n+1)), A198472(n+1)]`
-/

namespace A356333.P7061818139282103221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198472 (A198465 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356333.P7061818139282103221

/-!
# A356335: Expansion of e.g.f. ( Product_{k>0} 1/(1-x^k) )^(1/(1-x)).

The programs for A356335, there is no canonical definition to state claims against.
-/

/-! ## A356335.P2416202097755864148

`A121900(3*n+1)+A089648(A087761(n))`
-/

namespace A356335.P2416202097755864148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (3 * n + 1) + A089648 (A087761 n).toNat

end

end A356335.P2416202097755864148

/-!
# A356336: Expansion of e.g.f. ( Product_{k>0} 1/(1-x^k)^(1/k) )^(1/(1-x)).

The programs for A356336, there is no canonical definition to state claims against.
-/

/-! ## A356336.P7019807574823977621

`A060747(or(n, A107878(n)))`
-/

namespace A356336.P7019807574823977621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (Int.lor (n : ℤ) (A107878 n)).toNat

end

end A356336.P7019807574823977621

/-! ## A356336.P2014959344670617519

`A300736(n+1)+A090735(A300736(n+1))`
-/

namespace A356336.P2014959344670617519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300736 (n + 1) + A090735 (A300736 (n + 1)).toNat

end

end A356336.P2014959344670617519

/-!
# A356337: Expansion of e.g.f. ( Product_{k>0} 1/(1-x^k)^k )^(1/(1-x)).

The programs for A356337, there is no canonical definition to state claims against.
-/

/-! ## A356337.P2531203595651647991

`A376953(A186925(n))`
-/

namespace A356337.P2531203595651647991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376953 (A186925 n).toNat

end

end A356337.P2531203595651647991

/-!
# A356338: a(n) = Sum_{k=1..n} binomial(2*n, n-k) * sigma(k).

The programs for A356338, there is no canonical definition to state claims against.
-/

/-! ## A356338.P1592020901250862358

`abs(Δ[A193020(A134169(n+1))])`
-/

namespace A356338.P1592020901250862358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193020 (A134169 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A356338.P1592020901250862358

/-!
# A356340: a(n) = Sum_{k=1..n} binomial(2*n, n-k) * phi(k), where phi is the Euler totient function.

The programs for A356340, there is no canonical definition to state claims against.
-/

/-! ## A356340.P17826110622261162926

`A092278(A289779(n+1))`
-/

namespace A356340.P17826110622261162926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092278 (A289779 (n + 1)).toNat

end

end A356340.P17826110622261162926

/-!
# A356344: a(n) = Sum_{k=1..n} binomial(2*k, k) * sigma(k).

The programs for A356344, the canonical program `A356344.P17546756688220818200` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356344 has offset 1).

The definition of A356344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356344.P10931750660258799203

`2*∑[∏[4-2/(n+1)]/2*∑{d}[n+1, #]]`
-/

namespace A356344.P10931750660258799203
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f2 j) / 2 * ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A356344.P10931750660258799203

namespace A356344

/-- `2*∑[∏[4-2/(n+1)]/2*∑{d}[n+1, #]]` -/
def P10931750660258799203.Spec : Prop :=
  ∀ n, P10931750660258799203.a n = (A356344 (n + 1) : ℚ)

end A356344

/-! ## A356344.P7135117445988805617

`∑[2*A357552(n+1)]`
-/

namespace A356344.P7135117445988805617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A357552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356344.P7135117445988805617

namespace A356344

/-- `∑[2*A357552(n+1)]` -/
def P7135117445988805617.Spec : Prop :=
  ∀ n, P7135117445988805617.a n = A356344 (n + 1)

end A356344

/-! ## A356344.P17546756688220818200

`∑[∑{d}[n+1, #]*A000984(n+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A356344

/-- `∑[∑{d}[n+1, #]*A000984(n+1)]` -/
def P17546756688220818200.Spec : Prop :=
  ∀ n, P17546756688220818200.a n = A356344 (n + 1)

theorem P17546756688220818200.correct : P17546756688220818200.Spec := by
  intro n
  simp only [A356344, Nat.add_sub_cancel]

end A356344

/-! ## A356344.P2228628444341762948

`∑[2*∑{d}[n+1, #]*A001700(n)]`
-/

namespace A356344.P2228628444341762948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ d ∈ Nat.divisors (f2 n), d) : ℕ) : ℤ) * A001700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356344.P2228628444341762948

namespace A356344

/-- `∑[2*∑{d}[n+1, #]*A001700(n)]` -/
def P2228628444341762948.Spec : Prop :=
  ∀ n, P2228628444341762948.a n = A356344 (n + 1)

end A356344

/-! ## A356344.P7963611110996862039

`∑[2*∑{d}[n+1, #]*A088218(n+1)]`
-/

namespace A356344.P7963611110996862039
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ d ∈ Nat.divisors (f2 n), d) : ℕ) : ℤ) * A088218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356344.P7963611110996862039

namespace A356344

/-- `∑[2*∑{d}[n+1, #]*A088218(n+1)]` -/
def P7963611110996862039.Spec : Prop :=
  ∀ n, P7963611110996862039.a n = A356344 (n + 1)

end A356344

/-!
# A356345: a(n) = Sum_{k=1..n} binomial(2*k, k) * sigma_2(k).

The programs for A356345, the canonical program `A356345.P3854360656098395106` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356345 has offset 1).

The definition of A356345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356345.P3854360656098395106

`∑[A000984(n+1)*A001157(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A356345

/-- `∑[A000984(n+1)*A001157(n+1)]` -/
def P3854360656098395106.Spec : Prop :=
  ∀ n, P3854360656098395106.a n = A356345 (n + 1)

theorem P3854360656098395106.correct : P3854360656098395106.Spec := by
  intro n
  simp only [A356345, Nat.add_sub_cancel]

end A356345

/-! ## A356345.P11953011553473393013

`∑[A001157(n+1)*A056040(2*(n+1))]`
-/

namespace A356345.P11953011553473393013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) * A056040 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356345.P11953011553473393013

namespace A356345

/-- `∑[A001157(n+1)*A056040(2*(n+1))]` -/
def P11953011553473393013.Spec : Prop :=
  ∀ n, P11953011553473393013.a n = A356345 (n + 1)

end A356345

/-! ## A356345.P15119789197886390835

`∑[(A067558(n+1)+(n+1)²)*A063886(2*(n+1))]`
-/

namespace A356345.P15119789197886390835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A067558 (n + 1) + ((n + 1) ^ 2 : ℤ)) * A063886 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356345.P15119789197886390835

namespace A356345

/-- `∑[(A067558(n+1)+(n+1)²)*A063886(2*(n+1))]` -/
def P15119789197886390835.Spec : Prop :=
  ∀ n, P15119789197886390835.a n = A356345 (n + 1)

end A356345

/-! ## A356345.P1157852986945856691

`∑[(A189120(n+1)+A005063(n+1))*A063886(2*(n+1))]`
-/

namespace A356345.P1157852986945856691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A189120 (n + 1) + A005063 (n + 1)) * A063886 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356345.P1157852986945856691

namespace A356345

/-- `∑[(A189120(n+1)+A005063(n+1))*A063886(2*(n+1))]` -/
def P1157852986945856691.Spec : Prop :=
  ∀ n, P1157852986945856691.a n = A356345 (n + 1)

end A356345

/-! ## A356345.P14653543031530462884

`∑[A158274(n+1)*A179931(n+1)*A063886(2*(n+1))]`
-/

namespace A356345.P14653543031530462884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158274 (n + 1) * A179931 (n + 1) * A063886 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356345.P14653543031530462884

namespace A356345

/-- `∑[A158274(n+1)*A179931(n+1)*A063886(2*(n+1))]` -/
def P14653543031530462884.Spec : Prop :=
  ∀ n, P14653543031530462884.a n = A356345 (n + 1)

end A356345

/-!
# A356346: a(n) = Sum_{k=1..n} binomial(2*k, k) * phi(k), where phi is the Euler totient function.

The programs for A356346, the canonical program `A356346.P4309964062944465404` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356346 has offset 1).

The definition of A356346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356346.P4309964062944465404

`∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A000984(n+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A356346

/-- `∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A000984(n+1)]` -/
def P4309964062944465404.Spec : Prop :=
  ∀ n, P4309964062944465404.a n = (A356346 (n + 1) : ℚ)

end A356346

/-! ## A356346.P15532497757348266966

`∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A001405(2*(n+1))]`
-/

namespace A356346.P15532497757348266966
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) * (A001405 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356346.P15532497757348266966

namespace A356346

/-- `∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A001405(2*(n+1))]` -/
def P15532497757348266966.Spec : Prop :=
  ∀ n, P15532497757348266966.a n = (A356346 (n + 1) : ℚ)

end A356346

/-! ## A356346.P9073965532044881501

`∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A056040(2*(n+1))]`
-/

namespace A356346.P9073965532044881501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) * (A056040 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356346.P9073965532044881501

namespace A356346

/-- `∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A056040(2*(n+1))]` -/
def P9073965532044881501.Spec : Prop :=
  ∀ n, P9073965532044881501.a n = (A356346 (n + 1) : ℚ)

end A356346

/-! ## A356346.P3232054843228592864

`∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A126869(2*(n+1))]`
-/

namespace A356346.P3232054843228592864
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) * (A126869 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356346.P3232054843228592864

namespace A356346

/-- `∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A126869(2*(n+1))]` -/
def P3232054843228592864.Spec : Prop :=
  ∀ n, P3232054843228592864.a n = (A356346 (n + 1) : ℚ)

end A356346

/-! ## A356346.P3848739574291117008

`∑[C(2*(n+1), n+1)*A000010(n+1)]`
-/

namespace A356346.P3848739574291117008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 1)) (n + 1) : ℤ) * A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356346.P3848739574291117008

namespace A356346

/-- `∑[C(2*(n+1), n+1)*A000010(n+1)]` -/
def P3848739574291117008.Spec : Prop :=
  ∀ n, P3848739574291117008.a n = A356346 (n + 1)

end A356346

/-!
# A356347: Indices of the primes in A181424.

The programs for A356347, there is no canonical definition to state claims against.
-/

/-! ## A356347.P17239239718597878694

`A064113(n+1)+2`
-/

namespace A356347.P17239239718597878694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064113 (n + 1) + 2

end

end A356347.P17239239718597878694

/-! ## A356347.P6396667780762047363

`A066875(n+1)+1`
-/

namespace A356347.P6396667780762047363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066875 (n + 1) + 1

end

end A356347.P6396667780762047363

/-! ## A356347.P4012331154881970770

`∑[A333216(n+1)]+2`
-/

namespace A356347.P4012331154881970770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A356347.P4012331154881970770

/-! ## A356347.P11802015584302108539

`A173390(n+1)+A333216(n+1)+1`
-/

namespace A356347.P11802015584302108539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173390 (n + 1) + (A333216 (n + 1) + 1)

end

end A356347.P11802015584302108539

/-! ## A356347.P9238795849889592370

`A173390(n+2)+1`
-/

namespace A356347.P9238795849889592370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173390 (n + 2) + 1

end

end A356347.P9238795849889592370

/-! ## A356347.P5905439584422910751

`A066491(Δ[n²])+2`
-/

namespace A356347.P5905439584422910751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066491 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A356347.P5905439584422910751

/-! ## A356347.P14713847449432407722

`∑[A145024(n+1)]+1`
-/

namespace A356347.P14713847449432407722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A356347.P14713847449432407722

/-! ## A356347.P18295660113097751310

`eq[1, A179835(n+1)]+2`
-/

namespace A356347.P18295660113097751310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179835 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A356347.P18295660113097751310

/-! ## A356347.P12675386117527176922

`A009056(A064113(n+1))`
-/

namespace A356347.P12675386117527176922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A064113 (n + 1)).toNat

end

end A356347.P12675386117527176922

/-! ## A356347.P10538658914705490298

`A020725(A066875(n+1))`
-/

namespace A356347.P10538658914705490298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A066875 (n + 1)).toNat

end

end A356347.P10538658914705490298

/-! ## A356347.P7288769609799356210

`A020725(A173390(n+2))`
-/

namespace A356347.P7288769609799356210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A173390 (n + 2)).toNat

end

end A356347.P7288769609799356210

/-! ## A356347.P9993318966321071933

`eq[A054541(n+1), A181346(n)]+1`
-/

namespace A356347.P9993318966321071933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A356347.P9993318966321071933

/-! ## A356347.P9731290888501478514

`eq[A125266(n+1), A181346(n)]+1`
-/

namespace A356347.P9731290888501478514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A356347.P9731290888501478514

/-! ## A356347.P18212691262597593274

`eq[A075526(n), A115061(n+1)]+2`
-/

namespace A356347.P18212691262597593274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A356347.P18212691262597593274

/-! ## A356347.P10069715552129656045

`eq[A075526(n), A162345(n+1)]+2`
-/

namespace A356347.P10069715552129656045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A356347.P10069715552129656045

/-! ## A356347.P14689756779865463915

`eq[A048852(n), A291463(n+1)]+2`
-/

namespace A356347.P14689756779865463915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291463 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A356347.P14689756779865463915

/-! ## A356347.P1010467687948442612

`eq[A001223(n+1), A054541(n+1)]+2`
-/

namespace A356347.P1010467687948442612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A356347.P1010467687948442612

/-! ## A356347.P15414163454444134561

`eq[A011974(n+1), A098764(n+1)]+2`
-/

namespace A356347.P15414163454444134561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098764 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A356347.P15414163454444134561

/-! ## A356347.P5397721304944491160

`eq[A051701(n+1), A062234(n+1)]+2`
-/

namespace A356347.P5397721304944491160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A356347.P5397721304944491160

/-!
# A356348: a(0) = 0; for n > 0, a(n) is the number of preceding terms having the same digit sum as a(n-1).

The programs for A356348, there is no canonical definition to state claims against.
-/

/-! ## A356348.P10428322424869779777

`A358851(lt[A347662(n+1), A346132(n+2)])`
-/

namespace A356348.P10428322424869779777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358851 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356348.P10428322424869779777

/-! ## A356348.P17756910385209355939

`A358851(lt[A347662(n), A049448(3*n+1)])`
-/

namespace A356348.P17756910385209355939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347662 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049448 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358851 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356348.P17756910385209355939

/-! ## A356348.P3750193207490226590

`A358851(lt[A358833(3*n+1), A000583(2*(n+1))])`
-/

namespace A356348.P3750193207490226590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358833 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358851 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356348.P3750193207490226590

/-! ## A356348.P6311925743830886003

`A358851(lt[A358835(3*n+1), A000583(2*(n+1))])`
-/

namespace A356348.P6311925743830886003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358835 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358851 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A356348.P6311925743830886003

/-! ## A356348.P11088365448348413544

`A249009(n)%A054692(A084938(n))`
-/

namespace A356348.P11088365448348413544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249009 n) (A054692 (A084938 n).toNat)

end

end A356348.P11088365448348413544

/-!
# A356349: Primitive Niven numbers: terms of A005349 that are not ten times another term of A005349.

The programs for A356349, there is no canonical definition to state claims against.
-/

/-! ## A356349.P13389825833661219036

`∪[A097569(A043320(n+1)), A171674(n+2)]`
-/

namespace A356349.P13389825833661219036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097569 (A043320 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171674 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356349.P13389825833661219036

/-! ## A356349.P10571000949904576166

`∪[A097569(A161953(n+1)), A171674(n+2)]`
-/

namespace A356349.P10571000949904576166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097569 (A161953 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171674 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356349.P10571000949904576166

/-! ## A356349.P3856156514359238845

`record[A097569(n+1)%A037918(3*(n+1))]`
-/

namespace A356349.P3856156514359238845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097569 (n + 1)) (A037918 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356349.P3856156514359238845

/-! ## A356349.P10871679019224024560

`∪[A097569(A044917(n+1)), A171674(n+1)]`
-/

namespace A356349.P10871679019224024560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097569 (A044917 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A356349.P10871679019224024560

/-!
# A356350: Primitive terms of A357769: terms of A357769 that are not ten times another term of A357769.

The programs for A356350, there is no canonical definition to state claims against.
-/

/-! ## A356350.P17224348763608749888

`∩[A131058(n+1), A357769(n+1)]`
-/

namespace A356350.P17224348763608749888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356350.P17224348763608749888

/-! ## A356350.P442666634775582067

`lt[lcm(n-n%10, ceil(5*n/3)), and(3*n+2, -3)]`
-/

namespace A356350.P442666634775582067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - ((n % 10 : ℕ) : ℤ)) ⌈5 * ((n : ℚ) / 3)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n + 2 : ℤ) (-3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A356350.P442666634775582067

/-! ## A356350.P13710858250974647040

`record[gcd(n+1, A117463(n))]`
-/

namespace A356350.P13710858250974647040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A117463 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356350.P13710858250974647040

/-! ## A356350.P8598970717153316463

`lt[((n+3)²*A007953(n+1))%(n+1), 1]+1`
-/

namespace A356350.P8598970717153316463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n + 3) ^ 2 : ℤ) * A007953 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A356350.P8598970717153316463

/-! ## A356350.P14471308254352519540

`lt[A318286(A006353(n)), 9*n]`
-/

namespace A356350.P14471308254352519540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318286 (A006353 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A356350.P14471308254352519540

/-!
# A356351: Partial sums of the ziggurat sequence A347186.

The programs for A356351, there is no canonical definition to state claims against.
-/

/-! ## A356351.P9079675919533262649

`∑[A347186(n+1)]`
-/

namespace A356351.P9079675919533262649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356351.P9079675919533262649

/-!
# A356352: a(n) = GCD of run lengths in binary expansion of n.

The programs for A356352, the canonical program `A356352.P18088137796280476194` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356352 has offset 0).

The definition of A356352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356352.P2474336273285128298

`A289508(A382255(n))`
-/

namespace A356352.P2474336273285128298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A382255 n).toNat

end

end A356352.P2474336273285128298

namespace A356352

/-- `A289508(A382255(n))` -/
def P2474336273285128298.Spec : Prop :=
  ∀ n, P2474336273285128298.a n = A356352 n

end A356352

/-! ## A356352.P18088137796280476194

`gcd(a(A035327(n)), A000120(n))` with `a(0)=0`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A356352

/-- `gcd(a(A035327(n)), A000120(n))` -/
def P18088137796280476194.Spec : Prop :=
  ∀ n, (P18088137796280476194.a n : ℤ) = A356352 n

theorem P18088137796280476194.correct : P18088137796280476194.Spec := by
  intro n
  simp only [A356352]

end A356352

/-! ## A356352.P13993373053475525448

`A064894(xor(n, 2*n))`
-/

namespace A356352.P13993373053475525448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064894 (Nat.xor n (2 * n))

end

end A356352.P13993373053475525448

namespace A356352

/-- `A064894(xor(n, 2*n))` -/
def P13993373053475525448.Spec : Prop :=
  ∀ n, P13993373053475525448.a n = A356352 n

end A356352

/-! ## A356352.P15857547706029145066

`A064894(A048724(n))`
-/

namespace A356352.P15857547706029145066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064894 (A048724 n).toNat

end

end A356352.P15857547706029145066

namespace A356352

/-- `A064894(A048724(n))` -/
def P15857547706029145066.Spec : Prop :=
  ∀ n, P15857547706029145066.a n = A356352 n

end A356352

/-! ## A356352.P6787868718992026835

`A064894(A065621(n+1))`
-/

namespace A356352.P6787868718992026835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064894 (A065621 (n + 1)).toNat

end

end A356352.P6787868718992026835

namespace A356352

/-- `A064894(A065621(n+1))` -/
def P6787868718992026835.Spec : Prop :=
  ∀ n, P6787868718992026835.a n = A356352 n

end A356352

/-! ## A356352.P14484402435197836747

`A064894(A003188(2*n))`
-/

namespace A356352.P14484402435197836747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064894 (A003188 (2 * n)).toNat

end

end A356352.P14484402435197836747

namespace A356352

/-- `A064894(A003188(2*n))` -/
def P14484402435197836747.Spec : Prop :=
  ∀ n, P14484402435197836747.a n = A356352 n

end A356352

/-! ## A356352.P690337319257687534

`A064894(A115857(n+1))`
-/

namespace A356352.P690337319257687534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064894 (A115857 (n + 1)).toNat

end

end A356352.P690337319257687534

namespace A356352

/-- `A064894(A115857(n+1))` -/
def P690337319257687534.Spec : Prop :=
  ∀ n, P690337319257687534.a n = A356352 n

end A356352

/-! ## A356352.P15143386498843210003

`A319826(A207901(n))`
-/

namespace A356352.P15143386498843210003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319826 (A207901 n).toNat

end

end A356352.P15143386498843210003

namespace A356352

/-- `A319826(A207901(n))` -/
def P15143386498843210003.Spec : Prop :=
  ∀ n, P15143386498843210003.a n = A356352 n

end A356352

/-! ## A356352.P15696478329828381434

`A052409(A163755(n))`
-/

namespace A356352.P15696478329828381434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A163755 n).toNat

end

end A356352.P15696478329828381434

namespace A356352

/-- `A052409(A163755(n))` -/
def P15696478329828381434.Spec : Prop :=
  ∀ n, P15696478329828381434.a n = A356352 n

end A356352

/-!
# A356353: Numbers k such that A356352(k) <> 1.

The programs for A356353, there is no canonical definition to state claims against.
-/

/-! ## A356353.P16366143387617214705

`eq[0, A033683(A356352(n))]`
-/

namespace A356353.P16366143387617214705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033683 (A356352 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356353.P16366143387617214705

/-! ## A356353.P6272719895489268542

`lt[1, A356411(A356352(n)²)]`
-/

namespace A356353.P6272719895489268542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356411 (A356352 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A356353.P6272719895489268542

/-! ## A356353.P13102581940722180605

`lt[2, A004442(A356352(n)+2)]`
-/

namespace A356353.P13102581940722180605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A356352 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A356353.P13102581940722180605

/-! ## A356353.P10823972668941850745

`eq[A130706(n), A169585(A356352(n))]`
-/

namespace A356353.P10823972668941850745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 (A356352 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356353.P10823972668941850745

/-! ## A356353.P14048287930594186106

`lt[A354874(n), A004442(A356352(n))]`
-/

namespace A356353.P14048287930594186106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A356352 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356353.P14048287930594186106

/-! ## A356353.P7712188316440946134

`lt[A356320(n), A356335(A356352(n))]`
-/

namespace A356353.P7712188316440946134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356320 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356335 (A356352 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356353.P7712188316440946134

/-! ## A356353.P7426760894436873257

`lt[A356352(n), A004442(A356352(n)²)]`
-/

namespace A356353.P7426760894436873257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356352 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A356352 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356353.P7426760894436873257

/-! ## A356353.P12801647689082667226

`lt[A356352(n+2), A356411(A356352(n))]`
-/

namespace A356353.P12801647689082667226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356352 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356411 (A356352 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A356353.P12801647689082667226

/-!
# A356354: a(n) is the least k such that the sets of positions of 1's in the binary expansions of n and k are similar.

The programs for A356354, there is no canonical definition to state claims against.
-/

/-! ## A356354.P7110524765928945596

`A356365((n-A175917(n)%A068150(n+1))*A099563(n))`
-/

namespace A356354.P7110524765928945596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356365 (((n : ℤ) - Int.tmod (A175917 n) (A068150 (n + 1))) * A099563 n).toNat

end

end A356354.P7110524765928945596

/-! ## A356354.P12199367883644562333

`A356365((A001222(2^n)-A175917(n))*A099563(n))`
-/

namespace A356354.P12199367883644562333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356365 ((A001222 (2 ^ n) - A175917 n) * A099563 n).toNat

end

end A356354.P12199367883644562333

/-! ## A356354.P9458966905086707932

`A356365((A052409(2^n)-A175917(n))*A099563(n))`
-/

namespace A356354.P9458966905086707932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356365 ((A052409 (2 ^ n) - A175917 n) * A099563 n).toNat

end

end A356354.P9458966905086707932

/-! ## A356354.P8197187621578811199

`A331856(A007088(2*n+1))%A278222(n)`
-/

namespace A356354.P8197187621578811199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331856 (A007088 (2 * n + 1)).toNat) (A278222 n)

end

end A356354.P8197187621578811199

/-! ## A356354.P12150333995376611676

`A372352(A255302(n))`
-/

namespace A356354.P12150333995376611676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372352 (A255302 n).toNat

end

end A356354.P12150333995376611676

/-!
# A356357: Semiprimes k such that k is congruent to 7 modulo k's index in the sequence of semiprimes.

The programs for A356357, there is no canonical definition to state claims against.
-/

/-! ## A356357.P3893994972085807757

`A001358(A106132(n+1))`
-/

namespace A356357.P3893994972085807757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A106132 (n + 1)).toNat

end

end A356357.P3893994972085807757

/-! ## A356357.P6864208022857719207

`A176540(A106132(n+1)+1)`
-/

namespace A356357.P6864208022857719207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (A106132 (n + 1) + 1).toNat

end

end A356357.P6864208022857719207

/-!
# A356358: Number of edges among all distinct circles that can be constructed from a point on the origin and n equally spaced points on each of the +x,-x,+y,-y coordinates axes using only a compass.

The programs for A356358, there is no canonical definition to state claims against.
-/

/-! ## A356358.P13679716160554475039

`A353782(n+1)+A354605(n+1)-1`
-/

namespace A356358.P13679716160554475039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353782 (n + 1) + A354605 (n + 1) - 1

end

end A356358.P13679716160554475039

/-! ## A356358.P18366955200571854461

`A353782(n+1)+xor(A124445(n), A354605(n+1))`
-/

namespace A356358.P18366955200571854461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353782 (n + 1) + Int.xor (A124445 n) (A354605 (n + 1))

end

end A356358.P18366955200571854461

/-! ## A356358.P11155350350850688352

`A353782(n+1)+xor(A103380(n+1), A354605(n+1))`
-/

namespace A356358.P11155350350850688352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353782 (n + 1) + Int.xor (A103380 (n + 1)) (A354605 (n + 1))

end

end A356358.P11155350350850688352

/-!
# A356360: Denominator of the continued fraction 1/(2-3/(3-4/(4-5/(...(n-1)-n/(n+1))))).

The programs for A356360, the canonical program `A356360.P18222975235672550744` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356360 has offset 3).

The definition of A356360 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5032 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356360.P18222975235672550744

`or(1, A128059(∑[2-4/a(n-1)]))` with `a(0)=3, a(1)=1`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A356360

/-- `or(1, A128059(∑[2-4/a(n-1)]))` -/
def P18222975235672550744.Spec : Prop :=
  ∀ n, P18222975235672550744.a n = A356360 (n + 3)

theorem P18222975235672550744.correct : P18222975235672550744.Spec := by
  intro n
  simp only [A356360, Nat.add_sub_cancel]

end A356360

/-! ## A356360.P14663063229492770745

`A128059(A061347(n+1)+n+2)`
-/

namespace A356360.P14663063229492770745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 (A061347 (n + 1) + (n + 2 : ℤ)).toNat

end

end A356360.P14663063229492770745

namespace A356360

/-- `A128059(A061347(n+1)+n+2)` -/
def P14663063229492770745.Spec : Prop :=
  ∀ n, P14663063229492770745.a n = A356360 (n + 3)

end A356360

/-! ## A356360.P556867936346420685

`or(A110560(2*(n+2)), A294619(n))`
-/

namespace A356360.P556867936346420685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A110560 (2 * (n + 2))) (A294619 n)

end

end A356360.P556867936346420685

namespace A356360

/-- `or(A110560(2*(n+2)), A294619(n))` -/
def P556867936346420685.Spec : Prop :=
  ∀ n, P556867936346420685.a n = A356360 (n + 3)

end A356360

/-! ## A356360.P12497601338521141848

`A014973(A086571(2*n+5))`
-/

namespace A356360.P12497601338521141848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (A086571 (2 * n + 5)).toNat

end

end A356360.P12497601338521141848

namespace A356360

/-- `A014973(A086571(2*n+5))` -/
def P12497601338521141848.Spec : Prop :=
  ∀ n, P12497601338521141848.a n = A356360 (n + 3)

end A356360

/-! ## A356360.P15621405509563706926

`A089026(or(1, A086571(2*n+5)))`
-/

namespace A356360.P15621405509563706926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (Int.lor 1 (A086571 (2 * n + 5))).toNat

end

end A356360.P15621405509563706926

namespace A356360

/-- `A089026(or(1, A086571(2*n+5)))` -/
def P15621405509563706926.Spec : Prop :=
  ∀ n, P15621405509563706926.a n = A356360 (n + 3)

end A356360

/-! ## A356360.P17248031075338505402

`gcd(3, A014973(n+1))*A014973(2*n+5)`
-/

namespace A356360.P17248031075338505402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A014973 (n + 1)) : ℤ) * A014973 (2 * n + 5)

end

end A356360.P17248031075338505402

namespace A356360

/-- `gcd(3, A014973(n+1))*A014973(2*n+5)` -/
def P17248031075338505402.Spec : Prop :=
  ∀ n, P17248031075338505402.a n = A356360 (n + 3)

end A356360

/-! ## A356360.P13767993969863386993

`or(gcd(6, A089026(n+1)), A089026(2*n+5))`
-/

namespace A356360.P13767993969863386993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.gcd 6 (A089026 (n + 1)) : ℤ) (A089026 (2 * n + 5))

end

end A356360.P13767993969863386993

namespace A356360

/-- `or(gcd(6, A089026(n+1)), A089026(2*n+5))` -/
def P13767993969863386993.Spec : Prop :=
  ∀ n, P13767993969863386993.a n = A356360 (n + 3)

end A356360

/-! ## A356360.P12550568076947463708

`A089026(2*n+5)*A089026(A179865(n+1))`
-/

namespace A356360.P12550568076947463708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (2 * n + 5) * A089026 (A179865 (n + 1)).toNat

end

end A356360.P12550568076947463708

namespace A356360

/-- `A089026(2*n+5)*A089026(A179865(n+1))` -/
def P12550568076947463708.Spec : Prop :=
  ∀ n, P12550568076947463708.a n = A356360 (n + 3)

end A356360

/-! ## A356360.P15906898234557547803

`or(A085090(n+3), A089026(A036561(n)))`
-/

namespace A356360.P15906898234557547803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A085090 (n + 3)) (A089026 (A036561 n).toNat)

end

end A356360.P15906898234557547803

namespace A356360

/-- `or(A085090(n+3), A089026(A036561(n)))` -/
def P15906898234557547803.Spec : Prop :=
  ∀ n, P15906898234557547803.a n = A356360 (n + 3)

end A356360

/-! ## A356360.P1385656804530944447

`A342257(A373163(n+2))`
-/

namespace A356360.P1385656804530944447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342257 (A373163 (n + 2)).toNat

end

end A356360.P1385656804530944447

namespace A356360

/-- `A342257(A373163(n+2))` -/
def P1385656804530944447.Spec : Prop :=
  ∀ n, P1385656804530944447.a n = A356360 (n + 3)

end A356360

/-!
# A356361: a(n) = Sum_{k=0..floor(n/3)} n^k * |Stirling1(n,3*k)|.

The programs for A356361, there is no canonical definition to state claims against.
-/

/-! ## A356361.P9416297912453858263

`A136279(xor(n, a(n-2)))+12` with `a(0)=1, a(1)=0, a(2)=0, a(3)=3`
-/

namespace A356361.P9416297912453858263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 3] fun n a =>
  A136279 (Int.xor (n : ℤ) (a (n - 2))).toNat + 12

end

end A356361.P9416297912453858263

/-! ## A356361.P13759542661941768359

`A370747(A066186(n))`
-/

namespace A356361.P13759542661941768359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370747 (A066186 n).toNat

end

end A356361.P13759542661941768359

/-!
# A356362: a(n) = Sum_{k=0..floor(n/3)} n^k * Stirling1(n,3*k).

The programs for A356362, there is no canonical definition to state claims against.
-/

/-! ## A356362.P2916300868454016511

`A000120(A005649(n))*A357834(n)`
-/

namespace A356362.P2916300868454016511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A005649 n).toNat * A357834 n

end

end A356362.P2916300868454016511

/-! ## A356362.P3162182312987183922

`A008905(A086352(n))*A354134(n)`
-/

namespace A356362.P3162182312987183922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008905 (A086352 n).toNat * A354134 n

end

end A356362.P3162182312987183922

/-!
# A356363: a(n) = Sum_{k=0..floor(n/3)} n^k * Stirling2(n,3*k).

The programs for A356363, there is no canonical definition to state claims against.
-/

/-! ## A356363.P9184858258947689988

`A065715(A270919(n)+1)`
-/

namespace A356363.P9184858258947689988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065715 (A270919 n + 1).toNat

end

end A356363.P9184858258947689988

/-! ## A356363.P7952340455953754231

`A091529(A205501(n))-n`
-/

namespace A356363.P7952340455953754231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091529 (A205501 n).toNat - (n : ℤ)

end

end A356363.P7952340455953754231

/-!
# A356364: Number of primes p of the form k^2 + 1 less than 10^n such that p+2 and 2p+1 are also primes.

The programs for A356364, there is no canonical definition to state claims against.
-/

/-! ## A356364.P1368287659937416375

`A171397(A018261(n+1))-n`
-/

namespace A356364.P1368287659937416375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (A018261 (n + 1)).toNat - (n : ℤ)

end

end A356364.P1368287659937416375

/-! ## A356364.P12279481172698371574

`A007095(A018261(n+1))-A007095(n)`
-/

namespace A356364.P12279481172698371574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A018261 (n + 1)).toNat - A007095 n

end

end A356364.P12279481172698371574

/-! ## A356364.P12825385228227147113

`A097140(2*n+1)+A043096(A018261(n+1))`
-/

namespace A356364.P12825385228227147113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (2 * n + 1) + A043096 (A018261 (n + 1)).toNat

end

end A356364.P12825385228227147113

/-!
# A356365: For any nonnegative integer n with binary expansion Sum_{k = 1..w} 2^e_k, let m be the least integer such that the values e_k mod m are all distinct; a(n) = Sum_{k = 1..w} 2^(e_k mod m).

The programs for A356365, there is no canonical definition to state claims against.
-/

/-! ## A356365.P12967967782516281860

`A217302(A033212(n+1))%A278222(n)`
-/

namespace A356365.P12967967782516281860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217302 (A033212 (n + 1)).toNat) (A278222 n)

end

end A356365.P12967967782516281860

/-! ## A356365.P5276493139518577311

`A004273(A332305(2*n+3))%A071044(n)`
-/

namespace A356365.P5276493139518577311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004273 (A332305 (2 * n + 3)).toNat) (A071044 n)

end

end A356365.P5276493139518577311

/-! ## A356365.P14305559322520708055

`A097233(2*n+1)%A000010(A000010(3*n+4))`
-/

namespace A356365.P14305559322520708055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097233 (2 * n + 1)) (A000010 (A000010 (3 * n + 4)).toNat)

end

end A356365.P14305559322520708055

/-! ## A356365.P4221139007109697919

`A120638(A278221(n+1))%(n+1)`
-/

namespace A356365.P4221139007109697919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120638 (A278221 (n + 1)).toNat) (n + 1 : ℤ)

end

end A356365.P4221139007109697919

/-! ## A356365.P5672151662531260865

`A359326(A126087(n))+A038573(n)`
-/

namespace A356365.P5672151662531260865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359326 (A126087 n).toNat + A038573 n

end

end A356365.P5672151662531260865

/-!
# A356366: Number of (directed) circuits in the complete undirected graph on n labeled vertices.

The programs for A356366, there is no canonical definition to state claims against.
-/

/-! ## A356366.P16386540231418963935

`A064278(ceil(∑[(n+1)²]/3))`
-/

namespace A356366.P16386540231418963935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064278 ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌉.toNat

end

end A356366.P16386540231418963935

/-!
# A356369: Numbers such that each digit "d" occurs d times, for every digit from 1 to the largest digit.

The programs for A356369, there is no canonical definition to state claims against.
-/

/-! ## A356369.P8998510854102878527

`A247700(∑[C(A285824(2*n), n)]+n)`
-/

namespace A356369.P8998510854102878527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A285824 (2 * n)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247700 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A356369.P8998510854102878527

/-!
# A356370: (Least prime > p^p) - (greatest prime < p^p), where p = n-th prime.

The programs for A356370, there is no canonical definition to state claims against.
-/

/-! ## A356370.P4513831591234788231

`A161503(Δ[A007504(n)])`
-/

namespace A356370.P4513831591234788231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161503 (f1 (n + 1) - f1 n).toNat

end

end A356370.P4513831591234788231

/-! ## A356370.P10296917138996433282

`A161503(A000040(n+1))`
-/

namespace A356370.P10296917138996433282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161503 (A000040 (n + 1)).toNat

end

end A356370.P10296917138996433282

/-! ## A356370.P270870957397917861

`A161503(A095320(n+1))`
-/

namespace A356370.P270870957397917861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161503 (A095320 (n + 1)).toNat

end

end A356370.P270870957397917861

/-! ## A356370.P2702469139781995714

`A161503(A216883(n+1))`
-/

namespace A356370.P2702469139781995714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161503 (A216883 (n + 1)).toNat

end

end A356370.P2702469139781995714

/-! ## A356370.P8447156376970594641

`A161503(A216884(n+1))`
-/

namespace A356370.P8447156376970594641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161503 (A216884 (n + 1)).toNat

end

end A356370.P8447156376970594641

/-! ## A356370.P16833523650628978240

`A161503(A216885(n+1))`
-/

namespace A356370.P16833523650628978240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161503 (A216885 (n + 1)).toNat

end

end A356370.P16833523650628978240

/-! ## A356370.P16151342416268523421

`A161503(A216887(n+1))`
-/

namespace A356370.P16151342416268523421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161503 (A216887 (n + 1)).toNat

end

end A356370.P16151342416268523421

/-! ## A356370.P687766782217656969

`A161503(A238853(n+1))`
-/

namespace A356370.P687766782217656969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161503 (A238853 (n + 1)).toNat

end

end A356370.P687766782217656969

/-! ## A356370.P12056559256681038851

`A161503(A385492(n+1))`
-/

namespace A356370.P12056559256681038851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161503 (A385492 (n + 1)).toNat

end

end A356370.P12056559256681038851

/-!
# A356371: a(n) is the smallest positive integer k, such that set of pairwise gcd of k, k+1, ..., k+n has a cardinality of n.

The programs for A356371, there is no canonical definition to state claims against.
-/

/-! ## A356371.P3934632040090080122

`∏{e}[round(6^n/4), #+1]`
-/

namespace A356371.P3934632040090080122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((6 ^ n : ℚ) / 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A356371.P3934632040090080122

/-! ## A356371.P10440601808623293830

`A143053(n²)+1`
-/

namespace A356371.P10440601808623293830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143053 (n ^ 2) + 1

end

end A356371.P10440601808623293830

/-! ## A356371.P10467214256888945390

`A156565(∑[n+1]+2)`
-/

namespace A356371.P10467214256888945390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156565 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A356371.P10467214256888945390

/-! ## A356371.P13915451556801779634

`∑[or(1, A194276(2*n))]`
-/

namespace A356371.P13915451556801779634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A194276 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356371.P13915451556801779634

/-! ## A356371.P12544574413570670672

`lt[A182885(n), atan(n+1)]`
-/

namespace A356371.P12544574413570670672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182885 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A356371.P12544574413570670672

/-!
# A356372: a(n) = Sum_{k=1..n} binomial(2*n, k) * A000005(k).

The programs for A356372, there is no canonical definition to state claims against.
-/

/-! ## A356372.P14701200585066943653

`A269366(A357636(n+1)+A001286(n+2))`
-/

namespace A356372.P14701200585066943653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269366 (A357636 (n + 1) + A001286 (n + 2)).toNat

end

end A356372.P14701200585066943653

/-!
# A356373: a(n) = Sum_{k=1..n} binomial(2*k, k) * A000005(k).

The programs for A356373, the canonical program `A356373.P17307196192720375419` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356373 has offset 1).

The definition of A356373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356373.P17307196192720375419

`∑[∏{e}[n+1, #+1]*A000984(n+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A356373

/-- `∑[∏{e}[n+1, #+1]*A000984(n+1)]` -/
def P17307196192720375419.Spec : Prop :=
  ∀ n, P17307196192720375419.a n = A356373 (n + 1)

theorem P17307196192720375419.correct : P17307196192720375419.Spec := by
  intro n
  simp only [A356373, Nat.add_sub_cancel]

end A356373

/-! ## A356373.P468021438360397605

`∑[∏{e}[n+1, #+1]*A001405(2*(n+1))]`
-/

namespace A356373.P468021438360397605
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) * A001405 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356373.P468021438360397605

namespace A356373

/-- `∑[∏{e}[n+1, #+1]*A001405(2*(n+1))]` -/
def P468021438360397605.Spec : Prop :=
  ∀ n, P468021438360397605.a n = A356373 (n + 1)

end A356373

/-! ## A356373.P3498239288690712321

`∑[∏{e}[n+1, #+1]*A126869(2*(n+1))]`
-/

namespace A356373.P3498239288690712321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) * A126869 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356373.P3498239288690712321

namespace A356373

/-- `∑[∏{e}[n+1, #+1]*A126869(2*(n+1))]` -/
def P3498239288690712321.Spec : Prop :=
  ∀ n, P3498239288690712321.a n = A356373 (n + 1)

end A356373

/-! ## A356373.P12992854571926426163

`∑[∏{e}[n+1, #+1]*A128014(2*(n+1))]`
-/

namespace A356373.P12992854571926426163
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) * A128014 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356373.P12992854571926426163

namespace A356373

/-- `∑[∏{e}[n+1, #+1]*A128014(2*(n+1))]` -/
def P12992854571926426163.Spec : Prop :=
  ∀ n, P12992854571926426163.a n = A356373 (n + 1)

end A356373

/-! ## A356373.P17033476271831370655

`∑[C(2*(n+1), n+1)*A000005(n+1)]`
-/

namespace A356373.P17033476271831370655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 1)) (n + 1) : ℤ) * A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356373.P17033476271831370655

namespace A356373

/-- `∑[C(2*(n+1), n+1)*A000005(n+1)]` -/
def P17033476271831370655.Spec : Prop :=
  ∀ n, P17033476271831370655.a n = A356373 (n + 1)

end A356373

/-!
# A356378: Main diagonal of the RILO variant of the array A035486; this is one of eight such sequences discussed in A007063.

The programs for A356378, there is no canonical definition to state claims against.
-/

/-! ## A356378.P17448511446733602798

`A356379(n+2)-2`
-/

namespace A356378.P17448511446733602798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356379 (n + 2) - 2

end

end A356378.P17448511446733602798

/-! ## A356378.P15333720802217614911

`A023444(A356379(n+2))`
-/

namespace A356378.P15333720802217614911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A356379 (n + 2)).toNat

end

end A356378.P15333720802217614911

/-!
# A356382: Even terms in A014567.

The programs for A356382, the canonical program `A356382.P3347831406250475257` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A356382 has offset 1).

The definition of A356382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A356382.P10721849063039471210

`record[A378996(n+1)]`
-/

namespace A356382.P10721849063039471210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356382.P10721849063039471210

namespace A356382

/-- `record[A378996(n+1)]` -/
def P10721849063039471210.Spec : Prop :=
  ∀ n, P10721849063039471210.a n = A356382 (n + 1)

end A356382

/-! ## A356382.P3347831406250475257

`filter[A088827(n+1), A325964(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A356382

/-- `filter[A088827(n+1), A325964(#)]` -/
def P3347831406250475257.Spec : Prop :=
  ∀ n, P3347831406250475257.a n = A356382 (n + 1)

theorem P3347831406250475257.correct : P3347831406250475257.Spec := by
  intro n
  simp only [A356382, Nat.add_sub_cancel]

end A356382

/-! ## A356382.P133161632179062371

`filter[A216781(n+1), A325964(#)]`
-/

namespace A356382.P133161632179062371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A356382.P133161632179062371

namespace A356382

/-- `filter[A216781(n+1), A325964(#)]` -/
def P133161632179062371.Spec : Prop :=
  ∀ n, P133161632179062371.a n = A356382 (n + 1)

end A356382

/-! ## A356382.P1125852589892907220

`filter[A128106(n+2), A325964(#)]`
-/

namespace A356382.P1125852589892907220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128106 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A356382.P1125852589892907220

namespace A356382

/-- `filter[A128106(n+2), A325964(#)]` -/
def P1125852589892907220.Spec : Prop :=
  ∀ n, P1125852589892907220.a n = A356382 (n + 1)

end A356382

/-! ## A356382.P17637935420494529093

`filter[A319796(n+1), A325964(#)]`
-/

namespace A356382.P17637935420494529093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A356382.P17637935420494529093

namespace A356382

/-- `filter[A319796(n+1), A325964(#)]` -/
def P17637935420494529093.Spec : Prop :=
  ∀ n, P17637935420494529093.a n = A356382 (n + 1)

end A356382

/-! ## A356382.P601436465396549431

`filter[A118286(n+1), A325964(#)]`
-/

namespace A356382.P601436465396549431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A356382.P601436465396549431

namespace A356382

/-- `filter[A118286(n+1), A325964(#)]` -/
def P601436465396549431.Spec : Prop :=
  ∀ n, P601436465396549431.a n = A356382 (n + 1)

end A356382

/-! ## A356382.P4621959396365509996

`∩[A014567(n+1), A088827(n+1)]`
-/

namespace A356382.P4621959396365509996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356382.P4621959396365509996

namespace A356382

/-- `∩[A014567(n+1), A088827(n+1)]` -/
def P4621959396365509996.Spec : Prop :=
  ∀ n, (P4621959396365509996.a n : ℤ) = A356382 (n + 1)

end A356382

/-! ## A356382.P10992806657202811749

`∩[A014567(n+1), A118286(n+1)]`
-/

namespace A356382.P10992806657202811749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356382.P10992806657202811749

namespace A356382

/-- `∩[A014567(n+1), A118286(n+1)]` -/
def P10992806657202811749.Spec : Prop :=
  ∀ n, (P10992806657202811749.a n : ℤ) = A356382 (n + 1)

end A356382

/-! ## A356382.P8312149517685950552

`∩[A014567(n+1), A216781(n+1)]`
-/

namespace A356382.P8312149517685950552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356382.P8312149517685950552

namespace A356382

/-- `∩[A014567(n+1), A216781(n+1)]` -/
def P8312149517685950552.Spec : Prop :=
  ∀ n, (P8312149517685950552.a n : ℤ) = A356382 (n + 1)

end A356382

/-! ## A356382.P6064700733360372544

`∩[A014567(n+1), A319796(n+1)]`
-/

namespace A356382.P6064700733360372544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356382.P6064700733360372544

namespace A356382

/-- `∩[A014567(n+1), A319796(n+1)]` -/
def P6064700733360372544.Spec : Prop :=
  ∀ n, (P6064700733360372544.a n : ℤ) = A356382 (n + 1)

end A356382

/-! ## A356382.P16178084990443228260

`filter[A047464(n+2), A325964(#)]`
-/

namespace A356382.P16178084990443228260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047464 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A356382.P16178084990443228260

namespace A356382

/-- `filter[A047464(n+2), A325964(#)]` -/
def P16178084990443228260.Spec : Prop :=
  ∀ n, P16178084990443228260.a n = A356382 (n + 1)

end A356382

/-! ## A356382.P14909748454336251517

`∩[A014567(n+1), A047464(n+1)]`
-/

namespace A356382.P14909748454336251517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356382.P14909748454336251517

namespace A356382

/-- `∩[A014567(n+1), A047464(n+1)]` -/
def P14909748454336251517.Spec : Prop :=
  ∀ n, (P14909748454336251517.a n : ℤ) = A356382 (n + 1)

end A356382

/-! ## A356382.P5168958885423862068

`filter[A004277(n+1), A325964(#)]`
-/

namespace A356382.P5168958885423862068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A356382.P5168958885423862068

namespace A356382

/-- `filter[A004277(n+1), A325964(#)]` -/
def P5168958885423862068.Spec : Prop :=
  ∀ n, P5168958885423862068.a n = A356382 (n + 1)

end A356382

/-! ## A356382.P2676374870394415965

`filter[A005843(n+1), A325964(#)]`
-/

namespace A356382.P2676374870394415965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A356382.P2676374870394415965

namespace A356382

/-- `filter[A005843(n+1), A325964(#)]` -/
def P2676374870394415965.Spec : Prop :=
  ∀ n, P2676374870394415965.a n = A356382 (n + 1)

end A356382

/-! ## A356382.P4526237554592438582

`∩[2*n, A014567(n+1)]`
-/

namespace A356382.P4526237554592438582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356382.P4526237554592438582

namespace A356382

/-- `∩[2*n, A014567(n+1)]` -/
def P4526237554592438582.Spec : Prop :=
  ∀ n, (P4526237554592438582.a n : ℤ) = A356382 (n + 1)

end A356382

/-! ## A356382.P1193105438139679400

`∩[A014567(n+1), A005843(n)]`
-/

namespace A356382.P1193105438139679400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356382.P1193105438139679400

namespace A356382

/-- `∩[A014567(n+1), A005843(n)]` -/
def P1193105438139679400.Spec : Prop :=
  ∀ n, (P1193105438139679400.a n : ℤ) = A356382 (n + 1)

end A356382

/-! ## A356382.P5629374597630686800

`record[A005843(n+1)/A306682(2*(n+1))]`
-/

namespace A356382.P5629374597630686800
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (A306682 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356382.P5629374597630686800

namespace A356382

/-- `record[A005843(n+1)/A306682(2*(n+1))]` -/
def P5629374597630686800.Spec : Prop :=
  ∀ n, P5629374597630686800.a n = (A356382 (n + 1) : ℚ)

end A356382

/-! ## A356382.P11605886209041912793

`record[A325964(2*(n+1))*A325976(2*(n+1))]`
-/

namespace A356382.P11605886209041912793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325964 (2 * (n + 1)) * A325976 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356382.P11605886209041912793

namespace A356382

/-- `record[A325964(2*(n+1))*A325976(2*(n+1))]` -/
def P11605886209041912793.Spec : Prop :=
  ∀ n, P11605886209041912793.a n = A356382 (n + 1)

end A356382

/-! ## A356382.P11779507792148208252

`record[gcd(A325967(2*(n+1)), A325976(2*(n+1)))]`
-/

namespace A356382.P11779507792148208252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A325967 (2 * (n + 1))) (A325976 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356382.P11779507792148208252

namespace A356382

/-- `record[gcd(A325967(2*(n+1)), A325976(2*(n+1)))]` -/
def P11779507792148208252.Spec : Prop :=
  ∀ n, (P11779507792148208252.a n : ℤ) = A356382 (n + 1)

end A356382

/-!
# A356383: Primes p such that the sum of p and the next four primes congruent mod 10 to p is 5 times a prime.

The programs for A356383, there is no canonical definition to state claims against.
-/

/-! ## A356383.P6595843959334423824

`∩[A028798(n+1), A000040(A028781(n+3))]`
-/

namespace A356383.P6595843959334423824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A028781 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356383.P6595843959334423824

/-! ## A356383.P1510676242915839907

`∩[A344609(n+1), A000040(A028781(n+3))]`
-/

namespace A356383.P1510676242915839907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A028781 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A356383.P1510676242915839907

/-! ## A356383.P13463102993764352306

`A000040(A028781(n+3)%A028786(3*n+4))`
-/

namespace A356383.P13463102993764352306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A028781 (n + 3)) (A028786 (3 * n + 4))).toNat

end

end A356383.P13463102993764352306

/-! ## A356383.P17841540338487871368

`eq[A003415(n), A266216(A259964(n+1))]`
-/

namespace A356383.P17841540338487871368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266216 (A259964 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356383.P17841540338487871368

/-! ## A356383.P13299959023277614810

`eq[A027746(A324530(n+1)), A130758(n+1)]`
-/

namespace A356383.P13299959023277614810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (A324530 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130758 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356383.P13299959023277614810

/-!
# A356385: First differences of A353654 which is numbers with the same number of trailing 0 bits as other 0 bits.

The programs for A356385, there is no canonical definition to state claims against.
-/

/-! ## A356385.P17921644028733215844

`A353654(n+2)-A353654(n+1)`
-/

namespace A356385.P17921644028733215844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353654 (n + 2) - A353654 (n + 1)

end

end A356385.P17921644028733215844

/-! ## A356385.P3960700196548434912

`Δ[A353654(n+1)]`
-/

namespace A356385.P3960700196548434912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A356385.P3960700196548434912

/-! ## A356385.P9404840827692682727

`Δ[eq[A000120(n), A119387(n)]]`
-/

namespace A356385.P9404840827692682727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119387 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A356385.P9404840827692682727

/-! ## A356385.P14561151307852428806

`Δ[eq[A001511(n+1), A023416(n)]]`
-/

namespace A356385.P14561151307852428806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A356385.P14561151307852428806

/-! ## A356385.P8872576942909079048

`Δ[eq[A073138(n), 2*A086099(n)]]`
-/

namespace A356385.P8872576942909079048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086099 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A356385.P8872576942909079048

/-!
# A356389: a(n) = n! * Sum_{k=1..n} ( Sum_{d|k} (-1)^(k/d + 1) ) /k.

The programs for A356389, there is no canonical definition to state claims against.
-/

/-! ## A356389.P12877321966159962431

`∏{p}[A318696(n+1)², #]`
-/

namespace A356389.P12877321966159962431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318696 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A356389.P12877321966159962431

/-!
# A356390: a(n) = n! * Sum_{k=1..n} ( Sum_{d|k} (-1)^(k/d + 1) * d ) /k.

The programs for A356390, there is no canonical definition to state claims against.
-/

/-! ## A356390.P1298188668423224337

`A005864(A016789(n))+round(sqrt(n))`
-/

namespace A356390.P1298188668423224337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005864 (A016789 n).toNat + SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

end

end A356390.P1298188668423224337

/-!
# A356392: Expansion of e.g.f. ( Product_{k>0} (1+x^k)^(1/k) )^(1/(1-x)).

The programs for A356392, there is no canonical definition to state claims against.
-/

/-! ## A356392.P7212676943719562308

`or(1, A079694(A332647(2*n)))`
-/

namespace A356392.P7212676943719562308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A079694 (A332647 (2 * n)).toNat)

end

end A356392.P7212676943719562308

/-! ## A356392.P6439633746793224054

`A010554(A120020(n+1))+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1`
-/

namespace A356392.P6439633746793224054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010554 (A120020 (n + 1)).toNat : ℚ) + ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - 1)

end

end A356392.P6439633746793224054

/-!
# A356393: Expansion of e.g.f. ( Product_{k>0} (1+x^k) )^(1/(1-x)).

The programs for A356393, there is no canonical definition to state claims against.
-/

/-! ## A356393.P2986817653086976781

`A326293(A004525(3*n))-A258666(n+1)`
-/

namespace A356393.P2986817653086976781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326293 (A004525 (3 * n)).toNat - A258666 (n + 1)

end

end A356393.P2986817653086976781

/-!
# A356394: Expansion of e.g.f. ( Product_{k>0} (1+x^k)^k )^(1/(1-x)).

The programs for A356394, there is no canonical definition to state claims against.
-/

/-! ## A356394.P12542390741535182843

`A379789(ceil(3^(n-1))^(val(n+1, 2)%2+1))`
-/

namespace A356394.P12542390741535182843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379789 (⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ ^ (SequenceMachineLib.valuation (n + 1) 2 % 2 + 1)).toNat

end

end A356394.P12542390741535182843

/-!
# A356395: Nonnegative numbers k such that the negaFibonacci representation of k (A215022(k)) is palindromic.

The programs for A356395, there is no canonical definition to state claims against.
-/

/-! ## A356395.P10179602494536553702

`eq[A215024(n), A331471(A215024(n))]`
-/

namespace A356395.P10179602494536553702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215024 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331471 (A215024 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356395.P10179602494536553702

/-! ## A356395.P10187820583009258861

`record[A345910(2*n+1)%A324694(n+1)]`
-/

namespace A356395.P10187820583009258861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345910 (2 * n + 1)) (A324694 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356395.P10187820583009258861

/-!
# A356396: Nonnegative numbers k such that the negaFibonacci representation of -k (A215023(k)) is palindromic.

The programs for A356396, there is no canonical definition to state claims against.
-/

/-! ## A356396.P1708889958497209567

`eq[A356332(n), A395009(n+1)]`
-/

namespace A356396.P1708889958497209567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356332 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395009 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356396.P1708889958497209567

/-! ## A356396.P982595285570603019

`eq[A356387(n+1), A356387(A356332(n))]`
-/

namespace A356396.P982595285570603019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356387 (A356332 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356396.P982595285570603019

/-! ## A356396.P13604875456748796501

`eq[A175298(A215025(n)), A215025(n)]`
-/

namespace A356396.P13604875456748796501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 (A215025 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215025 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A356396.P13604875456748796501

/-! ## A356396.P4835868250713712328

`eq[1, A178225(A215025(n))]`
-/

namespace A356396.P4835868250713712328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 (A215025 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A356396.P4835868250713712328

/-!
# A356398: a(1) = 4, and for any n > 1, a(n+1) is the a(n)-th squarefree number.

The programs for A356398, there is no canonical definition to state claims against.
-/

/-! ## A356398.P6064134608091530145

`A005117(a(n-1))` with `a(0)=4`
-/

namespace A356398.P6064134608091530145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A005117 (a (n - 1)).toNat

end

end A356398.P6064134608091530145

/-! ## A356398.P13073403149257152423

`A005117(abs(a(A023443(n))))` with `a(0)=4`
-/

namespace A356398.P13073403149257152423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A005117 |a (A023443 n).toNat|.toNat

end

end A356398.P13073403149257152423

/-! ## A356398.P2583367291452790529

`A005117(floor(a(A023443(n))))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A356398.P2583367291452790529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A005117 (a (A023443 n).toNat).toNat

end

end A356398.P2583367291452790529

/-! ## A356398.P6563404337746547408

`A005117(ceil(a(A023443(n))))` with `a(0)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A356398.P6563404337746547408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A005117 (a (A023443 n).toNat).toNat

end

end A356398.P6563404337746547408

/-! ## A356398.P11166312938950508339

`A005117(a(A023443(n)))+A000038(n)` with `a(0)=4`
-/

namespace A356398.P11166312938950508339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A005117 (a (A023443 n).toNat).toNat + A000038 n

end

end A356398.P11166312938950508339

/-!
# A356399: a(n) is the smallest term (in absolute value) in the negaFibonacci representation of n.

The programs for A356399, there is no canonical definition to state claims against.
-/

/-! ## A356399.P13266709512051470381

`A356400(A087172(A035337(n))-(n+1))`
-/

namespace A356399.P13266709512051470381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356400 (A087172 (A035337 n).toNat - (n + 1 : ℤ)).toNat

end

end A356399.P13266709512051470381

/-! ## A356399.P6343938822219972100

`A356400(A035336(A280511(n+1))-n)`
-/

namespace A356399.P6343938822219972100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356400 (A035336 (A280511 (n + 1)).toNat - (n : ℤ)).toNat

end

end A356399.P6343938822219972100

