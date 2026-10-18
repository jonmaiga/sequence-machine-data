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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C024

/-!
# A232800: Denominators written by antidiagonals of interleaved A063524(n) and A002427(n)/A006955(n).

The programs for A232800, there is no canonical definition to state claims against.
-/

/-! ## A232800.P4714231841562480633

`gcd(A138902(A183772(n+1)), A183792(n+1))`
-/

namespace A232800.P4714231841562480633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138902 (A183772 (n + 1)).toNat) (A183792 (n + 1))

end

end A232800.P4714231841562480633

/-! ## A232800.P1022448628870564054

`A001826(A003986(n)^A108037(n))`
-/

namespace A232800.P1022448628870564054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (SequenceMachineLib.roundAway ((A003986 n : ℚ) ^ (A108037 n : ℤ))).toNat

end

end A232800.P1022448628870564054

/-!
# A232801: a(2n) = (3^n - 1)/2, a(2n+1) = 3^n.

The programs for A232801, the canonical program `A232801.P430984354447071122` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232801 has offset 0).

The definition of A232801 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232801.P430984354447071122

`4*a(n-2)-3*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A232801

/-- `4*a(n-2)-3*a(n-4)` -/
def P430984354447071122.Spec : Prop :=
  ∀ n, P430984354447071122.a n = A232801 n

theorem P430984354447071122.correct : P430984354447071122.Spec := by
  intro n
  simp only [A232801]

end A232801

/-! ## A232801.P7847478188167283144

`∑[(-1)^n]+3*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A232801.P7847478188167283144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3 * a (n - 2)

end

end A232801.P7847478188167283144

namespace A232801

/-- `∑[(-1)^n]+3*a(n-2)` -/
def P7847478188167283144.Spec : Prop :=
  ∀ n, P7847478188167283144.a n = A232801 n

end A232801

/-! ## A232801.P6712614293835353082

`1-(n%2-3*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A232801.P6712614293835353082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 - (((n % 2 : ℕ) : ℤ) - 3 * a (n - 2))

end

end A232801.P6712614293835353082

namespace A232801

/-- `1-(n%2-3*a(n-2))` -/
def P6712614293835353082.Spec : Prop :=
  ∀ n, P6712614293835353082.a n = A232801 n

end A232801

/-! ## A232801.P7691199077650368790

`gcd(2, n)+3*a(n-2)-1` with `a(0)=0, a(1)=1`
-/

namespace A232801.P7691199077650368790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Nat.gcd 2 n : ℤ) + (3 * a (n - 2) - 1)

end

end A232801.P7691199077650368790

namespace A232801

/-- `gcd(2, n)+3*a(n-2)-1` -/
def P7691199077650368790.Spec : Prop :=
  ∀ n, P7691199077650368790.a n = A232801 n

end A232801

/-! ## A232801.P3280873495880533889

`∑[A182522(n-1)-a(n-1)]` with `a(0)=0`
-/

namespace A232801.P3280873495880533889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A182522 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232801.P3280873495880533889

namespace A232801

/-- `∑[A182522(n-1)-a(n-1)]` -/
def P3280873495880533889.Spec : Prop :=
  ∀ n, P3280873495880533889.a n = A232801 n

end A232801

/-! ## A232801.P386696284487534589

`A030439(n)/gcd(2, n)`
-/

namespace A232801.P386696284487534589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030439 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A232801.P386696284487534589

namespace A232801

/-- `A030439(n)/gcd(2, n)` -/
def P386696284487534589.Spec : Prop :=
  ∀ n, P386696284487534589.a n = (A232801 n : ℚ)

end A232801

/-! ## A232801.P12539038770776907491

`A030439(n)/A040001(n)`
-/

namespace A232801.P12539038770776907491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030439 n : ℚ) / (A040001 n : ℚ)

end

end A232801.P12539038770776907491

namespace A232801

/-- `A030439(n)/A040001(n)` -/
def P12539038770776907491.Spec : Prop :=
  ∀ n, P12539038770776907491.a n = (A232801 n : ℚ)

end A232801

/-! ## A232801.P17119933200737957781

`A030439(n)/(2-A000035(n))`
-/

namespace A232801.P17119933200737957781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030439 n : ℚ) / (2 - A000035 n : ℚ)

end

end A232801.P17119933200737957781

namespace A232801

/-- `A030439(n)/(2-A000035(n))` -/
def P17119933200737957781.Spec : Prop :=
  ∀ n, P17119933200737957781.a n = (A232801 n : ℚ)

end A232801

/-! ## A232801.P7056894242299950549

`A074324(n)%A246360(n+1)`
-/

namespace A232801.P7056894242299950549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074324 n) (A246360 (n + 1))

end

end A232801.P7056894242299950549

namespace A232801

/-- `A074324(n)%A246360(n+1)` -/
def P7056894242299950549.Spec : Prop :=
  ∀ n, P7056894242299950549.a n = A232801 n

end A232801

/-! ## A232801.P4415569810988164766

`floor(∑[3*a(n-2)]/2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A232801.P4415569810988164766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  3 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋

end

end A232801.P4415569810988164766

namespace A232801

/-- `floor(∑[3*a(n-2)]/2)` -/
def P4415569810988164766.Spec : Prop :=
  ∀ n, P4415569810988164766.a n = A232801 n

end A232801

/-! ## A232801.P3701593814033815509

`floor(A038754(n)/2)`
-/

namespace A232801.P3701593814033815509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038754 n : ℚ) / 2⌋

end

end A232801.P3701593814033815509

namespace A232801

/-- `floor(A038754(n)/2)` -/
def P3701593814033815509.Spec : Prop :=
  ∀ n, P3701593814033815509.a n = A232801 n

end A232801

/-! ## A232801.P15125655005910269632

`floor(A182522(n+1)/2)`
-/

namespace A232801.P15125655005910269632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A182522 (n + 1) : ℚ) / 2⌋

end

end A232801.P15125655005910269632

namespace A232801

/-- `floor(A182522(n+1)/2)` -/
def P15125655005910269632.Spec : Prop :=
  ∀ n, P15125655005910269632.a n = A232801 n

end A232801

/-! ## A232801.P3456771497368731795

`ceil(A062318(n+1)/2)`
-/

namespace A232801.P3456771497368731795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062318 (n + 1) : ℚ) / 2⌉

end

end A232801.P3456771497368731795

namespace A232801

/-- `ceil(A062318(n+1)/2)` -/
def P3456771497368731795.Spec : Prop :=
  ∀ n, P3456771497368731795.a n = A232801 n

end A232801

/-! ## A232801.P12067718495369044299

`round(A048328(n+1)/3)`
-/

namespace A232801.P12067718495369044299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A048328 (n + 1) : ℚ) / 3)

end

end A232801.P12067718495369044299

namespace A232801

/-- `round(A048328(n+1)/3)` -/
def P12067718495369044299.Spec : Prop :=
  ∀ n, P12067718495369044299.a n = A232801 n

end A232801

/-! ## A232801.P17292829299545364119

`(A038754(n)-A059841(n))/2`
-/

namespace A232801.P17292829299545364119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038754 n - A059841 n : ℚ) / 2

end

end A232801.P17292829299545364119

namespace A232801

/-- `(A038754(n)-A059841(n))/2` -/
def P17292829299545364119.Spec : Prop :=
  ∀ n, P17292829299545364119.a n = (A232801 n : ℚ)

end A232801

/-! ## A232801.P11634924860071707792

`(A182522(n+1)-A000035(n+1))/2`
-/

namespace A232801.P11634924860071707792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182522 (n + 1) - A000035 (n + 1) : ℚ) / 2

end

end A232801.P11634924860071707792

namespace A232801

/-- `(A182522(n+1)-A000035(n+1))/2` -/
def P11634924860071707792.Spec : Prop :=
  ∀ n, P11634924860071707792.a n = (A232801 n : ℚ)

end A232801

/-! ## A232801.P2646825747066770357

`round(A060647(n)/4)`
-/

namespace A232801.P2646825747066770357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A060647 n : ℚ) / 4)

end

end A232801.P2646825747066770357

namespace A232801

/-- `round(A060647(n)/4)` -/
def P2646825747066770357.Spec : Prop :=
  ∀ n, P2646825747066770357.a n = A232801 n

end A232801

/-! ## A232801.P18261188291428877835

`A060647(n)-A048328(n+1)`
-/

namespace A232801.P18261188291428877835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060647 n - A048328 (n + 1)

end

end A232801.P18261188291428877835

namespace A232801

/-- `A060647(n)-A048328(n+1)` -/
def P18261188291428877835.Spec : Prop :=
  ∀ n, P18261188291428877835.a n = A232801 n

end A232801

/-! ## A232801.P7891699891024443404

`A068911(n+1)-(A048328(n+1)+1)`
-/

namespace A232801.P7891699891024443404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (n + 1) - (A048328 (n + 1) + 1)

end

end A232801.P7891699891024443404

namespace A232801

/-- `A068911(n+1)-(A048328(n+1)+1)` -/
def P7891699891024443404.Spec : Prop :=
  ∀ n, P7891699891024443404.a n = A232801 n

end A232801

/-!
# A232802: Number of solution pairs (x,y) for x <= 11 such that x! + n = y^2 (Brocard-Ramanujan Diophantine equation) is soluble over the integers.

The programs for A232802, there is no canonical definition to state claims against.
-/

/-! ## A232802.P7894571084683223932

`A224953(lcm(A161811(n+1), A251652(n+1)))`
-/

namespace A232802.P7894571084683223932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224953 (Int.lcm (A161811 (n + 1)) (A251652 (n + 1)))

end

end A232802.P7894571084683223932

/-!
# A232803: Odd primes, twice odd primes, 4, and 8.

The programs for A232803, there is no canonical definition to state claims against.
-/

/-! ## A232803.P16420143736129999073

`record[A376915(n+3)]`
-/

namespace A232803.P16420143736129999073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376915 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232803.P16420143736129999073

/-! ## A232803.P4990764247929166300

`A254636(n+3)+1`
-/

namespace A232803.P4990764247929166300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254636 (n + 3) + 1

end

end A232803.P4990764247929166300

/-! ## A232803.P16232844317690394846

`eq[1, A318440(n+1)]+1`
-/

namespace A232803.P16232844317690394846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318440 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A232803.P16232844317690394846

/-! ## A232803.P15635576269393461868

`eq[2, A174273(n+1)]+1`
-/

namespace A232803.P15635576269393461868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174273 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A232803.P15635576269393461868

/-! ## A232803.P7157762332437221804

`eq[2, A299150(n+1)]+1`
-/

namespace A232803.P7157762332437221804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A232803.P7157762332437221804

/-! ## A232803.P351093770745700446

`eq[1, A339895(3*(n+1))]+1`
-/

namespace A232803.P351093770745700446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339895 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A232803.P351093770745700446

/-! ## A232803.P2273078851238618521

`A331025(A000040(n+1))`
-/

namespace A232803.P2273078851238618521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331025 (A000040 (n + 1)).toNat

end

end A232803.P2273078851238618521

/-! ## A232803.P1325799610667373671

`A331025(A216883(n+1))`
-/

namespace A232803.P1325799610667373671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331025 (A216883 (n + 1)).toNat

end

end A232803.P1325799610667373671

/-! ## A232803.P15845076124021600251

`A331025(A216884(n+1))`
-/

namespace A232803.P15845076124021600251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331025 (A216884 (n + 1)).toNat

end

end A232803.P15845076124021600251

/-!
# A232804: Number of perfect matchings in the graph C_6 x C_n.

The programs for A232804, there is no canonical definition to state claims against.
-/

/-! ## A232804.P9828240144199415240

`A341741(A167614(n+3))`
-/

namespace A232804.P9828240144199415240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (A167614 (n + 3)).toNat

end

end A232804.P9828240144199415240

/-! ## A232804.P1207448143014847511

`A341741(A155212(n)+11)`
-/

namespace A232804.P1207448143014847511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (A155212 n + 11).toNat

end

end A232804.P1207448143014847511

/-! ## A232804.P15859104715021854200

`A341741(eq[4, A128227(n)])`
-/

namespace A232804.P15859104715021854200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232804.P15859104715021854200

/-! ## A232804.P6108795835104853284

`A341741(eq[4, A048151(n+1)])`
-/

namespace A232804.P6108795835104853284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232804.P6108795835104853284

/-! ## A232804.P12526568367049748117

`A341741(A046691(n+3)-(n-2))`
-/

namespace A232804.P12526568367049748117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (A046691 (n + 3) - ((n : ℤ) - 2)).toNat

end

end A232804.P12526568367049748117

/-!
# A232805: a(n) is the length of the n-th chunk of nonprimes in this sequence, the chunks being separated by primes; lexicographically least such sequence starting with a prime.

The programs for A232805, there is no canonical definition to state claims against.
-/

/-! ## A232805.P17815723342127033007

`Δ[A232807(n+1)]-1`
-/

namespace A232805.P17815723342127033007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A232805.P17815723342127033007

/-! ## A232805.P8013038326965071715

`A023443(Δ[A232807(n+1)])`
-/

namespace A232805.P8013038326965071715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A232805.P8013038326965071715

/-! ## A232805.P16394859255051202586

`A033619(Δ[A232807(n+1)])`
-/

namespace A232805.P16394859255051202586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (f1 (n + 1) - f1 n).toNat

end

end A232805.P16394859255051202586

/-! ## A232805.P13651522307715722236

`abs(A024000(Δ[A232807(n+1)]))`
-/

namespace A232805.P13651522307715722236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024000 (f1 (n + 1) - f1 n).toNat|

end

end A232805.P13651522307715722236

/-! ## A232805.P4864231275405273701

`Δ[A232807(n+1)+A024000(n)]`
-/

namespace A232805.P4864231275405273701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232807 (n + 1) + A024000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232805.P4864231275405273701

/-!
# A232806: a(n) = a(n-1)^2/2 + 5/2, a(0) = 1.

The programs for A232806, the canonical program `A232806.P16277909643424588756` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232806 has offset 0).

The definition of A232806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232806.P579747569610711501

`a(n-1)²/2+5/2` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A232806.P579747569610711501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ 2 / 2 + (5 : ℚ) / 2

end

end A232806.P579747569610711501

namespace A232806

/-- `a(n-1)²/2+5/2` -/
def P579747569610711501.Spec : Prop :=
  ∀ n, P579747569610711501.a n = (A232806 n : ℚ)

end A232806

/-! ## A232806.P16277909643424588756

`2*A002065(n)+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A232806

/-- `2*A002065(n)+1` -/
def P16277909643424588756.Spec : Prop :=
  ∀ n, P16277909643424588756.a n = A232806 n

theorem P16277909643424588756.correct : P16277909643424588756.Spec := by
  intro n
  simp only [A232806]

end A232806

/-! ## A232806.P12370570735899941003

`2*A166105(n)-1`
-/

namespace A232806.P12370570735899941003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166105 n - 1

end

end A232806.P12370570735899941003

namespace A232806

/-- `2*A166105(n)-1` -/
def P12370570735899941003.Spec : Prop :=
  ∀ n, P12370570735899941003.a n = A232806 n

end A232806

/-! ## A232806.P7140835289426640241

`A002065(n)+A166105(n)`
-/

namespace A232806.P7140835289426640241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002065 n + A166105 n

end

end A232806.P7140835289426640241

namespace A232806

/-- `A002065(n)+A166105(n)` -/
def P7140835289426640241.Spec : Prop :=
  ∀ n, P7140835289426640241.a n = A232806 n

end A232806

/-! ## A232806.P4826698558751875084

`(a(n-1)²+5)/2` with `a(0)=1`
-/

namespace A232806.P4826698558751875084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) ^ 2 + 5) / 2

end

end A232806.P4826698558751875084

namespace A232806

/-- `(a(n-1)²+5)/2` -/
def P4826698558751875084.Spec : Prop :=
  ∀ n, P4826698558751875084.a n = (A232806 n : ℚ)

end A232806

/-!
# A232807: Indices (positions) of primes in A232805 (length of chunks of nonprimes delimited by primes).

The programs for A232807, there is no canonical definition to state claims against.
-/

/-! ## A232807.P12090864847240091867

`a(n-1)+A232805(n)+1` with `a(0)=1`
-/

namespace A232807.P12090864847240091867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A232805 n + 1)

end

end A232807.P12090864847240091867

/-! ## A232807.P4729598235097761521

`∑[A232805(n+1)+1]-A232805(n+1)`
-/

namespace A232807.P4729598235097761521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232805 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A232805 (n + 1)

end

end A232807.P4729598235097761521

/-! ## A232807.P6349353958502024248

`∑[A085230(∑[A061603(n)])]`
-/

namespace A232807.P6349353958502024248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061603 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085230 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232807.P6349353958502024248

/-! ## A232807.P5596456951905123761

`∑[A085230(n+1)]%A163895(n+3)`
-/

namespace A232807.P5596456951905123761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A163895 (n + 3))

end

end A232807.P5596456951905123761

/-! ## A232807.P385543205588956510

`∑[A164965(A229996(n+4))+n]+1`
-/

namespace A232807.P385543205588956510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164965 (A229996 (n + 4)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A232807.P385543205588956510

/-!
# A232818: Triangle of coefficients of polynomials equal permanent of the n X n matrix [1,2,...,n; n*x+1, n*x+2, ..., n*x+n; ...; (n-1)*n*x+1, (n-1)*n*x+2, ...,(n-1)*n*x+n].

The programs for A232818, there is no canonical definition to state claims against.
-/

/-! ## A232818.P2878241302875507892

`A000593(A037073(∏[n+1]+1)-(n+1))`
-/

namespace A232818.P2878241302875507892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A037073 (∏ j ∈ Finset.range (n + 1), f1 j + 1) - (n + 1 : ℤ)).toNat

end

end A232818.P2878241302875507892

/-!
# A232821: a(n) = n^(n-1) - Sum_{k=1..n-1} k^(k-1).

The programs for A232821, there is no canonical definition to state claims against.
-/

/-! ## A232821.P2797871395895913255

`2*(n+1)^n-∑[(n+1)^n]`
-/

namespace A232821.P2797871395895913255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A232821.P2797871395895913255

/-! ## A232821.P7931446907980440305

`∑[Δ[n^abs(1-n)]-n*A000272(n)]`
-/

namespace A232821.P7931446907980440305
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (|1 - (n : ℤ)| : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - ((n : ℤ) * A000272 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232821.P7931446907980440305

/-! ## A232821.P603932648414460296

`∑[A178922(n)-A152917(n)]`
-/

namespace A232821.P603932648414460296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178922 n - A152917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232821.P603932648414460296

/-! ## A232821.P2751415889057756791

`∑[A000169(n+1)-A152917(n)-A152917(n)]`
-/

namespace A232821.P2751415889057756791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 1) - A152917 n - A152917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232821.P2751415889057756791

/-! ## A232821.P756147428443292193

`∑[Δ[n^abs(1-n)]-∑{e}[2^n, #^(n-1)]]`
-/

namespace A232821.P756147428443292193
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (|1 - (n : ℤ)| : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - ∑ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232821.P756147428443292193

/-!
# A232823: Numbers k such that k divides 1 + Sum_{j=1..k} (prime(j)^8).

The programs for A232823, there is no canonical definition to state claims against.
-/

/-! ## A232823.P8543169429130448228

`A000720(A232824(n+1))`
-/

namespace A232823.P8543169429130448228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A232824 (n + 1)).toNat

end

end A232823.P8543169429130448228

/-! ## A232823.P2203618387137648300

`A061395(p?[A232824(n+1)])`
-/

namespace A232823.P2203618387137648300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A232823.P2203618387137648300

/-! ## A232823.P11032923971129166047

`∑{d}[A232824(n+1), A061395(#)]`
-/

namespace A232823.P11032923971129166047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A232823.P11032923971129166047

/-! ## A232823.P10060716004275612332

`A061395(∏{d}[A232824(n+1), #])`
-/

namespace A232823.P10060716004275612332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A232823.P10060716004275612332

/-! ## A232823.P3413081946291516862

`A061395(∏{p}[A232824(n+1), #])`
-/

namespace A232823.P3413081946291516862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A232823.P3413081946291516862

/-! ## A232823.P5873267410226131732

`A061395(lcm(A020985(n), A232824(n+1)))`
-/

namespace A232823.P5873267410226131732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm (A020985 n) (A232824 (n + 1)))

end

end A232823.P5873267410226131732

/-! ## A232823.P7094704757229520241

`A061395(or(A000035(n), A232824(n+1)))`
-/

namespace A232823.P7094704757229520241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor (A000035 n) (A232824 (n + 1))).toNat

end

end A232823.P7094704757229520241

/-! ## A232823.P14995673905021213820

`A061395(or(A060510(n), A232824(n+1)))`
-/

namespace A232823.P14995673905021213820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor (A060510 n) (A232824 (n + 1))).toNat

end

end A232823.P14995673905021213820

/-! ## A232823.P7703583907873493151

`A061395(A000041(C(2, n+2))*A232824(n+1))`
-/

namespace A232823.P7703583907873493151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A000041 (Nat.choose 2 (n + 2)) * A232824 (n + 1)).toNat

end

end A232823.P7703583907873493151

/-! ## A232823.P12300702316938547119

`A061395(A232824(n+1)/A000041(C(2, n+2)))`
-/

namespace A232823.P12300702316938547119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway ((A232824 (n + 1) : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ))).toNat

end

end A232823.P12300702316938547119

/-!
# A232824: Prime(k), where k is such that (1 + Sum_{i=1..k} prime(i)^8) / k is an integer.

The programs for A232824, there is no canonical definition to state claims against.
-/

/-! ## A232824.P8326740074290666617

`A000040(A232823(n+1))`
-/

namespace A232824.P8326740074290666617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A232823 (n + 1)).toNat

end

end A232824.P8326740074290666617

/-! ## A232824.P17106633124183488597

`A008578(A232823(n+1)+1)`
-/

namespace A232824.P17106633124183488597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A232823 (n + 1) + 1).toNat

end

end A232824.P17106633124183488597

/-!
# A232825: Number of (n+1)X(1+1) 0..1 arrays x(i,j) with row sums sum{j*x(i,j), j=1..1+1} nondecreasing, and column sums sum{i*x(i,j), i=1..n+1} nondecreasing.

The programs for A232825, there is no canonical definition to state claims against.
-/

/-! ## A232825.P15457715966993143175

`A233366(∑[n]+1)`
-/

namespace A232825.P15457715966993143175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233366 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232825.P15457715966993143175

/-! ## A232825.P13255839516064114195

`record[A233366(A257504(n+1))]`
-/

namespace A232825.P13255839516064114195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233366 (A257504 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232825.P13255839516064114195

/-! ## A232825.P12958426092932646553

`A233366(A000124(n))+char[22]`
-/

namespace A232825.P12958426092932646553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233366 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A232825.P12958426092932646553

/-! ## A232825.P15038689732265745399

`record[A233366(Δ[A053436(n+1)])]`
-/

namespace A232825.P15038689732265745399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053436 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233366 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232825.P15038689732265745399

/-! ## A232825.P13806356475641189715

`record[A010054(n)*A233366(n+1)]`
-/

namespace A232825.P13806356475641189715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232825.P13806356475641189715

/-!
# A232826: Number of (n+1)X(2+1) 0..1 arrays x(i,j) with row sums sum{j*x(i,j), j=1..2+1} nondecreasing, and column sums sum{i*x(i,j), i=1..n+1} nondecreasing.

The programs for A232826, there is no canonical definition to state claims against.
-/

/-! ## A232826.P14318482912623132212

`A232831(∑[n+1]+2)`
-/

namespace A232826.P14318482912623132212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232831 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232826.P14318482912623132212

/-! ## A232826.P4265436135395362256

`record[A010054(n)*A232831(n+2)]`
-/

namespace A232826.P4265436135395362256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232831 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232826.P4265436135395362256

/-! ## A232826.P5583454209886202547

`A232831(A133263(n+1))+A185037(n)`
-/

namespace A232826.P5583454209886202547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232831 (A133263 (n + 1)).toNat + A185037 n

end

end A232826.P5583454209886202547

/-! ## A232826.P13903281835128936008

`A232831(A133263(n+1))+A185238(n)`
-/

namespace A232826.P13903281835128936008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232831 (A133263 (n + 1)).toNat + A185238 n

end

end A232826.P13903281835128936008

/-! ## A232826.P15911445178393176984

`A015130(n)*A232831(A133263(n+1))`
-/

namespace A232826.P15911445178393176984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015130 n * A232831 (A133263 (n + 1)).toNat

end

end A232826.P15911445178393176984

/-!
# A232827: Number of (n+1)X(3+1) 0..1 arrays x(i,j) with row sums sum{j*x(i,j), j=1..3+1} nondecreasing, and column sums sum{i*x(i,j), i=1..n+1} nondecreasing.

The programs for A232827, there is no canonical definition to state claims against.
-/

/-! ## A232827.P123103012283599377

`A232831(∑[n+2]+4)`
-/

namespace A232827.P123103012283599377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232831 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232827.P123103012283599377

/-! ## A232827.P4276347210827719017

`A232831(A167614(n+1))+A185037(n)`
-/

namespace A232827.P4276347210827719017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232831 (A167614 (n + 1)).toNat + A185037 n

end

end A232827.P4276347210827719017

/-! ## A232827.P11297720649367120326

`A232831(A167614(n+1))+A185238(n)`
-/

namespace A232827.P11297720649367120326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232831 (A167614 (n + 1)).toNat + A185238 n

end

end A232827.P11297720649367120326

/-! ## A232827.P16077288095886903885

`A015130(n)*A232831(A167614(n+1))`
-/

namespace A232827.P16077288095886903885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015130 n * A232831 (A167614 (n + 1)).toNat

end

end A232827.P16077288095886903885

/-! ## A232827.P16554365211543258897

`A232831(A167614(n+1))%A017380(n)`
-/

namespace A232827.P16554365211543258897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232831 (A167614 (n + 1)).toNat) (A017380 n)

end

end A232827.P16554365211543258897

/-!
# A232828: Number of (n+1)X(4+1) 0..1 arrays x(i,j) with row sums sum{j*x(i,j), j=1..4+1} nondecreasing, and column sums sum{i*x(i,j), i=1..n+1} nondecreasing.

The programs for A232828, there is no canonical definition to state claims against.
-/

/-! ## A232828.P13866682093801683701

`A232831(∑[n+3]+7)`
-/

namespace A232828.P13866682093801683701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232831 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A232828.P13866682093801683701

/-! ## A232828.P11348672657687510049

`A333687(n+1)+A232831(A374004(n+1))`
-/

namespace A232828.P11348672657687510049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333687 (n + 1) + A232831 (A374004 (n + 1)).toNat

end

end A232828.P11348672657687510049

/-! ## A232828.P17575300337924577664

`A232831(A374004(n+1))*A298444(n+1)`
-/

namespace A232828.P17575300337924577664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232831 (A374004 (n + 1)).toNat * A298444 (n + 1)

end

end A232828.P17575300337924577664

/-! ## A232828.P10390745551452196007

`A232831(A374004(n+1))%A011001(n+3)`
-/

namespace A232828.P10390745551452196007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232831 (A374004 (n + 1)).toNat) (A011001 (n + 3 + 48))

end

end A232828.P10390745551452196007

/-!
# A232829: Number of (n+1)X(5+1) 0..1 arrays x(i,j) with row sums sum{j*x(i,j), j=1..5+1} nondecreasing, and column sums sum{i*x(i,j), i=1..n+1} nondecreasing.

The programs for A232829, there is no canonical definition to state claims against.
-/

/-! ## A232829.P4917291217760596741

`A232831(A374005(n+1))`
-/

namespace A232829.P4917291217760596741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232831 (A374005 (n + 1)).toNat

end

end A232829.P4917291217760596741

/-! ## A232829.P10296084485216478592

`A232831(A167499(n+3))`
-/

namespace A232829.P10296084485216478592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232831 (A167499 (n + 3)).toNat

end

end A232829.P10296084485216478592

/-! ## A232829.P7775307394165273408

`A232831(A155212(n)+13)`
-/

namespace A232829.P7775307394165273408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232831 (A155212 n + 13).toNat

end

end A232829.P7775307394165273408

/-! ## A232829.P1513348724280941928

`A232831(A056000(n)+15)`
-/

namespace A232829.P1513348724280941928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232831 (A056000 n + 15).toNat

end

end A232829.P1513348724280941928

/-! ## A232829.P12427465096250117661

`A232831(eq[7, A066657(n)])`
-/

namespace A232829.P12427465096250117661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232831 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232829.P12427465096250117661

/-!
# A232830: Number of (n+1)X(6+1) 0..1 arrays x(i,j) with row sums sum{j*x(i,j), j=1..6+1} nondecreasing, and column sums sum{i*x(i,j), i=1..n+1} nondecreasing.

The programs for A232830, there is no canonical definition to state claims against.
-/

/-! ## A232830.P11026538439445136024

`A232831(A374007(n+1))`
-/

namespace A232830.P11026538439445136024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232831 (A374007 (n + 1)).toNat

end

end A232830.P11026538439445136024

/-! ## A232830.P8408540724846130115

`A232831(A056115(n)+21)`
-/

namespace A232830.P8408540724846130115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232831 (A056115 n + 21).toNat

end

end A232830.P8408540724846130115

/-! ## A232830.P5323201070852843545

`A232831(A167499(n+4)+1)`
-/

namespace A232830.P5323201070852843545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232831 (A167499 (n + 4) + 1).toNat

end

end A232830.P5323201070852843545

/-! ## A232830.P11725646965358881471

`A232831(A167614(n+4)+3)`
-/

namespace A232830.P11725646965358881471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232831 (A167614 (n + 4) + 3).toNat

end

end A232830.P11725646965358881471

/-!
# A232834: Number of (n+1) X (2+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, diagonally or antidiagonally.

The programs for A232834, there is no canonical definition to state claims against.
-/

/-! ## A232834.P9671794994450351717

`A232839(∑[n+2])`
-/

namespace A232834.P9671794994450351717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232839 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232834.P9671794994450351717

/-! ## A232834.P1217647462384310777

`lcm(2, A232839(A000096(n+1)))`
-/

namespace A232834.P1217647462384310777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232839 (A000096 (n + 1)).toNat)

end

end A232834.P1217647462384310777

/-! ## A232834.P12561887248066211029

`record[A232839(Δ[A003453(n+5)])]`
-/

namespace A232834.P12561887248066211029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232839 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232834.P12561887248066211029

/-! ## A232834.P2580792705853755553

`A232839(A000096(n+1))+A064834(n)`
-/

namespace A232834.P2580792705853755553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232839 (A000096 (n + 1)).toNat + A064834 n

end

end A232834.P2580792705853755553

/-! ## A232834.P14489307889246574665

`A232839(A000096(n+1))+A000007(n+1)`
-/

namespace A232834.P14489307889246574665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232839 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A232834.P14489307889246574665

/-!
# A232835: Number of (n+1)X(3+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, diagonally or antidiagonally.

The programs for A232835, there is no canonical definition to state claims against.
-/

/-! ## A232835.P14652664237846691620

`A232839(∑[n+3]+1)`
-/

namespace A232835.P14652664237846691620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232839 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232835.P14652664237846691620

/-! ## A232835.P16569534555744993654

`lcm(2, A232839(A034856(n+2)))`
-/

namespace A232835.P16569534555744993654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232839 (A034856 (n + 2)).toNat)

end

end A232835.P16569534555744993654

/-! ## A232835.P1475141340661554290

`record[A232839(A276954(n+5)-3)]`
-/

namespace A232835.P1475141340661554290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232839 (A276954 (n + 5) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232835.P1475141340661554290

/-! ## A232835.P2541194611137283353

`A332281(n)+A232839(A034856(n+2))`
-/

namespace A232835.P2541194611137283353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332281 n + A232839 (A034856 (n + 2)).toNat

end

end A232835.P2541194611137283353

/-! ## A232835.P1118264886877445699

`A033999(n)²*A232839(Δ[A008778(n)])`
-/

namespace A232835.P1118264886877445699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A232839 (f1 (n + 1) - f1 n).toNat

end

end A232835.P1118264886877445699

/-!
# A232836: Number of (n+1)X(4+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, diagonally or antidiagonally.

The programs for A232836, there is no canonical definition to state claims against.
-/

/-! ## A232836.P7243382379828117343

`A232839(∑[n+4]+3)`
-/

namespace A232836.P7243382379828117343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232839 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A232836.P7243382379828117343

/-!
# A232837: Number of (n+1)X(5+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, diagonally or antidiagonally.

The programs for A232837, there is no canonical definition to state claims against.
-/

/-! ## A232837.P11071766938555153587

`A232839(Δ[A023545(n+1)])`
-/

namespace A232837.P11071766938555153587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232839 (f1 (n + 1) - f1 n).toNat

end

end A232837.P11071766938555153587

/-! ## A232837.P4000659457211594497

`A232839(A166136(n+1)+A016789(n))`
-/

namespace A232837.P4000659457211594497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232839 (A166136 (n + 1) + A016789 n).toNat

end

end A232837.P4000659457211594497

/-!
# A232838: Number of (n+1)X(6+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, diagonally or antidiagonally.

The programs for A232838, there is no canonical definition to state claims against.
-/

/-! ## A232838.P16375162920275647222

`A232839(A055999(n+3)+1)`
-/

namespace A232838.P16375162920275647222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232839 (A055999 (n + 3) + 1).toNat

end

end A232838.P16375162920275647222

/-! ## A232838.P10621524942225680541

`A232839(Δ[Δ[A006504(n+1)]])`
-/

namespace A232838.P10621524942225680541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232839 (f1 (n + 1) - f1 n).toNat

end

end A232838.P10621524942225680541

/-!
# A232839: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, diagonally or antidiagonally.

The programs for A232839, there is no canonical definition to state claims against.
-/

/-! ## A232839.P9066586614955884247

`A175809(A088711(n+1))`
-/

namespace A232839.P9066586614955884247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175809 (A088711 (n + 1)).toNat

end

end A232839.P9066586614955884247

/-!
# A232840: Number of (1+1) X (n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, diagonally or antidiagonally.

The programs for A232840, there is no canonical definition to state claims against.
-/

/-! ## A232840.P2546906874136366629

`A232839(∑[n]+1)`
-/

namespace A232840.P2546906874136366629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232839 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232840.P2546906874136366629

/-! ## A232840.P16236545400578528059

`lcm(2, A232839(A000124(n)))`
-/

namespace A232840.P16236545400578528059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232839 (A000124 n).toNat)

end

end A232840.P16236545400578528059

/-! ## A232840.P14492938521225615313

`record[A010054(n)*A232839(n+1)]`
-/

namespace A232840.P14492938521225615313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232840.P14492938521225615313

/-! ## A232840.P7259079193789282365

`record[root(A232839(n+1), A026725(n))]`
-/

namespace A232840.P7259079193789282365
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232839 (n + 1) : ℝ) ^ (1 / (A026725 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232840.P7259079193789282365

/-! ## A232840.P1535660879109112113

`record[root(A232839(n+1), A059268(n))]`
-/

namespace A232840.P1535660879109112113
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232839 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232840.P1535660879109112113

/-!
# A232841: Number of (2+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, diagonally or antidiagonally.

The programs for A232841, there is no canonical definition to state claims against.
-/

/-! ## A232841.P7132223970687537933

`A232839(∑[n+1]+2)`
-/

namespace A232841.P7132223970687537933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232839 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232841.P7132223970687537933

/-! ## A232841.P6244196612944485416

`record[A010054(n)*A232839(n+2)]`
-/

namespace A232841.P6244196612944485416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232839 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232841.P6244196612944485416

/-! ## A232841.P16608281079864616367

`record[root(A232839(n+2), A059268(n))]`
-/

namespace A232841.P16608281079864616367
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232839 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232841.P16608281079864616367

/-! ## A232841.P11396338647063288937

`record[root(A232839(n+2), A153189(n))]`
-/

namespace A232841.P11396338647063288937
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232839 (n + 2) : ℝ) ^ (1 / (A153189 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232841.P11396338647063288937

/-! ## A232841.P2105367232476274903

`record[gcd(A232839(n+2), A316101(n))]`
-/

namespace A232841.P2105367232476274903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A232839 (n + 2)) (A316101 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232841.P2105367232476274903

/-!
# A232842: Number of (3+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, diagonally or antidiagonally.

The programs for A232842, there is no canonical definition to state claims against.
-/

/-! ## A232842.P4768441768001960124

`A232839(∑[n+2]+4)`
-/

namespace A232842.P4768441768001960124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232839 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232842.P4768441768001960124

/-! ## A232842.P15057775845651926547

`lcm(2, A232839(A167614(n+1)))`
-/

namespace A232842.P15057775845651926547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232839 (A167614 (n + 1)).toNat)

end

end A232842.P15057775845651926547

/-! ## A232842.P14856181320726009696

`A232839(A167614(n+1))+A033665(n)`
-/

namespace A232842.P14856181320726009696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232839 (A167614 (n + 1)).toNat + A033665 n

end

end A232842.P14856181320726009696

/-! ## A232842.P7120982486950699877

`A232839(A167614(n+1))+A084904(n)`
-/

namespace A232842.P7120982486950699877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232839 (A167614 (n + 1)).toNat + A084904 n

end

end A232842.P7120982486950699877

/-! ## A232842.P9522204517122894474

`A307629(n)+A232839(A167614(n+1))`
-/

namespace A232842.P9522204517122894474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307629 n + A232839 (A167614 (n + 1)).toNat

end

end A232842.P9522204517122894474

/-!
# A232843: Number of (4+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, diagonally or antidiagonally.

The programs for A232843, there is no canonical definition to state claims against.
-/

/-! ## A232843.P1814524457579798067

`A232839(A141214(n)+7)`
-/

namespace A232843.P1814524457579798067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232839 (A141214 n + 7).toNat

end

end A232843.P1814524457579798067

/-! ## A232843.P17354353226875954132

`A232839(A052905(n)+9)`
-/

namespace A232843.P17354353226875954132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232839 (A052905 n + 9).toNat

end

end A232843.P17354353226875954132

/-! ## A232843.P12321982002704873567

`A232839(eq[5, A066657(n)])`
-/

namespace A232843.P12321982002704873567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232839 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232843.P12321982002704873567

/-! ## A232843.P13546465948559991165

`A232839(A167614(n+2)+1)`
-/

namespace A232843.P13546465948559991165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232839 (A167614 (n + 2) + 1).toNat

end

end A232843.P13546465948559991165

/-! ## A232843.P12891282282131468778

`A232839(A166136(n+2)-2)`
-/

namespace A232843.P12891282282131468778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232839 (A166136 (n + 2) - 2).toNat

end

end A232843.P12891282282131468778

/-!
# A232844: Number of (5+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally, diagonally or antidiagonally.

The programs for A232844, there is no canonical definition to state claims against.
-/

/-! ## A232844.P13704147635178370788

`A232839(eq[7, A066657(n)])`
-/

namespace A232844.P13704147635178370788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232839 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232844.P13704147635178370788

/-! ## A232844.P15311143922908071189

`A232839(eq[5, A002260(n+1)]+1)`
-/

namespace A232844.P15311143922908071189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232839 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A232844.P15311143922908071189

/-!
# A232845: a(0) = 0, a(1) = 1, and for n>=2, a(n) = (n-2)*a(n-1) - (n-1)*a(n-2).

The programs for A232845, the canonical program `A232845.P6671429581203567041` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232845 has offset 0).

The definition of A232845 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-2)*a(n-1)-(n-1)*a(n-2)` (program `A232845.P6671429581203567041`, by `A232845.P6671429581203567041.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A232845.P6671429581203567041

`(n-2)*a(n-1)-(n-1)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A232845

/-- `(n-2)*a(n-1)-(n-1)*a(n-2)` -/
def P6671429581203567041.Spec : Prop :=
  ∀ n, P6671429581203567041.a n = A232845 n

theorem P6671429581203567041.correct : P6671429581203567041.Spec := by
  intro n
  simp only [A232845]

end A232845

/-! ## A232845.P8324710446765453801

`2*n+A152689(n)-n²`
-/

namespace A232845.P8324710446765453801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A152689 n - (n ^ 2 : ℤ))

end

end A232845.P8324710446765453801

namespace A232845

/-- `2*n+A152689(n)-n²` -/
def P8324710446765453801.Spec : Prop :=
  ∀ n, P8324710446765453801.a n = A232845 n

end A232845

/-! ## A232845.P466658463770123135

`A152689(n)-A067998(n)`
-/

namespace A232845.P466658463770123135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152689 n - A067998 n

end

end A232845.P466658463770123135

namespace A232845

/-- `A152689(n)-A067998(n)` -/
def P466658463770123135.Spec : Prop :=
  ∀ n, P466658463770123135.a n = A232845 n

end A232845

/-! ## A232845.P5072826031734615034

`A152689(n)+n*A022958(n)`
-/

namespace A232845.P5072826031734615034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152689 n + (n : ℤ) * A022958 n

end

end A232845.P5072826031734615034

namespace A232845

/-- `A152689(n)+n*A022958(n)` -/
def P5072826031734615034.Spec : Prop :=
  ∀ n, P5072826031734615034.a n = A232845 n

end A232845

/-! ## A232845.P18444089304778351263

`∑[A014144(A233583(n+1)-2)]-n*(n-2)`
-/

namespace A232845.P18444089304778351263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014144 (A233583 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) * ((n : ℤ) - 2)

end

end A232845.P18444089304778351263

namespace A232845

/-- `∑[A014144(A233583(n+1)-2)]-n*(n-2)` -/
def P18444089304778351263.Spec : Prop :=
  ∀ n, P18444089304778351263.a n = A232845 n

end A232845

/-!
# A232848: Prime(k), where k divides Sum_{i=1..k} prime(i)^15.

The programs for A232848, there is no canonical definition to state claims against.
-/

/-! ## A232848.P5808149964952050204

`A000040(A131275(n+1))`
-/

namespace A232848.P5808149964952050204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A131275 (n + 1)).toNat

end

end A232848.P5808149964952050204

/-! ## A232848.P14573282807782334946

`A008578(A131275(n+1)+1)`
-/

namespace A232848.P14573282807782334946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A131275 (n + 1) + 1).toNat

end

end A232848.P14573282807782334946

/-! ## A232848.P6656876923303533349

`A182986(A131275(n+1)+1)`
-/

namespace A232848.P6656876923303533349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A131275 (n + 1) + 1).toNat

end

end A232848.P6656876923303533349

/-! ## A232848.P6509612577385862207

`A158611(A131275(n+1)+2)`
-/

namespace A232848.P6509612577385862207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A131275 (n + 1) + 2).toNat

end

end A232848.P6509612577385862207

/-!
# A232849: Number of (n+1)X(1+1) 0..2 arrays x(i,j) with row sums sum{j^4*x(i,j), j=1..1+1} nondecreasing, and column sums sum{i^4*x(i,j), i=1..n+1} nondecreasing.

The programs for A232849, there is no canonical definition to state claims against.
-/

/-! ## A232849.P1108590170679130813

`A232852(∑[n]+1)`
-/

namespace A232849.P1108590170679130813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232852 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232849.P1108590170679130813

/-! ## A232849.P14839114384929110059

`record[A010054(n)*A232852(n+1)]`
-/

namespace A232849.P14839114384929110059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232849.P14839114384929110059

/-! ## A232849.P11513219013215114320

`record[A103451(n)*A232852(n+1)]`
-/

namespace A232849.P11513219013215114320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A232852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232849.P11513219013215114320

/-! ## A232849.P162208212760951766

`record[A232852(n+1)/A157156(n)]`
-/

namespace A232849.P162208212760951766
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232852 (n + 1) : ℚ) / (A157156 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232849.P162208212760951766

/-! ## A232849.P1193736557097333606

`record[root(A232852(n+1), A007318(n))]`
-/

namespace A232849.P1193736557097333606
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232852 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232849.P1193736557097333606

/-!
# A232850: Number of (n+1)X(2+1) 0..2 arrays x(i,j) with row sums sum{j^4*x(i,j), j=1..2+1} nondecreasing, and column sums sum{i^4*x(i,j), i=1..n+1} nondecreasing.

The programs for A232850, there is no canonical definition to state claims against.
-/

/-! ## A232850.P15988237336688118107

`A232852(∑[n+1]+2)`
-/

namespace A232850.P15988237336688118107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232852 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232850.P15988237336688118107

/-! ## A232850.P5662162010156111692

`record[A010054(n)*A232852(n+2)]`
-/

namespace A232850.P5662162010156111692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232852 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232850.P5662162010156111692

/-! ## A232850.P2656502467856328109

`record[A232852(n+2)/A308504(n+4)]`
-/

namespace A232850.P2656502467856328109
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232852 (n + 2) : ℚ) / (A308504 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232850.P2656502467856328109

/-! ## A232850.P4528863528659626736

`record[A232852(A000096(∑{e}[n+1, #]+1))]`
-/

namespace A232850.P4528863528659626736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232852 (A000096 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232850.P4528863528659626736

/-! ## A232850.P15351589365334567566

`A133880(n)*A232852(A000096(n+1))`
-/

namespace A232850.P15351589365334567566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133880 n * A232852 (A000096 (n + 1)).toNat

end

end A232850.P15351589365334567566

/-!
# A232851: Number of (n+1)X(3+1) 0..2 arrays x(i,j) with row sums sum{j^4*x(i,j), j=1..3+1} nondecreasing, and column sums sum{i^4*x(i,j), i=1..n+1} nondecreasing.

The programs for A232851, there is no canonical definition to state claims against.
-/

/-! ## A232851.P12313471285353057785

`A232852(∑[n+2]+4)`
-/

namespace A232851.P12313471285353057785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232852 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232851.P12313471285353057785

/-! ## A232851.P13429788257315005067

`A232852(A167614(n+1))+A011745(n)`
-/

namespace A232851.P13429788257315005067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232852 (A167614 (n + 1)).toNat + A011745 n

end

end A232851.P13429788257315005067

/-! ## A232851.P8104766286142969769

`A232852(A167614(n+1))+A055963(n)`
-/

namespace A232851.P8104766286142969769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232852 (A167614 (n + 1)).toNat + A055963 n

end

end A232851.P8104766286142969769

/-! ## A232851.P10283726236218739491

`A232852(A167614(n+1))+A180160(n)`
-/

namespace A232851.P10283726236218739491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232852 (A167614 (n + 1)).toNat + A180160 n

end

end A232851.P10283726236218739491

/-! ## A232851.P13547127176510078686

`A232852(A167614(n+1))+A185238(n)`
-/

namespace A232851.P13547127176510078686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232852 (A167614 (n + 1)).toNat + A185238 n

end

end A232851.P13547127176510078686

/-!
# A232852: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays x(i,j) with row sums sum{j^4*x(i,j), j=1..k+1} nondecreasing, and column sums sum{i^4*x(i,j), i=1..n+1} nondecreasing.

The programs for A232852, there is no canonical definition to state claims against.
-/

/-! ## A232852.P16263344804443465011

`filter[A184137(n+1), A054521(#)]`
-/

namespace A232852.P16263344804443465011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A054521 (f1 j).toNat = 1) n)

end

end A232852.P16263344804443465011

/-! ## A232852.P15697927010006135909

`A184137(eq[A000038(2^n), A103451(n)]+1)`
-/

namespace A232852.P15697927010006135909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (2 ^ n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184137 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A232852.P15697927010006135909

/-!
# A232853: Repeat n+1 times A091137(n).

The programs for A232853, there is no canonical definition to state claims against.
-/

/-! ## A232853.P14032218865896696808

`A091137(∑[char[∑[n+1]]])`
-/

namespace A232853.P14032218865896696808
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091137 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232853.P14032218865896696808

/-! ## A232853.P3846931694529063956

`A248765(∑[4*char[∑[n]]])`
-/

namespace A232853.P3846931694529063956
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248765 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232853.P3846931694529063956

/-! ## A232853.P13563090924470402539

`A248768(∑[5*char[∑[n]]])`
-/

namespace A232853.P13563090924470402539
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248768 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232853.P13563090924470402539

/-! ## A232853.P13390990439159005416

`A248771(∑[6*char[∑[n]]])`
-/

namespace A232853.P13390990439159005416
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248771 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232853.P13390990439159005416

/-! ## A232853.P17827569291639244055

`A248774(∑[7*char[∑[n]]])`
-/

namespace A232853.P17827569291639244055
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248774 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232853.P17827569291639244055

/-!
# A232854: Number of (n+1)X(1+1) 0..1 arrays x(i,j) with row sums sum{j^3*x(i,j), j=1..1+1} nondecreasing, and column sums sum{i^3*x(i,j), i=1..n+1} nondecreasing.

The programs for A232854, there is no canonical definition to state claims against.
-/

/-! ## A232854.P4492791095748315511

`A232860(∑[n]+1)`
-/

namespace A232854.P4492791095748315511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232860 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232854.P4492791095748315511

/-! ## A232854.P9590647595985859175

`record[A232860(A257504(n+1))]`
-/

namespace A232854.P9590647595985859175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232860 (A257504 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232854.P9590647595985859175

/-! ## A232854.P4098377259252726928

`or(char[2], A232860(A000124(n)))`
-/

namespace A232854.P4098377259252726928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A232860 (A000124 n).toNat)

end

end A232854.P4098377259252726928

/-! ## A232854.P11502970122983338516

`record[A010054(n)*A232860(n+1)]`
-/

namespace A232854.P11502970122983338516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232854.P11502970122983338516

/-! ## A232854.P1666555029836129857

`record[A103451(n)*A232860(n+1)]`
-/

namespace A232854.P1666555029836129857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A232860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232854.P1666555029836129857

/-!
# A232855: Number of (n+1)X(2+1) 0..1 arrays x(i,j) with row sums sum{j^3*x(i,j), j=1..2+1} nondecreasing, and column sums sum{i^3*x(i,j), i=1..n+1} nondecreasing.

The programs for A232855, there is no canonical definition to state claims against.
-/

/-! ## A232855.P14014942220193440570

`A232860(∑[n+1]+2)`
-/

namespace A232855.P14014942220193440570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232860 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232855.P14014942220193440570

/-! ## A232855.P7323457576474815590

`record[A232860(A257504(n+1)+1)]`
-/

namespace A232855.P7323457576474815590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232860 (A257504 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232855.P7323457576474815590

/-! ## A232855.P8168529679087505989

`record[A232860(A130270(n+1)+2)]`
-/

namespace A232855.P8168529679087505989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232860 (A130270 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232855.P8168529679087505989

/-! ## A232855.P14291178196623748277

`record[A010054(n)*A232860(n+2)]`
-/

namespace A232855.P14291178196623748277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232860 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232855.P14291178196623748277

/-! ## A232855.P13585914197118095116

`record[gcd(A141169(n), A232860(n+2))]`
-/

namespace A232855.P13585914197118095116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141169 n) (A232860 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232855.P13585914197118095116

/-!
# A232856: Number of (n+1)X(3+1) 0..1 arrays x(i,j) with row sums sum{j^3*x(i,j), j=1..3+1} nondecreasing, and column sums sum{i^3*x(i,j), i=1..n+1} nondecreasing.

The programs for A232856, there is no canonical definition to state claims against.
-/

/-! ## A232856.P3085788284802384743

`A232860(∑[n+2]+4)`
-/

namespace A232856.P3085788284802384743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232860 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232856.P3085788284802384743

/-! ## A232856.P13102371386020318534

`A232860(A167614(n+1))+A025443(n)`
-/

namespace A232856.P13102371386020318534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232860 (A167614 (n + 1)).toNat + A025443 n

end

end A232856.P13102371386020318534

/-! ## A232856.P2141796153660188238

`A232860(A167614(n+1))+A025469(n)`
-/

namespace A232856.P2141796153660188238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232860 (A167614 (n + 1)).toNat + A025469 n

end

end A232856.P2141796153660188238

/-! ## A232856.P15557571350087708005

`A232860(A167614(n+1))+A086015(n)`
-/

namespace A232856.P15557571350087708005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232860 (A167614 (n + 1)).toNat + A086015 n

end

end A232856.P15557571350087708005

/-! ## A232856.P13900486118769712633

`A232860(A167614(n+1))+A178798(n)`
-/

namespace A232856.P13900486118769712633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232860 (A167614 (n + 1)).toNat + A178798 n

end

end A232856.P13900486118769712633

/-!
# A232857: Number of (n+1)X(4+1) 0..1 arrays x(i,j) with row sums sum{j^3*x(i,j), j=1..4+1} nondecreasing, and column sums sum{i^3*x(i,j), i=1..n+1} nondecreasing.

The programs for A232857, there is no canonical definition to state claims against.
-/

/-! ## A232857.P10568001161030770536

`A232860(A141214(n)+7)`
-/

namespace A232857.P10568001161030770536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232860 (A141214 n + 7).toNat

end

end A232857.P10568001161030770536

/-! ## A232857.P4848623443264152166

`A232860(A052905(n)+9)`
-/

namespace A232857.P4848623443264152166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232860 (A052905 n + 9).toNat

end

end A232857.P4848623443264152166

/-! ## A232857.P11331721035145577194

`A232860(A055999(n)+10)`
-/

namespace A232857.P11331721035145577194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232860 (A055999 n + 10).toNat

end

end A232857.P11331721035145577194

/-! ## A232857.P16532729556550436756

`A232860(eq[5, A066657(n)])`
-/

namespace A232857.P16532729556550436756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232860 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232857.P16532729556550436756

/-! ## A232857.P13076586096812360359

`A232860(A167614(n+2)+1)`
-/

namespace A232857.P13076586096812360359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232860 (A167614 (n + 2) + 1).toNat

end

end A232857.P13076586096812360359

/-!
# A232858: Number of (n+1)X(5+1) 0..1 arrays x(i,j) with row sums sum{j^3*x(i,j), j=1..5+1} nondecreasing, and column sums sum{i^3*x(i,j), i=1..n+1} nondecreasing.

The programs for A232858, there is no canonical definition to state claims against.
-/

/-! ## A232858.P9864062716790673379

`A232860(A167499(n+3))`
-/

namespace A232858.P9864062716790673379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232860 (A167499 (n + 3)).toNat

end

end A232858.P9864062716790673379

/-! ## A232858.P17443760741126115401

`A232860(A155212(n)+13)`
-/

namespace A232858.P17443760741126115401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232860 (A155212 n + 13).toNat

end

end A232858.P17443760741126115401

/-! ## A232858.P2240603918258284556

`A232860(A056000(n)+15)`
-/

namespace A232858.P2240603918258284556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232860 (A056000 n + 15).toNat

end

end A232858.P2240603918258284556

/-! ## A232858.P11297022796748805662

`A232860(eq[7, A066657(n)])`
-/

namespace A232858.P11297022796748805662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232860 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232858.P11297022796748805662

/-! ## A232858.P10606091256540045331

`A232860(A000124(n+4)+4)`
-/

namespace A232858.P10606091256540045331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232860 (A000124 (n + 4) + 4).toNat

end

end A232858.P10606091256540045331

/-!
# A232859: Number of (n+1)X(6+1) 0..1 arrays x(i,j) with row sums sum{j^3*x(i,j), j=1..6+1} nondecreasing, and column sums sum{i^3*x(i,j), i=1..n+1} nondecreasing.

The programs for A232859, there is no canonical definition to state claims against.
-/

/-! ## A232859.P5256098374427599942

`A232860(A056115(n)+21)`
-/

namespace A232859.P5256098374427599942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232860 (A056115 n + 21).toNat

end

end A232859.P5256098374427599942

/-! ## A232859.P12420680865010120392

`A232860(A167499(n+4)+1)`
-/

namespace A232859.P12420680865010120392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232860 (A167499 (n + 4) + 1).toNat

end

end A232859.P12420680865010120392

/-! ## A232859.P13534337869924964259

`A232860(A000096(n+4)+7)`
-/

namespace A232859.P13534337869924964259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232860 (A000096 (n + 4) + 7).toNat

end

end A232859.P13534337869924964259

/-! ## A232859.P10566355737546037168

`A232860(A000217(n+5)+6)`
-/

namespace A232859.P10566355737546037168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232860 (A000217 (n + 5) + 6).toNat

end

end A232859.P10566355737546037168

/-! ## A232859.P172953175143302261

`A232860(A246172(n+1)+20)`
-/

namespace A232859.P172953175143302261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232860 (A246172 (n + 1) + 20).toNat

end

end A232859.P172953175143302261

/-!
# A232860: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays x(i,j) with row sums sum{j^3*x(i,j), j=1..k+1} nondecreasing, and column sums sum{i^3*x(i,j), i=1..n+1} nondecreasing.

The programs for A232860, there is no canonical definition to state claims against.
-/

/-! ## A232860.P10809600408125411189

`A232797(n+1)-A350139(A098361(n))`
-/

namespace A232860.P10809600408125411189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (n + 1) - A350139 (A098361 n).toNat

end

end A232860.P10809600408125411189

/-! ## A232860.P5292815620151519348

`A232797(n+1)-A037913(A062092(n))`
-/

namespace A232860.P5292815620151519348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (n + 1) - A037913 (A062092 n).toNat

end

end A232860.P5292815620151519348

/-! ## A232860.P12091494001438826441

`A232797(n+1)-A084888(A152740(n))`
-/

namespace A232860.P12091494001438826441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (n + 1) - A084888 (A152740 n).toNat

end

end A232860.P12091494001438826441

/-! ## A232860.P18366977309529734069

`A232797(n+1)-A350139(A000124(n))`
-/

namespace A232860.P18366977309529734069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (n + 1) - A350139 (A000124 n).toNat

end

end A232860.P18366977309529734069

/-! ## A232860.P6597367717115115537

`A232797(n+1)-A350139(record[A257504(n+1)])`
-/

namespace A232860.P6597367717115115537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (n + 1) - A350139 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A232860.P6597367717115115537

/-!
# A232864: Number of permutations of n elements not cyclically containing the consecutive pattern 123.

The programs for A232864, there is no canonical definition to state claims against.
-/

/-! ## A232864.P13583863704517222172

`A028310(n)*A080635(abs(1-n))`
-/

namespace A232864.P13583863704517222172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A080635 |1 - (n : ℤ)|.toNat

end

end A232864.P13583863704517222172

/-! ## A232864.P2850721537641027623

`A065033(2*n)*A080635(abs(1-n))`
-/

namespace A232864.P2850721537641027623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) * A080635 |1 - (n : ℤ)|.toNat

end

end A232864.P2850721537641027623

/-! ## A232864.P10249619760269011768

`(A000007(n)+n)*A080635(abs(1-n))`
-/

namespace A232864.P10249619760269011768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + (n : ℤ)) * A080635 |1 - (n : ℤ)|.toNat

end

end A232864.P10249619760269011768

/-! ## A232864.P9185866328215755023

`(A151933(n)+n)*A080635(abs(1-n))`
-/

namespace A232864.P9185866328215755023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A151933 n + (n : ℤ)) * A080635 |1 - (n : ℤ)|.toNat

end

end A232864.P9185866328215755023

/-! ## A232864.P626292495588804291

`gcd(n, A008486(n))*A080635(abs(1-n))`
-/

namespace A232864.P626292495588804291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A008486 n) : ℤ) * A080635 |1 - (n : ℤ)|.toNat

end

end A232864.P626292495588804291

/-! ## A232864.P1694522876799384242

`A007318(∑[n]+1)*A080635(abs(1-n))`
-/

namespace A232864.P1694522876799384242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A080635 |1 - (n : ℤ)|.toNat

end

end A232864.P1694522876799384242

/-!
# A232866: Positions of the nonnegative integers in the sequence (or tree) of complex numbers generated by these rules: 0 is in S, and if x is in S, then x + 1 and i*x are in S, where duplicates are deleted as they occur.

The programs for A232866, the canonical program `A232866.P13780909366753424713` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232866 has offset 1).

The definition of A232866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232866.P13780909366753424713

`∑[a(n-1)+4]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=4, a(5)=7`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A232866

/-- `∑[a(n-1)+4]` -/
def P13780909366753424713.Spec : Prop :=
  ∀ n, (P13780909366753424713.a n : ℤ) = A232866 (n + 1)

theorem P13780909366753424713.correct : P13780909366753424713.Spec := by
  intro n
  simp only [A232866, Nat.add_sub_cancel]

end A232866

/-! ## A232866.P1525303944710455186

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=9, a(5)=16, a(6)=27`
-/

namespace A232866.P1525303944710455186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5, 9, 16, 27] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A232866.P1525303944710455186

namespace A232866

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P1525303944710455186.Spec : Prop :=
  ∀ n, P1525303944710455186.a n = A232866 (n + 1)

end A232866

/-! ## A232866.P5562544722785236028

`A232868(comp[2*(n+2)]+1)`
-/

namespace A232866.P5562544722785236028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232868 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A232866.P5562544722785236028

namespace A232866

/-- `A232868(comp[2*(n+2)]+1)` -/
def P5562544722785236028.Spec : Prop :=
  ∀ n, P5562544722785236028.a n = A232866 (n + 1)

end A232866

/-! ## A232866.P17678394308330860272

`∑[A004281(A004273(A289207(n)))]`
-/

namespace A232866.P17678394308330860272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 (A004273 (A289207 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232866.P17678394308330860272

namespace A232866

/-- `∑[A004281(A004273(A289207(n)))]` -/
def P17678394308330860272.Spec : Prop :=
  ∀ n, P17678394308330860272.a n = A232866 (n + 1)

end A232866

/-! ## A232866.P73332669610933192

`∑[A004281(A004274(n)-A130130(n))]`
-/

namespace A232866.P73332669610933192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 (A004274 n - A130130 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232866.P73332669610933192

namespace A232866

/-- `∑[A004281(A004274(n)-A130130(n))]` -/
def P73332669610933192.Spec : Prop :=
  ∀ n, P73332669610933192.a n = A232866 (n + 1)

end A232866

/-!
# A232867: Positions of the negative integers in the sequence (or tree) of complex numbers generated by these rules: 0 is in S, and if x is in S, then x + 1 and i*x are in S, where duplicates are deleted as they occur.

The programs for A232867, the canonical program `A232867.P1740544538894836005` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232867 has offset 1).

The definition of A232867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232867.P1740544538894836005

`∑[a(n-1)+4]` with `a(0)=8, a(1)=4, a(2)=7`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A232867

/-- `∑[a(n-1)+4]` -/
def P1740544538894836005.Spec : Prop :=
  ∀ n, (P1740544538894836005.a n : ℤ) = A232867 (n + 1)

theorem P1740544538894836005.correct : P1740544538894836005.Spec := by
  intro n
  simp only [A232867, Nat.add_sub_cancel]

end A232867

/-! ## A232867.P16578792043891641878

`ceil(n/acot(2*n+1))+8`
-/

namespace A232867.P16578792043891641878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / SequenceMachineLib.acot (2 * n + 1 : ℝ)⌉ + 8

end

end A232867.P16578792043891641878

namespace A232867

/-- `ceil(n/acot(2*n+1))+8` -/
def P16578792043891641878.Spec : Prop :=
  ∀ n, P16578792043891641878.a n = A232867 (n + 1)

end A232867

/-! ## A232867.P16677536585170615839

`record[C(and(n+3, -2), 2)-n]+7`
-/

namespace A232867.P16677536585170615839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Int.land (n + 3 : ℤ) (-2)).toNat 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 7

end

end A232867.P16677536585170615839

namespace A232867

/-- `record[C(and(n+3, -2), 2)-n]+7` -/
def P16677536585170615839.Spec : Prop :=
  ∀ n, P16677536585170615839.a n = A232867 (n + 1)

end A232867

/-! ## A232867.P7362249886345400359

`record[lcm(2, n+2)+C(n, 2)-1]+7`
-/

namespace A232867.P7362249886345400359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 2) : ℤ) + ((Nat.choose n 2 : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 7

end

end A232867.P7362249886345400359

namespace A232867

/-- `record[lcm(2, n+2)+C(n, 2)-1]+7` -/
def P7362249886345400359.Spec : Prop :=
  ∀ n, P7362249886345400359.a n = A232867 (n + 1)

end A232867

/-! ## A232867.P7521449419835961987

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=8, a(1)=12, a(2)=19, a(3)=30`
-/

namespace A232867.P7521449419835961987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 12, 19, 30] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A232867.P7521449419835961987

namespace A232867

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P7521449419835961987.Spec : Prop :=
  ∀ n, P7521449419835961987.a n = A232867 (n + 1)

end A232867

/-! ## A232867.P3464726790109749700

`record[A316966(n)+8]`
-/

namespace A232867.P3464726790109749700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316966 n + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232867.P3464726790109749700

namespace A232867

/-- `record[A316966(n)+8]` -/
def P3464726790109749700.Spec : Prop :=
  ∀ n, P3464726790109749700.a n = A232867 (n + 1)

end A232867

/-! ## A232867.P7611406881600817978

`A232868(2*n+5)`
-/

namespace A232867.P7611406881600817978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232868 (2 * n + 5)

end

end A232867.P7611406881600817978

namespace A232867

/-- `A232868(2*n+5)` -/
def P7611406881600817978.Spec : Prop :=
  ∀ n, P7611406881600817978.a n = A232867 (n + 1)

end A232867

/-! ## A232867.P6642092193376342587

`A133263(2*n)+7`
-/

namespace A232867.P6642092193376342587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (2 * n) + 7

end

end A232867.P6642092193376342587

namespace A232867

/-- `A133263(2*n)+7` -/
def P6642092193376342587.Spec : Prop :=
  ∀ n, P6642092193376342587.a n = A232867 (n + 1)

end A232867

/-! ## A232867.P13562046466996787703

`A266663(2*n)+7`
-/

namespace A232867.P13562046466996787703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266663 (2 * n) + 7

end

end A232867.P13562046466996787703

namespace A232867

/-- `A266663(2*n)+7` -/
def P13562046466996787703.Spec : Prop :=
  ∀ n, P13562046466996787703.a n = A232867 (n + 1)

end A232867

/-! ## A232867.P14747683652111934972

`A267049(2*n)+8`
-/

namespace A232867.P14747683652111934972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267049 (2 * n) + 8

end

end A232867.P14747683652111934972

namespace A232867

/-- `A267049(2*n)+8` -/
def P14747683652111934972.Spec : Prop :=
  ∀ n, P14747683652111934972.a n = A232867 (n + 1)

end A232867

/-! ## A232867.P17632680186533688420

`A005893(n)+7+n`
-/

namespace A232867.P17632680186533688420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n + 7 + (n : ℤ)

end

end A232867.P17632680186533688420

namespace A232867

/-- `A005893(n)+7+n` -/
def P17632680186533688420.Spec : Prop :=
  ∀ n, P17632680186533688420.a n = A232867 (n + 1)

end A232867

/-! ## A232867.P16847950140668879028

`A238531(2*n+1)+7`
-/

namespace A232867.P16847950140668879028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238531 (2 * n + 1) + 7

end

end A232867.P16847950140668879028

namespace A232867

/-- `A238531(2*n+1)+7` -/
def P16847950140668879028.Spec : Prop :=
  ∀ n, P16847950140668879028.a n = A232867 (n + 1)

end A232867

/-! ## A232867.P3567491939555674660

`∑[A004275(n)+1+n+n]+7`
-/

namespace A232867.P3567491939555674660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n + 1 + (n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 7

end

end A232867.P3567491939555674660

namespace A232867

/-- `∑[A004275(n)+1+n+n]+7` -/
def P3567491939555674660.Spec : Prop :=
  ∀ n, P3567491939555674660.a n = A232867 (n + 1)

end A232867

/-! ## A232867.P7824770099084179592

`A016028(2*(n+1))+2*(n+3)`
-/

namespace A232867.P7824770099084179592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016028 (2 * (n + 1)) + (2 * (n + 3) : ℤ)

end

end A232867.P7824770099084179592

namespace A232867

/-- `A016028(2*(n+1))+2*(n+3)` -/
def P7824770099084179592.Spec : Prop :=
  ∀ n, P7824770099084179592.a n = A232867 (n + 1)

end A232867

/-! ## A232867.P6094178773731055240

`A089071(2*n+1)+2*n+7`
-/

namespace A232867.P6094178773731055240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (2 * n + 1) + (2 * n : ℤ) + 7

end

end A232867.P6094178773731055240

namespace A232867

/-- `A089071(2*n+1)+2*n+7` -/
def P6094178773731055240.Spec : Prop :=
  ∀ n, P6094178773731055240.a n = A232867 (n + 1)

end A232867

/-! ## A232867.P12273747383400979744

`A134869(2*n+1)+7-2*n`
-/

namespace A232867.P12273747383400979744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (2 * n + 1) + (7 - (2 * n : ℤ))

end

end A232867.P12273747383400979744

namespace A232867

/-- `A134869(2*n+1)+7-2*n` -/
def P12273747383400979744.Spec : Prop :=
  ∀ n, P12273747383400979744.a n = A232867 (n + 1)

end A232867

/-! ## A232867.P7566183863180317759

`A027692(n)+∑[comp[2*n+3]+1]`
-/

namespace A232867.P7566183863180317759
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027692 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A232867.P7566183863180317759

namespace A232867

/-- `A027692(n)+∑[comp[2*n+3]+1]` -/
def P7566183863180317759.Spec : Prop :=
  ∀ n, P7566183863180317759.a n = A232867 (n + 1)

end A232867

/-! ## A232867.P3552632542115500643

`∑[A004277(abs(1-n))+2*n+1]+5`
-/

namespace A232867.P3552632542115500643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 |1 - (n : ℤ)|.toNat + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A232867.P3552632542115500643

namespace A232867

/-- `∑[A004277(abs(1-n))+2*n+1]+5` -/
def P3552632542115500643.Spec : Prop :=
  ∀ n, P3552632542115500643.a n = A232867 (n + 1)

end A232867

/-! ## A232867.P9303425828186023799

`A020719(n)+A005893(n)`
-/

namespace A232867.P9303425828186023799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 n + A005893 n

end

end A232867.P9303425828186023799

namespace A232867

/-- `A020719(n)+A005893(n)` -/
def P9303425828186023799.Spec : Prop :=
  ∀ n, P9303425828186023799.a n = A232867 (n + 1)

end A232867

/-!
# A232868: Positions of the integers in the sequence (or tree) of complex numbers generated by these rules: 0 is in S, and if x is in S, then x + 1 and i*x are in S, where duplicates are deleted as they occur.

The programs for A232868, the canonical program `A232868.P9059691283570175263` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232868 has offset 1).

The definition of A232868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232868.P9059691283570175263

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=8, a(5)=9, a(6)=12, a(7)=16, a(8)=19, a(9)=27`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A232868

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P9059691283570175263.Spec : Prop :=
  ∀ n, P9059691283570175263.a n = A232868 (n + 1)

theorem P9059691283570175263.correct : P9059691283570175263.Spec := by
  intro n
  simp only [A232868, Nat.add_sub_cancel]

end A232868

/-!
# A232870: Numbers that are the largest value in the Collatz (3x+1) trajectories of exactly three initial values.

The programs for A232870, there is no canonical definition to state claims against.
-/

/-! ## A232870.P1030285771823942898

`eq[3, A087255(n+1)]+1`
-/

namespace A232870.P1030285771823942898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A232870.P1030285771823942898

/-! ## A232870.P1454783165577643468

`eq[3, A087255(A028310(n))]`
-/

namespace A232870.P1454783165577643468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232870.P1454783165577643468

/-! ## A232870.P9131981559684297340

`A103889(eq[3, A087255(n+1)])`
-/

namespace A232870.P9131981559684297340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232870.P9131981559684297340

/-! ## A232870.P7140899088345833989

`filter[A176869(n+2), A276395(#)]`
-/

namespace A232870.P7140899088345833989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176869 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276395 (f1 j).toNat = 1) n)

end

end A232870.P7140899088345833989

/-! ## A232870.P8815141027348904366

`A008574(eq[3, A087255(A008574(n))])`
-/

namespace A232870.P8815141027348904366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232870.P8815141027348904366

/-! ## A232870.P10558157667341711787

`filter[A176869(n+2), A130630(#)]`
-/

namespace A232870.P10558157667341711787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176869 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130630 (f1 j).toNat = 1) n)

end

end A232870.P10558157667341711787

/-! ## A232870.P7600720743769656996

`eq[3, A087255(A138153(n+1))]`
-/

namespace A232870.P7600720743769656996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232870.P7600720743769656996

/-!
# A232871: Number of (n+1)X(1+1) 0..1 arrays x(i,j) with row sums sum{j^2*x(i,j), j=1..1+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A232871, there is no canonical definition to state claims against.
-/

/-! ## A232871.P6789109775844986694

`A232877(∑[n]+1)`
-/

namespace A232871.P6789109775844986694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232877 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232871.P6789109775844986694

/-! ## A232871.P1340456987535655195

`record[A232877(A257504(n+1))]`
-/

namespace A232871.P1340456987535655195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232877 (A257504 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232871.P1340456987535655195

/-! ## A232871.P940501938343762450

`record[A010054(n)*A232877(n+1)]`
-/

namespace A232871.P940501938343762450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232871.P940501938343762450

/-! ## A232871.P1256378635565283657

`record[A103451(n)*A232877(n+1)]`
-/

namespace A232871.P1256378635565283657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A232877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232871.P1256378635565283657

/-! ## A232871.P14167530375257289116

`record[A232877(n+1)/A022166(n)]`
-/

namespace A232871.P14167530375257289116
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232877 (n + 1) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232871.P14167530375257289116

/-!
# A232872: Number of (n+1)X(2+1) 0..1 arrays x(i,j) with row sums sum{j^2*x(i,j), j=1..2+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A232872, there is no canonical definition to state claims against.
-/

/-! ## A232872.P3356755126703935903

`A232877(∑[n+1]+2)`
-/

namespace A232872.P3356755126703935903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232877 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232872.P3356755126703935903

/-! ## A232872.P12347991288777775703

`record[A232877(A257504(n+1)+1)]`
-/

namespace A232872.P12347991288777775703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232877 (A257504 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232872.P12347991288777775703

/-! ## A232872.P8674082383342717193

`record[A010054(n)*A232877(n+2)]`
-/

namespace A232872.P8674082383342717193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232877 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232872.P8674082383342717193

/-! ## A232872.P1726972157722969177

`record[A023531(n)*A232877(n+3)]`
-/

namespace A232872.P1726972157722969177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A232877 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232872.P1726972157722969177

/-! ## A232872.P10964760550957421948

`record[A103452(n)*A232877(n+3)]`
-/

namespace A232872.P10964760550957421948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A232877 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232872.P10964760550957421948

/-!
# A232873: Number of (n+1)X(3+1) 0..1 arrays x(i,j) with row sums sum{j^2*x(i,j), j=1..3+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A232873, there is no canonical definition to state claims against.
-/

/-! ## A232873.P13215915727713530776

`A232877(∑[n+2]+4)`
-/

namespace A232873.P13215915727713530776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232877 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232873.P13215915727713530776

/-! ## A232873.P4898650210042644253

`record[gcd(A122283(n), A232877(n+4))]`
-/

namespace A232873.P4898650210042644253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122283 n) (A232877 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232873.P4898650210042644253

/-! ## A232873.P16358074976558120057

`A232877(A167614(n+1))+A025443(n)`
-/

namespace A232873.P16358074976558120057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232877 (A167614 (n + 1)).toNat + A025443 n

end

end A232873.P16358074976558120057

/-! ## A232873.P10096041574900792459

`A232877(A167614(n+1))+A185284(n)`
-/

namespace A232873.P10096041574900792459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232877 (A167614 (n + 1)).toNat + A185284 n

end

end A232873.P10096041574900792459

/-! ## A232873.P12399667104638396867

`A308925(n)+A232877(A167614(n+1))`
-/

namespace A232873.P12399667104638396867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308925 n + A232877 (A167614 (n + 1)).toNat

end

end A232873.P12399667104638396867

/-!
# A232874: Number of (n+1)X(4+1) 0..1 arrays x(i,j) with row sums sum{j^2*x(i,j), j=1..4+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A232874, there is no canonical definition to state claims against.
-/

/-! ## A232874.P16926932668609397064

`A232877(A141214(n)+7)`
-/

namespace A232874.P16926932668609397064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232877 (A141214 n + 7).toNat

end

end A232874.P16926932668609397064

/-! ## A232874.P2631731628847095438

`A232877(A052905(n)+9)`
-/

namespace A232874.P2631731628847095438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232877 (A052905 n + 9).toNat

end

end A232874.P2631731628847095438

/-! ## A232874.P8737334123057240619

`A232877(A055999(n)+10)`
-/

namespace A232874.P8737334123057240619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232877 (A055999 n + 10).toNat

end

end A232874.P8737334123057240619

/-! ## A232874.P6417258095528724353

`A232877(eq[5, A066657(n)])`
-/

namespace A232874.P6417258095528724353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232874.P6417258095528724353

/-! ## A232874.P5667371360332147903

`A232877(A167614(n+2)+1)`
-/

namespace A232874.P5667371360332147903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232877 (A167614 (n + 2) + 1).toNat

end

end A232874.P5667371360332147903

/-!
# A232875: Number of (n+1)X(5+1) 0..1 arrays x(i,j) with row sums sum{j^2*x(i,j), j=1..5+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A232875, there is no canonical definition to state claims against.
-/

/-! ## A232875.P5228359366792192572

`A232877(A167499(n+3))`
-/

namespace A232875.P5228359366792192572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232877 (A167499 (n + 3)).toNat

end

end A232875.P5228359366792192572

/-! ## A232875.P14327601578134797752

`A232877(A155212(n)+13)`
-/

namespace A232875.P14327601578134797752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232877 (A155212 n + 13).toNat

end

end A232875.P14327601578134797752

/-! ## A232875.P17541879727102376519

`A232877(A056000(n)+15)`
-/

namespace A232875.P17541879727102376519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232877 (A056000 n + 15).toNat

end

end A232875.P17541879727102376519

/-! ## A232875.P1730226694507872235

`A232877(eq[7, A066657(n)])`
-/

namespace A232875.P1730226694507872235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232875.P1730226694507872235

/-! ## A232875.P5617126865675689538

`A232877(A000124(n+4)+4)`
-/

namespace A232875.P5617126865675689538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232877 (A000124 (n + 4) + 4).toNat

end

end A232875.P5617126865675689538

/-!
# A232876: Number of (n+1)X(6+1) 0..1 arrays x(i,j) with row sums sum{j^2*x(i,j), j=1..6+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A232876, there is no canonical definition to state claims against.
-/

/-! ## A232876.P14143189944658129787

`A232877(A374007(n+1))`
-/

namespace A232876.P14143189944658129787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232877 (A374007 (n + 1)).toNat

end

end A232876.P14143189944658129787

/-! ## A232876.P11233645710821695920

`A232877(A168105(n)-5)`
-/

namespace A232876.P11233645710821695920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232877 (A168105 n - 5).toNat

end

end A232876.P11233645710821695920

/-! ## A232876.P17071234426821932641

`A232877(A056119(n)+16)`
-/

namespace A232876.P17071234426821932641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232877 (A056119 n + 16).toNat

end

end A232876.P17071234426821932641

/-! ## A232876.P9445034420734870778

`A232877(A056115(n)+21)`
-/

namespace A232876.P9445034420734870778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232877 (A056115 n + 21).toNat

end

end A232876.P9445034420734870778

/-!
# A232877: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays x(i,j) with row sums sum{j^2*x(i,j), j=1..k+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A232877, there is no canonical definition to state claims against.
-/

/-! ## A232877.P9442935501268316475

`A232797(n+1)-A087893(A206974(n+1))`
-/

namespace A232877.P9442935501268316475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (n + 1) - A087893 (A206974 (n + 1)).toNat

end

end A232877.P9442935501268316475

/-! ## A232877.P8414951775983898607

`A232797(n+1)-A094518(A259006(n+1))`
-/

namespace A232877.P8414951775983898607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (n + 1) - A094518 (A259006 (n + 1)).toNat

end

end A232877.P8414951775983898607

/-! ## A232877.P3597725613001575794

`A232860(n+1)-A094518(A259006(n+1))`
-/

namespace A232877.P3597725613001575794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232860 (n + 1) - A094518 (A259006 (n + 1)).toNat

end

end A232877.P3597725613001575794

/-! ## A232877.P11927359753772813533

`A232797(n+1)-A055029(A148648(n))`
-/

namespace A232877.P11927359753772813533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (n + 1) - A055029 (A148648 n).toNat

end

end A232877.P11927359753772813533

/-! ## A232877.P17329378923141824266

`A232797(n+1)-A055029(A148660(n))`
-/

namespace A232877.P17329378923141824266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232797 (n + 1) - A055029 (A148660 n).toNat

end

end A232877.P17329378923141824266

/-!
# A232878: Twin prime pairs which sum to perfect squares.

The programs for A232878, there is no canonical definition to state claims against.
-/

/-! ## A232878.P9333408005150115053

`∪[A069496(n+1), A118593(n+1)]`
-/

namespace A232878.P9333408005150115053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A232878.P9333408005150115053

/-! ## A232878.P13717438414022702308

`A069496(A008619(n))+A010673(n)`
-/

namespace A232878.P13717438414022702308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069496 (A008619 n).toNat + A010673 n

end

end A232878.P13717438414022702308

/-! ## A232878.P14806747739999985678

`A154670(A008619(n))-A033999(n)`
-/

namespace A232878.P14806747739999985678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154670 (A008619 n).toNat - A033999 n

end

end A232878.P14806747739999985678

/-! ## A232878.P5691965067880955882

`A154670(A008619(n))-(n+1)/Δ[A001057(n)]`
-/

namespace A232878.P5691965067880955882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154670 (A008619 n).toNat : ℚ) - (n + 1 : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A232878.P5691965067880955882

/-! ## A232878.P7260851581495829499

`A154670(A008619(n))-A163805(A004273(n))`
-/

namespace A232878.P7260851581495829499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154670 (A008619 n).toNat - A163805 (A004273 n).toNat

end

end A232878.P7260851581495829499

/-! ## A232878.P792898194210864862

`A154670(A008619(n))-A056594(2*n)`
-/

namespace A232878.P792898194210864862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154670 (A008619 n).toNat - A056594 (2 * n)

end

end A232878.P792898194210864862

/-! ## A232878.P4958168753427195640

`A163805(2*n+1)+A154670(A008619(n))`
-/

namespace A232878.P4958168753427195640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (2 * n + 1) + A154670 (A008619 n).toNat

end

end A232878.P4958168753427195640

/-! ## A232878.P11517575929964719128

`A154670(A008619(n))-A164677(2*n+1)`
-/

namespace A232878.P11517575929964719128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154670 (A008619 n).toNat - A164677 (2 * n + 1)

end

end A232878.P11517575929964719128

/-!
# A232879: The y-axis intercept of the line y = n*x + b tangent to the curve y = prime(k), k = 1, 2, 3, ....

The programs for A232879, there is no canonical definition to state claims against.
-/

/-! ## A232879.P8617553149724620076

`A374251(A034855(n+2))-A156616(n)`
-/

namespace A232879.P8617553149724620076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374251 (A034855 (n + 2)).toNat - A156616 n

end

end A232879.P8617553149724620076

/-! ## A232879.P10366512692161805973

`A074372(A128773(n+1))-A241743(3*n)`
-/

namespace A232879.P10366512692161805973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (A128773 (n + 1)).toNat - A241743 (3 * n)

end

end A232879.P10366512692161805973

/-! ## A232879.P4467549805007646506

`A374251(A034855(n+2))-A000006(A024038(n))`
-/

namespace A232879.P4467549805007646506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374251 (A034855 (n + 2)).toNat - A000006 (A024038 n).toNat

end

end A232879.P4467549805007646506

/-!
# A232880: Twin primes with digital root 2 or 4.

The programs for A232880, there is no canonical definition to state claims against.
-/

/-! ## A232880.P7666331588684450247

`filter[A350668(n), A164292(#)]`
-/

namespace A232880.P7666331588684450247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A232880.P7666331588684450247

/-! ## A232880.P15397820923961342710

`filter[A166517(3*n), A164292(#)]`
-/

namespace A232880.P15397820923961342710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A232880.P15397820923961342710

/-! ## A232880.P6060399224357384507

`∩[A001097(n+1), A350668(n)]`
-/

namespace A232880.P6060399224357384507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350668 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232880.P6060399224357384507

/-! ## A232880.P498851430427352079

`∩[A132247(n+1), A350668(n)]`
-/

namespace A232880.P498851430427352079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350668 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232880.P498851430427352079

/-! ## A232880.P12621604753075682842

`∩[A171688(n+1), A350668(n)]`
-/

namespace A232880.P12621604753075682842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350668 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232880.P12621604753075682842

/-!
# A232881: Twin primes with digital root 5 or 7.

The programs for A232881, there is no canonical definition to state claims against.
-/

/-! ## A232881.P4823055214279460269

`p?[p?[9*n-2]-2]`
-/

namespace A232881.P4823055214279460269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232881.P4823055214279460269

/-! ## A232881.P8871482291578252760

`p?[A061241(n+1)-2]`
-/

namespace A232881.P8871482291578252760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232881.P8871482291578252760

/-! ## A232881.P11414205752412940664

`p?[A129807(n+1)-2]`
-/

namespace A232881.P11414205752412940664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232881.P11414205752412940664

/-! ## A232881.P13082546257700862938

`record[A284599(18*n+5)]`
-/

namespace A232881.P13082546257700862938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284599 (18 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232881.P13082546257700862938

/-! ## A232881.P1926157311230136230

`filter[A017221(n), A164292(#)]`
-/

namespace A232881.P1926157311230136230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A232881.P1926157311230136230

/-!
# A232882: Twin primes with digital root 8 or 1.

The programs for A232882, there is no canonical definition to state claims against.
-/

/-! ## A232882.P9771000525908642652

`record[A072963(A129805(n+1))]`
-/

namespace A232882.P9771000525908642652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (A129805 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232882.P9771000525908642652

/-! ## A232882.P1850295056415589675

`filter[A003663(n+1), A164292(#)]`
-/

namespace A232882.P1850295056415589675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A232882.P1850295056415589675

/-! ## A232882.P8639417113070330188

`filter[A056020(n+1), A164292(#)]`
-/

namespace A232882.P8639417113070330188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A232882.P8639417113070330188

/-! ## A232882.P9735778441725621008

`filter[A129805(n+1), A164292(#)]`
-/

namespace A232882.P9735778441725621008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A232882.P9735778441725621008

/-! ## A232882.P11387921043579796122

`filter[A166524(n+1), A164292(#)]`
-/

namespace A232882.P11387921043579796122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A232882.P11387921043579796122

/-!
# A232884: Number of (n+1)X(1+1) 0..3 arrays x(i,j) with row sums sum{x(i,j), j=1..1+1} nondecreasing, and column sums sum{i*x(i,j), i=1..n+1} nondecreasing.

The programs for A232884, there is no canonical definition to state claims against.
-/

/-! ## A232884.P14958553054398680085

`A232886(∑[n+1])`
-/

namespace A232884.P14958553054398680085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232886 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232884.P14958553054398680085

/-! ## A232884.P16983823582410282505

`record[A232886(A106255(n+1))]`
-/

namespace A232884.P16983823582410282505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232886 (A106255 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232884.P16983823582410282505

/-! ## A232884.P14775321167368934536

`record[A232886(A130270(n+1))]`
-/

namespace A232884.P14775321167368934536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232886 (A130270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232884.P14775321167368934536

/-!
# A232885: Number of (n+1)X(2+1) 0..3 arrays x(i,j) with row sums sum{x(i,j), j=1..2+1} nondecreasing, and column sums sum{i*x(i,j), i=1..n+1} nondecreasing.

The programs for A232885, there is no canonical definition to state claims against.
-/

/-! ## A232885.P2513889632728515114

`A232886(∑[n+2])`
-/

namespace A232885.P2513889632728515114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232886 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232885.P2513889632728515114

/-!
# A232887: Number of (1+1)X(n+1) 0..3 arrays x(i,j) with row sums sum{x(i,j), j=1..n+1} nondecreasing, and column sums sum{i*x(i,j), i=1..1+1} nondecreasing.

The programs for A232887, there is no canonical definition to state claims against.
-/

/-! ## A232887.P14848408514988760687

`A232886(∑[n]+1)`
-/

namespace A232887.P14848408514988760687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232886 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232887.P14848408514988760687

/-! ## A232887.P16811920531983918637

`and(-1, A232886(A000124(n)))`
-/

namespace A232887.P16811920531983918637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A232886 (A000124 n).toNat)

end

end A232887.P16811920531983918637

/-! ## A232887.P581752043903070410

`record[A232886(A286235(n+1))]`
-/

namespace A232887.P581752043903070410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232886 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232887.P581752043903070410

/-! ## A232887.P10867519438459937008

`record[A010054(n)*A232886(n+1)]`
-/

namespace A232887.P10867519438459937008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232887.P10867519438459937008

/-!
# A232888: Number of (2+1)X(n+1) 0..3 arrays x(i,j) with row sums sum{x(i,j), j=1..n+1} nondecreasing, and column sums sum{i*x(i,j), i=1..2+1} nondecreasing.

The programs for A232888, there is no canonical definition to state claims against.
-/

/-! ## A232888.P3430287959964874703

`A232886(∑[n+1]+2)`
-/

namespace A232888.P3430287959964874703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232886 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232888.P3430287959964874703

/-! ## A232888.P5146996656495466770

`record[A232886(A130270(n+1)+2)]`
-/

namespace A232888.P5146996656495466770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232886 (A130270 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232888.P5146996656495466770

/-!
# A232889: Number of (3+1)X(n+1) 0..3 arrays x(i,j) with row sums sum{x(i,j), j=1..n+1} nondecreasing, and column sums sum{i*x(i,j), i=1..3+1} nondecreasing.

The programs for A232889, there is no canonical definition to state claims against.
-/

/-! ## A232889.P16411845715210603169

`A232886(∑[n+2]+4)`
-/

namespace A232889.P16411845715210603169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232886 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232889.P16411845715210603169

/-! ## A232889.P8511938450571477551

`or(n, A232886(A167614(n+1)))`
-/

namespace A232889.P8511938450571477551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A232886 (A167614 (n + 1)).toNat)

end

end A232889.P8511938450571477551

/-!
# A232890: Denominator of n-th term of sequence (or tree) S of all rational numbers generated by these rules: 0 is in S; if x is in S then x + 1 is in S, and if x + 1 is nonzero, then -1/(x + 1) is in S; duplicates are deleted as they occur.

The programs for A232890, there is no canonical definition to state claims against.
-/

/-! ## A232890.P8327332409815584663

`A333381(A246394(n)-A006370(n))`
-/

namespace A232890.P8327332409815584663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A246394 n - A006370 n).toNat

end

end A232890.P8327332409815584663

/-! ## A232890.P6276174339799478887

`A302243(xor(A057117(n+1), A325535(n)))`
-/

namespace A232890.P6276174339799478887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302243 (Int.xor (A057117 (n + 1)) (A325535 n)).toNat

end

end A232890.P6276174339799478887

/-! ## A232890.P381441821747981508

`A001222(A109316(A048309(n))+A000005(n+1))`
-/

namespace A232890.P381441821747981508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A109316 (A048309 n).toNat + A000005 (n + 1)).toNat

end

end A232890.P381441821747981508

/-! ## A232890.P2464681150954273448

`A193330(A141019(n))`
-/

namespace A232890.P2464681150954273448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (A141019 n).toNat

end

end A232890.P2464681150954273448

/-! ## A232890.P7128091416184653041

`A193330(A140996(∑[n]+1))`
-/

namespace A232890.P7128091416184653041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (A140996 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A232890.P7128091416184653041

/-!
# A232892: Numbers whose sum of proper square divisors is a palindrome in base 10 having at least two digits.

The programs for A232892, there is no canonical definition to state claims against.
-/

/-! ## A232892.P11803201064996287497

`A171675(A142248(n+2))`
-/

namespace A232892.P11803201064996287497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171675 (A142248 (n + 2)).toNat

end

end A232892.P11803201064996287497

/-!
# A232893: Numbers whose sum of square divisors is a palindrome in base 10 having at least two digits.

The programs for A232893, there is no canonical definition to state claims against.
-/

/-! ## A232893.P6789976367459717570

`62*62*A133466(n+1)`
-/

namespace A232893.P6789976367459717570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  62 * (62 * A133466 (n + 1))

end

end A232893.P6789976367459717570

/-!
# A232895: Sequence (or tree) S of all positive integers in the order generated by these rules: 1 and 2 are in S; if x is in S then x + 2 and 2*x are in S, where duplicates are deleted as they occur.

The programs for A232895, there is no canonical definition to state claims against.
-/

/-! ## A232895.P585133295869503582

`A135764(A187829(A066182(n+1)))`
-/

namespace A232895.P585133295869503582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135764 (A187829 (A066182 (n + 1)).toNat).toNat

end

end A232895.P585133295869503582

/-! ## A232895.P13389913574732790132

`A135764(A066182(n+1)^A008835(n+1))`
-/

namespace A232895.P13389913574732790132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135764 (SequenceMachineLib.roundAway ((A066182 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A232895.P13389913574732790132

/-! ## A232895.P9271100402761893124

`A253551(A066182(n+1)^A008835(n+1))`
-/

namespace A232895.P9271100402761893124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253551 (SequenceMachineLib.roundAway ((A066182 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A232895.P9271100402761893124

/-! ## A232895.P7334313847380339364

`A135764(A066182(n+1)%A019021(n+2))`
-/

namespace A232895.P7334313847380339364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135764 (Int.tmod (A066182 (n + 1)) (A019021 (n + 2))).toNat

end

end A232895.P7334313847380339364

/-! ## A232895.P14864593357802880066

`A253551(A008835(n+1)²*A066182(n+1))`
-/

namespace A232895.P14864593357802880066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253551 (A008835 (n + 1) ^ 2 * A066182 (n + 1)).toNat

end

end A232895.P14864593357802880066

/-!
# A232896: a(n) = 3*a(n-1) - 2*a(n-2) - a(n-3) + a(n-4), where a(1) = 1, a(2) = 3, a(3) = 5, a(4) = 8.

The programs for A232896, the canonical program `A232896.P8555422635021155506` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232896 has offset 1).

The definition of A232896 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` (program `A232896.P8555422635021155506`, by `A232896.P8555422635021155506.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A232896.P8555422635021155506

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=8`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A232896

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P8555422635021155506.Spec : Prop :=
  ∀ n, P8555422635021155506.a n = A232896 (n + 1)

theorem P8555422635021155506.correct : P8555422635021155506.Spec := by
  intro n
  simp only [A232896, Nat.add_sub_cancel]

end A232896

/-! ## A232896.P10016479912624495323

`∑[floor(ϕ*a(n-1))]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A232896.P10016479912624495323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232896.P10016479912624495323

namespace A232896

/-- `∑[floor(ϕ*a(n-1))]` -/
def P10016479912624495323.Spec : Prop :=
  ∀ n, P10016479912624495323.a n = A232896 (n + 1)

end A232896

/-! ## A232896.P4684974498538118635

`record[round(ϕ*a(n-2))]+n` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A232896.P4684974498538118635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 2) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A232896.P4684974498538118635

namespace A232896

/-- `record[round(ϕ*a(n-2))]+n` -/
def P4684974498538118635.Spec : Prop :=
  ∀ n, P4684974498538118635.a n = A232896 (n + 1)

end A232896

/-! ## A232896.P3056635316821540099

`∑[a(n-1)+a(n-2)-1]` with `a(0)=1, a(1)=2`
-/

namespace A232896.P3056635316821540099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232896.P3056635316821540099

namespace A232896

/-- `∑[a(n-1)+a(n-2)-1]` -/
def P3056635316821540099.Spec : Prop :=
  ∀ n, P3056635316821540099.a n = A232896 (n + 1)

end A232896

/-! ## A232896.P16221164092452482657

`∑[a(n-1)-(1-a(n-2))]` with `a(0)=1, a(1)=2`
-/

namespace A232896.P16221164092452482657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232896.P16221164092452482657

namespace A232896

/-- `∑[a(n-1)-(1-a(n-2))]` -/
def P16221164092452482657.Spec : Prop :=
  ∀ n, P16221164092452482657.a n = A232896 (n + 1)

end A232896

/-! ## A232896.P10018079225769866105

`record[a(n-1)+a(n-2)]+n` with `a(0)=1, a(1)=0`
-/

namespace A232896.P10018079225769866105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n

end

end A232896.P10018079225769866105

namespace A232896

/-- `record[a(n-1)+a(n-2)]+n` -/
def P10018079225769866105.Spec : Prop :=
  ∀ n, (P10018079225769866105.a n : ℤ) = A232896 (n + 1)

end A232896

/-! ## A232896.P8070572546570369832

`floor(ϕ*(a(n-1)-n)+n+2)` with `a(0)=1`
-/

namespace A232896.P8070572546570369832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) - (n : ℤ) : ℝ) + (n + 2 : ℝ)⌋

end

end A232896.P8070572546570369832

namespace A232896

/-- `floor(ϕ*(a(n-1)-n)+n+2)` -/
def P8070572546570369832.Spec : Prop :=
  ∀ n, P8070572546570369832.a n = A232896 (n + 1)

end A232896

/-! ## A232896.P10017241093381961106

`3-n+a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A232896.P10017241093381961106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 - (n : ℤ) + (a (n - 1) + a (n - 2))

end

end A232896.P10017241093381961106

namespace A232896

/-- `3-n+a(n-1)+a(n-2)` -/
def P10017241093381961106.Spec : Prop :=
  ∀ n, P10017241093381961106.a n = A232896 (n + 1)

end A232896

/-! ## A232896.P14564901494144402920

`3-(n-a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A232896.P14564901494144402920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 - ((n : ℤ) - a (n - 1) - a (n - 2))

end

end A232896.P14564901494144402920

namespace A232896

/-- `3-(n-a(n-1)-a(n-2))` -/
def P14564901494144402920.Spec : Prop :=
  ∀ n, P14564901494144402920.a n = A232896 (n + 1)

end A232896

/-! ## A232896.P4468880409500216671

`∑[A001611(n)]`
-/

namespace A232896.P4468880409500216671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232896.P4468880409500216671

namespace A232896

/-- `∑[A001611(n)]` -/
def P4468880409500216671.Spec : Prop :=
  ∀ n, P4468880409500216671.a n = A232896 (n + 1)

end A232896

/-! ## A232896.P3917768725268747607

`∑[A000045(n)+1]`
-/

namespace A232896.P3917768725268747607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232896.P3917768725268747607

namespace A232896

/-- `∑[A000045(n)+1]` -/
def P3917768725268747607.Spec : Prop :=
  ∀ n, P3917768725268747607.a n = A232896 (n + 1)

end A232896

/-! ## A232896.P183498289313689168

`∑[A157725(n)-1]`
-/

namespace A232896.P183498289313689168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232896.P183498289313689168

namespace A232896

/-- `∑[A157725(n)-1]` -/
def P183498289313689168.Spec : Prop :=
  ∀ n, P183498289313689168.a n = A232896 (n + 1)

end A232896

/-! ## A232896.P17402140207411020440

`∑[A157726(n)-2]`
-/

namespace A232896.P17402140207411020440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232896.P17402140207411020440

namespace A232896

/-- `∑[A157726(n)-2]` -/
def P17402140207411020440.Spec : Prop :=
  ∀ n, P17402140207411020440.a n = A232896 (n + 1)

end A232896

/-! ## A232896.P7325247574250635065

`∑[A157727(n)-3]`
-/

namespace A232896.P7325247574250635065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157727 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232896.P7325247574250635065

namespace A232896

/-- `∑[A157727(n)-3]` -/
def P7325247574250635065.Spec : Prop :=
  ∀ n, P7325247574250635065.a n = A232896 (n + 1)

end A232896

/-! ## A232896.P16052717370356677625

`∑[A157729(n)-4]`
-/

namespace A232896.P16052717370356677625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157729 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232896.P16052717370356677625

namespace A232896

/-- `∑[A157729(n)-4]` -/
def P16052717370356677625.Spec : Prop :=
  ∀ n, P16052717370356677625.a n = A232896 (n + 1)

end A232896

/-! ## A232896.P3625234055277667355

`record[A079977(n)]+n`
-/

namespace A232896.P3625234055277667355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A232896.P3625234055277667355

namespace A232896

/-- `record[A079977(n)]+n` -/
def P3625234055277667355.Spec : Prop :=
  ∀ n, P3625234055277667355.a n = A232896 (n + 1)

end A232896

/-! ## A232896.P14022060517957075379

`record[A097575(n)]+n`
-/

namespace A232896.P14022060517957075379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A232896.P14022060517957075379

namespace A232896

/-- `record[A097575(n)]+n` -/
def P14022060517957075379.Spec : Prop :=
  ∀ n, P14022060517957075379.a n = A232896 (n + 1)

end A232896

/-! ## A232896.P242684570945277643

`record[A212804(n)]+n`
-/

namespace A232896.P242684570945277643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A232896.P242684570945277643

namespace A232896

/-- `record[A212804(n)]+n` -/
def P242684570945277643.Spec : Prop :=
  ∀ n, P242684570945277643.a n = A232896 (n + 1)

end A232896

/-!
# A232897: Number of nonnegative integers not exceeding n which have no decimal digits occurring in n.

The programs for A232897, there is no canonical definition to state claims against.
-/

/-! ## A232897.P15137989931063454283

`1-A079789(n)+n`
-/

namespace A232897.P15137989931063454283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A079789 n + (n : ℤ)

end

end A232897.P15137989931063454283

/-!
# A232899: Number of permutations of [n] cyclically avoiding the consecutive step pattern UDU (U=up, D=down).

The programs for A232899, there is no canonical definition to state claims against.
-/

/-! ## A232899.P4436591384761460457

`A232933(A002620(n+1))`
-/

namespace A232899.P4436591384761460457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232933 (A002620 (n + 1)).toNat

end

end A232899.P4436591384761460457

/-! ## A232899.P15937986480330840965

`A232933(A076921(n+1))`
-/

namespace A232899.P15937986480330840965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232933 (A076921 (n + 1)).toNat

end

end A232899.P15937986480330840965

/-! ## A232899.P1133113509206478079

`A232933(∑[∑[A000035(n)]])`
-/

namespace A232899.P1133113509206478079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232933 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A232899.P1133113509206478079

/-! ## A232899.P3379101738289282009

`A232933(∑[A008624(2*n+1)])`
-/

namespace A232899.P3379101738289282009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232933 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A232899.P3379101738289282009

/-! ## A232899.P15512915788715850870

`A232933(∑[A008624(2*n)]-A008624(2*n))`
-/

namespace A232899.P15512915788715850870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232933 (∑ j ∈ Finset.range (n + 1), f1 j - A008624 (2 * n)).toNat

end

end A232899.P15512915788715850870

/-! ## A232899.P11889751866784626174

`A232933(A008624(2*n+1)*A008624(2*n))`
-/

namespace A232899.P11889751866784626174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232933 (A008624 (2 * n + 1) * A008624 (2 * n)).toNat

end

end A232899.P11889751866784626174

