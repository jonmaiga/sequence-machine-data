import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
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
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
# A138100: The atomic numbers read along the odd-indexed rows of the Janet table of the elements.

The programs for A138100, there is no canonical definition to state claims against.
-/

/-! ## A138100.P2493706400287601272

`comp[A137904(n)+1]+1`
-/

namespace A138100.P2493706400287601272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137904 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A138100.P2493706400287601272

/-! ## A138100.P13597858964450241211

`ceil(A137937(n)+cosh(sin(n)))`
-/

namespace A138100.P13597858964450241211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A137937 n : ℝ) + Real.cosh (Real.sin (n : ℝ))⌉

end

end A138100.P13597858964450241211

/-! ## A138100.P7612414514997178885

`comp[A138101(n+1)-1]+1`
-/

namespace A138100.P7612414514997178885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138101 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A138100.P7612414514997178885

/-! ## A138100.P7000195245060435440

`A168142(2*∑[char[∑[2*n²]]]²)+n`
-/

namespace A138100.P7000195245060435440
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168142 (2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) + (n : ℤ)

end

end A138100.P7000195245060435440

/-! ## A138100.P5825944512319299916

`A137937(n)+A036453(n+1)`
-/

namespace A138100.P5825944512319299916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137937 n + A036453 (n + 1)

end

end A138100.P5825944512319299916

/-! ## A138100.P1863463212355486492

`A138101(n+1)-A138102(n+1)`
-/

namespace A138100.P1863463212355486492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138101 (n + 1) - A138102 (n + 1)

end

end A138100.P1863463212355486492

/-! ## A138100.P12071356406146002403

`A168234(n+1)-A168142(n+1)`
-/

namespace A138100.P12071356406146002403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168234 (n + 1) - A168142 (n + 1)

end

end A138100.P12071356406146002403

/-! ## A138100.P2670630605033512621

`A137904(n)+2-A138102(n+1)`
-/

namespace A138100.P2670630605033512621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137904 n + (2 - A138102 (n + 1))

end

end A138100.P2670630605033512621

/-! ## A138100.P12526192871877077793

`A137937(n)+A036452(2*n+1)`
-/

namespace A138100.P12526192871877077793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137937 n + A036452 (2 * n + 1)

end

end A138100.P12526192871877077793

/-!
# A138101: The atomic numbers read along the even-indexed rows of the Janet table of the elements.

The programs for A138101, there is no canonical definition to state claims against.
-/

/-! ## A138101.P9720312210102612493

`A137904(n)+2`
-/

namespace A138101.P9720312210102612493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137904 n + 2

end

end A138101.P9720312210102612493

/-! ## A138101.P12952627682184555011

`A168142(n+1)+Δ[n²]`
-/

namespace A138101.P12952627682184555011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168142 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A138101.P12952627682184555011

/-! ## A138101.P15581253605015540842

`eq[1, A278111(floor(n/2)+1)]+1`
-/

namespace A138101.P15581253605015540842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278111 (⌊(n : ℚ) / 2⌋ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138101.P15581253605015540842

/-! ## A138101.P14722569360642630604

`A009056(A137904(n))`
-/

namespace A138101.P14722569360642630604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A137904 n).toNat

end

end A138101.P14722569360642630604

/-! ## A138101.P5123890299417084815

`eq[1, A278111(A065033(n))]`
-/

namespace A138101.P5123890299417084815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278111 (A065033 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138101.P5123890299417084815

/-! ## A138101.P7271167378696049631

`A138102(n+1)+A138100(n+1)`
-/

namespace A138101.P7271167378696049631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138102 (n + 1) + A138100 (n + 1)

end

end A138101.P7271167378696049631

/-!
# A138102: The number 2*k^2 repeated 2*k^2 times, k=1 to 4.

The programs for A138102, there is no canonical definition to state claims against.
-/

/-! ## A138102.P11224185511319072591

`A138101(n+1)-A138100(n+1)`
-/

namespace A138102.P11224185511319072591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138101 (n + 1) - A138100 (n + 1)

end

end A138102.P11224185511319072591

/-! ## A138102.P13979646550709157862

`2*∑[char[∑[2*n²]]]²`
-/

namespace A138102.P13979646550709157862
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A138102.P13979646550709157862

/-! ## A138102.P10389572819751364401

`lcm(2, A137575(n+1))`
-/

namespace A138102.P10389572819751364401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A137575 (n + 1))

end

end A138102.P10389572819751364401

/-! ## A138102.P6839771749941408624

`A137575(or(1, n)+1)`
-/

namespace A138102.P6839771749941408624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137575 (Nat.lor 1 n + 1)

end

end A138102.P6839771749941408624

/-! ## A138102.P1745052523459221967

`A137575(gcd(2, n)+n)`
-/

namespace A138102.P1745052523459221967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137575 (Nat.gcd 2 n + n)

end

end A138102.P1745052523459221967

/-! ## A138102.P15813689123802126772

`A137575(ceil(acot(n)+n))`
-/

namespace A138102.P15813689123802126772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137575 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A138102.P15813689123802126772

/-! ## A138102.P7640114587177547490

`A137575(and(n+2, -2))`
-/

namespace A138102.P7640114587177547490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137575 (Int.land (n + 2 : ℤ) (-2)).toNat

end

end A138102.P7640114587177547490

/-! ## A138102.P9013662473102636436

`A137575(n+2-n%2)`
-/

namespace A138102.P9013662473102636436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137575 (n + 2 - n % 2)

end

end A138102.P9013662473102636436

/-! ## A138102.P16196290578160332153

`A001105(∑[char[∑[2*n²]]])`
-/

namespace A138102.P16196290578160332153
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138102.P16196290578160332153

/-! ## A138102.P16547108326006094962

`A137575(∑[floor(2^(-1)^n)])`
-/

namespace A138102.P16547108326006094962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((-1) ^ n : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137575 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A138102.P16547108326006094962

/-!
# A138103: Numbers with an odd number of 1's in base 6 expansion.

The programs for A138103, there is no canonical definition to state claims against.
-/

/-! ## A138103.P18271419278963489907

`lt[0, A268643(A007092(n))%2]`
-/

namespace A138103.P18271419278963489907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268643 (A007092 n).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A138103.P18271419278963489907

/-!
# A138104: 2^(n-th semiprime) - 1.

The programs for A138104, the canonical program `A138104.P3179048389090145262` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138104 has offset 1).

The definition of A138104 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138104.P3179048389090145262

`2^A001358(n+1)-1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A138104

/-- `2^A001358(n+1)-1` -/
def P3179048389090145262.Spec : Prop :=
  ∀ n, P3179048389090145262.a n = (A138104 (n + 1) : ℚ)

end A138104

/-! ## A138104.P3521685737951032349

`A000225(eq[2, ∑{e}[n, #]])`
-/

namespace A138104.P3521685737951032349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A138104.P3521685737951032349

namespace A138104

/-- `A000225(eq[2, ∑{e}[n, #]])` -/
def P3521685737951032349.Spec : Prop :=
  ∀ n, P3521685737951032349.a n = A138104 (n + 1)

end A138104

/-! ## A138104.P8898831395572521506

`2^sqrt(A074985(n+1))-1`
-/

namespace A138104.P8898831395572521506
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.sqrt (A074985 (n + 1) : ℝ)) - 1

end

end A138104.P8898831395572521506

namespace A138104

/-- `2^sqrt(A074985(n+1))-1` -/
def P8898831395572521506.Spec : Prop :=
  ∀ n, P8898831395572521506.a n = (A138104 (n + 1) : ℝ)

end A138104

/-! ## A138104.P4771039524876125727

`2^(A088707(n+1)-1)-1`
-/

namespace A138104.P4771039524876125727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A088707 (n + 1) - 1 : ℤ) - 1

end

end A138104.P4771039524876125727

namespace A138104

/-- `2^(A088707(n+1)-1)-1` -/
def P4771039524876125727.Spec : Prop :=
  ∀ n, P4771039524876125727.a n = (A138104 (n + 1) : ℚ)

end A138104

/-! ## A138104.P10952747334807501859

`2^(A075818(n+1)/2)-1`
-/

namespace A138104.P10952747334807501859
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((A075818 (n + 1) : ℚ) / 2 : ℝ) - 1

end

end A138104.P10952747334807501859

namespace A138104

/-- `2^(A075818(n+1)/2)-1` -/
def P10952747334807501859.Spec : Prop :=
  ∀ n, P10952747334807501859.a n = (A138104 (n + 1) : ℝ)

end A138104

/-! ## A138104.P5171526874867827685

`2^(eq[2, A001222(n+1)]+1)-1`
-/

namespace A138104.P5171526874867827685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℤ) - 1

end

end A138104.P5171526874867827685

namespace A138104

/-- `2^(eq[2, A001222(n+1)]+1)-1` -/
def P5171526874867827685.Spec : Prop :=
  ∀ n, P5171526874867827685.a n = A138104 (n + 1)

end A138104

/-! ## A138104.P12395267010453969800

`2^(eq[2, A008481(n+1)]+1)-1`
-/

namespace A138104.P12395267010453969800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℤ) - 1

end

end A138104.P12395267010453969800

namespace A138104

/-- `2^(eq[2, A008481(n+1)]+1)-1` -/
def P12395267010453969800.Spec : Prop :=
  ∀ n, P12395267010453969800.a n = A138104 (n + 1)

end A138104

/-! ## A138104.P7864606016573545567

`2^(eq[2, A033273(n+1)]+1)-1`
-/

namespace A138104.P7864606016573545567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℤ) - 1

end

end A138104.P7864606016573545567

namespace A138104

/-- `2^(eq[2, A033273(n+1)]+1)-1` -/
def P7864606016573545567.Spec : Prop :=
  ∀ n, P7864606016573545567.a n = A138104 (n + 1)

end A138104

/-! ## A138104.P5451385068339342058

`2^(A175708(n+1)+1+n)-1`
-/

namespace A138104.P5451385068339342058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A175708 (n + 1) + 1 + (n : ℤ) : ℤ) - 1

end

end A138104.P5451385068339342058

namespace A138104

/-- `2^(A175708(n+1)+1+n)-1` -/
def P5451385068339342058.Spec : Prop :=
  ∀ n, P5451385068339342058.a n = (A138104 (n + 1) : ℚ)

end A138104

/-! ## A138104.P15264557062023685644

`2^eq[n, n-a(A001222(n))]-1` with `a(0)=2, a(1)=2`
-/

namespace A138104.P15264557062023685644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  (n : ℤ) - f2 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A138104.P15264557062023685644

namespace A138104

/-- `2^eq[n, n-a(A001222(n))]-1` -/
def P15264557062023685644.Spec : Prop :=
  ∀ n, P15264557062023685644.a n = A138104 (n + 1)

end A138104

/-! ## A138104.P11031866458197753612

`A000225(A001358(n+1))`
-/

namespace A138104.P11031866458197753612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A001358 (n + 1)).toNat

end

end A138104.P11031866458197753612

namespace A138104

/-- `A000225(A001358(n+1))` -/
def P11031866458197753612.Spec : Prop :=
  ∀ n, P11031866458197753612.a n = A138104 (n + 1)

end A138104

/-! ## A138104.P6926437553198890776

`A078485(A088707(n+1))`
-/

namespace A138104.P6926437553198890776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078485 (A088707 (n + 1)).toNat

end

end A138104.P6926437553198890776

namespace A138104

/-- `A078485(A088707(n+1))` -/
def P6926437553198890776.Spec : Prop :=
  ∀ n, P6926437553198890776.a n = A138104 (n + 1)

end A138104

/-! ## A138104.P13505781169330030832

`A126646(A186621(n+1))`
-/

namespace A138104.P13505781169330030832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A186621 (n + 1)).toNat

end

end A138104.P13505781169330030832

namespace A138104

/-- `A126646(A186621(n+1))` -/
def P13505781169330030832.Spec : Prop :=
  ∀ n, P13505781169330030832.a n = A138104 (n + 1)

end A138104

/-! ## A138104.P5876085221620261427

`A243071(A106349(n+1))`
-/

namespace A138104.P5876085221620261427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A106349 (n + 1)).toNat

end

end A138104.P5876085221620261427

namespace A138104

/-- `A243071(A106349(n+1))` -/
def P5876085221620261427.Spec : Prop :=
  ∀ n, P5876085221620261427.a n = A138104 (n + 1)

end A138104

/-! ## A138104.P12843783852433507172

`A387325(A075818(n+1))`
-/

namespace A138104.P12843783852433507172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387325 (A075818 (n + 1)).toNat

end

end A138104.P12843783852433507172

namespace A138104

/-- `A387325(A075818(n+1))` -/
def P12843783852433507172.Spec : Prop :=
  ∀ n, P12843783852433507172.a n = A138104 (n + 1)

end A138104

/-! ## A138104.P3098546134049270934

`A290829(A176629(n+1))`
-/

namespace A138104.P3098546134049270934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290829 (A176629 (n + 1)).toNat

end

end A138104.P3098546134049270934

namespace A138104

/-- `A290829(A176629(n+1))` -/
def P3098546134049270934.Spec : Prop :=
  ∀ n, P3098546134049270934.a n = A138104 (n + 1)

end A138104

/-! ## A138104.P2369742047848822260

`A000225(A176540(n+2))`
-/

namespace A138104.P2369742047848822260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A176540 (n + 2)).toNat

end

end A138104.P2369742047848822260

namespace A138104

/-- `A000225(A176540(n+2))` -/
def P2369742047848822260.Spec : Prop :=
  ∀ n, P2369742047848822260.a n = A138104 (n + 1)

end A138104

/-! ## A138104.P10576186502544640265

`A000225(eq[2, A105700(n)])`
-/

namespace A138104.P10576186502544640265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138104.P10576186502544640265

namespace A138104

/-- `A000225(eq[2, A105700(n)])` -/
def P10576186502544640265.Spec : Prop :=
  ∀ n, P10576186502544640265.a n = A138104 (n + 1)

end A138104

/-! ## A138104.P9301154008911246006

`A000225(eq[2, A226378(n)])`
-/

namespace A138104.P9301154008911246006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138104.P9301154008911246006

namespace A138104

/-- `A000225(eq[2, A226378(n)])` -/
def P9301154008911246006.Spec : Prop :=
  ∀ n, P9301154008911246006.a n = A138104 (n + 1)

end A138104

/-! ## A138104.P17766719102958990553

`A000079(sqrt(A074985(n+1)))-1`
-/

namespace A138104.P17766719102958990553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat - 1

end

end A138104.P17766719102958990553

namespace A138104

/-- `A000079(sqrt(A074985(n+1)))-1` -/
def P17766719102958990553.Spec : Prop :=
  ∀ n, P17766719102958990553.a n = A138104 (n + 1)

end A138104

/-!
# A138105: Partial sums of non-Fibonacci numbers A001690.

The programs for A138105, the canonical program `A138105.P2646176102833531750` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138105 has offset 1).

The definition of A138105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138105.P15843876816195005614

`∑[comp[round(ϕ*a(n-1))]]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A138105.P15843876816195005614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1] fun n f2 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f2 (n - 1) : ℝ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138105.P15843876816195005614

namespace A138105

/-- `∑[comp[round(ϕ*a(n-1))]]` -/
def P15843876816195005614.Spec : Prop :=
  ∀ n, (P15843876816195005614.a n : ℤ) = A138105 (n + 1)

end A138105

/-! ## A138105.P16574208560277038105

`∑[comp[a(n-2)+a(n-1)]]` with `a(0)=0, a(1)=1`
-/

namespace A138105.P16574208560277038105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 2) + f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138105.P16574208560277038105

namespace A138105

/-- `∑[comp[a(n-2)+a(n-1)]]` -/
def P16574208560277038105.Spec : Prop :=
  ∀ n, (P16574208560277038105.a n : ℤ) = A138105 (n + 1)

end A138105

/-! ## A138105.P3989096364357327550

`∑[comp[A000045(n)]]`
-/

namespace A138105.P3989096364357327550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138105.P3989096364357327550

namespace A138105

/-- `∑[comp[A000045(n)]]` -/
def P3989096364357327550.Spec : Prop :=
  ∀ n, (P3989096364357327550.a n : ℤ) = A138105 (n + 1)

end A138105

/-! ## A138105.P747116448781736703

`∑[comp[A053602(n)]]`
-/

namespace A138105.P747116448781736703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138105.P747116448781736703

namespace A138105

/-- `∑[comp[A053602(n)]]` -/
def P747116448781736703.Spec : Prop :=
  ∀ n, (P747116448781736703.a n : ℤ) = A138105 (n + 1)

end A138105

/-! ## A138105.P10201094768716299587

`∑[comp[A079977(n)]]`
-/

namespace A138105.P10201094768716299587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138105.P10201094768716299587

namespace A138105

/-- `∑[comp[A079977(n)]]` -/
def P10201094768716299587.Spec : Prop :=
  ∀ n, (P10201094768716299587.a n : ℤ) = A138105 (n + 1)

end A138105

/-! ## A138105.P5661585853388973659

`∑[comp[A098054(n)]]`
-/

namespace A138105.P5661585853388973659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098054 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138105.P5661585853388973659

namespace A138105

/-- `∑[comp[A098054(n)]]` -/
def P5661585853388973659.Spec : Prop :=
  ∀ n, (P5661585853388973659.a n : ℤ) = A138105 (n + 1)

end A138105

/-! ## A138105.P17761423283047823192

`∑[comp[A108037(n)]]`
-/

namespace A138105.P17761423283047823192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108037 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138105.P17761423283047823192

namespace A138105

/-- `∑[comp[A108037(n)]]` -/
def P17761423283047823192.Spec : Prop :=
  ∀ n, (P17761423283047823192.a n : ℤ) = A138105 (n + 1)

end A138105

/-! ## A138105.P12244242249374365317

`∑[comp[A128541(n)]]`
-/

namespace A138105.P12244242249374365317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128541 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138105.P12244242249374365317

namespace A138105

/-- `∑[comp[A128541(n)]]` -/
def P12244242249374365317.Spec : Prop :=
  ∀ n, (P12244242249374365317.a n : ℤ) = A138105 (n + 1)

end A138105

/-! ## A138105.P382343302798426137

`∑[comp[A141169(n)]]`
-/

namespace A138105.P382343302798426137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138105.P382343302798426137

namespace A138105

/-- `∑[comp[A141169(n)]]` -/
def P382343302798426137.Spec : Prop :=
  ∀ n, (P382343302798426137.a n : ℤ) = A138105 (n + 1)

end A138105

/-! ## A138105.P8377317245344736581

`∑[comp[A159864(n)]]`
-/

namespace A138105.P8377317245344736581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159864 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138105.P8377317245344736581

namespace A138105

/-- `∑[comp[A159864(n)]]` -/
def P8377317245344736581.Spec : Prop :=
  ∀ n, (P8377317245344736581.a n : ℤ) = A138105 (n + 1)

end A138105

/-! ## A138105.P2591419460515829619

`∑[comp[A212804(n)]]`
-/

namespace A138105.P2591419460515829619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138105.P2591419460515829619

namespace A138105

/-- `∑[comp[A212804(n)]]` -/
def P2591419460515829619.Spec : Prop :=
  ∀ n, (P2591419460515829619.a n : ℤ) = A138105 (n + 1)

end A138105

/-! ## A138105.P11962585437023033042

`∑[comp[A216229(n)]]`
-/

namespace A138105.P11962585437023033042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216229 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138105.P11962585437023033042

namespace A138105

/-- `∑[comp[A216229(n)]]` -/
def P11962585437023033042.Spec : Prop :=
  ∀ n, (P11962585437023033042.a n : ℤ) = A138105 (n + 1)

end A138105

/-! ## A138105.P2646176102833531750

`∑[A001690(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138105

/-- `∑[A001690(n+1)]` -/
def P2646176102833531750.Spec : Prop :=
  ∀ n, P2646176102833531750.a n = A138105 (n + 1)

theorem P2646176102833531750.correct : P2646176102833531750.Spec := by
  intro n
  simp only [A138105, Nat.add_sub_cancel]

end A138105

/-! ## A138105.P17688969997095716613

`∑[comp[Δ[A001611(n)]]]`
-/

namespace A138105.P17688969997095716613
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138105.P17688969997095716613

namespace A138105

/-- `∑[comp[Δ[A001611(n)]]]` -/
def P17688969997095716613.Spec : Prop :=
  ∀ n, (P17688969997095716613.a n : ℤ) = A138105 (n + 1)

end A138105

/-! ## A138105.P810355141707311648

`∑[comp[A202451(n+1)]]`
-/

namespace A138105.P810355141707311648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202451 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138105.P810355141707311648

namespace A138105

/-- `∑[comp[A202451(n+1)]]` -/
def P810355141707311648.Spec : Prop :=
  ∀ n, (P810355141707311648.a n : ℤ) = A138105 (n + 1)

end A138105

/-! ## A138105.P670853450591657322

`∑[comp[A227431(n+1)]]`
-/

namespace A138105.P670853450591657322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227431 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138105.P670853450591657322

namespace A138105

/-- `∑[comp[A227431(n+1)]]` -/
def P670853450591657322.Spec : Prop :=
  ∀ n, (P670853450591657322.a n : ℤ) = A138105 (n + 1)

end A138105

/-! ## A138105.P15574476822199406880

`∑[comp[A001911(n)]+2]`
-/

namespace A138105.P15574476822199406880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138105.P15574476822199406880

namespace A138105

/-- `∑[comp[A001911(n)]+2]` -/
def P15574476822199406880.Spec : Prop :=
  ∀ n, (P15574476822199406880.a n : ℤ) = A138105 (n + 1)

end A138105

/-! ## A138105.P2922297409552517854

`∑[comp[A302126(2*n)]]`
-/

namespace A138105.P2922297409552517854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138105.P2922297409552517854

namespace A138105

/-- `∑[comp[A302126(2*n)]]` -/
def P2922297409552517854.Spec : Prop :=
  ∀ n, (P2922297409552517854.a n : ℤ) = A138105 (n + 1)

end A138105

/-! ## A138105.P2661605681744065566

`∑[comp[A065220(n)+n]]`
-/

namespace A138105.P2661605681744065566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138105.P2661605681744065566

namespace A138105

/-- `∑[comp[A065220(n)+n]]` -/
def P2661605681744065566.Spec : Prop :=
  ∀ n, (P2661605681744065566.a n : ℤ) = A138105 (n + 1)

end A138105

/-!
# A138106: A triangular sequence of coefficients based on the expansion of a Morse potential type function: p(x,t) = exp(x*t)*(exp(-2*t) - 2*exp(-t)).

The programs for A138106, the canonical program `A138106.P6247191427024848150` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138106 has offset 1).

The definition of A138106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138106.P6247191427024848150

`(A130321(n)-2)*A130595(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A138106

/-- `(A130321(n)-2)*A130595(n)` -/
def P6247191427024848150.Spec : Prop :=
  ∀ n, P6247191427024848150.a n = A138106 (n + 1)

theorem P6247191427024848150.correct : P6247191427024848150.Spec := by
  intro n
  simp only [A138106, Nat.add_sub_cancel]

end A138106

/-! ## A138106.P13226504212905624930

`A000918(A025581(n))*A130595(n)`
-/

namespace A138106.P13226504212905624930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (A025581 n).toNat * A130595 n

end

end A138106.P13226504212905624930

namespace A138106

/-- `A000918(A025581(n))*A130595(n)` -/
def P13226504212905624930.Spec : Prop :=
  ∀ n, P13226504212905624930.a n = A138106 (n + 1)

end A138106

/-! ## A138106.P8823798047819069745

`A007318(n)*A122959(A004736(n+1))`
-/

namespace A138106.P8823798047819069745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A122959 (A004736 (n + 1)).toNat

end

end A138106.P8823798047819069745

namespace A138106

/-- `A007318(n)*A122959(A004736(n+1))` -/
def P8823798047819069745.Spec : Prop :=
  ∀ n, P8823798047819069745.a n = A138106 (n + 1)

end A138106

/-! ## A138106.P1070437889854418842

`abs(A130595(n))*A122959(A004736(n+1))`
-/

namespace A138106.P1070437889854418842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| * A122959 (A004736 (n + 1)).toNat

end

end A138106.P1070437889854418842

namespace A138106

/-- `abs(A130595(n))*A122959(A004736(n+1))` -/
def P1070437889854418842.Spec : Prop :=
  ∀ n, P1070437889854418842.a n = A138106 (n + 1)

end A138106

/-! ## A138106.P15374655035645504180

`Δ[A102363(n)]*A122959(A004736(n+1))`
-/

namespace A138106.P15374655035645504180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A122959 (A004736 (n + 1)).toNat

end

end A138106.P15374655035645504180

namespace A138106

/-- `Δ[A102363(n)]*A122959(A004736(n+1))` -/
def P15374655035645504180.Spec : Prop :=
  ∀ n, P15374655035645504180.a n = A138106 (n + 1)

end A138106

/-! ## A138106.P5815853481621454968

`A130595(n)*A326050(A130321(n))`
-/

namespace A138106.P5815853481621454968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n * A326050 (A130321 n).toNat

end

end A138106.P5815853481621454968

namespace A138106

/-- `A130595(n)*A326050(A130321(n))` -/
def P5815853481621454968.Spec : Prop :=
  ∀ n, P5815853481621454968.a n = A138106 (n + 1)

end A138106

/-!
# A138107: Infinite square array: T(n,k) = number of directed multigraphs with loops with n arcs and k vertices; read by falling antidiagonals.

The programs for A138107, there is no canonical definition to state claims against.
-/

/-! ## A138107.P17957393917964745136

`A059939(ceil(exp(A138352(n))))`
-/

namespace A138107.P17957393917964745136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 ⌈Real.exp (A138352 n : ℝ)⌉.toNat

end

end A138107.P17957393917964745136

/-! ## A138107.P8771427196044041530

`A059939(ceil(exp(A277239(n))))`
-/

namespace A138107.P8771427196044041530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 ⌈Real.exp (A277239 n : ℝ)⌉.toNat

end

end A138107.P8771427196044041530

/-! ## A138107.P3596316337848932297

`A059939(round(exp(A138352(n))))`
-/

namespace A138107.P3596316337848932297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 (SequenceMachineLib.roundAway (Real.exp (A138352 n : ℝ))).toNat

end

end A138107.P3596316337848932297

/-! ## A138107.P18218806622316967323

`A059939(round(exp(A277239(n))))`
-/

namespace A138107.P18218806622316967323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 (SequenceMachineLib.roundAway (Real.exp (A277239 n : ℝ))).toNat

end

end A138107.P18218806622316967323

/-! ## A138107.P1016758993473749672

`A000523(ceil(cosh(A138352(n))))`
-/

namespace A138107.P1016758993473749672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 ⌈Real.cosh (A138352 n : ℝ)⌉.toNat

end

end A138107.P1016758993473749672

/-!
# A138108: A triangular sequence of coefficients based on the expansion of an Hamiltonian resolvent or Green's function: p(x,t)=Exp[x*t]/(x-t); where t is taken as the Hamiltonian variable and x as the complex variable.

The programs for A138108, there is no canonical definition to state claims against.
-/

/-! ## A138108.P12946444760765418532

`A081123(A080883(n))*A260492(n)`
-/

namespace A138108.P12946444760765418532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A080883 n).toNat * A260492 n

end

end A138108.P12946444760765418532

/-! ## A138108.P11534983029937739188

`gcd(A158706(n), A158777(n))`
-/

namespace A138108.P11534983029937739188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A158706 n) (A158777 n)

end

end A138108.P11534983029937739188

/-! ## A138108.P15583880462551414086

`A158777(n)%A280692(A007504(2*n+3))`
-/

namespace A138108.P15583880462551414086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158777 n) (A280692 (A007504 (2 * n + 3)).toNat)

end

end A138108.P15583880462551414086

/-! ## A138108.P2938596046659962655

`A158777(n)/A158777(A059117(n))`
-/

namespace A138108.P2938596046659962655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158777 n : ℚ) / (A158777 (A059117 n).toNat : ℚ)

end

end A138108.P2938596046659962655

/-! ## A138108.P18117950091424846083

`A158777(n)/A060904(A183104(n+1))`
-/

namespace A138108.P18117950091424846083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158777 n : ℚ) / (A060904 (A183104 (n + 1)).toNat : ℚ)

end

end A138108.P18117950091424846083

/-!
# A138109: Positive integers k whose smallest prime factor is greater than the cube root of k and strictly less than the square root of k.

The programs for A138109, there is no canonical definition to state claims against.
-/

/-! ## A138109.P1978006770041319940

`filter[A251728(n+1), A008966(#)]`
-/

namespace A138109.P1978006770041319940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A138109.P1978006770041319940

/-! ## A138109.P12482320142928811677

`filter[A251728(n+1), A324903(#)]`
-/

namespace A138109.P12482320142928811677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A138109.P12482320142928811677

/-! ## A138109.P11241901903117850993

`filter[A377713(n+1), A354927(#)]`
-/

namespace A138109.P11241901903117850993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A138109.P11241901903117850993

/-! ## A138109.P1957812713157418793

`filter[A393644(n+1), A354927(#)]`
-/

namespace A138109.P1957812713157418793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A138109.P1957812713157418793

/-! ## A138109.P15879343295505615560

`filter[A393644(n+1), A374128(#)]`
-/

namespace A138109.P15879343295505615560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A138109.P15879343295505615560

/-! ## A138109.P3286915486502503292

`filter[A251728(n+1), A049240(#)]`
-/

namespace A138109.P3286915486502503292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A138109.P3286915486502503292

/-! ## A138109.P4099123478325923765

`filter[A251728(n+1), A181183(#)]`
-/

namespace A138109.P4099123478325923765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A138109.P4099123478325923765

/-! ## A138109.P994836440021257735

`filter[A377713(n+1), A064911(#)]`
-/

namespace A138109.P994836440021257735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A138109.P994836440021257735

/-! ## A138109.P6533861291276245096

`filter[A393644(n+1), A064911(#)]`
-/

namespace A138109.P6533861291276245096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A138109.P6533861291276245096

/-! ## A138109.P6693418667790451764

`filter[A377713(n+1), A101040(#)]`
-/

namespace A138109.P6693418667790451764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A138109.P6693418667790451764

/-! ## A138109.P12528396876510596783

`filter[A393644(n+1), A101040(#)]`
-/

namespace A138109.P12528396876510596783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A138109.P12528396876510596783

/-! ## A138109.P6629266730448135752

`filter[A377713(n+1), A123927(#)]`
-/

namespace A138109.P6629266730448135752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A138109.P6629266730448135752

/-! ## A138109.P4289079961104347023

`filter[A251728(n+1), A262684(#)]`
-/

namespace A138109.P4289079961104347023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A138109.P4289079961104347023

/-! ## A138109.P11564349237432180466

`filter[A393644(n+1), A123927(#)]`
-/

namespace A138109.P11564349237432180466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A138109.P11564349237432180466

/-! ## A138109.P14411518366835214231

`filter[A251728(n+1), A280710(#)]`
-/

namespace A138109.P14411518366835214231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A138109.P14411518366835214231

/-! ## A138109.P3363423232648962751

`filter[A251728(n+1), A295316(#)]`
-/

namespace A138109.P3363423232648962751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A138109.P3363423232648962751

/-! ## A138109.P11350207903662371261

`filter[A251728(n+1), A323154(#)]`
-/

namespace A138109.P11350207903662371261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A138109.P11350207903662371261

/-! ## A138109.P16224439266608100900

`filter[A251728(n+1), A343219(#)]`
-/

namespace A138109.P16224439266608100900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343219 (f1 j).toNat = 1) n)

end

end A138109.P16224439266608100900

/-! ## A138109.P12456815621347756116

`filter[A251728(n+1), A353471(#)]`
-/

namespace A138109.P12456815621347756116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A138109.P12456815621347756116

/-! ## A138109.P14607358462085618173

`filter[A251728(n+1), A353519(#)]`
-/

namespace A138109.P14607358462085618173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A138109.P14607358462085618173

/-!
# A138110: Table T(d,n) read column by column: the n-th term in the sequence of the d-th differences of A138112, d=0..4.

The programs for A138110, there is no canonical definition to state claims against.
-/

/-! ## A138110.P1481915894911919804

`Δ[A127839(n+2)]%A111307(A261611(n))`
-/

namespace A138110.P1481915894911919804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127839 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A111307 (A261611 n).toNat)

end

end A138110.P1481915894911919804

/-! ## A138110.P3440778391458246000

`A001221(A011782(n))*Δ[A127839(n+2)]`
-/

namespace A138110.P3440778391458246000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127839 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A011782 n).toNat * (f1 (n + 1) - f1 n)

end

end A138110.P3440778391458246000

/-! ## A138110.P13397220783754621973

`Δ[A127839(n+2)]^A285818(A285852(n))`
-/

namespace A138110.P13397220783754621973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127839 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A285818 (A285852 n).toNat : ℤ)

end

end A138110.P13397220783754621973

/-! ## A138110.P8716645485529565985

`Δ[A037823(A269646(n+1)+A007088(n)%7)]`
-/

namespace A138110.P8716645485529565985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037823 (A269646 (n + 1) + Int.tmod (A007088 n) 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138110.P8716645485529565985

/-! ## A138110.P13358351812390440226

`Δ[A043277(A205295(n)+n)]`
-/

namespace A138110.P13358351812390440226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (A205295 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138110.P13358351812390440226

/-!
# A138111: Prime numbers p1 such that p1*p2 - (p2 mod p1) is a prime, where p2 is the next prime after p1.

The programs for A138111, there is no canonical definition to state claims against.
-/

/-! ## A138111.P6965539991212732694

`A064989(A154550(n+1))`
-/

namespace A138111.P6965539991212732694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A154550 (n + 1)).toNat

end

end A138111.P6965539991212732694

/-! ## A138111.P2970147140998665322

`A065769(p?[A154550(n+1)])`
-/

namespace A138111.P2970147140998665322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065769 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A138111.P2970147140998665322

/-! ## A138111.P5105243975816586894

`A252463(p?[A154550(n+1)])`
-/

namespace A138111.P5105243975816586894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A138111.P5105243975816586894

/-! ## A138111.P230156024271830436

`A268674(p?[A154550(n+1)])`
-/

namespace A138111.P230156024271830436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A138111.P230156024271830436

/-!
# A138112: a(n)=3a(n-1)-4a(n-2)+2a(n-3)-a(n-4), a(0)=a(1)=a(2)=0, a(3)=1, a(4)=3.

The programs for A138112, the canonical program `A138112.P15272391956144641811` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138112 has offset 0).

The definition of A138112 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-4*a(n-2)+2*a(n-3)-a(n-4)` (program `A138112.P15272391956144641811`, by `A138112.P15272391956144641811.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138112.P15272391956144641811

`3*a(n-1)-4*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138112

/-- `3*a(n-1)-4*a(n-2)+2*a(n-3)-a(n-4)` -/
def P15272391956144641811.Spec : Prop :=
  ∀ n, P15272391956144641811.a n = A138112 n

theorem P15272391956144641811.correct : P15272391956144641811.Spec := by
  intro n
  simp only [A138112]

end A138112

/-! ## A138112.P12379352078458099951

`ogf(x^3/(1-3x+4x^2-2x^3+x^4))`
-/

namespace A138112.P12379352078458099951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1] [1, -3, 4, -2, 1] n

end

end A138112.P12379352078458099951

namespace A138112

/-- `ogf(x^3/(1-3x+4x^2-2x^3+x^4))` -/
def P12379352078458099951.Spec : Prop :=
  ∀ n, P12379352078458099951.a n = A138112 n

end A138112

/-! ## A138112.P14012284407970110222

`∑[A100334(A004275(n)-n)]`
-/

namespace A138112.P14012284407970110222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100334 (A004275 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138112.P14012284407970110222

namespace A138112

/-- `∑[A100334(A004275(n)-n)]` -/
def P14012284407970110222.Spec : Prop :=
  ∀ n, P14012284407970110222.a n = A138112 n

end A138112

/-! ## A138112.P10055600494140678432

`A105371(abs(A023443(n)))-A105371(n)`
-/

namespace A138112.P10055600494140678432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105371 |A023443 n|.toNat - A105371 n

end

end A138112.P10055600494140678432

namespace A138112

/-- `A105371(abs(A023443(n)))-A105371(n)` -/
def P10055600494140678432.Spec : Prop :=
  ∀ n, P10055600494140678432.a n = A138112 n

end A138112

/-! ## A138112.P8146659529717886444

`A105371(abs(A024000(n)))-A105371(n)`
-/

namespace A138112.P8146659529717886444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105371 |A024000 n|.toNat - A105371 n

end

end A138112.P8146659529717886444

namespace A138112

/-- `A105371(abs(A024000(n)))-A105371(n)` -/
def P8146659529717886444.Spec : Prop :=
  ∀ n, P8146659529717886444.a n = A138112 n

end A138112

/-! ## A138112.P8808021412223834190

`A138003(n)-(A105371(n)+A100334(n))`
-/

namespace A138112.P8808021412223834190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138003 n - (A105371 n + A100334 n)

end

end A138112.P8808021412223834190

namespace A138112

/-- `A138003(n)-(A105371(n)+A100334(n))` -/
def P8808021412223834190.Spec : Prop :=
  ∀ n, P8808021412223834190.a n = A138112 n

end A138112

/-! ## A138112.P1086664503210822712

`A103311(n+1)+A138003(n)-A138003(n+1)`
-/

namespace A138112.P1086664503210822712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103311 (n + 1) + (A138003 n - A138003 (n + 1))

end

end A138112.P1086664503210822712

namespace A138112

/-- `A103311(n+1)+A138003(n)-A138003(n+1)` -/
def P1086664503210822712.Spec : Prop :=
  ∀ n, P1086664503210822712.a n = A138112 n

end A138112

/-! ## A138112.P12752649636299402848

`Δ[A100334(n)]-A105371(n+1)`
-/

namespace A138112.P12752649636299402848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A105371 (n + 1)

end

end A138112.P12752649636299402848

namespace A138112

/-- `Δ[A100334(n)]-A105371(n+1)` -/
def P12752649636299402848.Spec : Prop :=
  ∀ n, P12752649636299402848.a n = A138112 n

end A138112

/-! ## A138112.P14133468632506446381

`A103311(n+1)-A105371(n+1)`
-/

namespace A138112.P14133468632506446381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103311 (n + 1) - A105371 (n + 1)

end

end A138112.P14133468632506446381

namespace A138112

/-- `A103311(n+1)-A105371(n+1)` -/
def P14133468632506446381.Spec : Prop :=
  ∀ n, P14133468632506446381.a n = A138112 n

end A138112

/-! ## A138112.P13130944460746308929

`A100334(n+1)-(A105371(n+1)+A100334(n))`
-/

namespace A138112.P13130944460746308929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100334 (n + 1) - (A105371 (n + 1) + A100334 n)

end

end A138112.P13130944460746308929

namespace A138112

/-- `A100334(n+1)-(A105371(n+1)+A100334(n))` -/
def P13130944460746308929.Spec : Prop :=
  ∀ n, P13130944460746308929.a n = A138112 n

end A138112

/-! ## A138112.P17761653860983048695

`Δ[Δ[Δ[A103311(n)]]]`
-/

namespace A138112.P17761653860983048695
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103311 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138112.P17761653860983048695

namespace A138112

/-- `Δ[Δ[Δ[A103311(n)]]]` -/
def P17761653860983048695.Spec : Prop :=
  ∀ n, P17761653860983048695.a n = A138112 n

end A138112

/-! ## A138112.P9174253843792936115

`Δ[Δ[A105371(n)-A100334(n)]]`
-/

namespace A138112.P9174253843792936115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105371 n - A100334 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138112.P9174253843792936115

namespace A138112

/-- `Δ[Δ[A105371(n)-A100334(n)]]` -/
def P9174253843792936115.Spec : Prop :=
  ∀ n, P9174253843792936115.a n = A138112 n

end A138112

/-! ## A138112.P16079249633494852687

`A139748(n)-A139761(n)`
-/

namespace A138112.P16079249633494852687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139748 n - A139761 n

end

end A138112.P16079249633494852687

namespace A138112

/-- `A139748(n)-A139761(n)` -/
def P16079249633494852687.Spec : Prop :=
  ∀ n, P16079249633494852687.a n = A138112 n

end A138112

/-! ## A138112.P14198896292094543034

`A139748(n)-Δ[A139398(n)]`
-/

namespace A138112.P14198896292094543034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139748 n - (f1 (n + 1) - f1 n)

end

end A138112.P14198896292094543034

namespace A138112

/-- `A139748(n)-Δ[A139398(n)]` -/
def P14198896292094543034.Spec : Prop :=
  ∀ n, P14198896292094543034.a n = A138112 n

end A138112

/-! ## A138112.P17762192554187211436

`Δ[A139761(n)-A139398(n)]`
-/

namespace A138112.P17762192554187211436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139761 n - A139398 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138112.P17762192554187211436

namespace A138112

/-- `Δ[A139761(n)-A139398(n)]` -/
def P17762192554187211436.Spec : Prop :=
  ∀ n, P17762192554187211436.a n = A138112 n

end A138112

/-! ## A138112.P14460802268484038932

`A139761(n+1)-2*A139761(n)`
-/

namespace A138112.P14460802268484038932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139761 (n + 1) - 2 * A139761 n

end

end A138112.P14460802268484038932

namespace A138112

/-- `A139761(n+1)-2*A139761(n)` -/
def P14460802268484038932.Spec : Prop :=
  ∀ n, P14460802268484038932.a n = A138112 n

end A138112

/-! ## A138112.P9604209399604114379

`A105371(log2(A011782(n)))-A105371(n)`
-/

namespace A138112.P9604209399604114379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105371 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat - A105371 n

end

end A138112.P9604209399604114379

namespace A138112

/-- `A105371(log2(A011782(n)))-A105371(n)` -/
def P9604209399604114379.Spec : Prop :=
  ∀ n, P9604209399604114379.a n = A138112 n

end A138112

/-! ## A138112.P18314290104765287989

`A139398(n)+A139748(n)-A139398(n+1)`
-/

namespace A138112.P18314290104765287989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 n + (A139748 n - A139398 (n + 1))

end

end A138112.P18314290104765287989

namespace A138112

/-- `A139398(n)+A139748(n)-A139398(n+1)` -/
def P18314290104765287989.Spec : Prop :=
  ∀ n, P18314290104765287989.a n = A138112 n

end A138112

/-! ## A138112.P12856756780993736336

`A139748(n)-Δ[Δ[A133476(n)]]`
-/

namespace A138112.P12856756780993736336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139748 n - (f1 (n + 1) - f1 n)

end

end A138112.P12856756780993736336

namespace A138112

/-- `A139748(n)-Δ[Δ[A133476(n)]]` -/
def P12856756780993736336.Spec : Prop :=
  ∀ n, P12856756780993736336.a n = A138112 n

end A138112

/-! ## A138112.P8167200205475461691

`Δ[A139761(n)-Δ[A133476(n)]]`
-/

namespace A138112.P8167200205475461691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139761 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138112.P8167200205475461691

namespace A138112

/-- `Δ[A139761(n)-Δ[A133476(n)]]` -/
def P8167200205475461691.Spec : Prop :=
  ∀ n, P8167200205475461691.a n = A138112 n

end A138112

/-!
# A138113: a(n) is the smallest number with same number of divisors as n*a(n-1).

The programs for A138113, there is no canonical definition to state claims against.
-/

/-! ## A138113.P8101228873009796797

`A061799(A140410(n+1)%A213677(n+1))`
-/

namespace A138113.P8101228873009796797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (Int.tmod (A140410 (n + 1)) (A213677 (n + 1))).toNat

end

end A138113.P8101228873009796797

/-! ## A138113.P13278941189371497827

`A061799(lcm(A007318(n+1), A140410(n+1)))`
-/

namespace A138113.P13278941189371497827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (Int.lcm (A007318 (n + 1)) (A140410 (n + 1)))

end

end A138113.P13278941189371497827

/-! ## A138113.P682287520009737503

`A061799(A140410(n+1))%A136373(n+1)`
-/

namespace A138113.P682287520009737503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061799 (A140410 (n + 1)).toNat) (A136373 (n + 1))

end

end A138113.P682287520009737503

/-! ## A138113.P127962745475441688

`A061799(A140410(n+1))/A322283(A322283(n)²)`
-/

namespace A138113.P127962745475441688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061799 (A140410 (n + 1)).toNat : ℚ) / (A322283 (A322283 n ^ 2).toNat : ℚ)

end

end A138113.P127962745475441688

/-! ## A138113.P14832060668439905316

`A061799(A140410(n+1)^A139337(n))`
-/

namespace A138113.P14832060668439905316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (SequenceMachineLib.roundAway ((A140410 (n + 1) : ℚ) ^ (A139337 n : ℤ))).toNat

end

end A138113.P14832060668439905316

/-!
# A138114: Triangle read by rows: row n lists the first n digits of the decimal expansion of Pi.

The programs for A138114, the canonical program `A138114.P8216364394645200314` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138114 has offset 1).

The definition of A138114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138114.P2989892838576609902

`A000796(n-C(∑[char[∑[n]]], 2))`
-/

namespace A138114.P2989892838576609902
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1)

end

end A138114.P2989892838576609902

namespace A138114

/-- `A000796(n-C(∑[char[∑[n]]], 2))` -/
def P2989892838576609902.Spec : Prop :=
  ∀ n, P2989892838576609902.a n = A138114 (n + 1)

end A138114

/-! ## A138114.P13220184664810917277

`9-A030644(n-C(∑[char[∑[n]]], 2))`
-/

namespace A138114.P13220184664810917277
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A030644 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1)

end

end A138114.P13220184664810917277

namespace A138114

/-- `9-A030644(n-C(∑[char[∑[n]]], 2))` -/
def P13220184664810917277.Spec : Prop :=
  ∀ n, P13220184664810917277.a n = A138114 (n + 1)

end A138114

/-! ## A138114.P5789120852729808378

`A001355(comp[∑[n]]-(∑[char[∑[n]]]²-n))`
-/

namespace A138114.P5789120852729808378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((((∑ j ∈ Finset.range (n + 1), f3 j) ^ 2 : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A138114.P5789120852729808378

namespace A138114

/-- `A001355(comp[∑[n]]-(∑[char[∑[n]]]²-n))` -/
def P5789120852729808378.Spec : Prop :=
  ∀ n, P5789120852729808378.a n = A138114 (n + 1)

end A138114

/-! ## A138114.P6763794242213591256

`A123152(1-C(∑[char[∑[n]]], 2)+n)-1`
-/

namespace A138114.P6763794242213591256
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat - 1

end

end A138114.P6763794242213591256

namespace A138114

/-- `A123152(1-C(∑[char[∑[n]]], 2)+n)-1` -/
def P6763794242213591256.Spec : Prop :=
  ∀ n, P6763794242213591256.a n = A138114 (n + 1)

end A138114

/-! ## A138114.P17408150259311501168

`A000796(comp[∑[n-1]]%C(comp[∑[n]]-n, 2))`
-/

namespace A138114.P17408150259311501168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + 1)

end

end A138114.P17408150259311501168

namespace A138114

/-- `A000796(comp[∑[n-1]]%C(comp[∑[n]]-n, 2))` -/
def P17408150259311501168.Spec : Prop :=
  ∀ n, P17408150259311501168.a n = A138114 (n + 1)

end A138114

/-! ## A138114.P11148916134622543348

`A000796(A002262(n))`
-/

namespace A138114.P11148916134622543348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A002262 n).toNat + 1)

end

end A138114.P11148916134622543348

namespace A138114

/-- `A000796(A002262(n))` -/
def P11148916134622543348.Spec : Prop :=
  ∀ n, P11148916134622543348.a n = A138114 (n + 1)

end A138114

/-! ## A138114.P10428719220950100147

`A110766(A174028(n))`
-/

namespace A138114.P10428719220950100147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (A174028 n).toNat

end

end A138114.P10428719220950100147

namespace A138114

/-- `A110766(A174028(n))` -/
def P10428719220950100147.Spec : Prop :=
  ∀ n, P10428719220950100147.a n = A138114 (n + 1)

end A138114

/-! ## A138114.P4647803262247921711

`A095709(∑[char[∑[n]]]²-n)`
-/

namespace A138114.P4647803262247921711
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095709 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A138114.P4647803262247921711

namespace A138114

/-- `A095709(∑[char[∑[n]]]²-n)` -/
def P4647803262247921711.Spec : Prop :=
  ∀ n, P4647803262247921711.a n = A138114 (n + 1)

end A138114

/-! ## A138114.P8216364394645200314

`A011545(n-C(∑[char[∑[n]]], 2))%10`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138114

/-- `A011545(n-C(∑[char[∑[n]]], 2))%10` -/
def P8216364394645200314.Spec : Prop :=
  ∀ n, P8216364394645200314.a n = A138114 (n + 1)

theorem P8216364394645200314.correct : P8216364394645200314.Spec := by
  intro n
  simp only [A138114, Nat.add_sub_cancel]

end A138114

/-! ## A138114.P18027114950105937789

`A138071(A004202(n+1))`
-/

namespace A138114.P18027114950105937789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138071 (A004202 (n + 1)).toNat

end

end A138114.P18027114950105937789

namespace A138114

/-- `A138071(A004202(n+1))` -/
def P18027114950105937789.Spec : Prop :=
  ∀ n, P18027114950105937789.a n = A138114 (n + 1)

end A138114

/-! ## A138114.P8350763208748439016

`A138071(A189151(n+1))`
-/

namespace A138114.P8350763208748439016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138071 (A189151 (n + 1)).toNat

end

end A138114.P8350763208748439016

namespace A138114

/-- `A138071(A189151(n+1))` -/
def P8350763208748439016.Spec : Prop :=
  ∀ n, P8350763208748439016.a n = A138114 (n + 1)

end A138114

/-! ## A138114.P4375814274091376719

`A138070(A341706(n+1))`
-/

namespace A138114.P4375814274091376719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138070 (A341706 (n + 1)).toNat

end

end A138114.P4375814274091376719

namespace A138114

/-- `A138070(A341706(n+1))` -/
def P4375814274091376719.Spec : Prop :=
  ∀ n, P4375814274091376719.a n = A138114 (n + 1)

end A138114

/-! ## A138114.P8499663988470511549

`A104691(2*A002260(n+1))`
-/

namespace A138114.P8499663988470511549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104691 (2 * A002260 (n + 1)).toNat

end

end A138114.P8499663988470511549

namespace A138114

/-- `A104691(2*A002260(n+1))` -/
def P8499663988470511549.Spec : Prop :=
  ∀ n, P8499663988470511549.a n = A138114 (n + 1)

end A138114

/-!
# A138115: Triangle read by rows: row n lists the first n digits of the decimal expansion of e.

The programs for A138115, the canonical program `A138115.P4961606915047794437` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138115 has offset 1).

The definition of A138115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138115.P2832112448138887341

`A001113(n-C(∑[char[∑[n]]], 2))`
-/

namespace A138115.P2832112448138887341
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1)

end

end A138115.P2832112448138887341

namespace A138115

/-- `A001113(n-C(∑[char[∑[n]]], 2))` -/
def P2832112448138887341.Spec : Prop :=
  ∀ n, P2832112448138887341.a n = A138115 (n + 1)

end A138115

/-! ## A138115.P5897472478205927793

`9-A121239(n-C(∑[char[∑[n]]], 2))`
-/

namespace A138115.P5897472478205927793
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A121239 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1)

end

end A138115.P5897472478205927793

namespace A138115

/-- `9-A121239(n-C(∑[char[∑[n]]], 2))` -/
def P5897472478205927793.Spec : Prop :=
  ∀ n, P5897472478205927793.a n = A138115 (n + 1)

end A138115

/-! ## A138115.P3081744601217621876

`A001355(2*(1-C(∑[char[∑[n]]], 2)+n))`
-/

namespace A138115.P3081744601217621876
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ))).toNat

end

end A138115.P3081744601217621876

namespace A138115

/-- `A001355(2*(1-C(∑[char[∑[n]]], 2)+n))` -/
def P3081744601217621876.Spec : Prop :=
  ∀ n, P3081744601217621876.a n = A138115 (n + 1)

end A138115

/-! ## A138115.P13464262345861147144

`A001355(comp[∑[n]]-∑[2*n]%comp[∑[n]])`
-/

namespace A138115.P13464262345861147144
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - (∑ j ∈ Finset.range (n + 1), f3 j) % SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n)

end

end A138115.P13464262345861147144

namespace A138115

/-- `A001355(comp[∑[n]]-∑[2*n]%comp[∑[n]])` -/
def P13464262345861147144.Spec : Prop :=
  ∀ n, P13464262345861147144.a n = A138115 (n + 1)

end A138115

/-! ## A138115.P11880202977977823417

`A001113(A002262(n))`
-/

namespace A138115.P11880202977977823417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A002262 n).toNat + 1)

end

end A138115.P11880202977977823417

namespace A138115

/-- `A001113(A002262(n))` -/
def P11880202977977823417.Spec : Prop :=
  ∀ n, P11880202977977823417.a n = A138115 (n + 1)

end A138115

/-! ## A138115.P14805175734531879141

`A110779(A174028(n))`
-/

namespace A138115.P14805175734531879141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110779 (A174028 n).toNat

end

end A138115.P14805175734531879141

namespace A138115

/-- `A110779(A174028(n))` -/
def P14805175734531879141.Spec : Prop :=
  ∀ n, P14805175734531879141.a n = A138115 (n + 1)

end A138115

/-! ## A138115.P15813041552524208324

`A001113(sqrt(A143844(n)))`
-/

namespace A138115.P15813041552524208324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((SequenceMachineLib.roundAway (Real.sqrt (A143844 n : ℝ))).toNat + 1)

end

end A138115.P15813041552524208324

namespace A138115

/-- `A001113(sqrt(A143844(n)))` -/
def P15813041552524208324.Spec : Prop :=
  ∀ n, P15813041552524208324.a n = A138115 (n + 1)

end A138115

/-! ## A138115.P4713663822040618316

`A001113(log2(A059268(n)))`
-/

namespace A138115.P4713663822040618316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat + 1)

end

end A138115.P4713663822040618316

namespace A138115

/-- `A001113(log2(A059268(n)))` -/
def P4713663822040618316.Spec : Prop :=
  ∀ n, P4713663822040618316.a n = A138115 (n + 1)

end A138115

/-! ## A138115.P10451125311340529716

`A110779(A158405(n+1))`
-/

namespace A138115.P10451125311340529716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110779 (A158405 (n + 1)).toNat

end

end A138115.P10451125311340529716

namespace A138115

/-- `A110779(A158405(n+1))` -/
def P10451125311340529716.Spec : Prop :=
  ∀ n, P10451125311340529716.a n = A138115 (n + 1)

end A138115

/-! ## A138115.P15692561364422001242

`A001113(A002260(n+1)-1)`
-/

namespace A138115.P15692561364422001242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A002260 (n + 1) - 1).toNat + 1)

end

end A138115.P15692561364422001242

namespace A138115

/-- `A001113(A002260(n+1)-1)` -/
def P15692561364422001242.Spec : Prop :=
  ∀ n, P15692561364422001242.a n = A138115 (n + 1)

end A138115

/-! ## A138115.P13524011895827659974

`A095711(∑[char[∑[n]]]²-n)`
-/

namespace A138115.P13524011895827659974
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095711 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A138115.P13524011895827659974

namespace A138115

/-- `A095711(∑[char[∑[n]]]²-n)` -/
def P13524011895827659974.Spec : Prop :=
  ∀ n, P13524011895827659974.a n = A138115 (n + 1)

end A138115

/-! ## A138115.P4961606915047794437

`A011543(n-C(∑[char[∑[n]]], 2))%10`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138115

/-- `A011543(n-C(∑[char[∑[n]]], 2))%10` -/
def P4961606915047794437.Spec : Prop :=
  ∀ n, P4961606915047794437.a n = A138115 (n + 1)

theorem P4961606915047794437.correct : P4961606915047794437.Spec := by
  intro n
  simp only [A138115, Nat.add_sub_cancel]

end A138115

/-! ## A138115.P1983849235955865853

`A001113(A032634(A022843(A023123(A283943(n+1)))))`
-/

namespace A138115.P1983849235955865853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A032634 (A022843 (A023123 (A283943 (n + 1)).toNat).toNat).toNat).toNat + 1)

end

end A138115.P1983849235955865853

namespace A138115

/-- `A001113(A032634(A022843(A023123(A283943(n+1)))))` -/
def P1983849235955865853.Spec : Prop :=
  ∀ n, P1983849235955865853.a n = A138115 (n + 1)

end A138115

/-!
# A138116: Triangle read by rows: row n lists the first n digits of the decimal expansion of golden ratio phi.

The programs for A138116, the canonical program `A138116.P15735510777466576646` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138116 has offset 1).

The definition of A138116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138116.P9863846558846901333

`A001622(n-C(∑[char[∑[n]]], 2))`
-/

namespace A138116.P9863846558846901333
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1)

end

end A138116.P9863846558846901333

namespace A138116

/-- `A001622(n-C(∑[char[∑[n]]], 2))` -/
def P9863846558846901333.Spec : Prop :=
  ∀ n, P9863846558846901333.a n = A138116 (n + 1)

end A138116

/-! ## A138116.P14395423052349763967

`A001622(comp[∑[n-1]]%C(comp[∑[n]]-n, 2))`
-/

namespace A138116.P14395423052349763967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + 1)

end

end A138116.P14395423052349763967

namespace A138116

/-- `A001622(comp[∑[n-1]]%C(comp[∑[n]]-n, 2))` -/
def P14395423052349763967.Spec : Prop :=
  ∀ n, P14395423052349763967.a n = A138116 (n + 1)

end A138116

/-! ## A138116.P3124428805401610712

`A001622((C(∑[char[∑[n]]], 2)+n)%∑[char[∑[n]]])`
-/

namespace A138116.P3124428805401610712
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
  A001622 ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + n) % (∑ j ∈ Finset.range (n + 1), f4 j) + 1)

end

end A138116.P3124428805401610712

namespace A138116

/-- `A001622((C(∑[char[∑[n]]], 2)+n)%∑[char[∑[n]]])` -/
def P3124428805401610712.Spec : Prop :=
  ∀ n, P3124428805401610712.a n = A138116 (n + 1)

end A138116

/-! ## A138116.P14119168825474473011

`A001622(A002262(n))`
-/

namespace A138116.P14119168825474473011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A002262 n).toNat + 1)

end

end A138116.P14119168825474473011

namespace A138116

/-- `A001622(A002262(n))` -/
def P14119168825474473011.Spec : Prop :=
  ∀ n, P14119168825474473011.a n = A138116 (n + 1)

end A138116

/-! ## A138116.P15735510777466576646

`A098369(A112367(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138116

/-- `A098369(A112367(n))` -/
def P15735510777466576646.Spec : Prop :=
  ∀ n, P15735510777466576646.a n = A138116 (n + 1)

theorem P15735510777466576646.correct : P15735510777466576646.Spec := by
  intro n
  simp only [A138116, Nat.add_sub_cancel]

end A138116

/-! ## A138116.P6484671097615841351

`A382130(A174028(n))`
-/

namespace A138116.P6484671097615841351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382130 (A174028 n).toNat

end

end A138116.P6484671097615841351

namespace A138116

/-- `A382130(A174028(n))` -/
def P6484671097615841351.Spec : Prop :=
  ∀ n, P6484671097615841351.a n = A138116 (n + 1)

end A138116

/-! ## A138116.P3578590253056861534

`A001622(sqrt(A143844(n)))`
-/

namespace A138116.P3578590253056861534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((SequenceMachineLib.roundAway (Real.sqrt (A143844 n : ℝ))).toNat + 1)

end

end A138116.P3578590253056861534

namespace A138116

/-- `A001622(sqrt(A143844(n)))` -/
def P3578590253056861534.Spec : Prop :=
  ∀ n, P3578590253056861534.a n = A138116 (n + 1)

end A138116

/-! ## A138116.P9150508564241710635

`A001622(log2(A059268(n)))`
-/

namespace A138116.P9150508564241710635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat + 1)

end

end A138116.P9150508564241710635

namespace A138116

/-- `A001622(log2(A059268(n)))` -/
def P9150508564241710635.Spec : Prop :=
  ∀ n, P9150508564241710635.a n = A138116 (n + 1)

end A138116

/-! ## A138116.P441683537120747351

`A382130(A158405(n+1))`
-/

namespace A138116.P441683537120747351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382130 (A158405 (n + 1)).toNat

end

end A138116.P441683537120747351

namespace A138116

/-- `A382130(A158405(n+1))` -/
def P441683537120747351.Spec : Prop :=
  ∀ n, P441683537120747351.a n = A138116 (n + 1)

end A138116

/-! ## A138116.P3068552059800979028

`A001622(A002260(n+1)-1)`
-/

namespace A138116.P3068552059800979028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A002260 (n + 1) - 1).toNat + 1)

end

end A138116.P3068552059800979028

namespace A138116

/-- `A001622(A002260(n+1)-1)` -/
def P3068552059800979028.Spec : Prop :=
  ∀ n, P3068552059800979028.a n = A138116 (n + 1)

end A138116

/-! ## A138116.P16754827051779899071

`A001622(2*n+1-A004201(n+1))`
-/

namespace A138116.P16754827051779899071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (((2 * n + 1 : ℤ) - A004201 (n + 1)).toNat + 1)

end

end A138116.P16754827051779899071

namespace A138116

/-- `A001622(2*n+1-A004201(n+1))` -/
def P16754827051779899071.Spec : Prop :=
  ∀ n, P16754827051779899071.a n = A138116 (n + 1)

end A138116

/-! ## A138116.P1063639741479111862

`A095713(∑[char[∑[n]]]²-n)`
-/

namespace A138116.P1063639741479111862
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095713 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A138116.P1063639741479111862

namespace A138116

/-- `A095713(∑[char[∑[n]]]²-n)` -/
def P1063639741479111862.Spec : Prop :=
  ∀ n, P1063639741479111862.a n = A138116 (n + 1)

end A138116

/-! ## A138116.P6124901138173427341

`A011551(n-C(∑[char[∑[n]]], 2))%10`
-/

namespace A138116.P6124901138173427341
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011551 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)) 10

end

end A138116.P6124901138173427341

namespace A138116

/-- `A011551(n-C(∑[char[∑[n]]], 2))%10` -/
def P6124901138173427341.Spec : Prop :=
  ∀ n, P6124901138173427341.a n = A138116 (n + 1)

end A138116

/-! ## A138116.P14988417812864515224

`A138073(lt[0, n-round(sqrt(n))²])`
-/

namespace A138116.P14988417812864515224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138073 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A138116.P14988417812864515224

namespace A138116

/-- `A138073(lt[0, n-round(sqrt(n))²])` -/
def P14988417812864515224.Spec : Prop :=
  ∀ n, P14988417812864515224.a n = A138116 (n + 1)

end A138116

/-! ## A138116.P16866037601427578908

`A138073(comp[∑[n]]+C(∑[char[∑[n]]], 2))`
-/

namespace A138116.P16866037601427578908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138073 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2)

end

end A138116.P16866037601427578908

namespace A138116

/-- `A138073(comp[∑[n]]+C(∑[char[∑[n]]], 2))` -/
def P16866037601427578908.Spec : Prop :=
  ∀ n, P16866037601427578908.a n = A138116 (n + 1)

end A138116

/-! ## A138116.P16332897920595116634

`A138073(C(comp[∑[n]]-n, 2)+1+n)`
-/

namespace A138116.P16332897920595116634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138073 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + 1 + n)

end

end A138116.P16332897920595116634

namespace A138116

/-- `A138073(C(comp[∑[n]]-n, 2)+1+n)` -/
def P16332897920595116634.Spec : Prop :=
  ∀ n, P16332897920595116634.a n = A138116 (n + 1)

end A138116

/-! ## A138116.P11434981350914733428

`A138073(A004202(n+1))`
-/

namespace A138116.P11434981350914733428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138073 (A004202 (n + 1)).toNat

end

end A138116.P11434981350914733428

namespace A138116

/-- `A138073(A004202(n+1))` -/
def P11434981350914733428.Spec : Prop :=
  ∀ n, P11434981350914733428.a n = A138116 (n + 1)

end A138116

/-! ## A138116.P17645531579230738410

`A138073(A189151(n+1))`
-/

namespace A138116.P17645531579230738410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138073 (A189151 (n + 1)).toNat

end

end A138116.P17645531579230738410

namespace A138116

/-- `A138073(A189151(n+1))` -/
def P17645531579230738410.Spec : Prop :=
  ∀ n, P17645531579230738410.a n = A138116 (n + 1)

end A138116

/-! ## A138116.P9724043822205528501

`A001622(A019586(A035513(n+1)))`
-/

namespace A138116.P9724043822205528501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A019586 (A035513 (n + 1)).toNat).toNat + 1)

end

end A138116.P9724043822205528501

namespace A138116

/-- `A001622(A019586(A035513(n+1)))` -/
def P9724043822205528501.Spec : Prop :=
  ∀ n, P9724043822205528501.a n = A138116 (n + 1)

end A138116

/-!
# A138117: Triangle read by rows: row n lists the first 2n-1 prime numbers.

The programs for A138117, there is no canonical definition to state claims against.
-/

/-! ## A138117.P7914008919048745257

`p?[A037125(2*(n+1))]`
-/

namespace A138117.P7914008919048745257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138117.P7914008919048745257

/-! ## A138117.P15678304975563009100

`p?[A332662(2*n)-3]`
-/

namespace A138117.P15678304975563009100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332662 (2 * n) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138117.P15678304975563009100

/-! ## A138117.P16103140401488219868

`p?[A037125(n+1)^(n%2)]`
-/

namespace A138117.P16103140401488219868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138117.P16103140401488219868

/-! ## A138117.P5722418075238018190

`A000040(1-floor(sqrt(n))²+n)`
-/

namespace A138117.P5722418075238018190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 - (Nat.sqrt n ^ 2 : ℤ) + (n : ℤ)).toNat

end

end A138117.P5722418075238018190

/-! ## A138117.P14350660362904961203

`A030291(n-floor(sqrt(n))²+1)`
-/

namespace A138117.P14350660362904961203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ) + 1).toNat

end

end A138117.P14350660362904961203

/-! ## A138117.P5581403361562661378

`A038616(1-floor(sqrt(n))²+n)`
-/

namespace A138117.P5581403361562661378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (1 - (Nat.sqrt n ^ 2 : ℤ) + (n : ℤ)).toNat

end

end A138117.P5581403361562661378

/-! ## A138117.P13149270780035680313

`A038618(n-floor(sqrt(n))²+1)`
-/

namespace A138117.P13149270780035680313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ) + 1).toNat

end

end A138117.P13149270780035680313

/-! ## A138117.P1934799363794516276

`A008578(n+2-floor(sqrt(n))²)`
-/

namespace A138117.P1934799363794516276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2 - Nat.sqrt n ^ 2)

end

end A138117.P1934799363794516276

/-! ## A138117.P14537609433723334333

`A008864(n-floor(sqrt(n))²+1)-1`
-/

namespace A138117.P14537609433723334333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ) + 1).toNat - 1

end

end A138117.P14537609433723334333

/-! ## A138117.P7231180775064739388

`A037126(A007606(n+1))`
-/

namespace A138117.P7231180775064739388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A007606 (n + 1)).toNat

end

end A138117.P7231180775064739388

/-!
# A138118: Concatenation of 2n-1 digits 1 and n digits 0.

The programs for A138118, the canonical program `A138118.P9949973762838273177` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138118 has offset 1).

The definition of A138118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138118.P9949973762838273177

`10*a(n-1)+11*1000^n` with `a(0)=10`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138118

/-- `10*a(n-1)+11*1000^n` -/
def P9949973762838273177.Spec : Prop :=
  ∀ n, (P9949973762838273177.a n : ℤ) = A138118 (n + 1)

theorem P9949973762838273177.correct : P9949973762838273177.Spec := by
  intro n
  simp only [A138118, Nat.add_sub_cancel]

end A138118

/-! ## A138118.P7862001701812520696

`10*10^n*floor(10^(2*n+1)/9)`
-/

namespace A138118.P7862001701812520696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * ((10 ^ n : ℤ) * ⌊(10 ^ (2 * n + 1) : ℚ) / 9⌋)

end

end A138118.P7862001701812520696

namespace A138118

/-- `10*10^n*floor(10^(2*n+1)/9)` -/
def P7862001701812520696.Spec : Prop :=
  ∀ n, P7862001701812520696.a n = A138118 (n + 1)

end A138118

/-! ## A138118.P15119460107688655016

`A002275(3*n+2)-∑[10^n]`
-/

namespace A138118.P15119460107688655016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (3 * n + 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A138118.P15119460107688655016

namespace A138118

/-- `A002275(3*n+2)-∑[10^n]` -/
def P15119460107688655016.Spec : Prop :=
  ∀ n, P15119460107688655016.a n = A138118 (n + 1)

end A138118

/-! ## A138118.P10409321692713973348

`A276349(A081267(n))`
-/

namespace A138118.P10409321692713973348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276349 (A081267 n).toNat

end

end A138118.P10409321692713973348

namespace A138118

/-- `A276349(A081267(n))` -/
def P10409321692713973348.Spec : Prop :=
  ∀ n, P10409321692713973348.a n = A138118 (n + 1)

end A138118

/-!
# A138119: Concatenation of n digits 1 and 2*n-1 digits 0.

The programs for A138119, the canonical program `A138119.P1871536053440972650` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138119 has offset 1).

The definition of A138119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138119.P1871536053440972650

`10^(2*(n+1)-1)*(10^(n+1)-1)/9`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138119

/-- `10^(2*(n+1)-1)*(10^(n+1)-1)/9` -/
def P1871536053440972650.Spec : Prop :=
  ∀ n, P1871536053440972650.a n = (A138119 (n + 1) : ℚ)

end A138119

/-! ## A138119.P16995797498026620043

`10*A147816(n+1)`
-/

namespace A138119.P16995797498026620043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A147816 (n + 1)

end

end A138119.P16995797498026620043

namespace A138119

/-- `10*A147816(n+1)` -/
def P16995797498026620043.Spec : Prop :=
  ∀ n, P16995797498026620043.a n = A138119 (n + 1)

end A138119

/-! ## A138119.P7016402300528216767

`A276349(A064225(n))`
-/

namespace A138119.P7016402300528216767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276349 (A064225 n).toNat

end

end A138119.P7016402300528216767

namespace A138119

/-- `A276349(A064225(n))` -/
def P7016402300528216767.Spec : Prop :=
  ∀ n, P7016402300528216767.a n = A138119 (n + 1)

end A138119

/-! ## A138119.P5403438640717657537

`A276349(A062725(n)+1)`
-/

namespace A138119.P5403438640717657537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276349 (A062725 n + 1).toNat

end

end A138119.P5403438640717657537

namespace A138119

/-- `A276349(A062725(n)+1)` -/
def P5403438640717657537.Spec : Prop :=
  ∀ n, P5403438640717657537.a n = A138119 (n + 1)

end A138119

/-! ## A138119.P1289774992767657764

`lcm(A138147(n+1), A178500(A005408(n)))`
-/

namespace A138119.P1289774992767657764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A138147 (n + 1)) (A178500 (A005408 n).toNat)

end

end A138119.P1289774992767657764

namespace A138119

/-- `lcm(A138147(n+1), A178500(A005408(n)))` -/
def P1289774992767657764.Spec : Prop :=
  ∀ n, (P1289774992767657764.a n : ℤ) = A138119 (n + 1)

end A138119

/-!
# A138120: 

The programs for A138120, there is no canonical definition to state claims against.
-/

/-! ## A138120.P13706757659382300783

`A100706(2*n+1)-A138118(n+1)`
-/

namespace A138120.P13706757659382300783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100706 (2 * n + 1) - A138118 (n + 1)

end

end A138120.P13706757659382300783

/-!
# A138121: Triangle read by rows in which row n lists the partitions of n that do not contain 1 as a part in juxtaposed reverse-lexicographical order followed by A000041(n-1) 1's.

The programs for A138121, there is no canonical definition to state claims against.
-/

/-! ## A138121.P15082605691016060143

`A138151(n+1)-A178798(A008483(n))`
-/

namespace A138121.P15082605691016060143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138151 (n + 1) - A178798 (A008483 n).toNat

end

end A138121.P15082605691016060143

/-! ## A138121.P6493347238514857068

`A207378(n+1)-A288707(A000127(n+1))`
-/

namespace A138121.P6493347238514857068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207378 (n + 1) - A288707 (A000127 (n + 1)).toNat

end

end A138121.P6493347238514857068

/-! ## A138121.P15712547380025441279

`A207378(n+1)-A265182(A217400(A232047(n+1)))`
-/

namespace A138121.P15712547380025441279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207378 (n + 1) - A265182 (A217400 (A232047 (n + 1)).toNat).toNat

end

end A138121.P15712547380025441279

/-! ## A138121.P16794809904128706521

`A138151(n+1)-A178798(2*A027336(n)-A320689(n))`
-/

namespace A138121.P16794809904128706521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138151 (n + 1) - A178798 (2 * A027336 n - A320689 n).toNat

end

end A138121.P16794809904128706521

/-! ## A138121.P11974258668503496850

`A207378(n%A107603(3*n+4)+1)-A178798(A008483(n))`
-/

namespace A138121.P11974258668503496850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207378 (Int.tmod (n : ℤ) (A107603 (3 * n + 4)) + 1).toNat - A178798 (A008483 n).toNat

end

end A138121.P11974258668503496850

/-!
# A138122: Cousin primes, the lower of which is 7 (mod 10).

The programs for A138122, the canonical program `A138122.P10225849521028141504` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138122 has offset 1).

The definition of A138122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138122.P10225849521028141504

`∪[A289353(n+1)+4, A289353(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A138122

/-- `∪[A289353(n+1)+4, A289353(n+1)]` -/
def P10225849521028141504.Spec : Prop :=
  ∀ n, (P10225849521028141504.a n : ℤ) = A138122 (n + 1)

theorem P10225849521028141504.correct : P10225849521028141504.Spec := by
  intro n
  simp only [A138122, Nat.add_sub_cancel]

end A138122

/-! ## A138122.P9578555480903872015

`filter[A111980(n+1), A144602(#)]`
-/

namespace A138122.P9578555480903872015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144602 (f1 j).toNat = 1) n)

end

end A138122.P9578555480903872015

namespace A138122

/-- `filter[A111980(n+1), A144602(#)]` -/
def P9578555480903872015.Spec : Prop :=
  ∀ n, P9578555480903872015.a n = A138122 (n + 1)

end A138122

/-! ## A138122.P16016101836327459474

`filter[A094343(n+3), A144602(#)]`
-/

namespace A138122.P16016101836327459474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094343 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144602 (f1 j).toNat = 1) n)

end

end A138122.P16016101836327459474

namespace A138122

/-- `filter[A094343(n+3), A144602(#)]` -/
def P16016101836327459474.Spec : Prop :=
  ∀ n, P16016101836327459474.a n = A138122 (n + 1)

end A138122

/-!
# A138123: Antidiagonal sums of a triangle of coefficients of recurrences of the Fibonacci sequence.

The programs for A138123, the canonical program `A138123.P2912756415714975045` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138123 has offset 1).

The definition of A138123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 956 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138123.P2912756415714975045

`a(n-2)-a(n-3)+a(n-4)+a(n-5)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=0, a(4)=3, a(5)=0, a(6)=7`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138123

/-- `a(n-2)-a(n-3)+a(n-4)+a(n-5)+a(n-7)` -/
def P2912756415714975045.Spec : Prop :=
  ∀ n, P2912756415714975045.a n = A138123 (n + 1)

theorem P2912756415714975045.correct : P2912756415714975045.Spec := by
  intro n
  simp only [A138123, Nat.add_sub_cancel]

end A138123

/-! ## A138123.P18097082612229409333

`A090244(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A138123.P18097082612229409333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A090244 n - a (n - 3)

end

end A138123.P18097082612229409333

namespace A138123

/-- `A090244(n)-a(n-3)` -/
def P18097082612229409333.Spec : Prop :=
  ∀ n, P18097082612229409333.a n = A138123 (n + 1)

end A138123

/-! ## A138123.P2915546726509588895

`A088911(n)+A001610(A142150(n))`
-/

namespace A138123.P2915546726509588895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088911 n + A001610 (A142150 n).toNat

end

end A138123.P2915546726509588895

namespace A138123

/-- `A088911(n)+A001610(A142150(n))` -/
def P2915546726509588895.Spec : Prop :=
  ∀ n, P2915546726509588895.a n = A138123 (n + 1)

end A138123

/-! ## A138123.P4988417538063328458

`A088911(n)-A001610(A142150(n))*A057428(n)`
-/

namespace A138123.P4988417538063328458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088911 n - A001610 (A142150 n).toNat * A057428 n

end

end A138123.P4988417538063328458

namespace A138123

/-- `A088911(n)-A001610(A142150(n))*A057428(n)` -/
def P4988417538063328458.Spec : Prop :=
  ∀ n, P4988417538063328458.a n = A138123 (n + 1)

end A138123

/-!
# A138124: Initial digit of n-th even superperfect number A061652(n).

The programs for A138124, there is no canonical definition to state claims against.
-/

/-! ## A138124.P5036950565505013955

`floor(A138838(n+1)/5)`
-/

namespace A138124.P5036950565505013955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138838 (n + 1) : ℚ) / 5⌋

end

end A138124.P5036950565505013955

/-! ## A138124.P6758613295200070917

`floor(A138842(n+1)/10)`
-/

namespace A138124.P6758613295200070917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138842 (n + 1) : ℚ) / 10⌋

end

end A138124.P6758613295200070917

/-! ## A138124.P16045190789468212884

`A000030(A138842(n+1))`
-/

namespace A138124.P16045190789468212884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A138842 (n + 1)).toNat

end

end A138124.P16045190789468212884

/-! ## A138124.P9091976755164391200

`A000030(A138867(n+1))`
-/

namespace A138124.P9091976755164391200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A138867 (n + 1)).toNat

end

end A138124.P9091976755164391200

/-! ## A138124.P2987287198887693661

`A000030(A138869(n+1))`
-/

namespace A138124.P2987287198887693661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A138869 (n + 1)).toNat

end

end A138124.P2987287198887693661

/-!
# A138125: Final digit of n-th even superperfect number A061652(n).

The programs for A138125, there is no canonical definition to state claims against.
-/

/-! ## A138125.P12130816775565918975

`A138842(n+1)%10`
-/

namespace A138125.P12130816775565918975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138842 (n + 1)) 10

end

end A138125.P12130816775565918975

/-! ## A138125.P7075279878215370448

`A138868(n+1)%10`
-/

namespace A138125.P7075279878215370448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138868 (n + 1)) 10

end

end A138125.P7075279878215370448

/-! ## A138125.P8982344891238826887

`A138869(n+1)%10`
-/

namespace A138125.P8982344891238826887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138869 (n + 1)) 10

end

end A138125.P8982344891238826887

/-! ## A138125.P18170497373550376497

`A138871(n+1)%10`
-/

namespace A138125.P18170497373550376497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138871 (n + 1)) 10

end

end A138125.P18170497373550376497

/-! ## A138125.P4960767497082278961

`2*A138838(n+1)%5`
-/

namespace A138125.P4960767497082278961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A138838 (n + 1)) 5

end

end A138125.P4960767497082278961

/-!
# A138126: Indices among the primes of the primes in A020461.

The programs for A138126, there is no canonical definition to state claims against.
-/

/-! ## A138126.P17362957961858094241

`A000720(A020461(n+1))`
-/

namespace A138126.P17362957961858094241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A020461 (n + 1)).toNat

end

end A138126.P17362957961858094241

/-! ## A138126.P16027706267195001046

`record[A297109(A032834(n+1))]`
-/

namespace A138126.P16027706267195001046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (A032834 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138126.P16027706267195001046

/-! ## A138126.P3142408827916541668

`A000720(p?[A032834(n+1)])`
-/

namespace A138126.P3142408827916541668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A138126.P3142408827916541668

/-!
# A138127: Multiples of 127.

The programs for A138127, the canonical program `A138127.P706479008070889541` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138127 has offset 0).

The definition of A138127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138127.P706479008070889541

`127*n`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138127

/-- `127*n` -/
def P706479008070889541.Spec : Prop :=
  ∀ n, (P706479008070889541.a n : ℤ) = A138127 n

theorem P706479008070889541.correct : P706479008070889541.Spec := by
  intro n
  simp only [A138127]

end A138127

/-!
# A138128: Powers of 127.

The programs for A138128, the canonical program `A138128.P3517756466457546567` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138128 has offset 0).

The definition of A138128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138128.P3517756466457546567

`127^n`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138128

/-- `127^n` -/
def P3517756466457546567.Spec : Prop :=
  ∀ n, (P3517756466457546567.a n : ℤ) = A138128 n

theorem P3517756466457546567.correct : P3517756466457546567.Spec := by
  intro n
  simp only [A138128]

end A138128

/-!
# A138129: Multiples of 1729, the Hardy-Ramanujan number.

The programs for A138129, the canonical program `A138129.P12129596085727893475` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138129 has offset 0).

The definition of A138129 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138129.P12129596085727893475

`91*A008601(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138129

/-- `91*A008601(n)` -/
def P12129596085727893475.Spec : Prop :=
  ∀ n, P12129596085727893475.a n = A138129 n

theorem P12129596085727893475.correct : P12129596085727893475.Spec := by
  intro n
  simp only [A138129]

end A138129

/-!
# A138130: Powers of 1729, the Hardy-Ramanujan number.

The programs for A138130, the canonical program `A138130.P10725115915710778988` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138130 has offset 0).

The definition of A138130 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138130.P10725115915710778988

`A000420(n)*A001022(n)*A001029(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138130

/-- `A000420(n)*A001022(n)*A001029(n)` -/
def P10725115915710778988.Spec : Prop :=
  ∀ n, P10725115915710778988.a n = A138130 n

theorem P10725115915710778988.correct : P10725115915710778988.Spec := by
  intro n
  simp only [A138130]

end A138130

/-! ## A138130.P14305238681337185753

`19*91*a(n-1)` with `a(0)=1`
-/

namespace A138130.P14305238681337185753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  19 * (91 * a (n - 1))

end

end A138130.P14305238681337185753

namespace A138130

/-- `19*91*a(n-1)` -/
def P14305238681337185753.Spec : Prop :=
  ∀ n, (P14305238681337185753.a n : ℤ) = A138130 n

end A138130

/-! ## A138130.P5502099418427123106

`A001235(ceil(acot(n))^n)^n`
-/

namespace A138130.P5502099418427123106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001235 (⌈SequenceMachineLib.acot (n : ℝ)⌉ ^ n).toNat ^ n

end

end A138130.P5502099418427123106

namespace A138130

/-- `A001235(ceil(acot(n))^n)^n` -/
def P5502099418427123106.Spec : Prop :=
  ∀ n, P5502099418427123106.a n = A138130 n

end A138130

/-! ## A138130.P12242887762749226460

`∏{digits}[A205087(n), A344473(#)]`
-/

namespace A138130.P12242887762749226460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A344473 x).prod

end

end A138130.P12242887762749226460

namespace A138130

/-- `∏{digits}[A205087(n), A344473(#)]` -/
def P12242887762749226460.Spec : Prop :=
  ∀ n, P12242887762749226460.a n = A138130 n

end A138130

/-! ## A138130.P11065800062666542545

`A337316(A337337(2*n+1))^n`
-/

namespace A138130.P11065800062666542545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337316 (A337337 (2 * n + 1)).toNat ^ n

end

end A138130.P11065800062666542545

namespace A138130

/-- `A337316(A337337(2*n+1))^n` -/
def P11065800062666542545.Spec : Prop :=
  ∀ n, P11065800062666542545.a n = A138130 n

end A138130

/-!
# A138131: Palindromic cyclops numbers.

The programs for A138131, there is no canonical definition to state claims against.
-/

/-! ## A138131.P14293616816283260668

`A082216(eq[A020485(n)+1, A055641(n)])`
-/

namespace A138131.P14293616816283260668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A138131.P14293616816283260668

/-! ## A138131.P14869835090739817059

`A082216(eq[A020485(n), A217096(n+1)])`
-/

namespace A138131.P14869835090739817059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A138131.P14869835090739817059

/-! ## A138131.P2144785226850378016

`A082216(eq[A055641(n+1), A265525(n)])`
-/

namespace A138131.P2144785226850378016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A138131.P2144785226850378016

/-! ## A138131.P14846806760286022964

`A082216(eq[1, A055641(n)-A020485(n)])`
-/

namespace A138131.P14846806760286022964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n - A020485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138131.P14846806760286022964

/-! ## A138131.P357282781497383335

`A082216(eq[1, A055641(n)-A265525(n)])`
-/

namespace A138131.P357282781497383335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n - A265525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138131.P357282781497383335

/-! ## A138131.P186287098497732823

`∩[A002113(n+1), A134808(n+1)]`
-/

namespace A138131.P186287098497732823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138131.P186287098497732823

/-! ## A138131.P15343566109369799249

`∩[A068062(n+1), A134808(n+1)]`
-/

namespace A138131.P15343566109369799249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138131.P15343566109369799249

/-! ## A138131.P1258625620650531622

`∩[A117055(n+1), A134808(n+1)]`
-/

namespace A138131.P1258625620650531622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138131.P1258625620650531622

/-! ## A138131.P15443584594052352130

`∩[A134808(n+1), A229546(n+1)]`
-/

namespace A138131.P15443584594052352130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138131.P15443584594052352130

/-! ## A138131.P5862105563711381875

`∩[A134808(n+1), A229547(n+1)]`
-/

namespace A138131.P5862105563711381875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138131.P5862105563711381875

/-!
# A138134: a(n) = Sum_{i=0..n} Fibonacci(5*i).

The programs for A138134, the canonical program `A138134.P17235419605062454446` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138134 has offset 0).

The definition of A138134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138134.P17235419605062454446

`12*a(n-1)-10*a(n-2)-a(n-3)` with `a(0)=0, a(1)=5, a(2)=60`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138134

/-- `12*a(n-1)-10*a(n-2)-a(n-3)` -/
def P17235419605062454446.Spec : Prop :=
  ∀ n, P17235419605062454446.a n = A138134 n

theorem P17235419605062454446.correct : P17235419605062454446.Spec := by
  intro n
  simp only [A138134]

end A138134

/-! ## A138134.P5989136198034682278

`ogf(5x/(1-12x+10x^2+x^3))`
-/

namespace A138134.P5989136198034682278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5] [1, -12, 10, 1] n

end

end A138134.P5989136198034682278

namespace A138134

/-- `ogf(5x/(1-12x+10x^2+x^3))` -/
def P5989136198034682278.Spec : Prop :=
  ∀ n, P5989136198034682278.a n = A138134 n

end A138134

/-! ## A138134.P927888032877880120

`∑[A102312(n)]`
-/

namespace A138134.P927888032877880120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138134.P927888032877880120

namespace A138134

/-- `∑[A102312(n)]` -/
def P927888032877880120.Spec : Prop :=
  ∀ n, P927888032877880120.a n = A138134 n

end A138134

/-! ## A138134.P8570170543850294110

`∑[A000045(5*n)]`
-/

namespace A138134.P8570170543850294110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138134.P8570170543850294110

namespace A138134

/-- `∑[A000045(5*n)]` -/
def P8570170543850294110.Spec : Prop :=
  ∀ n, P8570170543850294110.a n = A138134 n

end A138134

/-! ## A138134.P1645054056188189930

`∑[5*A049666(n)]`
-/

namespace A138134.P1645054056188189930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A049666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138134.P1645054056188189930

namespace A138134

/-- `∑[5*A049666(n)]` -/
def P1645054056188189930.Spec : Prop :=
  ∀ n, P1645054056188189930.a n = A138134 n

end A138134

/-! ## A138134.P18210598272915382450

`∑[A053602(10*n)]`
-/

namespace A138134.P18210598272915382450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (10 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138134.P18210598272915382450

namespace A138134

/-- `∑[A053602(10*n)]` -/
def P18210598272915382450.Spec : Prop :=
  ∀ n, P18210598272915382450.a n = A138134 n

end A138134

/-! ## A138134.P11518172490814901933

`∑[A103609(10*n)]`
-/

namespace A138134.P11518172490814901933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (10 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138134.P11518172490814901933

namespace A138134

/-- `∑[A103609(10*n)]` -/
def P11518172490814901933.Spec : Prop :=
  ∀ n, P11518172490814901933.a n = A138134 n

end A138134

/-! ## A138134.P15792463810005177272

`∑[A212804(5*n+1)]`
-/

namespace A138134.P15792463810005177272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (5 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138134.P15792463810005177272

namespace A138134

/-- `∑[A212804(5*n+1)]` -/
def P15792463810005177272.Spec : Prop :=
  ∀ n, P15792463810005177272.a n = A138134 n

end A138134

/-! ## A138134.P18404541961176636090

`A000045(2*2*n+n)+a(n-1)` with `a(0)=0`
-/

namespace A138134.P18404541961176636090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 (2 * (2 * n) + n) + a (n - 1)

end

end A138134.P18404541961176636090

namespace A138134

/-- `A000045(2*2*n+n)+a(n-1)` -/
def P18404541961176636090.Spec : Prop :=
  ∀ n, P18404541961176636090.a n = A138134 n

end A138134

/-!
# A138135: Number of parts > 1 in the last section of the set of partitions of n.

The programs for A138135, there is no canonical definition to state claims against.
-/

/-! ## A138135.P7873344567931961040

`A138137(n+1)-A000041(n)`
-/

namespace A138135.P7873344567931961040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1) - A000041 n

end

end A138135.P7873344567931961040

/-! ## A138135.P11322768714001188556

`A096541(n+1)-A096541(n)`
-/

namespace A138135.P11322768714001188556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 (n + 1) - A096541 n

end

end A138135.P11322768714001188556

/-! ## A138135.P7461847776615736411

`A006128(n+1)-A006128(n)-A000041(n)`
-/

namespace A138135.P7461847776615736411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - A006128 n - A000041 n

end

end A138135.P7461847776615736411

/-! ## A138135.P15836941352300782352

`A182699(n+1)+A002865(n+1)`
-/

namespace A138135.P15836941352300782352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182699 (n + 1) + A002865 (n + 1)

end

end A138135.P15836941352300782352

/-! ## A138135.P10359419661565741570

`A000041(n+1)+A182699(n+1)-A000041(n)`
-/

namespace A138135.P10359419661565741570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A182699 (n + 1) - A000041 n)

end

end A138135.P10359419661565741570

/-! ## A138135.P949943590882499832

`A144120(n+1)+A144121(n+1)-A000041(n)`
-/

namespace A138135.P949943590882499832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144120 (n + 1) + (A144121 (n + 1) - A000041 n)

end

end A138135.P949943590882499832

/-! ## A138135.P11677984943716599662

`A138137(n+1)-∑[A002865(n)]`
-/

namespace A138135.P11677984943716599662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138135.P11677984943716599662

/-! ## A138135.P13273915534169987530

`A138880(n+1)-A207035(n+1)`
-/

namespace A138135.P13273915534169987530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138880 (n + 1) - A207035 (n + 1)

end

end A138135.P13273915534169987530

/-! ## A138135.P9377344016182066990

`A138137(n+1)+A138880(n+1)-A138879(n+1)`
-/

namespace A138135.P9377344016182066990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1) + (A138880 (n + 1) - A138879 (n + 1))

end

end A138135.P9377344016182066990

/-! ## A138135.P902343807092643912

`Δ[A096541(n)]`
-/

namespace A138135.P902343807092643912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138135.P902343807092643912

/-! ## A138135.P9600888632970469438

`Δ[A198381(n)+A000065(n)]`
-/

namespace A138135.P9600888632970469438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198381 n + A000065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138135.P9600888632970469438

/-! ## A138135.P8162608483350053921

`A002865(n+1)+A198381(n+1)-A198381(n)`
-/

namespace A138135.P8162608483350053921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) + (A198381 (n + 1) - A198381 n)

end

end A138135.P8162608483350053921

/-! ## A138135.P15775772971633934885

`Δ[A006128(n)]-A000041(n)`
-/

namespace A138135.P15775772971633934885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000041 n

end

end A138135.P15775772971633934885

/-! ## A138135.P14241414630861231658

`Δ[A093694(n)-A000070(n)]`
-/

namespace A138135.P14241414630861231658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138135.P14241414630861231658

/-! ## A138135.P12261973819939999127

`A006128(n+1)-A093694(n)`
-/

namespace A138135.P12261973819939999127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - A093694 n

end

end A138135.P12261973819939999127

/-! ## A138135.P16490917817486548595

`Δ[A093694(n)]-A000041(n+1)`
-/

namespace A138135.P16490917817486548595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000041 (n + 1)

end

end A138135.P16490917817486548595

/-! ## A138135.P2815522797057103602

`Δ[A093694(n)-A000041(n)]-A000041(n)`
-/

namespace A138135.P2815522797057103602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000041 n

end

end A138135.P2815522797057103602

/-! ## A138135.P2893442244415637219

`A093694(n+1)-(A093694(n)+A000041(n+1))`
-/

namespace A138135.P2893442244415637219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 (n + 1) - (A093694 n + A000041 (n + 1))

end

end A138135.P2893442244415637219

/-! ## A138135.P2954788280986214538

`A006128(n+1)-Δ[A339011(n)]`
-/

namespace A138135.P2954788280986214538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - (f1 (n + 1) - f1 n)

end

end A138135.P2954788280986214538

/-! ## A138135.P11882135434703146353

`A138137(n+1)-A035363(2*n)`
-/

namespace A138135.P11882135434703146353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1) - A035363 (2 * n)

end

end A138135.P11882135434703146353

/-!
# A138136: Triangle read by rows: row n lists the parts > 1 of the last section of the set of partitions of n.

The programs for A138136, there is no canonical definition to state claims against.
-/

/-! ## A138136.P4026362722192561088

`A182711(n+1)%A196112(n+1)`
-/

namespace A138136.P4026362722192561088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182711 (n + 1)) (A196112 (n + 1))

end

end A138136.P4026362722192561088

/-! ## A138136.P10010209317079403712

`floor(A182711(n+1)+acot(A086620(n)))`
-/

namespace A138136.P10010209317079403712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A182711 (n + 1) : ℝ) + SequenceMachineLib.acot (A086620 n : ℝ)⌋

end

end A138136.P10010209317079403712

/-! ## A138136.P2755477489488750364

`A182711(n+1)+A000007(A008000(n))`
-/

namespace A138136.P2755477489488750364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182711 (n + 1) + A000007 (A008000 n).toNat

end

end A138136.P2755477489488750364

/-! ## A138136.P4261708359245335450

`A182711(n+1)+A000007(A085902(n))`
-/

namespace A138136.P4261708359245335450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182711 (n + 1) + A000007 (A085902 n).toNat

end

end A138136.P4261708359245335450

/-! ## A138136.P3472308306964298777

`A182711(n+1)+A000007(A086620(n))`
-/

namespace A138136.P3472308306964298777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182711 (n + 1) + A000007 (A086620 n).toNat

end

end A138136.P3472308306964298777

/-! ## A138136.P259360164522549279

`A182711(n+1)+A000007(A107230(n))`
-/

namespace A138136.P259360164522549279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182711 (n + 1) + A000007 (A107230 n).toNat

end

end A138136.P259360164522549279

/-! ## A138136.P4171523262728916967

`gcd(A055671(A129533(n)), A182711(n+1))`
-/

namespace A138136.P4171523262728916967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055671 (A129533 n).toNat) (A182711 (n + 1))

end

end A138136.P4171523262728916967

/-! ## A138136.P6570977315247192258

`A034947(A100210(n+1))*A182711(n+1)`
-/

namespace A138136.P6570977315247192258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A100210 (n + 1)).toNat * A182711 (n + 1)

end

end A138136.P6570977315247192258

/-!
# A138137: First differences of A006128.

The programs for A138137, there is no canonical definition to state claims against.
-/

/-! ## A138137.P5335158421760730942

`A000041(n)+A138135(n+1)`
-/

namespace A138137.P5335158421760730942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + A138135 (n + 1)

end

end A138137.P5335158421760730942

/-! ## A138137.P9930198697399702099

`A206433(n+1)+A206434(n+1)`
-/

namespace A138137.P9930198697399702099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206433 (n + 1) + A206434 (n + 1)

end

end A138137.P9930198697399702099

/-! ## A138137.P8930994071489982945

`A006128(n+1)-A006128(n)`
-/

namespace A138137.P8930994071489982945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - A006128 n

end

end A138137.P8930994071489982945

/-! ## A138137.P8773885230880735182

`A330242(n+1)+1+n`
-/

namespace A138137.P8773885230880735182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330242 (n + 1) + 1 + (n : ℤ)

end

end A138137.P8773885230880735182

/-! ## A138137.P9690998214436385565

`A138135(n+1)+∑[A002865(n)]`
-/

namespace A138137.P9690998214436385565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138137.P9690998214436385565

/-! ## A138137.P12395925872755814755

`A182699(n+1)+A000041(n+1)`
-/

namespace A138137.P12395925872755814755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182699 (n + 1) + A000041 (n + 1)

end

end A138137.P12395925872755814755

/-! ## A138137.P2134653609012149183

`A144121(n+1)+A144120(n+1)`
-/

namespace A138137.P2134653609012149183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144121 (n + 1) + A144120 (n + 1)

end

end A138137.P2134653609012149183

/-! ## A138137.P13631810963364994048

`A182699(n+1)+A139582(n+1)/2`
-/

namespace A138137.P13631810963364994048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182699 (n + 1) : ℚ) + (A139582 (n + 1) : ℚ) / 2

end

end A138137.P13631810963364994048

/-! ## A138137.P3870021729670958338

`A138135(n+1)+A295341(n)+A000726(n)`
-/

namespace A138137.P3870021729670958338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 (n + 1) + (A295341 n + A000726 n)

end

end A138137.P3870021729670958338

/-! ## A138137.P5547787439457730224

`A233968(n+1)/2`
-/

namespace A138137.P5547787439457730224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233968 (n + 1) : ℚ) / 2

end

end A138137.P5547787439457730224

/-! ## A138137.P1581620626261279335

`A278602(n+1)/4`
-/

namespace A138137.P1581620626261279335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278602 (n + 1) : ℚ) / 4

end

end A138137.P1581620626261279335

/-! ## A138137.P10804758670635861893

`A000070(n+1)+A182699(n+1)-A000070(n)`
-/

namespace A138137.P10804758670635861893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) + (A182699 (n + 1) - A000070 n)

end

end A138137.P10804758670635861893

/-! ## A138137.P17724633394514291599

`A138879(n+1)-A207035(n+1)`
-/

namespace A138137.P17724633394514291599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138879 (n + 1) - A207035 (n + 1)

end

end A138137.P17724633394514291599

/-! ## A138137.P15100315795061128991

`A138135(n+1)+A138879(n+1)-A138880(n+1)`
-/

namespace A138137.P15100315795061128991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 (n + 1) + (A138879 (n + 1) - A138880 (n + 1))

end

end A138137.P15100315795061128991

/-! ## A138137.P13688274619876001964

`A000041(n)+Δ[A096541(n)]`
-/

namespace A138137.P13688274619876001964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (f1 (n + 1) - f1 n)

end

end A138137.P13688274619876001964

/-! ## A138137.P16209136995852193330

`Δ[A000070(n)]+Δ[A198381(n)]`
-/

namespace A138137.P16209136995852193330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A138137.P16209136995852193330

/-! ## A138137.P10020148728081775353

`A096541(n+1)+A000041(n)-A096541(n)`
-/

namespace A138137.P10020148728081775353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 (n + 1) + (A000041 n - A096541 n)

end

end A138137.P10020148728081775353

/-! ## A138137.P5438531819681319178

`A000041(n+1)+A198381(n+1)-A198381(n)`
-/

namespace A138137.P5438531819681319178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A198381 (n + 1) - A198381 n)

end

end A138137.P5438531819681319178

/-! ## A138137.P10465357361608644830

`Δ[A006128(n)]`
-/

namespace A138137.P10465357361608644830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138137.P10465357361608644830

/-! ## A138137.P8981046519787342111

`Δ[A225596(n)]-1`
-/

namespace A138137.P8981046519787342111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A138137.P8981046519787342111

/-!
# A138138: A modular table of partitions. Triangle read by rows: row n lists the parts of the last section of the set of partitions of n.

The programs for A138138, there is no canonical definition to state claims against.
-/

/-! ## A138138.P8038359999400939559

`A135010(∑[floor(2^(A034538(n+1)/2))²])`
-/

namespace A138138.P8038359999400939559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℝ) ^ ((A034538 (n + 1) : ℚ) / 2 : ℝ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A138138.P8038359999400939559

/-! ## A138138.P12498145777414584325

`or(A207377(n+1), A327174(A287285(n)))`
-/

namespace A138138.P12498145777414584325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A207377 (n + 1)) (A327174 (A287285 n).toNat)

end

end A138138.P12498145777414584325

/-! ## A138138.P4394235062362177581

`A135010(lt[A026007(n), A347803(3*n+4)])`
-/

namespace A138138.P4394235062362177581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347803 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A138138.P4394235062362177581

/-! ## A138138.P5247808711580196434

`char[30]+A135010(n+1)-A036987(A060949(n+1))`
-/

namespace A138138.P5247808711580196434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A135010 (n + 1) - A036987 (A060949 (n + 1)).toNat)

end

end A138138.P5247808711580196434

/-!
# A138139: Triangle read by rows: row n contains n terms and each column lists the prime numbers A000040.

The programs for A138139, the canonical program `A138139.P8390411299693681906` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138139 has offset 1).

The definition of A138139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138139.P10108180707670716447

`A000040(A003983(n+1))`
-/

namespace A138139.P10108180707670716447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003983 (n + 1)).toNat

end

end A138139.P10108180707670716447

namespace A138139

/-- `A000040(A003983(n+1))` -/
def P10108180707670716447.Spec : Prop :=
  ∀ n, P10108180707670716447.a n = A138139 (n + 1)

end A138139

/-! ## A138139.P6553326467065180079

`A000040(A004197(n)+1)`
-/

namespace A138139.P6553326467065180079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A004197 n + 1).toNat

end

end A138139.P6553326467065180079

namespace A138139

/-- `A000040(A004197(n)+1)` -/
def P6553326467065180079.Spec : Prop :=
  ∀ n, P6553326467065180079.a n = A138139 (n + 1)

end A138139

/-! ## A138139.P8390411299693681906

`A005145(A106255(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A138139

/-- `A005145(A106255(n+1))` -/
def P8390411299693681906.Spec : Prop :=
  ∀ n, P8390411299693681906.a n = A138139 (n + 1)

theorem P8390411299693681906.correct : P8390411299693681906.Spec := by
  intro n
  simp only [A138139, Nat.add_sub_cancel]

end A138139

/-! ## A138139.P7751403019454914226

`A109763(A157458(n)+1)`
-/

namespace A138139.P7751403019454914226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (A157458 n + 1).toNat

end

end A138139.P7751403019454914226

namespace A138139

/-- `A109763(A157458(n)+1)` -/
def P7751403019454914226.Spec : Prop :=
  ∀ n, P7751403019454914226.a n = A138139 (n + 1)

end A138139

/-! ## A138139.P14753022962947519051

`A000040(sqrt(A106314(n+1)))`
-/

namespace A138139.P14753022962947519051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.sqrt (A106314 (n + 1) : ℝ))).toNat

end

end A138139.P14753022962947519051

namespace A138139

/-- `A000040(sqrt(A106314(n+1)))` -/
def P14753022962947519051.Spec : Prop :=
  ∀ n, P14753022962947519051.a n = A138139 (n + 1)

end A138139

/-! ## A138139.P6762793638438059165

`A109763(2*A003983(n+1))`
-/

namespace A138139.P6762793638438059165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (2 * A003983 (n + 1)).toNat

end

end A138139.P6762793638438059165

namespace A138139

/-- `A109763(2*A003983(n+1))` -/
def P6762793638438059165.Spec : Prop :=
  ∀ n, P6762793638438059165.a n = A138139 (n + 1)

end A138139

/-! ## A138139.P14902561003696143962

`A000040(val(A036561(n), 6)+1)`
-/

namespace A138139.P14902561003696143962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.valuation (A036561 n).toNat 6 + 1)

end

end A138139.P14902561003696143962

namespace A138139

/-- `A000040(val(A036561(n), 6)+1)` -/
def P14902561003696143962.Spec : Prop :=
  ∀ n, P14902561003696143962.a n = A138139 (n + 1)

end A138139

/-! ## A138139.P14715577351343822064

`A134735(2*A003983(n+1)-1)`
-/

namespace A138139.P14715577351343822064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (2 * A003983 (n + 1) - 1).toNat

end

end A138139.P14715577351343822064

namespace A138139

/-- `A134735(2*A003983(n+1)-1)` -/
def P14715577351343822064.Spec : Prop :=
  ∀ n, P14715577351343822064.a n = A138139 (n + 1)

end A138139

/-! ## A138139.P4984990125862023667

`A040976(val(A036561(n), 6)+1)+2`
-/

namespace A138139.P4984990125862023667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (SequenceMachineLib.valuation (A036561 n).toNat 6 + 1) + 2

end

end A138139.P4984990125862023667

namespace A138139

/-- `A040976(val(A036561(n), 6)+1)+2` -/
def P4984990125862023667.Spec : Prop :=
  ∀ n, P4984990125862023667.a n = A138139 (n + 1)

end A138139

/-! ## A138139.P6893691459556498430

`A000040(A008619(A157458(n)))`
-/

namespace A138139.P6893691459556498430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A008619 (A157458 n).toNat).toNat

end

end A138139.P6893691459556498430

namespace A138139

/-- `A000040(A008619(A157458(n)))` -/
def P6893691459556498430.Spec : Prop :=
  ∀ n, P6893691459556498430.a n = A138139 (n + 1)

end A138139

/-! ## A138139.P11835971359774424562

`A000040(A051125(n+1)-A049581(n))`
-/

namespace A138139.P11835971359774424562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A051125 (n + 1) - A049581 n).toNat

end

end A138139.P11835971359774424562

namespace A138139

/-- `A000040(A051125(n+1)-A049581(n))` -/
def P11835971359774424562.Spec : Prop :=
  ∀ n, P11835971359774424562.a n = A138139 (n + 1)

end A138139

/-! ## A138139.P1485112740739544951

`A037126(A168281(n+1))`
-/

namespace A138139.P1485112740739544951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A168281 (n + 1)).toNat

end

end A138139.P1485112740739544951

namespace A138139

/-- `A037126(A168281(n+1))` -/
def P1485112740739544951.Spec : Prop :=
  ∀ n, P1485112740739544951.a n = A138139 (n + 1)

end A138139

/-! ## A138139.P5436917201142872477

`A040976(ceil(A210535(n+1)/2))+2`
-/

namespace A138139.P5436917201142872477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 ⌈(A210535 (n + 1) : ℚ) / 2⌉.toNat + 2

end

end A138139.P5436917201142872477

namespace A138139

/-- `A040976(ceil(A210535(n+1)/2))+2` -/
def P5436917201142872477.Spec : Prop :=
  ∀ n, P5436917201142872477.a n = A138139 (n + 1)

end A138139

/-! ## A138139.P5372709453013186914

`A020639(A098350(n+1))`
-/

namespace A138139.P5372709453013186914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A098350 (n + 1)).toNat

end

end A138139.P5372709453013186914

namespace A138139

/-- `A020639(A098350(n+1))` -/
def P5372709453013186914.Spec : Prop :=
  ∀ n, P5372709453013186914.a n = A138139 (n + 1)

end A138139

/-! ## A138139.P15665075751159851341

`gcd(∏[A204118(n+1)], A098350(n+1))`
-/

namespace A138139.P15665075751159851341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204118 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A098350 (n + 1))

end

end A138139.P15665075751159851341

namespace A138139

/-- `gcd(∏[A204118(n+1)], A098350(n+1))` -/
def P15665075751159851341.Spec : Prop :=
  ∀ n, (P15665075751159851341.a n : ℤ) = A138139 (n + 1)

end A138139

/-! ## A138139.P12016800818969544604

`A000040(A037458(2*n+1)-n)`
-/

namespace A138139.P12016800818969544604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A037458 (2 * n + 1) - (n : ℤ)).toNat

end

end A138139.P12016800818969544604

namespace A138139

/-- `A000040(A037458(2*n+1)-n)` -/
def P12016800818969544604.Spec : Prop :=
  ∀ n, P12016800818969544604.a n = A138139 (n + 1)

end A138139

/-! ## A138139.P6314965624374585252

`p?[A207790(A004737(n+1))]`
-/

namespace A138139.P6314965624374585252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (A004737 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138139.P6314965624374585252

namespace A138139

/-- `p?[A207790(A004737(n+1))]` -/
def P6314965624374585252.Spec : Prop :=
  ∀ n, P6314965624374585252.a n = A138139 (n + 1)

end A138139

/-! ## A138139.P3808722104161375087

`A000040(A008619(A053615(A008619(4*n))))`
-/

namespace A138139.P3808722104161375087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A008619 (A053615 (A008619 (4 * n)).toNat).toNat).toNat

end

end A138139.P3808722104161375087

namespace A138139

/-- `A000040(A008619(A053615(A008619(4*n))))` -/
def P3808722104161375087.Spec : Prop :=
  ∀ n, P3808722104161375087.a n = A138139 (n + 1)

end A138139

/-! ## A138139.P14988675359992864206

`A083716(A073060(n))+1`
-/

namespace A138139.P14988675359992864206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083716 (A073060 n).toNat + 1

end

end A138139.P14988675359992864206

namespace A138139

/-- `A083716(A073060(n))+1` -/
def P14988675359992864206.Spec : Prop :=
  ∀ n, P14988675359992864206.a n = A138139 (n + 1)

end A138139

/-! ## A138139.P4883205252875520705

`A000040(A000005(A144464(n)))`
-/

namespace A138139.P4883205252875520705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000005 (A144464 n).toNat).toNat

end

end A138139.P4883205252875520705

namespace A138139

/-- `A000040(A000005(A144464(n)))` -/
def P4883205252875520705.Spec : Prop :=
  ∀ n, P4883205252875520705.a n = A138139 (n + 1)

end A138139

/-!
# A138140: Concatenation of terms of n-th row of the triangle of primes A138139.

The programs for A138140, there is no canonical definition to state claims against.
-/

/-! ## A138140.P12823634269812134593

`A089182(∑[A089170(n+3)])`
-/

namespace A138140.P12823634269812134593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089170 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089182 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A138140.P12823634269812134593

/-! ## A138140.P7063652780890895980

`A089182(A082216(n+2)-1)`
-/

namespace A138140.P7063652780890895980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089182 (A082216 (n + 2) - 1).toNat

end

end A138140.P7063652780890895980

/-! ## A138140.P16702821729265100167

`A089182(A089170(n+3)+n)`
-/

namespace A138140.P16702821729265100167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089182 (A089170 (n + 3) + (n : ℤ)).toNat

end

end A138140.P16702821729265100167

/-! ## A138140.P6236536263979669926

`A089182(n+1)+A005872(A039301(n))`
-/

namespace A138140.P6236536263979669926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089182 (n + 1) + A005872 (A039301 n).toNat

end

end A138140.P6236536263979669926

/-!
# A138141: Numbers with digits in ascending order that differ exactly by 1.

The programs for A138141, there is no canonical definition to state claims against.
-/

/-! ## A138141.P17039306884312548240

`∩[A033075(n+1), A059043(n+1)]`
-/

namespace A138141.P17039306884312548240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138141.P17039306884312548240

/-! ## A138141.P13714305870512243108

`∩[A059043(n+1), A352927(n+1)]`
-/

namespace A138141.P13714305870512243108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138141.P13714305870512243108

/-! ## A138141.P9515460205218759520

`∩[A033075(n+1), A378949(n+1)]`
-/

namespace A138141.P9515460205218759520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138141.P9515460205218759520

/-! ## A138141.P12486882289377416709

`∩[A059043(n+1), A378949(n+1)]`
-/

namespace A138141.P12486882289377416709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138141.P12486882289377416709

/-! ## A138141.P5377443728948458311

`∩[A179308(n+1), A378949(n+1)]`
-/

namespace A138141.P5377443728948458311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138141.P5377443728948458311

/-!
# A138142: Nonnegative numbers with digits in descending order that differ exactly by 1.

The programs for A138142, there is no canonical definition to state claims against.
-/

/-! ## A138142.P11438403375416389971

`A158699(A039691(n+1))`
-/

namespace A138142.P11438403375416389971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158699 (A039691 (n + 1)).toNat

end

end A138142.P11438403375416389971

/-! ## A138142.P9412582300096524220

`A158699(A298639(n+1))`
-/

namespace A138142.P9412582300096524220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158699 (A298639 (n + 1)).toNat

end

end A138142.P9412582300096524220

/-! ## A138142.P353327363956318496

`∩[A009995(n+1), A158699(n)]`
-/

namespace A138142.P353327363956318496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158699 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138142.P353327363956318496

/-! ## A138142.P12595166764575985263

`∩[A009995(n+1), A215014(n+1)]`
-/

namespace A138142.P12595166764575985263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138142.P12595166764575985263

/-! ## A138142.P3918754837623970422

`∩[A009996(n+1), A215014(n+1)]`
-/

namespace A138142.P3918754837623970422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138142.P3918754837623970422

/-!
# A138143: Triangle read by rows in which row n lists p(1), p(2), ..., p(n), p(n-1), ..., p(1), where p(i) = i-th prime.

The programs for A138143, the canonical program `A138143.P5194370615714979143` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138143 has offset 1).

The definition of A138143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138143.P12501977138694061552

`A138139(2*round(1/2+n-round(sqrt(n))²)²)`
-/

namespace A138143.P12501977138694061552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138139 (2 * SequenceMachineLib.roundAway ((1 : ℚ) / 2 + (n : ℚ) - (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2 : ℚ)) ^ 2).toNat

end

end A138143.P12501977138694061552

namespace A138143

/-- `A138139(2*round(1/2+n-round(sqrt(n))²)²)` -/
def P12501977138694061552.Spec : Prop :=
  ∀ n, P12501977138694061552.a n = A138143 (n + 1)

end A138143

/-! ## A138143.P18036777356588603737

`A000040(root(round(1/2+n-round(sqrt(n))²)², 2-char[n²]))`
-/

namespace A138143.P18036777356588603737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((1 : ℚ) / 2 + (n : ℚ) - (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2 : ℚ)) ^ 2 : ℝ) ^ (1 / (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℝ)))).toNat

end

end A138143.P18036777356588603737

namespace A138143

/-- `A000040(root(round(1/2+n-round(sqrt(n))²)², 2-char[n²]))` -/
def P18036777356588603737.Spec : Prop :=
  ∀ n, P18036777356588603737.a n = A138143 (n + 1)

end A138143

/-! ## A138143.P5194370615714979143

`A005145(A133825(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138143

/-- `A005145(A133825(n))` -/
def P5194370615714979143.Spec : Prop :=
  ∀ n, P5194370615714979143.a n = A138143 (n + 1)

theorem P5194370615714979143.correct : P5194370615714979143.Spec := by
  intro n
  simp only [A138143, Nat.add_sub_cancel]

end A138143

/-! ## A138143.P2947739086585714281

`p?[A130008(A049581(n))]`
-/

namespace A138143.P2947739086585714281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 (A049581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138143.P2947739086585714281

namespace A138143

/-- `p?[A130008(A049581(n))]` -/
def P2947739086585714281.Spec : Prop :=
  ∀ n, P2947739086585714281.a n = A138143 (n + 1)

end A138143

/-! ## A138143.P6904050553196120612

`p?[A073846(A143182(n))]`
-/

namespace A138143.P6904050553196120612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A143182 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138143.P6904050553196120612

namespace A138143

/-- `p?[A073846(A143182(n))]` -/
def P6904050553196120612.Spec : Prop :=
  ∀ n, P6904050553196120612.a n = A138143 (n + 1)

end A138143

/-! ## A138143.P12761553184417680293

`A063905(A124258(n+1)+1)`
-/

namespace A138143.P12761553184417680293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063905 (A124258 (n + 1) + 1).toNat

end

end A138143.P12761553184417680293

namespace A138143

/-- `A063905(A124258(n+1)+1)` -/
def P12761553184417680293.Spec : Prop :=
  ∀ n, P12761553184417680293.a n = A138143 (n + 1)

end A138143

/-! ## A138143.P12110181382789913916

`A207790(2*A004737(n+1))`
-/

namespace A138143.P12110181382789913916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A004737 (n + 1)).toNat

end

end A138143.P12110181382789913916

namespace A138143

/-- `A207790(2*A004737(n+1))` -/
def P12110181382789913916.Spec : Prop :=
  ∀ n, P12110181382789913916.a n = A138143 (n + 1)

end A138143

/-! ## A138143.P5678527028552594130

`∏{p}[A000040(A004737(C(n+1, n))), #]`
-/

namespace A138143.P5678527028552594130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A004737 (Nat.choose (n + 1) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A138143.P5678527028552594130

namespace A138143

/-- `∏{p}[A000040(A004737(C(n+1, n))), #]` -/
def P5678527028552594130.Spec : Prop :=
  ∀ n, (P5678527028552594130.a n : ℤ) = A138143 (n + 1)

end A138143

/-! ## A138143.P17857911919242008307

`∑{d}[A000040(A004737(n+1)), A000010(#)]`
-/

namespace A138143.P17857911919242008307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A004737 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A138143.P17857911919242008307

namespace A138143

/-- `∑{d}[A000040(A004737(n+1)), A000010(#)]` -/
def P17857911919242008307.Spec : Prop :=
  ∀ n, P17857911919242008307.a n = A138143 (n + 1)

end A138143

/-! ## A138143.P16505881575764665525

`A006530(∏{d}[A004737(n+1), A000040(#)])`
-/

namespace A138143.P16505881575764665525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ d ∈ Nat.divisors (f1 n).natAbs, A000040 d).toNat

end

end A138143.P16505881575764665525

namespace A138143

/-- `A006530(∏{d}[A004737(n+1), A000040(#)])` -/
def P16505881575764665525.Spec : Prop :=
  ∀ n, P16505881575764665525.a n = A138143 (n + 1)

end A138143

/-! ## A138143.P4333188992534892160

`∏{d}[A000040(A004737(n+1)), A020639(#)]`
-/

namespace A138143.P4333188992534892160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A004737 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A020639 d

end

end A138143.P4333188992534892160

namespace A138143

/-- `∏{d}[A000040(A004737(n+1)), A020639(#)]` -/
def P4333188992534892160.Spec : Prop :=
  ∀ n, P4333188992534892160.a n = A138143 (n + 1)

end A138143

/-! ## A138143.P8741769316981733737

`∏{p}[A000040(A004737(n+1)), A006530(#)]`
-/

namespace A138143.P8741769316981733737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A004737 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 p

end

end A138143.P8741769316981733737

namespace A138143

/-- `∏{p}[A000040(A004737(n+1)), A006530(#)]` -/
def P8741769316981733737.Spec : Prop :=
  ∀ n, P8741769316981733737.a n = A138143 (n + 1)

end A138143

/-! ## A138143.P8110065170016730285

`∏{p}[A000040(A004737(n+1)), A014963(#)]`
-/

namespace A138143.P8110065170016730285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A004737 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014963 p

end

end A138143.P8110065170016730285

namespace A138143

/-- `∏{p}[A000040(A004737(n+1)), A014963(#)]` -/
def P8110065170016730285.Spec : Prop :=
  ∀ n, P8110065170016730285.a n = A138143 (n + 1)

end A138143

/-! ## A138143.P13964893173247665244

`A007318(C(2, n))*A000040(A004737(n+1))`
-/

namespace A138143.P13964893173247665244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A000040 (A004737 (n + 1)).toNat

end

end A138143.P13964893173247665244

namespace A138143

/-- `A007318(C(2, n))*A000040(A004737(n+1))` -/
def P13964893173247665244.Spec : Prop :=
  ∀ n, P13964893173247665244.a n = A138143 (n + 1)

end A138143

/-! ## A138143.P12993006516364460857

`ceil(1/A007318(n))*A000040(A004737(n+1))`
-/

namespace A138143.P12993006516364460857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A007318 n : ℚ)⌉ * A000040 (A004737 (n + 1)).toNat

end

end A138143.P12993006516364460857

namespace A138143

/-- `ceil(1/A007318(n))*A000040(A004737(n+1))` -/
def P12993006516364460857.Spec : Prop :=
  ∀ n, P12993006516364460857.a n = A138143 (n + 1)

end A138143

/-! ## A138143.P14108493163507114035

`lcm(A000040(A004737(n+1)), A008683(gcd(n, n+2)))`
-/

namespace A138143.P14108493163507114035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000040 (A004737 (n + 1)).toNat) (A008683 (Nat.gcd n (n + 2)))

end

end A138143.P14108493163507114035

namespace A138143

/-- `lcm(A000040(A004737(n+1)), A008683(gcd(n, n+2)))` -/
def P14108493163507114035.Spec : Prop :=
  ∀ n, (P14108493163507114035.a n : ℤ) = A138143 (n + 1)

end A138143

/-! ## A138143.P10666839827241267541

`A000040(sqrt(A124258(n+1)))%(A088707(n+1)-1)`
-/

namespace A138143.P10666839827241267541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (SequenceMachineLib.roundAway (Real.sqrt (A124258 (n + 1) : ℝ))).toNat) (A088707 (n + 1) - 1)

end

end A138143.P10666839827241267541

namespace A138143

/-- `A000040(sqrt(A124258(n+1)))%(A088707(n+1)-1)` -/
def P10666839827241267541.Spec : Prop :=
  ∀ n, P10666839827241267541.a n = A138143 (n + 1)

end A138143

/-! ## A138143.P5563682343925486464

`A000040(A004737(n+1))*A004737(A004737(n+1)²)`
-/

namespace A138143.P5563682343925486464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A004737 (n + 1)).toNat * A004737 (A004737 (n + 1) ^ 2).toNat

end

end A138143.P5563682343925486464

namespace A138143

/-- `A000040(A004737(n+1))*A004737(A004737(n+1)²)` -/
def P5563682343925486464.Spec : Prop :=
  ∀ n, P5563682343925486464.a n = A138143 (n + 1)

end A138143

/-!
# A138144: Palindromes formed from the reflected decimal expansion of the concatenation of 1, 1 and infinite 0's.

The programs for A138144, the canonical program `A138144.P8705806710994065630` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138144 has offset 1).

The definition of A138144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138144.P8705806710994065630

`A003953(n)+11%A015448(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138144

/-- `A003953(n)+11%A015448(n)` -/
def P8705806710994065630.Spec : Prop :=
  ∀ n, P8705806710994065630.a n = A138144 (n + 1)

theorem P8705806710994065630.correct : P8705806710994065630.Spec := by
  intro n
  simp only [A138144, Nat.add_sub_cancel]

end A138144

/-! ## A138144.P16986384346073508627

`A000042(n+1)+A000533(n)-A147757(n+1)`
-/

namespace A138144.P16986384346073508627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + (A000533 n - A147757 (n + 1))

end

end A138144.P16986384346073508627

namespace A138144

/-- `A000042(n+1)+A000533(n)-A147757(n+1)` -/
def P16986384346073508627.Spec : Prop :=
  ∀ n, P16986384346073508627.a n = A138144 (n + 1)

end A138144

/-! ## A138144.P16739610311495782072

`A002275(n+1)+A000533(n)-A147757(n+1)`
-/

namespace A138144.P16739610311495782072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) + (A000533 n - A147757 (n + 1))

end

end A138144.P16739610311495782072

namespace A138144

/-- `A002275(n+1)+A000533(n)-A147757(n+1)` -/
def P16739610311495782072.Spec : Prop :=
  ∀ n, P16739610311495782072.a n = A138144 (n + 1)

end A138144

/-! ## A138144.P3005067563408814059

`A057148(A016116(n)+∑[A076736(n+1)])`
-/

namespace A138144.P3005067563408814059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057148 (A016116 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A138144.P3005067563408814059

namespace A138144

/-- `A057148(A016116(n)+∑[A076736(n+1)])` -/
def P3005067563408814059.Spec : Prop :=
  ∀ n, P3005067563408814059.a n = A138144 (n + 1)

end A138144

/-! ## A138144.P14650134987822291234

`A007088(A147595(n+1))`
-/

namespace A138144.P14650134987822291234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A147595 (n + 1)).toNat

end

end A138144.P14650134987822291234

namespace A138144

/-- `A007088(A147595(n+1))` -/
def P14650134987822291234.Spec : Prop :=
  ∀ n, P14650134987822291234.a n = A138144 (n + 1)

end A138144

/-!
# A138145: Palindromes formed from the reflected decimal expansion of the concatenation of 1, 1, 1 and infinite 0's.

The programs for A138145, there is no canonical definition to state claims against.
-/

/-! ## A138145.P356435637743513747

`A007088(A147596(n+1))`
-/

namespace A138145.P356435637743513747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A147596 (n + 1)).toNat

end

end A138145.P356435637743513747

/-! ## A138145.P16886939088464333897

`A305989(or(1, A147596(n+1)))`
-/

namespace A138145.P16886939088464333897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.lor 1 (A147596 (n + 1))).toNat

end

end A138145.P16886939088464333897

/-! ## A138145.P17950322377956197802

`A215256(A147596(n+1)%ceil(tanh(n)+10^n))`
-/

namespace A138145.P17950322377956197802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215256 (Int.tmod (A147596 (n + 1)) ⌈Real.tanh (n : ℝ) + (10 ^ n : ℝ)⌉).toNat

end

end A138145.P17950322377956197802

/-! ## A138145.P18163510345596014505

`A305989(A147596(n+1)+A000007(n))`
-/

namespace A138145.P18163510345596014505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A147596 (n + 1) + A000007 n).toNat

end

end A138145.P18163510345596014505

/-! ## A138145.P4664162602950672615

`A215256(A057427(n)*A147596(n+1))`
-/

namespace A138145.P4664162602950672615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215256 (A057427 n * A147596 (n + 1)).toNat

end

end A138145.P4664162602950672615

/-!
# A138146: Palindromes with 2n-1 digits formed from the reflected decimal expansion of the concatenation of 1, 1, 1 and infinite 0's.

The programs for A138146, there is no canonical definition to state claims against.
-/

/-! ## A138146.P18011210113237514704

`A138145(Δ[n²])`
-/

namespace A138146.P18011210113237514704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138145 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A138146.P18011210113237514704

/-! ## A138146.P1793555728553326647

`record[A138145(A099375(n))]`
-/

namespace A138146.P1793555728553326647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138145 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138146.P1793555728553326647

/-! ## A138146.P8190180962559009941

`or(1, A138145(A005408(n)))`
-/

namespace A138146.P8190180962559009941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A138145 (A005408 n).toNat)

end

end A138146.P8190180962559009941

/-! ## A138146.P2479338855774757199

`record[A138145(A000265(n+1))]`
-/

namespace A138146.P2479338855774757199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138145 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138146.P2479338855774757199

/-! ## A138146.P6478356737394816455

`or(1, A138145(A138187(3*n)))`
-/

namespace A138146.P6478356737394816455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A138145 (A138187 (3 * n)).toNat)

end

end A138146.P6478356737394816455

/-! ## A138146.P734193879656997021

`record[A138145(n+1)^A230074(n+1)]`
-/

namespace A138146.P734193879656997021
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138145 (n + 1) : ℚ) ^ (A230074 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138146.P734193879656997021

/-! ## A138146.P1095436756164465492

`A138145(A138187(3*n))%A138147(n+1)`
-/

namespace A138146.P1095436756164465492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138145 (A138187 (3 * n)).toNat) (A138147 (n + 1))

end

end A138146.P1095436756164465492

/-!
# A138147: Concatenation of n digits 1 and n digits 0.

The programs for A138147, the canonical program `A138147.P10958362460763954075` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138147 has offset 1).

The definition of A138147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138147.P11558568250045013397

`(10^(2*(n+1))-10^(n+1))/9`
-/

namespace A138147.P11558568250045013397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (2 * (n + 1)) : ℤ) - (10 ^ (n + 1) : ℤ) : ℚ) / 9

end

end A138147.P11558568250045013397

namespace A138147

/-- `(10^(2*(n+1))-10^(n+1))/9` -/
def P11558568250045013397.Spec : Prop :=
  ∀ n, P11558568250045013397.a n = (A138147 (n + 1) : ℚ)

end A138147

/-! ## A138147.P10958362460763954075

`10*A109241(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138147

/-- `10*A109241(n)` -/
def P10958362460763954075.Spec : Prop :=
  ∀ n, P10958362460763954075.a n = A138147 (n + 1)

theorem P10958362460763954075.correct : P10958362460763954075.Spec := by
  intro n
  simp only [A138147, Nat.add_sub_cancel]

end A138147

/-! ## A138147.P17510837545559808983

`A002275(n+1)*10^(n+1)`
-/

namespace A138147.P17510837545559808983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) * (10 ^ (n + 1) : ℤ)

end

end A138147.P17510837545559808983

namespace A138147

/-- `A002275(n+1)*10^(n+1)` -/
def P17510837545559808983.Spec : Prop :=
  ∀ n, P17510837545559808983.a n = A138147 (n + 1)

end A138147

/-! ## A138147.P4558721483900344606

`lcm(10^(n+1), ∑[10^n])`
-/

namespace A138147.P4558721483900344606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (10 ^ (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138147.P4558721483900344606

namespace A138147

/-- `lcm(10^(n+1), ∑[10^n])` -/
def P4558721483900344606.Spec : Prop :=
  ∀ n, (P4558721483900344606.a n : ℤ) = A138147 (n + 1)

end A138147

/-! ## A138147.P17282588168845333894

`A279877(Δ[n²])`
-/

namespace A138147.P17282588168845333894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A138147.P17282588168845333894

namespace A138147

/-- `A279877(Δ[n²])` -/
def P17282588168845333894.Spec : Prop :=
  ∀ n, P17282588168845333894.a n = A138147 (n + 1)

end A138147

/-! ## A138147.P16180327204770672920

`A282415(Δ[n²])`
-/

namespace A138147.P16180327204770672920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282415 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A138147.P16180327204770672920

namespace A138147

/-- `A282415(Δ[n²])` -/
def P16180327204770672920.Spec : Prop :=
  ∀ n, P16180327204770672920.a n = A138147 (n + 1)

end A138147

/-! ## A138147.P1261276892619283444

`A288661(Δ[n²])`
-/

namespace A138147.P1261276892619283444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288661 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A138147.P1261276892619283444

namespace A138147

/-- `A288661(Δ[n²])` -/
def P1261276892619283444.Spec : Prop :=
  ∀ n, P1261276892619283444.a n = A138147 (n + 1)

end A138147

/-! ## A138147.P15245288475129147896

`A289405(Δ[n²])`
-/

namespace A138147.P15245288475129147896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289405 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A138147.P15245288475129147896

namespace A138147

/-- `A289405(Δ[n²])` -/
def P15245288475129147896.Spec : Prop :=
  ∀ n, P15245288475129147896.a n = A138147 (n + 1)

end A138147

/-! ## A138147.P11250771368883711890

`A290232(Δ[n²])`
-/

namespace A138147.P11250771368883711890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290232 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A138147.P11250771368883711890

namespace A138147

/-- `A290232(Δ[n²])` -/
def P11250771368883711890.Spec : Prop :=
  ∀ n, P11250771368883711890.a n = A138147 (n + 1)

end A138147

/-! ## A138147.P4544685470173489162

`record[Δ[A285540(n)]]`
-/

namespace A138147.P4544685470173489162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285540 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138147.P4544685470173489162

namespace A138147

/-- `record[Δ[A285540(n)]]` -/
def P4544685470173489162.Spec : Prop :=
  ∀ n, P4544685470173489162.a n = A138147 (n + 1)

end A138147

/-!
# A138148: Cyclops numbers with binary digits only.

The programs for A138148, the canonical program `A138148.P14723109673005405600` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138148 has offset 0).

The definition of A138148 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138148.P17523931286979183163

`A000533(n+1)*A002275(n)`
-/

namespace A138148.P17523931286979183163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 (n + 1) * A002275 n

end

end A138148.P17523931286979183163

namespace A138148

/-- `A000533(n+1)*A002275(n)` -/
def P17523931286979183163.Spec : Prop :=
  ∀ n, P17523931286979183163.a n = A138148 n

end A138148

/-! ## A138148.P14723109673005405600

`A002275(2*n+1)-A011557(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138148

/-- `A002275(2*n+1)-A011557(n)` -/
def P14723109673005405600.Spec : Prop :=
  ∀ n, P14723109673005405600.a n = A138148 n

theorem P14723109673005405600.correct : P14723109673005405600.Spec := by
  intro n
  simp only [A138148]

end A138148

/-! ## A138148.P7682584900747816933

`floor(10*(10^n)²/9)-10^n`
-/

namespace A138148.P7682584900747816933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 * (10 ^ n) ^ 2 : ℚ) / 9⌋ - (10 ^ n : ℤ)

end

end A138148.P7682584900747816933

namespace A138148

/-- `floor(10*(10^n)²/9)-10^n` -/
def P7682584900747816933.Spec : Prop :=
  ∀ n, P7682584900747816933.a n = A138148 n

end A138148

/-! ## A138148.P18295543313607032103

`gcd(2*(floor(10^(2*n+1)/9)-10^n), 3*(floor(10^(2*n+1)/9)-10^n))`
-/

namespace A138148.P18295543313607032103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (⌊(10 ^ (2 * n + 1) : ℚ) / 9⌋ - (10 ^ n : ℤ))) (3 * (⌊(10 ^ (2 * n + 1) : ℚ) / 9⌋ - (10 ^ n : ℤ)))

end

end A138148.P18295543313607032103

namespace A138148

/-- `gcd(2*(floor(10^(2*n+1)/9)-10^n), 3*(floor(10^(2*n+1)/9)-10^n))` -/
def P18295543313607032103.Spec : Prop :=
  ∀ n, (P18295543313607032103.a n : ℤ) = A138148 n

end A138148

/-! ## A138148.P5800221573606549446

`(4*(10*(10^n)²-1)/9+5*10^n)%((10^(2*n+1)-1)/9+2*10^n)`
-/

namespace A138148.P5800221573606549446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (4 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) + (5 * 10 ^ n : ℚ))) (SequenceMachineLib.roundAway (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9 + (2 * 10 ^ n : ℚ)))

end

end A138148.P5800221573606549446

namespace A138148

/-- `(4*(10*(10^n)²-1)/9+5*10^n)%((10^(2*n+1)-1)/9+2*10^n)` -/
def P5800221573606549446.Spec : Prop :=
  ∀ n, P5800221573606549446.a n = A138148 n

end A138148

/-! ## A138148.P5709319541812306722

`2*(floor(10^(2*n+1)/9)-10^n)/dr(10^(2*n+1)-10^n-1-Δ[floor(2/3*10^n)])`
-/

namespace A138148.P5709319541812306722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) / 3 * (10 ^ n : ℚ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (⌊(10 ^ (2 * n + 1) : ℚ) / 9⌋ - (10 ^ n : ℤ)) : ℚ) / (SequenceMachineLib.digitalRoot ((10 ^ (2 * n + 1) : ℤ) - (10 ^ n : ℤ) - 1 - (f1 (n + 1) - f1 n)) : ℚ)

end

end A138148.P5709319541812306722

namespace A138148

/-- `2*(floor(10^(2*n+1)/9)-10^n)/dr(10^(2*n+1)-10^n-1-Δ[floor(2/3*10^n)])` -/
def P5709319541812306722.Spec : Prop :=
  ∀ n, P5709319541812306722.a n = (A138148 n : ℚ)

end A138148

/-! ## A138148.P7652086036791187596

`abs(((6*(10*(10^n)²-1)/9-4*10^n)/2)%((4*(10*(10^n)²-1)/9-2*10^n)/2))`
-/

namespace A138148.P7652086036791187596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (SequenceMachineLib.roundAway ((6 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (4 * 10 ^ n : ℚ)) / 2)) (SequenceMachineLib.roundAway ((4 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (2 * 10 ^ n : ℚ)) / 2))|

end

end A138148.P7652086036791187596

namespace A138148

/-- `abs(((6*(10*(10^n)²-1)/9-4*10^n)/2)%((4*(10*(10^n)²-1)/9-2*10^n)/2))` -/
def P7652086036791187596.Spec : Prop :=
  ∀ n, P7652086036791187596.a n = A138148 n

end A138148

/-! ## A138148.P8222372569367338931

`A332120(n)/2`
-/

namespace A138148.P8222372569367338931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332120 n : ℚ) / 2

end

end A138148.P8222372569367338931

namespace A138148

/-- `A332120(n)/2` -/
def P8222372569367338931.Spec : Prop :=
  ∀ n, P8222372569367338931.a n = (A138148 n : ℚ)

end A138148

/-! ## A138148.P12642273880679798561

`A332130(n)/3`
-/

namespace A138148.P12642273880679798561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332130 n : ℚ) / 3

end

end A138148.P12642273880679798561

namespace A138148

/-- `A332130(n)/3` -/
def P12642273880679798561.Spec : Prop :=
  ∀ n, P12642273880679798561.a n = (A138148 n : ℚ)

end A138148

/-! ## A138148.P4817412004534057638

`A332140(n)/4`
-/

namespace A138148.P4817412004534057638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332140 n : ℚ) / 4

end

end A138148.P4817412004534057638

namespace A138148

/-- `A332140(n)/4` -/
def P4817412004534057638.Spec : Prop :=
  ∀ n, P4817412004534057638.a n = (A138148 n : ℚ)

end A138148

/-!
# A138149: n-th run has length n-th prime, with values 0 and 1 only, starting with 1.

The programs for A138149, the canonical program `A138149.P13595705331882650538` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138149 has offset 1).

The definition of A138149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138149.P1177644131246183252

`round(sin(p?[round(sqrt(2*n))])²)`
-/

namespace A138149.P1177644131246183252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) ^ 2)

end

end A138149.P1177644131246183252

namespace A138149

/-- `round(sin(p?[round(sqrt(2*n))])²)` -/
def P1177644131246183252.Spec : Prop :=
  ∀ n, P1177644131246183252.a n = A138149 (n + 1)

end A138149

/-! ## A138149.P7309325213661749585

`∑[char[∑[record[∑{p}[n, #]]]]]%2`
-/

namespace A138149.P7309325213661749585
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A138149.P7309325213661749585

namespace A138149

/-- `∑[char[∑[record[∑{p}[n, #]]]]]%2` -/
def P7309325213661749585.Spec : Prop :=
  ∀ n, (P7309325213661749585.a n : ℤ) = A138149 (n + 1)

end A138149

/-! ## A138149.P5734238619398741511

`and(1, ∑[char[∑[record[∑{p}[n, #]]]]])`
-/

namespace A138149.P5734238619398741511
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138149.P5734238619398741511

namespace A138149

/-- `and(1, ∑[char[∑[record[∑{p}[n, #]]]]])` -/
def P5734238619398741511.Spec : Prop :=
  ∀ n, (P5734238619398741511.a n : ℤ) = A138149 (n + 1)

end A138149

/-! ## A138149.P665027007888120153

`C(p?[round(sqrt(2*n))], 2)%3`
-/

namespace A138149.P665027007888120153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat 2 % 3

end

end A138149.P665027007888120153

namespace A138149

/-- `C(p?[round(sqrt(2*n))], 2)%3` -/
def P665027007888120153.Spec : Prop :=
  ∀ n, (P665027007888120153.a n : ℤ) = A138149 (n + 1)

end A138149

/-! ## A138149.P4633626643268630561

`floor(p?[round(sqrt(2*n))]%3/2)`
-/

namespace A138149.P4633626643268630561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 3 : ℚ) / 2⌋

end

end A138149.P4633626643268630561

namespace A138149

/-- `floor(p?[round(sqrt(2*n))]%3/2)` -/
def P4633626643268630561.Spec : Prop :=
  ∀ n, P4633626643268630561.a n = A138149 (n + 1)

end A138149

/-! ## A138149.P8050125369572140184

`val((2*p?[round(sqrt(2*n))])%3+1, 2)`
-/

namespace A138149.P8050125369572140184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.tmod (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 3 + 1).toNat 2

end

end A138149.P8050125369572140184

namespace A138149

/-- `val((2*p?[round(sqrt(2*n))])%3+1, 2)` -/
def P8050125369572140184.Spec : Prop :=
  ∀ n, (P8050125369572140184.a n : ℤ) = A138149 (n + 1)

end A138149

/-! ## A138149.P6749266071582151098

`log2(gcd(2, A350174(n)))`
-/

namespace A138149.P6749266071582151098
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A350174 n) : ℝ)

end

end A138149.P6749266071582151098

namespace A138149

/-- `log2(gcd(2, A350174(n)))` -/
def P6749266071582151098.Spec : Prop :=
  ∀ n, P6749266071582151098.a n = (A138149 (n + 1) : ℝ)

end A138149

/-! ## A138149.P13595705331882650538

`A083375(n+1)%2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138149

/-- `A083375(n+1)%2` -/
def P13595705331882650538.Spec : Prop :=
  ∀ n, P13595705331882650538.a n = A138149 (n + 1)

theorem P13595705331882650538.correct : P13595705331882650538.Spec := by
  intro n
  simp only [A138149, Nat.add_sub_cancel]

end A138149

/-! ## A138149.P1981736895231470280

`A193732(n+1)%2`
-/

namespace A138149.P1981736895231470280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193732 (n + 1)) 2

end

end A138149.P1981736895231470280

namespace A138149

/-- `A193732(n+1)%2` -/
def P1981736895231470280.Spec : Prop :=
  ∀ n, P1981736895231470280.a n = A138149 (n + 1)

end A138149

/-! ## A138149.P12852726979069788142

`∑[char[A007504(n)]]%2`
-/

namespace A138149.P12852726979069788142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A138149.P12852726979069788142

namespace A138149

/-- `∑[char[A007504(n)]]%2` -/
def P12852726979069788142.Spec : Prop :=
  ∀ n, (P12852726979069788142.a n : ℤ) = A138149 (n + 1)

end A138149

/-! ## A138149.P16582573592722401357

`A005090(p?[round(sqrt(2*n))])`
-/

namespace A138149.P16582573592722401357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A138149.P16582573592722401357

namespace A138149

/-- `A005090(p?[round(sqrt(2*n))])` -/
def P16582573592722401357.Spec : Prop :=
  ∀ n, P16582573592722401357.a n = A138149 (n + 1)

end A138149

/-! ## A138149.P6510537185765895682

`∑[char[A034387(n+1)]]%2`
-/

namespace A138149.P6510537185765895682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A138149.P6510537185765895682

namespace A138149

/-- `∑[char[A034387(n+1)]]%2` -/
def P6510537185765895682.Spec : Prop :=
  ∀ n, (P6510537185765895682.a n : ℤ) = A138149 (n + 1)

end A138149

/-! ## A138149.P3977675778286465859

`∑[char[A063960(n+1)]]%2`
-/

namespace A138149.P3977675778286465859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A138149.P3977675778286465859

namespace A138149

/-- `∑[char[A063960(n+1)]]%2` -/
def P3977675778286465859.Spec : Prop :=
  ∀ n, (P3977675778286465859.a n : ℤ) = A138149 (n + 1)

end A138149

/-! ## A138149.P4083209737626798037

`A001822(p?[round(sqrt(2*n+1))])`
-/

namespace A138149.P4083209737626798037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A138149.P4083209737626798037

namespace A138149

/-- `A001822(p?[round(sqrt(2*n+1))])` -/
def P4083209737626798037.Spec : Prop :=
  ∀ n, P4083209737626798037.a n = A138149 (n + 1)

end A138149

/-! ## A138149.P16781626586296604646

`A324831(p?[round(sqrt(2*n+1))])`
-/

namespace A138149.P16781626586296604646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324831 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A138149.P16781626586296604646

namespace A138149

/-- `A324831(p?[round(sqrt(2*n+1))])` -/
def P16781626586296604646.Spec : Prop :=
  ∀ n, P16781626586296604646.a n = A138149 (n + 1)

end A138149

/-! ## A138149.P1425326934030357396

`A000720(p?[round(sqrt(2*n))])%2`
-/

namespace A138149.P1425326934030357396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) 2

end

end A138149.P1425326934030357396

namespace A138149

/-- `A000720(p?[round(sqrt(2*n))])%2` -/
def P1425326934030357396.Spec : Prop :=
  ∀ n, P1425326934030357396.a n = A138149 (n + 1)

end A138149

/-! ## A138149.P18138890658214290824

`A003963(p?[round(sqrt(2*n))])%2`
-/

namespace A138149.P18138890658214290824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) 2

end

end A138149.P18138890658214290824

namespace A138149

/-- `A003963(p?[round(sqrt(2*n))])%2` -/
def P18138890658214290824.Spec : Prop :=
  ∀ n, P18138890658214290824.a n = A138149 (n + 1)

end A138149

/-! ## A138149.P14918164548990461680

`A049084(p?[round(sqrt(2*n))])%2`
-/

namespace A138149.P14918164548990461680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) 2

end

end A138149.P14918164548990461680

namespace A138149

/-- `A049084(p?[round(sqrt(2*n))])%2` -/
def P14918164548990461680.Spec : Prop :=
  ∀ n, P14918164548990461680.a n = A138149 (n + 1)

end A138149

/-! ## A138149.P1165255410537600278

`(∑[char[∑[A000040(n+1)]]]+1)%2`
-/

namespace A138149.P1165255410537600278
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) % 2

end

end A138149.P1165255410537600278

namespace A138149

/-- `(∑[char[∑[A000040(n+1)]]]+1)%2` -/
def P1165255410537600278.Spec : Prop :=
  ∀ n, (P1165255410537600278.a n : ℤ) = A138149 (n + 1)

end A138149

/-! ## A138149.P1090909276765847946

`(A000045(p?[round(sqrt(2*n))]+1)-1)%2`
-/

namespace A138149.P1090909276765847946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat - 1) 2

end

end A138149.P1090909276765847946

namespace A138149

/-- `(A000045(p?[round(sqrt(2*n))]+1)-1)%2` -/
def P1090909276765847946.Spec : Prop :=
  ∀ n, P1090909276765847946.a n = A138149 (n + 1)

end A138149

/-!
# A138150: n-th run has length n-th prime, with digits 0 and 1 only, starting with 0.

The programs for A138150, there is no canonical definition to state claims against.
-/

/-! ## A138150.P1704400537319238553

`log2(gcd(2, ∑[char[∑[record[∑{p}[n, #]]]]]))`
-/

namespace A138150.P1704400537319238553
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A138150.P1704400537319238553

/-! ## A138150.P8052843313328592773

`(p?[round(sqrt(2*n))]+1)²%3`
-/

namespace A138150.P8052843313328592773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1) ^ 2) 3

end

end A138150.P8052843313328592773

/-! ## A138150.P16897783046617678355

`1-∑[char[∑[record[∑{p}[n, #]]]]]%2`
-/

namespace A138150.P16897783046617678355
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)

end

end A138150.P16897783046617678355

/-! ## A138150.P9500823844678883006

`1-and(1, ∑[char[∑[record[∑{p}[n, #]]]]])`
-/

namespace A138150.P9500823844678883006
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A138150.P9500823844678883006

/-! ## A138150.P8787564892299680625

`∑[char[∑[p?[n-(-1)^n]]]]²%2`
-/

namespace A138150.P8787564892299680625
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).toNat.Prime) n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 % 2

end

end A138150.P8787564892299680625

/-! ## A138150.P2852408775445167370

`A350174(n)%2`
-/

namespace A138150.P2852408775445167370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350174 n) 2

end

end A138150.P2852408775445167370

/-! ## A138150.P1002434041109485603

`1-A138149(n+1)`
-/

namespace A138150.P1002434041109485603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A138149 (n + 1)

end

end A138150.P1002434041109485603

/-! ## A138150.P6898715589274855817

`A162988(n+2)%2`
-/

namespace A138150.P6898715589274855817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162988 (n + 2)) 2

end

end A138150.P6898715589274855817

/-! ## A138150.P5576033166196949837

`∑[char[∑[A000040(n+1)]]]%2`
-/

namespace A138150.P5576033166196949837
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A138150.P5576033166196949837

/-! ## A138150.P916385499957813289

`val(A020639(∑[char[∑[record[∑{p}[n, #]]]]]), 2)`
-/

namespace A138150.P916385499957813289
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2

end

end A138150.P916385499957813289

/-!
# A138151: Irregular triangle read by rows in which rows 1..n (when read together) list all the parts in the partitions of n and row n starts with the partitions of n that do not contain 1 as a part (in the order used for A080577).

The programs for A138151, there is no canonical definition to state claims against.
-/

/-! ## A138151.P16203953012019502580

`A207378(n%A107603(3*n+4)+1)`
-/

namespace A138151.P16203953012019502580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207378 (Int.tmod (n : ℤ) (A107603 (3 * n + 4)) + 1).toNat

end

end A138151.P16203953012019502580

/-! ## A138151.P7311183517668376230

`A138121(lt[A253004(n+1), n])`
-/

namespace A138151.P7311183517668376230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253004 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138121 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A138151.P7311183517668376230

/-! ## A138151.P12095472700982181320

`A138121(∑[A319430(A210373(n))])`
-/

namespace A138151.P12095472700982181320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319430 (A210373 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138121 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A138151.P12095472700982181320

/-! ## A138151.P10393725795411350881

`A178798(A008483(n))+A138121(n+1)`
-/

namespace A138151.P10393725795411350881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A008483 n).toNat + A138121 (n + 1)

end

end A138151.P10393725795411350881

/-! ## A138151.P7073822197686445052

`A207378(n+1)-A178798(A107230(n))`
-/

namespace A138151.P7073822197686445052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207378 (n + 1) - A178798 (A107230 n).toNat

end

end A138151.P7073822197686445052

/-!
# A138152: Triangular sequence: a(n, m) = a(n - 1, m) + 10 and a(n,m) + 2*ceiling(log(1+k)), k <= n.

The programs for A138152, there is no canonical definition to state claims against.
-/

/-! ## A138152.P6629907050864485013

`p?[A005818(A322809(n+1))]%A025195(n+6)`
-/

namespace A138152.P6629907050864485013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (A322809 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A025195 (n + 6))

end

end A138152.P6629907050864485013

/-! ## A138152.P15730208638635609036

`p?[A005818(A322809(n+1))]%A019596(n)²`
-/

namespace A138152.P15730208638635609036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (A322809 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A019596 n ^ 2)

end

end A138152.P15730208638635609036

/-! ## A138152.P11604698179173699059

`p?[A005818(A322809(n+1))%A336143(n+1)]`
-/

namespace A138152.P11604698179173699059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005818 (A322809 (n + 1)).toNat) (A336143 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138152.P11604698179173699059

/-! ## A138152.P2284073412974396447

`p?[A297217(n+1)+A118168(n+1)]`
-/

namespace A138152.P2284073412974396447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297217 (n + 1) + A118168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138152.P2284073412974396447

/-! ## A138152.P7688463999343791351

`A234345(3*(n+1))%A007618(A013655(n))`
-/

namespace A138152.P7688463999343791351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234345 (3 * (n + 1))) (A007618 (A013655 n).toNat)

end

end A138152.P7688463999343791351

/-!
# A138155: Triangle read by rows: T(n,k) is the number of Dyck paths with nondecreasing peaks having semilength n and with height of last peak equal to k (1 <= k <= n).

The programs for A138155, there is no canonical definition to state claims against.
-/

/-! ## A138155.P12213157524785673636

`A380573(A210764(n))`
-/

namespace A138155.P12213157524785673636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380573 (A210764 n).toNat

end

end A138155.P12213157524785673636

/-! ## A138155.P16877175924383597124

`or(A003849(A064349(n)), A091186(n))`
-/

namespace A138155.P16877175924383597124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003849 (A064349 n).toNat) (A091186 n)

end

end A138155.P16877175924383597124

/-! ## A138155.P1815488053677202535

`or(A086747(A007531(n)), A091186(n))`
-/

namespace A138155.P1815488053677202535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086747 (A007531 n).toNat) (A091186 n)

end

end A138155.P1815488053677202535

/-! ## A138155.P8724965004818261268

`or(A091186(n), A340998(A352366(n)))`
-/

namespace A138155.P8724965004818261268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A091186 n) (A340998 ((A352366 n).toNat + 140))

end

end A138155.P8724965004818261268

/-! ## A138155.P6631289454945434580

`xor(A165878(A091186(n)), A210764(n))`
-/

namespace A138155.P6631289454945434580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A165878 (A091186 n).toNat) (A210764 n)

end

end A138155.P6631289454945434580

/-!
# A138156: Sum of the path lengths of all binary trees with n edges.

The programs for A138156, the canonical program `A138156.P5899904545500948674` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138156 has offset 0).

The definition of A138156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138156.P5899904545500948674

`4^(n+1)-(3*n+4)*C(2*n+2, n+1)/(n+2)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138156

/-- `4^(n+1)-(3*n+4)*C(2*n+2, n+1)/(n+2)` -/
def P5899904545500948674.Spec : Prop :=
  ∀ n, P5899904545500948674.a n = (A138156 n : ℚ)

end A138156

/-! ## A138156.P2513437671335943333

`2*A006419(n)`
-/

namespace A138156.P2513437671335943333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006419 n

end

end A138156.P2513437671335943333

namespace A138156

/-- `2*A006419(n)` -/
def P2513437671335943333.Spec : Prop :=
  ∀ n, P2513437671335943333.a n = A138156 n

end A138156

/-! ## A138156.P5263059507212978000

`A191389(2*n+3)`
-/

namespace A138156.P5263059507212978000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191389 (2 * n + 3)

end

end A138156.P5263059507212978000

namespace A138156

/-- `A191389(2*n+3)` -/
def P5263059507212978000.Spec : Prop :=
  ∀ n, P5263059507212978000.a n = A138156 n

end A138156

/-! ## A138156.P7226013977856177284

`record[A191389(gcd(n, ∑[n]))]`
-/

namespace A138156.P7226013977856177284
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191389 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138156.P7226013977856177284

namespace A138156

/-- `record[A191389(gcd(n, ∑[n]))]` -/
def P7226013977856177284.Spec : Prop :=
  ∀ n, P7226013977856177284.a n = A138156 n

end A138156

/-! ## A138156.P4516765243332169363

`record[n%2*A191389(n)]`
-/

namespace A138156.P4516765243332169363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A191389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138156.P4516765243332169363

namespace A138156

/-- `record[n%2*A191389(n)]` -/
def P4516765243332169363.Spec : Prop :=
  ∀ n, P4516765243332169363.a n = A138156 n

end A138156

/-! ## A138156.P4669874443500087631

`record[A191389(and(n+1, or(1, n)))]`
-/

namespace A138156.P4669874443500087631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191389 (Nat.land (n + 1) (Nat.lor 1 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138156.P4669874443500087631

namespace A138156

/-- `record[A191389(and(n+1, or(1, n)))]` -/
def P4669874443500087631.Spec : Prop :=
  ∀ n, P4669874443500087631.a n = A138156 n

end A138156

/-! ## A138156.P6938096244607481241

`4^(n+1)-A051924(n+2)`
-/

namespace A138156.P6938096244607481241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) : ℤ) - A051924 (n + 2)

end

end A138156.P6938096244607481241

namespace A138156

/-- `4^(n+1)-A051924(n+2)` -/
def P6938096244607481241.Spec : Prop :=
  ∀ n, P6938096244607481241.a n = A138156 n

end A138156

/-! ## A138156.P17895226914420430775

`record[A191389(A004442(n))]`
-/

namespace A138156.P17895226914420430775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191389 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138156.P17895226914420430775

namespace A138156

/-- `record[A191389(A004442(n))]` -/
def P17895226914420430775.Spec : Prop :=
  ∀ n, P17895226914420430775.a n = A138156 n

end A138156

/-! ## A138156.P11535785140257207577

`record[A191389(A006257(n))]`
-/

namespace A138156.P11535785140257207577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191389 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138156.P11535785140257207577

namespace A138156

/-- `record[A191389(A006257(n))]` -/
def P11535785140257207577.Spec : Prop :=
  ∀ n, P11535785140257207577.a n = A138156 n

end A138156

/-! ## A138156.P15799001941343791527

`record[A191389(A026741(n))]`
-/

namespace A138156.P15799001941343791527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191389 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138156.P15799001941343791527

namespace A138156

/-- `record[A191389(A026741(n))]` -/
def P15799001941343791527.Spec : Prop :=
  ∀ n, P15799001941343791527.a n = A138156 n

end A138156

/-! ## A138156.P6833100912365482662

`record[A191389(A014681(n)+1)]`
-/

namespace A138156.P6833100912365482662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191389 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138156.P6833100912365482662

namespace A138156

/-- `record[A191389(A014681(n)+1)]` -/
def P6833100912365482662.Spec : Prop :=
  ∀ n, P6833100912365482662.a n = A138156 n

end A138156

/-! ## A138156.P17190578863389162050

`record[(A014681(n)-n)*A191389(n)]`
-/

namespace A138156.P17190578863389162050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014681 n - (n : ℤ)) * A191389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138156.P17190578863389162050

namespace A138156

/-- `record[(A014681(n)-n)*A191389(n)]` -/
def P17190578863389162050.Spec : Prop :=
  ∀ n, P17190578863389162050.a n = A138156 n

end A138156

/-! ## A138156.P7631480569370573945

`A008549(n+1)-A001791(n+1)`
-/

namespace A138156.P7631480569370573945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008549 (n + 1) - A001791 (n + 1)

end

end A138156.P7631480569370573945

namespace A138156

/-- `A008549(n+1)-A001791(n+1)` -/
def P7631480569370573945.Spec : Prop :=
  ∀ n, P7631480569370573945.a n = A138156 n

end A138156

/-! ## A138156.P15613041487771819994

`A008549(n+1)-A026023(2*n)`
-/

namespace A138156.P15613041487771819994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008549 (n + 1) - A026023 (2 * n)

end

end A138156.P15613041487771819994

namespace A138156

/-- `A008549(n+1)-A026023(2*n)` -/
def P15613041487771819994.Spec : Prop :=
  ∀ n, P15613041487771819994.a n = A138156 n

end A138156

/-! ## A138156.P16130394549594822617

`2*(A004171(n)-A024482(n+2))`
-/

namespace A138156.P16130394549594822617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A004171 n - A024482 (n + 2))

end

end A138156.P16130394549594822617

namespace A138156

/-- `2*(A004171(n)-A024482(n+2))` -/
def P16130394549594822617.Spec : Prop :=
  ∀ n, P16130394549594822617.a n = A138156 n

end A138156

/-! ## A138156.P1340007458148444993

`2*(A032443(n+1)-A001700(n+1))`
-/

namespace A138156.P1340007458148444993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A032443 (n + 1) - A001700 (n + 1))

end

end A138156.P1340007458148444993

namespace A138156

/-- `2*(A032443(n+1)-A001700(n+1))` -/
def P1340007458148444993.Spec : Prop :=
  ∀ n, P1340007458148444993.a n = A138156 n

end A138156

/-! ## A138156.P204480167867086831

`A068551(n+1)-2*A001791(n+1)`
-/

namespace A138156.P204480167867086831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068551 (n + 1) - 2 * A001791 (n + 1)

end

end A138156.P204480167867086831

namespace A138156

/-- `A068551(n+1)-2*A001791(n+1)` -/
def P204480167867086831.Spec : Prop :=
  ∀ n, P204480167867086831.a n = A138156 n

end A138156

/-! ## A138156.P1500883573682153392

`A081672(2*(n+1))-A000984(n+2)`
-/

namespace A138156.P1500883573682153392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081672 (2 * (n + 1)) - A000984 (n + 2)

end

end A138156.P1500883573682153392

namespace A138156

/-- `A081672(2*(n+1))-A000984(n+2)` -/
def P1500883573682153392.Spec : Prop :=
  ∀ n, P1500883573682153392.a n = A138156 n

end A138156

/-! ## A138156.P2853063302363584417

`A000079(n+1)²-Δ[A000984(n+1)]`
-/

namespace A138156.P2853063302363584417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) ^ 2 - (f1 (n + 1) - f1 n)

end

end A138156.P2853063302363584417

namespace A138156

/-- `A000079(n+1)²-Δ[A000984(n+1)]` -/
def P2853063302363584417.Spec : Prop :=
  ∀ n, P2853063302363584417.a n = A138156 n

end A138156

/-! ## A138156.P9207645665151031516

`A011782(n+2)²-A026010(2*(n+1))`
-/

namespace A138156.P9207645665151031516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 2) ^ 2 - A026010 (2 * (n + 1))

end

end A138156.P9207645665151031516

namespace A138156

/-- `A011782(n+2)²-A026010(2*(n+1))` -/
def P9207645665151031516.Spec : Prop :=
  ∀ n, P9207645665151031516.a n = A138156 n

end A138156

/-!
# A138157: Triangle read by rows: T(n,k) is the number of binary trees with n edges and path length k; 0<=k<=n*(n+1)/2.

The programs for A138157, there is no canonical definition to state claims against.
-/

/-! ## A138157.P13986239641583657480

`A053735(A007318(3*n)*A336309(n+1))`
-/

namespace A138157.P13986239641583657480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A007318 (3 * n) * A336309 (n + 1)).toNat

end

end A138157.P13986239641583657480

/-! ## A138157.P1734018114700216401

`and(A109091(A280154(n+1)), A344180(n+1))`
-/

namespace A138157.P1734018114700216401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A109091 (A280154 (n + 1)).toNat) (A344180 (n + 1))

end

end A138157.P1734018114700216401

/-!
# A138158: Triangle read by rows: T(n,k) is the number of ordered trees with n edges and path length k; 0 <= k <= n(n+1)/2.

The programs for A138158, there is no canonical definition to state claims against.
-/

/-! ## A138158.P7749793501143251159

`A255326(A049334(n+1)^A119288(n+1))`
-/

namespace A138158.P7749793501143251159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 (SequenceMachineLib.roundAway ((A049334 (n + 1) : ℚ) ^ (A119288 (n + 1) : ℤ))).toNat

end

end A138158.P7749793501143251159

/-! ## A138158.P6403174641458932967

`A255326(A054924(n+1)^A119288(n+1))`
-/

namespace A138158.P6403174641458932967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 (SequenceMachineLib.roundAway ((A054924 (n + 1) : ℚ) ^ (A119288 (n + 1) : ℤ))).toNat

end

end A138158.P6403174641458932967

/-! ## A138158.P9200535166846441459

`A255326(A049334(n+1)^A302792(n+1))`
-/

namespace A138158.P9200535166846441459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 (SequenceMachineLib.roundAway ((A049334 (n + 1) : ℚ) ^ (A302792 (n + 1) : ℤ))).toNat

end

end A138158.P9200535166846441459

/-! ## A138158.P3511967617236909497

`A351014(A000120(2*n+3)*A350491(n+1))`
-/

namespace A138158.P3511967617236909497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (A000120 (2 * n + 3) * A350491 (n + 1)).toNat

end

end A138158.P3511967617236909497

/-! ## A138158.P11941432076938993451

`A225654(2*A350449(n+1))`
-/

namespace A138158.P11941432076938993451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225654 (2 * A350449 (n + 1)).toNat

end

end A138158.P11941432076938993451

/-!
# A138162: Number of permutations of {1,2,...,n} containing exactly 4 occurrences of the 132 pattern.

The programs for A138162, there is no canonical definition to state claims against.
-/

/-! ## A138162.P8984693674975488281

`A263771(A164462(n+4)-A364534(n))`
-/

namespace A138162.P8984693674975488281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263771 (A164462 (n + 4) - A364534 n).toNat

end

end A138162.P8984693674975488281

/-!
# A138164: Row sums of Riordan array (c(-x^2),xc(-x^2)^2)^(-1) where c(x) is the g.f. of A000108.

The programs for A138164, there is no canonical definition to state claims against.
-/

/-! ## A138164.P10233747668146715989

`A191321(2*n)`
-/

namespace A138164.P10233747668146715989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191321 (2 * n)

end

end A138164.P10233747668146715989

/-! ## A138164.P16101873113964287933

`A191321(comp[or(1, n)])+and(n, 2^n)`
-/

namespace A138164.P16101873113964287933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191321 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + (Nat.land n (2 ^ n) : ℤ)

end

end A138164.P16101873113964287933

/-! ## A138164.P2265959005342177188

`A191321(comp[or(1, n)])+A000007(n+1)`
-/

namespace A138164.P2265959005342177188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191321 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A000007 (n + 1)

end

end A138164.P2265959005342177188

/-! ## A138164.P15347738399516492676

`A191321(comp[n+1+n])+A000007(n+1)`
-/

namespace A138164.P15347738399516492676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191321 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A000007 (n + 1)

end

end A138164.P15347738399516492676

/-! ## A138164.P1369940876458194867

`A191321(comp[or(1, n)])%A254365(n)`
-/

namespace A138164.P1369940876458194867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191321 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A254365 n)

end

end A138164.P1369940876458194867

/-! ## A138164.P12741527460197847385

`A191321(A005843(n))%A191341(n+1)`
-/

namespace A138164.P12741527460197847385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191321 (A005843 n).toNat) (A191341 (n + 1))

end

end A138164.P12741527460197847385

/-! ## A138164.P8854856098389918084

`A191321(comp[or(1, n)])/A151934(n)!`
-/

namespace A138164.P8854856098389918084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191321 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / (Nat.factorial (A151934 n).toNat : ℚ)

end

end A138164.P8854856098389918084

/-!
# A138165: Prime numbers that contain each of the digits 0,1,4,6,8,9 exactly once.

The programs for A138165, there is no canonical definition to state claims against.
-/

/-! ## A138165.P14872675576005674992

`A155024(n+88)`
-/

namespace A138165.P14872675576005674992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155024 (n + 88)

end

end A138165.P14872675576005674992

/-!
# A138166: Numbers containing their length in their decimal representation.

The programs for A138166, there is no canonical definition to state claims against.
-/

/-! ## A138166.P12267259434222344665

`∏{e}[A151821(n+1), A011532(#)]`
-/

namespace A138166.P12267259434222344665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A011532 (Nat.factorization (f1 n).natAbs p)

end

end A138166.P12267259434222344665

/-! ## A138166.P12968073187408698410

`A011532(n+1)+A010815(A158558(n))`
-/

namespace A138166.P12968073187408698410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1) + A010815 (A158558 n).toNat

end

end A138166.P12968073187408698410

/-! ## A138166.P15101103938037964886

`A011532(n+1)+A010815(A273316(n))`
-/

namespace A138166.P15101103938037964886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1) + A010815 (A273316 n).toNat

end

end A138166.P15101103938037964886

/-! ## A138166.P16674255574206876215

`A290739(A022107(n))+A011532(n+1)`
-/

namespace A138166.P16674255574206876215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290739 (A022107 n).toNat + A011532 (n + 1)

end

end A138166.P16674255574206876215

/-! ## A138166.P11766884455538638580

`A011532(n+1)-A000007(A005251(n))`
-/

namespace A138166.P11766884455538638580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1) - A000007 (A005251 n).toNat

end

end A138166.P11766884455538638580

/-!
# A138167: Numbers containing their length in ternary representation.

The programs for A138167, there is no canonical definition to state claims against.
-/

/-! ## A138167.P13005234840445959417

`record[A179933(n+3)%A179981(n+2)]`
-/

namespace A138167.P13005234840445959417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179933 (n + 3)) (A179981 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138167.P13005234840445959417

/-! ## A138167.P6673570321701268674

`record[A257737(n+4)%A140286(n+1)]`
-/

namespace A138167.P6673570321701268674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257737 (n + 4)) (A140286 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138167.P6673570321701268674

/-! ## A138167.P17274577962003058873

`record[A179933(n+4)]%A068669(2*n+3)`
-/

namespace A138167.P17274577962003058873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179933 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A068669 (2 * n + 3))

end

end A138167.P17274577962003058873

/-! ## A138167.P15179571823710202536

`lt[A327516(A383722(2*n+3)), A008137(n)]`
-/

namespace A138167.P15179571823710202536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327516 (A383722 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008137 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138167.P15179571823710202536

/-!
# A138170: Prime numbers p1 such that p1*p2 + (p2 mod p1) is a prime, where p2 is the next prime after p1.

The programs for A138170, there is no canonical definition to state claims against.
-/

/-! ## A138170.P1904856924861167350

`A008578(A000720(p?[A154551(n+1)]))`
-/

namespace A138170.P1904856924861167350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A138170.P1904856924861167350

/-! ## A138170.P6162863002986484575

`A008578(A061395(p?[A154551(n+1)]))`
-/

namespace A138170.P6162863002986484575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A138170.P6162863002986484575

/-! ## A138170.P11553518883542054698

`A000040(A000720(A154551(n+1)-1))`
-/

namespace A138170.P11553518883542054698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A154551 (n + 1) - 1).toNat).toNat

end

end A138170.P11553518883542054698

/-! ## A138170.P8071164571318464385

`A000040(A079067(p?[A154551(n+1)]))`
-/

namespace A138170.P8071164571318464385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A079067 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A138170.P8071164571318464385

/-! ## A138170.P16122756191278152673

`A064989(p?[A154551(n+1)])`
-/

namespace A138170.P16122756191278152673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A138170.P16122756191278152673

/-! ## A138170.P14311625293074740703

`A283463(A154551(n+1)+1)`
-/

namespace A138170.P14311625293074740703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A154551 (n + 1) + 1).toNat

end

end A138170.P14311625293074740703

/-! ## A138170.P12618952856915264869

`A064989(or(1, A154551(n+1)))`
-/

namespace A138170.P12618952856915264869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (Int.lor 1 (A154551 (n + 1))).toNat

end

end A138170.P12618952856915264869

/-! ## A138170.P18048673117880100473

`A064989(∏{p}[A154551(n+1), #])`
-/

namespace A138170.P18048673117880100473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A138170.P18048673117880100473

/-! ## A138170.P6884453707369608427

`A000040(A048865(p?[A154551(n+1)]))`
-/

namespace A138170.P6884453707369608427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A048865 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A138170.P6884453707369608427

/-! ## A138170.P2143825742748327343

`A000040(A318995(p?[A154551(n+1)]))`
-/

namespace A138170.P2143825742748327343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A318995 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A138170.P2143825742748327343

/-!
# A138171: Odd n where d(n) > d(n+1), where d(n) = number of positive divisors of n.

The programs for A138171, there is no canonical definition to state claims against.
-/

/-! ## A138171.P1704654902310137019

`record[A000265(A138046(n+1))]`
-/

namespace A138171.P1704654902310137019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A138046 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138171.P1704654902310137019

/-! ## A138171.P6903451334829023799

`∩[A138046(n+1), A333326(n+1)]`
-/

namespace A138171.P6903451334829023799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138171.P6903451334829023799

/-! ## A138171.P16386706524938215531

`∩[A138046(n+1), A176847(n+1)]`
-/

namespace A138171.P16386706524938215531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138171.P16386706524938215531

/-! ## A138171.P1915450953040388468

`∩[A138046(n+1), A226025(n+1)]`
-/

namespace A138171.P1915450953040388468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138171.P1915450953040388468

/-! ## A138171.P17288314123220935819

`∩[A014076(n+1), A138046(n+1)]`
-/

namespace A138171.P17288314123220935819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138171.P17288314123220935819

/-! ## A138171.P17487668834743235126

`∩[A071904(n+1), A138046(n+1)]`
-/

namespace A138171.P17487668834743235126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138171.P17487668834743235126

/-! ## A138171.P9150629502053494523

`∩[A138046(n+1), A257521(n+1)]`
-/

namespace A138171.P9150629502053494523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138171.P9150629502053494523

/-! ## A138171.P9017825188951597580

`∩[A014076(n+1), A074827(n+1)]`
-/

namespace A138171.P9017825188951597580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138171.P9017825188951597580

/-! ## A138171.P11469043102623695820

`∩[A071904(n+1), A074827(n+1)]`
-/

namespace A138171.P11469043102623695820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138171.P11469043102623695820

/-! ## A138171.P12039413840039038131

`∩[A074827(n+1), A138046(n+1)]`
-/

namespace A138171.P12039413840039038131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138171.P12039413840039038131

/-! ## A138171.P10234926402401702475

`∩[A074827(n+1), A138047(n+1)]`
-/

namespace A138171.P10234926402401702475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138171.P10234926402401702475

/-! ## A138171.P17898558896141283310

`∩[A074827(n+1), A176847(n+1)]`
-/

namespace A138171.P17898558896141283310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138171.P17898558896141283310

/-! ## A138171.P18343963809633128752

`∩[A074827(n+1), A226025(n+1)]`
-/

namespace A138171.P18343963809633128752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138171.P18343963809633128752

/-! ## A138171.P18310247900242554989

`∩[A074827(n+1), A257521(n+1)]`
-/

namespace A138171.P18310247900242554989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138171.P18310247900242554989

/-! ## A138171.P11391624556421275875

`∩[A074827(n+1), A333326(n+1)]`
-/

namespace A138171.P11391624556421275875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138171.P11391624556421275875

/-! ## A138171.P17961469127670304583

`∩[A074827(n+1), A255763(n+1)]`
-/

namespace A138171.P17961469127670304583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138171.P17961469127670304583

/-! ## A138171.P14332280579506607954

`∩[A138046(n+1), A255763(n+1)]`
-/

namespace A138171.P14332280579506607954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138171.P14332280579506607954

/-! ## A138171.P4328718549138431440

`∩[A074827(n+1), A193071(n+1)]`
-/

namespace A138171.P4328718549138431440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138171.P4328718549138431440

/-! ## A138171.P9873314919899732489

`∩[A138046(n+1), A193071(n+1)]`
-/

namespace A138171.P9873314919899732489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138171.P9873314919899732489

/-! ## A138171.P17017073228655858779

`∩[A074827(n+1), A257292(n+1)]`
-/

namespace A138171.P17017073228655858779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138171.P17017073228655858779

/-!
# A138172: Even n where d(n) < d(n+1), where d(n) = number of positive divisors of n.

The programs for A138172, the canonical program `A138172.P13850476572932011494` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138172 has offset 1).

The definition of A138172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3657 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138172.P13850476572932011494

`lt[A000005(abs((n-1)%2+1-n)+2), A000005(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A138172

/-- `lt[A000005(abs((n-1)%2+1-n)+2), A000005(n+1)]` -/
def P13850476572932011494.Spec : Prop :=
  ∀ n, (P13850476572932011494.a n : ℤ) = A138172 (n + 1)

theorem P13850476572932011494.correct : P13850476572932011494.Spec := by
  intro n
  simp only [A138172, Nat.add_sub_cancel]

end A138172

/-! ## A138172.P2551065920604247269

`∩[A138046(n+1), A333326(n+1)-1]`
-/

namespace A138172.P2551065920604247269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138172.P2551065920604247269

namespace A138172

/-- `∩[A138046(n+1), A333326(n+1)-1]` -/
def P2551065920604247269.Spec : Prop :=
  ∀ n, (P2551065920604247269.a n : ℤ) = A138172 (n + 1)

end A138172

/-! ## A138172.P8298785120748562852

`∩[A138046(n+1), A176847(n+1)-1]`
-/

namespace A138172.P8298785120748562852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138172.P8298785120748562852

namespace A138172

/-- `∩[A138046(n+1), A176847(n+1)-1]` -/
def P8298785120748562852.Spec : Prop :=
  ∀ n, (P8298785120748562852.a n : ℤ) = A138172 (n + 1)

end A138172

/-! ## A138172.P18398117504328847486

`∩[A138046(n+1), A226025(n+1)-1]`
-/

namespace A138172.P18398117504328847486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138172.P18398117504328847486

namespace A138172

/-- `∩[A138046(n+1), A226025(n+1)-1]` -/
def P18398117504328847486.Spec : Prop :=
  ∀ n, (P18398117504328847486.a n : ℤ) = A138172 (n + 1)

end A138172

/-! ## A138172.P18407224397215672482

`∩[A138046(n+1), A186193(n+1)]`
-/

namespace A138172.P18407224397215672482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138172.P18407224397215672482

namespace A138172

/-- `∩[A138046(n+1), A186193(n+1)]` -/
def P18407224397215672482.Spec : Prop :=
  ∀ n, (P18407224397215672482.a n : ℤ) = A138172 (n + 1)

end A138172

/-! ## A138172.P14900226628469088666

`∩[A138046(n+1), A309355(n+1)]`
-/

namespace A138172.P14900226628469088666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138172.P14900226628469088666

namespace A138172

/-- `∩[A138046(n+1), A309355(n+1)]` -/
def P14900226628469088666.Spec : Prop :=
  ∀ n, (P14900226628469088666.a n : ℤ) = A138172 (n + 1)

end A138172

/-! ## A138172.P18415720732005534511

`∩[A014076(n+1)-1, A138046(n+1)]`
-/

namespace A138172.P18415720732005534511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138172.P18415720732005534511

namespace A138172

/-- `∩[A014076(n+1)-1, A138046(n+1)]` -/
def P18415720732005534511.Spec : Prop :=
  ∀ n, (P18415720732005534511.a n : ℤ) = A138172 (n + 1)

end A138172

/-! ## A138172.P729587611122704216

`∩[A071904(n+1)-1, A138046(n+1)]`
-/

namespace A138172.P729587611122704216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138172.P729587611122704216

namespace A138172

/-- `∩[A071904(n+1)-1, A138046(n+1)]` -/
def P729587611122704216.Spec : Prop :=
  ∀ n, (P729587611122704216.a n : ℤ) = A138172 (n + 1)

end A138172

/-! ## A138172.P17271815235374032847

`∩[A138046(n+1), A257521(n+1)-1]`
-/

namespace A138172.P17271815235374032847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257521 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138172.P17271815235374032847

namespace A138172

/-- `∩[A138046(n+1), A257521(n+1)-1]` -/
def P17271815235374032847.Spec : Prop :=
  ∀ n, (P17271815235374032847.a n : ℤ) = A138172 (n + 1)

end A138172

/-! ## A138172.P7242462460847154119

`∩[A074775(n+1), A138046(n+1)]`
-/

namespace A138172.P7242462460847154119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138172.P7242462460847154119

namespace A138172

/-- `∩[A074775(n+1), A138046(n+1)]` -/
def P7242462460847154119.Spec : Prop :=
  ∀ n, (P7242462460847154119.a n : ℤ) = A138172 (n + 1)

end A138172

/-! ## A138172.P922631174324573977

`∩[A074775(n+1), A138047(n+1)]`
-/

namespace A138172.P922631174324573977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138172.P922631174324573977

namespace A138172

/-- `∩[A074775(n+1), A138047(n+1)]` -/
def P922631174324573977.Spec : Prop :=
  ∀ n, (P922631174324573977.a n : ℤ) = A138172 (n + 1)

end A138172

/-! ## A138172.P11701324605576382371

`∩[A074775(n+1), A186193(n+1)]`
-/

namespace A138172.P11701324605576382371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138172.P11701324605576382371

namespace A138172

/-- `∩[A074775(n+1), A186193(n+1)]` -/
def P11701324605576382371.Spec : Prop :=
  ∀ n, (P11701324605576382371.a n : ℤ) = A138172 (n + 1)

end A138172

/-! ## A138172.P2887892915420603446

`∩[A074775(n+1), A309355(n+1)]`
-/

namespace A138172.P2887892915420603446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138172.P2887892915420603446

namespace A138172

/-- `∩[A074775(n+1), A309355(n+1)]` -/
def P2887892915420603446.Spec : Prop :=
  ∀ n, (P2887892915420603446.a n : ℤ) = A138172 (n + 1)

end A138172

/-! ## A138172.P14702909287662193226

`∩[A138046(n+1), A255763(n+1)-1]`
-/

namespace A138172.P14702909287662193226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138172.P14702909287662193226

namespace A138172

/-- `∩[A138046(n+1), A255763(n+1)-1]` -/
def P14702909287662193226.Spec : Prop :=
  ∀ n, (P14702909287662193226.a n : ℤ) = A138172 (n + 1)

end A138172

/-! ## A138172.P15109024403790837370

`∩[A074775(n+1), A100319(n+1)]`
-/

namespace A138172.P15109024403790837370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138172.P15109024403790837370

namespace A138172

/-- `∩[A074775(n+1), A100319(n+1)]` -/
def P15109024403790837370.Spec : Prop :=
  ∀ n, (P15109024403790837370.a n : ℤ) = A138172 (n + 1)

end A138172

/-! ## A138172.P16669395285963852892

`∩[A100319(n+1), A138046(n+1)]`
-/

namespace A138172.P16669395285963852892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138172.P16669395285963852892

namespace A138172

/-- `∩[A100319(n+1), A138046(n+1)]` -/
def P16669395285963852892.Spec : Prop :=
  ∀ n, (P16669395285963852892.a n : ℤ) = A138172 (n + 1)

end A138172

/-! ## A138172.P2837401187701924407

`∩[A074775(n+1), A157502(n+1)]`
-/

namespace A138172.P2837401187701924407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138172.P2837401187701924407

namespace A138172

/-- `∩[A074775(n+1), A157502(n+1)]` -/
def P2837401187701924407.Spec : Prop :=
  ∀ n, (P2837401187701924407.a n : ℤ) = A138172 (n + 1)

end A138172

/-! ## A138172.P13358496206069559167

`∩[A074775(n+1), A076772(n)]`
-/

namespace A138172.P13358496206069559167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076772 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138172.P13358496206069559167

namespace A138172

/-- `∩[A074775(n+1), A076772(n)]` -/
def P13358496206069559167.Spec : Prop :=
  ∀ n, (P13358496206069559167.a n : ℤ) = A138172 (n + 1)

end A138172

/-! ## A138172.P17731615734304036638

`∩[A138046(n+1), A076772(n)]`
-/

namespace A138172.P17731615734304036638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076772 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138172.P17731615734304036638

namespace A138172

/-- `∩[A138046(n+1), A076772(n)]` -/
def P17731615734304036638.Spec : Prop :=
  ∀ n, (P17731615734304036638.a n : ℤ) = A138172 (n + 1)

end A138172

/-! ## A138172.P4467279957619263322

`∩[A074775(n+1), A076770(n+1)]`
-/

namespace A138172.P4467279957619263322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138172.P4467279957619263322

namespace A138172

/-- `∩[A074775(n+1), A076770(n+1)]` -/
def P4467279957619263322.Spec : Prop :=
  ∀ n, (P4467279957619263322.a n : ℤ) = A138172 (n + 1)

end A138172

/-!
# A138173: a(n) is the smallest m such that m^3 begins with n^2.

The programs for A138173, there is no canonical definition to state claims against.
-/

/-! ## A138173.P612418267654533663

`A138174(n+1)^(1/3)`
-/

namespace A138173.P612418267654533663
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A138174 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A138173.P612418267654533663

/-! ## A138173.P5672707015162195093

`A018852((n+1)²)`
-/

namespace A138173.P5672707015162195093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 ((n + 1) ^ 2)

end

end A138173.P5672707015162195093

/-! ## A138173.P2091814495480651083

`root(A018797((n+1)²), 3)`
-/

namespace A138173.P2091814495480651083
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018797 ((n + 1) ^ 2) : ℝ) ^ (1 / (3 : ℝ))

end

end A138173.P2091814495480651083

/-! ## A138173.P14275235387367332455

`or(char[2], A018852(∑[2*n+1]))`
-/

namespace A138173.P14275235387367332455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A018852 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A138173.P14275235387367332455

/-! ## A138173.P14242677336242955370

`xor(1, xor(1, A018852((n+1)*(n+1))))`
-/

namespace A138173.P14242677336242955370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A018852 ((n + 1) * (n + 1))))

end

end A138173.P14242677336242955370

/-! ## A138173.P13024493989732535562

`A000027(A018852(∑[comp[2*n]]))`
-/

namespace A138173.P13024493989732535562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A018852 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A138173.P13024493989732535562

/-! ## A138173.P836935852052886468

`∑{d}[A018852((n+1)^2), A000010(#)]`
-/

namespace A138173.P836935852052886468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A138173.P836935852052886468

/-! ## A138173.P14030338297505786755

`A018852((n+1)^2)+A000035(2*n)`
-/

namespace A138173.P14030338297505786755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 ((n + 1) ^ 2) + A000035 (2 * n)

end

end A138173.P14030338297505786755

/-! ## A138173.P1849705227518733246

`A007318(C(2, n))*A018852((n+1)^2)`
-/

namespace A138173.P1849705227518733246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A018852 ((n + 1) ^ 2)

end

end A138173.P1849705227518733246

/-! ## A138173.P16658689718357546779

`A018852(∑[2*n+1])%A018850(n+1)`
-/

namespace A138173.P16658689718357546779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018852 (∑ j ∈ Finset.range (n + 1), f1 j)) (A018850 (n + 1))

end

end A138173.P16658689718357546779

/-! ## A138173.P15122152360491394668

`A018852((n+1)^2)+A010051(A161493(n+1))`
-/

namespace A138173.P15122152360491394668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 ((n + 1) ^ 2) + A010051 (A161493 (n + 1)).toNat

end

end A138173.P15122152360491394668

/-! ## A138173.P11726633813853608211

`A018852(∑[2*n+1])^A014963(A014574(n+1))`
-/

namespace A138173.P11726633813853608211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018852 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (A014963 (A014574 (n + 1)).toNat : ℤ)

end

end A138173.P11726633813853608211

/-! ## A138173.P14191382549651572029

`A014963(A109373(n+1))*A018852((n+1)*(n+1))`
-/

namespace A138173.P14191382549651572029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A109373 (n + 1)).toNat * A018852 ((n + 1) * (n + 1))

end

end A138173.P14191382549651572029

/-! ## A138173.P16270106859893263771

`A018852((n+1)*(n+1))*A334745(A334745(n+1))`
-/

namespace A138173.P16270106859893263771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 ((n + 1) * (n + 1)) * A334745 (A334745 (n + 1)).toNat

end

end A138173.P16270106859893263771

/-!
# A138174: a(n) is the smallest cube that begins with n^2.

The programs for A138174, there is no canonical definition to state claims against.
-/

/-! ## A138174.P12696416001781604909

`A138173(n+1)^3`
-/

namespace A138174.P12696416001781604909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138173 (n + 1) ^ 3

end

end A138174.P12696416001781604909

/-! ## A138174.P14263019733065998174

`A018797((n+1)²)`
-/

namespace A138174.P14263019733065998174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018797 ((n + 1) ^ 2)

end

end A138174.P14263019733065998174

/-! ## A138174.P10175139080248908374

`A018852((n+1)²)^3`
-/

namespace A138174.P10175139080248908374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 ((n + 1) ^ 2) ^ 3

end

end A138174.P10175139080248908374

/-! ## A138174.P13077290522067358349

`or(char[2], A018852(∑[2*n+1]))^3`
-/

namespace A138174.P13077290522067358349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A018852 (∑ j ∈ Finset.range (n + 1), f2 j)) ^ 3

end

end A138174.P13077290522067358349

/-! ## A138174.P13258291820282202720

`A000578(A138173(n+1))`
-/

namespace A138174.P13258291820282202720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A138173 (n + 1)).toNat

end

end A138174.P13258291820282202720

/-!
# A138175: Row sums of the Riordan array (1/(1+x),x(1+2x)/(1+x)^3)^(-1).

The programs for A138175, there is no canonical definition to state claims against.
-/

/-! ## A138175.P17505357953976700355

`and(-A008620(n), A100196(A151452(n+1)))`
-/

namespace A138175.P17505357953976700355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A008620 n) (A100196 (A151452 (n + 1)).toNat)

end

end A138175.P17505357953976700355

/-! ## A138175.P18279624228127919039

`A180666(n)+A003056(ceil(A193763(n)/2))`
-/

namespace A138175.P18279624228127919039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180666 n + A003056 ⌈(A193763 n : ℚ) / 2⌉.toNat

end

end A138175.P18279624228127919039

/-! ## A138175.P17606584538870885821

`A066490(A003242(2*n+3)-A261983(n))`
-/

namespace A138175.P17606584538870885821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (A003242 (2 * n + 3) - A261983 n).toNat

end

end A138175.P17606584538870885821

/-! ## A138175.P17793269631553602902

`and(-A023193(n+1), A100196(A151452(n+1)))`
-/

namespace A138175.P17793269631553602902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A023193 (n + 1)) (A100196 (A151452 (n + 1)).toNat)

end

end A138175.P17793269631553602902

/-!
# A138176: Hankel transform of A138175.

The programs for A138176, there is no canonical definition to state claims against.
-/

/-! ## A138176.P9925727749520097942

`(-4)^n*A059492(n)`
-/

namespace A138176.P9925727749520097942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-4) ^ n * A059492 n

end

end A138176.P9925727749520097942

/-! ## A138176.P15638248926215391552

`A059492(n)*A146559(A008574(n))`
-/

namespace A138176.P15638248926215391552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059492 n * A146559 (A008574 n).toNat

end

end A138176.P15638248926215391552

/-!
# A138177: Triangle T(n,k) read by rows: number of k X k symmetric matrices with nonnegative integer entries and without zero rows or columns such that sum of all entries is equal to n, n>=1, 1<=k<=n.

The programs for A138177, there is no canonical definition to state claims against.
-/

/-! ## A138177.P13159448159262907937

`A038763(n)+A005369(A247630(n))`
-/

namespace A138177.P13159448159262907937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038763 n + A005369 (A247630 n).toNat

end

end A138177.P13159448159262907937

/-! ## A138177.P4198794223103018178

`A347624(A013609(lcm(n, A119328(n))))`
-/

namespace A138177.P4198794223103018178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347624 (A013609 (Int.lcm (n : ℤ) (A119328 n))).toNat

end

end A138177.P4198794223103018178

/-! ## A138177.P5354353790124786066

`A347624(gcd(A013609(n), A284925(n+1)))`
-/

namespace A138177.P5354353790124786066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347624 (Int.gcd (A013609 n) (A284925 (n + 1)))

end

end A138177.P5354353790124786066

/-! ## A138177.P6819546921087145413

`A178431(A063007(n))`
-/

namespace A138177.P6819546921087145413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178431 (A063007 n).toNat

end

end A138177.P6819546921087145413

/-! ## A138177.P133917694639624705

`A163563(A252501(n))`
-/

namespace A138177.P133917694639624705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163563 (A252501 n).toNat

end

end A138177.P133917694639624705

/-!
# A138178: Number of symmetric matrices with nonnegative integer entries and without zero rows or columns such that sum of all entries is equal to n.

The programs for A138178, there is no canonical definition to state claims against.
-/

/-! ## A138178.P1071746089477160197

`A032742(A133494(n)+A120649(∑[n+1]))`
-/

namespace A138178.P1071746089477160197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A133494 n + A120649 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A138178.P1071746089477160197

/-! ## A138178.P12031834408641480383

`or(1, ∑[A062108(A058307(n))])`
-/

namespace A138178.P12031834408641480383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A058307 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138178.P12031834408641480383

/-! ## A138178.P13290093784304481088

`A188573(n)+A060682(A052539(n))`
-/

namespace A138178.P13290093784304481088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188573 n + A060682 (A052539 n).toNat

end

end A138178.P13290093784304481088

/-!
# A138179: Wiener index of the prism graph Y_n on 2n nodes.

The programs for A138179, the canonical program `A138179.P16828402322474953049` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138179 has offset 1).

The definition of A138179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138179.P16828402322474953049

`(n+1)*∑[or(1, n+1)]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138179

/-- `(n+1)*∑[or(1, n+1)]` -/
def P16828402322474953049.Spec : Prop :=
  ∀ n, (P16828402322474953049.a n : ℤ) = A138179 (n + 1)

theorem P16828402322474953049.correct : P16828402322474953049.Spec := by
  intro n
  simp only [A138179, Nat.add_sub_cancel]

end A138179

/-! ## A138179.P6259245221503340079

`(n+1)*floor(∑[3/2+n])`
-/

namespace A138179.P6259245221503340079
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 + (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A138179.P6259245221503340079

namespace A138179

/-- `(n+1)*floor(∑[3/2+n])` -/
def P6259245221503340079.Spec : Prop :=
  ∀ n, P6259245221503340079.a n = A138179 (n + 1)

end A138179

/-! ## A138179.P5436446629287445077

`∑[∑[2*lcm(2, n)]+2*n+1]`
-/

namespace A138179.P5436446629287445077
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138179.P5436446629287445077

namespace A138179

/-- `∑[∑[2*lcm(2, n)]+2*n+1]` -/
def P5436446629287445077.Spec : Prop :=
  ∀ n, (P5436446629287445077.a n : ℤ) = A138179 (n + 1)

end A138179

/-! ## A138179.P5067504660035958216

`floor((n+1)*∑[a(n-2)+2])` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A138179.P5067504660035958216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138179.P5067504660035958216

namespace A138179

/-- `floor((n+1)*∑[a(n-2)+2])` -/
def P5067504660035958216.Spec : Prop :=
  ∀ n, (P5067504660035958216.a n : ℤ) = A138179 (n + 1)

end A138179

/-! ## A138179.P17398714294324635214

`∑[∑[2*n*gcd(2, n+1)+2]-1]`
-/

namespace A138179.P17398714294324635214
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.gcd 2 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138179.P17398714294324635214

namespace A138179

/-- `∑[∑[2*n*gcd(2, n+1)+2]-1]` -/
def P17398714294324635214.Spec : Prop :=
  ∀ n, P17398714294324635214.a n = A138179 (n + 1)

end A138179

/-! ## A138179.P4984825291394140509

`(n+1)/∑[a(n-2)+2]^(-1)` with `a(0)=1, a(1)=3`
-/

namespace A138179.P4984825291394140509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (-1 : ℤ)

end

end A138179.P4984825291394140509

namespace A138179

/-- `(n+1)/∑[a(n-2)+2]^(-1)` -/
def P4984825291394140509.Spec : Prop :=
  ∀ n, P4984825291394140509.a n = (A138179 (n + 1) : ℚ)

end A138179

/-! ## A138179.P5797106128855201721

`∑[A354594(n+1)+n]`
-/

namespace A138179.P5797106128855201721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354594 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138179.P5797106128855201721

namespace A138179

/-- `∑[A354594(n+1)+n]` -/
def P5797106128855201721.Spec : Prop :=
  ∀ n, P5797106128855201721.a n = A138179 (n + 1)

end A138179

/-! ## A138179.P10649195300082697889

`∑[A319384(n)+2*n]`
-/

namespace A138179.P10649195300082697889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319384 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138179.P10649195300082697889

namespace A138179

/-- `∑[A319384(n)+2*n]` -/
def P10649195300082697889.Spec : Prop :=
  ∀ n, P10649195300082697889.a n = A138179 (n + 1)

end A138179

/-! ## A138179.P10175374520595649476

`A074149(n+1)+∑[2*n]`
-/

namespace A138179.P10175374520595649476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A138179.P10175374520595649476

namespace A138179

/-- `A074149(n+1)+∑[2*n]` -/
def P10175374520595649476.Spec : Prop :=
  ∀ n, P10175374520595649476.a n = A138179 (n + 1)

end A138179

/-! ## A138179.P1189991639955164576

`2*A199771(n+1)-(n+1)`
-/

namespace A138179.P1189991639955164576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199771 (n + 1) - (n + 1 : ℤ)

end

end A138179.P1189991639955164576

namespace A138179

/-- `2*A199771(n+1)-(n+1)` -/
def P1189991639955164576.Spec : Prop :=
  ∀ n, P1189991639955164576.a n = A138179 (n + 1)

end A138179

/-! ## A138179.P13995501076839847042

`A111500(n)-(a(n-1)+n)` with `a(0)=1`
-/

namespace A138179.P13995501076839847042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A111500 n - (a (n - 1) + (n : ℤ))

end

end A138179.P13995501076839847042

namespace A138179

/-- `A111500(n)-(a(n-1)+n)` -/
def P13995501076839847042.Spec : Prop :=
  ∀ n, P13995501076839847042.a n = A138179 (n + 1)

end A138179

/-! ## A138179.P16810304025252071033

`∑[A062717(n+1)]+(n+1)²`
-/

namespace A138179.P16810304025252071033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A138179.P16810304025252071033

namespace A138179

/-- `∑[A062717(n+1)]+(n+1)²` -/
def P16810304025252071033.Spec : Prop :=
  ∀ n, P16810304025252071033.a n = A138179 (n + 1)

end A138179

/-! ## A138179.P1229664758529607075

`(∑[A109613(n+1)]+1)*(n+1)-(n+1)`
-/

namespace A138179.P1229664758529607075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * (n + 1 : ℤ) - (n + 1 : ℤ)

end

end A138179.P1229664758529607075

namespace A138179

/-- `(∑[A109613(n+1)]+1)*(n+1)-(n+1)` -/
def P1229664758529607075.Spec : Prop :=
  ∀ n, P1229664758529607075.a n = A138179 (n + 1)

end A138179

/-! ## A138179.P15120480185327305672

`A246697(n)+A074378(n)`
-/

namespace A138179.P15120480185327305672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246697 n + A074378 n

end

end A138179.P15120480185327305672

namespace A138179

/-- `A246697(n)+A074378(n)` -/
def P15120480185327305672.Spec : Prop :=
  ∀ n, P15120480185327305672.a n = A138179 (n + 1)

end A138179

/-! ## A138179.P5320976010779717811

`A342362(n)-A006331(n)`
-/

namespace A138179.P5320976010779717811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342362 n - A006331 n

end

end A138179.P5320976010779717811

namespace A138179

/-- `A342362(n)-A006331(n)` -/
def P5320976010779717811.Spec : Prop :=
  ∀ n, P5320976010779717811.a n = A138179 (n + 1)

end A138179

/-! ## A138179.P837645951276011466

`A055232(n)+A032438(n+1)`
-/

namespace A138179.P837645951276011466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055232 n + A032438 (n + 1)

end

end A138179.P837645951276011466

namespace A138179

/-- `A055232(n)+A032438(n+1)` -/
def P837645951276011466.Spec : Prop :=
  ∀ n, P837645951276011466.a n = A138179 (n + 1)

end A138179

/-! ## A138179.P15323074529010776241

`A110349(n+1)+A027480(n)`
-/

namespace A138179.P15323074529010776241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110349 (n + 1) + A027480 n

end

end A138179.P15323074529010776241

namespace A138179

/-- `A110349(n+1)+A027480(n)` -/
def P15323074529010776241.Spec : Prop :=
  ∀ n, P15323074529010776241.a n = A138179 (n + 1)

end A138179

/-! ## A138179.P18314929650359857378

`A265225(n)+A077414(n+1)`
-/

namespace A138179.P18314929650359857378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265225 n + A077414 (n + 1)

end

end A138179.P18314929650359857378

namespace A138179

/-- `A265225(n)+A077414(n+1)` -/
def P18314929650359857378.Spec : Prop :=
  ∀ n, P18314929650359857378.a n = A138179 (n + 1)

end A138179

/-! ## A138179.P645142296184057804

`A212976(n)+A183207(n+1)`
-/

namespace A138179.P645142296184057804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212976 n + A183207 (n + 1)

end

end A138179.P645142296184057804

namespace A138179

/-- `A212976(n)+A183207(n+1)` -/
def P645142296184057804.Spec : Prop :=
  ∀ n, P645142296184057804.a n = A138179 (n + 1)

end A138179

/-! ## A138179.P6572924544656711580

`A154560(n)-A105638(n+3)`
-/

namespace A138179.P6572924544656711580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154560 n - A105638 (n + 3)

end

end A138179.P6572924544656711580

namespace A138179

/-- `A154560(n)-A105638(n+3)` -/
def P6572924544656711580.Spec : Prop :=
  ∀ n, P6572924544656711580.a n = A138179 (n + 1)

end A138179

/-!
# A138181: Largest Fibonacci number not exceeding the n-th prime.

The programs for A138181, there is no canonical definition to state claims against.
-/

/-! ## A138181.P17881791500671761300

`A087172(p?[xor(2, n)])`
-/

namespace A138181.P17881791500671761300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A138181.P17881791500671761300

/-! ## A138181.P747120618197324362

`A087172(p?[comp[n²]])`
-/

namespace A138181.P747120618197324362
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A138181.P747120618197324362

/-! ## A138181.P14581990464535567195

`round(A186697(n+1)/ϕ)`
-/

namespace A138181.P14581990464535567195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A186697 (n + 1) : ℝ) / Real.goldenRatio)

end

end A138181.P14581990464535567195

/-! ## A138181.P3717541700836321519

`A087172(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A138181.P3717541700836321519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A138181.P3717541700836321519

/-! ## A138181.P5707443426023750427

`A087172(A390240(n))`
-/

namespace A138181.P5707443426023750427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (A390240 n).toNat

end

end A138181.P5707443426023750427

/-! ## A138181.P10844184281602189736

`A087172(Δ[A007504(n)])`
-/

namespace A138181.P10844184281602189736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (f1 (n + 1) - f1 n).toNat

end

end A138181.P10844184281602189736

/-! ## A138181.P7549611736336297848

`A087172(A000040(n+1))`
-/

namespace A138181.P7549611736336297848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (A000040 (n + 1)).toNat

end

end A138181.P7549611736336297848

/-! ## A138181.P5946996025025690720

`A082524(A008864(n+1))`
-/

namespace A138181.P5946996025025690720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082524 (A008864 (n + 1)).toNat

end

end A138181.P5946996025025690720

/-! ## A138181.P8782982658110058841

`A082524(A028815(n+1))`
-/

namespace A138181.P8782982658110058841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082524 (A028815 (n + 1)).toNat

end

end A138181.P8782982658110058841

/-! ## A138181.P16978396293966307758

`A087172(A072388(n+1))`
-/

namespace A138181.P16978396293966307758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (A072388 (n + 1)).toNat

end

end A138181.P16978396293966307758

/-!
# A138182: Smallest summand in the Zeckendorf representation of the n-th prime.

The programs for A138182, the canonical program `A138182.P6958188219424873978` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138182 has offset 1).

The definition of A138182 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A139764, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138182.P6958188219424873978

`A139764(A000040(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A138182

/-- `A139764(A000040(n+1))` -/
def P6958188219424873978.Spec : Prop :=
  ∀ n, P6958188219424873978.a n = A138182 (n + 1)

theorem P6958188219424873978.correct : P6958188219424873978.Spec := by
  intro n
  simp only [A138182, Nat.add_sub_cancel]

end A138182

/-! ## A138182.P7106907782841211599

`A139764(A008578(n+2))`
-/

namespace A138182.P7106907782841211599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139764 (A008578 (n + 2)).toNat

end

end A138182.P7106907782841211599

namespace A138182

/-- `A139764(A008578(n+2))` -/
def P7106907782841211599.Spec : Prop :=
  ∀ n, P7106907782841211599.a n = A138182 (n + 1)

end A138182

/-! ## A138182.P5156714197816396480

`A139764(A182986(n+2))`
-/

namespace A138182.P5156714197816396480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139764 (A182986 (n + 2)).toNat

end

end A138182.P5156714197816396480

namespace A138182

/-- `A139764(A182986(n+2))` -/
def P5156714197816396480.Spec : Prop :=
  ∀ n, P5156714197816396480.a n = A138182 (n + 1)

end A138182

/-! ## A138182.P7315654480514815691

`A139764(eq[1, A003415(n)])`
-/

namespace A138182.P7315654480514815691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138182.P7315654480514815691

namespace A138182

/-- `A139764(eq[1, A003415(n)])` -/
def P7315654480514815691.Spec : Prop :=
  ∀ n, P7315654480514815691.a n = A138182 (n + 1)

end A138182

/-! ## A138182.P1209558219786424781

`A139764(eq[1, A018783(n)])`
-/

namespace A138182.P1209558219786424781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138182.P1209558219786424781

namespace A138182

/-- `A139764(eq[1, A018783(n)])` -/
def P1209558219786424781.Spec : Prop :=
  ∀ n, P1209558219786424781.a n = A138182 (n + 1)

end A138182

/-! ## A138182.P17790226192879292763

`A139764(eq[1, A175126(n)])`
-/

namespace A138182.P17790226192879292763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138182.P17790226192879292763

namespace A138182

/-- `A139764(eq[1, A175126(n)])` -/
def P17790226192879292763.Spec : Prop :=
  ∀ n, P17790226192879292763.a n = A138182 (n + 1)

end A138182

/-! ## A138182.P665118997806011014

`A139764(eq[1, A302055(n)])`
-/

namespace A138182.P665118997806011014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138182.P665118997806011014

namespace A138182

/-- `A139764(eq[1, A302055(n)])` -/
def P665118997806011014.Spec : Prop :=
  ∀ n, P665118997806011014.a n = A138182 (n + 1)

end A138182

/-! ## A138182.P1059015843628931365

`A139764(eq[2, A319410(n)])`
-/

namespace A138182.P1059015843628931365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138182.P1059015843628931365

namespace A138182

/-- `A139764(eq[2, A319410(n)])` -/
def P1059015843628931365.Spec : Prop :=
  ∀ n, P1059015843628931365.a n = A138182 (n + 1)

end A138182

/-! ## A138182.P2066713236384074106

`A139764(record[A039649(n+1)])`
-/

namespace A138182.P2066713236384074106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139764 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A138182.P2066713236384074106

namespace A138182

/-- `A139764(record[A039649(n+1)])` -/
def P2066713236384074106.Spec : Prop :=
  ∀ n, P2066713236384074106.a n = A138182 (n + 1)

end A138182

/-! ## A138182.P1992920213308575688

`A139764(record[A006530(n+2)])`
-/

namespace A138182.P1992920213308575688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139764 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A138182.P1992920213308575688

namespace A138182

/-- `A139764(record[A006530(n+2)])` -/
def P1992920213308575688.Spec : Prop :=
  ∀ n, P1992920213308575688.a n = A138182 (n + 1)

end A138182

/-! ## A138182.P14084342820656179238

`A139764(record[A014963(n+2)])`
-/

namespace A138182.P14084342820656179238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139764 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A138182.P14084342820656179238

namespace A138182

/-- `A139764(record[A014963(n+2)])` -/
def P14084342820656179238.Spec : Prop :=
  ∀ n, P14084342820656179238.a n = A138182 (n + 1)

end A138182

/-! ## A138182.P16400770223844864872

`A139764(record[A020639(n+2)])`
-/

namespace A138182.P16400770223844864872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139764 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A138182.P16400770223844864872

namespace A138182

/-- `A139764(record[A020639(n+2)])` -/
def P16400770223844864872.Spec : Prop :=
  ∀ n, P16400770223844864872.a n = A138182 (n + 1)

end A138182

/-! ## A138182.P14694141807583848100

`A139764(eq[2, A053204(n)])`
-/

namespace A138182.P14694141807583848100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138182.P14694141807583848100

namespace A138182

/-- `A139764(eq[2, A053204(n)])` -/
def P14694141807583848100.Spec : Prop :=
  ∀ n, P14694141807583848100.a n = A138182 (n + 1)

end A138182

/-! ## A138182.P4444545092479671388

`A139764(eq[2, A152061(n)])`
-/

namespace A138182.P4444545092479671388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139764 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138182.P4444545092479671388

namespace A138182

/-- `A139764(eq[2, A152061(n)])` -/
def P4444545092479671388.Spec : Prop :=
  ∀ n, P4444545092479671388.a n = A138182 (n + 1)

end A138182

/-!
# A138183: Smallest Fibonacci number not less than the n-th prime.

The programs for A138183, there is no canonical definition to state claims against.
-/

/-! ## A138183.P13375040626963664553

`A256654(Δ[A007504(n)])`
-/

namespace A138183.P13375040626963664553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (f1 (n + 1) - f1 n).toNat

end

end A138183.P13375040626963664553

/-! ## A138183.P1736477950447229848

`A256654(A000040(n+1))`
-/

namespace A138183.P1736477950447229848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (A000040 (n + 1)).toNat

end

end A138183.P1736477950447229848

/-! ## A138183.P3015232557421900702

`A246104(A040976(n+1))`
-/

namespace A138183.P3015232557421900702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 (A040976 (n + 1)).toNat

end

end A138183.P3015232557421900702

/-! ## A138183.P10893085165367872883

`A256654(A072388(n+1))`
-/

namespace A138183.P10893085165367872883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (A072388 (n + 1)).toNat

end

end A138183.P10893085165367872883

/-! ## A138183.P11475498430828572639

`A256654(A094746(n+1))`
-/

namespace A138183.P11475498430828572639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (A094746 (n + 1)).toNat

end

end A138183.P11475498430828572639

/-! ## A138183.P3201972766554134614

`A256654(A095320(n+1))`
-/

namespace A138183.P3201972766554134614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (A095320 (n + 1)).toNat

end

end A138183.P3201972766554134614

/-! ## A138183.P16621939575018795996

`A256654(A171040(n+1))`
-/

namespace A138183.P16621939575018795996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (A171040 (n + 1)).toNat

end

end A138183.P16621939575018795996

/-! ## A138183.P12701436921090944766

`A256654(A171047(n+1))`
-/

namespace A138183.P12701436921090944766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (A171047 (n + 1)).toNat

end

end A138183.P12701436921090944766

/-! ## A138183.P3462782799345692510

`A256654(A171048(n+1))`
-/

namespace A138183.P3462782799345692510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (A171048 (n + 1)).toNat

end

end A138183.P3462782799345692510

/-! ## A138183.P12084130106162144734

`A256654(A216883(n+1))`
-/

namespace A138183.P12084130106162144734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (A216883 (n + 1)).toNat

end

end A138183.P12084130106162144734

/-!
# A138184: Largest prime not exceeding Fibonacci(n) = A000045(n).

The programs for A138184, there is no canonical definition to state claims against.
-/

/-! ## A138184.P17135022443464473351

`A000040(A054782(n+3))`
-/

namespace A138184.P17135022443464473351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A054782 (n + 3)).toNat

end

end A138184.P17135022443464473351

/-! ## A138184.P3239126044190510382

`A020695(n)-A375751(n+3)`
-/

namespace A138184.P3239126044190510382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - A375751 (n + 3)

end

end A138184.P3239126044190510382

/-! ## A138184.P1459444013644180146

`A014208(n+3)-A001223(A054782(n+3))`
-/

namespace A138184.P1459444013644180146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014208 (n + 3) - A001223 (A054782 (n + 3)).toNat

end

end A138184.P1459444013644180146

/-!
# A138185: Smallest prime >= n-th Fibonacci number.

The programs for A138185, there is no canonical definition to state claims against.
-/

/-! ## A138185.P11861998939588225803

`A159977(C(2, n+2)+n)+A000045(A028310(n))`
-/

namespace A138185.P11861998939588225803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159977 (Nat.choose 2 (n + 2) + n) + A000045 (A028310 n).toNat

end

end A138185.P11861998939588225803

/-! ## A138185.P9477719826320130160

`A159977(A028310(n))+A000045(A028310(n))`
-/

namespace A138185.P9477719826320130160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159977 (A028310 n).toNat + A000045 (A028310 n).toNat

end

end A138185.P9477719826320130160

/-! ## A138185.P16635100645092297360

`A159977(A000007(n)+n)+A000045(A000007(n)+n)`
-/

namespace A138185.P16635100645092297360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159977 (A000007 n + (n : ℤ)).toNat + A000045 (A000007 n + (n : ℤ)).toNat

end

end A138185.P16635100645092297360

/-! ## A138185.P703490433079796524

`A000040(A182564(n)+1)`
-/

namespace A138185.P703490433079796524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A182564 n + 1).toNat

end

end A138185.P703490433079796524

/-! ## A138185.P15364830348348295444

`A008578(A182564(n)+2)`
-/

namespace A138185.P15364830348348295444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A182564 n + 2).toNat

end

end A138185.P15364830348348295444

/-!
# A138186: A triangular sequence based on expansion of the rational polynomial of A023054 as a Sheffer sequence: p(x,t)=Exp[x*t]*(1 - t^5)/((1 - t)*(1 - t^2)^2*(1 - t^3)).

The programs for A138186, there is no canonical definition to state claims against.
-/

/-! ## A138186.P14514557091061953928

`A094587(n)*A213668(A119502(n))`
-/

namespace A138186.P14514557091061953928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A213668 (A119502 n).toNat

end

end A138186.P14514557091061953928

/-! ## A138186.P5316657875811581305

`A003963(A112292(n)*A228823(n+1))`
-/

namespace A138186.P5316657875811581305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A112292 n * A228823 (n + 1)).toNat

end

end A138186.P5316657875811581305

/-!
# A138187: Hankel transform of binomial(2*n+3, n).

The programs for A138187, the canonical program `A138187.P9933759919011647207` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138187 has offset 0).

The definition of A138187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138187.P7395440667377664149

`ogf((1-2x-2x^2-x^3)/(1+2x+3x^2+2x^3+x^4))`
-/

namespace A138187.P7395440667377664149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -2, -1] [1, 2, 3, 2, 1] n

end

end A138187.P7395440667377664149

namespace A138187

/-- `ogf((1-2x-2x^2-x^3)/(1+2x+3x^2+2x^3+x^4))` -/
def P7395440667377664149.Spec : Prop :=
  ∀ n, P7395440667377664149.a n = A138187 n

end A138187

/-! ## A138187.P9933759919011647207

`A099254(2*(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138187

/-- `A099254(2*(n+1))` -/
def P9933759919011647207.Spec : Prop :=
  ∀ n, P9933759919011647207.a n = A138187 n

theorem P9933759919011647207.correct : P9933759919011647207.Spec := by
  intro n
  simp only [A138187]

end A138187

/-! ## A138187.P15506019052811957039

`(A004773(n+1)-A004523(n))*A131713(n)`
-/

namespace A138187.P15506019052811957039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004773 (n + 1) - A004523 n) * A131713 n

end

end A138187.P15506019052811957039

namespace A138187

/-- `(A004773(n+1)-A004523(n))*A131713(n)` -/
def P15506019052811957039.Spec : Prop :=
  ∀ n, P15506019052811957039.a n = A138187 n

end A138187

/-! ## A138187.P8191676831911829192

`A004396(n+2)*A131713(n)`
-/

namespace A138187.P8191676831911829192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 2) * A131713 n

end

end A138187.P8191676831911829192

namespace A138187

/-- `A004396(n+2)*A131713(n)` -/
def P8191676831911829192.Spec : Prop :=
  ∀ n, P8191676831911829192.a n = A138187 n

end A138187

/-! ## A138187.P4388122434436559740

`A004396(n+2)*A061347(n+2)`
-/

namespace A138187.P4388122434436559740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 2) * A061347 (n + 2)

end

end A138187.P4388122434436559740

namespace A138187

/-- `A004396(n+2)*A061347(n+2)` -/
def P4388122434436559740.Spec : Prop :=
  ∀ n, P4388122434436559740.a n = A138187 n

end A138187

/-! ## A138187.P17549848984791997324

`A131713(n)+A004523(n+1)*A131713(n)`
-/

namespace A138187.P17549848984791997324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n + A004523 (n + 1) * A131713 n

end

end A138187.P17549848984791997324

namespace A138187

/-- `A131713(n)+A004523(n+1)*A131713(n)` -/
def P17549848984791997324.Spec : Prop :=
  ∀ n, P17549848984791997324.a n = A138187 n

end A138187

/-! ## A138187.P6418249252838330319

`A122918(n+1)+A122918(n+1)+A057078(n)`
-/

namespace A138187.P6418249252838330319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122918 (n + 1) + (A122918 (n + 1) + A057078 n)

end

end A138187.P6418249252838330319

namespace A138187

/-- `A122918(n+1)+A122918(n+1)+A057078(n)` -/
def P6418249252838330319.Spec : Prop :=
  ∀ n, P6418249252838330319.a n = A138187 n

end A138187

/-! ## A138187.P9800554997688750687

`A138188(n)+A057078(n+1)*A110091(n+1)`
-/

namespace A138187.P9800554997688750687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138188 n + A057078 (n + 1) * A110091 (n + 1)

end

end A138187.P9800554997688750687

namespace A138187

/-- `A138188(n)+A057078(n+1)*A110091(n+1)` -/
def P9800554997688750687.Spec : Prop :=
  ∀ n, P9800554997688750687.a n = A138187 n

end A138187

/-! ## A138187.P18091808322013852310

`(A007980(n+1)-A007980(n))*A061347(n+2)`
-/

namespace A138187.P18091808322013852310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007980 (n + 1) - A007980 n) * A061347 (n + 2)

end

end A138187.P18091808322013852310

namespace A138187

/-- `(A007980(n+1)-A007980(n))*A061347(n+2)` -/
def P18091808322013852310.Spec : Prop :=
  ∀ n, P18091808322013852310.a n = A138187 n

end A138187

/-! ## A138187.P2639383058256370626

`A122918(n+1)+A122918(n+1)-A049347(n+1)`
-/

namespace A138187.P2639383058256370626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122918 (n + 1) + (A122918 (n + 1) - A049347 (n + 1))

end

end A138187.P2639383058256370626

namespace A138187

/-- `A122918(n+1)+A122918(n+1)-A049347(n+1)` -/
def P2639383058256370626.Spec : Prop :=
  ∀ n, P2639383058256370626.a n = A138187 n

end A138187

/-! ## A138187.P6843742978268903135

`Δ[Δ[Δ[A298790(n)]]]`
-/

namespace A138187.P6843742978268903135
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298790 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138187.P6843742978268903135

namespace A138187

/-- `Δ[Δ[Δ[A298790(n)]]]` -/
def P6843742978268903135.Spec : Prop :=
  ∀ n, P6843742978268903135.a n = A138187 n

end A138187

/-! ## A138187.P13658539177331947136

`Δ[Δ[A298788(n+1)]]`
-/

namespace A138187.P13658539177331947136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298788 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138187.P13658539177331947136

namespace A138187

/-- `Δ[Δ[A298788(n+1)]]` -/
def P13658539177331947136.Spec : Prop :=
  ∀ n, P13658539177331947136.a n = A138187 n

end A138187

/-! ## A138187.P14899410285984490963

`Δ[Δ[n-A102899(n+1)]]`
-/

namespace A138187.P14899410285984490963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A102899 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138187.P14899410285984490963

namespace A138187

/-- `Δ[Δ[n-A102899(n+1)]]` -/
def P14899410285984490963.Spec : Prop :=
  ∀ n, P14899410285984490963.a n = A138187 n

end A138187

/-! ## A138187.P6836544298467660962

`A099471(2*n+1)+A049347(n)`
-/

namespace A138187.P6836544298467660962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099471 (2 * n + 1) + A049347 n

end

end A138187.P6836544298467660962

namespace A138187

/-- `A099471(2*n+1)+A049347(n)` -/
def P6836544298467660962.Spec : Prop :=
  ∀ n, P6836544298467660962.a n = A138187 n

end A138187

/-! ## A138187.P1515020320889273480

`A004396(n+2)*A117188(2*n)`
-/

namespace A138187.P1515020320889273480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 2) * A117188 (2 * n)

end

end A138187.P1515020320889273480

namespace A138187

/-- `A004396(n+2)*A117188(2*n)` -/
def P1515020320889273480.Spec : Prop :=
  ∀ n, P1515020320889273480.a n = A138187 n

end A138187

/-! ## A138187.P4242624868219538606

`A076118(2*(n+1))-A049347(n+2)`
-/

namespace A138187.P4242624868219538606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076118 (2 * (n + 1)) - A049347 (n + 2)

end

end A138187.P4242624868219538606

namespace A138187

/-- `A076118(2*(n+1))-A049347(n+2)` -/
def P4242624868219538606.Spec : Prop :=
  ∀ n, P4242624868219538606.a n = A138187 n

end A138187

/-! ## A138187.P2440346799385846157

`A099471(2*n+1)-A057078(n+2)`
-/

namespace A138187.P2440346799385846157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099471 (2 * n + 1) - A057078 (n + 2)

end

end A138187.P2440346799385846157

namespace A138187

/-- `A099471(2*n+1)-A057078(n+2)` -/
def P2440346799385846157.Spec : Prop :=
  ∀ n, P2440346799385846157.a n = A138187 n

end A138187

/-! ## A138187.P15391706968371028104

`A008620(2*(n+1))*A061347(n+2)`
-/

namespace A138187.P15391706968371028104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * (n + 1)) * A061347 (n + 2)

end

end A138187.P15391706968371028104

namespace A138187

/-- `A008620(2*(n+1))*A061347(n+2)` -/
def P15391706968371028104.Spec : Prop :=
  ∀ n, P15391706968371028104.a n = A138187 n

end A138187

/-! ## A138187.P2164237223082720983

`A122918(2*n)+2*A057078(n+1)`
-/

namespace A138187.P2164237223082720983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122918 (2 * n) + 2 * A057078 (n + 1)

end

end A138187.P2164237223082720983

namespace A138187

/-- `A122918(2*n)+2*A057078(n+1)` -/
def P2164237223082720983.Spec : Prop :=
  ∀ n, P2164237223082720983.a n = A138187 n

end A138187

/-!
# A138188: Expansion of (1 - 2*x - 2*x^2 - x^3)/(1 + x + x^2 - x^3 - x^4 - x^5).

The programs for A138188, the canonical program `A138188.P2531455921341013399` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138188 has offset 0).

The definition of A138188 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x-2x^2-x^3)/(1+x+x^2-x^3-x^4-x^5))` (program `A138188.P2531455921341013399`, by `A138188.P2531455921341013399.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138188.P2531455921341013399

`ogf((1-2x-2x^2-x^3)/(1+x+x^2-x^3-x^4-x^5))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138188

/-- `ogf((1-2x-2x^2-x^3)/(1+x+x^2-x^3-x^4-x^5))` -/
def P2531455921341013399.Spec : Prop :=
  ∀ n, P2531455921341013399.a n = A138188 n

theorem P2531455921341013399.correct : P2531455921341013399.Spec := by
  intro n
  simp only [A138188]

end A138188

/-! ## A138188.P12857070818003143871

`-Δ[xor(1, a(n-3)+1)]` with `a(0)=1, a(1)=0, a(2)=3, a(3)=3`
-/

namespace A138188.P12857070818003143871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3, 3] fun n f1 =>
  Nat.xor 1 (f1 (n - 3) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A138188.P12857070818003143871

namespace A138188

/-- `-Δ[xor(1, a(n-3)+1)]` -/
def P12857070818003143871.Spec : Prop :=
  ∀ n, P12857070818003143871.a n = A138188 n

end A138188

/-! ## A138188.P3833335367953439608

`∑[A138187(n)]`
-/

namespace A138188.P3833335367953439608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138188.P3833335367953439608

namespace A138188

/-- `∑[A138187(n)]` -/
def P3833335367953439608.Spec : Prop :=
  ∀ n, P3833335367953439608.a n = A138188 n

end A138188

/-! ## A138188.P7673016753817463864

`∑[A099254(2*(n+1))]`
-/

namespace A138188.P7673016753817463864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099254 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138188.P7673016753817463864

namespace A138188

/-- `∑[A099254(2*(n+1))]` -/
def P7673016753817463864.Spec : Prop :=
  ∀ n, P7673016753817463864.a n = A138188 n

end A138188

/-! ## A138188.P8065071239245288325

`A049347(n)*A130727(n)`
-/

namespace A138188.P8065071239245288325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A130727 n

end

end A138188.P8065071239245288325

namespace A138188

/-- `A049347(n)*A130727(n)` -/
def P8065071239245288325.Spec : Prop :=
  ∀ n, P8065071239245288325.a n = A138188 n

end A138188

/-! ## A138188.P6535629550967899083

`(2-A130784(n))*A130727(n)`
-/

namespace A138188.P6535629550967899083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A130784 n) * A130727 n

end

end A138188.P6535629550967899083

namespace A138188

/-- `(2-A130784(n))*A130727(n)` -/
def P6535629550967899083.Spec : Prop :=
  ∀ n, P6535629550967899083.a n = A138188 n

end A138188

/-! ## A138188.P15473672651524176484

`(2*A194960(n+1)-1)*A049347(n)`
-/

namespace A138188.P15473672651524176484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A194960 (n + 1) - 1) * A049347 n

end

end A138188.P15473672651524176484

namespace A138188

/-- `(2*A194960(n+1)-1)*A049347(n)` -/
def P15473672651524176484.Spec : Prop :=
  ∀ n, P15473672651524176484.a n = A138188 n

end A138188

/-! ## A138188.P2671250086016928493

`A089598(n)-A089598(A064429(n)+1)`
-/

namespace A138188.P2671250086016928493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089598 n - A089598 (A064429 n + 1).toNat

end

end A138188.P2671250086016928493

namespace A138188

/-- `A089598(n)-A089598(A064429(n)+1)` -/
def P2671250086016928493.Spec : Prop :=
  ∀ n, P2671250086016928493.a n = A138188 n

end A138188

/-! ## A138188.P14886223642301368715

`(A272071(n)-A049347(n+1))*A049347(n)`
-/

namespace A138188.P14886223642301368715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A272071 n - A049347 (n + 1)) * A049347 n

end

end A138188.P14886223642301368715

namespace A138188

/-- `(A272071(n)-A049347(n+1))*A049347(n)` -/
def P14886223642301368715.Spec : Prop :=
  ∀ n, P14886223642301368715.a n = A138188 n

end A138188

/-! ## A138188.P4696739811175154631

`A138189(n+1)-(A138189(n)+A138187(n+1))`
-/

namespace A138188.P4696739811175154631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138189 (n + 1) - (A138189 n + A138187 (n + 1))

end

end A138188.P4696739811175154631

namespace A138188

/-- `A138189(n+1)-(A138189(n)+A138187(n+1))` -/
def P4696739811175154631.Spec : Prop :=
  ∀ n, P4696739811175154631.a n = A138188 n

end A138188

/-! ## A138188.P5913855385594250637

`(A145064(n)-A145064(n+1))*A011655(n+1)`
-/

namespace A138188.P5913855385594250637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A145064 n - A145064 (n + 1)) * A011655 (n + 1)

end

end A138188.P5913855385594250637

namespace A138188

/-- `(A145064(n)-A145064(n+1))*A011655(n+1)` -/
def P5913855385594250637.Spec : Prop :=
  ∀ n, P5913855385594250637.a n = A138188 n

end A138188

/-! ## A138188.P11003083924510319984

`(A302402(n+1)-A102283(n+1))*A102283(n+1)`
-/

namespace A138188.P11003083924510319984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A302402 (n + 1) - A102283 (n + 1)) * A102283 (n + 1)

end

end A138188.P11003083924510319984

namespace A138188

/-- `(A302402(n+1)-A102283(n+1))*A102283(n+1)` -/
def P11003083924510319984.Spec : Prop :=
  ∀ n, P11003083924510319984.a n = A138188 n

end A138188

/-! ## A138188.P8985438069429860354

`A102899(n+2)-A353327(n)`
-/

namespace A138188.P8985438069429860354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102899 (n + 2) - A353327 n

end

end A138188.P8985438069429860354

namespace A138188

/-- `A102899(n+2)-A353327(n)` -/
def P8985438069429860354.Spec : Prop :=
  ∀ n, P8985438069429860354.a n = A138188 n

end A138188

/-! ## A138188.P8124155661939279495

`A049347(n)*A133310(n+2)`
-/

namespace A138188.P8124155661939279495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A133310 (n + 2)

end

end A138188.P8124155661939279495

namespace A138188

/-- `A049347(n)*A133310(n+2)` -/
def P8124155661939279495.Spec : Prop :=
  ∀ n, P8124155661939279495.a n = A138188 n

end A138188

/-! ## A138188.P14554677894582964321

`A007980(n+1)-A092076(n+2)`
-/

namespace A138188.P14554677894582964321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 (n + 1) - A092076 (n + 2)

end

end A138188.P14554677894582964321

namespace A138188

/-- `A007980(n+1)-A092076(n+2)` -/
def P14554677894582964321.Spec : Prop :=
  ∀ n, P14554677894582964321.a n = A138188 n

end A138188

/-! ## A138188.P8539093357414039556

`(A010872(n+2)-1)*A063198(n+2)`
-/

namespace A138188.P8539093357414039556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010872 (n + 2) - 1) * A063198 (n + 2)

end

end A138188.P8539093357414039556

namespace A138188

/-- `(A010872(n+2)-1)*A063198(n+2)` -/
def P8539093357414039556.Spec : Prop :=
  ∀ n, P8539093357414039556.a n = A138188 n

end A138188

/-! ## A138188.P15256567632509132811

`Δ[-A102899(n+2)]`
-/

namespace A138188.P15256567632509132811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A102899 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138188.P15256567632509132811

namespace A138188

/-- `Δ[-A102899(n+2)]` -/
def P15256567632509132811.Spec : Prop :=
  ∀ n, P15256567632509132811.a n = A138188 n

end A138188

/-! ## A138188.P11987117273915582810

`Δ[A298788(n+2)]-4`
-/

namespace A138188.P11987117273915582810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298788 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 4

end

end A138188.P11987117273915582810

namespace A138188

/-- `Δ[A298788(n+2)]-4` -/
def P11987117273915582810.Spec : Prop :=
  ∀ n, P11987117273915582810.a n = A138188 n

end A138188

/-! ## A138188.P4244294486273319754

`A102899(n+2)-A102899(n+3)`
-/

namespace A138188.P4244294486273319754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102899 (n + 2) - A102899 (n + 3)

end

end A138188.P4244294486273319754

namespace A138188

/-- `A102899(n+2)-A102899(n+3)` -/
def P4244294486273319754.Spec : Prop :=
  ∀ n, P4244294486273319754.a n = A138188 n

end A138188

/-! ## A138188.P6079892142868325402

`Δ[-A110090(n+3)]`
-/

namespace A138188.P6079892142868325402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A110090 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138188.P6079892142868325402

namespace A138188

/-- `Δ[-A110090(n+3)]` -/
def P6079892142868325402.Spec : Prop :=
  ∀ n, P6079892142868325402.a n = A138188 n

end A138188

/-!
# A138189: Sequence built on pattern (1,-even,-even) beginning 1,-2,-2.

The programs for A138189, the canonical program `A138189.P7218943394307261532` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138189 has offset 0).

The definition of A138189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138189.P17644591564716668855

`∑[∑[ogf((1-2x-2x^2-x^3)/(1+2x+3x^2+2x^3+x^4))]]`
-/

namespace A138189.P17644591564716668855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -2, -1] [1, 2, 3, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138189.P17644591564716668855

namespace A138189

/-- `∑[∑[ogf((1-2x-2x^2-x^3)/(1+2x+3x^2+2x^3+x^4))]]` -/
def P17644591564716668855.Spec : Prop :=
  ∀ n, P17644591564716668855.a n = A138189 n

end A138189

/-! ## A138189.P11929206859542818436

`a(n-3)-((-1)^a(n-3)+1)` with `a(0)=1, a(1)=-2, a(2)=-2`
-/

namespace A138189.P11929206859542818436
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, -2, -2] fun n a =>
  a (n - 3) - ((-1 : ℝ) ^ (a (n - 3)) + 1)

end

end A138189.P11929206859542818436

namespace A138189

/-- `a(n-3)-((-1)^a(n-3)+1)` -/
def P11929206859542818436.Spec : Prop :=
  ∀ n, P11929206859542818436.a n = (A138189 n : ℝ)

end A138189

/-! ## A138189.P8445675782405464388

`a(n-3)-1-(-1)^a(n-3)` with `a(0)=1, a(1)=-2, a(2)=-2`
-/

namespace A138189.P8445675782405464388
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, -2, -2] fun n a =>
  a (n - 3) - 1 - (-1 : ℝ) ^ (a (n - 3))

end

end A138189.P8445675782405464388

namespace A138189

/-- `a(n-3)-1-(-1)^a(n-3)` -/
def P8445675782405464388.Spec : Prop :=
  ∀ n, P8445675782405464388.a n = (A138189 n : ℝ)

end A138189

/-! ## A138189.P7218943394307261532

`∑[A138188(n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A138189

/-- `∑[A138188(n)]` -/
def P7218943394307261532.Spec : Prop :=
  ∀ n, P7218943394307261532.a n = A138189 n

theorem P7218943394307261532.correct : P7218943394307261532.Spec := by
  intro n
  simp only [A138189]

end A138189

/-! ## A138189.P5435020653964732665

`1-A353327(n)`
-/

namespace A138189.P5435020653964732665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A353327 n

end

end A138189.P5435020653964732665

namespace A138189

/-- `1-A353327(n)` -/
def P5435020653964732665.Spec : Prop :=
  ∀ n, P5435020653964732665.a n = A138189 n

end A138189

/-! ## A138189.P6694268249320258930

`∑[∑[A138187(n)]]`
-/

namespace A138189.P6694268249320258930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138187 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138189.P6694268249320258930

namespace A138189

/-- `∑[∑[A138187(n)]]` -/
def P6694268249320258930.Spec : Prop :=
  ∀ n, P6694268249320258930.a n = A138189 n

end A138189

/-! ## A138189.P11570336170287543741

`1-A353314(n)+n`
-/

namespace A138189.P11570336170287543741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A353314 n + (n : ℤ)

end

end A138189.P11570336170287543741

namespace A138189

/-- `1-A353314(n)+n` -/
def P11570336170287543741.Spec : Prop :=
  ∀ n, P11570336170287543741.a n = A138189 n

end A138189

/-! ## A138189.P14652616134484703883

`∑[∑[A099254(2*(n+1))]]`
-/

namespace A138189.P14652616134484703883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099254 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138189.P14652616134484703883

namespace A138189

/-- `∑[∑[A099254(2*(n+1))]]` -/
def P14652616134484703883.Spec : Prop :=
  ∀ n, P14652616134484703883.a n = A138189 n

end A138189

/-! ## A138189.P8743702557120980317

`Δ[ceil(n/3)²]-A302402(n)`
-/

namespace A138189.P8743702557120980317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A302402 n

end

end A138189.P8743702557120980317

namespace A138189

/-- `Δ[ceil(n/3)²]-A302402(n)` -/
def P8743702557120980317.Spec : Prop :=
  ∀ n, P8743702557120980317.a n = A138189 n

end A138189

/-! ## A138189.P7886665434389035317

`A110332(A102899(n))`
-/

namespace A138189.P7886665434389035317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110332 (A102899 n).toNat

end

end A138189.P7886665434389035317

namespace A138189

/-- `A110332(A102899(n))` -/
def P7886665434389035317.Spec : Prop :=
  ∀ n, P7886665434389035317.a n = A138189 n

end A138189

/-! ## A138189.P12731338276556303690

`A024000(A353327(n))`
-/

namespace A138189.P12731338276556303690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A353327 n).toNat

end

end A138189.P12731338276556303690

namespace A138189

/-- `A024000(A353327(n))` -/
def P12731338276556303690.Spec : Prop :=
  ∀ n, P12731338276556303690.a n = A138189 n

end A138189

/-! ## A138189.P4228687651194656921

`1-A193356(A066481(n+3))`
-/

namespace A138189.P4228687651194656921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A193356 (A066481 (n + 3)).toNat

end

end A138189.P4228687651194656921

namespace A138189

/-- `1-A193356(A066481(n+3))` -/
def P4228687651194656921.Spec : Prop :=
  ∀ n, P4228687651194656921.a n = A138189 n

end A138189

/-! ## A138189.P13792324172589618561

`A051176(n)+1-A353313(n)`
-/

namespace A138189.P13792324172589618561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 n + (1 - A353313 n)

end

end A138189.P13792324172589618561

namespace A138189

/-- `A051176(n)+1-A353313(n)` -/
def P13792324172589618561.Spec : Prop :=
  ∀ n, P13792324172589618561.a n = A138189 n

end A138189

/-! ## A138189.P6441076113405519957

`1-A011655(n)*A066481(n+3)`
-/

namespace A138189.P6441076113405519957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A011655 n * A066481 (n + 3)

end

end A138189.P6441076113405519957

namespace A138189

/-- `1-A011655(n)*A066481(n+3)` -/
def P6441076113405519957.Spec : Prop :=
  ∀ n, P6441076113405519957.a n = A138189 n

end A138189

/-! ## A138189.P2173088308705641660

`A099254((2*n+1)*A011655(n))`
-/

namespace A138189.P2173088308705641660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099254 ((2 * n + 1 : ℤ) * A011655 n).toNat

end

end A138189.P2173088308705641660

namespace A138189

/-- `A099254((2*n+1)*A011655(n))` -/
def P2173088308705641660.Spec : Prop :=
  ∀ n, P2173088308705641660.a n = A138189 n

end A138189

/-! ## A138189.P1795114964352798366

`1-lcm(A066481(n+3), A092220(n))`
-/

namespace A138189.P1795114964352798366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Int.lcm (A066481 (n + 3)) (A092220 n) : ℤ)

end

end A138189.P1795114964352798366

namespace A138189

/-- `1-lcm(A066481(n+3), A092220(n))` -/
def P1795114964352798366.Spec : Prop :=
  ∀ n, P1795114964352798366.a n = A138189 n

end A138189

/-! ## A138189.P14101275599280031995

`xor(1, 1-A110090(n+1))`
-/

namespace A138189.P14101275599280031995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (1 - A110090 (n + 1))

end

end A138189.P14101275599280031995

namespace A138189

/-- `xor(1, 1-A110090(n+1))` -/
def P14101275599280031995.Spec : Prop :=
  ∀ n, P14101275599280031995.a n = A138189 n

end A138189

/-! ## A138189.P14791138955133525483

`A181983(A110090(n+1))`
-/

namespace A138189.P14791138955133525483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (A110090 (n + 1)).toNat

end

end A138189.P14791138955133525483

namespace A138189

/-- `A181983(A110090(n+1))` -/
def P14791138955133525483.Spec : Prop :=
  ∀ n, P14791138955133525483.a n = A138189 n

end A138189

/-! ## A138189.P143311835921095425

`1-A089598(A092200(n))`
-/

namespace A138189.P143311835921095425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A089598 (A092200 n).toNat

end

end A138189.P143311835921095425

namespace A138189

/-- `1-A089598(A092200(n))` -/
def P143311835921095425.Spec : Prop :=
  ∀ n, P143311835921095425.a n = A138189 n

end A138189

/-! ## A138189.P11920274054248308954

`1-A089598(A130481(n+1))`
-/

namespace A138189.P11920274054248308954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A089598 (A130481 (n + 1)).toNat

end

end A138189.P11920274054248308954

namespace A138189

/-- `1-A089598(A130481(n+1))` -/
def P11920274054248308954.Spec : Prop :=
  ∀ n, P11920274054248308954.a n = A138189 n

end A138189

/-!
# A138190: Numerator of (n-1)*n*(n+1)/12.

The programs for A138190, the canonical program `A138190.P14612047088116699715` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138190 has offset 1).

The definition of A138190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138190.P4271264819013663516

`lcm(2, ∑[∑[n]])/2`
-/

namespace A138190.P4271264819013663516
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A138190.P4271264819013663516

namespace A138190

/-- `lcm(2, ∑[∑[n]])/2` -/
def P4271264819013663516.Spec : Prop :=
  ∀ n, P4271264819013663516.a n = (A138190 (n + 1) : ℚ)

end A138190

/-! ## A138190.P17226270161263313299

`∑[∑[n]]/gcd(2, ∑[∑[n]])`
-/

namespace A138190.P17226270161263313299
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f3 j) : ℚ)

end

end A138190.P17226270161263313299

namespace A138190

/-- `∑[∑[n]]/gcd(2, ∑[∑[n]])` -/
def P17226270161263313299.Spec : Prop :=
  ∀ n, P17226270161263313299.a n = (A138190 (n + 1) : ℚ)

end A138190

/-! ## A138190.P14612047088116699715

`gcd(A000292(n), A054563(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138190

/-- `gcd(A000292(n), A054563(n))` -/
def P14612047088116699715.Spec : Prop :=
  ∀ n, (P14612047088116699715.a n : ℤ) = A138190 (n + 1)

theorem P14612047088116699715.correct : P14612047088116699715.Spec := by
  intro n
  simp only [A138190, Nat.add_sub_cancel]

end A138190

/-! ## A138190.P14795835721839973598

`gcd(A085284(n), A189345(n+1))`
-/

namespace A138190.P14795835721839973598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085284 n) (A189345 (n + 1))

end

end A138190.P14795835721839973598

namespace A138190

/-- `gcd(A085284(n), A189345(n+1))` -/
def P14795835721839973598.Spec : Prop :=
  ∀ n, (P14795835721839973598.a n : ℤ) = A138190 (n + 1)

end A138190

/-! ## A138190.P2210016519067176283

`A276670(n+1)/3`
-/

namespace A138190.P2210016519067176283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276670 (n + 1) : ℚ) / 3

end

end A138190.P2210016519067176283

namespace A138190

/-- `A276670(n+1)/3` -/
def P2210016519067176283.Spec : Prop :=
  ∀ n, P2210016519067176283.a n = (A138190 (n + 1) : ℚ)

end A138190

/-! ## A138190.P5973589411288290292

`A000034(n+1)*A208950(n+1)`
-/

namespace A138190.P5973589411288290292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A208950 (n + 1)

end

end A138190.P5973589411288290292

namespace A138190

/-- `A000034(n+1)*A208950(n+1)` -/
def P5973589411288290292.Spec : Prop :=
  ∀ n, P5973589411288290292.a n = A138190 (n + 1)

end A138190

/-! ## A138190.P2236668083773552631

`6/A010704(n)*A208950(n+1)`
-/

namespace A138190.P2236668083773552631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 / (A010704 n : ℚ) * (A208950 (n + 1) : ℚ)

end

end A138190.P2236668083773552631

namespace A138190

/-- `6/A010704(n)*A208950(n+1)` -/
def P2236668083773552631.Spec : Prop :=
  ∀ n, P2236668083773552631.a n = (A138190 (n + 1) : ℚ)

end A138190

/-! ## A138190.P843124213313833224

`gcd(n*A212415(n+1), A002415(n+1))`
-/

namespace A138190.P843124213313833224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A212415 (n + 1)) (A002415 (n + 1))

end

end A138190.P843124213313833224

namespace A138190

/-- `gcd(n*A212415(n+1), A002415(n+1))` -/
def P843124213313833224.Spec : Prop :=
  ∀ n, (P843124213313833224.a n : ℤ) = A138190 (n + 1)

end A138190

/-! ## A138190.P12270435163211606695

`(A208950(n+1)+A208950(n+1))/A000034(n)`
-/

namespace A138190.P12270435163211606695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208950 (n + 1) + A208950 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A138190.P12270435163211606695

namespace A138190

/-- `(A208950(n+1)+A208950(n+1))/A000034(n)` -/
def P12270435163211606695.Spec : Prop :=
  ∀ n, P12270435163211606695.a n = (A138190 (n + 1) : ℚ)

end A138190

/-! ## A138190.P4774103498695077232

`A208950(n+1)/A005563(n+1)*A039720(n+2)`
-/

namespace A138190.P4774103498695077232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208950 (n + 1) : ℚ) / (A005563 (n + 1) : ℚ) * (A039720 (n + 2) : ℚ)

end

end A138190.P4774103498695077232

namespace A138190

/-- `A208950(n+1)/A005563(n+1)*A039720(n+2)` -/
def P4774103498695077232.Spec : Prop :=
  ∀ n, P4774103498695077232.a n = (A138190 (n + 1) : ℚ)

end A138190

/-! ## A138190.P12427110563711299110

`A000292(n)/(3-A177704(n+2))`
-/

namespace A138190.P12427110563711299110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000292 n : ℚ) / (3 - A177704 (n + 2) : ℚ)

end

end A138190.P12427110563711299110

namespace A138190

/-- `A000292(n)/(3-A177704(n+2))` -/
def P12427110563711299110.Spec : Prop :=
  ∀ n, P12427110563711299110.a n = (A138190 (n + 1) : ℚ)

end A138190

/-! ## A138190.P17161798554318628057

`A051724(2*n)*A051724(n+1)*A060789(n+2)`
-/

namespace A138190.P17161798554318628057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (2 * n) * A051724 (n + 1) * A060789 (n + 2)

end

end A138190.P17161798554318628057

namespace A138190

/-- `A051724(2*n)*A051724(n+1)*A060789(n+2)` -/
def P17161798554318628057.Spec : Prop :=
  ∀ n, P17161798554318628057.a n = A138190 (n + 1)

end A138190

/-! ## A138190.P10704819054146152020

`A138191(2*(n+1))*A208950(n+1)`
-/

namespace A138190.P10704819054146152020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138191 (2 * (n + 1)) * A208950 (n + 1)

end

end A138190.P10704819054146152020

namespace A138190

/-- `A138191(2*(n+1))*A208950(n+1)` -/
def P10704819054146152020.Spec : Prop :=
  ∀ n, P10704819054146152020.a n = A138190 (n + 1)

end A138190

/-! ## A138190.P8020063195438948667

`A107453(2*(n+2))*A208950(n+1)`
-/

namespace A138190.P8020063195438948667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107453 (2 * (n + 2)) * A208950 (n + 1)

end

end A138190.P8020063195438948667

namespace A138190

/-- `A107453(2*(n+2))*A208950(n+1)` -/
def P8020063195438948667.Spec : Prop :=
  ∀ n, P8020063195438948667.a n = A138190 (n + 1)

end A138190

/-! ## A138190.P10278773288676550754

`2/A176895(2*n)*A208950(n+1)`
-/

namespace A138190.P10278773288676550754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A176895 (2 * n) : ℚ) * (A208950 (n + 1) : ℚ)

end

end A138190.P10278773288676550754

namespace A138190

/-- `2/A176895(2*n)*A208950(n+1)` -/
def P10278773288676550754.Spec : Prop :=
  ∀ n, P10278773288676550754.a n = (A138190 (n + 1) : ℚ)

end A138190

/-! ## A138190.P3945628061576462150

`A176895(2*(n+1))*A208950(n+1)`
-/

namespace A138190.P3945628061576462150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (2 * (n + 1)) * A208950 (n + 1)

end

end A138190.P3945628061576462150

namespace A138190

/-- `A176895(2*(n+1))*A208950(n+1)` -/
def P3945628061576462150.Spec : Prop :=
  ∀ n, P3945628061576462150.a n = A138190 (n + 1)

end A138190

/-! ## A138190.P18263880704541959933

`A051724(n+1)*A051724(A005563(n))`
-/

namespace A138190.P18263880704541959933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (n + 1) * A051724 (A005563 n).toNat

end

end A138190.P18263880704541959933

namespace A138190

/-- `A051724(n+1)*A051724(A005563(n))` -/
def P18263880704541959933.Spec : Prop :=
  ∀ n, P18263880704541959933.a n = A138190 (n + 1)

end A138190

/-!
# A138191: Denominator of (n-1)*n*(n+1)/12.

The programs for A138191, the canonical program `A138191.P8735980800387629035` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138191 has offset 1).

The definition of A138191 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138191.P8735980800387629035

`a(n-4)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138191

/-- `a(n-4)` -/
def P8735980800387629035.Spec : Prop :=
  ∀ n, (P8735980800387629035.a n : ℤ) = A138191 (n + 1)

theorem P8735980800387629035.correct : P8735980800387629035.Spec := by
  intro n
  simp only [A138191, Nat.add_sub_cancel]

end A138191

/-!
# A138192: A triangular sequence based on expansion of the rational polynomial of A001788 as a Sheffer sequence: p(x,t)=Exp[x*t]*(-1/(2*t - 1)^3).

The programs for A138192, there is no canonical definition to state claims against.
-/

/-! ## A138192.P7336941696776977824

`A007318(n)*A051578(A025581(n))`
-/

namespace A138192.P7336941696776977824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A051578 (A025581 n).toNat

end

end A138192.P7336941696776977824

/-! ## A138192.P2610789912966073398

`A001792(A025581(n))*A132159(n)`
-/

namespace A138192.P2610789912966073398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (A025581 n).toNat * A132159 n

end

end A138192.P2610789912966073398

/-! ## A138192.P13292689484410404262

`A132159(n)*A162728(A130321(n))`
-/

namespace A138192.P13292689484410404262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132159 n * A162728 (A130321 n).toNat

end

end A138192.P13292689484410404262

/-! ## A138192.P9675936970729598576

`A130321(n)*A267849(A061579(n))`
-/

namespace A138192.P9675936970729598576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A267849 (A061579 n).toNat

end

end A138192.P9675936970729598576

/-! ## A138192.P6544400264968269480

`A001788(A004736(n+1))*A094587(n)`
-/

namespace A138192.P6544400264968269480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 (A004736 (n + 1)).toNat * A094587 n

end

end A138192.P6544400264968269480

/-!
# A138193: Odd composite numbers n for which A137576((n-1)/2)-1 is divisible by phi(n).

The programs for A138193, there is no canonical definition to state claims against.
-/

/-! ## A138193.P899792262422255328

`filter[A138217(n+1), A066247(#)]`
-/

namespace A138193.P899792262422255328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A138193.P899792262422255328

/-! ## A138193.P3394900422549345780

`filter[A138217(n+1), A202238(#)]`
-/

namespace A138193.P3394900422549345780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A138193.P3394900422549345780

/-! ## A138193.P13800726591241900129

`filter[A138217(n+1), A323162(#)]`
-/

namespace A138193.P13800726591241900129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A138193.P13800726591241900129

/-! ## A138193.P12125169240279818805

`filter[A138217(n+2), A005171(#)]`
-/

namespace A138193.P12125169240279818805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138217 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A138193.P12125169240279818805

/-! ## A138193.P12175355204034961573

`filter[A138217(n+2), A292438(#)]`
-/

namespace A138193.P12175355204034961573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138217 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A138193.P12175355204034961573

/-! ## A138193.P500688654594320952

`∩[A071904(n+1), A138217(n+1)]`
-/

namespace A138193.P500688654594320952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138193.P500688654594320952

/-! ## A138193.P6314851072856509448

`∩[A078505(n+1), A138217(n+1)]`
-/

namespace A138193.P6314851072856509448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138193.P6314851072856509448

/-! ## A138193.P4368938975290293788

`∩[A138217(n+1), A270574(n+1)]`
-/

namespace A138193.P4368938975290293788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138193.P4368938975290293788

/-! ## A138193.P7112116054453743903

`∩[A039769(n+1), A138217(n+1)]`
-/

namespace A138193.P7112116054453743903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138193.P7112116054453743903

/-! ## A138193.P8485831748344251470

`∩[A058957(n+1), A138217(n+1)]`
-/

namespace A138193.P8485831748344251470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138193.P8485831748344251470

/-! ## A138193.P13029546677459678389

`∩[A138217(n+1), A333312(n+1)]`
-/

namespace A138193.P13029546677459678389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138193.P13029546677459678389

/-! ## A138193.P7562111486363216170

`∩[A079364(n+1), A138217(n+1)]`
-/

namespace A138193.P7562111486363216170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138193.P7562111486363216170

/-! ## A138193.P18060976177310110682

`∩[A138217(n+1), A171845(n+1)]`
-/

namespace A138193.P18060976177310110682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138193.P18060976177310110682

/-! ## A138193.P15287652336745119515

`∩[A105441(n+1), A138217(n+1)]`
-/

namespace A138193.P15287652336745119515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138193.P15287652336745119515

/-! ## A138193.P15250502862746777033

`∩[A138217(n+1), A365408(n+1)]`
-/

namespace A138193.P15250502862746777033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138193.P15250502862746777033

/-! ## A138193.P5592712628115088776

`∩[A138217(n+1), A342082(n+1)]`
-/

namespace A138193.P5592712628115088776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138193.P5592712628115088776

/-! ## A138193.P14069781684190906202

`∩[A138217(n+1), A005381(n+1)]`
-/

namespace A138193.P14069781684190906202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138193.P14069781684190906202

/-! ## A138193.P3032972737539090065

`∩[A138217(n+1), A068780(n+1)]`
-/

namespace A138193.P3032972737539090065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138193.P3032972737539090065

/-!
# A138194: Floor(2*n/(3*log(n))).

The programs for A138194, the canonical program `A138194.P4043433675677307542` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138194 has offset 2).

The definition of A138194 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2*(n+2)/(3*log(n+2)))` (program `A138194.P4043433675677307542`, by `A138194.P4043433675677307542.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138194.P4043433675677307542

`floor(2*(n+2)/(3*log(n+2)))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138194

/-- `floor(2*(n+2)/(3*log(n+2)))` -/
def P4043433675677307542.Spec : Prop :=
  ∀ n, P4043433675677307542.a n = A138194 (n + 2)

theorem P4043433675677307542.correct : P4043433675677307542.Spec := by
  intro n
  simp only [A138194, Nat.add_sub_cancel]

end A138194

/-! ## A138194.P15580683117516621895

`A002264(A050499(n+2)+floor((n+2)/log(n+2)))`
-/

namespace A138194.P15580683117516621895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A050499 (n + 2) + ⌊(n + 2 : ℝ) / Real.log (n + 2 : ℝ)⌋).toNat

end

end A138194.P15580683117516621895

namespace A138194

/-- `A002264(A050499(n+2)+floor((n+2)/log(n+2)))` -/
def P15580683117516621895.Spec : Prop :=
  ∀ n, P15580683117516621895.a n = A138194 (n + 2)

end A138194

/-! ## A138194.P17592428393361404887

`A002264(A050500(n+2)+round((n+2)/log(n+2)))`
-/

namespace A138194.P17592428393361404887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A050500 (n + 2) + SequenceMachineLib.roundAway ((n + 2 : ℝ) / Real.log (n + 2 : ℝ))).toNat

end

end A138194.P17592428393361404887

namespace A138194

/-- `A002264(A050500(n+2)+round((n+2)/log(n+2)))` -/
def P17592428393361404887.Spec : Prop :=
  ∀ n, P17592428393361404887.a n = A138194 (n + 2)

end A138194

/-! ## A138194.P8027314857167548940

`A002264(round((n+2)/log(n+2))+A050501(n+2)-1)`
-/

namespace A138194.P8027314857167548940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.roundAway ((n + 2 : ℝ) / Real.log (n + 2 : ℝ)) + (A050501 (n + 2) - 1)).toNat

end

end A138194.P8027314857167548940

namespace A138194

/-- `A002264(round((n+2)/log(n+2))+A050501(n+2)-1)` -/
def P8027314857167548940.Spec : Prop :=
  ∀ n, P8027314857167548940.a n = A138194 (n + 2)

end A138194

/-! ## A138194.P6510934113811168536

`A002264(A050501(n+2)-1+A053622(n+2)+A000720(n+2))`
-/

namespace A138194.P6510934113811168536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A050501 (n + 2) - 1 + (A053622 (n + 2) + A000720 (n + 2))).toNat

end

end A138194.P6510934113811168536

namespace A138194

/-- `A002264(A050501(n+2)-1+A053622(n+2)+A000720(n+2))` -/
def P6510934113811168536.Spec : Prop :=
  ∀ n, P6510934113811168536.a n = A138194 (n + 2)

end A138194

/-! ## A138194.P6366190531918877680

`A002264(A050501(n+2)-1+A230980(n+2)+A053622(n+2))`
-/

namespace A138194.P6366190531918877680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A050501 (n + 2) - 1 + (A230980 (n + 2) + A053622 (n + 2))).toNat

end

end A138194.P6366190531918877680

namespace A138194

/-- `A002264(A050501(n+2)-1+A230980(n+2)+A053622(n+2))` -/
def P6366190531918877680.Spec : Prop :=
  ∀ n, P6366190531918877680.a n = A138194 (n + 2)

end A138194

/-! ## A138194.P8747716731166197440

`A002264(A090663(n+2)+ceil((n+2)/log(n+2)))`
-/

namespace A138194.P8747716731166197440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A090663 (n + 2) + ⌈(n + 2 : ℝ) / Real.log (n + 2 : ℝ)⌉).toNat

end

end A138194.P8747716731166197440

namespace A138194

/-- `A002264(A090663(n+2)+ceil((n+2)/log(n+2)))` -/
def P8747716731166197440.Spec : Prop :=
  ∀ n, P8747716731166197440.a n = A138194 (n + 2)

end A138194

/-! ## A138194.P2383217970674438636

`A002264(floor((n+2)/log(n+2))+A090663(n+2)+1)`
-/

namespace A138194.P2383217970674438636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (⌊(n + 2 : ℝ) / Real.log (n + 2 : ℝ)⌋ + (A090663 (n + 2) + 1)).toNat

end

end A138194.P2383217970674438636

namespace A138194

/-- `A002264(floor((n+2)/log(n+2))+A090663(n+2)+1)` -/
def P2383217970674438636.Spec : Prop :=
  ∀ n, P2383217970674438636.a n = A138194 (n + 2)

end A138194

/-! ## A138194.P12661558576383539689

`ceil((n+1)/∑[2/A325131(n+1)])`
-/

namespace A138194.P12661558576383539689
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A325131 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (∑ j ∈ Finset.range (n + 1), f1 j)⌉

end

end A138194.P12661558576383539689

namespace A138194

/-- `ceil((n+1)/∑[2/A325131(n+1)])` -/
def P12661558576383539689.Spec : Prop :=
  ∀ n, P12661558576383539689.a n = A138194 (n + 2)

end A138194

/-!
# A138195: a(n) = floor(8*n/(5*log(n))).

The programs for A138195, the canonical program `A138195.P1778660225102587855` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138195 has offset 2).

The definition of A138195 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(8*(n+2)/(5*log(n+2)))` (program `A138195.P1778660225102587855`, by `A138195.P1778660225102587855.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138195.P1778660225102587855

`floor(8*(n+2)/(5*log(n+2)))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138195

/-- `floor(8*(n+2)/(5*log(n+2)))` -/
def P1778660225102587855.Spec : Prop :=
  ∀ n, P1778660225102587855.a n = A138195 (n + 2)

theorem P1778660225102587855.correct : P1778660225102587855.Spec := by
  intro n
  simp only [A138195, Nat.add_sub_cancel]

end A138195

/-! ## A138195.P13802666079935666318

`A080800(A262884(n+1))`
-/

namespace A138195.P13802666079935666318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080800 (A262884 (n + 1)).toNat

end

end A138195.P13802666079935666318

namespace A138195

/-- `A080800(A262884(n+1))` -/
def P13802666079935666318.Spec : Prop :=
  ∀ n, P13802666079935666318.a n = A138195 (n + 2)

end A138195

/-! ## A138195.P6680743171816981680

`round(A030530(A157914(n+1))/(2*n+1))`
-/

namespace A138195.P6680743171816981680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A030530 (A157914 (n + 1)).toNat : ℚ) / (2 * n + 1 : ℚ))

end

end A138195.P6680743171816981680

namespace A138195

/-- `round(A030530(A157914(n+1))/(2*n+1))` -/
def P6680743171816981680.Spec : Prop :=
  ∀ n, P6680743171816981680.a n = A138195 (n + 2)

end A138195

/-! ## A138195.P14627630687262993122

`A003056(A003056(A023545(n+1)+56))`
-/

namespace A138195.P14627630687262993122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A003056 (A023545 (n + 1) + 56).toNat).toNat

end

end A138195.P14627630687262993122

namespace A138195

/-- `A003056(A003056(A023545(n+1)+56))` -/
def P14627630687262993122.Spec : Prop :=
  ∀ n, P14627630687262993122.a n = A138195 (n + 2)

end A138195

/-!
# A138196: Number of different ways n! can be represented as the difference of two squares; also, for n >= 4, half the number of positive integer divisors of n!/4.

The programs for A138196, there is no canonical definition to state claims against.
-/

/-! ## A138196.P9696342470390399242

`A003056(A000560(n+2))-A357621(n)`
-/

namespace A138196.P9696342470390399242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000560 (n + 2)).toNat - A357621 n

end

end A138196.P9696342470390399242

/-! ## A138196.P15277727235760715575

`A352667(n+1)+A144611(A014143(n))`
-/

namespace A138196.P15277727235760715575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352667 (n + 1) + A144611 (A014143 n).toNat

end

end A138196.P15277727235760715575

/-! ## A138196.P10701301486390782042

`A352667(n+1)+A167371(A292480(n))`
-/

namespace A138196.P10701301486390782042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352667 (n + 1) + A167371 (A292480 n).toNat

end

end A138196.P10701301486390782042

/-! ## A138196.P1162046463170118651

`A320921(n)-A075553(A001065(n+1))`
-/

namespace A138196.P1162046463170118651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320921 n - A075553 (A001065 (n + 1)).toNat

end

end A138196.P1162046463170118651

/-! ## A138196.P14196939969817396130

`A320921(n)-A075553(A061358(n+3))`
-/

namespace A138196.P14196939969817396130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320921 n - A075553 (A061358 (n + 3)).toNat

end

end A138196.P14196939969817396130

/-!
# A138198: First occurrence of prime gaps which are squares.

The programs for A138198, there is no canonical definition to state claims against.
-/

/-! ## A138198.P14323815762813308236

`A000230(2*n²)`
-/

namespace A138198.P14323815762813308236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (2 * n ^ 2)

end

end A138198.P14323815762813308236

/-! ## A138198.P10737084735407337506

`A000230(n*2*n)+char[24]`
-/

namespace A138198.P10737084735407337506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (n * (2 * n)) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A138198.P10737084735407337506

/-! ## A138198.P16750985899976450284

`record[A000230(A025480(n²))]`
-/

namespace A138198.P16750985899976450284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (A025480 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138198.P16750985899976450284

/-! ## A138198.P12623255304590142160

`record[A000230(n*A000122(n))]`
-/

namespace A138198.P12623255304590142160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 ((n : ℤ) * A000122 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138198.P12623255304590142160

/-! ## A138198.P6149401290835996708

`sqrt(A000230(n*2*n))^A020639(lcm(2, n+1))`
-/

namespace A138198.P6149401290835996708
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000230 (n * (2 * n)) : ℝ) ^ (A020639 (Nat.lcm 2 (n + 1)) : ℤ)

end

end A138198.P6149401290835996708

/-!
# A138199: a(n) = 14^(2*n+1) + 3^(2*n+1).

The programs for A138199, the canonical program `A138199.P4047723949567432900` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138199 has offset 0).

The definition of A138199 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14^(2*n+1)+3^(2*n+1)` (program `A138199.P4047723949567432900`, by `A138199.P4047723949567432900.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138199.P4047723949567432900

`14^(2*n+1)+3^(2*n+1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138199

/-- `14^(2*n+1)+3^(2*n+1)` -/
def P4047723949567432900.Spec : Prop :=
  ∀ n, (P4047723949567432900.a n : ℤ) = A138199 n

theorem P4047723949567432900.correct : P4047723949567432900.Spec := by
  intro n
  simp only [A138199]

end A138199

/-! ## A138199.P14695243826060599839

`17*A138200(n)`
-/

namespace A138199.P14695243826060599839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A138200 n

end

end A138199.P14695243826060599839

namespace A138199

/-- `17*A138200(n)` -/
def P14695243826060599839.Spec : Prop :=
  ∀ n, P14695243826060599839.a n = A138199 n

end A138199

/-! ## A138199.P3584688201548860841

`(A013719(n)+A013708(n))^A057077(n+2)²`
-/

namespace A138199.P3584688201548860841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013719 n + A013708 n : ℚ) ^ (A057077 (n + 2) ^ 2 : ℤ)

end

end A138199.P3584688201548860841

namespace A138199

/-- `(A013719(n)+A013708(n))^A057077(n+2)²` -/
def P3584688201548860841.Spec : Prop :=
  ∀ n, P3584688201548860841.a n = (A138199 n : ℚ)

end A138199

/-! ## A138199.P15787076881806480919

`(A013719(n)+A013708(n))%A013724(n)`
-/

namespace A138199.P15787076881806480919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013719 n + A013708 n) (A013724 n)

end

end A138199.P15787076881806480919

namespace A138199

/-- `(A013719(n)+A013708(n))%A013724(n)` -/
def P15787076881806480919.Spec : Prop :=
  ∀ n, P15787076881806480919.a n = A138199 n

end A138199

/-! ## A138199.P11799252896169069305

`(A013719(n)+A013708(n))^n^A240867(n)`
-/

namespace A138199.P11799252896169069305
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A013719 n + A013708 n : ℝ) ^ ((n : ℚ) ^ (A240867 n : ℤ) : ℝ)

end

end A138199.P11799252896169069305

namespace A138199

/-- `(A013719(n)+A013708(n))^n^A240867(n)` -/
def P11799252896169069305.Spec : Prop :=
  ∀ n, P11799252896169069305.a n = (A138199 n : ℝ)

end A138199

