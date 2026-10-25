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
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A333400: Lexicographically earliest infinite sequence of distinct integers whose partial sums are all distinct integers.

The programs for A333400, there is no canonical definition to state claims against.
-/

/-! ## A333400.P17498905917519459815

`Δ[A333398(n-n²%(n+1)+1)]`
-/

namespace A333400.P17498905917519459815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333398 ((n : ℤ) - ((n ^ 2 % (n + 1) : ℕ) : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333400.P17498905917519459815

/-! ## A333400.P9940582313032586203

`Δ[A333398(A123108(2*n))]`
-/

namespace A333400.P9940582313032586203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333398 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333400.P9940582313032586203

/-! ## A333400.P2532280474183672436

`Δ[A333398(A000007(n)+n)]`
-/

namespace A333400.P2532280474183672436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333398 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333400.P2532280474183672436

/-! ## A333400.P15311487829507117852

`Δ[A333398(A008619(A004273(n)))]`
-/

namespace A333400.P15311487829507117852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333398 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333400.P15311487829507117852

/-! ## A333400.P6085343862517178515

`Δ[A333398(A255588(A008486(n)))]`
-/

namespace A333400.P6085343862517178515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333398 (A255588 (A008486 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333400.P6085343862517178515

/-! ## A333400.P12728922820106404658

`A333398(n+1)-A333398(A000007(n)+n)`
-/

namespace A333400.P12728922820106404658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333398 (n + 1) - A333398 (A000007 n + (n : ℤ)).toNat

end

end A333400.P12728922820106404658

/-! ## A333400.P11477418122916362599

`A333398(n+1)-A333398(A123108(A005843(n)))`
-/

namespace A333400.P11477418122916362599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333398 (n + 1) - A333398 (A123108 (A005843 n).toNat).toNat

end

end A333400.P11477418122916362599

/-! ## A333400.P4759954883285590028

`Δ[A333398(A007318(A000124(n)))]`
-/

namespace A333400.P4759954883285590028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333398 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333400.P4759954883285590028

/-! ## A333400.P12662774271472830044

`Δ[A333398(A004736(A133263(n)))]`
-/

namespace A333400.P12662774271472830044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333398 (A004736 (A133263 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333400.P12662774271472830044

/-!
# A333401: a(n) is the distance between n and -n in A333400.

The programs for A333401, there is no canonical definition to state claims against.
-/

/-! ## A333401.P5098805110439667505

`A110161(n)+A085058(A001045(n))`
-/

namespace A333401.P5098805110439667505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110161 n + A085058 (A001045 n).toNat

end

end A333401.P5098805110439667505

/-! ## A333401.P7727088493688962739

`A001221(lcm(A002093(n+4), A061561(n)))`
-/

namespace A333401.P7727088493688962739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A002093 (n + 4)) (A061561 n))

end

end A333401.P7727088493688962739

/-! ## A333401.P14653163237327292122

`A097849(A097849(n+1)+A094473(n+1))`
-/

namespace A333401.P14653163237327292122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097849 (A097849 (n + 1) + A094473 (n + 1)).toNat

end

end A333401.P14653163237327292122

/-! ## A333401.P17259075518199975074

`A337686(xor(A000225(n), A255279(n)))`
-/

namespace A333401.P17259075518199975074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337686 (Int.xor (A000225 n) (A255279 n)).toNat

end

end A333401.P17259075518199975074

/-! ## A333401.P15235978571609937009

`A182850(A333942(n)+A176955(n+1))`
-/

namespace A333401.P15235978571609937009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (A333942 n + A176955 (n + 1)).toNat

end

end A333401.P15235978571609937009

/-!
# A333402: Numbers m such that the largest digit in the decimal expansion of 1/m is 1.

The programs for A333402, there is no canonical definition to state claims against.
-/

/-! ## A333402.P905660983377027347

`A048385(A376089(n+1))`
-/

namespace A333402.P905660983377027347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 (A376089 (n + 1)).toNat

end

end A333402.P905660983377027347

/-! ## A333402.P15414176820713645482

`record[floor(A309870(n+3)/A228071(3*n+4))]`
-/

namespace A333402.P15414176820713645482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A309870 (n + 3) : ℚ) / (A228071 (3 * n + 4) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333402.P15414176820713645482

/-! ## A333402.P18343120850805563572

`A347183(A337801(n+1)^A347187(n))`
-/

namespace A333402.P18343120850805563572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347183 (SequenceMachineLib.roundAway ((A337801 (n + 1) : ℚ) ^ (A347187 n : ℤ))).toNat

end

end A333402.P18343120850805563572

/-!
# A333403: Lexicographically earliest sequence of positive integers such that for any m and n with m <= n, a(m) XOR ... XOR a(n) is neither null nor prime (where XOR denotes the bitwise XOR operator).

The programs for A333403, there is no canonical definition to state claims against.
-/

/-! ## A333403.P11819519246616762499

`A333522(val(n+1, 2)+1)`
-/

namespace A333403.P11819519246616762499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333522 (SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A333403.P11819519246616762499

/-! ## A333403.P15922658707246803178

`A333522(∏{e}[n+1, #+1]/∑{d}[n+1, #%2])`
-/

namespace A333403.P15922658707246803178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333522 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / ((∑ d ∈ Nat.divisors (f2 n), d % 2 : ℕ) : ℚ))).toNat

end

end A333403.P15922658707246803178

/-! ## A333403.P15443184855546063274

`A333522(A001511(n+1))`
-/

namespace A333403.P15443184855546063274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333522 (A001511 (n + 1)).toNat

end

end A333403.P15443184855546063274

/-! ## A333403.P5353348219385195443

`A333522(A007814(n+1)+1)`
-/

namespace A333403.P5353348219385195443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333522 (A007814 (n + 1) + 1).toNat

end

end A333403.P5353348219385195443

/-!
# A333405: Number of integers in base n having exactly three distinct digits such that the number formed by the consecutive subsequence of the initial j digits is divisible by j for all j in {1,2,3}.

The programs for A333405, there is no canonical definition to state claims against.
-/

/-! ## A333405.P10733443052227227423

`A026810(n)*A342515(A037314(n))`
-/

namespace A333405.P10733443052227227423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n * A342515 (A037314 n).toNat

end

end A333405.P10733443052227227423

/-! ## A333405.P703433081504038078

`A132781(A140745(n+1))%A011782(n)`
-/

namespace A333405.P703433081504038078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132781 (A140745 (n + 1)).toNat) (A011782 n)

end

end A333405.P703433081504038078

/-! ## A333405.P2818116803471330373

`A280579(A133150(n+1))+A184221(n+1)`
-/

namespace A333405.P2818116803471330373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280579 (A133150 (n + 1)).toNat + A184221 (n + 1)

end

end A333405.P2818116803471330373

/-!
# A333407: Numbers k such that phi(k) = phi(2*k-1) where phi is the Euler totient function (A000010).

The programs for A333407, there is no canonical definition to state claims against.
-/

/-! ## A333407.P17195491852909160550

`record[(A308378(n+1)+1)^((A308378(n+1)+1)%2)]`
-/

namespace A333407.P17195491852909160550
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308378 (n + 1) + 1 : ℚ) ^ (Int.tmod (A308378 (n + 1) + 1) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333407.P17195491852909160550

/-!
# A333408: Numbers k such that s(k) = s(k+1), where s(k) is the unitary analog of the alternating sum-of-divisors function (A307037).

The programs for A333408, there is no canonical definition to state claims against.
-/

/-! ## A333408.P9686525804440538830

`eq[A307037(n+1), A307037(n+2)]+1`
-/

namespace A333408.P9686525804440538830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307037 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A333408.P9686525804440538830

/-!
# A333409: Triangle read by rows: row j lists the first j natural numbers by ascending n-bit bientropy (n >= 8).

The programs for A333409, there is no canonical definition to state claims against.
-/

/-! ## A333409.P10197382005959880420

`A132224(n+1)-A036987(A126646(n))`
-/

namespace A333409.P10197382005959880420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132224 (n + 1) - A036987 (A126646 n).toNat

end

end A333409.P10197382005959880420

/-! ## A333409.P15373231109875796943

`A208728(A227375(n))%A132224(n+1)`
-/

namespace A333409.P15373231109875796943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208728 (A227375 n).toNat) (A132224 (n + 1))

end

end A333409.P15373231109875796943

/-! ## A333409.P9264751489309382451

`A132224(n+1)-A005361(A002997(n+1))`
-/

namespace A333409.P9264751489309382451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132224 (n + 1) - A005361 (A002997 (n + 1)).toNat

end

end A333409.P9264751489309382451

/-! ## A333409.P9708667760418177454

`A132224(n+1)-A001511(A201803(n+1))`
-/

namespace A333409.P9708667760418177454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132224 (n + 1) - A001511 (A201803 (n + 1)).toNat

end

end A333409.P9708667760418177454

/-! ## A333409.P17878387062613102872

`A132224(n+1)-A109057(A244171(n+8))`
-/

namespace A333409.P17878387062613102872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132224 (n + 1) - A109057 (A244171 (n + 8)).toNat

end

end A333409.P17878387062613102872

/-!
# A333411: Number of isomorphism classes which minimize the Wiener index among all triangulations.

The programs for A333411, there is no canonical definition to state claims against.
-/

/-! ## A333411.P17588510881200006447

`A065719(A062743(n+1)+A000203(3*(n+1)))`
-/

namespace A333411.P17588510881200006447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (A062743 (n + 1) + A000203 (3 * (n + 1))).toNat

end

end A333411.P17588510881200006447

/-!
# A333413: Positive integers k such that k divides 13^k + 2.

The programs for A333413, there is no canonical definition to state claims against.
-/

/-! ## A333413.P4780171539489051474

`or(A000079(n), A045763(A104170(n+1)))`
-/

namespace A333413.P4780171539489051474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n) (A045763 (A104170 (n + 1)).toNat)

end

end A333413.P4780171539489051474

/-!
# A333415: Odd positive integers in base 2 read backwards.

The programs for A333415, the canonical program `A333415.P142928759278303053` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333415 has offset 1).

The definition of A333415 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A145341, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A333415.P142928759278303053

`A007088(A145341(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A333415

/-- `A007088(A145341(n+1))` -/
def P142928759278303053.Spec : Prop :=
  ∀ n, P142928759278303053.a n = A333415 (n + 1)

theorem P142928759278303053.correct : P142928759278303053.Spec := by
  intro n
  simp only [A333415, Nat.add_sub_cancel]

end A333415

/-! ## A333415.P7447655106313043693

`A004086(A099821(n+1))`
-/

namespace A333415.P7447655106313043693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A099821 (n + 1)).toNat

end

end A333415.P7447655106313043693

namespace A333415

/-- `A004086(A099821(n+1))` -/
def P7447655106313043693.Spec : Prop :=
  ∀ n, P7447655106313043693.a n = A333415 (n + 1)

end A333415

/-! ## A333415.P9823964196528722642

`A007088(A057889(2*n+1))`
-/

namespace A333415.P9823964196528722642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A057889 (2 * n + 1)).toNat

end

end A333415.P9823964196528722642

namespace A333415

/-- `A007088(A057889(2*n+1))` -/
def P9823964196528722642.Spec : Prop :=
  ∀ n, P9823964196528722642.a n = A333415 (n + 1)

end A333415

/-! ## A333415.P12070305894553380710

`A305989(Δ[n²])`
-/

namespace A333415.P12070305894553380710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A333415.P12070305894553380710

namespace A333415

/-- `A305989(Δ[n²])` -/
def P12070305894553380710.Spec : Prop :=
  ∀ n, P12070305894553380710.a n = A333415 (n + 1)

end A333415

/-! ## A333415.P4089714866317008774

`or(1, A305989(2*n+1))`
-/

namespace A333415.P4089714866317008774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A305989 (2 * n + 1))

end

end A333415.P4089714866317008774

namespace A333415

/-- `or(1, A305989(2*n+1))` -/
def P4089714866317008774.Spec : Prop :=
  ∀ n, P4089714866317008774.a n = A333415 (n + 1)

end A333415

/-! ## A333415.P7099764080579924337

`A007088(A030101(2*n+1))`
-/

namespace A333415.P7099764080579924337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A030101 (2 * n + 1)).toNat

end

end A333415.P7099764080579924337

namespace A333415

/-- `A007088(A030101(2*n+1))` -/
def P7099764080579924337.Spec : Prop :=
  ∀ n, P7099764080579924337.a n = A333415 (n + 1)

end A333415

/-! ## A333415.P5355013116864034688

`A007088(A056539(2*n+1))`
-/

namespace A333415.P5355013116864034688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A056539 (2 * n + 1)).toNat

end

end A333415.P5355013116864034688

namespace A333415

/-- `A007088(A056539(2*n+1))` -/
def P5355013116864034688.Spec : Prop :=
  ∀ n, P5355013116864034688.a n = A333415 (n + 1)

end A333415

/-! ## A333415.P5920070012232176064

`A305989(2*n+1)+A000007(n+1)`
-/

namespace A333415.P5920070012232176064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (2 * n + 1) + A000007 (n + 1)

end

end A333415.P5920070012232176064

namespace A333415

/-- `A305989(2*n+1)+A000007(n+1)` -/
def P5920070012232176064.Spec : Prop :=
  ∀ n, P5920070012232176064.a n = A333415 (n + 1)

end A333415

/-! ## A333415.P10100555792934643447

`A054977(n+1)*A305989(2*n+1)`
-/

namespace A333415.P10100555792934643447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A305989 (2 * n + 1)

end

end A333415.P10100555792934643447

namespace A333415

/-- `A054977(n+1)*A305989(2*n+1)` -/
def P10100555792934643447.Spec : Prop :=
  ∀ n, P10100555792934643447.a n = A333415 (n + 1)

end A333415

/-! ## A333415.P4692868760722056896

`A000034(2*n)*A305989(2*n+1)`
-/

namespace A333415.P4692868760722056896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A305989 (2 * n + 1)

end

end A333415.P4692868760722056896

namespace A333415

/-- `A000034(2*n)*A305989(2*n+1)` -/
def P4692868760722056896.Spec : Prop :=
  ∀ n, P4692868760722056896.a n = A333415 (n + 1)

end A333415

/-! ## A333415.P4412445824000603076

`lcm(A153881(n+2), A305989(2*n+1))`
-/

namespace A333415.P4412445824000603076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A153881 (n + 2)) (A305989 (2 * n + 1))

end

end A333415.P4412445824000603076

namespace A333415

/-- `lcm(A153881(n+2), A305989(2*n+1))` -/
def P4412445824000603076.Spec : Prop :=
  ∀ n, (P4412445824000603076.a n : ℤ) = A333415 (n + 1)

end A333415

/-! ## A333415.P1546748588652433896

`A007088(A055944(2*n+1)-(2*n+1))`
-/

namespace A333415.P1546748588652433896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A055944 (2 * n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A333415.P1546748588652433896

namespace A333415

/-- `A007088(A055944(2*n+1)-(2*n+1))` -/
def P1546748588652433896.Spec : Prop :=
  ∀ n, P1546748588652433896.a n = A333415 (n + 1)

end A333415

/-! ## A333415.P4208749019057078081

`A040001(2*n+1)*A305989(2*n+1)`
-/

namespace A333415.P4208749019057078081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n + 1) * A305989 (2 * n + 1)

end

end A333415.P4208749019057078081

namespace A333415

/-- `A040001(2*n+1)*A305989(2*n+1)` -/
def P4208749019057078081.Spec : Prop :=
  ∀ n, P4208749019057078081.a n = A333415 (n + 1)

end A333415

/-! ## A333415.P15952085732221060252

`A153881(2*(n+1))²*A305989(2*n+1)`
-/

namespace A333415.P15952085732221060252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (2 * (n + 1)) ^ 2 * A305989 (2 * n + 1)

end

end A333415.P15952085732221060252

namespace A333415

/-- `A153881(2*(n+1))²*A305989(2*n+1)` -/
def P15952085732221060252.Spec : Prop :=
  ∀ n, P15952085732221060252.a n = A333415 (n + 1)

end A333415

/-! ## A333415.P15518676587344134967

`A007088(A081431(A004086(2*n+1)))`
-/

namespace A333415.P15518676587344134967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A081431 (A004086 (2 * n + 1)).toNat).toNat

end

end A333415.P15518676587344134967

namespace A333415

/-- `A007088(A081431(A004086(2*n+1)))` -/
def P15518676587344134967.Spec : Prop :=
  ∀ n, P15518676587344134967.a n = A333415 (n + 1)

end A333415

/-! ## A333415.P10755270008670635124

`A305989(2*n+1)*A305989(A001316(n+1))`
-/

namespace A333415.P10755270008670635124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (2 * n + 1) * A305989 (A001316 (n + 1)).toNat

end

end A333415.P10755270008670635124

namespace A333415

/-- `A305989(2*n+1)*A305989(A001316(n+1))` -/
def P10755270008670635124.Spec : Prop :=
  ∀ n, P10755270008670635124.a n = A333415 (n + 1)

end A333415

/-! ## A333415.P14285062884083357993

`A305989(2*n+1)*A305989(A060632(n+1))`
-/

namespace A333415.P14285062884083357993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (2 * n + 1) * A305989 (A060632 (n + 1)).toNat

end

end A333415.P14285062884083357993

namespace A333415

/-- `A305989(2*n+1)*A305989(A060632(n+1))` -/
def P14285062884083357993.Spec : Prop :=
  ∀ n, P14285062884083357993.a n = A333415 (n + 1)

end A333415

/-! ## A333415.P9361398945824506821

`A305989(2*n+1)*A305989(A117592(n+1))`
-/

namespace A333415.P9361398945824506821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (2 * n + 1) * A305989 (A117592 (n + 1)).toNat

end

end A333415.P9361398945824506821

namespace A333415

/-- `A305989(2*n+1)*A305989(A117592(n+1))` -/
def P9361398945824506821.Spec : Prop :=
  ∀ n, P9361398945824506821.a n = A333415 (n + 1)

end A333415

/-! ## A333415.P11434001068005504594

`A007088(A004086(A081432(2*n+1)))`
-/

namespace A333415.P11434001068005504594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A004086 (A081432 (2 * n + 1)).toNat).toNat

end

end A333415.P11434001068005504594

namespace A333415

/-- `A007088(A004086(A081432(2*n+1)))` -/
def P11434001068005504594.Spec : Prop :=
  ∀ n, P11434001068005504594.a n = A333415 (n + 1)

end A333415

/-! ## A333415.P747627344074008582

`A139709(A059893(2*n+1))`
-/

namespace A333415.P747627344074008582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139709 (A059893 (2 * n + 1)).toNat

end

end A333415.P747627344074008582

namespace A333415

/-- `A139709(A059893(2*n+1))` -/
def P747627344074008582.Spec : Prop :=
  ∀ n, P747627344074008582.a n = A333415 (n + 1)

end A333415

/-!
# A333416: Irregular triangle T read by rows: each row represents a finite (increasing) oscillation contained in the infinite (increasing) oscillation O.

The programs for A333416, there is no canonical definition to state claims against.
-/

/-! ## A333416.P17268230756164415107

`A321014(A077168(n)+8)`
-/

namespace A333416.P17268230756164415107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321014 (A077168 n + 8).toNat

end

end A333416.P17268230756164415107

/-! ## A333416.P15788134579020142565

`A072078(A099315(n+3)-3)`
-/

namespace A333416.P15788134579020142565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (A099315 (n + 3) - 3).toNat

end

end A333416.P15788134579020142565

/-! ## A333416.P15064497098070932636

`A001222(A034444(2^n-n+1)+n+1)`
-/

namespace A333416.P15064497098070932636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A034444 ((2 ^ n : ℤ) - (n : ℤ) + 1).toNat + (n : ℤ) + 1).toNat

end

end A333416.P15064497098070932636

/-! ## A333416.P12404502329789864481

`A329312(n+4)+A074290(A095342(n+1))`
-/

namespace A333416.P12404502329789864481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329312 (n + 4) + A074290 (A095342 (n + 1)).toNat

end

end A333416.P12404502329789864481

/-! ## A333416.P805825309161625941

`A336312(A077168(n)+A014486(3*n+2))`
-/

namespace A333416.P805825309161625941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336312 (A077168 n + A014486 (3 * n + 2)).toNat

end

end A333416.P805825309161625941

/-!
# A333417: a(n) is the greatest number k having for every prime <= prime(n) at least one prime partition with least part p, and no such partition having least part > prime(n). If no such k exists then a(n) = 0.

The programs for A333417, there is no canonical definition to state claims against.
-/

/-! ## A333417.P4281621487549005343

`A180306(A351374(n+2))`
-/

namespace A333417.P4281621487549005343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180306 (A351374 (n + 2)).toNat

end

end A333417.P4281621487549005343

/-! ## A333417.P3065724506515138841

`∏{e}[A020707(n), A180306(#)]`
-/

namespace A333417.P3065724506515138841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A180306 (Nat.factorization (f1 n).natAbs p)

end

end A333417.P3065724506515138841

/-! ## A333417.P15635055495743781185

`A180306(n+2)%A007623(A056899(n+1))`
-/

namespace A333417.P15635055495743781185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180306 (n + 2)) (A007623 (A056899 (n + 1)).toNat)

end

end A333417.P15635055495743781185

/-! ## A333417.P13431944154096002897

`A180306(n+2)*A211992(A145786(2*n+1))`
-/

namespace A333417.P13431944154096002897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180306 (n + 2) * A211992 (A145786 (2 * n + 1)).toNat

end

end A333417.P13431944154096002897

/-! ## A333417.P12637868873122202717

`A180306(A000005(2^n)+1)`
-/

namespace A333417.P12637868873122202717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180306 (A000005 (2 ^ n) + 1).toNat

end

end A333417.P12637868873122202717

/-!
# A333421: Primes that are palindromic in factorial base.

The programs for A333421, there is no canonical definition to state claims against.
-/

/-! ## A333421.P12105119287451071923

`p?[A046807(n+1)]`
-/

namespace A333421.P12105119287451071923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A333421.P12105119287451071923

/-! ## A333421.P10398861251595814480

`p?[record[A046807(A065648(n))]]`
-/

namespace A333421.P10398861251595814480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046807 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A333421.P10398861251595814480

/-! ## A333421.P15283282877796119094

`p?[record[A046807(A291766(n))]]`
-/

namespace A333421.P15283282877796119094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046807 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A333421.P15283282877796119094

/-! ## A333421.P15002764660738058897

`p?[record[A046807(A324346(n))]]`
-/

namespace A333421.P15002764660738058897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046807 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A333421.P15002764660738058897

/-!
# A333422: Factorial base emirps: prime numbers whose factorial base reversal is a different prime.

The programs for A333422, there is no canonical definition to state claims against.
-/

/-! ## A333422.P2865250001573802501

`A137669(A215736(n+1)+A137653(2*n+3))`
-/

namespace A333422.P2865250001573802501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137669 (A215736 (n + 1) + A137653 (2 * n + 3)).toNat

end

end A333422.P2865250001573802501

/-!
# A333423: Numbers that are palindromes in primorial base.

The programs for A333423, there is no canonical definition to state claims against.
-/

/-! ## A333423.P13522249416625085452

`eq[0, A261424(A049345(n))]`
-/

namespace A333423.P13522249416625085452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 (A049345 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333423.P13522249416625085452

/-! ## A333423.P185082081130959590

`eq[0, A303534(A277022(n))]`
-/

namespace A333423.P185082081130959590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303534 (A277022 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333423.P185082081130959590

/-! ## A333423.P15983698560766026796

`eq[A333765(floor(sqrt(n))), A333939(n+1)]`
-/

namespace A333423.P15983698560766026796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333765 (Nat.sqrt n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333939 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333423.P15983698560766026796

/-! ## A333423.P17406786567819282315

`eq[∑[-(n*(-1)^n)], A326910(A033676(3*(n+1)))]`
-/

namespace A333423.P17406786567819282315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (-1) ^ n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326910 (A033676 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A333423.P17406786567819282315

/-! ## A333423.P10529757711917114896

`eq[1-(2^(n+1))%(n+1)+n, A000005(A127101(n+1))]`
-/

namespace A333423.P10529757711917114896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 ^ (n + 1) % (n + 1) : ℕ) : ℤ) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A127101 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333423.P10529757711917114896

/-!
# A333424: Primes that are palindromes in primorial base.

The programs for A333424, there is no canonical definition to state claims against.
-/

/-! ## A333424.P2353659014557450382

`p?[A333423(n+1)]`
-/

namespace A333424.P2353659014557450382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A333424.P2353659014557450382

/-! ## A333424.P13128934158282907

`p?[record[A333423(A065648(n))]]`
-/

namespace A333424.P13128934158282907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333423 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A333424.P13128934158282907

/-! ## A333424.P11425389811389820118

`p?[record[A333423(A291766(n))]]`
-/

namespace A333424.P11425389811389820118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333423 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A333424.P11425389811389820118

/-! ## A333424.P7399528368195921382

`p?[record[A333423(A341440(n))]]`
-/

namespace A333424.P7399528368195921382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333423 (A341440 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A333424.P7399528368195921382

/-!
# A333426: Primorial base Niven numbers: numbers divisible by their sum of digits in primorial base (A276150).

The programs for A333426, the canonical program `A333426.P8518684395099641354` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333426 has offset 1).

The definition of A333426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2622 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333426.P595307810675069119

`eq[A132126(n+1), A373834(n)]`
-/

namespace A333426.P595307810675069119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373834 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333426.P595307810675069119

namespace A333426

/-- `eq[A132126(n+1), A373834(n)]` -/
def P595307810675069119.Spec : Prop :=
  ∀ n, (P595307810675069119.a n : ℤ) = A333426 (n + 1)

end A333426

/-! ## A333426.P8518684395099641354

`eq[0, (n+1)%A276150(n+1)]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A333426

/-- `eq[0, (n+1)%A276150(n+1)]+1` -/
def P8518684395099641354.Spec : Prop :=
  ∀ n, (P8518684395099641354.a n : ℤ) = A333426 (n + 1)

theorem P8518684395099641354.correct : P8518684395099641354.Spec := by
  intro n
  simp only [A333426, Nat.add_sub_cancel]

end A333426

/-! ## A333426.P12670370553034779039

`eq[A178334(A178334(n)), A373834(n)]`
-/

namespace A333426.P12670370553034779039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A178334 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373834 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333426.P12670370553034779039

namespace A333426

/-- `eq[A178334(A178334(n)), A373834(n)]` -/
def P12670370553034779039.Spec : Prop :=
  ∀ n, (P12670370553034779039.a n : ℤ) = A333426 (n + 1)

end A333426

/-! ## A333426.P1541788255708192587

`filter[A004773(n+1), A373834(#)]`
-/

namespace A333426.P1541788255708192587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373834 (f1 j).toNat = 1) n)

end

end A333426.P1541788255708192587

namespace A333426

/-- `filter[A004773(n+1), A373834(#)]` -/
def P1541788255708192587.Spec : Prop :=
  ∀ n, P1541788255708192587.a n = A333426 (n + 1)

end A333426

/-! ## A333426.P15185784699549805071

`filter[A071959(n+1), A373834(#)]`
-/

namespace A333426.P15185784699549805071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373834 (f1 j).toNat = 1) n)

end

end A333426.P15185784699549805071

namespace A333426

/-- `filter[A071959(n+1), A373834(#)]` -/
def P15185784699549805071.Spec : Prop :=
  ∀ n, P15185784699549805071.a n = A333426 (n + 1)

end A333426

/-! ## A333426.P17313363458094462287

`filter[A065090(n+1), A373834(#)]`
-/

namespace A333426.P17313363458094462287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373834 (f1 j).toNat = 1) n)

end

end A333426.P17313363458094462287

namespace A333426

/-- `filter[A065090(n+1), A373834(#)]` -/
def P17313363458094462287.Spec : Prop :=
  ∀ n, P17313363458094462287.a n = A333426 (n + 1)

end A333426

/-! ## A333426.P6860728762677204188

`filter[A171581(n+1), A373834(#)]`
-/

namespace A333426.P6860728762677204188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373834 (f1 j).toNat = 1) n)

end

end A333426.P6860728762677204188

namespace A333426

/-- `filter[A171581(n+1), A373834(#)]` -/
def P6860728762677204188.Spec : Prop :=
  ∀ n, P6860728762677204188.a n = A333426 (n + 1)

end A333426

/-! ## A333426.P14629514287509228345

`filter[A173905(n+2), A373834(#)]`
-/

namespace A333426.P14629514287509228345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373834 (f1 j).toNat = 1) n)

end

end A333426.P14629514287509228345

namespace A333426

/-- `filter[A173905(n+2), A373834(#)]` -/
def P14629514287509228345.Spec : Prop :=
  ∀ n, P14629514287509228345.a n = A333426 (n + 1)

end A333426

/-! ## A333426.P2712992398569500191

`filter[A073900(n+1), A373834(#)]`
-/

namespace A333426.P2712992398569500191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373834 (f1 j).toNat = 1) n)

end

end A333426.P2712992398569500191

namespace A333426

/-- `filter[A073900(n+1), A373834(#)]` -/
def P2712992398569500191.Spec : Prop :=
  ∀ n, P2712992398569500191.a n = A333426 (n + 1)

end A333426

/-! ## A333426.P8945906497430707354

`filter[A338924(n+1), A373834(#)]`
-/

namespace A333426.P8945906497430707354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373834 (f1 j).toNat = 1) n)

end

end A333426.P8945906497430707354

namespace A333426

/-- `filter[A338924(n+1), A373834(#)]` -/
def P8945906497430707354.Spec : Prop :=
  ∀ n, P8945906497430707354.a n = A333426 (n + 1)

end A333426

/-! ## A333426.P7541278609586582202

`filter[A073899(n+1), A373834(#)]`
-/

namespace A333426.P7541278609586582202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373834 (f1 j).toNat = 1) n)

end

end A333426.P7541278609586582202

namespace A333426

/-- `filter[A073899(n+1), A373834(#)]` -/
def P7541278609586582202.Spec : Prop :=
  ∀ n, P7541278609586582202.a n = A333426 (n + 1)

end A333426

/-! ## A333426.P17170227831451680021

`filter[A089088(n), A373834(#)]`
-/

namespace A333426.P17170227831451680021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373834 (f1 j).toNat = 1) n)

end

end A333426.P17170227831451680021

namespace A333426

/-- `filter[A089088(n), A373834(#)]` -/
def P17170227831451680021.Spec : Prop :=
  ∀ n, P17170227831451680021.a n = A333426 (n + 1)

end A333426

/-! ## A333426.P13503321546995909758

`filter[A116966(n), A373834(#)]`
-/

namespace A333426.P13503321546995909758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373834 (f1 j).toNat = 1) n)

end

end A333426.P13503321546995909758

namespace A333426

/-- `filter[A116966(n), A373834(#)]` -/
def P13503321546995909758.Spec : Prop :=
  ∀ n, P13503321546995909758.a n = A333426 (n + 1)

end A333426

/-! ## A333426.P17178205845212889444

`filter[A337843(n), A373834(#)]`
-/

namespace A333426.P17178205845212889444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373834 (f1 j).toNat = 1) n)

end

end A333426.P17178205845212889444

namespace A333426

/-- `filter[A337843(n), A373834(#)]` -/
def P17178205845212889444.Spec : Prop :=
  ∀ n, P17178205845212889444.a n = A333426 (n + 1)

end A333426

/-! ## A333426.P9635393269942315211

`eq[A054977(n), A373834(n)]`
-/

namespace A333426.P9635393269942315211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373834 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333426.P9635393269942315211

namespace A333426

/-- `eq[A054977(n), A373834(n)]` -/
def P9635393269942315211.Spec : Prop :=
  ∀ n, (P9635393269942315211.a n : ℤ) = A333426 (n + 1)

end A333426

/-! ## A333426.P7287312426849671893

`eq[A057427(n), A373834(n)]`
-/

namespace A333426.P7287312426849671893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373834 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333426.P7287312426849671893

namespace A333426

/-- `eq[A057427(n), A373834(n)]` -/
def P7287312426849671893.Spec : Prop :=
  ∀ n, (P7287312426849671893.a n : ℤ) = A333426 (n + 1)

end A333426

/-! ## A333426.P11861969870919274104

`eq[A158388(n), A373834(n)]`
-/

namespace A333426.P11861969870919274104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373834 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333426.P11861969870919274104

namespace A333426

/-- `eq[A158388(n), A373834(n)]` -/
def P11861969870919274104.Spec : Prop :=
  ∀ n, (P11861969870919274104.a n : ℤ) = A333426 (n + 1)

end A333426

/-! ## A333426.P981357912597808262

`filter[A153151(n+1), A373834(#)]`
-/

namespace A333426.P981357912597808262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373834 (f1 j).toNat = 1) n)

end

end A333426.P981357912597808262

namespace A333426

/-- `filter[A153151(n+1), A373834(#)]` -/
def P981357912597808262.Spec : Prop :=
  ∀ n, P981357912597808262.a n = A333426 (n + 1)

end A333426

/-! ## A333426.P7702890385898491258

`filter[A292576(n+1), A373834(#)]`
-/

namespace A333426.P7702890385898491258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373834 (f1 j).toNat = 1) n)

end

end A333426.P7702890385898491258

namespace A333426

/-- `filter[A292576(n+1), A373834(#)]` -/
def P7702890385898491258.Spec : Prop :=
  ∀ n, P7702890385898491258.a n = A333426 (n + 1)

end A333426

/-! ## A333426.P18373817294892654569

`eq[lcm(n, A276150(n)), A028310(n)]`
-/

namespace A333426.P18373817294892654569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A276150 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333426.P18373817294892654569

namespace A333426

/-- `eq[lcm(n, A276150(n)), A028310(n)]` -/
def P18373817294892654569.Spec : Prop :=
  ∀ n, (P18373817294892654569.a n : ℤ) = A333426 (n + 1)

end A333426

/-!
# A333427: Numbers k such that k and k+1 are both primorial base Niven numbers (A333426).

The programs for A333427, the canonical program `A333427.P1257739180150662020` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333427 has offset 1).

The definition of A333427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333427.P1257739180150662020

`∩[A333426(n+1)-1, A333426(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A333427

/-- `∩[A333426(n+1)-1, A333426(n+1)]` -/
def P1257739180150662020.Spec : Prop :=
  ∀ n, (P1257739180150662020.a n : ℤ) = A333427 (n + 1)

theorem P1257739180150662020.correct : P1257739180150662020.Spec := by
  intro n
  simp only [A333427, Nat.add_sub_cancel]

end A333427

/-! ## A333427.P6586877045676772750

`∩[A333426(n+1), A023443(A333426(n+1))]`
-/

namespace A333427.P6586877045676772750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A333426 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333427.P6586877045676772750

namespace A333427

/-- `∩[A333426(n+1), A023443(A333426(n+1))]` -/
def P6586877045676772750.Spec : Prop :=
  ∀ n, (P6586877045676772750.a n : ℤ) = A333427 (n + 1)

end A333427

/-! ## A333427.P7372285753002242060

`eq[A001222(A278226(n)), A187730(n+1)]`
-/

namespace A333427.P7372285753002242060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278226 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187730 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333427.P7372285753002242060

namespace A333427

/-- `eq[A001222(A278226(n)), A187730(n+1)]` -/
def P7372285753002242060.Spec : Prop :=
  ∀ n, (P7372285753002242060.a n : ℤ) = A333427 (n + 1)

end A333427

/-!
# A333428: Starts of runs of 3 consecutive primorial base Niven numbers (A333426).

The programs for A333428, the canonical program `A333428.P1752145011509704751` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333428 has offset 1).

The definition of A333428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333428.P1752145011509704751

`∩[A333427(n+1)-1, A333427(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A333428

/-- `∩[A333427(n+1)-1, A333427(n+1)]` -/
def P1752145011509704751.Spec : Prop :=
  ∀ n, (P1752145011509704751.a n : ℤ) = A333428 (n + 1)

theorem P1752145011509704751.correct : P1752145011509704751.Spec := by
  intro n
  simp only [A333428, Nat.add_sub_cancel]

end A333428

/-! ## A333428.P13728760681739382616

`∩[A333427(n+1), A023443(A333427(n+1))]`
-/

namespace A333428.P13728760681739382616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A333427 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333428.P13728760681739382616

namespace A333428

/-- `∩[A333427(n+1), A023443(A333427(n+1))]` -/
def P13728760681739382616.Spec : Prop :=
  ∀ n, (P13728760681739382616.a n : ℤ) = A333428 (n + 1)

end A333428

/-!
# A333429: A(n,k) is the n-th number m that divides k^m + 1 (or 0 if m does not exist); square array A(n,k), n>=1, k>=1, read by antidiagonals.

The programs for A333429, there is no canonical definition to state claims against.
-/

/-! ## A333429.P16377624243176610345

`A287016(A076014(n+1)+1)`
-/

namespace A333429.P16377624243176610345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287016 (A076014 (n + 1) + 1).toNat

end

end A333429.P16377624243176610345

/-! ## A333429.P16817287462814559764

`and(A276237(n+2), A276243(A173882(n)))`
-/

namespace A333429.P16817287462814559764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A276237 (n + 2)) (A276243 (A173882 n).toNat)

end

end A333429.P16817287462814559764

/-! ## A333429.P1648918900635269873

`and(A001359(A276255(3*n+2)), A276237(n+2))`
-/

namespace A333429.P1648918900635269873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001359 (A276255 (3 * n + 2)).toNat) (A276237 (n + 2))

end

end A333429.P1648918900635269873

/-!
# A333430: a(n) is the n-th number m that divides n^m + 1 (or 0 if m does not exist).

The programs for A333430, there is no canonical definition to state claims against.
-/

/-! ## A333430.P14395157325649213090

`A333429(∑[4*n]+1)`
-/

namespace A333430.P14395157325649213090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333429 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A333430.P14395157325649213090

/-! ## A333430.P1678745129446237695

`A333429(A001844(n))+char[10]`
-/

namespace A333430.P1678745129446237695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333429 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A333430.P1678745129446237695

/-! ## A333430.P11616987975913630562

`A343608(n)+A333429(A001844(n))`
-/

namespace A333430.P11616987975913630562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343608 n + A333429 (A001844 n).toNat

end

end A333430.P11616987975913630562

/-! ## A333430.P10412894835328833023

`A333429(A001844(n))%A007946(n)`
-/

namespace A333430.P10412894835328833023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333429 (A001844 n).toNat) (A007946 n)

end

end A333430.P10412894835328833023

/-! ## A333430.P4729512537674274620

`gcd(A000038(n), A333429(A001844(n)))`
-/

namespace A333430.P4729512537674274620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A333429 (A001844 n).toNat)

end

end A333430.P4729512537674274620

/-!
# A333431: Numbers k such that k! has a factorial number of decimal digits.

The programs for A333431, there is no canonical definition to state claims against.
-/

/-! ## A333431.P17309314049370985391

`record[A243060(n+1)-A232544(n)]`
-/

namespace A333431.P17309314049370985391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (n + 1) - A232544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333431.P17309314049370985391

/-!
# A333432: A(n,k) is the n-th number m that divides k^m - 1 (or 0 if m does not exist); square array A(n,k), n>=1, k>=1, read by antidiagonals.

The programs for A333432, there is no canonical definition to state claims against.
-/

/-! ## A333432.P6429303378564092837

`A333500(n+1)%A000523(A106388(n+1))`
-/

namespace A333432.P6429303378564092837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333500 (n + 1)) (A000523 (A106388 (n + 1)).toNat)

end

end A333432.P6429303378564092837

/-! ## A333432.P1550377120346522886

`A333500(∑[A263144(A333500(n+1))])`
-/

namespace A333432.P1550377120346522886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263144 (A333500 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333500 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A333432.P1550377120346522886

/-! ## A333432.P4399029625341406120

`A046029(A333500(n+1)+1)`
-/

namespace A333432.P4399029625341406120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046029 (A333500 (n + 1) + 1).toNat

end

end A333432.P4399029625341406120

/-! ## A333432.P15449573117291419968

`A345406(A333500(n+1)+1)`
-/

namespace A333432.P15449573117291419968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345406 (A333500 (n + 1) + 1).toNat

end

end A333432.P15449573117291419968

/-! ## A333432.P7696266128152341431

`A001222(2^A333500(n+1))`
-/

namespace A333432.P7696266128152341431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A333500 (n + 1) : ℤ))).toNat

end

end A333432.P7696266128152341431

/-!
# A333433: a(n) is the n-th number m that divides n^m - 1 (or 0 if m does not exist).

The programs for A333433, there is no canonical definition to state claims against.
-/

/-! ## A333433.P15202921546586059126

`A333432(∑[4*n]+1)`
-/

namespace A333433.P15202921546586059126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333432 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A333433.P15202921546586059126

/-! ## A333433.P12996347302783843404

`A333432(A001844(n))+char[23]`
-/

namespace A333433.P12996347302783843404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333432 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A333433.P12996347302783843404

/-! ## A333433.P15088814103670909721

`gcd(A000038(n), A333432(A001844(n)))`
-/

namespace A333433.P15088814103670909721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A333432 (A001844 n).toNat)

end

end A333433.P15088814103670909721

/-! ## A333433.P4106477491620884887

`lcm(A093178(n), A333432(A001844(n)))`
-/

namespace A333433.P4106477491620884887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A093178 n) (A333432 (A001844 n).toNat)

end

end A333433.P4106477491620884887

/-! ## A333433.P3046411836126304360

`A333432(A001844(n))%A115447(n+1)`
-/

namespace A333433.P3046411836126304360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333432 (A001844 n).toNat) (A115447 (n + 1))

end

end A333433.P3046411836126304360

/-!
# A333434: The number of regions inside a diagonal-edged (or diamond-shaped) checkerboard of width and height 2*n-1 formed by the straight line segments mutually connecting any two of the 8*n-4 vertices on the perimeter.

The programs for A333434, there is no canonical definition to state claims against.
-/

/-! ## A333434.P3041570804999080972

`A333460(n+1)+1-A333459(n+1)`
-/

namespace A333434.P3041570804999080972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333460 (n + 1) + (1 - A333459 (n + 1))

end

end A333434.P3041570804999080972

/-! ## A333434.P411774994392494256

`A333460(n+1)-A066182(A333459(n+1))`
-/

namespace A333434.P411774994392494256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333460 (n + 1) - A066182 (A333459 (n + 1)).toNat

end

end A333434.P411774994392494256

/-!
# A333437: Triangle read by rows: T(n,k) is the number of Egyptian fractions 1 = 1/x_1 + ... + 1/x_k , with 0 < x_1 <= ... <= x_k = n.

The programs for A333437, there is no canonical definition to state claims against.
-/

/-! ## A333437.P11750437268520350280

`C(A274537(n), A103997(A028326(n)))`
-/

namespace A333437.P11750437268520350280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A274537 n).toNat (A103997 (A028326 n).toNat).toNat

end

end A333437.P11750437268520350280

/-! ## A333437.P12200237100770591865

`and(A008706(A299060(n+1)), A274537(n))`
-/

namespace A333437.P12200237100770591865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008706 (A299060 (n + 1)).toNat) (A274537 n)

end

end A333437.P12200237100770591865

/-! ## A333437.P17691212173581328586

`A134024(A320606(n+1)*A320638(n+1))`
-/

namespace A333437.P17691212173581328586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 (A320606 (n + 1) * A320638 (n + 1)).toNat

end

end A333437.P17691212173581328586

/-! ## A333437.P5763104620667248711

`A060130(lcm(A320606(n+1), A320638(n+1)))`
-/

namespace A333437.P5763104620667248711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (Int.lcm (A320606 (n + 1)) (A320638 (n + 1)))

end

end A333437.P5763104620667248711

/-! ## A333437.P5236222072249350456

`A187972(A217285(n))*A274537(n)`
-/

namespace A333437.P5236222072249350456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187972 (A217285 n).toNat * A274537 n

end

end A333437.P5236222072249350456

/-!
# A333438: Number of self-avoiding walks of any length from NW corner to its adjacent points on an n X n grid or lattice.

The programs for A333438, there is no canonical definition to state claims against.
-/

/-! ## A333438.P11003743748297860145

`2*A333439(n+2)`
-/

namespace A333438.P11003743748297860145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A333439 (n + 2)

end

end A333438.P11003743748297860145

/-! ## A333438.P15363784865749981788

`A333439(A020725(n+1))+A333439(n+2)`
-/

namespace A333438.P15363784865749981788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333439 (A020725 (n + 1)).toNat + A333439 (n + 2)

end

end A333438.P15363784865749981788

/-! ## A333438.P10585541509015350846

`A333439(A162421(n+1))+A333439(n+2)`
-/

namespace A333438.P10585541509015350846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333439 (A162421 (n + 1)).toNat + A333439 (n + 2)

end

end A333438.P10585541509015350846

/-! ## A333438.P10162175633691227382

`2*(A333246(n+2)+1)`
-/

namespace A333438.P10162175633691227382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A333246 (n + 2) + 1)

end

end A333438.P10162175633691227382

/-! ## A333438.P13094492030154276189

`A333246(n+2)+A333439(n+2)+1`
-/

namespace A333438.P13094492030154276189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333246 (n + 2) + (A333439 (n + 2) + 1)

end

end A333438.P13094492030154276189

/-!
# A333439: a(n) = A333438(n)/2.

The programs for A333439, there is no canonical definition to state claims against.
-/

/-! ## A333439.P14789281293206751795

`A333438(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A333439.P14789281293206751795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333438 (n + 2) : ℚ) / 2

end

end A333439.P14789281293206751795

/-! ## A333439.P2635015606499710362

`A333246(n+2)+1`
-/

namespace A333439.P2635015606499710362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333246 (n + 2) + 1

end

end A333439.P2635015606499710362

/-!
# A333440: Numbers where each digit can be paired with a digit of the same value at another position so that two pairs can be nested but cannot otherwise overlap.

The programs for A333440, there is no canonical definition to state claims against.
-/

/-! ## A333440.P13024590636662869890

`record[A321797(11*n)]`
-/

namespace A333440.P13024590636662869890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 (11 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333440.P13024590636662869890

/-! ## A333440.P14777016676163028495

`∪[A028310(A056524(n+1)), A338754(n)]`
-/

namespace A333440.P14777016676163028495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A056524 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338754 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A333440.P14777016676163028495

/-! ## A333440.P16943436444372971615

`∩[A221221(n+1), A352535(n+1)]`
-/

namespace A333440.P16943436444372971615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333440.P16943436444372971615

/-! ## A333440.P10675253145142426472

`∩[A299792(n+1), A352535(n+1)]`
-/

namespace A333440.P10675253145142426472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333440.P10675253145142426472

/-! ## A333440.P6244297100825221724

`∪[11*A066492(n+1), A321536(n^A109014(n))]`
-/

namespace A333440.P6244297100825221724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A066492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321536 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A109014 n : ℤ))).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A333440.P6244297100825221724

/-!
# A333441: Numbers where each binary digit can be paired with a digit of the same value at another position so that two pairs can be nested but cannot otherwise overlap.

The programs for A333441, the canonical program `A333441.P17876403174661833078` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333441 has offset 1).

The definition of A333441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333441.P17876403174661833078

`∩[A039004(n+1), A053754(n+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A333441

/-- `∩[A039004(n+1), A053754(n+1)]` -/
def P17876403174661833078.Spec : Prop :=
  ∀ n, (P17876403174661833078.a n : ℤ) = A333441 (n + 1)

theorem P17876403174661833078.correct : P17876403174661833078.Spec := by
  intro n
  simp only [A333441, Nat.add_sub_cancel]

end A333441

/-! ## A333441.P9230751254146073316

`eq[A065359(A059010(2*n+1)), A065359(2*n)]`
-/

namespace A333441.P9230751254146073316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A059010 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333441.P9230751254146073316

namespace A333441

/-- `eq[A065359(A059010(2*n+1)), A065359(2*n)]` -/
def P9230751254146073316.Spec : Prop :=
  ∀ n, (P9230751254146073316.a n : ℤ) = A333441 (n + 1)

end A333441

/-! ## A333441.P10712496460738203868

`filter[A039004(n+1), A298952(#)]`
-/

namespace A333441.P10712496460738203868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A298952 (f1 j).toNat = 1) n)

end

end A333441.P10712496460738203868

namespace A333441

/-- `filter[A039004(n+1), A298952(#)]` -/
def P10712496460738203868.Spec : Prop :=
  ∀ n, P10712496460738203868.a n = A333441 (n + 1)

end A333441

/-! ## A333441.P15396256939904603953

`eq[A008687(n+1)%2, cos(A065359(n))]`
-/

namespace A333441.P15396256939904603953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008687 (n + 1)) 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A065359 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A333441.P15396256939904603953

namespace A333441

/-- `eq[A008687(n+1)%2, cos(A065359(n))]` -/
def P15396256939904603953.Spec : Prop :=
  ∀ n, (P15396256939904603953.a n : ℤ) = A333441 (n + 1)

end A333441

/-! ## A333441.P16496268911139523844

`eq[A065359(n), A319998(A059010(n))]`
-/

namespace A333441.P16496268911139523844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319998 (A059010 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333441.P16496268911139523844

namespace A333441

/-- `eq[A065359(n), A319998(A059010(n))]` -/
def P16496268911139523844.Spec : Prop :=
  ∀ n, (P16496268911139523844.a n : ℤ) = A333441 (n + 1)

end A333441

/-! ## A333441.P17888348598728373586

`eq[A139352(A145341(n+1)), A139352(n)]`
-/

namespace A333441.P17888348598728373586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A145341 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333441.P17888348598728373586

namespace A333441

/-- `eq[A139352(A145341(n+1)), A139352(n)]` -/
def P17888348598728373586.Spec : Prop :=
  ∀ n, (P17888348598728373586.a n : ℤ) = A333441 (n + 1)

end A333441

/-! ## A333441.P12795094219771662985

`eq[1, A037861(2*A129594(n))]`
-/

namespace A333441.P12795094219771662985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (2 * A129594 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333441.P12795094219771662985

namespace A333441

/-- `eq[1, A037861(2*A129594(n))]` -/
def P12795094219771662985.Spec : Prop :=
  ∀ n, (P12795094219771662985.a n : ℤ) = A333441 (n + 1)

end A333441

/-! ## A333441.P8366751675977234970

`eq[1, A037861(2*A165199(n))]`
-/

namespace A333441.P8366751675977234970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (2 * A165199 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333441.P8366751675977234970

namespace A333441

/-- `eq[1, A037861(2*A165199(n))]` -/
def P8366751675977234970.Spec : Prop :=
  ∀ n, (P8366751675977234970.a n : ℤ) = A333441 (n + 1)

end A333441

/-! ## A333441.P10474752713028845543

`eq[A000007(n), A037861(A165199(n))]`
-/

namespace A333441.P10474752713028845543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A165199 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333441.P10474752713028845543

namespace A333441

/-- `eq[A000007(n), A037861(A165199(n))]` -/
def P10474752713028845543.Spec : Prop :=
  ∀ n, (P10474752713028845543.a n : ℤ) = A333441 (n + 1)

end A333441

/-!
# A333442: For any n > 0, let Sum_{k >= 0} d_k / 10^k be the decimal representation of 1/n; a(n) is the least m such that d_m = max_{k >= 0} d_k.

The programs for A333442, there is no canonical definition to state claims against.
-/

/-! ## A333442.P6288592866869062985

`A004218(A077194(n+1))`
-/

namespace A333442.P6288592866869062985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A077194 (n + 1)).toNat

end

end A333442.P6288592866869062985

/-! ## A333442.P6005454041416579960

`A124764(A017101(n))*A124765(n)`
-/

namespace A333442.P6005454041416579960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (A017101 n).toNat * A124765 n

end

end A333442.P6005454041416579960

/-! ## A333442.P11940293591677357204

`A091050(A119330(n))*A353688(n)`
-/

namespace A333442.P11940293591677357204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091050 (A119330 n).toNat * A353688 n

end

end A333442.P11940293591677357204

/-! ## A333442.P11796264940398412297

`A025142(A323867(n))*A334029(n)`
-/

namespace A333442.P11796264940398412297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025142 (A323867 n).toNat * A334029 n

end

end A333442.P11796264940398412297

/-! ## A333442.P220675994680923018

`A025142(A323867(n))*A334297(n)`
-/

namespace A333442.P220675994680923018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025142 (A323867 n).toNat * A334297 n

end

end A333442.P220675994680923018

/-!
# A333443: Numbers k such that both k and k+1 are sums of two positive squares in 2 or more ways.

The programs for A333443, there is no canonical definition to state claims against.
-/

/-! ## A333443.P9602860746014386043

`∩[A007692(n+1)-1, A007692(n+1)]`
-/

namespace A333443.P9602860746014386043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007692 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333443.P9602860746014386043

/-! ## A333443.P15799759506059075591

`∩[A007692(n+1), A023443(A007692(n+1))]`
-/

namespace A333443.P15799759506059075591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A007692 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333443.P15799759506059075591

/-!
# A333444: 

The programs for A333444, there is no canonical definition to state claims against.
-/

/-! ## A333444.P3651584412052331736

`A337408(∑[n+2])`
-/

namespace A333444.P3651584412052331736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337408 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333444.P3651584412052331736

/-!
# A333447: a(n) is the integer corresponding to a bit-string representation of the von Neumann ordinal representation of n, with largest sets listed first, and with '{' represented by the bit 1, '}' represented by the bit zero, and ignoring commas.

The programs for A333447, the canonical program `A333447.P15733270275057601932` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333447 has offset 0).

The definition of A333447 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A333447.P15733270275057601932

`2^(2^(n+1)-1)-2^(2^n-1)+a(n-1)*(2^(2^n-1)+1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A333447

/-- `2^(2^(n+1)-1)-2^(2^n-1)+a(n-1)*(2^(2^n-1)+1)` -/
def P15733270275057601932.Spec : Prop :=
  ∀ n, P15733270275057601932.a n = (A333447 n : ℚ)

end A333447

/-!
# A333448: Smallest positive divisibility coefficient of A045572(n).

The programs for A333448, the canonical program `A333448.P6215572111034123379` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333448 has offset 1).

The definition of A333448 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A333448.P6215572111034123379

`2*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=1, a(4)=10, a(5)=4, a(6)=12, a(7)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A333448

/-- `2*a(n-4)-a(n-8)` -/
def P6215572111034123379.Spec : Prop :=
  ∀ n, P6215572111034123379.a n = A333448 (n + 1)

theorem P6215572111034123379.correct : P6215572111034123379.Spec := by
  intro n
  simp only [A333448, Nat.add_sub_cancel]

end A333448

/-! ## A333448.P5234880695135058655

`A045572(n+1)-A057427(n)*A344734(n+1)`
-/

namespace A333448.P5234880695135058655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1) - A057427 n * A344734 (n + 1)

end

end A333448.P5234880695135058655

namespace A333448

/-- `A045572(n+1)-A057427(n)*A344734(n+1)` -/
def P5234880695135058655.Spec : Prop :=
  ∀ n, P5234880695135058655.a n = A333448 (n + 1)

end A333448

/-! ## A333448.P2078656212188099342

`A028310(lt[5*n, lcm(10, n)]-A344734(n+1))`
-/

namespace A333448.P2078656212188099342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 10 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - A344734 (n + 1)).toNat

end

end A333448.P2078656212188099342

namespace A333448

/-- `A028310(lt[5*n, lcm(10, n)]-A344734(n+1))` -/
def P2078656212188099342.Spec : Prop :=
  ∀ n, P2078656212188099342.a n = A333448 (n + 1)

end A333448

/-! ## A333448.P12588643719267745781

`A028310(record[lcm(50, n+5)/50]-A344734(n+1))`
-/

namespace A333448.P12588643719267745781
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 50 (n + 5) : ℚ) / 50

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A344734 (n + 1) : ℚ))).toNat

end

end A333448.P12588643719267745781

namespace A333448

/-- `A028310(record[lcm(50, n+5)/50]-A344734(n+1))` -/
def P12588643719267745781.Spec : Prop :=
  ∀ n, P12588643719267745781.a n = A333448 (n + 1)

end A333448

/-! ## A333448.P7233470844458860434

`A028310(or(1, comp[3*n]+n)-A344734(n+1))`
-/

namespace A333448.P7233470844458860434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - A344734 (n + 1)).toNat

end

end A333448.P7233470844458860434

namespace A333448

/-- `A028310(or(1, comp[3*n]+n)-A344734(n+1))` -/
def P7233470844458860434.Spec : Prop :=
  ∀ n, P7233470844458860434.a n = A333448 (n + 1)

end A333448

/-! ## A333448.P15997627744657894105

`A028310(eq[gcd(10, n)+n, n+1]-A344734(n+1))`
-/

namespace A333448.P15997627744657894105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 10 n + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - A344734 (n + 1)).toNat

end

end A333448.P15997627744657894105

namespace A333448

/-- `A028310(eq[gcd(10, n)+n, n+1]-A344734(n+1))` -/
def P15997627744657894105.Spec : Prop :=
  ∀ n, P15997627744657894105.a n = A333448 (n + 1)

end A333448

/-! ## A333448.P17748383493699485060

`A028310(2*round(5*n/4)+1-A344734(n+1))`
-/

namespace A333448.P17748383493699485060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * SequenceMachineLib.roundAway (5 * ((n : ℚ) / 4)) + 1 - A344734 (n + 1)).toNat

end

end A333448.P17748383493699485060

namespace A333448

/-- `A028310(2*round(5*n/4)+1-A344734(n+1))` -/
def P17748383493699485060.Spec : Prop :=
  ∀ n, P17748383493699485060.a n = A333448 (n + 1)

end A333448

/-! ## A333448.P10924464698502115805

`A045572(n+1)-A344734(n+1)%A001589(n)`
-/

namespace A333448.P10924464698502115805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1) - Int.tmod (A344734 (n + 1)) (A001589 n)

end

end A333448.P10924464698502115805

namespace A333448

/-- `A045572(n+1)-A344734(n+1)%A001589(n)` -/
def P10924464698502115805.Spec : Prop :=
  ∀ n, P10924464698502115805.a n = A333448 (n + 1)

end A333448

/-!
# A333449: a(n) = Sum_{k=1..n} prime(floor(n/k)).

The programs for A333449, the canonical program `A333449.P15383882884305754423` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333449 has offset 1).

The definition of A333449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333449.P15383882884305754423

`∑[∑{d}[n+1, A054541(#)]]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A333449

/-- `∑[∑{d}[n+1, A054541(#)]]` -/
def P15383882884305754423.Spec : Prop :=
  ∀ n, P15383882884305754423.a n = A333449 (n + 1)

theorem P15383882884305754423.correct : P15383882884305754423.Spec := by
  intro n
  simp only [A333449, Nat.add_sub_cancel]

end A333449

/-! ## A333449.P1149997673274080524

`∑[2*A102629(A102629(n+1))%3+n]`
-/

namespace A333449.P1149997673274080524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A102629 (A102629 (n + 1)).toNat) 3 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333449.P1149997673274080524

namespace A333449

/-- `∑[2*A102629(A102629(n+1))%3+n]` -/
def P1149997673274080524.Spec : Prop :=
  ∀ n, P1149997673274080524.a n = A333449 (n + 1)

end A333449

/-! ## A333449.P4454750599395615396

`A077169(n)+A056792(A077442(n))`
-/

namespace A333449.P4454750599395615396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077169 n + A056792 (A077442 n).toNat

end

end A333449.P4454750599395615396

namespace A333449

/-- `A077169(n)+A056792(A077442(n))` -/
def P4454750599395615396.Spec : Prop :=
  ∀ n, P4454750599395615396.a n = A333449 (n + 1)

end A333449

/-! ## A333449.P6687485265694898760

`∑[A283431(9*n+4)]`
-/

namespace A333449.P6687485265694898760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283431 (9 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333449.P6687485265694898760

namespace A333449

/-- `∑[A283431(9*n+4)]` -/
def P6687485265694898760.Spec : Prop :=
  ∀ n, P6687485265694898760.a n = A333449 (n + 1)

end A333449

/-! ## A333449.P13428791682647958515

`∑[A044050(2^n+6)]`
-/

namespace A333449.P13428791682647958515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044050 (2 ^ n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333449.P13428791682647958515

namespace A333449

/-- `∑[A044050(2^n+6)]` -/
def P13428791682647958515.Spec : Prop :=
  ∀ n, P13428791682647958515.a n = A333449 (n + 1)

end A333449

/-!
# A333450: a(n) = Sum_{k=1..n} mu(k) * prime(floor(n/k)).

The programs for A333450, the canonical program `A333450.P9039608960163679995` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333450 has offset 1).

The definition of A333450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333450.P9039608960163679995

`∑[A333471(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A333450

/-- `∑[A333471(n+1)]` -/
def P9039608960163679995.Spec : Prop :=
  ∀ n, P9039608960163679995.a n = A333450 (n + 1)

theorem P9039608960163679995.correct : P9039608960163679995.Spec := by
  intro n
  simp only [A333450, Nat.add_sub_cancel]

end A333450

/-! ## A333450.P14269444891218974485

`abs(∑[A333471(-xor(n, -1))])`
-/

namespace A333450.P14269444891218974485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333471 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A333450.P14269444891218974485

namespace A333450

/-- `abs(∑[A333471(-xor(n, -1))])` -/
def P14269444891218974485.Spec : Prop :=
  ∀ n, P14269444891218974485.a n = A333450 (n + 1)

end A333450

/-! ## A333450.P16751376350697561149

`abs(∑[A333471(ϕ²-(ϕ-n))])`
-/

namespace A333450.P16751376350697561149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333471 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A333450.P16751376350697561149

namespace A333450

/-- `abs(∑[A333471(ϕ²-(ϕ-n))])` -/
def P16751376350697561149.Spec : Prop :=
  ∀ n, P16751376350697561149.a n = A333450 (n + 1)

end A333450

/-! ## A333450.P14870872225537825271

`A000027(∑[A333471(-xor(n, -1))])`
-/

namespace A333450.P14870872225537825271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333471 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A333450.P14870872225537825271

namespace A333450

/-- `A000027(∑[A333471(-xor(n, -1))])` -/
def P14870872225537825271.Spec : Prop :=
  ∀ n, P14870872225537825271.a n = A333450 (n + 1)

end A333450

/-! ## A333450.P959924086762716686

`gcd(∑[A333471(ϕ²-(ϕ-n))], A000038(n))`
-/

namespace A333450.P959924086762716686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333471 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A333450.P959924086762716686

namespace A333450

/-- `gcd(∑[A333471(ϕ²-(ϕ-n))], A000038(n))` -/
def P959924086762716686.Spec : Prop :=
  ∀ n, (P959924086762716686.a n : ℤ) = A333450 (n + 1)

end A333450

/-! ## A333450.P11802910987520776314

`∑[A007318(C(2, n))*A333471(ϕ²-(ϕ-n))]`
-/

namespace A333450.P11802910987520776314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A333471 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333450.P11802910987520776314

namespace A333450

/-- `∑[A007318(C(2, n))*A333471(ϕ²-(ϕ-n))]` -/
def P11802910987520776314.Spec : Prop :=
  ∀ n, P11802910987520776314.a n = A333450 (n + 1)

end A333450

/-! ## A333450.P10773263677829158987

`∑[∑{d}[n+1, A008683(#)*A054541((n+1)/#)]]`
-/

namespace A333450.P10773263677829158987
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008683 d * A054541 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333450.P10773263677829158987

namespace A333450

/-- `∑[∑{d}[n+1, A008683(#)*A054541((n+1)/#)]]` -/
def P10773263677829158987.Spec : Prop :=
  ∀ n, P10773263677829158987.a n = A333450 (n + 1)

end A333450

/-! ## A333450.P2645663044005754055

`∑[A007318(and(3, 2-n))*A333471(ϕ²-(ϕ-n))]`
-/

namespace A333450.P2645663044005754055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (2 - (n : ℤ))).toNat * A333471 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333450.P2645663044005754055

namespace A333450

/-- `∑[A007318(and(3, 2-n))*A333471(ϕ²-(ϕ-n))]` -/
def P2645663044005754055.Spec : Prop :=
  ∀ n, P2645663044005754055.a n = A333450 (n + 1)

end A333450

/-! ## A333450.P1333288706157802957

`∑[A008683(n+1)+A007444(n+1)-A030013(n+1)]`
-/

namespace A333450.P1333288706157802957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + (A007444 (n + 1) - A030013 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333450.P1333288706157802957

namespace A333450

/-- `∑[A008683(n+1)+A007444(n+1)-A030013(n+1)]` -/
def P1333288706157802957.Spec : Prop :=
  ∀ n, P1333288706157802957.a n = A333450 (n + 1)

end A333450

/-! ## A333450.P8414881574797350593

`A028310(∑[A333471(ϕ²-(ϕ-n))])`
-/

namespace A333450.P8414881574797350593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333471 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A333450.P8414881574797350593

namespace A333450

/-- `A028310(∑[A333471(ϕ²-(ϕ-n))])` -/
def P8414881574797350593.Spec : Prop :=
  ∀ n, P8414881574797350593.a n = A333450 (n + 1)

end A333450

/-!
# A333451: Expansion of golden ratio (1 + sqrt(5))/2 in base 3.

The programs for A333451, the canonical program `A333451.P9079082257402494915` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333451 has offset 1).

The definition of A333451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333451.P9079082257402494915

`floor((ϕ+9)*3^n)%3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A333451

/-- `floor((ϕ+9)*3^n)%3` -/
def P9079082257402494915.Spec : Prop :=
  ∀ n, P9079082257402494915.a n = A333451 (n + 1)

theorem P9079082257402494915.correct : P9079082257402494915.Spec := by
  intro n
  simp only [A333451, Nat.add_sub_cancel]

end A333451

/-! ## A333451.P4832893578591224394

`A071858(∑[A101275(n)²])`
-/

namespace A333451.P4832893578591224394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101275 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071858 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A333451.P4832893578591224394

namespace A333451

/-- `A071858(∑[A101275(n)²])` -/
def P4832893578591224394.Spec : Prop :=
  ∀ n, P4832893578591224394.a n = A333451 (n + 1)

end A333451

/-! ## A333451.P7584517757903892140

`A163542(A091018(n)^A108037(n))`
-/

namespace A333451.P7584517757903892140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163542 (SequenceMachineLib.roundAway ((A091018 n : ℚ) ^ (A108037 n : ℤ))).toNat

end

end A333451.P7584517757903892140

namespace A333451

/-- `A163542(A091018(n)^A108037(n))` -/
def P7584517757903892140.Spec : Prop :=
  ∀ n, P7584517757903892140.a n = A333451 (n + 1)

end A333451

/-! ## A333451.P4570314953403450696

`gcd(A002654(n+1), A287341(A080613(n+1)))`
-/

namespace A333451.P4570314953403450696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002654 (n + 1)) (A287341 (A080613 (n + 1)).toNat)

end

end A333451.P4570314953403450696

namespace A333451

/-- `gcd(A002654(n+1), A287341(A080613(n+1)))` -/
def P4570314953403450696.Spec : Prop :=
  ∀ n, (P4570314953403450696.a n : ℤ) = A333451 (n + 1)

end A333451

/-! ## A333451.P4265532531551847453

`A000122(A325817(A022098(n)+A004148(n)))`
-/

namespace A333451.P4265532531551847453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A325817 (A022098 n + A004148 n).toNat).toNat

end

end A333451.P4265532531551847453

namespace A333451

/-- `A000122(A325817(A022098(n)+A004148(n)))` -/
def P4265532531551847453.Spec : Prop :=
  ∀ n, P4265532531551847453.a n = A333451 (n + 1)

end A333451

/-!
# A333452: Expansion of golden ratio (1 + sqrt(5))/2 in base 4.

The programs for A333452, the canonical program `A333452.P17770839783048357349` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333452 has offset 1).

The definition of A333452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333452.P17770839783048357349

`A293322(A004277(n))%4`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A333452

/-- `A293322(A004277(n))%4` -/
def P17770839783048357349.Spec : Prop :=
  ∀ n, P17770839783048357349.a n = A333452 (n + 1)

theorem P17770839783048357349.correct : P17770839783048357349.Spec := by
  intro n
  simp only [A333452, Nat.add_sub_cancel]

end A333452

/-! ## A333452.P8473893923311116735

`and(3, floor(ϕ*4^n))`
-/

namespace A333452.P8473893923311116735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ⌊Real.goldenRatio * (4 ^ n : ℝ)⌋

end

end A333452.P8473893923311116735

namespace A333452

/-- `and(3, floor(ϕ*4^n))` -/
def P8473893923311116735.Spec : Prop :=
  ∀ n, P8473893923311116735.a n = A333452 (n + 1)

end A333452

/-! ## A333452.P7480140285800374765

`A293313(2*n)%4`
-/

namespace A333452.P7480140285800374765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293313 (2 * n)) 4

end

end A333452.P7480140285800374765

namespace A333452

/-- `A293313(2*n)%4` -/
def P7480140285800374765.Spec : Prop :=
  ∀ n, P7480140285800374765.a n = A333452 (n + 1)

end A333452

/-! ## A333452.P17765936930340902314

`(A293314(2*n)-1)%4`
-/

namespace A333452.P17765936930340902314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293314 (2 * n) - 1) 4

end

end A333452.P17765936930340902314

namespace A333452

/-- `(A293314(2*n)-1)%4` -/
def P17765936930340902314.Spec : Prop :=
  ∀ n, P17765936930340902314.a n = A333452 (n + 1)

end A333452

/-! ## A333452.P7343986402825670452

`A053828(and(3, A293314(2*n)-1))`
-/

namespace A333452.P7343986402825670452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (Int.land 3 (A293314 (2 * n) - 1)).toNat

end

end A333452.P7343986402825670452

namespace A333452

/-- `A053828(and(3, A293314(2*n)-1))` -/
def P7343986402825670452.Spec : Prop :=
  ∀ n, P7343986402825670452.a n = A333452 (n + 1)

end A333452

/-!
# A333455: Number of self-avoiding walks from NW to SE corners on an n X n grid which pass through all points on the diagonal connecting NW and SE corners.

The programs for A333455, there is no canonical definition to state claims against.
-/

/-! ## A333455.P3762929018780485970

`A001206(n)+A000010(A078698(n+1))`
-/

namespace A333455.P3762929018780485970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001206 n + A000010 (A078698 (n + 1)).toNat

end

end A333455.P3762929018780485970

/-!
# A333457: a(n) is the smallest number with exactly n divisors that are Moran numbers, or -1 if no such number exists.

The programs for A333457, there is no canonical definition to state claims against.
-/

/-! ## A333457.P5181095081525334369

`∩[A038123(n+1), A206038(n+1)]`
-/

namespace A333457.P5181095081525334369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333457.P5181095081525334369

/-!
# A333459: Number of vertices in an diagonal-edged (or diamond-shaped) checkerboard with width and height 2*n-1 (see Comments in A333434 for definition).

The programs for A333459, there is no canonical definition to state claims against.
-/

/-! ## A333459.P17034518813780459269

`A333460(n+1)+1-A333434(n+1)`
-/

namespace A333459.P17034518813780459269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333460 (n + 1) + (1 - A333434 (n + 1))

end

end A333459.P17034518813780459269

/-!
# A333460: Number of edges in an diagonal-edged (or diamond-shaped) checkerboard with width and height 2*n-1 (see Comments in A333434 for definition).

The programs for A333460, there is no canonical definition to state claims against.
-/

/-! ## A333460.P3212305166639113922

`A333434(n+1)+A333459(n+1)-1`
-/

namespace A333460.P3212305166639113922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333434 (n + 1) + (A333459 (n + 1) - 1)

end

end A333460.P3212305166639113922

/-! ## A333460.P15648175710244828284

`A333434(n+1)+A066182(A333459(n+1))`
-/

namespace A333460.P15648175710244828284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333434 (n + 1) + A066182 (A333459 (n + 1)).toNat

end

end A333460.P15648175710244828284

/-!
# A333461: a(n) = gcd(2*n, binomial(2*n,n))/2.

The programs for A333461, the canonical program `A333461.P9303211101842763133` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333461 has offset 1).

The definition of A333461 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A333461.P9303211101842763133

`A058005(n+1)/2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A333461

/-- `A058005(n+1)/2` -/
def P9303211101842763133.Spec : Prop :=
  ∀ n, P9303211101842763133.a n = (A333461 (n + 1) : ℚ)

end A333461

/-! ## A333461.P4411815292325199885

`gcd(2*(n+1), C(2*(n+1), n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A333461.P4411815292325199885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (2 * (n + 1)) (Nat.choose (2 * (n + 1)) (n + 1)) : ℚ) / 2

end

end A333461.P4411815292325199885

namespace A333461

/-- `gcd(2*(n+1), C(2*(n+1), n+1))/2` -/
def P4411815292325199885.Spec : Prop :=
  ∀ n, P4411815292325199885.a n = (A333461 (n + 1) : ℚ)

end A333461

/-! ## A333461.P8246005187755763383

`(n+1)/A201059(n+1)`
-/

namespace A333461.P8246005187755763383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A201059 (n + 1) : ℚ)

end

end A333461.P8246005187755763383

namespace A333461

/-- `(n+1)/A201059(n+1)` -/
def P8246005187755763383.Spec : Prop :=
  ∀ n, P8246005187755763383.a n = (A333461 (n + 1) : ℚ)

end A333461

/-! ## A333461.P3613113512824312889

`gcd(n+1, A099905(n+1))`
-/

namespace A333461.P3613113512824312889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A099905 (n + 1))

end

end A333461.P3613113512824312889

namespace A333461

/-- `gcd(n+1, A099905(n+1))` -/
def P3613113512824312889.Spec : Prop :=
  ∀ n, (P3613113512824312889.a n : ℤ) = A333461 (n + 1)

end A333461

/-! ## A333461.P14735155489943564643

`gcd(2*(n+1), A042970(2*(n+1)))/2`
-/

namespace A333461.P14735155489943564643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (2 * (n + 1) : ℤ) (A042970 (2 * (n + 1))) : ℚ) / 2

end

end A333461.P14735155489943564643

namespace A333461

/-- `gcd(2*(n+1), A042970(2*(n+1)))/2` -/
def P14735155489943564643.Spec : Prop :=
  ∀ n, P14735155489943564643.a n = (A333461 (n + 1) : ℚ)

end A333461

/-! ## A333461.P9111270955790466477

`gcd(A000027(n+1), A099906(n+1))`
-/

namespace A333461.P9111270955790466477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A099906 (n + 1))

end

end A333461.P9111270955790466477

namespace A333461

/-- `gcd(A000027(n+1), A099906(n+1))` -/
def P9111270955790466477.Spec : Prop :=
  ∀ n, (P9111270955790466477.a n : ℤ) = A333461 (n + 1)

end A333461

/-! ## A333461.P10279457594541123802

`gcd(A048671(n+1), A099907(n+1))`
-/

namespace A333461.P10279457594541123802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048671 (n + 1)) (A099907 (n + 1))

end

end A333461.P10279457594541123802

namespace A333461

/-- `gcd(A048671(n+1), A099907(n+1))` -/
def P10279457594541123802.Spec : Prop :=
  ∀ n, (P10279457594541123802.a n : ℤ) = A333461 (n + 1)

end A333461

/-! ## A333461.P6086428806328522709

`gcd(A061019(n+1), A099908(n+1))`
-/

namespace A333461.P6086428806328522709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061019 (n + 1)) (A099908 (n + 1))

end

end A333461.P6086428806328522709

namespace A333461

/-- `gcd(A061019(n+1), A099908(n+1))` -/
def P6086428806328522709.Spec : Prop :=
  ∀ n, (P6086428806328522709.a n : ℤ) = A333461 (n + 1)

end A333461

/-! ## A333461.P10548796558997042204

`A001281(A058005(n+1))`
-/

namespace A333461.P10548796558997042204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A058005 (n + 1)).toNat

end

end A333461.P10548796558997042204

namespace A333461

/-- `A001281(A058005(n+1))` -/
def P10548796558997042204.Spec : Prop :=
  ∀ n, P10548796558997042204.a n = A333461 (n + 1)

end A333461

/-! ## A333461.P4872028854250447382

`A057815(2*(n+1))/2`
-/

namespace A333461.P4872028854250447382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057815 (2 * (n + 1)) : ℚ) / 2

end

end A333461.P4872028854250447382

namespace A333461

/-- `A057815(2*(n+1))/2` -/
def P4872028854250447382.Spec : Prop :=
  ∀ n, P4872028854250447382.a n = (A333461 (n + 1) : ℚ)

end A333461

/-! ## A333461.P17297259018272406443

`(n+1)/A049077(2*(n+1))`
-/

namespace A333461.P17297259018272406443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A049077 (2 * (n + 1)) : ℚ)

end

end A333461.P17297259018272406443

namespace A333461

/-- `(n+1)/A049077(2*(n+1))` -/
def P17297259018272406443.Spec : Prop :=
  ∀ n, P17297259018272406443.a n = (A333461 (n + 1) : ℚ)

end A333461

/-! ## A333461.P4720033456799294066

`gcd(n+1, A170829(n))`
-/

namespace A333461.P4720033456799294066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A170829 n)

end

end A333461.P4720033456799294066

namespace A333461

/-- `gcd(n+1, A170829(n))` -/
def P4720033456799294066.Spec : Prop :=
  ∀ n, (P4720033456799294066.a n : ℤ) = A333461 (n + 1)

end A333461

/-! ## A333461.P16027238768724934348

`gcd(A079781(n+1), A246466(n))`
-/

namespace A333461.P16027238768724934348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079781 (n + 1)) (A246466 n)

end

end A333461.P16027238768724934348

namespace A333461

/-- `gcd(A079781(n+1), A246466(n))` -/
def P16027238768724934348.Spec : Prop :=
  ∀ n, (P16027238768724934348.a n : ℤ) = A333461 (n + 1)

end A333461

/-! ## A333461.P2905619338490249191

`gcd(A000108(n), A131738(n))`
-/

namespace A333461.P2905619338490249191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000108 n) (A131738 n)

end

end A333461.P2905619338490249191

namespace A333461

/-- `gcd(A000108(n), A131738(n))` -/
def P2905619338490249191.Spec : Prop :=
  ∀ n, (P2905619338490249191.a n : ℤ) = A333461 (n + 1)

end A333461

/-! ## A333461.P3624158294328947802

`gcd(A005451(n+1), A098512(n))`
-/

namespace A333461.P3624158294328947802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005451 (n + 1)) (A098512 n)

end

end A333461.P3624158294328947802

namespace A333461

/-- `gcd(A005451(n+1), A098512(n))` -/
def P3624158294328947802.Spec : Prop :=
  ∀ n, (P3624158294328947802.a n : ℤ) = A333461 (n + 1)

end A333461

/-! ## A333461.P13456045739733693253

`gcd(A009474(n+1), A168491(n))`
-/

namespace A333461.P13456045739733693253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009474 (n + 1)) (A168491 n)

end

end A333461.P13456045739733693253

namespace A333461

/-- `gcd(A009474(n+1), A168491(n))` -/
def P13456045739733693253.Spec : Prop :=
  ∀ n, (P13456045739733693253.a n : ℤ) = A333461 (n + 1)

end A333461

/-! ## A333461.P1286254339679647348

`gcd(A120304(n)+2, A266285(2*n))`
-/

namespace A333461.P1286254339679647348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A120304 n + 2) (A266285 (2 * n))

end

end A333461.P1286254339679647348

namespace A333461

/-- `gcd(A120304(n)+2, A266285(2*n))` -/
def P1286254339679647348.Spec : Prop :=
  ∀ n, (P1286254339679647348.a n : ℤ) = A333461 (n + 1)

end A333461

/-! ## A333461.P17485896081171618683

`gcd(A028310(n+1), A097331(2*n+1))`
-/

namespace A333461.P17485896081171618683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 (n + 1)) (A097331 (2 * n + 1))

end

end A333461.P17485896081171618683

namespace A333461

/-- `gcd(A028310(n+1), A097331(2*n+1))` -/
def P17485896081171618683.Spec : Prop :=
  ∀ n, (P17485896081171618683.a n : ℤ) = A333461 (n + 1)

end A333461

/-! ## A333461.P4346304071499356929

`gcd(A008619(2*n), A090192(2*n+1))`
-/

namespace A333461.P4346304071499356929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008619 (2 * n)) (A090192 (2 * n + 1))

end

end A333461.P4346304071499356929

namespace A333461

/-- `gcd(A008619(2*n), A090192(2*n+1))` -/
def P4346304071499356929.Spec : Prop :=
  ∀ n, (P4346304071499356929.a n : ℤ) = A333461 (n + 1)

end A333461

/-! ## A333461.P15319303903974753269

`gcd(A092486(2*n+1)/2, A126120(2*n))`
-/

namespace A333461.P15319303903974753269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A092486 (2 * n + 1) : ℚ) / 2)) (A126120 (2 * n))

end

end A333461.P15319303903974753269

namespace A333461

/-- `gcd(A092486(2*n+1)/2, A126120(2*n))` -/
def P15319303903974753269.Spec : Prop :=
  ∀ n, (P15319303903974753269.a n : ℤ) = A333461 (n + 1)

end A333461

/-!
# A333462: a(n) is the number of Gaussian integers z such that (n-1)/2 < |z| <= n/2, divided by 4.

The programs for A333462, there is no canonical definition to state claims against.
-/

/-! ## A333462.P3362221869308099812

`Δ[A053411(n)/4]`
-/

namespace A333462.P3362221869308099812
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053411 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333462.P3362221869308099812

/-! ## A333462.P17949665557685355864

`(A053411(n+1)-A053411(n))/4`
-/

namespace A333462.P17949665557685355864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053411 (n + 1) - A053411 n : ℚ) / 4

end

end A333462.P17949665557685355864

/-! ## A333462.P13273129880547450992

`A025480(Δ[A053411(n)]+1)`
-/

namespace A333462.P13273129880547450992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (n + 1) - f1 n + 1).toNat

end

end A333462.P13273129880547450992

/-! ## A333462.P11056518339850487471

`A002265(A053411(n+1)-A053411(n))`
-/

namespace A333462.P11056518339850487471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A053411 (n + 1) - A053411 n).toNat

end

end A333462.P11056518339850487471

/-! ## A333462.P13264268902170797358

`Δ[A333573(A008458(n)-5*n)]`
-/

namespace A333462.P13264268902170797358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333573 (A008458 n - (5 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333462.P13264268902170797358

/-! ## A333462.P16870593092502115398

`Δ[A333573(and(1, A008458(n))+n)]`
-/

namespace A333462.P16870593092502115398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333573 (Int.land 1 (A008458 n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333462.P16870593092502115398

/-! ## A333462.P12625948716869075854

`Δ[A333573(n+1-A325401(n)%2)]`
-/

namespace A333462.P12625948716869075854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333573 ((n + 1 : ℤ) - Int.tmod (A325401 n) 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333462.P12625948716869075854

/-! ## A333462.P10498354822286725175

`A333573(n+1)-A333573(A004277(n)-n)`
-/

namespace A333462.P10498354822286725175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333573 (n + 1) - A333573 (A004277 n - (n : ℤ)).toNat

end

end A333462.P10498354822286725175

/-! ## A333462.P5784353434560313042

`Δ[A014200(floor((n/2)²))]`
-/

namespace A333462.P5784353434560313042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 ⌊((n : ℚ) / 2) ^ 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333462.P5784353434560313042

/-! ## A333462.P3893672961478178423

`Δ[A057655(A002620(n))/4]`
-/

namespace A333462.P3893672961478178423
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057655 (A002620 n).toNat : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333462.P3893672961478178423

/-! ## A333462.P4912443040851280453

`Δ[A333573(2-A132749(∑[n])+n)]`
-/

namespace A333462.P4912443040851280453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333573 (2 - A132749 (∑ j ∈ Finset.range (n + 1), f2 j) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333462.P4912443040851280453

/-! ## A333462.P17742636032262110695

`Δ[A025480(A053411(n))]`
-/

namespace A333462.P17742636032262110695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A053411 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333462.P17742636032262110695

/-!
# A333463: a(n) = Sum_{k=1..n} floor(n/k) * gcd(n,k).

The programs for A333463, the canonical program `A333463.P3968977485376999568` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333463 has offset 1).

The definition of A333463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333463.P8072948850126623720

`∑{d}[n+1, #*A116477((n+1)/#)]`
-/

namespace A333463.P8072948850126623720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A116477 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333463.P8072948850126623720

namespace A333463

/-- `∑{d}[n+1, #*A116477((n+1)/#)]` -/
def P8072948850126623720.Spec : Prop :=
  ∀ n, P8072948850126623720.a n = A333463 (n + 1)

end A333463

/-! ## A333463.P3110823553761267333

`∑{d}[n+1, A000010(#)*A006218((n+1)/#)]`
-/

namespace A333463.P3110823553761267333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A006218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333463.P3110823553761267333

namespace A333463

/-- `∑{d}[n+1, A000010(#)*A006218((n+1)/#)]` -/
def P3110823553761267333.Spec : Prop :=
  ∀ n, P3110823553761267333.a n = A333463 (n + 1)

end A333463

/-! ## A333463.P3968977485376999568

`∑{d}[n+1, A000203(#)*A332684((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A333463

/-- `∑{d}[n+1, A000203(#)*A332684((n+1)/#)]` -/
def P3968977485376999568.Spec : Prop :=
  ∀ n, P3968977485376999568.a n = A333463 (n + 1)

theorem P3968977485376999568.correct : P3968977485376999568.Spec := by
  intro n
  simp only [A333463, Nat.add_sub_cancel]

end A333463

/-! ## A333463.P13100945717667324644

`A000203(n+1)+A333465(n+1)-A018804(n+1)`
-/

namespace A333463.P13100945717667324644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A333465 (n + 1) - A018804 (n + 1))

end

end A333463.P13100945717667324644

namespace A333463

/-- `A000203(n+1)+A333465(n+1)-A018804(n+1)` -/
def P13100945717667324644.Spec : Prop :=
  ∀ n, P13100945717667324644.a n = A333463 (n + 1)

theorem P13100945717667324644.correct : P13100945717667324644.Spec := by
  intro n
  simp only [A333463, Nat.add_sub_cancel, A333463.P13100945717667324644.a, A333463.P3968977485376999568.f1, A333463.P3968977485376999568.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A018804, A018804.P15177010680010264719.f1, A018804.P15177010680010264719.a, A332684, A332684.P8972618175803108793.f1, A332684.P8972618175803108793.a, A333465, A333465.P8571709817543642968.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A143356, A143356.P8102885452969892794.f1, A143356.P8102885452969892794.a, A001065, A001065.P4097147489331274860.a, A006218, A006218.P9218434490128439557.a, A247343, A247343.P16054937885260863727.f1, A247343.P16054937885260863727.a, A000005, A000005.P16091521709108585461.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A333463

/-! ## A333463.P2116574953383844093

`A333465(n+1)-A396514(n+1)`
-/

namespace A333463.P2116574953383844093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333465 (n + 1) - A396514 (n + 1)

end

end A333463.P2116574953383844093

namespace A333463

/-- `A333465(n+1)-A396514(n+1)` -/
def P2116574953383844093.Spec : Prop :=
  ∀ n, P2116574953383844093.a n = A333463 (n + 1)

theorem P2116574953383844093.correct : P2116574953383844093.Spec := by
  intro n
  simp only [A333463, Nat.add_sub_cancel, A333463.P2116574953383844093.a, A333463.P3968977485376999568.f1, A333463.P3968977485376999568.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A332684, A332684.P8972618175803108793.f1, A332684.P8972618175803108793.a, A333465, A333465.P8571709817543642968.a, A396514, A396514.P190034944072554770.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, A018804, A018804.P15177010680010264719.f1, A018804.P15177010680010264719.a, A143356, A143356.P8102885452969892794.f1, A143356.P8102885452969892794.a, A006218, A006218.P9218434490128439557.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A247343, A247343.P16054937885260863727.f1, A247343.P16054937885260863727.a, A000005, A000005.P16091521709108585461.a, A001065, A001065.P4097147489331274860.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A333463

/-!
# A333464: Number of self-avoiding walks from NW to SE corners on an n X n grid which pass through all points on the diagonal connecting NE and SW corners.

The programs for A333464, there is no canonical definition to state claims against.
-/

/-! ## A333464.P8611737961257839496

`A025019(a(n-1)+n)+1` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A333464.P8611737961257839496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  A025019 (a (n - 1) + (n : ℤ)).toNat + 1

end

end A333464.P8611737961257839496

/-!
# A333465: a(n) = Sum_{k=1..n} ceiling(n/k) * gcd(n,k).

The programs for A333465, the canonical program `A333465.P8571709817543642968` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333465 has offset 1).

The definition of A333465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333465.P6647484871038928870

`∑{d}[n+1, #*A332683((n+1)/#)]`
-/

namespace A333465.P6647484871038928870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A332683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333465.P6647484871038928870

namespace A333465

/-- `∑{d}[n+1, #*A332683((n+1)/#)]` -/
def P6647484871038928870.Spec : Prop :=
  ∀ n, P6647484871038928870.a n = A333465 (n + 1)

end A333465

/-! ## A333465.P147834924810608412

`∑{d}[n+1, A000010(#)*A006590((n+1)/#)]`
-/

namespace A333465.P147834924810608412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A006590 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333465.P147834924810608412

namespace A333465

/-- `∑{d}[n+1, A000010(#)*A006590((n+1)/#)]` -/
def P147834924810608412.Spec : Prop :=
  ∀ n, P147834924810608412.a n = A333465 (n + 1)

end A333465

/-! ## A333465.P8571709817543642968

`A018804(n+1)+A333463(n+1)-A000203(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A333465

/-- `A018804(n+1)+A333463(n+1)-A000203(n+1)` -/
def P8571709817543642968.Spec : Prop :=
  ∀ n, P8571709817543642968.a n = A333465 (n + 1)

theorem P8571709817543642968.correct : P8571709817543642968.Spec := by
  intro n
  simp only [A333465, Nat.add_sub_cancel]

end A333465

/-! ## A333465.P9927057834497732690

`A396514(n+1)+A333463(n+1)`
-/

namespace A333465.P9927057834497732690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396514 (n + 1) + A333463 (n + 1)

end

end A333465.P9927057834497732690

namespace A333465

/-- `A396514(n+1)+A333463(n+1)` -/
def P9927057834497732690.Spec : Prop :=
  ∀ n, P9927057834497732690.a n = A333465 (n + 1)

theorem P9927057834497732690.correct : P9927057834497732690.Spec := by
  intro n
  simp only [A333465, Nat.add_sub_cancel, A333465.P9927057834497732690.a, A333465.P8571709817543642968.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A018804, A018804.P15177010680010264719.f1, A018804.P15177010680010264719.a, A333463, A333463.P3968977485376999568.f1, A333463.P3968977485376999568.a, A396514, A396514.P190034944072554770.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A332684, A332684.P8972618175803108793.f1, A332684.P8972618175803108793.a, A001065, A001065.P4097147489331274860.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, A143356, A143356.P8102885452969892794.f1, A143356.P8102885452969892794.a, A006218, A006218.P9218434490128439557.a, A247343, A247343.P16054937885260863727.f1, A247343.P16054937885260863727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A333465

/-!
# A333466: Number of self-avoiding closed paths on an n X n grid which pass through four corners ((0,0), (0,n-1), (n-1,n-1), (n-1,0)).

The programs for A333466, there is no canonical definition to state claims against.
-/

/-! ## A333466.P5550910111530682671

`A333513(∑[4*n]+2)`
-/

namespace A333466.P5550910111530682671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333513 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A333466.P5550910111530682671

/-!
# A333468: Length of the largest disjoint cycle of the permutation that results from the composition of first n circular shifts.

The programs for A333468, there is no canonical definition to state claims against.
-/

/-! ## A333468.P528020604097378572

`A269572(2*n+3)`
-/

namespace A333468.P528020604097378572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269572 (2 * n + 3)

end

end A333468.P528020604097378572

/-! ## A333468.P6746025027990826050

`A269572(Δ[(n+1)²])%34`
-/

namespace A333468.P6746025027990826050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269572 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) 34

end

end A333468.P6746025027990826050

/-! ## A333468.P7092696294389894709

`∑{d}[A269572(Δ[(n+1)²]), A000010(#)]`
-/

namespace A333468.P7092696294389894709
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269572 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A333468.P7092696294389894709

/-! ## A333468.P7513976121978439483

`A269572(Δ[(n+1)²])^A007318(∑[n])`
-/

namespace A333468.P7513976121978439483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269572 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A333468.P7513976121978439483

/-! ## A333468.P2194038090311466897

`A269572(Δ[(n+1)²])/A007318(C(2, n))`
-/

namespace A333468.P2194038090311466897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269572 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A333468.P2194038090311466897

/-!
# A333469: Number of integers in base n having exactly four distinct digits such that the number formed by the consecutive subsequence of the initial j digits is divisible by j for all j in {1,2,3,4}.

The programs for A333469, there is no canonical definition to state claims against.
-/

/-! ## A333469.P2441516070813497792

`A089052(A338593(n+9)-A002088(n))`
-/

namespace A333469.P2441516070813497792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A338593 (n + 9) - A002088 n).toNat

end

end A333469.P2441516070813497792

/-! ## A333469.P10933733835958676145

`A232376(n+1)%A321440(A185133(n))`
-/

namespace A333469.P10933733835958676145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232376 (n + 1)) (A321440 (A185133 n).toNat)

end

end A333469.P10933733835958676145

/-! ## A333469.P16136753811037587025

`xor(A026926(n+1), A319071(A320328(n)))`
-/

namespace A333469.P16136753811037587025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A026926 (n + 1)) (A319071 (A320328 n).toNat)

end

end A333469.P16136753811037587025

/-! ## A333469.P10363802266765765943

`A284264(A070766(n+1)+A062719(n+1))`
-/

namespace A333469.P10363802266765765943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284264 (A070766 (n + 1) + A062719 (n + 1)).toNat

end

end A333469.P10363802266765765943

/-! ## A333469.P1568581353809945079

`A101212(A003432(n))-A335450(3*n+5)`
-/

namespace A333469.P1568581353809945079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101212 (A003432 n).toNat - A335450 (3 * n + 5)

end

end A333469.P1568581353809945079

/-!
# A333470: Lexicographically earliest sequence of distinct positive terms such that a(n) is the number of commas that a(n) has to step over (to the right) to be met by an odd term. This odd term might not be the closest odd term to a(n).

The programs for A333470, the canonical program `A333470.P1664157183128636021` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333470 has offset 1).

The definition of A333470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333470.P1664157183128636021

`xor(n+1, floor(log2(n+1))%2)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A333470

/-- `xor(n+1, floor(log2(n+1))%2)` -/
def P1664157183128636021.Spec : Prop :=
  ∀ n, (P1664157183128636021.a n : ℤ) = A333470 (n + 1)

theorem P1664157183128636021.correct : P1664157183128636021.Spec := by
  intro n
  simp only [A333470, Nat.add_sub_cancel]

end A333470

/-! ## A333470.P14658280337310623287

`xor(n+1, and(1, floor(log2(n+1))))`
-/

namespace A333470.P14658280337310623287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (Nat.land 1 (Nat.log 2 (n + 1)))

end

end A333470.P14658280337310623287

namespace A333470

/-- `xor(n+1, and(1, floor(log2(n+1))))` -/
def P14658280337310623287.Spec : Prop :=
  ∀ n, (P14658280337310623287.a n : ℤ) = A333470 (n + 1)

theorem P14658280337310623287.correct : P14658280337310623287.Spec := by
  intro n
  simp only [A333470, Nat.add_sub_cancel, A333470.P14658280337310623287.a, A333470.P1664157183128636021.a, SequenceMachineLib.memo_apply]
  try simp

end A333470

/-! ## A333470.P12034637094534669973

`xor(n+1, 1-ceil(log2(n+2))%2)`
-/

namespace A333470.P12034637094534669973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (1 - Int.tmod ⌈Real.logb 2 (n + 2 : ℝ)⌉ 2)

end

end A333470.P12034637094534669973

namespace A333470

/-- `xor(n+1, 1-ceil(log2(n+2))%2)` -/
def P12034637094534669973.Spec : Prop :=
  ∀ n, P12034637094534669973.a n = A333470 (n + 1)

end A333470

/-! ## A333470.P2178711211995951896

`xor(n+1, gcd(2, ceil(log2(n+2)))-1)`
-/

namespace A333470.P2178711211995951896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) ((Int.gcd 2 ⌈Real.logb 2 (n + 2 : ℝ)⌉ : ℤ) - 1)

end

end A333470.P2178711211995951896

namespace A333470

/-- `xor(n+1, gcd(2, ceil(log2(n+2)))-1)` -/
def P2178711211995951896.Spec : Prop :=
  ∀ n, P2178711211995951896.a n = A333470 (n + 1)

end A333470

/-! ## A333470.P6492525391826997510

`n+1-(-1)^n*and(1, floor(log2(n+1)))`
-/

namespace A333470.P6492525391826997510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (-1) ^ n * (Nat.land 1 (Nat.log 2 (n + 1)) : ℤ)

end

end A333470.P6492525391826997510

namespace A333470

/-- `n+1-(-1)^n*and(1, floor(log2(n+1)))` -/
def P6492525391826997510.Spec : Prop :=
  ∀ n, P6492525391826997510.a n = A333470 (n + 1)

end A333470

/-! ## A333470.P717775537086374222

`A082008(n+1)%3+n`
-/

namespace A333470.P717775537086374222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082008 (n + 1)) 3 + (n : ℤ)

end

end A333470.P717775537086374222

namespace A333470

/-- `A082008(n+1)%3+n` -/
def P717775537086374222.Spec : Prop :=
  ∀ n, P717775537086374222.a n = A333470 (n + 1)

end A333470

/-! ## A333470.P8541191858761856313

`xor(n+1, A030301(n+1))`
-/

namespace A333470.P8541191858761856313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A030301 (n + 1))

end

end A333470.P8541191858761856313

namespace A333470

/-- `xor(n+1, A030301(n+1))` -/
def P8541191858761856313.Spec : Prop :=
  ∀ n, P8541191858761856313.a n = A333470 (n + 1)

end A333470

/-! ## A333470.P892295283002580931

`xor(n+1, A275973(n+2))`
-/

namespace A333470.P892295283002580931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A275973 (n + 2))

end

end A333470.P892295283002580931

namespace A333470

/-- `xor(n+1, A275973(n+2))` -/
def P892295283002580931.Spec : Prop :=
  ∀ n, P892295283002580931.a n = A333470 (n + 1)

end A333470

/-! ## A333470.P393696809028952956

`Δ[A022429(n+1)]+n-2`
-/

namespace A333470.P393696809028952956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((n : ℤ) - 2)

end

end A333470.P393696809028952956

namespace A333470

/-- `Δ[A022429(n+1)]+n-2` -/
def P393696809028952956.Spec : Prop :=
  ∀ n, P393696809028952956.a n = A333470 (n + 1)

end A333470

/-! ## A333470.P11695001366083878457

`A340250(A335858(n+1))`
-/

namespace A333470.P11695001366083878457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340250 (A335858 (n + 1)).toNat

end

end A333470.P11695001366083878457

namespace A333470

/-- `A340250(A335858(n+1))` -/
def P11695001366083878457.Spec : Prop :=
  ∀ n, P11695001366083878457.a n = A333470 (n + 1)

end A333470

/-! ## A333470.P4867245517661983945

`A231550(A258746(A054429(A284459(n+1))))`
-/

namespace A333470.P4867245517661983945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231550 (A258746 (A054429 (A284459 (n + 1)).toNat).toNat).toNat

end

end A333470.P4867245517661983945

namespace A333470

/-- `A231550(A258746(A054429(A284459(n+1))))` -/
def P4867245517661983945.Spec : Prop :=
  ∀ n, P4867245517661983945.a n = A333470 (n + 1)

end A333470

/-! ## A333470.P15501708244781123944

`A231550(A258746(A284459(A065190(n+1))))`
-/

namespace A333470.P15501708244781123944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231550 (A258746 (A284459 (A065190 (n + 1)).toNat).toNat).toNat

end

end A333470.P15501708244781123944

namespace A333470

/-- `A231550(A258746(A284459(A065190(n+1))))` -/
def P15501708244781123944.Spec : Prop :=
  ∀ n, P15501708244781123944.a n = A333470 (n + 1)

end A333470

/-!
# A333471: a(n) = 2 * mu(n) + Sum_{d|n, d > 1} mu(n/d) * (prime(d) - prime(d-1)).

The programs for A333471, the canonical program `A333471.P5176765363356701147` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333471 has offset 1).

The definition of A333471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333471.P5176765363356701147

`A007444(n+1)-A143444(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A333471

/-- `A007444(n+1)-A143444(n+1)` -/
def P5176765363356701147.Spec : Prop :=
  ∀ n, P5176765363356701147.a n = A333471 (n + 1)

theorem P5176765363356701147.correct : P5176765363356701147.Spec := by
  intro n
  simp only [A333471, Nat.add_sub_cancel]

end A333471

/-! ## A333471.P11686670748794794196

`∑{d}[n+1, A008683(#)*A054541((n+1)/#)]`
-/

namespace A333471.P11686670748794794196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A054541 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333471.P11686670748794794196

namespace A333471

/-- `∑{d}[n+1, A008683(#)*A054541((n+1)/#)]` -/
def P11686670748794794196.Spec : Prop :=
  ∀ n, P11686670748794794196.a n = A333471 (n + 1)

end A333471

/-! ## A333471.P1809216891126422234

`A007444(n+1)+A008683(n+1)-A030013(n+1)`
-/

namespace A333471.P1809216891126422234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007444 (n + 1) + (A008683 (n + 1) - A030013 (n + 1))

end

end A333471.P1809216891126422234

namespace A333471

/-- `A007444(n+1)+A008683(n+1)-A030013(n+1)` -/
def P1809216891126422234.Spec : Prop :=
  ∀ n, P1809216891126422234.a n = A333471 (n + 1)

end A333471

/-! ## A333471.P1867962924072168297

`A007444(n+1)-(A030013(n+1)+1-A007423(n+1))`
-/

namespace A333471.P1867962924072168297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007444 (n + 1) - (A030013 (n + 1) + (1 - A007423 (n + 1)))

end

end A333471.P1867962924072168297

namespace A333471

/-- `A007444(n+1)-(A030013(n+1)+1-A007423(n+1))` -/
def P1867962924072168297.Spec : Prop :=
  ∀ n, P1867962924072168297.a n = A333471 (n + 1)

end A333471

/-! ## A333471.P4112715165320946714

`∑{d}[n+1, A000040(#)*A008683((n+1)/#)]-A143444(n+1)`
-/

namespace A333471.P4112715165320946714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000040 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A143444 (n + 1)

end

end A333471.P4112715165320946714

namespace A333471

/-- `∑{d}[n+1, A000040(#)*A008683((n+1)/#)]-A143444(n+1)` -/
def P4112715165320946714.Spec : Prop :=
  ∀ n, P4112715165320946714.a n = A333471 (n + 1)

end A333471

/-! ## A333471.P10945220684874926829

`∑{d}[n+1, A007427(#)*A007445((n+1)/#)]-A143444(n+1)`
-/

namespace A333471.P10945220684874926829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A007445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A143444 (n + 1)

end

end A333471.P10945220684874926829

namespace A333471

/-- `∑{d}[n+1, A007427(#)*A007445((n+1)/#)]-A143444(n+1)` -/
def P10945220684874926829.Spec : Prop :=
  ∀ n, P10945220684874926829.a n = A333471 (n + 1)

end A333471

/-! ## A333471.P18121169742296841503

`A007444(n+1)-∑{d}[n+1, A008683(#)*A182986((n+1)/#)]`
-/

namespace A333471.P18121169742296841503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007444 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A008683 d * A182986 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333471.P18121169742296841503

namespace A333471

/-- `A007444(n+1)-∑{d}[n+1, A008683(#)*A182986((n+1)/#)]` -/
def P18121169742296841503.Spec : Prop :=
  ∀ n, P18121169742296841503.a n = A333471 (n + 1)

end A333471

/-!
# A333472: a(n) = [x^n] ( c (x/(1 + x)) )^n, where c(x) = (1 - sqrt(1 - 4*x))/(2*x) is the o.g.f. of the Catalan numbers A000108.

The programs for A333472, there is no canonical definition to state claims against.
-/

/-! ## A333472.P17135092757626056622

`A034929(A058331(n))`
-/

namespace A333472.P17135092757626056622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034929 (A058331 n).toNat

end

end A333472.P17135092757626056622

/-! ## A333472.P956282519354496504

`A091836(A004273(n²))`
-/

namespace A333472.P956282519354496504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091836 (A004273 (n ^ 2)).toNat

end

end A333472.P956282519354496504

/-! ## A333472.P15613742327654156144

`A097230(A022267(n))`
-/

namespace A333472.P15613742327654156144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097230 (A022267 n).toNat

end

end A333472.P15613742327654156144

/-! ## A333472.P4958819380477380861

`A097230(A006137(n)-1)`
-/

namespace A333472.P4958819380477380861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097230 (A006137 n - 1).toNat

end

end A333472.P4958819380477380861

/-! ## A333472.P12779162086097812098

`A097230(A022266(n)+n)`
-/

namespace A333472.P12779162086097812098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097230 (A022266 n + (n : ℤ)).toNat

end

end A333472.P12779162086097812098

/-!
# A333473: a(n) = [x^n] ( S(x/(1 + x)) )^n, where S(x) = (1 - x - sqrt(1 - 6*x + x^2))/(2*x) is the o.g.f. of the large Schröder numbers A006318.

The programs for A333473, there is no canonical definition to state claims against.
-/

/-! ## A333473.P17124681663911270266

`A378317(∑[4*n])`
-/

namespace A333473.P17124681663911270266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378317 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333473.P17124681663911270266

/-! ## A333473.P5403244966749331881

`A378317(A046092(n))+A000038(2*(n+2))`
-/

namespace A333473.P5403244966749331881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378317 (A046092 n).toNat + A000038 (2 * (n + 2))

end

end A333473.P5403244966749331881

/-!
# A333475: Numbers k such that S(2^k) is a perfect square, where S(t) is the sum of decimal digits of t.

The programs for A333475, there is no canonical definition to state claims against.
-/

/-! ## A333475.P16734119176231844091

`eq[1, A007913(A001370(n))]`
-/

namespace A333475.P16734119176231844091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A001370 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333475.P16734119176231844091

/-! ## A333475.P17264407983831856067

`eq[A027907(A001370(n)), A059841(n)]`
-/

namespace A333475.P17264407983831856067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (A001370 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333475.P17264407983831856067

/-! ## A333475.P15027673707568722794

`eq[A055491(A001370(n)), A060576(n)]`
-/

namespace A333475.P15027673707568722794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055491 (A001370 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333475.P15027673707568722794

/-! ## A333475.P17497224516756170980

`eq[A001511(n+1), A093709(A001370(n))]`
-/

namespace A333475.P17497224516756170980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 (A001370 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333475.P17497224516756170980

/-! ## A333475.P9056321104972122009

`eq[A006702(A001370(n)), A267587(n)]`
-/

namespace A333475.P9056321104972122009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (A001370 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267587 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333475.P9056321104972122009

/-!
# A333476: Triangle read by rows: T(n,k) gives the number of ways to partition an n X k grid into rectangles of integer side lengths with 0 <= k <= n.

The programs for A333476, there is no canonical definition to state claims against.
-/

/-! ## A333476.P17845854746607945217

`A018366(A290824(n))`
-/

namespace A333476.P17845854746607945217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018366 (A290824 n).toNat

end

end A333476.P17845854746607945217

/-! ## A333476.P8159319951850923242

`A170893(A300946(n))`
-/

namespace A333476.P8159319951850923242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170893 (A300946 n).toNat

end

end A333476.P8159319951850923242

/-! ## A333476.P4725785022048751993

`A342366(A352589(n))`
-/

namespace A333476.P4725785022048751993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342366 (A352589 n).toNat

end

end A333476.P4725785022048751993

/-! ## A333476.P13304283976275788462

`A085089(A079904(n)!)`
-/

namespace A333476.P13304283976275788462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (Nat.factorial (A079904 n).toNat)

end

end A333476.P13304283976275788462

/-! ## A333476.P5666872105320538106

`A101296(A079904(n)!)`
-/

namespace A333476.P5666872105320538106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (Nat.factorial (A079904 n).toNat)

end

end A333476.P5666872105320538106

/-!
# A333481: a(n) = [x^n] S(x)^(2*n), where S(x) = (1 - x - sqrt(1 - 6*x + x^2))/(2*x) is the o.g.f. of the large Schröder numbers A006318.

The programs for A333481, there is no canonical definition to state claims against.
-/

/-! ## A333481.P7844721688754410495

`A020639(A001316(n))*A333715(n)`
-/

namespace A333481.P7844721688754410495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001316 n).toNat * A333715 n

end

end A333481.P7844721688754410495

/-! ## A333481.P17460228626495421600

`A020639(A008574(n))*A333715(n)`
-/

namespace A333481.P17460228626495421600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A333715 n

end

end A333481.P17460228626495421600

/-! ## A333481.P17253576046876954132

`A057467(A115281(n))*A333715(n)`
-/

namespace A333481.P17253576046876954132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057467 (A115281 n).toNat * A333715 n

end

end A333481.P17253576046876954132

/-! ## A333481.P13321763304169004944

`A115281(A057944(n))*A333715(n)`
-/

namespace A333481.P13321763304169004944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115281 (A057944 n).toNat * A333715 n

end

end A333481.P13321763304169004944

/-! ## A333481.P5043632780261785007

`A020639(record[A280166(n)])*A333715(n)`
-/

namespace A333481.P5043632780261785007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A333715 n

end

end A333481.P5043632780261785007

/-! ## A333481.P5165425116196174736

`A057467(A057467(n+1))*A333715(n)`
-/

namespace A333481.P5165425116196174736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057467 (A057467 (n + 1)).toNat * A333715 n

end

end A333481.P5165425116196174736

/-! ## A333481.P7471768836447154797

`A020639(A280166(2*n))*A333715(n)`
-/

namespace A333481.P7471768836447154797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A280166 (2 * n)).toNat * A333715 n

end

end A333481.P7471768836447154797

/-! ## A333481.P470776711447474191

`A020639(Δ[A000040(n+1)])*A333715(n)`
-/

namespace A333481.P470776711447474191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (n + 1) - f1 n).toNat * A333715 n

end

end A333481.P470776711447474191

/-! ## A333481.P7494091671897522869

`A020639(A000040(n+1)-1)*A333715(n)`
-/

namespace A333481.P7494091671897522869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) - 1).toNat * A333715 n

end

end A333481.P7494091671897522869

/-!
# A333482: a(n) = [x^(2*n)] S(x)^n, where S(x) = (1 - x - sqrt(1 - 6*x + x^2))/(2*x) is the o.g.f. of the large Schröder numbers A006318.

The programs for A333482, there is no canonical definition to state claims against.
-/

/-! ## A333482.P14828390098746256963

`A033877(A006137(n))`
-/

namespace A333482.P14828390098746256963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033877 (A006137 n).toNat

end

end A333482.P14828390098746256963

/-! ## A333482.P14793088322492169022

`A122538(A062725(n))`
-/

namespace A333482.P14793088322492169022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122538 (A062725 n).toNat

end

end A333482.P14793088322492169022

/-! ## A333482.P1065442654026351981

`A033877(A022267(n)+1)`
-/

namespace A333482.P1065442654026351981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033877 (A022267 n + 1).toNat

end

end A333482.P1065442654026351981

/-! ## A333482.P1108956818765149203

`A033877(A276819(n)+n)`
-/

namespace A333482.P1108956818765149203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033877 (A276819 n + (n : ℤ)).toNat

end

end A333482.P1108956818765149203

/-! ## A333482.P2340593545606941602

`A122538(A062728(n)-n)`
-/

namespace A333482.P2340593545606941602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122538 (A062728 n - (n : ℤ)).toNat

end

end A333482.P2340593545606941602

/-!
# A333484: Sort all positive integers, first by sum of prime indices (A056239), then by decreasing number of prime indices (A001222).

The programs for A333484, there is no canonical definition to state claims against.
-/

/-! ## A333484.P14637058797289044368

`A333485(A178798(A089944(n))+n)`
-/

namespace A333484.P14637058797289044368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333485 (A178798 (A089944 n).toNat + (n : ℤ)).toNat

end

end A333484.P14637058797289044368

/-! ## A333484.P15136003295522553705

`A333485(n)-A178798(A089944(n))`
-/

namespace A333484.P15136003295522553705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333485 n - A178798 (A089944 n).toNat

end

end A333484.P15136003295522553705

/-! ## A333484.P10802694287662202927

`A333485(n)-Δ[A063435(A047089(n)²)]`
-/

namespace A333484.P10802694287662202927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 (A047089 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333485 n - (f1 (n + 1) - f1 n)

end

end A333484.P10802694287662202927

/-! ## A333484.P6850969140218902289

`A333485(n)-A185284(A350908(n+1))`
-/

namespace A333484.P6850969140218902289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333485 n - A185284 (A350908 (n + 1)).toNat

end

end A333484.P6850969140218902289

/-! ## A333484.P3352732757241607866

`A334434(n)+A010815(A016754(3*n+1))`
-/

namespace A333484.P3352732757241607866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334434 n + A010815 (A016754 (3 * n + 1)).toNat

end

end A333484.P3352732757241607866

/-!
# A333485: Heinz numbers of all integer partitions sorted first by sum, then by decreasing length, and finally lexicographically. A code for the Fenner-Loizou tree A228100.

The programs for A333485, there is no canonical definition to state claims against.
-/

/-! ## A333485.P2534989113624905007

`A122111(∏{e}[A063008(n), A000040(#)])`
-/

namespace A333485.P2534989113624905007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A333485.P2534989113624905007

/-! ## A333485.P16363464134971166195

`A122111(∏{e}[A063008(n), A028905(#)])`
-/

namespace A333485.P16363464134971166195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A028905 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A333485.P16363464134971166195

/-! ## A333485.P6143793010062193135

`A122111(∏{e}[A063008(n), A030059(#)])`
-/

namespace A333485.P6143793010062193135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A030059 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A333485.P6143793010062193135

/-! ## A333485.P9060550164653926555

`A122111(∏{e}[A063008(n), A030291(#)])`
-/

namespace A333485.P9060550164653926555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A030291 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A333485.P9060550164653926555

/-! ## A333485.P4508360471935394512

`A329900(A063008(n))`
-/

namespace A333485.P4508360471935394512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A063008 n).toNat

end

end A333485.P4508360471935394512

/-!
# A333486: Length of the n-th reversed integer partition in graded reverse-lexicographic order. Partition lengths of A228531.

The programs for A333486, there is no canonical definition to state claims against.
-/

/-! ## A333486.P8123839579814223316

`A001222(A334436(n))`
-/

namespace A333486.P8123839579814223316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A334436 n).toNat

end

end A333486.P8123839579814223316

/-! ## A333486.P17238815832583426226

`∑{e}[A334436(n), A000027(#)]`
-/

namespace A333486.P17238815832583426226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000027 (Nat.factorization (f1 n).natAbs p)

end

end A333486.P17238815832583426226

/-! ## A333486.P12724314214715958268

`A000120(∪[A225620(n+1), A333255(n+1)])`
-/

namespace A333486.P12724314214715958268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333255 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A333486.P12724314214715958268

/-! ## A333486.P4080930707109175062

`A252736(2*A334436(n))`
-/

namespace A333486.P4080930707109175062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (2 * A334436 n).toNat

end

end A333486.P4080930707109175062

/-! ## A333486.P14995197600121825142

`A000120(lt[A000120(n), A211100(2*n+1)])`
-/

namespace A333486.P14995197600121825142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333486.P14995197600121825142

/-! ## A333486.P16086890973280329275

`A000120(eq[A000120(n)+1, A211100(2*n+1)])`
-/

namespace A333486.P16086890973280329275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A333486.P16086890973280329275

/-! ## A333486.P17454809988588784758

`A000120(eq[n, A233569(n)])`
-/

namespace A333486.P17454809988588784758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333486.P17454809988588784758

/-! ## A333486.P1839911675050591183

`A000120(record[gcd(n, A233569(n))])`
-/

namespace A333486.P1839911675050591183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A233569 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A333486.P1839911675050591183

/-! ## A333486.P18110107783415819991

`A000120(lt[A233569(n), n+1])`
-/

namespace A333486.P18110107783415819991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233569 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A333486.P18110107783415819991

/-! ## A333486.P16198732006295716743

`A000120(record[A233569(n)%(n+2)])`
-/

namespace A333486.P16198732006295716743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233569 n) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A333486.P16198732006295716743

/-! ## A333486.P1523902544573763632

`A000120(record[A005843(n)-A233569(n)])`
-/

namespace A333486.P1523902544573763632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - A233569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A333486.P1523902544573763632

/-!
# A333487: Number of inseparable factorizations of n into factors > 1.

The programs for A333487, there is no canonical definition to state claims against.
-/

/-! ## A333487.P4364999857209574839

`A347706(n+1)+char[(n+3)*(n+1)]`
-/

namespace A333487.P4364999857209574839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347706 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A333487.P4364999857209574839

/-! ## A333487.P14679121065805398789

`A227083(A297404(n+1)+1)`
-/

namespace A333487.P14679121065805398789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227083 (A297404 (n + 1) + 1).toNat

end

end A333487.P14679121065805398789

/-! ## A333487.P5039476643900797440

`16%A025492(A317848(n+1))`
-/

namespace A333487.P5039476643900797440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 16 (A025492 (A317848 (n + 1)).toNat)

end

end A333487.P5039476643900797440

/-! ## A333487.P13821083173354556921

`A002372(A347706(n+1)+A071187(n+1))`
-/

namespace A333487.P13821083173354556921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002372 (A347706 (n + 1) + A071187 (n + 1)).toNat

end

end A333487.P13821083173354556921

/-! ## A333487.P3947245675306882917

`A001055(n+1)-A335434(A046523(n+1))`
-/

namespace A333487.P3947245675306882917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A335434 (A046523 (n + 1)).toNat

end

end A333487.P3947245675306882917

/-! ## A333487.P6431145126831995075

`A001055(n+1)-A335434(A071364(n+1))`
-/

namespace A333487.P6431145126831995075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A335434 (A071364 (n + 1)).toNat

end

end A333487.P6431145126831995075

/-! ## A333487.P14552895199386683044

`A001055(n+1)-A335434(A097272(n+1))`
-/

namespace A333487.P14552895199386683044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A335434 (A097272 (n + 1)).toNat

end

end A333487.P14552895199386683044

/-! ## A333487.P4301604202529106507

`A049630(A049599(n+1))%A005361(n+1)`
-/

namespace A333487.P4301604202529106507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049630 (A049599 (n + 1)).toNat) (A005361 (n + 1))

end

end A333487.P4301604202529106507

/-! ## A333487.P8864697358008702878

`A056239(lcm(A089723(n+1), A190867(n+1)))`
-/

namespace A333487.P8864697358008702878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lcm (A089723 (n + 1)) (A190867 (n + 1)))

end

end A333487.P8864697358008702878

/-! ## A333487.P8880164224907523189

`A001222(or(A088806(n+1), A316789(n+1)))`
-/

namespace A333487.P8880164224907523189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A088806 (n + 1)) (A316789 (n + 1))).toNat

end

end A333487.P8880164224907523189

/-!
# A333488: First index of weakly decreasing prime quartets.

The programs for A333488, there is no canonical definition to state claims against.
-/

/-! ## A333488.P5911534761886143283

`∩[A333231(n+1)-1, A333231(n+1)]`
-/

namespace A333488.P5911534761886143283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333231 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333488.P5911534761886143283

/-! ## A333488.P6773204026925263962

`eq[A051702(n+1), A166597(A073273(n+1))]`
-/

namespace A333488.P6773204026925263962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A073273 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333488.P6773204026925263962

/-! ## A333488.P4174549319259810816

`eq[A126990(n+1), A151800(A062234(n+1))]`
-/

namespace A333488.P4174549319259810816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A062234 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333488.P4174549319259810816

/-! ## A333488.P10466125341666064558

`eq[A126990(n+1), A151800(A118534(n+1))]`
-/

namespace A333488.P10466125341666064558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A118534 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333488.P10466125341666064558

/-! ## A333488.P15757374812562758379

`A023443(∩[A046868(n+1), A333231(n+1)])`
-/

namespace A333488.P15757374812562758379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333231 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A333488.P15757374812562758379

/-! ## A333488.P14374365854324872607

`A023443(∩[A046868(n+1)-1, A046868(n+1)])`
-/

namespace A333488.P14374365854324872607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046868 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046868 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A333488.P14374365854324872607

/-! ## A333488.P7505896328222545252

`eq[A051702(n+2)+A051702(n+1), A031131(n+1)]`
-/

namespace A333488.P7505896328222545252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051702 (n + 2) + A051702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333488.P7505896328222545252

/-! ## A333488.P3901699592855313212

`eq[A046929(n+2)+A046929(n+1), A046930(n+2)]`
-/

namespace A333488.P3901699592855313212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046929 (n + 2) + A046929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333488.P3901699592855313212

/-!
# A333489: Numbers k such that the k-th composition in standard order is an anti-run (no adjacent equal parts).

The programs for A333489, there is no canonical definition to state claims against.
-/

/-! ## A333489.P3702062009223468189

`eq[a(and(n, n-1))+1, A124767(n)]` with `a(0)=0`
-/

namespace A333489.P3702062009223468189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333489.P3702062009223468189

/-! ## A333489.P18136476509905179476

`eq[A000120(n), A124767(n)]`
-/

namespace A333489.P18136476509905179476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333489.P18136476509905179476

/-! ## A333489.P14876868469965028547

`eq[log2(A001316(n)), A124767(n)]`
-/

namespace A333489.P14876868469965028547
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A333489.P14876868469965028547

/-! ## A333489.P10439153876078057136

`eq[val(A102377(n), 2), A124767(n)]`
-/

namespace A333489.P10439153876078057136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A102377 n).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333489.P10439153876078057136

/-! ## A333489.P3290340831188532016

`eq[val(A160713(n), 2), A124767(n)]`
-/

namespace A333489.P3290340831188532016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A160713 n).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333489.P3290340831188532016

/-! ## A333489.P6495458629562722264

`lt[val(A246037(n), 2)-A124767(n), 1]`
-/

namespace A333489.P6495458629562722264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A246037 n).toNat 2 : ℤ) - A124767 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A333489.P6495458629562722264

/-! ## A333489.P15160508546423330296

`lt[n-(A124767(n)+A011371(n)), 1]`
-/

namespace A333489.P15160508546423330296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A124767 n + A011371 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A333489.P15160508546423330296

/-! ## A333489.P15040692160576038886

`lt[2*n-A005187(n)-A124767(n), 1]`
-/

namespace A333489.P15040692160576038886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A005187 n - A124767 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A333489.P15040692160576038886

/-! ## A333489.P11998825503475620564

`eq[A001222(A333219(n+1)), A124767(n)]`
-/

namespace A333489.P11998825503475620564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A333219 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333489.P11998825503475620564

/-! ## A333489.P358553525806059245

`lt[A001296(A000120(n)-A124767(n)), 1]`
-/

namespace A333489.P358553525806059245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 (A000120 n - A124767 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A333489.P358553525806059245

/-! ## A333489.P8508788220364062774

`eq[A070939(n)-A023416(n), A124767(n)]`
-/

namespace A333489.P8508788220364062774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n - A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333489.P8508788220364062774

/-! ## A333489.P15407413873450523261

`eq[1, A001316(n-(A124767(n)+A011371(n)))]`
-/

namespace A333489.P15407413873450523261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 ((n : ℤ) - (A124767 n + A011371 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333489.P15407413873450523261

/-! ## A333489.P15661434787145563452

`eq[1, A001411(n-(A124767(n)+A011371(n)))]`
-/

namespace A333489.P15661434787145563452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001411 ((n : ℤ) - (A124767 n + A011371 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333489.P15661434787145563452

/-! ## A333489.P8395402521745337487

`eq[1, A001939(n-(A124767(n)+A011371(n)))]`
-/

namespace A333489.P8395402521745337487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001939 ((n : ℤ) - (A124767 n + A011371 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333489.P8395402521745337487

/-! ## A333489.P7049425160509045766

`eq[1, A057335(n-(A124767(n)+A011371(n)))]`
-/

namespace A333489.P7049425160509045766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 ((n : ℤ) - (A124767 n + A011371 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333489.P7049425160509045766

/-! ## A333489.P99236802219742119

`eq[1, A059174(n-(A124767(n)+A011371(n)))]`
-/

namespace A333489.P99236802219742119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059174 ((n : ℤ) - (A124767 n + A011371 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333489.P99236802219742119

/-! ## A333489.P13407112371891278724

`eq[1, A062504(n-(A124767(n)+A011371(n)))]`
-/

namespace A333489.P13407112371891278724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062504 ((n : ℤ) - (A124767 n + A011371 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333489.P13407112371891278724

/-! ## A333489.P6913314798228334671

`∪[A233564(n+1), A374254(n+1)]`
-/

namespace A333489.P6913314798228334671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A333489.P6913314798228334671

/-!
# A333490: First index of unequal prime quartets.

The programs for A333490, there is no canonical definition to state claims against.
-/

/-! ## A333490.P5123412174498857536

`lt[2, A053597(n+1)]+1`
-/

namespace A333490.P5123412174498857536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053597 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A333490.P5123412174498857536

/-! ## A333490.P11472465918798865159

`lt[2, A053597(A028310(n))]`
-/

namespace A333490.P11472465918798865159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053597 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A333490.P11472465918798865159

/-! ## A333490.P5538371595504095334

`A020725(lt[2, A053597(n+1)])`
-/

namespace A333490.P5538371595504095334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A333490.P5538371595504095334

/-! ## A333490.P15234913107598889553

`A065475(lt[2, A053597(n+1)])`
-/

namespace A333490.P15234913107598889553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A333490.P15234913107598889553

/-! ## A333490.P14608138775698211384

`A114637(lt[2, A053597(n+1)])`
-/

namespace A333490.P14608138775698211384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A333490.P14608138775698211384

/-! ## A333490.P2158274826441028986

`lt[2, A053597(A233583(n+1))]`
-/

namespace A333490.P2158274826441028986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053597 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A333490.P2158274826441028986

/-!
# A333491: First index of partially unequal prime quartets.

The programs for A333491, there is no canonical definition to state claims against.
-/

/-! ## A333491.P13763973063386104285

`A333214(lt[Δ[A333214(n+1)], 2]+1)`
-/

namespace A333491.P13763973063386104285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333214 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333214 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A333491.P13763973063386104285

/-! ## A333491.P6793128077511035560

`eq[A031217(n+1), A031217(n+2)]+1`
-/

namespace A333491.P6793128077511035560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031217 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A333491.P6793128077511035560

/-! ## A333491.P6541819226310980793

`∩[A333214(n+1), A333214(n+2)-1]`
-/

namespace A333491.P6541819226310980793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333214 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333491.P6541819226310980793

/-! ## A333491.P8394503727955893182

`∑[A333489(n+4)%A037291(2*n+3)]+n+3`
-/

namespace A333491.P8394503727955893182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333489 (n + 4)) (A037291 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 3 : ℤ)

end

end A333491.P8394503727955893182

/-! ## A333491.P1874018498550088636

`lt[A129306(n+1), A246867(A085222(n))]`
-/

namespace A333491.P1874018498550088636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246867 (A085222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A333491.P1874018498550088636

/-!
# A333492: Position of first appearance of n in A271410 (LCM of binary indices).

The programs for A333492, there is no canonical definition to state claims against.
-/

/-! ## A333492.P14562647913744539462

`A304938(n+1)/A007862(A304938(n+1))`
-/

namespace A333492.P14562647913744539462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304938 (n + 1) : ℚ) / (A007862 (A304938 (n + 1)).toNat : ℚ)

end

end A333492.P14562647913744539462

/-! ## A333492.P1858824082897741383

`(2^n)%p?[A008949(3*n+1)]`
-/

namespace A333492.P1858824082897741383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ n : ℤ) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A333492.P1858824082897741383

/-! ## A333492.P16688446664774055281

`A000079(n)%A016106(A038207(n))`
-/

namespace A333492.P16688446664774055281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A016106 (A038207 n).toNat)

end

end A333492.P16688446664774055281

/-! ## A333492.P5389821194891899151

`round(sqrt(A007913(4^n+1)))`
-/

namespace A333492.P5389821194891899151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A007913 (4 ^ n + 1) : ℝ))

end

end A333492.P5389821194891899151

/-! ## A333492.P15063281221901759350

`A016018(A024652(n))`
-/

namespace A333492.P15063281221901759350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016018 (A024652 n).toNat

end

end A333492.P15063281221901759350

/-!
# A333494: a(1) = 1; a(n) = Sum_{k=1..n-1} ceiling(n/k) * a(k).

The programs for A333494, there is no canonical definition to state claims against.
-/

/-! ## A333494.P6015219939647250433

`Δ[A004396(A002264(Δ[3^n-2^n]))]`
-/

namespace A333494.P6015219939647250433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (2 ^ n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A002264 (f2 (n + 1) - f2 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333494.P6015219939647250433

/-! ## A333494.P10249719970043206460

`(A117910(A297988(n+1))-n)/A117910(n)`
-/

namespace A333494.P10249719970043206460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117910 (A297988 (n + 1)).toNat - (n : ℤ) : ℚ) / (A117910 n : ℚ)

end

end A333494.P10249719970043206460

/-!
# A333495: Number of ways of dividing a 2n X n rectangle into integer-sided rectangles.

The programs for A333495, there is no canonical definition to state claims against.
-/

/-! ## A333495.P16011816529845394386

`A116694(A117625(n))`
-/

namespace A333495.P16011816529845394386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116694 (A117625 n).toNat

end

end A333495.P16011816529845394386

/-! ## A333495.P7627608864782855832

`A116694(A051682(n)+1)`
-/

namespace A333495.P7627608864782855832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116694 (A051682 n + 1).toNat

end

end A333495.P7627608864782855832

/-! ## A333495.P7257304008211227861

`A333476(∑[4*n])`
-/

namespace A333495.P7257304008211227861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333476 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333495.P7257304008211227861

/-!
# A333496: Least k of Egyptian fractions 1 = 1/x_1 + ... + 1/x_k , with 0 < x_1 <= ... <= x_k = n.

The programs for A333496, there is no canonical definition to state claims against.
-/

/-! ## A333496.P5827366903876813420

`A360677((n+1)²/∏{p}[n+1, #])+ceil((n+1)/∏{p}[n+1, (n+1)/#])`
-/

namespace A333496.P5827366903876813420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360677 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat + ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉

end

end A333496.P5827366903876813420

/-! ## A333496.P1928498341511300846

`A334203(A187829(n+1))+A014963(n+1)`
-/

namespace A333496.P1928498341511300846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (A187829 (n + 1)).toNat + A014963 (n + 1)

end

end A333496.P1928498341511300846

/-! ## A333496.P9003932046397184167

`A000720(A032742(n+1))+A014963(A187829(n+1))`
-/

namespace A333496.P9003932046397184167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A032742 (n + 1)).toNat + A014963 (A187829 (n + 1)).toNat

end

end A333496.P9003932046397184167

/-! ## A333496.P7299984070445822545

`A128998(A280496(n+1))+A014963(A187829(n+1))`
-/

namespace A333496.P7299984070445822545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128998 (A280496 (n + 1)).toNat + A014963 (A187829 (n + 1)).toNat

end

end A333496.P7299984070445822545

/-! ## A333496.P4333324203699957357

`A128998(A325563(n+1))+A014963(A187829(n+1))`
-/

namespace A333496.P4333324203699957357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128998 (A325563 (n + 1)).toNat + A014963 (A187829 (n + 1)).toNat

end

end A333496.P4333324203699957357

/-!
# A333497: a(0) = a(1) = a(2) = 1; a(n) = Sum_{k=0..n-3} binomial(n-3,k) * a(k) * a(n-k-3).

The programs for A333497, there is no canonical definition to state claims against.
-/

/-! ## A333497.P643659865246815219

`∏{e}[a(n-1)*a(n-2), #+1]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=5, a(5)=6`
-/

namespace A333497.P643659865246815219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 5, 6] fun n f1 =>
  f1 (n - 1) * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A333497.P643659865246815219

/-! ## A333497.P4247545387675762037

`A384010(A345235(n+1))`
-/

namespace A333497.P4247545387675762037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384010 (A345235 (n + 1)).toNat

end

end A333497.P4247545387675762037

/-! ## A333497.P7577072857777976161

`A008611(A233583(n*a(n-1)))` with `a(0)=1`
-/

namespace A333497.P7577072857777976161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008611 (A233583 ((n : ℤ) * a (n - 1)).toNat).toNat

end

end A333497.P7577072857777976161

/-! ## A333497.P343945667538611788

`A033620(A317880(n+1)^A055642(n))`
-/

namespace A333497.P343945667538611788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (SequenceMachineLib.roundAway ((A317880 (n + 1) : ℚ) ^ (A055642 n : ℤ))).toNat

end

end A333497.P343945667538611788

/-! ## A333497.P8321611775238927747

`A121208(A004149(n))`
-/

namespace A333497.P8321611775238927747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121208 (A004149 n).toNat

end

end A333497.P8321611775238927747

/-!
# A333498: Sum of the heights of all Motzkin paths of length n.

The programs for A333498, there is no canonical definition to state claims against.
-/

/-! ## A333498.P2453938794106251006

`A372033(n)-A001006(n)`
-/

namespace A333498.P2453938794106251006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372033 n - A001006 n

end

end A333498.P2453938794106251006

/-! ## A333498.P11107885112386809226

`A178798(A037952(n))+A097861(n)`
-/

namespace A333498.P11107885112386809226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A037952 n).toNat + A097861 n

end

end A333498.P11107885112386809226

/-! ## A333498.P10496950589945846752

`A178798(A105695(n))+A097861(n)`
-/

namespace A333498.P10496950589945846752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A105695 n).toNat + A097861 n

end

end A333498.P10496950589945846752

/-! ## A333498.P12011763056002038420

`A097861(n)-A025466(A005190(n))`
-/

namespace A333498.P12011763056002038420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n - A025466 (A005190 n).toNat

end

end A333498.P12011763056002038420

/-! ## A333498.P12847159683719982251

`A097861(n)-A025465(A017939(n))`
-/

namespace A333498.P12847159683719982251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n - A025465 (A017939 n).toNat

end

end A333498.P12847159683719982251

/-!
# A333499: Number of numbers the sum of whose digits' factorials equals n.

The programs for A333499, there is no canonical definition to state claims against.
-/

/-! ## A333499.P14987509071382988136

`∑[A100196(A001700(n)-n)]+1`
-/

namespace A333499.P14987509071382988136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A001700 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A333499.P14987509071382988136

/-! ## A333499.P5791389139380419725

`A005041(A007855(n+1))+1`
-/

namespace A333499.P5791389139380419725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A007855 (n + 1)).toNat + 1

end

end A333499.P5791389139380419725

/-! ## A333499.P14248427603491576307

`A000006(A007167(n+1)+2)`
-/

namespace A333499.P14248427603491576307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A007167 (n + 1) + 2).toNat

end

end A333499.P14248427603491576307

