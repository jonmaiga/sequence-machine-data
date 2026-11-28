import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C037
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C048
import Seq.B000.C053
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B001.C015
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A402101: Number of ways to earn a score of 1.5*n on the AMC 10 or AMC 12, distinct up to the number of questions answered correctly, left blank, or answered incorrectly. See comments.

The programs for A402101, the canonical program `A402101.P3935774032216181146` is in `Seq.B000.C053`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402101 has offset 0).

The definition of A402101 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A402101.P3935774032216181146

`floor(n/4)-max(8, floor((n+1)/3))+9`

The canonical program, it is in `Seq.B000.C053`.
-/

namespace A402101

/-- `floor(n/4)-max(8, floor((n+1)/3))+9` -/
def P3935774032216181146.Spec : Prop :=
  ∀ n, P3935774032216181146.a n = A402101 n

theorem P3935774032216181146.correct : P3935774032216181146.Spec := by
  intro n
  simp only [A402101]

end A402101

/-!
# A402106: Difference between the integer parts of the square roots of the upper and lower central divisors of n.

The programs for A402106, there is no canonical definition to state claims against.
-/

/-! ## A402106.P12539283580123481302

`floor(sqrt(A033677(n+1)))-floor(sqrt(A033676(n+1)))`
-/

namespace A402106.P12539283580123481302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A033677 (n + 1)) - Int.sqrt (A033676 (n + 1))

end

end A402106.P12539283580123481302

/-! ## A402106.P15197862432770686349

`A000196(A033677(n+1))-A000196(A033676(n+1))`
-/

namespace A402106.P15197862432770686349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A033677 (n + 1)).toNat - A000196 (A033676 (n + 1)).toNat

end

end A402106.P15197862432770686349

/-! ## A402106.P9110062804386311904

`A104637(A309153(n+2))`
-/

namespace A402106.P9110062804386311904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104637 (A309153 (n + 2)).toNat

end

end A402106.P9110062804386311904

/-! ## A402106.P9136984406962545340

`A357722(A348869(n+2))`
-/

namespace A402106.P9136984406962545340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357722 ((A348869 (n + 2)).toNat + 11)

end

end A402106.P9136984406962545340

/-! ## A402106.P10078524265726533339

`A037823(A026665(n))`
-/

namespace A402106.P10078524265726533339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037823 (A026665 n).toNat

end

end A402106.P10078524265726533339

/-!
# A402108: a(n) is the least positive integer k for which exactly n composite divisors d of k have the same sum of prime factors as a smaller composite divisor of k (with multiplicity).

The programs for A402108, there is no canonical definition to state claims against.
-/

/-! ## A402108.P2506248302544659319

`filter[A380999(2*n+1), A115517(#)]`
-/

namespace A402108.P2506248302544659319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380999 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115517 (f1 j).toNat = 1) n)

end

end A402108.P2506248302544659319

/-!
# A402120: a(n) is the sum of distinct sums i^3 + j^3 + k^3 for 0<=i<=j<=k<=n.

The programs for A402120, there is no canonical definition to state claims against.
-/

/-! ## A402120.P11124143082828098072

`A002415(n+1)*A240443(2*n+1)`
-/

namespace A402120.P11124143082828098072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (n + 1) * A240443 (2 * n + 1)

end

end A402120.P11124143082828098072

/-!
# A402121: Number of plane partitions of n with no repeated rows or columns, whose rows and columns are independently labeled.

The programs for A402121, there is no canonical definition to state claims against.
-/

/-! ## A402121.P11864347711428609603

`A321391(A063557(n))`
-/

namespace A402121.P11864347711428609603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321391 (A063557 n).toNat

end

end A402121.P11864347711428609603

/-! ## A402121.P3390671678271340725

`A292685(A294691(n))`
-/

namespace A402121.P3390671678271340725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292685 (A294691 n).toNat

end

end A402121.P3390671678271340725

/-! ## A402121.P432181627395349701

`A146367(A283984(n+1))`
-/

namespace A402121.P432181627395349701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146367 (A283984 (n + 1)).toNat

end

end A402121.P432181627395349701

/-!
# A402123: Number of ways to partition the numbers from 1 to n into blocks of consecutive integers such that the sum of the smallest and largest numbers in each block is a perfect square.

The programs for A402123, there is no canonical definition to state claims against.
-/

/-! ## A402123.P4240056763492997820

`A119498(A050364(n+2))`
-/

namespace A402123.P4240056763492997820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119498 (A050364 (n + 2)).toNat

end

end A402123.P4240056763492997820

/-! ## A402123.P16674442538489568567

`A179560(A177927(n+2))`
-/

namespace A402123.P16674442538489568567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179560 (A177927 (n + 2)).toNat

end

end A402123.P16674442538489568567

/-! ## A402123.P4237676536040026140

`A104107(A354938(n+2))`
-/

namespace A402123.P4237676536040026140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104107 (A354938 (n + 2)).toNat

end

end A402123.P4237676536040026140

/-! ## A402123.P9899197747571189292

`A267152(A335070(n+2))`
-/

namespace A402123.P9899197747571189292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267152 (A335070 (n + 2)).toNat

end

end A402123.P9899197747571189292

/-! ## A402123.P4118239794609748938

`A030308(A131096(n+1))`
-/

namespace A402123.P4118239794609748938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A131096 (n + 1)).toNat

end

end A402123.P4118239794609748938

/-!
# A402124: Lexicographically earliest sequence of integers >= 2 such that no two adjacent blocks of terms have the same product.

The programs for A402124, there is no canonical definition to state claims against.
-/

/-! ## A402124.P4674700367834596795

`A158440(xor(n, n+1))`
-/

namespace A402124.P4674700367834596795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158440 (Nat.xor n (n + 1))

end

end A402124.P4674700367834596795

/-! ## A402124.P18372352103722650093

`A072628(A059152(n))`
-/

namespace A402124.P18372352103722650093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072628 (A059152 n).toNat

end

end A402124.P18372352103722650093

/-! ## A402124.P1532697245451077777

`A050376(A302786(A207901(2*n+1)))`
-/

namespace A402124.P1532697245451077777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (A302786 (A207901 (2 * n + 1)).toNat).toNat

end

end A402124.P1532697245451077777

/-! ## A402124.P15434674940753564104

`A055093(A038713(n+1))`
-/

namespace A402124.P15434674940753564104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055093 (A038713 (n + 1)).toNat

end

end A402124.P15434674940753564104

/-! ## A402124.P17868874660097066049

`A126302(A061393(n+1))`
-/

namespace A402124.P17868874660097066049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126302 (A061393 (n + 1)).toNat

end

end A402124.P17868874660097066049

/-!
# A402126: Least s such that some s X s grid of lattice points with spacing prime(n) shows a pattern of visible and invisible points that no s X s grid with spacing 1 shows.

The programs for A402126, there is no canonical definition to state claims against.
-/

/-! ## A402126.P11323059470858693274

`A082233(A008837(n+1))`
-/

namespace A402126.P11323059470858693274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082233 (A008837 (n + 1)).toNat

end

end A402126.P11323059470858693274

/-! ## A402126.P464302960845984575

`A115281(A084921(n+1))`
-/

namespace A402126.P464302960845984575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115281 (A084921 (n + 1)).toNat

end

end A402126.P464302960845984575

/-! ## A402126.P14022277479827934523

`A132071(A072205(n+1))`
-/

namespace A402126.P14022277479827934523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132071 (A072205 (n + 1)).toNat

end

end A402126.P14022277479827934523

/-! ## A402126.P12555922068332795653

`A131901(A110494(n+1))`
-/

namespace A402126.P12555922068332795653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131901 (A110494 (n + 1)).toNat

end

end A402126.P12555922068332795653

/-! ## A402126.P748361208816705292

`A366561(A034953(n+1))`
-/

namespace A402126.P748361208816705292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366561 (A034953 (n + 1)).toNat

end

end A402126.P748361208816705292

/-!
# A402127: Least number of Wang tile types that tile an n X n square but not an (n+1) X (n+1) square.

The programs for A402127, there is no canonical definition to state claims against.
-/

/-! ## A402127.P13840887829757082294

`A061339(A003661(n+1))`
-/

namespace A402127.P13840887829757082294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061339 (A003661 (n + 1)).toNat

end

end A402127.P13840887829757082294

/-! ## A402127.P3080115703163553440

`A096076(n)-A011872(n)`
-/

namespace A402127.P3080115703163553440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096076 n - A011872 n

end

end A402127.P3080115703163553440

/-! ## A402127.P17967877276760823044

`A033620(n+1)-A011872(n)`
-/

namespace A402127.P17967877276760823044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1) - A011872 n

end

end A402127.P17967877276760823044

/-! ## A402127.P602313828858721135

`A033637(n+1)-A011872(n)`
-/

namespace A402127.P602313828858721135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033637 (n + 1) - A011872 n

end

end A402127.P602313828858721135

/-! ## A402127.P15330868808847806181

`A033892(n+1)-A011872(n)`
-/

namespace A402127.P15330868808847806181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033892 (n + 1) - A011872 n

end

end A402127.P15330868808847806181

/-!
# A402128: Number of plane partitions of n whose row sums and column sums are all pairwise distinct.

The programs for A402128, there is no canonical definition to state claims against.
-/

/-! ## A402128.P87913044511998375

`A133945(A307240(n+1))`
-/

namespace A402128.P87913044511998375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133945 (A307240 (n + 1)).toNat

end

end A402128.P87913044511998375

/-!
# A402130: Number of plane partitions of n with equal corresponding row and column sums.

The programs for A402130, there is no canonical definition to state claims against.
-/

/-! ## A402130.P13817537569499947146

`A178786(A103322(n))`
-/

namespace A402130.P13817537569499947146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A103322 n).toNat

end

end A402130.P13817537569499947146

/-!
# A402138: Number of integer compositions of n not comprising a 1-based restricted growth sequence.

The programs for A402138, there is no canonical definition to state claims against.
-/

/-! ## A402138.P13442177942973674503

`2^n-A383253(n+1)`
-/

namespace A402138.P13442177942973674503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A383253 (n + 1)

end

end A402138.P13442177942973674503

/-! ## A402138.P9466532449250227548

`A402140(n+1)+A011782(n+1)-A107429(n+1)`
-/

namespace A402138.P9466532449250227548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402140 (n + 1) + A011782 (n + 1) - A107429 (n + 1)

end

end A402138.P9466532449250227548

/-!
# A402139: Numbers k such that the k-th composition in standard order is a 1-based restricted growth sequence.

The programs for A402139, there is no canonical definition to state claims against.
-/

/-! ## A402139.P16197482146940056669

`eq[A005951(n), A089262(n)]`
-/

namespace A402139.P16197482146940056669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005951 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089262 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A402139.P16197482146940056669

/-! ## A402139.P17424845577427220779

`eq[A065120(n), A164057(n)]`
-/

namespace A402139.P17424845577427220779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A402139.P17424845577427220779

/-! ## A402139.P8906326465085719570

`eq[A005951(n), A352516(n)]`
-/

namespace A402139.P8906326465085719570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005951 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352516 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A402139.P8906326465085719570

/-! ## A402139.P14980262625856395141

`eq[A157830(n), A352516(n)]`
-/

namespace A402139.P14980262625856395141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157830 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352516 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A402139.P14980262625856395141

/-!
# A402140: Number of integer compositions of n that cover an initial interval of positive integers but are not a 1-based restricted growth sequence.

The programs for A402140, there is no canonical definition to state claims against.
-/

/-! ## A402140.P14199787469169554869

`A107429(n+1)-A383253(n+1)`
-/

namespace A402140.P14199787469169554869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107429 (n + 1) - A383253 (n + 1)

end

end A402140.P14199787469169554869

/-! ## A402140.P2170067516634793947

`A402138(n+1)-A188575(n+1)`
-/

namespace A402140.P2170067516634793947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402138 (n + 1) - A188575 (n + 1)

end

end A402140.P2170067516634793947

/-!
# A402142: Regular triangle read by rows where T(n,k) is the number of k-part integer compositions of n that do not comprise a 1-based restricted growth sequence.

The programs for A402142, there is no canonical definition to state claims against.
-/

/-! ## A402142.P5536361769484142509

`A097805(n)-A383713(n)`
-/

namespace A402142.P5536361769484142509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n - A383713 n

end

end A402142.P5536361769484142509

/-! ## A402142.P15216668777751323950

`A176166(A340476(n))`
-/

namespace A402142.P15216668777751323950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176166 (A340476 n).toNat

end

end A402142.P15216668777751323950

/-! ## A402142.P3890964383086710333

`A283827(A135722(n+1))`
-/

namespace A402142.P3890964383086710333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283827 (A135722 (n + 1)).toNat

end

end A402142.P3890964383086710333

/-! ## A402142.P10781576887454999254

`A276172(A156953(n+1))`
-/

namespace A402142.P10781576887454999254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276172 (A156953 (n + 1)).toNat

end

end A402142.P10781576887454999254

/-! ## A402142.P14084148055225608420

`A108339(A209572(n+2))`
-/

namespace A402142.P14084148055225608420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108339 (A209572 (n + 2)).toNat

end

end A402142.P14084148055225608420

/-!
# A402143: Numbers k such that the k-th composition in standard order covers an initial interval of positive integers but is not a 1-based restricted growth sequence.

The programs for A402143, there is no canonical definition to state claims against.
-/

/-! ## A402143.P17483681576546022432

`∩[A333217(n+1), A402141(n+1)]`
-/

namespace A402143.P17483681576546022432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402143.P17483681576546022432

/-!
# A402144: Number of finite sequences of length n that cover an initial interval of positive integers but do not have 1-based restricted growth.

The programs for A402144, the canonical program `A402144.P11291618821994640204` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402144 has offset 1).

The definition of A402144 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A402144.P11291618821994640204

`A000670(n+1)-A000110(n+1)`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A402144

/-- `A000670(n+1)-A000110(n+1)` -/
def P11291618821994640204.Spec : Prop :=
  ∀ n, P11291618821994640204.a n = A402144 (n + 1)

theorem P11291618821994640204.correct : P11291618821994640204.Spec := by
  intro n
  simp only [A402144, Nat.add_sub_cancel]

end A402144

/-! ## A402144.P3822573225798119566

`A276898(n+1)-A276724(n+1)`
-/

namespace A402144.P3822573225798119566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276898 (n + 1) - A276724 (n + 1)

end

end A402144.P3822573225798119566

namespace A402144

/-- `A276898(n+1)-A276724(n+1)` -/
def P3822573225798119566.Spec : Prop :=
  ∀ n, P3822573225798119566.a n = A402144 (n + 1)

end A402144

/-! ## A402144.P9161273284290288024

`A276898(n+1)-A276725(n+1)`
-/

namespace A402144.P9161273284290288024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276898 (n + 1) - A276725 (n + 1)

end

end A402144.P9161273284290288024

namespace A402144

/-- `A276898(n+1)-A276725(n+1)` -/
def P9161273284290288024.Spec : Prop :=
  ∀ n, P9161273284290288024.a n = A402144 (n + 1)

end A402144

/-! ## A402144.P500290934928589188

`A276898(n+1)-A276726(n+1)`
-/

namespace A402144.P500290934928589188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276898 (n + 1) - A276726 (n + 1)

end

end A402144.P500290934928589188

namespace A402144

/-- `A276898(n+1)-A276726(n+1)` -/
def P500290934928589188.Spec : Prop :=
  ∀ n, P500290934928589188.a n = A402144 (n + 1)

end A402144

/-!
# A402145: Number of integer compositions of n that have 1-based restricted growth and whose reverse also has 1-based restricted growth.

The programs for A402145, there is no canonical definition to state claims against.
-/

/-! ## A402145.P18365628930929156828

`A103128(A304970(n))`
-/

namespace A402145.P18365628930929156828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A304970 n).toNat

end

end A402145.P18365628930929156828

/-! ## A402145.P10796752673356321825

`A000196(A000664(n))`
-/

namespace A402145.P10796752673356321825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000664 n).toNat

end

end A402145.P10796752673356321825

/-! ## A402145.P3734077602092665382

`A322901(A349843(n))`
-/

namespace A402145.P3734077602092665382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322901 (A349843 n).toNat

end

end A402145.P3734077602092665382

/-! ## A402145.P3326368707143431967

`A003059(A025272(n+1))`
-/

namespace A402145.P3326368707143431967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A025272 (n + 1)).toNat

end

end A402145.P3326368707143431967

/-! ## A402145.P11309975801219433504

`A111651(A292211(n+1))`
-/

namespace A402145.P11309975801219433504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A292211 (n + 1)).toNat

end

end A402145.P11309975801219433504

/-!
# A402158: Primes p such that the iteration of T(z) = (z + 2)*(z^7 + 5*z^6 + 6*z^5 - 2*z^4 - 4*z^3 + 2*z^2 + 9*z - 1) + z collapses every element of GF(p) to -2.

The programs for A402158, there is no canonical definition to state claims against.
-/

/-! ## A402158.P12008175372969702074

`A197187(A259592(n+1))`
-/

namespace A402158.P12008175372969702074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197187 (A259592 (n + 1)).toNat

end

end A402158.P12008175372969702074

/-!
# A402159: Largest possible smallest denominator in a representation of 1 as a sum of n distinct unit fractions.

The programs for A402159, there is no canonical definition to state claims against.
-/

/-! ## A402159.P751083475622040097

`ceil(ϕ/atan(3/(n+1)))`
-/

namespace A402159.P751083475622040097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio / Real.arctan (3 / (n + 1 : ℚ) : ℝ)⌉

end

end A402159.P751083475622040097

/-! ## A402159.P13084448701560509976

`ceil(ϕ/acot((n+1)/3))`
-/

namespace A402159.P13084448701560509976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio / SequenceMachineLib.acot ((n + 1 : ℚ) / 3 : ℝ)⌉

end

end A402159.P13084448701560509976

/-! ## A402159.P11113880484116755303

`ceil(log(A324741(n+2)))`
-/

namespace A402159.P11113880484116755303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A324741 (n + 2) : ℝ)⌉

end

end A402159.P11113880484116755303

/-! ## A402159.P12351745740042705822

`A225875(A072932(n+2))`
-/

namespace A402159.P12351745740042705822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225875 (A072932 (n + 2)).toNat

end

end A402159.P12351745740042705822

/-! ## A402159.P16565571906289712985

`A204562(A110585(n+2))`
-/

namespace A402159.P16565571906289712985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204562 (A110585 (n + 2)).toNat

end

end A402159.P16565571906289712985

/-!
# A402165: Number of steps to reach 2 starting from n under the map x -> x/lpf(x) + 1, where lpf(x) is the least prime factor of x (A020639).

The programs for A402165, the canonical program `A402165.P2637134116409634668` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402165 has offset 2).

The definition of A402165 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A402165.P2637134116409634668

`1+a((n+2)/A020639(n+2)-1)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A402165

/-- `1+a((n+2)/A020639(n+2)-1)` -/
def P2637134116409634668.Spec : Prop :=
  ∀ n, (P2637134116409634668.a n : ℤ) = A402165 (n + 2)

theorem P2637134116409634668.correct : P2637134116409634668.Spec := by
  intro n
  simp only [A402165, Nat.add_sub_cancel]

end A402165

/-!
# A402169: Limiting firing word at a distant square for a stack of coins, when each square with at least two coins simultaneously sends one coin to each of the next two squares on its right at every tick.

The programs for A402169, the canonical program `A402169.P15384791389062127097` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402169 has offset 1).

The definition of A402169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A402169.P15384791389062127097

`char[∑[A101660(n+2)]]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A402169

/-- `char[∑[A101660(n+2)]]` -/
def P15384791389062127097.Spec : Prop :=
  ∀ n, (P15384791389062127097.a n : ℤ) = A402169 (n + 1)

theorem P15384791389062127097.correct : P15384791389062127097.Spec := by
  intro n
  simp only [A402169, Nat.add_sub_cancel]

end A402169

/-! ## A402169.P3658814845419913906

`A249066(A336733(n+2))`
-/

namespace A402169.P3658814845419913906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249066 (A336733 (n + 2)).toNat

end

end A402169.P3658814845419913906

namespace A402169

/-- `A249066(A336733(n+2))` -/
def P3658814845419913906.Spec : Prop :=
  ∀ n, P3658814845419913906.a n = A402169 (n + 1)

end A402169

/-! ## A402169.P12861065613090167581

`A071026(A136294(n+1))`
-/

namespace A402169.P12861065613090167581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071026 (A136294 (n + 1)).toNat

end

end A402169.P12861065613090167581

namespace A402169

/-- `A071026(A136294(n+1))` -/
def P12861065613090167581.Spec : Prop :=
  ∀ n, P12861065613090167581.a n = A402169 (n + 1)

end A402169

/-! ## A402169.P3134738137354294454

`A287795(A154888(n+2))`
-/

namespace A402169.P3134738137354294454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287795 (A154888 (n + 2)).toNat

end

end A402169.P3134738137354294454

namespace A402169

/-- `A287795(A154888(n+2))` -/
def P3134738137354294454.Spec : Prop :=
  ∀ n, P3134738137354294454.a n = A402169 (n + 1)

end A402169

/-! ## A402169.P3082307552423076524

`A176178(A327733(n+2))`
-/

namespace A402169.P3082307552423076524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176178 (A327733 (n + 2)).toNat

end

end A402169.P3082307552423076524

namespace A402169

/-- `A176178(A327733(n+2))` -/
def P3082307552423076524.Spec : Prop :=
  ∀ n, P3082307552423076524.a n = A402169 (n + 1)

end A402169

/-!
# A402170: Square array read by antidiagonals: T(n,0) = T(0,k) = 1, and for n, k >= 1, T(n,k) is the least positive integer such that T(i,j)*T(n,k) != T(i,k)*T(n,j) for all 0 <= i < n and 0 <= j < k.

The programs for A402170, there is no canonical definition to state claims against.
-/

/-! ## A402170.P3645227147659163289

`A091829(A155971(n))`
-/

namespace A402170.P3645227147659163289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091829 (A155971 n).toNat

end

end A402170.P3645227147659163289

/-! ## A402170.P18033781931324808433

`A030496(A009963(n))`
-/

namespace A402170.P18033781931324808433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A009963 n).toNat

end

end A402170.P18033781931324808433

/-! ## A402170.P15618463069563144862

`A089398(A063394(n))`
-/

namespace A402170.P15618463069563144862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089398 (A063394 n).toNat

end

end A402170.P15618463069563144862

/-! ## A402170.P11561771343678341505

`A049105(A123610(n))`
-/

namespace A402170.P11561771343678341505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049105 (A123610 n).toNat

end

end A402170.P11561771343678341505

/-! ## A402170.P5177135233786695752

`A034968(A174690(n))`
-/

namespace A402170.P5177135233786695752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A174690 n).toNat

end

end A402170.P5177135233786695752

/-!
# A402173: Number of primes p < 10^n such that p+2, 2p+1, 2p+3 are also primes.

The programs for A402173, there is no canonical definition to state claims against.
-/

/-! ## A402173.P16804869301057470283

`A048265(A081913(n))`
-/

namespace A402173.P16804869301057470283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048265 (A081913 n).toNat

end

end A402173.P16804869301057470283

/-!
# A402174: Number of groups G of order n such that Aut(G) is isomorphic to G.

The programs for A402174, there is no canonical definition to state claims against.
-/

/-! ## A402174.P305093509821049315

`and(A002769(n+1), A373898(n+1))`
-/

namespace A402174.P305093509821049315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002769 (n + 1)) (A373898 (n + 1))

end

end A402174.P305093509821049315

/-! ## A402174.P16509755776630784300

`and(A100492(n+1), A287722(n+1))`
-/

namespace A402174.P16509755776630784300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100492 (n + 1)) (A287722 (n + 1))

end

end A402174.P16509755776630784300

/-! ## A402174.P3859340962548382261

`and(A121559(n+1), A320331(n))`
-/

namespace A402174.P3859340962548382261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A121559 (n + 1)) (A320331 n)

end

end A402174.P3859340962548382261

/-! ## A402174.P7468406161088210546

`and(A294223(n+1), A373898(n+1))`
-/

namespace A402174.P7468406161088210546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A294223 (n + 1)) (A373898 (n + 1))

end

end A402174.P7468406161088210546

/-! ## A402174.P12505733932163954215

`A061007(A032489(n+1))`
-/

namespace A402174.P12505733932163954215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (A032489 (n + 1)).toNat

end

end A402174.P12505733932163954215

/-!
# A402177: Number of distinct polynomials obtained after n steps starting from P(x) = 1 and repeatedly applying either P -> x*(x*P)' or P -> P(0) + Integral_{t=0..x} ((P(t) - P(0))/t) dt.

The programs for A402177, there is no canonical definition to state claims against.
-/

/-! ## A402177.P592670162268103795

`A276581(A149826(n))`
-/

namespace A402177.P592670162268103795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A149826 n).toNat

end

end A402177.P592670162268103795

/-! ## A402177.P1673027006598794482

`A100795(A148363(n+1))`
-/

namespace A402177.P1673027006598794482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (A148363 (n + 1)).toNat

end

end A402177.P1673027006598794482

/-! ## A402177.P7651547692356784630

`A100617(A148782(n+1))`
-/

namespace A402177.P7651547692356784630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A148782 (n + 1)).toNat

end

end A402177.P7651547692356784630

/-! ## A402177.P16265514972628812656

`A194315(A240610(n+1))`
-/

namespace A402177.P16265514972628812656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194315 (A240610 (n + 1)).toNat

end

end A402177.P16265514972628812656

/-! ## A402177.P630326752207906947

`A194303(A268419(n+1))`
-/

namespace A402177.P630326752207906947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194303 (A268419 (n + 1)).toNat

end

end A402177.P630326752207906947

/-!
# A402178: Number of distinct values at x = 1 of polynomials obtained after n steps starting from P(x) = 1 and repeatedly applying either P -> x*(x*P)' or P -> P(0) + Integral_{t=0..x} ((P(t) - P(0))/t) dt.

The programs for A402178, there is no canonical definition to state claims against.
-/

/-! ## A402178.P10874893271491516858

`A105223(A052536(n))`
-/

namespace A402178.P10874893271491516858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A052536 n).toNat

end

end A402178.P10874893271491516858

/-! ## A402178.P8534360853340304550

`A219227(A079969(n))`
-/

namespace A402178.P8534360853340304550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219227 (A079969 n).toNat

end

end A402178.P8534360853340304550

/-! ## A402178.P12312441632544266769

`A180447(A246019(n))`
-/

namespace A402178.P12312441632544266769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (A246019 n).toNat

end

end A402178.P12312441632544266769

/-! ## A402178.P7187798476704727292

`A067085(A113040(n+1))`
-/

namespace A402178.P7187798476704727292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067085 (A113040 (n + 1)).toNat

end

end A402178.P7187798476704727292

/-! ## A402178.P4086320652143068935

`A135660(A079003(n+1))`
-/

namespace A402178.P4086320652143068935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A079003 (n + 1)).toNat

end

end A402178.P4086320652143068935

/-!
# A402180: a(n) = binomial(bigomega(n) + omega(n), omega(n)) - tau(n), where bigomega = A001222, omega = A001221, and tau = A000005.

The programs for A402180, the canonical program `A402180.P6859304511720822064` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402180 has offset 1).

The definition of A402180 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A001222(n+1)+A001221(n+1), A001221(n+1))-A000005(n+1)` (program `A402180.P6859304511720822064`, by `A402180.P6859304511720822064.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A402180.P6859304511720822064

`C(A001222(n+1)+A001221(n+1), A001221(n+1))-A000005(n+1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A402180

/-- `C(A001222(n+1)+A001221(n+1), A001221(n+1))-A000005(n+1)` -/
def P6859304511720822064.Spec : Prop :=
  ∀ n, P6859304511720822064.a n = A402180 (n + 1)

theorem P6859304511720822064.correct : P6859304511720822064.Spec := by
  intro n
  simp only [A402180, Nat.add_sub_cancel]

end A402180

/-! ## A402180.P8850017725446490541

`A376567(n+1)-A000005(n+1)`
-/

namespace A402180.P8850017725446490541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376567 (n + 1) - A000005 (n + 1)

end

end A402180.P8850017725446490541

namespace A402180

/-- `A376567(n+1)-A000005(n+1)` -/
def P8850017725446490541.Spec : Prop :=
  ∀ n, P8850017725446490541.a n = A402180 (n + 1)

end A402180

/-!
# A402184: a(n) = Sum_{d|n} d^(1 - mu(d)^2).

The programs for A402184, the canonical program `A402184.P4793468992118412800` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402184 has offset 1).

The definition of A402184 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A402184.P13024688728758669617

`∑{d}[n+1, #^(1-A008683(#)²)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A402184.P13024688728758669617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (1 - A008683 d ^ 2 : ℤ)

end

end A402184.P13024688728758669617

namespace A402184

/-- `∑{d}[n+1, #^(1-A008683(#)²)]` -/
def P13024688728758669617.Spec : Prop :=
  ∀ n, P13024688728758669617.a n = (A402184 (n + 1) : ℚ)

end A402184

/-! ## A402184.P5448021514354941782

`A000203(n+1)-A065608(A007947(n+1))`
-/

namespace A402184.P5448021514354941782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A065608 (A007947 (n + 1)).toNat

end

end A402184.P5448021514354941782

namespace A402184

/-- `A000203(n+1)-A065608(A007947(n+1))` -/
def P5448021514354941782.Spec : Prop :=
  ∀ n, P5448021514354941782.a n = A402184 (n + 1)

end A402184

/-! ## A402184.P4793468992118412800

`A000203(n+1)-A048250(n+1)+A034444(n+1)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A402184

/-- `A000203(n+1)-A048250(n+1)+A034444(n+1)` -/
def P4793468992118412800.Spec : Prop :=
  ∀ n, P4793468992118412800.a n = A402184 (n + 1)

theorem P4793468992118412800.correct : P4793468992118412800.Spec := by
  intro n
  simp only [A402184, Nat.add_sub_cancel]

end A402184

/-! ## A402184.P4273516186171717307

`A000203(n+1)-A000203(A007947(n+1))+A000005(A007947(n+1))`
-/

namespace A402184.P4273516186171717307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000203 (A007947 (n + 1)).toNat + A000005 (A007947 (n + 1)).toNat

end

end A402184.P4273516186171717307

namespace A402184

/-- `A000203(n+1)-A000203(A007947(n+1))+A000005(A007947(n+1))` -/
def P4273516186171717307.Spec : Prop :=
  ∀ n, P4273516186171717307.a n = A402184 (n + 1)

end A402184

/-! ## A402184.P8349033581932834281

`A162296(n+1)+A034444(n+1)`
-/

namespace A402184.P8349033581932834281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (n + 1) + A034444 (n + 1)

end

end A402184.P8349033581932834281

namespace A402184

/-- `A162296(n+1)+A034444(n+1)` -/
def P8349033581932834281.Spec : Prop :=
  ∀ n, P8349033581932834281.a n = A402184 (n + 1)

theorem P8349033581932834281.correct : P8349033581932834281.Spec := by
  intro n
  simp only [A402184, Nat.add_sub_cancel, A402184.P8349033581932834281.a, A402184.P4793468992118412800.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034444, A034444.P6574915864346323298.a, A048250, A048250.P17960441032552816313.f1, A048250.P17960441032552816313.a, A162296, A162296.P12828981685556826858.f1, A162296.P12828981685556826858.f2, A162296.P12828981685556826858.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A402184

/-! ## A402184.P10244973188371758760

`A395435(n+1)+A389162(n+1)`
-/

namespace A402184.P10244973188371758760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395435 (n + 1) + A389162 (n + 1)

end

end A402184.P10244973188371758760

namespace A402184

/-- `A395435(n+1)+A389162(n+1)` -/
def P10244973188371758760.Spec : Prop :=
  ∀ n, P10244973188371758760.a n = A402184 (n + 1)

end A402184

/-! ## A402184.P12976421812510741451

`A034448(n+1)+A034444(n+1)-A389204(n+1)`
-/

namespace A402184.P12976421812510741451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + A034444 (n + 1) - A389204 (n + 1)

end

end A402184.P12976421812510741451

namespace A402184

/-- `A034448(n+1)+A034444(n+1)-A389204(n+1)` -/
def P12976421812510741451.Spec : Prop :=
  ∀ n, P12976421812510741451.a n = A402184 (n + 1)

end A402184

/-! ## A402184.P1453648395583849543

`A007503(n+1)-A344465(n+1)`
-/

namespace A402184.P1453648395583849543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A344465 (n + 1)

end

end A402184.P1453648395583849543

namespace A402184

/-- `A007503(n+1)-A344465(n+1)` -/
def P1453648395583849543.Spec : Prop :=
  ∀ n, P1453648395583849543.a n = A402184 (n + 1)

end A402184

/-!
# A402188: Numbers k such that (5^k - 1)/4 is squarefree.

The programs for A402188, there is no canonical definition to state claims against.
-/

/-! ## A402188.P14161485446908293260

`eq[A157830(n), A353464(n+1)]`
-/

namespace A402188.P14161485446908293260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157830 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A402188.P14161485446908293260

/-! ## A402188.P6391626574244811128

`A119605(A231236(n+2))`
-/

namespace A402188.P6391626574244811128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119605 (A231236 (n + 2)).toNat

end

end A402188.P6391626574244811128

/-! ## A402188.P13569432283891893635

`filter[A375462(2*n+1), A166486(#)]`
-/

namespace A402188.P13569432283891893635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375462 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A402188.P13569432283891893635

/-! ## A402188.P17135991033621386930

`∩[A039261(n+1), A119605(n+1)]`
-/

namespace A402188.P17135991033621386930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402188.P17135991033621386930

/-! ## A402188.P16974115132362444276

`∩[A080612(n+1), A119605(n+1)]`
-/

namespace A402188.P16974115132362444276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402188.P16974115132362444276

/-!
# A402189: Least prime factor of (5^n - 1)/4.

The programs for A402189, there is no canonical definition to state claims against.
-/

/-! ## A402189.P8122134341340810273

`A082072(5^(n+1))`
-/

namespace A402189.P8122134341340810273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082072 (5 ^ (n + 1))

end

end A402189.P8122134341340810273

/-!
# A402190: Differences of squares of primes that are areas of right triangles with coprime integer sides.

The programs for A402190, there is no canonical definition to state claims against.
-/

/-! ## A402190.P14775986823497052331

`∩[A024365(n+1), A124865(n+1)]`
-/

namespace A402190.P14775986823497052331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402190.P14775986823497052331

/-!
# A402194: Primes p for which pi_{24;17,23}(p) - pi_{24;1,7}(p) = -1, where pi_{m;a,b,...}(x) is the number of primes <= x which are congruent to a or b or ... (mod m).

The programs for A402194, there is no canonical definition to state claims against.
-/

/-! ## A402194.P17590657943333086333

`A115232(A037322(n+2))`
-/

namespace A402194.P17590657943333086333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115232 (A037322 (n + 2)).toNat

end

end A402194.P17590657943333086333

