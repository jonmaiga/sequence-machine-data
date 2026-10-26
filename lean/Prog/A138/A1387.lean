import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A138700: Numbers k such that 2*k+1, 3*k+2, 4*k+3 and 5*k+4 are primes.

The programs for A138700, there is no canonical definition to state claims against.
-/

/-! ## A138700.P11919990644260193431

`∩[A126955(n+1), A126956(n+1)]`
-/

namespace A138700.P11919990644260193431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138700.P11919990644260193431

/-! ## A138700.P4197674180303836896

`∩[A104635(n+1), A126956(n+1)]`
-/

namespace A138700.P4197674180303836896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138700.P4197674180303836896

/-! ## A138700.P1302820835261649255

`∩[A024897(n+1), A126955(n+1)]`
-/

namespace A138700.P1302820835261649255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138700.P1302820835261649255

/-! ## A138700.P12179959200455131686

`∩[A111230(n+1)+2, A126955(n+1)]`
-/

namespace A138700.P12179959200455131686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111230 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138700.P12179959200455131686

/-! ## A138700.P9289165495903108022

`∩[A126956(n+1), A177966(n+1)]`
-/

namespace A138700.P9289165495903108022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138700.P9289165495903108022

/-!
# A138702: a(n) = number of terms in the continued fraction of the absolute value of B_n, the n-th Bernoulli number.

The programs for A138702, there is no canonical definition to state claims against.
-/

/-! ## A138702.P7059424788886887869

`A138705(A142150(char[1]+n))`
-/

namespace A138702.P7059424788886887869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138705 (A142150 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat

end

end A138702.P7059424788886887869

/-! ## A138702.P5922210192223244108

`A138705(xor(char[1], A142150(n)))`
-/

namespace A138702.P5922210192223244108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138705 (Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A142150 n)).toNat

end

end A138702.P5922210192223244108

/-! ## A138702.P16457330887294596459

`A138705(A254667(n)-A026741(n))`
-/

namespace A138702.P16457330887294596459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138705 (A254667 n - A026741 n).toNat

end

end A138702.P16457330887294596459

/-! ## A138702.P16116999513568516828

`A138705(A142150(n))-A159075(n)`
-/

namespace A138702.P16116999513568516828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138705 (A142150 n).toNat - A159075 n

end

end A138702.P16116999513568516828

/-! ## A138702.P4883519229432123026

`A138705(A026741(n*A266591(n)))`
-/

namespace A138702.P4883519229432123026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138705 (A026741 ((n : ℤ) * A266591 n).toNat).toNat

end

end A138702.P4883519229432123026

/-! ## A138702.P10418481210182442042

`A138705(A142150(n)^A057979(n))`
-/

namespace A138702.P10418481210182442042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138705 (SequenceMachineLib.roundAway ((A142150 n : ℚ) ^ (A057979 n : ℤ))).toNat

end

end A138702.P10418481210182442042

/-! ## A138702.P12884089624845844448

`A138705(A142150(n)^A124625(n))`
-/

namespace A138702.P12884089624845844448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138705 (SequenceMachineLib.roundAway ((A142150 n : ℚ) ^ (A124625 n : ℤ))).toNat

end

end A138702.P12884089624845844448

/-! ## A138702.P11953434704272225261

`A138705(A142150(n)+A159075(n)²)`
-/

namespace A138702.P11953434704272225261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138705 (A142150 n + A159075 n ^ 2).toNat

end

end A138702.P11953434704272225261

/-!
# A138703: a(n) is the sum of the terms in the continued fraction of the absolute value of B_n, the n-th Bernoulli number.

The programs for A138703, there is no canonical definition to state claims against.
-/

/-! ## A138703.P11897428972302016257

`A118759(A106458(n))%48`
-/

namespace A138703.P11897428972302016257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118759 (A106458 n).toNat) 48

end

end A138703.P11897428972302016257

/-! ## A138703.P7654351087691864040

`A106458(n)%A103517(A010927(n))`
-/

namespace A138703.P7654351087691864040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106458 n) (A103517 (A010927 n).toNat)

end

end A138703.P7654351087691864040

/-! ## A138703.P351766810933754929

`A106612(lcm(A025497(n), A106458(n)))`
-/

namespace A138703.P351766810933754929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (Int.lcm (A025497 n) (A106458 n))

end

end A138703.P351766810933754929

/-! ## A138703.P6479864694540099288

`A106612(A049814(n+1)*A106458(n))`
-/

namespace A138703.P6479864694540099288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A049814 (n + 1) * A106458 n).toNat

end

end A138703.P6479864694540099288

/-! ## A138703.P8111361014445568641

`C(A197929(A027642(n)), A340086(n+1))`
-/

namespace A138703.P8111361014445568641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A197929 (A027642 n).toNat).toNat (A340086 (n + 1)).toNat

end

end A138703.P8111361014445568641

/-!
# A138705: a(n) is the number of terms in the continued fraction of the absolute value of B_{2n}, the (2n)-th Bernoulli number.

The programs for A138705, there is no canonical definition to state claims against.
-/

/-! ## A138705.P14852455469891545631

`A138702(2*n)`
-/

namespace A138705.P14852455469891545631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138702 (2 * n)

end

end A138705.P14852455469891545631

/-! ## A138705.P6282462240593025013

`A138702(A005843(n))%(n+2)`
-/

namespace A138705.P6282462240593025013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138702 (A005843 n).toNat) (n + 2 : ℤ)

end

end A138705.P6282462240593025013

/-! ## A138705.P16883216791206638043

`A138702(n+n)%A057326(n+1)`
-/

namespace A138705.P16883216791206638043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138702 (n + n)) (A057326 (n + 1))

end

end A138705.P16883216791206638043

/-! ## A138705.P12776944552420547117

`A028310(A138702(Δ[A002061(n)]))`
-/

namespace A138705.P12776944552420547117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A138702 (f1 (n + 1) - f1 n).toNat).toNat

end

end A138705.P12776944552420547117

/-! ## A138705.P9746078936471583502

`A000027(A138702(record[A014681(n)]))`
-/

namespace A138705.P9746078936471583502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A138702 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A138705.P9746078936471583502

/-!
# A138706: a(n) is the sum of the terms in the continued fraction expansion of the absolute value of B_{2n}, the (2n)-th Bernoulli number.

The programs for A138706, there is no canonical definition to state claims against.
-/

/-! ## A138706.P7637985216945215819

`A138703(2*n)`
-/

namespace A138706.P7637985216945215819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138703 (2 * n)

end

end A138706.P7637985216945215819

/-! ## A138706.P6894776951079523424

`A138703(A004277(n))-A000007(n)`
-/

namespace A138706.P6894776951079523424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138703 (A004277 n).toNat - A000007 n

end

end A138706.P6894776951079523424

/-! ## A138706.P9640575103955017785

`A138703(A004277(n))^(A002380(n)%2)`
-/

namespace A138706.P9640575103955017785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138703 (A004277 n).toNat : ℚ) ^ (Int.tmod (A002380 n) 2 : ℤ)

end

end A138706.P9640575103955017785

/-! ## A138706.P14272837837217313729

`A138703(A004277(n))-A056594(A004273(n))`
-/

namespace A138706.P14272837837217313729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138703 (A004277 n).toNat - A056594 (A004273 n).toNat

end

end A138706.P14272837837217313729

/-! ## A138706.P1278943882822111738

`A138703(A005843(n))/A000034(A006331(n))`
-/

namespace A138706.P1278943882822111738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138703 (A005843 n).toNat : ℚ) / (A000034 (A006331 n).toNat : ℚ)

end

end A138706.P1278943882822111738

/-!
# A138707: Number of divisors of n that are also divisors of some d(k)*10^k, where n=Sum(d(k)*10^k).

The programs for A138707, the canonical program `A138707.P243569157619133773` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138707 has offset 1).

The definition of A138707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138707.P243569157619133773

`A046951(A214587(n+1)²)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A138707

/-- `A046951(A214587(n+1)²)` -/
def P243569157619133773.Spec : Prop :=
  ∀ n, P243569157619133773.a n = A138707 (n + 1)

theorem P243569157619133773.correct : P243569157619133773.Spec := by
  intro n
  simp only [A138707, Nat.add_sub_cancel]

end A138707

/-! ## A138707.P16141526155154679321

`A000005(gcd(A044911(n+1), A216455(n+1)))`
-/

namespace A138707.P16141526155154679321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A044911 (n + 1)) (A216455 (n + 1)))

end

end A138707.P16141526155154679321

namespace A138707

/-- `A000005(gcd(A044911(n+1), A216455(n+1)))` -/
def P16141526155154679321.Spec : Prop :=
  ∀ n, P16141526155154679321.a n = A138707 (n + 1)

end A138707

/-! ## A138707.P8540551515995294359

`A000005(gcd(n+1, A111706(n+1)))`
-/

namespace A138707.P8540551515995294359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (n + 1 : ℤ) (A111706 (n + 1)))

end

end A138707.P8540551515995294359

namespace A138707

/-- `A000005(gcd(n+1, A111706(n+1)))` -/
def P8540551515995294359.Spec : Prop :=
  ∀ n, P8540551515995294359.a n = A138707 (n + 1)

end A138707

/-! ## A138707.P7111779119977622059

`A159631(A214587(n+1)²)`
-/

namespace A138707.P7111779119977622059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (A214587 (n + 1) ^ 2).toNat

end

end A138707.P7111779119977622059

namespace A138707

/-- `A159631(A214587(n+1)²)` -/
def P7111779119977622059.Spec : Prop :=
  ∀ n, P7111779119977622059.a n = A138707 (n + 1)

end A138707

/-! ## A138707.P8106927187437211156

`A000005(A365762(n+1)%A365749(n+2))`
-/

namespace A138707.P8106927187437211156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (A365762 (n + 1)) (A365749 (n + 2))).toNat

end

end A138707.P8106927187437211156

namespace A138707

/-- `A000005(A365762(n+1)%A365749(n+2))` -/
def P8106927187437211156.Spec : Prop :=
  ∀ n, P8106927187437211156.a n = A138707 (n + 1)

end A138707

/-!
# A138708: Numbers m such that A138707(m) = 1.

The programs for A138708, the canonical program `A138708.P12330278295550734717` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138708 has offset 1).

The definition of A138708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138708.P18409020198013216496

`eq[1, A138707(n+1)]+1`
-/

namespace A138708.P18409020198013216496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A138708.P18409020198013216496

namespace A138708

/-- `eq[1, A138707(n+1)]+1` -/
def P18409020198013216496.Spec : Prop :=
  ∀ n, (P18409020198013216496.a n : ℤ) = A138708 (n + 1)

end A138708

/-! ## A138708.P12330278295550734717

`eq[1, gcd(n, 2*A051801(n))]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A138708

/-- `eq[1, gcd(n, 2*A051801(n))]` -/
def P12330278295550734717.Spec : Prop :=
  ∀ n, (P12330278295550734717.a n : ℤ) = A138708 (n + 1)

theorem P12330278295550734717.correct : P12330278295550734717.Spec := by
  intro n
  simp only [A138708, Nat.add_sub_cancel]

end A138708

/-! ## A138708.P3900363914390609225

`A004442(eq[1, A138707(n+1)])`
-/

namespace A138708.P3900363914390609225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138708.P3900363914390609225

namespace A138708

/-- `A004442(eq[1, A138707(n+1)])` -/
def P3900363914390609225.Spec : Prop :=
  ∀ n, P3900363914390609225.a n = A138708 (n + 1)

end A138708

/-! ## A138708.P6442593174234711974

`A109613(eq[1, A138707(n+1)])`
-/

namespace A138708.P6442593174234711974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138708.P6442593174234711974

namespace A138708

/-- `A109613(eq[1, A138707(n+1)])` -/
def P6442593174234711974.Spec : Prop :=
  ∀ n, P6442593174234711974.a n = A138708 (n + 1)

end A138708

/-! ## A138708.P15448698823410961769

`A141310(eq[1, A138707(n+1)])`
-/

namespace A138708.P15448698823410961769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A138708.P15448698823410961769

namespace A138708

/-- `A141310(eq[1, A138707(n+1)])` -/
def P15448698823410961769.Spec : Prop :=
  ∀ n, P15448698823410961769.a n = A138708 (n + 1)

end A138708

/-! ## A138708.P86524693703292668

`A109613(lt[A138707(n+1), 2])`
-/

namespace A138708.P86524693703292668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138707 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A138708.P86524693703292668

namespace A138708

/-- `A109613(lt[A138707(n+1), 2])` -/
def P86524693703292668.Spec : Prop :=
  ∀ n, P86524693703292668.a n = A138708 (n + 1)

end A138708

/-! ## A138708.P8675478266228225722

`eq[gcd(n, A051801(n)), A000035(n)]`
-/

namespace A138708.P8675478266228225722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A051801 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138708.P8675478266228225722

namespace A138708

/-- `eq[gcd(n, A051801(n)), A000035(n)]` -/
def P8675478266228225722.Spec : Prop :=
  ∀ n, (P8675478266228225722.a n : ℤ) = A138708 (n + 1)

end A138708

/-! ## A138708.P8114243082771559263

`record[(n+1)/A001848(A138707(n+1)-1)]`
-/

namespace A138708.P8114243082771559263
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001848 (A138707 (n + 1) - 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138708.P8114243082771559263

namespace A138708

/-- `record[(n+1)/A001848(A138707(n+1)-1)]` -/
def P8114243082771559263.Spec : Prop :=
  ∀ n, P8114243082771559263.a n = (A138708 (n + 1) : ℚ)

end A138708

/-! ## A138708.P6133621692797264857

`eq[n, A109613(n)*A138707(A109613(n))]`
-/

namespace A138708.P6133621692797264857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n * A138707 (A109613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138708.P6133621692797264857

namespace A138708

/-- `eq[n, A109613(n)*A138707(A109613(n))]` -/
def P6133621692797264857.Spec : Prop :=
  ∀ n, (P6133621692797264857.a n : ℤ) = A138708 (n + 1)

end A138708

/-!
# A138709: n-th run has length n-th positive Fibonacci numbers, with digits 0 and 1 only, starting with 1.

The programs for A138709, the canonical program `A138709.P8547315459181565559` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138709 has offset 1).

The definition of A138709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138709.P10052366427531764191

`1-a(floor(n/ϕ))` with `a(0)=1`
-/

namespace A138709.P10052366427531764191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

end

end A138709.P10052366427531764191

namespace A138709

/-- `1-a(floor(n/ϕ))` -/
def P10052366427531764191.Spec : Prop :=
  ∀ n, P10052366427531764191.a n = A138709 (n + 1)

end A138709

/-! ## A138709.P9692670066999401002

`xor(1, a(floor(n/ϕ)))` with `a(0)=1`
-/

namespace A138709.P9692670066999401002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (a ⌊(n : ℝ) / Real.goldenRatio⌋.toNat)

end

end A138709.P9692670066999401002

namespace A138709

/-- `xor(1, a(floor(n/ϕ)))` -/
def P9692670066999401002.Spec : Prop :=
  ∀ n, (P9692670066999401002.a n : ℤ) = A138709 (n + 1)

end A138709

/-! ## A138709.P16191429687906517858

`a(a(floor(n/ϕ)))` with `a(0)=1, a(1)=0`
-/

namespace A138709.P16191429687906517858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (a ⌊(n : ℝ) / Real.goldenRatio⌋.toNat)

end

end A138709.P16191429687906517858

namespace A138709

/-- `a(a(floor(n/ϕ)))` -/
def P16191429687906517858.Spec : Prop :=
  ∀ n, (P16191429687906517858.a n : ℤ) = A138709 (n + 1)

end A138709

/-! ## A138709.P6460786316662636507

`a(floor((2-ϕ)*(n-1)))` with `a(0)=1, a(1)=0`
-/

namespace A138709.P6460786316662636507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a ⌊(2 - Real.goldenRatio) * ((n : ℤ) - 1 : ℝ)⌋.toNat

end

end A138709.P6460786316662636507

namespace A138709

/-- `a(floor((2-ϕ)*(n-1)))` -/
def P6460786316662636507.Spec : Prop :=
  ∀ n, (P6460786316662636507.a n : ℤ) = A138709 (n + 1)

end A138709

/-! ## A138709.P14793365648571789401

`A057337(n+1)%2`
-/

namespace A138709.P14793365648571789401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057337 (n + 1)) 2

end

end A138709.P14793365648571789401

namespace A138709

/-- `A057337(n+1)%2` -/
def P14793365648571789401.Spec : Prop :=
  ∀ n, P14793365648571789401.a n = A138709 (n + 1)

end A138709

/-! ## A138709.P3902329109714563465

`A060139(n+1)%2`
-/

namespace A138709.P3902329109714563465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060139 (n + 1)) 2

end

end A138709.P3902329109714563465

namespace A138709

/-- `A060139(n+1)%2` -/
def P3902329109714563465.Spec : Prop :=
  ∀ n, P3902329109714563465.a n = A138709 (n + 1)

end A138709

/-! ## A138709.P8547315459181565559

`A072649(n+1)%2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A138709

/-- `A072649(n+1)%2` -/
def P8547315459181565559.Spec : Prop :=
  ∀ n, P8547315459181565559.a n = A138709 (n + 1)

theorem P8547315459181565559.correct : P8547315459181565559.Spec := by
  intro n
  simp only [A138709, Nat.add_sub_cancel]

end A138709

/-! ## A138709.P10221376959507567147

`A108852(n+1)%2`
-/

namespace A138709.P10221376959507567147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108852 (n + 1)) 2

end

end A138709.P10221376959507567147

namespace A138709

/-- `A108852(n+1)%2` -/
def P10221376959507567147.Spec : Prop :=
  ∀ n, P10221376959507567147.a n = A138709 (n + 1)

end A138709

/-! ## A138709.P18223010197625340965

`A138606(n+1)%2`
-/

namespace A138709.P18223010197625340965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138606 (n + 1)) 2

end

end A138709.P18223010197625340965

namespace A138709

/-- `A138606(n+1)%2` -/
def P18223010197625340965.Spec : Prop :=
  ∀ n, P18223010197625340965.a n = A138709 (n + 1)

end A138709

/-! ## A138709.P2276768752623540189

`A160530(n+1)%2`
-/

namespace A138709.P2276768752623540189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160530 (n + 1)) 2

end

end A138709.P2276768752623540189

namespace A138709

/-- `A160530(n+1)%2` -/
def P2276768752623540189.Spec : Prop :=
  ∀ n, P2276768752623540189.a n = A138709 (n + 1)

end A138709

/-! ## A138709.P1646576308837450832

`A060142(n+1)%3`
-/

namespace A138709.P1646576308837450832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060142 (n + 1)) 3

end

end A138709.P1646576308837450832

namespace A138709

/-- `A060142(n+1)%3` -/
def P1646576308837450832.Spec : Prop :=
  ∀ n, P1646576308837450832.a n = A138709 (n + 1)

end A138709

/-! ## A138709.P2922529572631253898

`A130234(n+2)%2`
-/

namespace A138709.P2922529572631253898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130234 (n + 2)) 2

end

end A138709.P2922529572631253898

namespace A138709

/-- `A130234(n+2)%2` -/
def P2922529572631253898.Spec : Prop :=
  ∀ n, P2922529572631253898.a n = A138709 (n + 1)

end A138709

/-! ## A138709.P9389421216662462913

`A200649(n+2)%2`
-/

namespace A138709.P9389421216662462913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200649 (n + 2)) 2

end

end A138709.P9389421216662462913

namespace A138709

/-- `A200649(n+2)%2` -/
def P9389421216662462913.Spec : Prop :=
  ∀ n, P9389421216662462913.a n = A138709 (n + 1)

end A138709

/-! ## A138709.P16504274600785512575

`(a(n-1)-A192687(n))²` with `a(0)=1`
-/

namespace A138709.P16504274600785512575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - A192687 n) ^ 2

end

end A138709.P16504274600785512575

namespace A138709

/-- `(a(n-1)-A192687(n))²` -/
def P16504274600785512575.Spec : Prop :=
  ∀ n, P16504274600785512575.a n = A138709 (n + 1)

end A138709

/-! ## A138709.P14389335669128826107

`(A010056(n+1)-a(n-1))²` with `a(0)=1`
-/

namespace A138709.P14389335669128826107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A010056 (n + 1) - a (n - 1)) ^ 2

end

end A138709.P14389335669128826107

namespace A138709

/-- `(A010056(n+1)-a(n-1))²` -/
def P14389335669128826107.Spec : Prop :=
  ∀ n, P14389335669128826107.a n = A138709 (n + 1)

end A138709

/-! ## A138709.P11526596029625339976

`(A104162(n+1)-a(n-1))²` with `a(0)=1`
-/

namespace A138709.P11526596029625339976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A104162 (n + 1) - a (n - 1)) ^ 2

end

end A138709.P11526596029625339976

namespace A138709

/-- `(A104162(n+1)-a(n-1))²` -/
def P11526596029625339976.Spec : Prop :=
  ∀ n, P11526596029625339976.a n = A138709 (n + 1)

end A138709

/-! ## A138709.P2113991967436039304

`A014677(A246104(n))`
-/

namespace A138709.P2113991967436039304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014677 (A246104 n).toNat

end

end A138709.P2113991967436039304

namespace A138709

/-- `A014677(A246104(n))` -/
def P2113991967436039304.Spec : Prop :=
  ∀ n, P2113991967436039304.a n = A138709 (n + 1)

end A138709

/-! ## A138709.P3726659947862133537

`A275973(A052499(n))`
-/

namespace A138709.P3726659947862133537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275973 (A052499 n).toNat

end

end A138709.P3726659947862133537

namespace A138709

/-- `A275973(A052499(n))` -/
def P3726659947862133537.Spec : Prop :=
  ∀ n, P3726659947862133537.a n = A138709 (n + 1)

end A138709

/-! ## A138709.P17879986516436390664

`A030300(A003714(n+1))`
-/

namespace A138709.P17879986516436390664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030300 (A003714 (n + 1)).toNat

end

end A138709.P17879986516436390664

namespace A138709

/-- `A030300(A003714(n+1))` -/
def P17879986516436390664.Spec : Prop :=
  ∀ n, P17879986516436390664.a n = A138709 (n + 1)

end A138709

/-! ## A138709.P5907663378818150241

`A030301(A022340(n+1))`
-/

namespace A138709.P5907663378818150241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030301 (A022340 (n + 1)).toNat

end

end A138709.P5907663378818150241

namespace A138709

/-- `A030301(A022340(n+1))` -/
def P5907663378818150241.Spec : Prop :=
  ∀ n, P5907663378818150241.a n = A138709 (n + 1)

end A138709

/-!
# A138710: n-th run has length n-th positive Fibonacci numbers, with digits 0 and 1 only, starting with 0.

The programs for A138710, there is no canonical definition to state claims against.
-/

/-! ## A138710.P6706496351520025970

`1-a(floor(n/ϕ))` with `a(0)=0`
-/

namespace A138710.P6706496351520025970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

end

end A138710.P6706496351520025970

/-! ## A138710.P3438242296813448810

`floor(log((n+1)²))%2`
-/

namespace A138710.P3438242296813448810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.log ((n + 1) ^ 2 : ℝ)⌋ 2

end

end A138710.P3438242296813448810

/-! ## A138710.P4020524129246285410

`and(1, floor(log((n+1)²)))`
-/

namespace A138710.P4020524129246285410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊Real.log ((n + 1) ^ 2 : ℝ)⌋

end

end A138710.P4020524129246285410

/-! ## A138710.P7415694725499813662

`xor(1, a(floor(n/ϕ)))` with `a(0)=0`
-/

namespace A138710.P7415694725499813662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (a ⌊(n : ℝ) / Real.goldenRatio⌋.toNat)

end

end A138710.P7415694725499813662

/-! ## A138710.P17752126675447371472

`floor(cos(a(floor(n/ϕ))))` with `a(0)=0`
-/

namespace A138710.P17752126675447371472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊Real.cos (a ⌊(n : ℝ) / Real.goldenRatio⌋.toNat : ℝ)⌋

end

end A138710.P17752126675447371472

/-! ## A138710.P651040284985492722

`floor(acot(a(floor(n/ϕ))))` with `a(0)=0`
-/

namespace A138710.P651040284985492722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊SequenceMachineLib.acot (a ⌊(n : ℝ) / Real.goldenRatio⌋.toNat : ℝ)⌋

end

end A138710.P651040284985492722

/-! ## A138710.P35157655506934376

`log2(gcd(2, a(floor(n/ϕ))))` with `a(0)=0`
-/

namespace A138710.P35157655506934376
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  Real.logb 2 (Int.gcd 2 (SequenceMachineLib.roundAway (a ⌊(n : ℝ) / Real.goldenRatio⌋.toNat)) : ℝ)

end

end A138710.P35157655506934376

/-! ## A138710.P3816955269003748199

`a(floor((2-ϕ)*(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A138710.P3816955269003748199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ⌊(2 - Real.goldenRatio) * ((n : ℤ) - 1 : ℝ)⌋.toNat

end

end A138710.P3816955269003748199

/-! ## A138710.P13039032897801965991

`1-A138709(n+1)`
-/

namespace A138710.P13039032897801965991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A138709 (n + 1)

end

end A138710.P13039032897801965991

/-! ## A138710.P11998248276518118938

`val(A060139(n+1), 2)`
-/

namespace A138710.P11998248276518118938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A060139 (n + 1)).toNat 2

end

end A138710.P11998248276518118938

/-!
# A138711: n-th run has length n-th positive triangular number, with digits 0 and 1 only, starting with 1.

The programs for A138711, there is no canonical definition to state claims against.
-/

/-! ## A138711.P2948607571580522674

`∑[char[C(n, 3)]]%2`
-/

namespace A138711.P2948607571580522674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A138711.P2948607571580522674

/-! ## A138711.P17509901328503605941

`and(1, ∑[char[C(n, 3)]])`
-/

namespace A138711.P17509901328503605941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138711.P17509901328503605941

/-! ## A138711.P1739866725734397082

`∑[char[∑[∑[n]]]]%2`
-/

namespace A138711.P1739866725734397082
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A138711.P1739866725734397082

/-! ## A138711.P14742324965732145931

`and(1, ∑[char[∑[∑[n]]]])`
-/

namespace A138711.P14742324965732145931
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138711.P14742324965732145931

/-! ## A138711.P1244814529170236287

`2-gcd(2, ∑[char[C(n, 3)]])`
-/

namespace A138711.P1244814529170236287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A138711.P1244814529170236287

/-! ## A138711.P10928697110704669817

`xor(a(n-1), char[C(n, 3)])` with `a(0)=1`
-/

namespace A138711.P10928697110704669817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (a (n - 1)) (if ∃ j, f1 j = n then 1 else 0)

end

end A138711.P10928697110704669817

/-! ## A138711.P187206988606117728

`(char[C(n, 3)]-a(n-1))²` with `a(0)=1`
-/

namespace A138711.P187206988606117728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1)) ^ 2

end

end A138711.P187206988606117728

/-! ## A138711.P11673613876826615873

`(a(n-1)-char[∑[∑[n]]])²` with `a(0)=1`
-/

namespace A138711.P11673613876826615873
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ 2

end

end A138711.P11673613876826615873

/-! ## A138711.P4505584957568516625

`log2(gcd(2, A056556(n)))`
-/

namespace A138711.P4505584957568516625
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A056556 n) : ℝ)

end

end A138711.P4505584957568516625

/-! ## A138711.P11019971751053637419

`1-A138712(n+1)`
-/

namespace A138711.P11019971751053637419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A138712 (n + 1)

end

end A138711.P11019971751053637419

/-!
# A138712: n-th run has length n-th positive triangular number, with digits 0 and 1 only, starting with 0.

The programs for A138712, there is no canonical definition to state claims against.
-/

/-! ## A138712.P7590740590192369158

`(∑[char[C(n, 3)]]+1)%2`
-/

namespace A138712.P7590740590192369158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) % 2

end

end A138712.P7590740590192369158

/-! ## A138712.P12050958185173389809

`1-∑[char[C(n, 3)]]%2`
-/

namespace A138712.P12050958185173389809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)

end

end A138712.P12050958185173389809

/-! ## A138712.P12228247310736804720

`gcd(2, ∑[char[C(n, 3)]])-1`
-/

namespace A138712.P12228247310736804720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1

end

end A138712.P12228247310736804720

/-! ## A138712.P4360766510929650853

`and(1, ∑[char[C(n, 3)]]+1)`
-/

namespace A138712.P4360766510929650853
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A138712.P4360766510929650853

/-! ## A138712.P7722892917661780187

`and(1, 1-∑[char[C(n, 3)]])`
-/

namespace A138712.P7722892917661780187
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A138712.P7722892917661780187

/-! ## A138712.P18275652555779240525

`val(2*∑[char[C(n, 3)]], 4)`
-/

namespace A138712.P18275652555779240525
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * (∑ j ∈ Finset.range (n + 1), f1 j)) 4

end

end A138712.P18275652555779240525

/-! ## A138712.P14259561669377835519

`xor(3, ∑[char[C(n, 3)]])%2`
-/

namespace A138712.P14259561669377835519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A138712.P14259561669377835519

/-! ## A138712.P17666415682318415485

`∑[char[∑[∑[n+1]]]]%2`
-/

namespace A138712.P17666415682318415485
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A138712.P17666415682318415485

/-! ## A138712.P10766916915316268379

`and(1, ∑[char[∑[∑[n+1]]]])`
-/

namespace A138712.P10766916915316268379
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138712.P10766916915316268379

/-! ## A138712.P9134643991329771546

`(a(n-1)-char[∑[∑[n]]])²` with `a(0)=0`
-/

namespace A138712.P9134643991329771546
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ 2

end

end A138712.P9134643991329771546

/-!
# A138714: Add 1, modulo 10, to the decimal expansion of e, A001113.

The programs for A138714, the canonical program `A138714.P17864452907051204205` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138714 has offset 1).

The definition of A138714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A138714.P6450082168919863038

`(A001113(n)+1)%10`
-/

namespace A138714.P6450082168919863038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001113 (n + 1) + 1) 10

end

end A138714.P6450082168919863038

namespace A138714

/-- `(A001113(n)+1)%10` -/
def P6450082168919863038.Spec : Prop :=
  ∀ n, P6450082168919863038.a n = A138714 (n + 1)

end A138714

/-! ## A138714.P15795517726349628250

`(9*A121239(n))%10`
-/

namespace A138714.P15795517726349628250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (9 * A121239 (n + 1)) 10

end

end A138714.P15795517726349628250

namespace A138714

/-- `(9*A121239(n))%10` -/
def P15795517726349628250.Spec : Prop :=
  ∀ n, P15795517726349628250.a n = A138714 (n + 1)

end A138714

/-! ## A138714.P17864452907051204205

`(A098363(∑[n+3])+1)%10`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138714

/-- `(A098363(∑[n+3])+1)%10` -/
def P17864452907051204205.Spec : Prop :=
  ∀ n, P17864452907051204205.a n = A138714 (n + 1)

theorem P17864452907051204205.correct : P17864452907051204205.Spec := by
  intro n
  simp only [A138714, Nat.add_sub_cancel]

end A138714

/-! ## A138714.P3120818355006428712

`(A001355(2*(n+1))+1)%10`
-/

namespace A138714.P3120818355006428712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001355 (2 * (n + 1)) + 1) 10

end

end A138714.P3120818355006428712

namespace A138714

/-- `(A001355(2*(n+1))+1)%10` -/
def P3120818355006428712.Spec : Prop :=
  ∀ n, P3120818355006428712.a n = A138714 (n + 1)

end A138714

/-! ## A138714.P15043716846375118988

`(floor(A091131(n)+acot(n))+1)%10`
-/

namespace A138714.P15043716846375118988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(A091131 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋ + 1) 10

end

end A138714.P15043716846375118988

namespace A138714

/-- `(floor(A091131(n)+acot(n))+1)%10` -/
def P15043716846375118988.Spec : Prop :=
  ∀ n, P15043716846375118988.a n = A138714 (n + 1)

end A138714

/-! ## A138714.P355923097062329962

`(A001355(n+2+n)%17+1)%10`
-/

namespace A138714.P355923097062329962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A001355 (n + 2 + n)) 17 + 1) 10

end

end A138714.P355923097062329962

namespace A138714

/-- `(A001355(n+2+n)%17+1)%10` -/
def P355923097062329962.Spec : Prop :=
  ∀ n, P355923097062329962.a n = A138714 (n + 1)

end A138714

/-! ## A138714.P16398934624297973953

`(A091131(n)+A054977(n))%10`
-/

namespace A138714.P16398934624297973953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091131 (n + 1) + A054977 n) 10

end

end A138714.P16398934624297973953

namespace A138714

/-- `(A091131(n)+A054977(n))%10` -/
def P16398934624297973953.Spec : Prop :=
  ∀ n, P16398934624297973953.a n = A138714 (n + 1)

end A138714

/-! ## A138714.P4608756905665967492

`A010879(A098363(∑[n+3])+1)`
-/

namespace A138714.P4608756905665967492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A098363 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A138714.P4608756905665967492

namespace A138714

/-- `A010879(A098363(∑[n+3])+1)` -/
def P4608756905665967492.Spec : Prop :=
  ∀ n, P4608756905665967492.a n = A138714 (n + 1)

end A138714

/-! ## A138714.P4614560999142630482

`(A073212(n)-A000796(n)+1)%10`
-/

namespace A138714.P4614560999142630482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073212 n - A000796 (n + 1) + 1) 10

end

end A138714.P4614560999142630482

namespace A138714

/-- `(A073212(n)-A000796(n)+1)%10` -/
def P4614560999142630482.Spec : Prop :=
  ∀ n, P4614560999142630482.a n = A138714 (n + 1)

end A138714

/-! ## A138714.P14495048786980787522

`(A123152(n+1)-A187747(n))%10`
-/

namespace A138714.P14495048786980787522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123152 (n + 1) - A187747 n) 10

end

end A138714.P14495048786980787522

namespace A138714

/-- `(A123152(n+1)-A187747(n))%10` -/
def P14495048786980787522.Spec : Prop :=
  ∀ n, P14495048786980787522.a n = A138714 (n + 1)

end A138714

/-! ## A138714.P12945036498802197713

`A010879(A001113(n)+gcd(n, n+1))`
-/

namespace A138714.P12945036498802197713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A001113 (n + 1) + (Nat.gcd n (n + 1) : ℤ)).toNat

end

end A138714.P12945036498802197713

namespace A138714

/-- `A010879(A001113(n)+gcd(n, n+1))` -/
def P12945036498802197713.Spec : Prop :=
  ∀ n, P12945036498802197713.a n = A138714 (n + 1)

end A138714

/-! ## A138714.P11370487116252301567

`A049267(A073212(n)+A030644(n))`
-/

namespace A138714.P11370487116252301567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049267 (A073212 n + A030644 (n + 1)).toNat

end

end A138714.P11370487116252301567

namespace A138714

/-- `A049267(A073212(n)+A030644(n))` -/
def P11370487116252301567.Spec : Prop :=
  ∀ n, P11370487116252301567.a n = A138714 (n + 1)

end A138714

/-! ## A138714.P17177170752542317980

`A048379(A073212(n)-A000796(n))`
-/

namespace A138714.P17177170752542317980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A073212 n - A000796 (n + 1)).toNat

end

end A138714.P17177170752542317980

namespace A138714

/-- `A048379(A073212(n)-A000796(n))` -/
def P17177170752542317980.Spec : Prop :=
  ∀ n, P17177170752542317980.a n = A138714 (n + 1)

end A138714

/-! ## A138714.P29508291181000006

`A048379(A000796(n)-A187747(n))`
-/

namespace A138714.P29508291181000006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A000796 (n + 1) - A187747 n).toNat

end

end A138714.P29508291181000006

namespace A138714

/-- `A048379(A000796(n)-A187747(n))` -/
def P29508291181000006.Spec : Prop :=
  ∀ n, P29508291181000006.a n = A138714 (n + 1)

end A138714

/-! ## A138714.P2412165872789795303

`A048379(A073212(n)-Δ[A059582(n)])`
-/

namespace A138714.P2412165872789795303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A073212 n - (f1 (n + 1) - f1 n)).toNat

end

end A138714.P2412165872789795303

namespace A138714

/-- `A048379(A073212(n)-Δ[A059582(n)])` -/
def P2412165872789795303.Spec : Prop :=
  ∀ n, P2412165872789795303.a n = A138714 (n + 1)

end A138714

/-! ## A138714.P10475494695844012402

`A004426(A073212(n)+1-A000796(n))`
-/

namespace A138714.P10475494695844012402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (A073212 n + (1 - A000796 (n + 1))).toNat

end

end A138714.P10475494695844012402

namespace A138714

/-- `A004426(A073212(n)+1-A000796(n))` -/
def P10475494695844012402.Spec : Prop :=
  ∀ n, P10475494695844012402.a n = A138714 (n + 1)

end A138714

/-! ## A138714.P1136069120789317162

`A004426(1-(A000796(n)-A073212(n)))`
-/

namespace A138714.P1136069120789317162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (1 - (A000796 (n + 1) - A073212 n)).toNat

end

end A138714.P1136069120789317162

namespace A138714

/-- `A004426(1-(A000796(n)-A073212(n)))` -/
def P1136069120789317162.Spec : Prop :=
  ∀ n, P1136069120789317162.a n = A138714 (n + 1)

end A138714

/-! ## A138714.P12995807431466371670

`A010879(A056753(2*n)+A001113(n))`
-/

namespace A138714.P12995807431466371670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A056753 (2 * n) + A001113 (n + 1)).toNat

end

end A138714.P12995807431466371670

namespace A138714

/-- `A010879(A056753(2*n)+A001113(n))` -/
def P12995807431466371670.Spec : Prop :=
  ∀ n, P12995807431466371670.a n = A138714 (n + 1)

end A138714

/-!
# A138715: Primes p1 such that p1^2+p2^3=pp are average of twin primes. p1 and p2 consecutive primes, p1 < p2.

The programs for A138715, there is no canonical definition to state claims against.
-/

/-! ## A138715.P7864048506598334003

`A268674(or(1, A138716(n+1)))`
-/

namespace A138715.P7864048506598334003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (Int.lor 1 (A138716 (n + 1))).toNat

end

end A138715.P7864048506598334003

/-! ## A138715.P4225766503974025823

`A268674(A138716(n+1))%A138716(3*n+1)`
-/

namespace A138715.P4225766503974025823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268674 (A138716 (n + 1)).toNat) (A138716 (3 * n + 1))

end

end A138715.P4225766503974025823

/-! ## A138715.P14972479183224235573

`∑{d}[A138716(n+1), A349127(#)]`
-/

namespace A138715.P14972479183224235573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A349127 d

end

end A138715.P14972479183224235573

/-!
# A138716: Primes p2 such that p1^2 + p2^3 is an average of twin primes and p1 < p2 are consecutive primes.

The programs for A138716, there is no canonical definition to state claims against.
-/

/-! ## A138716.P12855280254626213353

`A151800(A138715(n+1))`
-/

namespace A138716.P12855280254626213353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A138715 (n + 1)).toNat

end

end A138716.P12855280254626213353

/-! ## A138716.P13629515928051404234

`A000045(C(n, n+1))-A346234(A138715(n+1))`
-/

namespace A138716.P13629515928051404234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose n (n + 1)) - A346234 (A138715 (n + 1)).toNat

end

end A138716.P13629515928051404234

/-! ## A138716.P13040501790955895124

`floor(root(A138717(n+1), 3))`
-/

namespace A138716.P13040501790955895124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A138717 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A138716.P13040501790955895124

/-!
# A138719: Concatenation of k digits 1, k digits 0 and k digits 1, where k is the n-th positive Fibonacci number.

The programs for A138719, there is no canonical definition to state claims against.
-/

/-! ## A138719.P17535190666897694169

`A138721(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A138719.P17535190666897694169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138721 (f1 (n + 1) - f1 n).toNat

end

end A138719.P17535190666897694169

/-! ## A138719.P15567077062855459768

`A138721(A000045(n+1))`
-/

namespace A138719.P15567077062855459768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138721 (A000045 (n + 1)).toNat

end

end A138719.P15567077062855459768

/-!
# A138720: 

The programs for A138720, there is no canonical definition to state claims against.
-/

/-! ## A138720.P3001841011365552321

`A138721(∑[n+1])`
-/

namespace A138720.P3001841011365552321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138721 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A138720.P3001841011365552321

/-!
# A138721: Concatenation of n digits 1, n digits 0 and n digits 1.

The programs for A138721, the canonical program `A138721.P7621500289573648772` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138721 has offset 1).

The definition of A138721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138721.P7621500289573648772

`(100^(n+1)+1)*(10^(n+1)-1)/9`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138721

/-- `(100^(n+1)+1)*(10^(n+1)-1)/9` -/
def P7621500289573648772.Spec : Prop :=
  ∀ n, P7621500289573648772.a n = (A138721 (n + 1) : ℚ)

end A138721

/-! ## A138721.P15403040488386483597

`A000533(2*(n+1))*A002275(n+1)`
-/

namespace A138721.P15403040488386483597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000533 (2 * (n + 1)) * A002275 (n + 1)

end

end A138721.P15403040488386483597

namespace A138721

/-- `A000533(2*(n+1))*A002275(n+1)` -/
def P15403040488386483597.Spec : Prop :=
  ∀ n, P15403040488386483597.a n = A138721 (n + 1)

end A138721

/-! ## A138721.P8600417063095262138

`(A133384(2*n+1)-1)*A002275(n+1)`
-/

namespace A138721.P8600417063095262138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133384 (2 * n + 1) - 1) * A002275 (n + 1)

end

end A138721.P8600417063095262138

namespace A138721

/-- `(A133384(2*n+1)-1)*A002275(n+1)` -/
def P8600417063095262138.Spec : Prop :=
  ∀ n, P8600417063095262138.a n = A138721 (n + 1)

end A138721

/-! ## A138721.P1411606277731898029

`A002275(n+1)+A002275(n+1)*A098608(n+1)`
-/

namespace A138721.P1411606277731898029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) + A002275 (n + 1) * A098608 (n + 1)

end

end A138721.P1411606277731898029

namespace A138721

/-- `A002275(n+1)+A002275(n+1)*A098608(n+1)` -/
def P1411606277731898029.Spec : Prop :=
  ∀ n, P1411606277731898029.a n = A138721 (n + 1)

end A138721

/-! ## A138721.P14026174988480451418

`A002276(n+1)+A002275(n+1)*A098609(n+1)`
-/

namespace A138721.P14026174988480451418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 (n + 1) + A002275 (n + 1) * A098609 (n + 1)

end

end A138721.P14026174988480451418

namespace A138721

/-- `A002276(n+1)+A002275(n+1)*A098609(n+1)` -/
def P14026174988480451418.Spec : Prop :=
  ∀ n, P14026174988480451418.a n = A138721 (n + 1)

end A138721

/-!
# A138723: Atomic numbers of the periodic table of the elements, read downwards along 18 columns, up to the 5th period.

The programs for A138723, there is no canonical definition to state claims against.
-/

/-! ## A138723.P1742583669113499353

`A134984(lt[A134984(n), 48])`
-/

namespace A138723.P1742583669113499353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134984 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134984 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A138723.P1742583669113499353

/-! ## A138723.P11675309307957150231

`A138725(lcm(A074761(n+1), A199502(n+1)))`
-/

namespace A138723.P11675309307957150231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138725 (Int.lcm (A074761 (n + 1)) (A199502 (n + 1)))

end

end A138723.P11675309307957150231

/-! ## A138723.P4174663887636751169

`A138725(A199502(n+1))%A332659(2*n+3)`
-/

namespace A138723.P4174663887636751169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138725 (A199502 (n + 1)).toNat) (A332659 (2 * n + 3))

end

end A138723.P4174663887636751169

/-! ## A138723.P1139990683537794380

`A138725(C(A199502(n+1), A124010(2*n+3)))`
-/

namespace A138723.P1139990683537794380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138725 (Nat.choose (A199502 (n + 1)).toNat (A124010 (2 * n + 3)).toNat)

end

end A138723.P1139990683537794380

/-!
# A138725: Atomic numbers in the periodic table of the elements, read downwards along 50 columns, up to the 9th period.

The programs for A138725, there is no canonical definition to state claims against.
-/

/-! ## A138725.P15394876027355082512

`A240465(3^n)+∑[(or(1, n)+1)²/2]-1`
-/

namespace A138725.P15394876027355082512
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 n + 1) ^ 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240465 (3 ^ n) : ℚ) + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A138725.P15394876027355082512

/-! ## A138725.P7681695155582130894

`(∑[(or(1, n)+1)²/2]-1)%A000040(3^n)`
-/

namespace A138725.P7681695155582130894
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 n + 1) ^ 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j - 1)) (A000040 (3 ^ n))

end

end A138725.P7681695155582130894

/-! ## A138725.P3516456291426698853

`A138726(A381225(n))`
-/

namespace A138725.P3516456291426698853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138726 (A381225 n).toNat

end

end A138725.P3516456291426698853

/-! ## A138725.P15280397194410808890

`A138726(A001104(n+1))`
-/

namespace A138725.P15280397194410808890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138726 (A001104 (n + 1)).toNat

end

end A138725.P15280397194410808890

/-! ## A138725.P121009433096455109

`A138726(A002998(n+1))`
-/

namespace A138725.P121009433096455109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138726 (A002998 (n + 1)).toNat

end

end A138725.P121009433096455109

/-!
# A138726: Atomic numbers of the periodic table of the elements, read downwards along 72 columns, up to the 11th period.

The programs for A138726, there is no canonical definition to state claims against.
-/

/-! ## A138726.P13629960118256656443

`∑[A368522(∑[or(1, n)])]`
-/

namespace A138726.P13629960118256656443
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368522 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138726.P13629960118256656443

/-! ## A138726.P735466869728431879

`(∑[(or(1, n)+1)²/2]-1)%Δ[A099300(n+1)]`
-/

namespace A138726.P735466869728431879
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 n + 1) ^ 2 : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j - 1)) (f2 (n + 1) - f2 n)

end

end A138726.P735466869728431879

/-! ## A138726.P10695275773354526155

`2*∑[∑[and(1, n+1)]²]-A333381((n%2+n+2)²/2)`
-/

namespace A138726.P10695275773354526155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - A333381 (SequenceMachineLib.roundAway ((((n % 2 + (n + 2)) ^ 2 : ℕ) : ℚ) / 2)).toNat

end

end A138726.P10695275773354526155

/-! ## A138726.P7111003839034384403

`A085701(A219527(n+1))`
-/

namespace A138726.P7111003839034384403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085701 (A219527 (n + 1)).toNat

end

end A138726.P7111003839034384403

/-! ## A138726.P8437514856147024703

`A160914(Δ[A325149(n+1)])`
-/

namespace A138726.P8437514856147024703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160914 (f1 (n + 1) - f1 n).toNat

end

end A138726.P8437514856147024703

/-!
# A138729: a(n) = -A085466(n) times the free coefficient of the 2n-th Du Bois-Reymond polynomial in e^2.

The programs for A138729, there is no canonical definition to state claims against.
-/

/-! ## A138729.P3946970081098545464

`abs(A085467(∑[n+2]))`
-/

namespace A138729.P3946970081098545464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A085467 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A138729.P3946970081098545464

/-! ## A138729.P15890369333919577224

`-A085467(∑[A020725(n+1)])`
-/

namespace A138729.P15890369333919577224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A085467 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A138729.P15890369333919577224

/-!
# A138734: a(n) = n-th term of the (n+1)-th inverse binomial transform of A138737 for n>=0.

The programs for A138734, there is no canonical definition to state claims against.
-/

/-! ## A138734.P8120809417304045642

`and(-11, A327059(n))`
-/

namespace A138734.P8120809417304045642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-11) (A327059 n)

end

end A138734.P8120809417304045642

/-!
# A138735: Primes p1 such that p1^3+p2^2=pp are average of twin primes. p1 and p2 consecutive primes, p1 < p2.

The programs for A138735, there is no canonical definition to state claims against.
-/

/-! ## A138735.P18421628347394739241

`A008578(∑{d}[A138755(n+1), A000720(#)])`
-/

namespace A138735.P18421628347394739241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d).toNat

end

end A138735.P18421628347394739241

/-! ## A138735.P2529304502730721467

`A008578(∑{d}[A138755(n+1), A061395(#)])`
-/

namespace A138735.P2529304502730721467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d).toNat

end

end A138735.P2529304502730721467

/-! ## A138735.P9979461653488115854

`A008578(∑{p}[A138755(n+1), A000720(#)])`
-/

namespace A138735.P9979461653488115854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p).toNat

end

end A138735.P9979461653488115854

/-! ## A138735.P17439878299626257843

`A000040(∑{d}[A138755(n+1), A000720(#)]-1)`
-/

namespace A138735.P17439878299626257843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d - 1).toNat

end

end A138735.P17439878299626257843

/-! ## A138735.P373617764667429031

`A000040(∑{p}[A138755(n+1), A000720(#)]-1)`
-/

namespace A138735.P373617764667429031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p - 1).toNat

end

end A138735.P373617764667429031

/-!
# A138736: Inverse binomial transform of A138737.

The programs for A138736, there is no canonical definition to state claims against.
-/

/-! ## A138736.P1564544881250370681

`lcm(round(1/acot(n²)), A321739(2*n))`
-/

namespace A138736.P1564544881250370681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n ^ 2 : ℝ))) (A321739 (2 * n))

end

end A138736.P1564544881250370681

/-! ## A138736.P8372906768958980724

`A022553(n)*A321739(2*n)`
-/

namespace A138736.P8372906768958980724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022553 n * A321739 (2 * n)

end

end A138736.P8372906768958980724

/-!
# A138737: The n-th term of the n-th inverse binomial transform of this sequence equals (n+1)^(n-1) for n>=0.

The programs for A138737, there is no canonical definition to state claims against.
-/

/-! ## A138737.P2037893864933379707

`A050296(A008544(n))+A000120(n)`
-/

namespace A138737.P2037893864933379707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A008544 n).toNat + A000120 n

end

end A138737.P2037893864933379707

/-!
# A138738: E.g.f. satisfies: A(x) = exp(x*exp(x^2*exp(x^3*exp(...exp(x^n*...))))).

The programs for A138738, there is no canonical definition to state claims against.
-/

/-! ## A138738.P16983922424332826721

`A032742(A245138(n)+A126760(n))`
-/

namespace A138738.P16983922424332826721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A245138 n + A126760 n).toNat

end

end A138738.P16983922424332826721

/-! ## A138738.P1517509154680002352

`A032742(A245138(n)+A191306(n))`
-/

namespace A138738.P1517509154680002352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A245138 n + A191306 n).toNat

end

end A138738.P1517509154680002352

/-! ## A138738.P7158343116234210052

`A032742(A275806(n)+A245138(n))`
-/

namespace A138738.P7158343116234210052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A275806 n + A245138 n).toNat

end

end A138738.P7158343116234210052

/-!
# A138739: G.f. A(x) satisfies: A(A(x)) = 3*A(x) - 2*x - x^2 with A(0)=0.

The programs for A138739, there is no canonical definition to state claims against.
-/

/-! ## A138739.P8026895957895449365

`A291198(n+1)/A123344(n)`
-/

namespace A138739.P8026895957895449365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291198 (n + 1) : ℚ) / (A123344 n : ℚ)

end

end A138739.P8026895957895449365

/-! ## A138739.P8095789803740093446

`abs(A291198(n+1)/A011782(n))`
-/

namespace A138739.P8095789803740093446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A291198 (n + 1) : ℚ) / (A011782 n : ℚ)|

end

end A138739.P8095789803740093446

/-! ## A138739.P1315250443468853582

`lcm(A291198(n+1)/A011782(n), A040001(n))`
-/

namespace A138739.P1315250443468853582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A291198 (n + 1) : ℚ) / (A011782 n : ℚ))) (A040001 n)

end

end A138739.P1315250443468853582

/-!
# A138740: G.f. satisfies A(x) = A(A(x)) - x^2 with A(0)=0.

The programs for A138740, there is no canonical definition to state claims against.
-/

/-! ## A138740.P4974210975217177091

`A165326(n)*A292809(n+1)`
-/

namespace A138740.P4974210975217177091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n * A292809 (n + 1)

end

end A138740.P4974210975217177091

/-! ## A138740.P15937555039951408451

`A062157(A008486(n))*A292809(n+1)`
-/

namespace A138740.P15937555039951408451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A008486 n).toNat * A292809 (n + 1)

end

end A138740.P15937555039951408451

/-! ## A138740.P7937926071575210364

`A062157(A028310(n))*A292809(n+1)`
-/

namespace A138740.P7937926071575210364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A028310 n).toNat * A292809 (n + 1)

end

end A138740.P7937926071575210364

/-! ## A138740.P8820010613233023275

`A292809(A000027(n+1))/A165326(n)`
-/

namespace A138740.P8820010613233023275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292809 (A000027 (n + 1)).toNat : ℚ) / (A165326 n : ℚ)

end

end A138740.P8820010613233023275

/-! ## A138740.P5353222655833613923

`A292809(A000027(n+1))/A062157(A008486(n))`
-/

namespace A138740.P5353222655833613923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292809 (A000027 (n + 1)).toNat : ℚ) / (A062157 (A008486 n).toNat : ℚ)

end

end A138740.P5353222655833613923

/-!
# A138741: Expansion of q^(-1/2) * eta(q)^3 * eta(q^4) * eta(q^12) / (eta(q^2)^2 * eta(q^3)) in powers of q (unsigned).

The programs for A138741, the canonical program `A138741.P8597569601291723982` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138741 has offset 0).

The definition of A138741 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116604, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138741.P8597569601291723982

`(-1)^n*A116604(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A138741

/-- `(-1)^n*A116604(n)` -/
def P8597569601291723982.Spec : Prop :=
  ∀ n, P8597569601291723982.a n = A138741 n

theorem P8597569601291723982.correct : P8597569601291723982.Spec := by
  intro n
  simp only [A138741]

end A138741

/-! ## A138741.P9419691821983153057

`abs(A116604(n))`
-/

namespace A138741.P9419691821983153057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A116604 n|

end

end A138741.P9419691821983153057

namespace A138741

/-- `abs(A116604(n))` -/
def P9419691821983153057.Spec : Prop :=
  ∀ n, P9419691821983153057.a n = A138741 n

end A138741

/-! ## A138741.P13467566962746235628

`A010684(n)*A125079(n)`
-/

namespace A138741.P13467566962746235628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A125079 n

end

end A138741.P13467566962746235628

namespace A138741

/-- `A010684(n)*A125079(n)` -/
def P13467566962746235628.Spec : Prop :=
  ∀ n, P13467566962746235628.a n = A138741 n

end A138741

/-! ## A138741.P13693104904675882059

`gcd(A000038(n), A116604(n))`
-/

namespace A138741.P13693104904675882059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A116604 n)

end

end A138741.P13693104904675882059

namespace A138741

/-- `gcd(A000038(n), A116604(n))` -/
def P13693104904675882059.Spec : Prop :=
  ∀ n, (P13693104904675882059.a n : ℤ) = A138741 n

end A138741

/-! ## A138741.P2927406841610452478

`lcm(A010684(n), A116604(n))`
-/

namespace A138741.P2927406841610452478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010684 n) (A116604 n)

end

end A138741.P2927406841610452478

namespace A138741

/-- `lcm(A010684(n), A116604(n))` -/
def P2927406841610452478.Spec : Prop :=
  ∀ n, (P2927406841610452478.a n : ℤ) = A138741 n

end A138741

/-! ## A138741.P17862998992767049229

`A073575(n+1)*A125079(n)`
-/

namespace A138741.P17862998992767049229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073575 (n + 1) * A125079 n

end

end A138741.P17862998992767049229

namespace A138741

/-- `A073575(n+1)*A125079(n)` -/
def P17862998992767049229.Spec : Prop :=
  ∀ n, P17862998992767049229.a n = A138741 n

end A138741

/-! ## A138741.P9350946507389655665

`(2-A033999(n))*A125079(n)`
-/

namespace A138741.P9350946507389655665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A033999 n) * A125079 n

end

end A138741.P9350946507389655665

namespace A138741

/-- `(2-A033999(n))*A125079(n)` -/
def P9350946507389655665.Spec : Prop :=
  ∀ n, P9350946507389655665.a n = A138741 n

end A138741

/-! ## A138741.P11495605753657924689

`2*A125079(n)-A129447(n)`
-/

namespace A138741.P11495605753657924689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125079 n - A129447 n

end

end A138741.P11495605753657924689

namespace A138741

/-- `2*A125079(n)-A129447(n)` -/
def P11495605753657924689.Spec : Prop :=
  ∀ n, P11495605753657924689.a n = A138741 n

end A138741

/-! ## A138741.P15888217423482348226

`A125061(Δ[n²])`
-/

namespace A138741.P15888217423482348226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125061 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A138741.P15888217423482348226

namespace A138741

/-- `A125061(Δ[n²])` -/
def P15888217423482348226.Spec : Prop :=
  ∀ n, P15888217423482348226.a n = A138741 n

end A138741

/-! ## A138741.P11102215255782296828

`A138746(Δ[n²])`
-/

namespace A138741.P11102215255782296828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138746 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A138741.P11102215255782296828

namespace A138741

/-- `A138746(Δ[n²])` -/
def P11102215255782296828.Spec : Prop :=
  ∀ n, P11102215255782296828.a n = A138741 n

end A138741

/-! ## A138741.P9702940894625812079

`A163746(Δ[n²])`
-/

namespace A138741.P9702940894625812079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163746 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A138741.P9702940894625812079

namespace A138741

/-- `A163746(Δ[n²])` -/
def P9702940894625812079.Spec : Prop :=
  ∀ n, P9702940894625812079.a n = A138741 n

end A138741

/-! ## A138741.P3264537220339056725

`abs(A138950(Δ[n²]))`
-/

namespace A138741.P3264537220339056725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138950 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A138741.P3264537220339056725

namespace A138741

/-- `abs(A138950(Δ[n²]))` -/
def P3264537220339056725.Spec : Prop :=
  ∀ n, P3264537220339056725.a n = A138741 n

end A138741

/-! ## A138741.P15165409130548012903

`abs(A138745(2*n+1))`
-/

namespace A138741.P15165409130548012903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138745 (2 * n + 1)|

end

end A138741.P15165409130548012903

namespace A138741

/-- `abs(A138745(2*n+1))` -/
def P15165409130548012903.Spec : Prop :=
  ∀ n, P15165409130548012903.a n = A138741 n

end A138741

/-! ## A138741.P9296080019251350158

`abs(A138746(2*n+1))`
-/

namespace A138741.P9296080019251350158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138746 (2 * n + 1)|

end

end A138741.P9296080019251350158

namespace A138741

/-- `abs(A138746(2*n+1))` -/
def P9296080019251350158.Spec : Prop :=
  ∀ n, P9296080019251350158.a n = A138741 n

end A138741

/-! ## A138741.P16128270101133827613

`abs(A138952(2*n+1))`
-/

namespace A138741.P16128270101133827613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138952 (2 * n + 1)|

end

end A138741.P16128270101133827613

namespace A138741

/-- `abs(A138952(2*n+1))` -/
def P16128270101133827613.Spec : Prop :=
  ∀ n, P16128270101133827613.a n = A138741 n

end A138741

/-! ## A138741.P1266420022294174792

`∑{d}[2*n+1, A128016(#)]`
-/

namespace A138741.P1266420022294174792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A128016 d

end

end A138741.P1266420022294174792

namespace A138741

/-- `∑{d}[2*n+1, A128016(#)]` -/
def P1266420022294174792.Spec : Prop :=
  ∀ n, P1266420022294174792.a n = A138741 n

end A138741

/-! ## A138741.P10550089522848912560

`∑{d}[2*n+1, A166592(#)]`
-/

namespace A138741.P10550089522848912560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A166592 d

end

end A138741.P10550089522848912560

namespace A138741

/-- `∑{d}[2*n+1, A166592(#)]` -/
def P10550089522848912560.Spec : Prop :=
  ∀ n, P10550089522848912560.a n = A138741 n

end A138741

/-! ## A138741.P4829247777701418712

`abs(A138949(2*n+1)/2)`
-/

namespace A138741.P4829247777701418712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A138949 (2 * n + 1) : ℚ) / 2|

end

end A138741.P4829247777701418712

namespace A138741

/-- `abs(A138949(2*n+1)/2)` -/
def P4829247777701418712.Spec : Prop :=
  ∀ n, P4829247777701418712.a n = (A138741 n : ℚ)

end A138741

/-! ## A138741.P17279842133634726768

`lcm(2, A138951(2*n+1))/2`
-/

namespace A138741.P17279842133634726768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A138951 (2 * n + 1)) : ℚ) / 2

end

end A138741.P17279842133634726768

namespace A138741

/-- `lcm(2, A138951(2*n+1))/2` -/
def P17279842133634726768.Spec : Prop :=
  ∀ n, P17279842133634726768.a n = (A138741 n : ℚ)

end A138741

/-!
# A138742: Let r_1 = 1. Let r_{m+1} = r_1 + 1/(r_2 + 1/(r_3 +...(r_{m-1} + 1/r_m)...)), a continued fraction of rational terms. Then row n of this irregular array contains the simple continued fraction terms of r_n.

The programs for A138742, there is no canonical definition to state claims against.
-/

/-! ## A138742.P13375134474025417633

`A007875(A232973(n)+8)`
-/

namespace A138742.P13375134474025417633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (A232973 n + 8).toNat

end

end A138742.P13375134474025417633

/-! ## A138742.P15666762966727205289

`A069705(A069696(n+1)-n)`
-/

namespace A138742.P15666762966727205289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069705 (A069696 (n + 1) - (n : ℤ)).toNat

end

end A138742.P15666762966727205289

/-! ## A138742.P3606595301190211525

`A000005(A184955(n)+or(1, n%3))`
-/

namespace A138742.P3606595301190211525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A184955 n + (Nat.lor 1 (n % 3) : ℤ)).toNat

end

end A138742.P3606595301190211525

/-! ## A138742.P10639305598057837564

`A000005(or(gcd(3, n+1), A179960(n)))`
-/

namespace A138742.P10639305598057837564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor (Nat.gcd 3 (n + 1) : ℤ) (A179960 n)).toNat

end

end A138742.P10639305598057837564

/-! ## A138742.P16715676770060332951

`A000005(gcd(∑[n], A154284(2*(n+1))))`
-/

namespace A138742.P16715676770060332951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A154284 (2 * (n + 1))))

end

end A138742.P16715676770060332951

/-!
# A138744: Let r_1 = 1. Let r_{m+1} = r_1 + 1/(r_2 + 1/(r_3 +...(r_{m-1} + 1/r_m)...)), a continued fraction of rational terms. Then a(n) is the sum of the (positive integer) terms in the simple continued fraction of r_n.

The programs for A138744, there is no canonical definition to state claims against.
-/

/-! ## A138744.P13293821586690106417

`A157271(2^comp[2*n+5])`
-/

namespace A138744.P13293821586690106417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A138744.P13293821586690106417

/-! ## A138744.P11972229773735608671

`A028237(A171978(n))`
-/

namespace A138744.P11972229773735608671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028237 (A171978 n).toNat

end

end A138744.P11972229773735608671

/-! ## A138744.P9579552044321395797

`A297932(A018171(n))`
-/

namespace A138744.P9579552044321395797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297932 (A018171 n).toNat

end

end A138744.P9579552044321395797

/-!
# A138745: Expansion of eta(q) * eta(q^3) * eta(q^4)^3 / (eta(q^2)^2 * eta(q^12)) in powers of q.

The programs for A138745, the canonical program `A138745.P4107493542608592355` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138745 has offset 0).

The definition of A138745 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A125061, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138745.P4107493542608592355

`(-1)^n*A125061(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138745

/-- `(-1)^n*A125061(n)` -/
def P4107493542608592355.Spec : Prop :=
  ∀ n, P4107493542608592355.a n = A138745 n

theorem P4107493542608592355.correct : P4107493542608592355.Spec := by
  intro n
  simp only [A138745]

end A138745

/-! ## A138745.P17029058529900933524

`A125061(n)/A033999(n)`
-/

namespace A138745.P17029058529900933524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125061 n : ℚ) / (A033999 n : ℚ)

end

end A138745.P17029058529900933524

namespace A138745

/-- `A125061(n)/A033999(n)` -/
def P17029058529900933524.Spec : Prop :=
  ∀ n, P17029058529900933524.a n = (A138745 n : ℚ)

end A138745

/-! ## A138745.P5675099933957448903

`A125061(n)/A062157(n+1)`
-/

namespace A138745.P5675099933957448903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125061 n : ℚ) / (A062157 (n + 1) : ℚ)

end

end A138745.P5675099933957448903

namespace A138745

/-- `A125061(n)/A062157(n+1)` -/
def P5675099933957448903.Spec : Prop :=
  ∀ n, P5675099933957448903.a n = (A138745 n : ℚ)

end A138745

/-! ## A138745.P9871076309698234522

`A125061(n)*A195017(A000040(n+1))`
-/

namespace A138745.P9871076309698234522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125061 n * A195017 (A000040 (n + 1)).toNat

end

end A138745.P9871076309698234522

namespace A138745

/-- `A125061(n)*A195017(A000040(n+1))` -/
def P9871076309698234522.Spec : Prop :=
  ∀ n, P9871076309698234522.a n = A138745 n

end A138745

/-! ## A138745.P10298981060988472803

`A125061(n)/A010892(3*n)`
-/

namespace A138745.P10298981060988472803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125061 n : ℚ) / (A010892 (3 * n) : ℚ)

end

end A138745.P10298981060988472803

namespace A138745

/-- `A125061(n)/A010892(3*n)` -/
def P10298981060988472803.Spec : Prop :=
  ∀ n, P10298981060988472803.a n = (A138745 n : ℚ)

end A138745

/-!
# A138746: Expansion of 1 - eta(q) * eta(q^3) * eta(q^4)^3 / (eta(q^2)^2 * eta(q^12)) in powers of q.

The programs for A138746, the canonical program `A138746.P8217027100382283565` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138746 has offset 1).

The definition of A138746 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138745, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138746.P8217027100382283565

`-A138745(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A138746

/-- `-A138745(n+1)` -/
def P8217027100382283565.Spec : Prop :=
  ∀ n, P8217027100382283565.a n = A138746 (n + 1)

theorem P8217027100382283565.correct : P8217027100382283565.Spec := by
  intro n
  simp only [A138746, Nat.add_sub_cancel]

end A138746

/-! ## A138746.P15576851973775660287

`Δ[a(n-1)-A138745(n)]` with `a(0)=1`
-/

namespace A138746.P15576851973775660287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - A138745 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138746.P15576851973775660287

namespace A138746

/-- `Δ[a(n-1)-A138745(n)]` -/
def P15576851973775660287.Spec : Prop :=
  ∀ n, P15576851973775660287.a n = A138746 (n + 1)

end A138746

/-! ## A138746.P9539048687251591814

`A033999(n)*A163746(n+1)`
-/

namespace A138746.P9539048687251591814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A163746 (n + 1)

end

end A138746.P9539048687251591814

namespace A138746

/-- `A033999(n)*A163746(n+1)` -/
def P9539048687251591814.Spec : Prop :=
  ∀ n, P9539048687251591814.a n = A138746 (n + 1)

theorem P9539048687251591814.correct : P9539048687251591814.Spec := by
  intro n
  simp only [A138746, Nat.add_sub_cancel, A138746.P9539048687251591814.a, A138746.P8217027100382283565.a, A033999, A033999.P17703899380244199787.a, A138745, A138745.P4107493542608592355.a, A163746, A163746.P11768047734020211813.a, A125061, A125061.P10139082883885245732.a, A028310, A028310.P18130301328277559831.a, A138952, A138952.P8845093039142531308.a, A138950, A138950.P17312000599504240579.f1, A138950.P17312000599504240579.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138746

/-! ## A138746.P11662899560389618602

`A000038(n+1)-A138745(n+1)`
-/

namespace A138746.P11662899560389618602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A138745 (n + 1)

end

end A138746.P11662899560389618602

namespace A138746

/-- `A000038(n+1)-A138745(n+1)` -/
def P11662899560389618602.Spec : Prop :=
  ∀ n, P11662899560389618602.a n = A138746 (n + 1)

theorem P11662899560389618602.correct : P11662899560389618602.Spec := by
  intro n
  simp only [A138746, Nat.add_sub_cancel, A138746.P11662899560389618602.a, A138746.P8217027100382283565.a, A000038, A000038.P13734959004655594922.a, A138745, A138745.P4107493542608592355.a, A000007, A000007.P6599383543502402472.a, A125061, A125061.P10139082883885245732.a, A028310, A028310.P18130301328277559831.a, A138952, A138952.P8845093039142531308.a, A138950, A138950.P17312000599504240579.f1, A138950.P17312000599504240579.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138746

/-! ## A138746.P199498096165256483

`A034947(n+1)*A138952(n+1)`
-/

namespace A138746.P199498096165256483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A138952 (n + 1)

end

end A138746.P199498096165256483

namespace A138746

/-- `A034947(n+1)*A138952(n+1)` -/
def P199498096165256483.Spec : Prop :=
  ∀ n, P199498096165256483.a n = A138746 (n + 1)

end A138746

/-! ## A138746.P6159834950162910054

`A099545(n+1)*A132004(n+1)`
-/

namespace A138746.P6159834950162910054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099545 (n + 1) * A132004 (n + 1)

end

end A138746.P6159834950162910054

namespace A138746

/-- `A099545(n+1)*A132004(n+1)` -/
def P6159834950162910054.Spec : Prop :=
  ∀ n, P6159834950162910054.a n = A138746 (n + 1)

end A138746

/-! ## A138746.P6996631259485135805

`A132004(n+1)*A363340(n+1)`
-/

namespace A138746.P6996631259485135805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132004 (n + 1) * A363340 (n + 1)

end

end A138746.P6996631259485135805

namespace A138746

/-- `A132004(n+1)*A363340(n+1)` -/
def P6996631259485135805.Spec : Prop :=
  ∀ n, P6996631259485135805.a n = A138746 (n + 1)

end A138746

/-! ## A138746.P7139558592651139167

`(2-A034947(n+1))*A132004(n+1)`
-/

namespace A138746.P7139558592651139167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A034947 (n + 1)) * A132004 (n + 1)

end

end A138746.P7139558592651139167

namespace A138746

/-- `(2-A034947(n+1))*A132004(n+1)` -/
def P7139558592651139167.Spec : Prop :=
  ∀ n, P7139558592651139167.a n = A138746 (n + 1)

end A138746

/-! ## A138746.P11852066652077742862

`A061853(2*n+1)-A138745(n+1)`
-/

namespace A138746.P11852066652077742862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061853 (2 * n + 1) - A138745 (n + 1)

end

end A138746.P11852066652077742862

namespace A138746

/-- `A061853(2*n+1)-A138745(n+1)` -/
def P11852066652077742862.Spec : Prop :=
  ∀ n, P11852066652077742862.a n = A138746 (n + 1)

end A138746

/-! ## A138746.P14416099364686817869

`(2-A099545(n+1))*A138952(n+1)`
-/

namespace A138746.P14416099364686817869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A099545 (n + 1)) * A138952 (n + 1)

end

end A138746.P14416099364686817869

namespace A138746

/-- `(2-A099545(n+1))*A138952(n+1)` -/
def P14416099364686817869.Spec : Prop :=
  ∀ n, P14416099364686817869.a n = A138746 (n + 1)

end A138746

/-! ## A138746.P4566701326515284654

`2*A132004(n+1)-A121450(n+1)`
-/

namespace A138746.P4566701326515284654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132004 (n + 1) - A121450 (n + 1)

end

end A138746.P4566701326515284654

namespace A138746

/-- `2*A132004(n+1)-A121450(n+1)` -/
def P4566701326515284654.Spec : Prop :=
  ∀ n, P4566701326515284654.a n = A138746 (n + 1)

end A138746

/-! ## A138746.P9265621156950497510

`(2-A363340(n+1))*A138952(n+1)`
-/

namespace A138746.P9265621156950497510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A363340 (n + 1)) * A138952 (n + 1)

end

end A138746.P9265621156950497510

namespace A138746

/-- `(2-A363340(n+1))*A138952(n+1)` -/
def P9265621156950497510.Spec : Prop :=
  ∀ n, P9265621156950497510.a n = A138746 (n + 1)

end A138746

/-! ## A138746.P8080044581727220510

`A034947(n+1)/2*A138951(n+1)`
-/

namespace A138746.P8080044581727220510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034947 (n + 1) : ℚ) / 2 * (A138951 (n + 1) : ℚ)

end

end A138746.P8080044581727220510

namespace A138746

/-- `A034947(n+1)/2*A138951(n+1)` -/
def P8080044581727220510.Spec : Prop :=
  ∀ n, P8080044581727220510.a n = (A138746 (n + 1) : ℚ)

end A138746

/-! ## A138746.P5465100229542229829

`and(2, A010051(n+2))-A138745(n+1)`
-/

namespace A138746.P5465100229542229829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A010051 (n + 2)) - A138745 (n + 1)

end

end A138746.P5465100229542229829

namespace A138746

/-- `and(2, A010051(n+2))-A138745(n+1)` -/
def P5465100229542229829.Spec : Prop :=
  ∀ n, P5465100229542229829.a n = A138746 (n + 1)

end A138746

/-! ## A138746.P5868028063364654889

`n*A010051(2*(n+1))-A138745(n+1)`
-/

namespace A138746.P5868028063364654889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010051 (2 * (n + 1)) - A138745 (n + 1)

end

end A138746.P5868028063364654889

namespace A138746

/-- `n*A010051(2*(n+1))-A138745(n+1)` -/
def P5868028063364654889.Spec : Prop :=
  ∀ n, P5868028063364654889.a n = A138746 (n + 1)

end A138746

/-! ## A138746.P5836306549512019061

`lcm(A033999(n), A138950(n+1))*A033999(n)`
-/

namespace A138746.P5836306549512019061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A033999 n) (A138950 (n + 1)) : ℤ) * A033999 n

end

end A138746.P5836306549512019061

namespace A138746

/-- `lcm(A033999(n), A138950(n+1))*A033999(n)` -/
def P5836306549512019061.Spec : Prop :=
  ∀ n, P5836306549512019061.a n = A138746 (n + 1)

end A138746

/-! ## A138746.P3544323618610357154

`A038189(A138745(n+1)²)-A138745(n+1)`
-/

namespace A138746.P3544323618610357154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A138745 (n + 1) ^ 2).toNat - A138745 (n + 1)

end

end A138746.P3544323618610357154

namespace A138746

/-- `A038189(A138745(n+1)²)-A138745(n+1)` -/
def P3544323618610357154.Spec : Prop :=
  ∀ n, P3544323618610357154.a n = A138746 (n + 1)

end A138746

/-! ## A138746.P2478851025257318251

`(-1)^n*A125061(n+1)`
-/

namespace A138746.P2478851025257318251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A125061 (n + 1)

end

end A138746.P2478851025257318251

namespace A138746

/-- `(-1)^n*A125061(n+1)` -/
def P2478851025257318251.Spec : Prop :=
  ∀ n, P2478851025257318251.a n = A138746 (n + 1)

theorem P2478851025257318251.correct : P2478851025257318251.Spec := by
  intro n
  simp only [A138746, Nat.add_sub_cancel, A138746.P2478851025257318251.a, A138746.P8217027100382283565.a, A125061, A125061.P10139082883885245732.a, A138745, A138745.P4107493542608592355.a, A028310, A028310.P18130301328277559831.a, A138952, A138952.P8845093039142531308.a, A138950, A138950.P17312000599504240579.f1, A138950.P17312000599504240579.a, A056594, A056594.P16236062631889685808.a, A061347, A061347.P16495184045730708209.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138746

/-! ## A138746.P5636404704653284003

`A000007(n+1)-A138745(n+1)`
-/

namespace A138746.P5636404704653284003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A138745 (n + 1)

end

end A138746.P5636404704653284003

namespace A138746

/-- `A000007(n+1)-A138745(n+1)` -/
def P5636404704653284003.Spec : Prop :=
  ∀ n, P5636404704653284003.a n = A138746 (n + 1)

theorem P5636404704653284003.correct : P5636404704653284003.Spec := by
  intro n
  simp only [A138746, Nat.add_sub_cancel, A138746.P5636404704653284003.a, A138746.P8217027100382283565.a, A000007, A000007.P6599383543502402472.a, A138745, A138745.P4107493542608592355.a, A125061, A125061.P10139082883885245732.a, A028310, A028310.P18130301328277559831.a, A138952, A138952.P8845093039142531308.a, A138950, A138950.P17312000599504240579.f1, A138950.P17312000599504240579.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138746

/-! ## A138746.P3399836445709717676

`A125061(n+1)-(A163746(n+1)+A138745(n+1))`
-/

namespace A138746.P3399836445709717676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125061 (n + 1) - (A163746 (n + 1) + A138745 (n + 1))

end

end A138746.P3399836445709717676

namespace A138746

/-- `A125061(n+1)-(A163746(n+1)+A138745(n+1))` -/
def P3399836445709717676.Spec : Prop :=
  ∀ n, P3399836445709717676.a n = A138746 (n + 1)

theorem P3399836445709717676.correct : P3399836445709717676.Spec := by
  intro n
  simp only [A138746, Nat.add_sub_cancel, A138746.P3399836445709717676.a, A138746.P8217027100382283565.a, A125061, A125061.P10139082883885245732.a, A138745, A138745.P4107493542608592355.a, A163746, A163746.P11768047734020211813.a, A028310, A028310.P18130301328277559831.a, A138952, A138952.P8845093039142531308.a, A138950, A138950.P17312000599504240579.f1, A138950.P17312000599504240579.a, A056594, A056594.P16236062631889685808.a, A061347, A061347.P16495184045730708209.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138746

/-!
# A138747: a(n) = 4*a(n-1) - 3*a(n-2) + 2*a(n-3) - 1*a(n-4).

The programs for A138747, the canonical program `A138747.P17237740651149568361` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138747 has offset 1).

The definition of A138747 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-3*a(n-2)+2*a(n-3)-1*a(n-4)` (program `A138747.P17237740651149568361`, by `A138747.P17237740651149568361.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138747.P17237740651149568361

`4*a(n-1)-3*a(n-2)+2*a(n-3)-1*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138747

/-- `4*a(n-1)-3*a(n-2)+2*a(n-3)-1*a(n-4)` -/
def P17237740651149568361.Spec : Prop :=
  ∀ n, P17237740651149568361.a n = A138747 (n + 1)

theorem P17237740651149568361.correct : P17237740651149568361.Spec := by
  intro n
  simp only [A138747, Nat.add_sub_cancel]

end A138747

/-! ## A138747.P6458038272837756181

`ogf((1-3x-x^3)/(1-4x+3x^2-2x^3+x^4))`
-/

namespace A138747.P6458038272837756181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 0, -1] [1, -4, 3, -2, 1] n

end

end A138747.P6458038272837756181

namespace A138747

/-- `ogf((1-3x-x^3)/(1-4x+3x^2-2x^3+x^4))` -/
def P6458038272837756181.Spec : Prop :=
  ∀ n, P6458038272837756181.a n = A138747 (n + 1)

end A138747

/-! ## A138747.P6112863116562406561

`A233583(A186500(a(n-1))+1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A138747.P6112863116562406561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A233583 (A186500 (a (n - 1)).toNat + 1).toNat

end

end A138747.P6112863116562406561

namespace A138747

/-- `A233583(A186500(a(n-1))+1)` -/
def P6112863116562406561.Spec : Prop :=
  ∀ n, P6112863116562406561.a n = A138747 (n + 1)

end A138747

/-! ## A138747.P8800709369175637009

`A096182(A036616(n))`
-/

namespace A138747.P8800709369175637009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096182 (A036616 n).toNat

end

end A138747.P8800709369175637009

namespace A138747

/-- `A096182(A036616(n))` -/
def P8800709369175637009.Spec : Prop :=
  ∀ n, P8800709369175637009.a n = A138747 (n + 1)

end A138747

/-!
# A138748: a(n) = (n+(n+1)) + (n*(n+1)) + (n^(n+1)).

The programs for A138748, the canonical program `A138748.P5695543290857882153` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138748 has offset 0).

The definition of A138748 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+n+1+n*(n+1)+n^(n+1)` (program `A138748.P5695543290857882153`, by `A138748.P5695543290857882153.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138748.P13444634117382513762

`2*n+1+n*(n+1)+n^(n+1)`
-/

namespace A138748.P13444634117382513762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1 + n * (n + 1) + n ^ (n + 1)

end

end A138748.P13444634117382513762

namespace A138748

/-- `2*n+1+n*(n+1)+n^(n+1)` -/
def P13444634117382513762.Spec : Prop :=
  ∀ n, (P13444634117382513762.a n : ℤ) = A138748 n

theorem P13444634117382513762.correct : P13444634117382513762.Spec := by
  intro n
  simp only [A138748, Nat.add_sub_cancel, A138748.P13444634117382513762.a, A138748.P5695543290857882153.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A138748

/-! ## A138748.P5695543290857882153

`n+n+1+n*(n+1)+n^(n+1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138748

/-- `n+n+1+n*(n+1)+n^(n+1)` -/
def P5695543290857882153.Spec : Prop :=
  ∀ n, (P5695543290857882153.a n : ℤ) = A138748 n

theorem P5695543290857882153.correct : P5695543290857882153.Spec := by
  intro n
  simp only [A138748]

end A138748

/-! ## A138748.P7741185557560210090

`∑[Δ[A065440(n)]+2*(n+1)]`
-/

namespace A138748.P7741185557560210090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065440 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A138748.P7741185557560210090

namespace A138748

/-- `∑[Δ[A065440(n)]+2*(n+1)]` -/
def P7741185557560210090.Spec : Prop :=
  ∀ n, P7741185557560210090.a n = A138748 n

end A138748

/-! ## A138748.P17821134229911961159

`abs(A007778(n)+record[(1-n)²-n])`
-/

namespace A138748.P17821134229911961159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007778 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A138748.P17821134229911961159

namespace A138748

/-- `abs(A007778(n)+record[(1-n)²-n])` -/
def P17821134229911961159.Spec : Prop :=
  ∀ n, P17821134229911961159.a n = A138748 n

end A138748

/-!
# A138749: a(n) = 2*a(n-1) - 5*a(n-2), with a(1) = -1, a(2) = -7.

The programs for A138749, the canonical program `A138749.P12365517644082023188` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138749 has offset 1).

The definition of A138749 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-5*a(n-2)` (program `A138749.P12365517644082023188`, by `A138749.P12365517644082023188.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138749.P12365517644082023188

`2*a(n-1)-5*a(n-2)` with `a(0)=-1, a(1)=-7`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138749

/-- `2*a(n-1)-5*a(n-2)` -/
def P12365517644082023188.Spec : Prop :=
  ∀ n, P12365517644082023188.a n = A138749 (n + 1)

theorem P12365517644082023188.correct : P12365517644082023188.Spec := by
  intro n
  simp only [A138749, Nat.add_sub_cancel]

end A138749

/-! ## A138749.P6338785197955295280

`ogf((1+5x)/(-1+2x-5x^2))`
-/

namespace A138749.P6338785197955295280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, -5] [1, -2, 5] n

end

end A138749.P6338785197955295280

namespace A138749

/-- `ogf((1+5x)/(-1+2x-5x^2))` -/
def P6338785197955295280.Spec : Prop :=
  ∀ n, P6338785197955295280.a n = A138749 (n + 1)

end A138749

/-! ## A138749.P13353974608336781471

`-A116484(n+1)`
-/

namespace A138749.P13353974608336781471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A116484 (n + 1)

end

end A138749.P13353974608336781471

namespace A138749

/-- `-A116484(n+1)` -/
def P13353974608336781471.Spec : Prop :=
  ∀ n, P13353974608336781471.a n = A138749 (n + 1)

end A138749

/-! ## A138749.P1077732332268312709

`Δ[-∑[A116484(n)]]`
-/

namespace A138749.P1077732332268312709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116484 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138749.P1077732332268312709

namespace A138749

/-- `Δ[-∑[A116484(n)]]` -/
def P1077732332268312709.Spec : Prop :=
  ∀ n, P1077732332268312709.a n = A138749 (n + 1)

end A138749

/-! ## A138749.P11227690089491705734

`Δ[A116483(n+1)/2]`
-/

namespace A138749.P11227690089491705734
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116483 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138749.P11227690089491705734

namespace A138749

/-- `Δ[A116483(n+1)/2]` -/
def P11227690089491705734.Spec : Prop :=
  ∀ n, P11227690089491705734.a n = (A138749 (n + 1) : ℚ)

end A138749

/-! ## A138749.P856258426427878881

`A116484(n)+Δ[Δ[A006496(n)]]`
-/

namespace A138749.P856258426427878881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006496 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116484 n + (f1 (n + 1) - f1 n)

end

end A138749.P856258426427878881

namespace A138749

/-- `A116484(n)+Δ[Δ[A006496(n)]]` -/
def P856258426427878881.Spec : Prop :=
  ∀ n, P856258426427878881.a n = A138749 (n + 1)

end A138749

/-! ## A138749.P14269397269677367928

`Δ[Δ[A045873(n)]]-A116483(n)`
-/

namespace A138749.P14269397269677367928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045873 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A116483 n

end

end A138749.P14269397269677367928

namespace A138749

/-- `Δ[Δ[A045873(n)]]-A116483(n)` -/
def P14269397269677367928.Spec : Prop :=
  ∀ n, P14269397269677367928.a n = A138749 (n + 1)

end A138749

/-! ## A138749.P5650854125180518186

`A006495(n+1)-A006496(n+1)`
-/

namespace A138749.P5650854125180518186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006495 (n + 1) - A006496 (n + 1)

end

end A138749.P5650854125180518186

namespace A138749

/-- `A006495(n+1)-A006496(n+1)` -/
def P5650854125180518186.Spec : Prop :=
  ∀ n, P5650854125180518186.a n = A138749 (n + 1)

end A138749

/-! ## A138749.P6559188354770135770

`A006496(n+1)+A006495(n+2)`
-/

namespace A138749.P6559188354770135770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006496 (n + 1) + A006495 (n + 2)

end

end A138749.P6559188354770135770

namespace A138749

/-- `A006496(n+1)+A006495(n+2)` -/
def P6559188354770135770.Spec : Prop :=
  ∀ n, P6559188354770135770.a n = A138749 (n + 1)

end A138749

/-! ## A138749.P1621650485300729229

`A000007(n+1)-A116484(n+1)`
-/

namespace A138749.P1621650485300729229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A116484 (n + 1)

end

end A138749.P1621650485300729229

namespace A138749

/-- `A000007(n+1)-A116484(n+1)` -/
def P1621650485300729229.Spec : Prop :=
  ∀ n, P1621650485300729229.a n = A138749 (n + 1)

end A138749

/-! ## A138749.P2434250342227046829

`Δ[A045873(n+1)]-A006496(n+1)`
-/

namespace A138749.P2434250342227046829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006496 (n + 1)

end

end A138749.P2434250342227046829

namespace A138749

/-- `Δ[A045873(n+1)]-A006496(n+1)` -/
def P2434250342227046829.Spec : Prop :=
  ∀ n, P2434250342227046829.a n = A138749 (n + 1)

end A138749

/-! ## A138749.P15480721090901195573

`A006495(n+1)-2*A045873(n+1)`
-/

namespace A138749.P15480721090901195573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006495 (n + 1) - 2 * A045873 (n + 1)

end

end A138749.P15480721090901195573

namespace A138749

/-- `A006495(n+1)-2*A045873(n+1)` -/
def P15480721090901195573.Spec : Prop :=
  ∀ n, P15480721090901195573.a n = A138749 (n + 1)

end A138749

/-! ## A138749.P9185435391682970100

`2*A006495(n+1)-A116483(n+1)`
-/

namespace A138749.P9185435391682970100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006495 (n + 1) - A116483 (n + 1)

end

end A138749.P9185435391682970100

namespace A138749

/-- `2*A006495(n+1)-A116483(n+1)` -/
def P9185435391682970100.Spec : Prop :=
  ∀ n, P9185435391682970100.a n = A138749 (n + 1)

end A138749

/-! ## A138749.P13444032038604563276

`A116483(n+1)-2*A006496(n+1)`
-/

namespace A138749.P13444032038604563276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116483 (n + 1) - 2 * A006496 (n + 1)

end

end A138749.P13444032038604563276

namespace A138749

/-- `A116483(n+1)-2*A006496(n+1)` -/
def P13444032038604563276.Spec : Prop :=
  ∀ n, P13444032038604563276.a n = A138749 (n + 1)

end A138749

/-! ## A138749.P6497436683885300944

`and(2, A100285(n+1))-A116484(n+1)`
-/

namespace A138749.P6497436683885300944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A100285 (n + 1)) - A116484 (n + 1)

end

end A138749.P6497436683885300944

namespace A138749

/-- `and(2, A100285(n+1))-A116484(n+1)` -/
def P6497436683885300944.Spec : Prop :=
  ∀ n, P6497436683885300944.a n = A138749 (n + 1)

end A138749

/-! ## A138749.P8178537949048100800

`A116483(n+1)+Δ[Δ[A045873(n+1)]]`
-/

namespace A138749.P8178537949048100800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045873 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116483 (n + 1) + (f1 (n + 1) - f1 n)

end

end A138749.P8178537949048100800

namespace A138749

/-- `A116483(n+1)+Δ[Δ[A045873(n+1)]]` -/
def P8178537949048100800.Spec : Prop :=
  ∀ n, P8178537949048100800.a n = A138749 (n + 1)

end A138749

/-! ## A138749.P12834185351413914046

`A006495(n+1)-(A116483(n)+A006495(n))`
-/

namespace A138749.P12834185351413914046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006495 (n + 1) - (A116483 n + A006495 n)

end

end A138749.P12834185351413914046

namespace A138749

/-- `A006495(n+1)-(A116483(n)+A006495(n))` -/
def P12834185351413914046.Spec : Prop :=
  ∀ n, P12834185351413914046.a n = A138749 (n + 1)

end A138749

/-! ## A138749.P8096981900407431677

`A100285(2*n+1)-(A116484(n+1)+A100285(2*n))`
-/

namespace A138749.P8096981900407431677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100285 (2 * n + 1) - (A116484 (n + 1) + A100285 (2 * n))

end

end A138749.P8096981900407431677

namespace A138749

/-- `A100285(2*n+1)-(A116484(n+1)+A100285(2*n))` -/
def P8096981900407431677.Spec : Prop :=
  ∀ n, P8096981900407431677.a n = A138749 (n + 1)

end A138749

/-! ## A138749.P15682185065127989818

`A006495(2*(n+1))/A116483(n+1)`
-/

namespace A138749.P15682185065127989818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006495 (2 * (n + 1)) : ℚ) / (A116483 (n + 1) : ℚ)

end

end A138749.P15682185065127989818

namespace A138749

/-- `A006495(2*(n+1))/A116483(n+1)` -/
def P15682185065127989818.Spec : Prop :=
  ∀ n, P15682185065127989818.a n = (A138749 (n + 1) : ℚ)

end A138749

/-! ## A138749.P179442435223878769

`and(2, A116484(2*n+1))-A116484(n+1)`
-/

namespace A138749.P179442435223878769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A116484 (2 * n + 1)) - A116484 (n + 1)

end

end A138749.P179442435223878769

namespace A138749

/-- `and(2, A116484(2*n+1))-A116484(n+1)` -/
def P179442435223878769.Spec : Prop :=
  ∀ n, P179442435223878769.a n = A138749 (n + 1)

end A138749

/-!
# A138750: a(n) = ceiling(n/2) if n == 2 (mod 3), a(n) = 2n otherwise.

The programs for A138750, the canonical program `A138750.P10419961993071986127` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138750 has offset 0).

The definition of A138750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138750.P10419961993071986127

`a(n-3)+a(n-6)-a(n-9)` with `a(0)=0, a(1)=2, a(2)=1, a(3)=6, a(4)=8, a(5)=3, a(6)=12, a(7)=14, a(8)=4`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138750

/-- `a(n-3)+a(n-6)-a(n-9)` -/
def P10419961993071986127.Spec : Prop :=
  ∀ n, P10419961993071986127.a n = A138750 n

theorem P10419961993071986127.correct : P10419961993071986127.Spec := by
  intro n
  simp only [A138750]

end A138750

/-! ## A138750.P17539859682200266391

`ceil(n*2^(2-gcd(3, n+1)))`
-/

namespace A138750.P17539859682200266391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) * (2 : ℚ) ^ (2 - (Nat.gcd 3 (n + 1) : ℤ) : ℤ)⌉

end

end A138750.P17539859682200266391

namespace A138750

/-- `ceil(n*2^(2-gcd(3, n+1)))` -/
def P17539859682200266391.Spec : Prop :=
  ∀ n, P17539859682200266391.a n = A138750 n

end A138750

/-! ## A138750.P8224143982811833134

`ceil(n/A061347(n+1)+n)`
-/

namespace A138750.P8224143982811833134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A061347 (n + 1) : ℚ) + (n : ℚ)⌉

end

end A138750.P8224143982811833134

namespace A138750

/-- `ceil(n/A061347(n+1)+n)` -/
def P8224143982811833134.Spec : Prop :=
  ∀ n, P8224143982811833134.a n = A138750 n

end A138750

/-! ## A138750.P4020432333646416679

`A342369(n)-A024164(n+1)`
-/

namespace A138750.P4020432333646416679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342369 n - A024164 (n + 1)

end

end A138750.P4020432333646416679

namespace A138750

/-- `A342369(n)-A024164(n+1)` -/
def P4020432333646416679.Spec : Prop :=
  ∀ n, P4020432333646416679.a n = A138750 n

end A138750

/-! ## A138750.P10198769272101243189

`ceil(A005843(n)/A132367(n)²)`
-/

namespace A138750.P10198769272101243189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005843 n : ℚ) / (A132367 n ^ 2 : ℚ)⌉

end

end A138750.P10198769272101243189

namespace A138750

/-- `ceil(A005843(n)/A132367(n)²)` -/
def P10198769272101243189.Spec : Prop :=
  ∀ n, P10198769272101243189.a n = A138750 n

end A138750

/-! ## A138750.P13146144878131278411

`n-floor(n/A099837(n+1))`
-/

namespace A138750.P13146144878131278411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / (A099837 (n + 1) : ℚ)⌋

end

end A138750.P13146144878131278411

namespace A138750

/-- `n-floor(n/A099837(n+1))` -/
def P13146144878131278411.Spec : Prop :=
  ∀ n, P13146144878131278411.a n = A138750 n

end A138750

/-! ## A138750.P13613380512381906564

`ceil(2*n/Δ[A047240(n+1)])`
-/

namespace A138750.P13613380512381906564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌉

end

end A138750.P13613380512381906564

namespace A138750

/-- `ceil(2*n/Δ[A047240(n+1)])` -/
def P13613380512381906564.Spec : Prop :=
  ∀ n, P13613380512381906564.a n = A138750 n

end A138750

/-! ## A138750.P16581194992632721262

`ceil(n/(A004483(A004483(n))-n)+n)`
-/

namespace A138750.P16581194992632721262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A004483 (A004483 n).toNat - (n : ℤ) : ℚ) + (n : ℚ)⌉

end

end A138750.P16581194992632721262

namespace A138750

/-- `ceil(n/(A004483(A004483(n))-n)+n)` -/
def P16581194992632721262.Spec : Prop :=
  ∀ n, P16581194992632721262.a n = A138750 n

end A138750

/-! ## A138750.P13622106230322217232

`2*n+1-A001651(A088439(n+1))`
-/

namespace A138750.P13622106230322217232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A001651 (A088439 (n + 1)).toNat

end

end A138750.P13622106230322217232

namespace A138750

/-- `2*n+1-A001651(A088439(n+1))` -/
def P13622106230322217232.Spec : Prop :=
  ∀ n, P13622106230322217232.a n = A138750 n

end A138750

/-! ## A138750.P17988416324263837434

`abs(n-A006368(A342369(n)))`
-/

namespace A138750.P17988416324263837434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A006368 (A342369 n).toNat|

end

end A138750.P17988416324263837434

namespace A138750

/-- `abs(n-A006368(A342369(n)))` -/
def P17988416324263837434.Spec : Prop :=
  ∀ n, P17988416324263837434.a n = A138750 n

end A138750

/-!
# A138751: a(n) = nextprime( p(n)/2 if p(n)=2 (mod 3), 2p(n) else ) = A007918( A138750( A000040( n ))).

The programs for A138751, the canonical program `A138751.P13177087611856876241` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138751 has offset 1).

The definition of A138751 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138751.P13177087611856876241

`A007918(A138750(A000040(n+1)))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138751

/-- `A007918(A138750(A000040(n+1)))` -/
def P13177087611856876241.Spec : Prop :=
  ∀ n, P13177087611856876241.a n = A138751 (n + 1)

theorem P13177087611856876241.correct : P13177087611856876241.Spec := by
  intro n
  simp only [A138751, Nat.add_sub_cancel]

end A138751

/-! ## A138751.P12575278125079742041

`A000040(A138754(n+1))`
-/

namespace A138751.P12575278125079742041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A138754 (n + 1)).toNat

end

end A138751.P12575278125079742041

namespace A138751

/-- `A000040(A138754(n+1))` -/
def P12575278125079742041.Spec : Prop :=
  ∀ n, P12575278125079742041.a n = A138751 (n + 1)

end A138751

/-! ## A138751.P10867308046640219779

`∑{d}[A138754(n+1), A007444(#)]`
-/

namespace A138751.P10867308046640219779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A138751.P10867308046640219779

namespace A138751

/-- `∑{d}[A138754(n+1), A007444(#)]` -/
def P10867308046640219779.Spec : Prop :=
  ∀ n, P10867308046640219779.a n = A138751 (n + 1)

end A138751

/-! ## A138751.P12018243496833318518

`A006093(A138754(n+1))+A007318(C(2, n))`
-/

namespace A138751.P12018243496833318518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A138754 (n + 1)).toNat + A007318 (Nat.choose 2 n)

end

end A138751.P12018243496833318518

namespace A138751

/-- `A006093(A138754(n+1))+A007318(C(2, n))` -/
def P12018243496833318518.Spec : Prop :=
  ∀ n, P12018243496833318518.a n = A138751 (n + 1)

end A138751

/-! ## A138751.P4591872628846016528

`A006093(A138754(n+1))+A000041(and(1, -n))`
-/

namespace A138751.P4591872628846016528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A138754 (n + 1)).toNat + A000041 (Int.land 1 (-(n : ℤ))).toNat

end

end A138751.P4591872628846016528

namespace A138751

/-- `A006093(A138754(n+1))+A000041(and(1, -n))` -/
def P4591872628846016528.Spec : Prop :=
  ∀ n, P4591872628846016528.a n = A138751 (n + 1)

end A138751

/-! ## A138751.P3645938040003589943

`A006093(A138754(n+1))+A007318(floor(1/(n+1)))`
-/

namespace A138751.P3645938040003589943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A138754 (n + 1)).toNat + A007318 ⌊1 / (n + 1 : ℚ)⌋.toNat

end

end A138751.P3645938040003589943

namespace A138751

/-- `A006093(A138754(n+1))+A007318(floor(1/(n+1)))` -/
def P3645938040003589943.Spec : Prop :=
  ∀ n, P3645938040003589943.a n = A138751 (n + 1)

end A138751

/-! ## A138751.P8442244817112336026

`A008578(A138754(n+1)+1)`
-/

namespace A138751.P8442244817112336026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A138754 (n + 1) + 1).toNat

end

end A138751.P8442244817112336026

namespace A138751

/-- `A008578(A138754(n+1)+1)` -/
def P8442244817112336026.Spec : Prop :=
  ∀ n, P8442244817112336026.a n = A138751 (n + 1)

end A138751

/-! ## A138751.P9626123471040101383

`A182986(A138754(n+1)+1)`
-/

namespace A138751.P9626123471040101383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A138754 (n + 1) + 1).toNat

end

end A138751.P9626123471040101383

namespace A138751

/-- `A182986(A138754(n+1)+1)` -/
def P9626123471040101383.Spec : Prop :=
  ∀ n, P9626123471040101383.a n = A138751 (n + 1)

end A138751

/-! ## A138751.P8088040869974542803

`A073846(2*A138754(n+1))`
-/

namespace A138751.P8088040869974542803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A138754 (n + 1)).toNat

end

end A138751.P8088040869974542803

namespace A138751

/-- `A073846(2*A138754(n+1))` -/
def P8088040869974542803.Spec : Prop :=
  ∀ n, P8088040869974542803.a n = A138751 (n + 1)

end A138751

/-! ## A138751.P5570924265483414396

`A138757(A000040(n+1))`
-/

namespace A138751.P5570924265483414396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138757 (A000040 (n + 1)).toNat

end

end A138751.P5570924265483414396

namespace A138751

/-- `A138757(A000040(n+1))` -/
def P5570924265483414396.Spec : Prop :=
  ∀ n, P5570924265483414396.a n = A138751 (n + 1)

end A138751

/-! ## A138751.P2775421481645555503

`A138757(A006005(n+1))`
-/

namespace A138751.P2775421481645555503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138757 (A006005 (n + 1)).toNat

end

end A138751.P2775421481645555503

namespace A138751

/-- `A138757(A006005(n+1))` -/
def P2775421481645555503.Spec : Prop :=
  ∀ n, P2775421481645555503.a n = A138751 (n + 1)

end A138751

/-! ## A138751.P372201622329710369

`A138757(A008578(n+2))`
-/

namespace A138751.P372201622329710369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138757 (A008578 (n + 2)).toNat

end

end A138751.P372201622329710369

namespace A138751

/-- `A138757(A008578(n+2))` -/
def P372201622329710369.Spec : Prop :=
  ∀ n, P372201622329710369.a n = A138751 (n + 1)

end A138751

/-! ## A138751.P11839590807046332886

`A138757(A075643(n+2))`
-/

namespace A138751.P11839590807046332886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138757 (A075643 (n + 2)).toNat

end

end A138751.P11839590807046332886

namespace A138751

/-- `A138757(A075643(n+2))` -/
def P11839590807046332886.Spec : Prop :=
  ∀ n, P11839590807046332886.a n = A138751 (n + 1)

end A138751

/-! ## A138751.P16830786111230056209

`A138757(A182986(n+2))`
-/

namespace A138751.P16830786111230056209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138757 (A182986 (n + 2)).toNat

end

end A138751.P16830786111230056209

namespace A138751

/-- `A138757(A182986(n+2))` -/
def P16830786111230056209.Spec : Prop :=
  ∀ n, P16830786111230056209.a n = A138751 (n + 1)

end A138751

/-! ## A138751.P9114844660613272167

`A006093(A138754(n+1))-A008683(A142932(n+1))`
-/

namespace A138751.P9114844660613272167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A138754 (n + 1)).toNat - A008683 (A142932 (n + 1)).toNat

end

end A138751.P9114844660613272167

namespace A138751

/-- `A006093(A138754(n+1))-A008683(A142932(n+1))` -/
def P9114844660613272167.Spec : Prop :=
  ∀ n, P9114844660613272167.a n = A138751 (n + 1)

end A138751

/-!
# A138754: a(n) = PrimePi(A138751(n)) - a variation of the Collatz (3n+1) map.

The programs for A138754, the canonical program `A138754.P5480235727800616661` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138754 has offset 1).

The definition of A138754 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138751, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138754.P5480235727800616661

`A000720(A138751(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A138754

/-- `A000720(A138751(n+1))` -/
def P5480235727800616661.Spec : Prop :=
  ∀ n, P5480235727800616661.a n = A138754 (n + 1)

theorem P5480235727800616661.correct : P5480235727800616661.Spec := by
  intro n
  simp only [A138754, Nat.add_sub_cancel]

end A138754

/-! ## A138754.P12186033707058339479

`A000720(A007918(A138750(A000040(n+1))))`
-/

namespace A138754.P12186033707058339479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007918 (A138750 (A000040 (n + 1)).toNat).toNat).toNat

end

end A138754.P12186033707058339479

namespace A138754

/-- `A000720(A007918(A138750(A000040(n+1))))` -/
def P12186033707058339479.Spec : Prop :=
  ∀ n, P12186033707058339479.a n = A138754 (n + 1)

end A138754

/-! ## A138754.P15572707745278051064

`A000720(A138757(A000040(n+1)))`
-/

namespace A138754.P15572707745278051064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A138757 (A000040 (n + 1)).toNat).toNat

end

end A138754.P15572707745278051064

namespace A138754

/-- `A000720(A138757(A000040(n+1)))` -/
def P15572707745278051064.Spec : Prop :=
  ∀ n, P15572707745278051064.a n = A138754 (n + 1)

end A138754

/-! ## A138754.P16620978183377669641

`A003963(A138751(n+1)%(∑[n+3]+7))`
-/

namespace A138754.P16620978183377669641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.tmod (A138751 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j + 7 : ℕ) : ℤ)).toNat

end

end A138754.P16620978183377669641

namespace A138754

/-- `A003963(A138751(n+1)%(∑[n+3]+7))` -/
def P16620978183377669641.Spec : Prop :=
  ∀ n, P16620978183377669641.a n = A138754 (n + 1)

end A138754

/-! ## A138754.P16408663161645771168

`A003963(2*A138751(n+1))`
-/

namespace A138754.P16408663161645771168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A138751 (n + 1)).toNat

end

end A138754.P16408663161645771168

namespace A138754

/-- `A003963(2*A138751(n+1))` -/
def P16408663161645771168.Spec : Prop :=
  ∀ n, P16408663161645771168.a n = A138754 (n + 1)

end A138754

/-!
# A138755: Primes p2 such that p1^3 + p2^2 is an average of twin primes and p1 < p2 are consecutive primes.

The programs for A138755, there is no canonical definition to state claims against.
-/

/-! ## A138755.P1250202739369747352

`A151800(A138735(n+1))`
-/

namespace A138755.P1250202739369747352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A138735 (n + 1)).toNat

end

end A138755.P1250202739369747352

/-! ## A138755.P15981874104938805324

`A000040(A000720(A138735(n+1))+1)`
-/

namespace A138755.P15981874104938805324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A138735 (n + 1)).toNat + 1).toNat

end

end A138755.P15981874104938805324

/-! ## A138755.P15016579360633507394

`A008578(A000720(A138735(n+1))+2)`
-/

namespace A138755.P15016579360633507394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000720 (A138735 (n + 1)).toNat + 2).toNat

end

end A138755.P15016579360633507394

/-!
# A138756: Indices of record values in A138753 (a "prime" variation of the Collatz (3n+1) problem).

The programs for A138756, there is no canonical definition to state claims against.
-/

/-! ## A138756.P9005264168702534039

`lt[A200506(A000217(n)), A200517(n+3)]`
-/

namespace A138756.P9005264168702534039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200506 (A000217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200517 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138756.P9005264168702534039

/-!
# A138757: a(n) = A007918(A138750(n)), that is, least prime > n/2 if n=2 (mod 3), > 2n otherwise.

The programs for A138757, the canonical program `A138757.P3445907887423256104` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138757 has offset 0).

The definition of A138757 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A138757.P3445907887423256104

`A007918(A138750(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A138757

/-- `A007918(A138750(n))` -/
def P3445907887423256104.Spec : Prop :=
  ∀ n, P3445907887423256104.a n = A138757 n

theorem P3445907887423256104.correct : P3445907887423256104.Spec := by
  intro n
  simp only [A138757]

end A138757

/-! ## A138757.P8451414146224682202

`A151800(abs(1-A138750(n)))`
-/

namespace A138757.P8451414146224682202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 |1 - A138750 n|.toNat

end

end A138757.P8451414146224682202

namespace A138757

/-- `A151800(abs(1-A138750(n)))` -/
def P8451414146224682202.Spec : Prop :=
  ∀ n, P8451414146224682202.a n = A138757 n

end A138757

/-! ## A138757.P2126589997940405791

`A151800(A138750(n)+-1%(n+1))`
-/

namespace A138757.P2126589997940405791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A138750 n + Int.tmod (-1) (n + 1 : ℤ)).toNat

end

end A138757.P2126589997940405791

namespace A138757

/-- `A151800(A138750(n)+-1%(n+1))` -/
def P2126589997940405791.Spec : Prop :=
  ∀ n, P2126589997940405791.a n = A138757 n

end A138757

/-! ## A138757.P10050084522393010191

`A151800(A138750(n)+A057428(n))`
-/

namespace A138757.P10050084522393010191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A138750 n + A057428 n).toNat

end

end A138757.P10050084522393010191

namespace A138757

/-- `A151800(A138750(n)+A057428(n))` -/
def P10050084522393010191.Spec : Prop :=
  ∀ n, P10050084522393010191.a n = A138757 n

end A138757

/-! ## A138757.P11830995519355746491

`A151800(A138750(n)-A057427(n))`
-/

namespace A138757.P11830995519355746491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A138750 n - A057427 n).toNat

end

end A138757.P11830995519355746491

namespace A138757

/-- `A151800(A138750(n)-A057427(n))` -/
def P11830995519355746491.Spec : Prop :=
  ∀ n, P11830995519355746491.a n = A138757 n

end A138757

/-! ## A138757.P2482888513939480134

`A151800(A138750(n)-A168181(n))`
-/

namespace A138757.P2482888513939480134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A138750 n - A168181 n).toNat

end

end A138757.P2482888513939480134

namespace A138757

/-- `A151800(A138750(n)-A168181(n))` -/
def P2482888513939480134.Spec : Prop :=
  ∀ n, P2482888513939480134.a n = A138757 n

end A138757

/-! ## A138757.P17634082004263982141

`A151800(A138750(n)-A057428(n)²)`
-/

namespace A138757.P17634082004263982141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A138750 n - A057428 n ^ 2).toNat

end

end A138757.P17634082004263982141

namespace A138757

/-- `A151800(A138750(n)-A057428(n)²)` -/
def P17634082004263982141.Spec : Prop :=
  ∀ n, P17634082004263982141.a n = A138757 n

end A138757

/-! ## A138757.P15287030638119975122

`A007918(ceil(n*2^(2-gcd(3, n+1))))`
-/

namespace A138757.P15287030638119975122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ⌈(n : ℚ) * (2 : ℚ) ^ (2 - (Nat.gcd 3 (n + 1) : ℤ) : ℤ)⌉.toNat

end

end A138757.P15287030638119975122

namespace A138757

/-- `A007918(ceil(n*2^(2-gcd(3, n+1))))` -/
def P15287030638119975122.Spec : Prop :=
  ∀ n, P15287030638119975122.a n = A138757 n

end A138757

/-! ## A138757.P7693799254844874400

`A007918(ceil(n/A061347(n+1)+n))`
-/

namespace A138757.P7693799254844874400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ⌈(n : ℚ) / (A061347 (n + 1) : ℚ) + (n : ℚ)⌉.toNat

end

end A138757.P7693799254844874400

namespace A138757

/-- `A007918(ceil(n/A061347(n+1)+n))` -/
def P7693799254844874400.Spec : Prop :=
  ∀ n, P7693799254844874400.a n = A138757 n

end A138757

/-! ## A138757.P15742931565329498578

`A007918(ceil(2*n/Δ[A047240(n+1)]))`
-/

namespace A138757.P15742931565329498578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ⌈(2 * n : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌉.toNat

end

end A138757.P15742931565329498578

namespace A138757

/-- `A007918(ceil(2*n/Δ[A047240(n+1)]))` -/
def P15742931565329498578.Spec : Prop :=
  ∀ n, P15742931565329498578.a n = A138757 n

end A138757

/-!
# A138758: Index of A001203(n) (continued fraction for Pi) in A000040 (primes), or 0 if A001203(n) is not prime.

The programs for A138758, there is no canonical definition to state claims against.
-/

/-! ## A138758.P14717617716365498439

`A000720(A001203(n))*A010051(A001203(n))`
-/

namespace A138758.P14717617716365498439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001203 n).toNat * A010051 (A001203 n).toNat

end

end A138758.P14717617716365498439

/-! ## A138758.P9422666651104472179

`A049084(A001203(n))`
-/

namespace A138758.P9422666651104472179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A001203 n).toNat

end

end A138758.P9422666651104472179

/-! ## A138758.P16774284369532680008

`A049084(A292106(n)/A003417(n))`
-/

namespace A138758.P16774284369532680008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (SequenceMachineLib.roundAway ((A292106 n : ℚ) / (A003417 n : ℚ))).toNat

end

end A138758.P16774284369532680008

/-! ## A138758.P9646861376375440886

`∑{d}[A061397(A001203(n)), A000720(#)]`
-/

namespace A138758.P9646861376375440886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A001203 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d

end

end A138758.P9646861376375440886

/-! ## A138758.P10793857650969330330

`∑{d}[A061397(A001203(n)), A230980(#)]`
-/

namespace A138758.P10793857650969330330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A001203 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A230980 d

end

end A138758.P10793857650969330330

/-! ## A138758.P14815138997658127066

`A049084(A292106(n)/∑[A120691(n)])`
-/

namespace A138758.P14815138997658127066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (SequenceMachineLib.roundAway ((A292106 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ))).toNat

end

end A138758.P14815138997658127066

/-! ## A138758.P13930184626010602764

`∑{d}[A061397(A001203(n)), A102613(#)]`
-/

namespace A138758.P13930184626010602764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A001203 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A102613 d

end

end A138758.P13930184626010602764

/-!
# A138759: Indices for which A001203 (continued fraction for Pi) is prime.

The programs for A138759, there is no canonical definition to state claims against.
-/

/-! ## A138759.P16797859097885327294

`1+eq[1, A001222(A001203(n))]`
-/

namespace A138759.P16797859097885327294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001203 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A138759.P16797859097885327294

/-! ## A138759.P3147539293592287333

`A000034(2*n)+eq[1, A010051(A001203(n))]`
-/

namespace A138759.P3147539293592287333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A001203 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A138759.P3147539293592287333

/-! ## A138759.P14664708399199160432

`1-eq[1, A001222(A001203(n))]*A057428(n)`
-/

namespace A138759.P14664708399199160432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001203 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) * A057428 n

end

end A138759.P14664708399199160432

/-! ## A138759.P15544542046509289522

`eq[1, A010051(A001203(n))]-A033999(2*n+1)`
-/

namespace A138759.P15544542046509289522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A001203 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A033999 (2 * n + 1)

end

end A138759.P15544542046509289522

/-! ## A138759.P11435617787330262610

`(eq[1, A010051(A001203(n))]+1)%A038818(n+1)`
-/

namespace A138759.P11435617787330262610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A001203 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) (A038818 (n + 1))

end

end A138759.P11435617787330262610

/-! ## A138759.P14288535920255705963

`eq[1, A010051(A001203(n))]%A200459(n+1)+1`
-/

namespace A138759.P14288535920255705963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A001203 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A200459 (n + 1)) + 1

end

end A138759.P14288535920255705963

/-! ## A138759.P4944520171210147790

`A000009((n%2)^n)+eq[1, A010051(A001203(n))]`
-/

namespace A138759.P4944520171210147790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A001203 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 ((n % 2) ^ n) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A138759.P4944520171210147790

/-!
# A138764: E.g.f. A(x) equals the inverse function of log(x)/(x + x^2).

The programs for A138764, there is no canonical definition to state claims against.
-/

/-! ## A138764.P8454574112899985971

`A138860(n)*2^n`
-/

namespace A138764.P8454574112899985971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138860 n * (2 ^ n : ℤ)

end

end A138764.P8454574112899985971

/-! ## A138764.P9873181440502656512

`A000079(n)*A138860(n)`
-/

namespace A138764.P9873181440502656512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A138860 n

end

end A138764.P9873181440502656512

/-! ## A138764.P472676836030115157

`Δ[A052548(n)]*A138860(n)`
-/

namespace A138764.P472676836030115157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A138860 n

end

end A138764.P472676836030115157

/-! ## A138764.P9886852357845628268

`(A000918(n)+2)*A138860(n)`
-/

namespace A138764.P9886852357845628268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000918 n + 2) * A138860 n

end

end A138764.P9886852357845628268

/-! ## A138764.P3384107737055011076

`A087207(A000040(n+1))*A138860(n)`
-/

namespace A138764.P3384107737055011076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A000040 (n + 1)).toNat * A138860 n

end

end A138764.P3384107737055011076

/-!
# A138766: Real part of upper left and lower right terms of [1,(1+I); 1,1]^n * [1,0].

The programs for A138766, the canonical program `A138766.P2417637394587644154` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138766 has offset 1).

The definition of A138766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138766.P2417637394587644154

`4*a(n-1)-4*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138766

/-- `4*a(n-1)-4*a(n-2)-a(n-4)` -/
def P2417637394587644154.Spec : Prop :=
  ∀ n, P2417637394587644154.a n = A138766 (n + 1)

theorem P2417637394587644154.correct : P2417637394587644154.Spec := by
  intro n
  simp only [A138766, Nat.add_sub_cancel]

end A138766

/-! ## A138766.P1673682142457671343

`Δ[ogf((1-2x)/(1-4x+4x^2+x^4))]`
-/

namespace A138766.P1673682142457671343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -4, 4, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138766.P1673682142457671343

namespace A138766

/-- `Δ[ogf((1-2x)/(1-4x+4x^2+x^4))]` -/
def P1673682142457671343.Spec : Prop :=
  ∀ n, P1673682142457671343.a n = A138766 (n + 1)

end A138766

/-! ## A138766.P12192422397199682004

`ogf((1-2x-x^3)/(1-4x+4x^2+x^4))`
-/

namespace A138766.P12192422397199682004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 0, -1] [1, -4, 4, 0, 1] n

end

end A138766.P12192422397199682004

namespace A138766

/-- `ogf((1-2x-x^3)/(1-4x+4x^2+x^4))` -/
def P12192422397199682004.Spec : Prop :=
  ∀ n, P12192422397199682004.a n = A138766 (n + 1)

end A138766

/-! ## A138766.P140563199386750782

`Δ[A138803(n+2)]-A138803(n+2)`
-/

namespace A138766.P140563199386750782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138803 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A138803 (n + 2)

end

end A138766.P140563199386750782

namespace A138766

/-- `Δ[A138803(n+2)]-A138803(n+2)` -/
def P140563199386750782.Spec : Prop :=
  ∀ n, P140563199386750782.a n = A138766 (n + 1)

end A138766

/-! ## A138766.P14218952222321656360

`A138803(n+3)-2*A138803(n+2)`
-/

namespace A138766.P14218952222321656360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138803 (n + 3) - 2 * A138803 (n + 2)

end

end A138766.P14218952222321656360

namespace A138766

/-- `A138803(n+3)-2*A138803(n+2)` -/
def P14218952222321656360.Spec : Prop :=
  ∀ n, P14218952222321656360.a n = A138766 (n + 1)

end A138766

/-!
# A138769: a(n) = least positive integer k such that k^2+3 is divisible by at least n distinct primes.

The programs for A138769, there is no canonical definition to state claims against.
-/

/-! ## A138769.P16087885091747922132

`2*round(sqrt(A174967(n)))-1`
-/

namespace A138769.P16087885091747922132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (Real.sqrt (A174967 n : ℝ)) - 1

end

end A138769.P16087885091747922132

/-! ## A138769.P7970636420292193289

`A004273(ceil(sqrt(A174967(n))))`
-/

namespace A138769.P7970636420292193289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 ⌈Real.sqrt (A174967 n : ℝ)⌉.toNat

end

end A138769.P7970636420292193289

/-! ## A138769.P14126954431033885002

`A004273(round(sqrt(A174967(n))))`
-/

namespace A138769.P14126954431033885002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway (Real.sqrt (A174967 n : ℝ))).toNat

end

end A138769.P14126954431033885002

/-!
# A138770: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} such that there are exactly k entries between the entries 1 and 2 (n>=2, 0<=k<=n-2).

The programs for A138770, there is no canonical definition to state claims against.
-/

/-! ## A138770.P12395674508531745131

`2*(C(comp[∑[n]]-n, 2)-n)*∑[char[∑[n+1]]]!`
-/

namespace A138770.P12395674508531745131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * (Nat.factorial (∑ j ∈ Finset.range (n + 1), f3 j) : ℤ)

end

end A138770.P12395674508531745131

/-! ## A138770.P6739915310300977170

`2*A162608(∑[2*n]%comp[∑[n]])`
-/

namespace A138770.P6739915310300977170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162608 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A138770.P6739915310300977170

/-! ## A138770.P8654757296640206167

`(A099375(n)+1)*∑[char[∑[n+1]]]!`
-/

namespace A138770.P8654757296640206167
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099375 n + 1) * (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A138770.P8654757296640206167

/-! ## A138770.P11991601062393381757

`∑[char[∑[n+1]]]!*A212012(n+1)`
-/

namespace A138770.P11991601062393381757
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A212012 (n + 1)

end

end A138770.P11991601062393381757

/-! ## A138770.P14269285025342992406

`2*∑[char[∑[n+1]]]!*A004736(n+1)`
-/

namespace A138770.P14269285025342992406
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A004736 (n + 1)

end

end A138770.P14269285025342992406

/-!
# A138771: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} whose 2nd cycle has k entries; each cycle is written with the smallest element first and cycles are arranged in increasing order of their first elements (n>=1; 0<=k<=n-1). For example, 1432=(1)(24)(3) has 2 entries in the 2nd cycle; 3421=(1324) has 0 entries in the 2nd cycle.

The programs for A138771, there is no canonical definition to state claims against.
-/

/-! ## A138771.P16605287801157167

`A165675(n)*A165680(n+1)`
-/

namespace A138771.P16605287801157167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165675 n * A165680 (n + 1)

end

end A138771.P16605287801157167

/-! ## A138771.P18215654099166465116

`val(A135293(n), 3)!*A165675(n)`
-/

namespace A138771.P18215654099166465116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.valuation (A135293 n).toNat 3) : ℤ) * A165675 n

end

end A138771.P18215654099166465116

/-! ## A138771.P8956451373912231581

`∑{e}[A166692(n), #]!*A165675(n)`
-/

namespace A138771.P8956451373912231581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) : ℤ) * A165675 n

end

end A138771.P8956451373912231581

/-! ## A138771.P9768757622219829438

`∏{e}[A166918(n), #!]*A165675(n)`
-/

namespace A138771.P9768757622219829438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p) : ℕ) : ℤ) * A165675 n

end

end A138771.P9768757622219829438

/-! ## A138771.P2708899190348207837

`∏{e}[A232089(n), #!]*A165675(n)`
-/

namespace A138771.P2708899190348207837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p) : ℕ) : ℤ) * A165675 n

end

end A138771.P2708899190348207837

/-!
# A138772: Number of entries in the second cycles of all permutations of {1,2,...,n}; each cycle is written with the smallest element first and cycles are arranged in increasing order of their first elements.

The programs for A138772, the canonical program `A138772.P4391643693529965235` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138772 has offset 1).

The definition of A138772 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138772.P4391643693529965235

`(n+2)*a(n-1)+(n-1)!` with `a(0)=0`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138772

/-- `(n+2)*a(n-1)+(n-1)!` -/
def P4391643693529965235.Spec : Prop :=
  ∀ n, (P4391643693529965235.a n : ℤ) = A138772 (n + 1)

theorem P4391643693529965235.correct : P4391643693529965235.Spec := by
  intro n
  simp only [A138772, Nat.add_sub_cancel]

end A138772

/-! ## A138772.P11280915681684838256

`A000254(n)+A159324(n)`
-/

namespace A138772.P11280915681684838256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n + A159324 n

end

end A138772.P11280915681684838256

namespace A138772

/-- `A000254(n)+A159324(n)` -/
def P11280915681684838256.Spec : Prop :=
  ∀ n, P11280915681684838256.a n = A138772 (n + 1)

theorem P11280915681684838256.correct : P11280915681684838256.Spec := by
  intro n
  simp only [A138772, Nat.add_sub_cancel, A138772.P11280915681684838256.a, A138772.P4391643693529965235.a, A000254, A000254.P9428527937712228311.a, A159324, A159324.P14653545983242416296.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A138772

/-! ## A138772.P8570161696704517528

`n*(n+3)*n!/4`
-/

namespace A138772.P8570161696704517528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 3) * Nat.factorial n : ℚ) / 4

end

end A138772.P8570161696704517528

namespace A138772

/-- `n*(n+3)*n!/4` -/
def P8570161696704517528.Spec : Prop :=
  ∀ n, P8570161696704517528.a n = (A138772 (n + 1) : ℚ)

end A138772

/-! ## A138772.P3725595832167141186

`(n+3)/4*Δ[n!]`
-/

namespace A138772.P3725595832167141186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 4 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A138772.P3725595832167141186

namespace A138772

/-- `(n+3)/4*Δ[n!]` -/
def P3725595832167141186.Spec : Prop :=
  ∀ n, P3725595832167141186.a n = (A138772 (n + 1) : ℚ)

end A138772

/-! ## A138772.P13060860378970847605

`(∑[n]+n)/2*n!`
-/

namespace A138772.P13060860378970847605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℚ) / 2 * (Nat.factorial n : ℚ)

end

end A138772.P13060860378970847605

namespace A138772

/-- `(∑[n]+n)/2*n!` -/
def P13060860378970847605.Spec : Prop :=
  ∀ n, P13060860378970847605.a n = (A138772 (n + 1) : ℚ)

end A138772

/-! ## A138772.P16102258908211043165

`n!*∑[n]-C(n, 2)/2*n!`
-/

namespace A138772.P16102258908211043165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) - (Nat.choose n 2 : ℚ) / 2 * (Nat.factorial n : ℚ)

end

end A138772.P16102258908211043165

namespace A138772

/-- `n!*∑[n]-C(n, 2)/2*n!` -/
def P16102258908211043165.Spec : Prop :=
  ∀ n, P16102258908211043165.a n = (A138772 (n + 1) : ℚ)

end A138772

/-! ## A138772.P16077391808049859625

`Δ[A117399(n+1)]`
-/

namespace A138772.P16077391808049859625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138772.P16077391808049859625

namespace A138772

/-- `Δ[A117399(n+1)]` -/
def P16077391808049859625.Spec : Prop :=
  ∀ n, P16077391808049859625.a n = A138772 (n + 1)

end A138772

/-! ## A138772.P3892981403240180490

`A006595(n)-n!`
-/

namespace A138772.P3892981403240180490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006595 n - (Nat.factorial n : ℤ)

end

end A138772.P3892981403240180490

namespace A138772

/-- `A006595(n)-n!` -/
def P3892981403240180490.Spec : Prop :=
  ∀ n, P3892981403240180490.a n = A138772 (n + 1)

end A138772

/-! ## A138772.P10470241378292340302

`n/4*A052572(n)`
-/

namespace A138772.P10470241378292340302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A052572 n : ℚ)

end

end A138772.P10470241378292340302

namespace A138772

/-- `n/4*A052572(n)` -/
def P10470241378292340302.Spec : Prop :=
  ∀ n, P10470241378292340302.a n = (A138772 (n + 1) : ℚ)

end A138772

/-! ## A138772.P9683508185072213776

`n!*A000096(n)/2`
-/

namespace A138772.P9683508185072213776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * A000096 n : ℚ) / 2

end

end A138772.P9683508185072213776

namespace A138772

/-- `n!*A000096(n)/2` -/
def P9683508185072213776.Spec : Prop :=
  ∀ n, P9683508185072213776.a n = (A138772 (n + 1) : ℚ)

end A138772

/-!
# A138773: Triangle read by rows: T(n, k) is the coefficient of x^k in the polynomial P[n](x) = b(n)Q[n](x), where b(n) = numerator of binomial(2n, n)/2^n = A001790(n) and Q[n](x) = F(-n, 1; 1/2-n; x) (hypergeometric function); 0 <= k <= n.

The programs for A138773, there is no canonical definition to state claims against.
-/

/-! ## A138773.P1564072028624963049

`A122774(n+1)/A262681(A022374(n))`
-/

namespace A138773.P1564072028624963049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122774 (n + 1) : ℚ) / (A262681 (A022374 n).toNat : ℚ)

end

end A138773.P1564072028624963049

/-!
# A138775: Triangle read by rows: T(n,k)=binomial(n-2k,3k) (n>=0, 0<=k<=n/5).

The programs for A138775, there is no canonical definition to state claims against.
-/

/-! ## A138775.P10385148459761526248

`A028310(C(A004526(n), A126659(3*n+4)))`
-/

namespace A138775.P10385148459761526248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Nat.choose (A004526 n).toNat (A126659 (3 * n + 4)).toNat)

end

end A138775.P10385148459761526248

/-!
# A138777: Triangle read by rows: T(n,k)=binomial(n-2k,3k+2) (n>=2, 0<=k<=(n-2)/5).

The programs for A138777, there is no canonical definition to state claims against.
-/

/-! ## A138777.P1766573370997396121

`A180987(lt[A048854(n), A131202(n+1)])`
-/

namespace A138777.P1766573370997396121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048854 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180987 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A138777.P1766573370997396121

/-!
# A138782: a(n) = n*(3*n-1)*n!/2.

The programs for A138782, the canonical program `A138782.P16420725374648186488` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138782 has offset 1).

The definition of A138782 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(3*(n+1)-1)*(n+1)!/2` (program `A138782.P2706147271877179532`, by `A138782.P2706147271877179532.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A138782.P2706147271877179532

`(n+1)*(3*(n+1)-1)*(n+1)!/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A138782.P2706147271877179532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((3 * (n + 1) : ℤ) - 1) * (Nat.factorial (n + 1) : ℤ) : ℚ) / 2

end

end A138782.P2706147271877179532

namespace A138782

/-- `(n+1)*(3*(n+1)-1)*(n+1)!/2` -/
def P2706147271877179532.Spec : Prop :=
  ∀ n, P2706147271877179532.a n = (A138782 (n + 1) : ℚ)

theorem P2706147271877179532.correct : P2706147271877179532.Spec := by
  intro n
  simp only [A138782, Nat.add_sub_cancel, A138782.P2706147271877179532.a, A138782.P16420725374648186488.a, A001286, A001286.P18093615335450425260.a, A062119, A062119.P6281908133648097894.a, A000142, A000142.P3272619076580183195.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A138782

/-! ## A138782.P7274762496458717290

`(n+1)!*Δ[n*∑[n]]`
-/

namespace A138782.P7274762496458717290
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A138782.P7274762496458717290

namespace A138782

/-- `(n+1)!*Δ[n*∑[n]]` -/
def P7274762496458717290.Spec : Prop :=
  ∀ n, P7274762496458717290.a n = A138782 (n + 1)

end A138782

/-! ## A138782.P13769019865892961004

`Δ[n*∑[n]]*∏[n+1]`
-/

namespace A138782.P13769019865892961004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * ((∏ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A138782.P13769019865892961004

namespace A138782

/-- `Δ[n*∑[n]]*∏[n+1]` -/
def P13769019865892961004.Spec : Prop :=
  ∀ n, P13769019865892961004.a n = A138782 (n + 1)

end A138782

/-! ## A138782.P5012090081218424653

`abs(Δ[A003422(n)]*A050509(n))`
-/

namespace A138782.P5012090081218424653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A050509 n|

end

end A138782.P5012090081218424653

namespace A138782

/-- `abs(Δ[A003422(n)]*A050509(n))` -/
def P5012090081218424653.Spec : Prop :=
  ∀ n, P5012090081218424653.a n = A138782 (n + 1)

end A138782

/-! ## A138782.P15722750444160500772

`lcm(A066118(n+1), A074143(n+1))`
-/

namespace A138782.P15722750444160500772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A066118 (n + 1)) (A074143 (n + 1))

end

end A138782.P15722750444160500772

namespace A138782

/-- `lcm(A066118(n+1), A074143(n+1))` -/
def P15722750444160500772.Spec : Prop :=
  ∀ n, (P15722750444160500772.a n : ℤ) = A138782 (n + 1)

end A138782

/-! ## A138782.P10362943004261126699

`A000142(n+1)*A049450(n+1)/2`
-/

namespace A138782.P10362943004261126699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) * A049450 (n + 1) : ℚ) / 2

end

end A138782.P10362943004261126699

namespace A138782

/-- `A000142(n+1)*A049450(n+1)/2` -/
def P10362943004261126699.Spec : Prop :=
  ∀ n, P10362943004261126699.a n = (A138782 (n + 1) : ℚ)

theorem P10362943004261126699.correct : P10362943004261126699.Spec := by
  intro n
  simp only [A138782, Nat.add_sub_cancel, A138782.P10362943004261126699.a, A138782.P16420725374648186488.a, A000142, A000142.P3272619076580183195.a, A001286, A001286.P18093615335450425260.a, A049450, A049450.P1815257678583562472.a, A062119, A062119.P6281908133648097894.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A138782

/-! ## A138782.P17175927133197136124

`A180119(n+1)+n*A001563(n+1)`
-/

namespace A138782.P17175927133197136124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180119 (n + 1) + (n : ℤ) * A001563 (n + 1)

end

end A138782.P17175927133197136124

namespace A138782

/-- `A180119(n+1)+n*A001563(n+1)` -/
def P17175927133197136124.Spec : Prop :=
  ∀ n, P17175927133197136124.a n = A138782 (n + 1)

theorem P17175927133197136124.correct : P17175927133197136124.Spec := by
  intro n
  simp only [A138782, Nat.add_sub_cancel, A138782.P17175927133197136124.a, A138782.P16420725374648186488.a, A001286, A001286.P18093615335450425260.a, A001563, A001563.P7265670906522758193.a, A062119, A062119.P6281908133648097894.a, A180119, A180119.P7712605466301032233.a, A000142, A000142.P3272619076580183195.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A138782

/-! ## A138782.P16420725374648186488

`A001286(n+2)+(n+1)*A062119(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A138782

/-- `A001286(n+2)+(n+1)*A062119(n+1)` -/
def P16420725374648186488.Spec : Prop :=
  ∀ n, P16420725374648186488.a n = A138782 (n + 1)

theorem P16420725374648186488.correct : P16420725374648186488.Spec := by
  intro n
  simp only [A138782, Nat.add_sub_cancel]

end A138782

/-! ## A138782.P6633806779398090230

`A000326(n+1)*A037960(n+1)/A001296(n+1)`
-/

namespace A138782.P6633806779398090230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000326 (n + 1) * A037960 (n + 1) : ℚ) / (A001296 (n + 1) : ℚ)

end

end A138782.P6633806779398090230

namespace A138782

/-- `A000326(n+1)*A037960(n+1)/A001296(n+1)` -/
def P6633806779398090230.Spec : Prop :=
  ∀ n, P6633806779398090230.a n = (A138782 (n + 1) : ℚ)

end A138782

/-!
# A138783: a(n) = n*(n - 1)*(27*n^2 - 67*n + 74)*n!/24.

The programs for A138783, the canonical program `A138783.P18199725575214175010` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138783 has offset 1).

The definition of A138783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138783.P18199725575214175010

`(n+1)*n*(27*(n+1)²-67*(n+1)+74)*(n+1)!/24`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138783

/-- `(n+1)*n*(27*(n+1)²-67*(n+1)+74)*(n+1)!/24` -/
def P18199725575214175010.Spec : Prop :=
  ∀ n, P18199725575214175010.a n = (A138783 (n + 1) : ℚ)

end A138783

/-!
# A138784: a(n) = n*(n-1)*(n-2)(27*n^3 - 174*n^2 + 511*n - 552)*n!/48.

The programs for A138784, the canonical program `A138784.P5020014570255028664` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A138784 has offset 1).

The definition of A138784 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A138784.P5020014570255028664

`(n+1)*n*(n-1)*(27*(n+1)^3-174*(n+1)²+511*(n+1)-552)*(n+1)!/48`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A138784

/-- `(n+1)*n*(n-1)*(27*(n+1)^3-174*(n+1)²+511*(n+1)-552)*(n+1)!/48` -/
def P5020014570255028664.Spec : Prop :=
  ∀ n, P5020014570255028664.a n = (A138784 (n + 1) : ℚ)

end A138784

/-!
# A138785: Triangle read by rows: T(n,k) is the number of hook lengths equal to k among all hook lengths of all partitions of n (1 <= k <= n).

The programs for A138785, there is no canonical definition to state claims against.
-/

/-! ## A138785.P3133193610490094659

`A002260(n+1)*A066633(n+1)`
-/

namespace A138785.P3133193610490094659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A066633 (n + 1)

end

end A138785.P3133193610490094659

/-! ## A138785.P10878203082801864941

`(A002262(n)+1)*A066633(n+1)`
-/

namespace A138785.P10878203082801864941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A066633 (n + 1)

end

end A138785.P10878203082801864941

/-! ## A138785.P7380856542782615466

`A299768(n+1)/A002260(n+1)`
-/

namespace A138785.P7380856542782615466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299768 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A138785.P7380856542782615466

/-! ## A138785.P5097938678486687125

`A066633(n+1)/A008284(n+1)*A172467(n+1)`
-/

namespace A138785.P5097938678486687125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066633 (n + 1) : ℚ) / (A008284 (n + 1) : ℚ) * (A172467 (n + 1) : ℚ)

end

end A138785.P5097938678486687125

/-! ## A138785.P5653216413210748962

`A004736(A038722(n+1))*A066633(n+1)`
-/

namespace A138785.P5653216413210748962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (n + 1)).toNat * A066633 (n + 1)

end

end A138785.P5653216413210748962

/-! ## A138785.P13334874652640887148

`A057555(Δ[n²])*A066633(n+1)`
-/

namespace A138785.P13334874652640887148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A066633 (n + 1)

end

end A138785.P13334874652640887148

/-!
# A138786: "Left" odd composite numbers n for which n < A140607((n-1)/2).

The programs for A138786, there is no canonical definition to state claims against.
-/

/-! ## A138786.P2410463477099520815

`lt[A107286(A272273(n+1)), A107286(n)]`
-/

namespace A138786.P2410463477099520815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A272273 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A138786.P2410463477099520815

/-! ## A138786.P15762912848278758236

`A071904(lt[A147542(n+2), A239474(3*(n+1))])`
-/

namespace A138786.P15762912848278758236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147542 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239474 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A138786.P15762912848278758236

/-!
# A138787: First differences of A007878.

The programs for A138787, there is no canonical definition to state claims against.
-/

/-! ## A138787.P10689912968706916717

`A007878(n+2)-A007878(n+1)`
-/

namespace A138787.P10689912968706916717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007878 (n + 2) - A007878 (n + 1)

end

end A138787.P10689912968706916717

/-! ## A138787.P17718386128866854254

`Δ[A007878(n+1)]`
-/

namespace A138787.P17718386128866854254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138787.P17718386128866854254

/-! ## A138787.P4656502459412451703

`abs(Δ[A007878(A348553(n))])`
-/

namespace A138787.P4656502459412451703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007878 (A348553 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A138787.P4656502459412451703

/-! ## A138787.P10570558333150883864

`record[Δ[A007878(A000267(n))]]`
-/

namespace A138787.P10570558333150883864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007878 (A000267 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A138787.P10570558333150883864

/-! ## A138787.P10114148644682572767

`Δ[record[A007878(A051340(n))]]`
-/

namespace A138787.P10114148644682572767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007878 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138787.P10114148644682572767

/-!
# A138788: a(n) = A007878(prime(n)).

The programs for A138788, there is no canonical definition to state claims against.
-/

/-! ## A138788.P5832827157420420076

`A007878(A000040(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A138788.P5832827157420420076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007878 (A000040 (n + 1)).toNat

end

end A138788.P5832827157420420076

/-! ## A138788.P594340869161148504

`A007878(eq[1, ∑{e}[n, #]])`
-/

namespace A138788.P594340869161148504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007878 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A138788.P594340869161148504

/-! ## A138788.P1546410650389498841

`A007878(lt[n, n^C(2, ∑{e}[n, #])!])`
-/

namespace A138788.P1546410650389498841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007878 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A138788.P1546410650389498841

/-!
# A138793: a(n) = concatenation of reversed digits of natural numbers from n down to 1.

The programs for A138793, there is no canonical definition to state claims against.
-/

/-! ## A138793.P17963549802487235929

`A104759(A033061(n+1))`
-/

namespace A138793.P17963549802487235929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104759 (A033061 (n + 1)).toNat

end

end A138793.P17963549802487235929

/-! ## A138793.P18029703870146748581

`A104759(A058183(n+1))`
-/

namespace A138793.P18029703870146748581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104759 (A058183 (n + 1)).toNat

end

end A138793.P18029703870146748581

/-! ## A138793.P7768680579661691577

`A104759(A117804(n+2)-1)`
-/

namespace A138793.P7768680579661691577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104759 (A117804 (n + 2) - 1).toNat

end

end A138793.P7768680579661691577

/-! ## A138793.P8005824210082076698

`A104759(lt[A131575(n), 9]+1)`
-/

namespace A138793.P8005824210082076698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104759 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A138793.P8005824210082076698

/-! ## A138793.P402794960158931628

`A104759(lt[A285311(n), n+1])`
-/

namespace A138793.P402794960158931628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285311 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104759 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A138793.P402794960158931628

/-! ## A138793.P8765419912323628411

`A104759(lt[A285311(n)-1, n])`
-/

namespace A138793.P8765419912323628411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285311 n - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104759 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A138793.P8765419912323628411

/-! ## A138793.P4205735097854711891

`A104759(record[∑[A044932(n+1)]])`
-/

namespace A138793.P4205735097854711891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104759 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A138793.P4205735097854711891

/-! ## A138793.P15576867715319268324

`A104759(lt[A072345(n), 3*n+2]+1)`
-/

namespace A138793.P15576867715319268324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072345 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104759 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A138793.P15576867715319268324

/-!
# A138794: a(n) = A138793(n+1)-A138793(n).

The programs for A138794, there is no canonical definition to state claims against.
-/

/-! ## A138794.P6465477049950359899

`A138793(n+2)-A138793(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A138794.P6465477049950359899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138793 (n + 2) - A138793 (n + 1)

end

end A138794.P6465477049950359899

/-! ## A138794.P10866377200533477073

`Δ[A138793(n+1)]`
-/

namespace A138794.P10866377200533477073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138794.P10866377200533477073

/-! ## A138794.P13672310472998950186

`Δ[A104759(A033061(n+1))]`
-/

namespace A138794.P13672310472998950186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104759 (A033061 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138794.P13672310472998950186

/-! ## A138794.P17470254923767497786

`Δ[A104759(A058183(n+1))]`
-/

namespace A138794.P17470254923767497786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104759 (A058183 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138794.P17470254923767497786

/-! ## A138794.P3444321954590211638

`Δ[A104759(A117804(n+2)-1)]`
-/

namespace A138794.P3444321954590211638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104759 (A117804 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A138794.P3444321954590211638

/-!
# A138795: a(n) = (A138793(n+1)-A138793(n))/10^n.

The programs for A138795, there is no canonical definition to state claims against.
-/

/-! ## A138795.P4159479723077287133

`(A138793(n+2)-A138793(n+1))/10^(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A138795.P4159479723077287133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138793 (n + 2) - A138793 (n + 1) : ℚ) / (10 ^ (n + 1) : ℚ)

end

end A138795.P4159479723077287133

/-! ## A138795.P11287852004006353748

`Δ[A138793(n+1)]/Δ[A105279(n)]`
-/

namespace A138795.P11287852004006353748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105279 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A138795.P11287852004006353748

/-! ## A138795.P7253986744292202028

`Δ[A104759(A033061(n+1))]/A011557(n+1)`
-/

namespace A138795.P7253986744292202028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104759 (A033061 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A011557 (n + 1) : ℚ)

end

end A138795.P7253986744292202028

/-! ## A138795.P4623718876705428344

`Δ[A104759(record[∑[A044932(n+1)]])]/A011557(n+1)`
-/

namespace A138795.P4623718876705428344
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104759 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A011557 (n + 1) : ℚ)

end

end A138795.P4623718876705428344

/-! ## A138795.P13842185080863667973

`Δ[A104759(A117804(n+2)+A057428(n+1))]/A011557(n+1)`
-/

namespace A138795.P13842185080863667973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104759 (A117804 (n + 2) + A057428 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A011557 (n + 1) : ℚ)

end

end A138795.P13842185080863667973

/-!
# A138796: Least possible k > 0 with T(k) - T(j) = n, j > 0, where T(i) > 0 are the triangular numbers A000217.

The programs for A138796, there is no canonical definition to state claims against.
-/

/-! ## A138796.P8485737461050376133

`A130855(C(A138798(n+2)+1, 2)+n)`
-/

namespace A138796.P8485737461050376133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130855 (Nat.choose (A138798 (n + 2) + 1).toNat 2 + n)

end

end A138796.P8485737461050376133

/-! ## A138796.P15453955853506139339

`A212652(n+1+C(A138798(n+2)+1, 2))`
-/

namespace A138796.P15453955853506139339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212652 (n + 1 + Nat.choose (A138798 (n + 2) + 1).toNat 2)

end

end A138796.P15453955853506139339

/-! ## A138796.P746228734122671680

`A002024(C(A138798(n+2)+1, 2)+n+2)`
-/

namespace A138796.P746228734122671680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Nat.choose (A138798 (n + 2) + 1).toNat 2 + (n + 2))

end

end A138796.P746228734122671680

/-! ## A138796.P161687236434022908

`A002260(C(A138798(n+2)+1, 2)+2+n)`
-/

namespace A138796.P161687236434022908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Nat.choose (A138798 (n + 2) + 1).toNat 2 + 2 + n)

end

end A138796.P161687236434022908

/-! ## A138796.P9777183878654437675

`A003056(C(A138798(n+2)+1, 2)+n+2)`
-/

namespace A138796.P9777183878654437675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A138798 (n + 2) + 1).toNat 2 + (n + 2))

end

end A138796.P9777183878654437675

/-! ## A138796.P14726184510634078131

`A025581(C(A138798(n+2)+1, 2)+n+2)`
-/

namespace A138796.P14726184510634078131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Nat.choose (A138798 (n + 2) + 1).toNat 2 + (n + 2))

end

end A138796.P14726184510634078131

/-! ## A138796.P17471615148176404363

`A212652(A000217(A138798(n+2))+n+1)`
-/

namespace A138796.P17471615148176404363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212652 (A000217 (A138798 (n + 2)).toNat + (n + 1 : ℤ)).toNat

end

end A138796.P17471615148176404363

/-! ## A138796.P14468414947553682068

`A109814(A000217(A138798(n+2))+n+2)`
-/

namespace A138796.P14468414947553682068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109814 (A000217 (A138798 (n + 2)).toNat + (n + 2 : ℤ)).toNat

end

end A138796.P14468414947553682068

/-! ## A138796.P16260711113385378673

`A130855(A138799(n+2)+n)`
-/

namespace A138796.P16260711113385378673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130855 (A138799 (n + 2) + (n : ℤ)).toNat

end

end A138796.P16260711113385378673

/-! ## A138796.P8292728715196012962

`A002024(A138799(n+2)+1+n)`
-/

namespace A138796.P8292728715196012962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A138799 (n + 2) + 1 + (n : ℤ)).toNat

end

end A138796.P8292728715196012962

/-!
# A138797: Least possible T(k) with T(k)-T(j)=n, where T(i)>0 are the triangular numbers A000217.

The programs for A138797, there is no canonical definition to state claims against.
-/

/-! ## A138797.P4433470541021178968

`C(A138796(n+2)+1, 2)`
-/

namespace A138797.P4433470541021178968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A138796 (n + 2) + 1).toNat 2

end

end A138797.P4433470541021178968

/-! ## A138797.P14369717558216938511

`A138799(n+2)+2+n`
-/

namespace A138797.P14369717558216938511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138799 (n + 2) + 2 + (n : ℤ)

end

end A138797.P14369717558216938511

/-! ## A138797.P8406483906782616094

`C(A138798(n+2)+1, 2)+2+n`
-/

namespace A138797.P8406483906782616094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A138798 (n + 2) + 1).toNat 2 + 2 + n

end

end A138797.P8406483906782616094

/-! ## A138797.P11119251360051544942

`A000217(A138796(n+2))`
-/

namespace A138797.P11119251360051544942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A138796 (n + 2)).toNat

end

end A138797.P11119251360051544942

/-! ## A138797.P4533884066993299738

`A056536(A138796(n+2)²)`
-/

namespace A138797.P4533884066993299738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056536 (A138796 (n + 2) ^ 2).toNat

end

end A138797.P4533884066993299738

/-! ## A138797.P8870339590172682405

`A214928(A138796(n+2)²)`
-/

namespace A138797.P8870339590172682405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214928 (A138796 (n + 2) ^ 2).toNat

end

end A138797.P8870339590172682405

/-! ## A138797.P11587890975827982492

`A161680(A138796(n+2)+1)`
-/

namespace A138797.P11587890975827982492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A138796 (n + 2) + 1).toNat

end

end A138797.P11587890975827982492

/-! ## A138797.P7985472243179364962

`A179865(A138796(n+2)+1)`
-/

namespace A138797.P7985472243179364962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A138796 (n + 2) + 1).toNat

end

end A138797.P7985472243179364962

/-! ## A138797.P18391736697849972281

`A253145(A138796(n+2)-1)`
-/

namespace A138797.P18391736697849972281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A138796 (n + 2) - 1).toNat

end

end A138797.P18391736697849972281

/-! ## A138797.P6638971507493464566

`A133263(A138798(n+2))+n`
-/

namespace A138797.P6638971507493464566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (A138798 (n + 2)).toNat + (n : ℤ)

end

end A138797.P6638971507493464566

/-!
# A138798: Values of j corresponding to least possible k>0 with T(k)-T(j)=n, where T(i)>0 are the triangular numbers A000217.

The programs for A138798, there is no canonical definition to state claims against.
-/

/-! ## A138798.P17240832364246429866

`A004736(C(A138796(n+2)+1, 2)-n)`
-/

namespace A138798.P17240832364246429866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (Nat.choose (A138796 (n + 2) + 1).toNat 2 - n)

end

end A138798.P17240832364246429866

/-! ## A138798.P9442407510818945345

`A002024(C(A138796(n+2)+1, 2)-(n+2))`
-/

namespace A138798.P9442407510818945345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Nat.choose (A138796 (n + 2) + 1).toNat 2 - (n + 2))

end

end A138798.P9442407510818945345

/-! ## A138798.P6575495057593149105

`A003056(C(A138796(n+2)+1, 2)-(n+2))`
-/

namespace A138798.P6575495057593149105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A138796 (n + 2) + 1).toNat 2 - (n + 2))

end

end A138798.P6575495057593149105

/-! ## A138798.P7179316963682511273

`A025581(C(A138796(n+2)+1, 2)-(n+2))`
-/

namespace A138798.P7179316963682511273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Nat.choose (A138796 (n + 2) + 1).toNat 2 - (n + 2))

end

end A138798.P7179316963682511273

/-! ## A138798.P1006854259447243746

`A109814(C(A138796(n+2)+1, 2)-(n+2))`
-/

namespace A138798.P1006854259447243746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109814 (Nat.choose (A138796 (n + 2) + 1).toNat 2 - (n + 2))

end

end A138798.P1006854259447243746

/-! ## A138798.P10798979992060385354

`A004736(A000217(A138796(n+2))-n)`
-/

namespace A138798.P10798979992060385354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A000217 (A138796 (n + 2)).toNat - (n : ℤ)).toNat

end

end A138798.P10798979992060385354

/-! ## A138798.P6735739517818165224

`A109814(A000217(A138796(n+2))-(n+2))`
-/

namespace A138798.P6735739517818165224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109814 (A000217 (A138796 (n + 2)).toNat - (n + 2 : ℤ)).toNat

end

end A138798.P6735739517818165224

/-! ## A138798.P10475584450167152345

`A212652(A000217(A138796(n+2))-(n+2))`
-/

namespace A138798.P10475584450167152345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212652 (A000217 (A138796 (n + 2)).toNat - (n + 2 : ℤ)).toNat

end

end A138798.P10475584450167152345

/-! ## A138798.P5297401295280403934

`A004736(A001489(n)+C(A138796(n+2)+1, 2))`
-/

namespace A138798.P5297401295280403934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A001489 n + (Nat.choose (A138796 (n + 2) + 1).toNat 2 : ℤ)).toNat

end

end A138798.P5297401295280403934

/-! ## A138798.P13667916383401033199

`A002024(A138799(n+2))`
-/

namespace A138798.P13667916383401033199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A138799 (n + 2)).toNat

end

end A138798.P13667916383401033199

/-!
# A138799: Values of T(j) corresponding to least possible T(k) with T(k)-T(j)=n, where T(i)>0 are the triangular numbers A000217.

The programs for A138799, there is no canonical definition to state claims against.
-/

/-! ## A138799.P3567673674929635701

`C(A138798(n+2)+1, 2)`
-/

namespace A138799.P3567673674929635701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A138798 (n + 2) + 1).toNat 2

end

end A138799.P3567673674929635701

/-! ## A138799.P1225141827260762444

`C(A138796(n+2)+1, 2)-(n+2)`
-/

namespace A138799.P1225141827260762444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A138796 (n + 2) + 1).toNat 2 : ℤ) - (n + 2 : ℤ)

end

end A138799.P1225141827260762444

/-! ## A138799.P7975773281586651183

`A000217(A138798(n+2))`
-/

namespace A138799.P7975773281586651183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A138798 (n + 2)).toNat

end

end A138799.P7975773281586651183

/-! ## A138799.P9403620473786622994

`A056536(A138798(n+2)²)`
-/

namespace A138799.P9403620473786622994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056536 (A138798 (n + 2) ^ 2).toNat

end

end A138799.P9403620473786622994

/-! ## A138799.P3485995849027415617

`A214928(A138798(n+2)²)`
-/

namespace A138799.P3485995849027415617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214928 (A138798 (n + 2) ^ 2).toNat

end

end A138799.P3485995849027415617

/-! ## A138799.P11301941956226461304

`A161680(A138798(n+2)+1)`
-/

namespace A138799.P11301941956226461304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A138798 (n + 2) + 1).toNat

end

end A138799.P11301941956226461304

/-! ## A138799.P11893886588272472884

`A179865(A138798(n+2)+1)`
-/

namespace A138799.P11893886588272472884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A138798 (n + 2) + 1).toNat

end

end A138799.P11893886588272472884

/-! ## A138799.P5024889305369270852

`A124093(2*A138798(n+2))`
-/

namespace A138799.P5024889305369270852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 (2 * A138798 (n + 2)).toNat

end

end A138799.P5024889305369270852

/-! ## A138799.P13773655165580957536

`A000037(A138798(n+2)²)/2`
-/

namespace A138799.P13773655165580957536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000037 (A138798 (n + 2) ^ 2).toNat : ℚ) / 2

end

end A138799.P13773655165580957536

/-! ## A138799.P12860796235174705099

`A000217(A138796(n+2))-(n+2)`
-/

namespace A138799.P12860796235174705099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A138796 (n + 2)).toNat - (n + 2 : ℤ)

end

end A138799.P12860796235174705099

