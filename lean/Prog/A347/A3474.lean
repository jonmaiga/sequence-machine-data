import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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

/-!
# A347400: Lexicographically earliest sequence of distinct terms > 0 such that concatenating n to a(n) forms a palindrome in base 10.

The programs for A347400, there is no canonical definition to state claims against.
-/

/-! ## A347400.P2660807852923386005

`A004086(val(n+1, 10)+10*(n+1))`
-/

namespace A347400.P2660807852923386005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.valuation (n + 1) 10 + 10 * (n + 1))

end

end A347400.P2660807852923386005

/-! ## A347400.P1454502198026397543

`A004086(n)+Δ[A056142(n)]`
-/

namespace A347400.P1454502198026397543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n + (f1 (n + 1) - f1 n)

end

end A347400.P1454502198026397543

/-! ## A347400.P4521457902133248518

`A004093(5*n)+Δ[A056142(n)]`
-/

namespace A347400.P4521457902133248518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (5 * n) + (f1 (n + 1) - f1 n)

end

end A347400.P4521457902133248518

/-! ## A347400.P15836895856885800597

`Δ[A056142(n)]+n-A056965(n)`
-/

namespace A347400.P15836895856885800597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((n : ℤ) - A056965 n)

end

end A347400.P15836895856885800597

/-! ## A347400.P2580166986525066743

`Δ[A056142(n)]+A056964(n)-n`
-/

namespace A347400.P2580166986525066743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A056964 n - (n : ℤ))

end

end A347400.P2580166986525066743

/-! ## A347400.P2948171825874100977

`Δ[A056142(n)]+xor(n, A256756(n))`
-/

namespace A347400.P2948171825874100977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.xor (n : ℤ) (A256756 n)

end

end A347400.P2948171825874100977

/-! ## A347400.P3844033724219216806

`A056525(n+1)+n-A056143(n)`
-/

namespace A347400.P3844033724219216806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1) + ((n : ℤ) - A056143 n)

end

end A347400.P3844033724219216806

/-! ## A347400.P13868927321027668098

`A004086(A043283(n+1)+A017377(n))`
-/

namespace A347400.P13868927321027668098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A043283 (n + 1) + A017377 n).toNat

end

end A347400.P13868927321027668098

/-! ## A347400.P7386504038598629671

`A068636(A043283(n+1)+A017377(n))`
-/

namespace A347400.P7386504038598629671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068636 (A043283 (n + 1) + A017377 n).toNat

end

end A347400.P7386504038598629671

/-! ## A347400.P13904081646194399002

`A004086(A056525(n+1)-A054899(n))`
-/

namespace A347400.P13904081646194399002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A056525 (n + 1) - A054899 n).toNat

end

end A347400.P13904081646194399002

/-!
# A347402: Lexicographically earliest sequence of distinct terms > 0 such that the product n * a(n) forms a palindrome in base 10.

The programs for A347402, there is no canonical definition to state claims against.
-/

/-! ## A347402.P2180768644046491178

`lt[A054842(n), 6]+1`
-/

namespace A347402.P2180768644046491178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A347402.P2180768644046491178

/-!
# A347403: Step at which n is removed by the sieve of Eratosthenes or 0 if n is prime.

The programs for A347403, there is no canonical definition to state claims against.
-/

/-! ## A347403.P6225290187036533418

`∑{d}[A063918(n+1), A026233(#)]`
-/

namespace A347403.P6225290187036533418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A026233 d

end

end A347403.P6225290187036533418

/-! ## A347403.P3966590285161151775

`∑{d}[A063918(n+1), A290103(#)]`
-/

namespace A347403.P3966590285161151775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A290103 d

end

end A347403.P3966590285161151775

/-! ## A347403.P1092906925881419392

`∑{d}[A063918(n+1), A304117(#)]`
-/

namespace A347403.P1092906925881419392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A304117 d

end

end A347403.P1092906925881419392

/-! ## A347403.P10585008289413189724

`(A055396(n+1)+1)*A005171(n+1)`
-/

namespace A347403.P10585008289413189724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055396 (n + 1) + 1) * A005171 (n + 1)

end

end A347403.P10585008289413189724

/-! ## A347403.P10615472775500325636

`A049084(gcd(A049084(n+1), A117367(n+1)))`
-/

namespace A347403.P10615472775500325636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (Int.gcd (A049084 (n + 1)) (A117367 (n + 1)))

end

end A347403.P10615472775500325636

/-! ## A347403.P12747680810459728019

`A055396(n+1)+1-A049084(A003961(n+1))`
-/

namespace A347403.P12747680810459728019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) + (1 - A049084 (A003961 (n + 1)).toNat)

end

end A347403.P12747680810459728019

/-! ## A347403.P14702911872819491729

`A002260(A252752(n+1))-A010051(n+1)`
-/

namespace A347403.P14702911872819491729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A252752 (n + 1)).toNat - A010051 (n + 1)

end

end A347403.P14702911872819491729

/-! ## A347403.P14733289036880259268

`A056792(A063918(n+1))%A219217(n+1)`
-/

namespace A347403.P14733289036880259268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056792 (A063918 (n + 1)).toNat) (A219217 (n + 1))

end

end A347403.P14733289036880259268

/-! ## A347403.P3666039078418184935

`A005171(n+1)*A378568(n+1)`
-/

namespace A347403.P3666039078418184935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A378568 (n + 1)

end

end A347403.P3666039078418184935

/-! ## A347403.P10104470209816909185

`and(A063918(n+1), A378568(n+1))`
-/

namespace A347403.P10104470209816909185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063918 (n + 1)) (A378568 (n + 1))

end

end A347403.P10104470209816909185

/-!
# A347405: a(n) = Sum_{d|n} 2^(tau(d) - 1).

The programs for A347405, the canonical program `A347405.P7591125680275529693` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347405 has offset 1).

The definition of A347405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347405.P1301936049499695640

`∑{d}[n+1, A100577(#)]`
-/

namespace A347405.P1301936049499695640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A100577 d

end

end A347405.P1301936049499695640

namespace A347405

/-- `∑{d}[n+1, A100577(#)]` -/
def P1301936049499695640.Spec : Prop :=
  ∀ n, P1301936049499695640.a n = A347405 (n + 1)

end A347405

/-! ## A347405.P7591125680275529693

`∑{d}[n+1, 2^A032741(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A347405

/-- `∑{d}[n+1, 2^A032741(#)]` -/
def P7591125680275529693.Spec : Prop :=
  ∀ n, P7591125680275529693.a n = (A347405 (n + 1) : ℚ)

end A347405

/-! ## A347405.P1587307323903821383

`∑{d}[n+1, 2^(A000005(#)-1)]`
-/

namespace A347405.P1587307323903821383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ (A000005 d - 1 : ℤ)

end

end A347405.P1587307323903821383

namespace A347405

/-- `∑{d}[n+1, 2^(A000005(#)-1)]` -/
def P1587307323903821383.Spec : Prop :=
  ∀ n, P1587307323903821383.a n = (A347405 (n + 1) : ℚ)

end A347405

/-! ## A347405.P18335991805670501397

`∑{d}[n+1, A131577(A000005(#))]`
-/

namespace A347405.P18335991805670501397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A131577 (A000005 d).toNat

end

end A347405.P18335991805670501397

namespace A347405

/-- `∑{d}[n+1, A131577(A000005(#))]` -/
def P18335991805670501397.Spec : Prop :=
  ∀ n, P18335991805670501397.a n = A347405 (n + 1)

end A347405

/-! ## A347405.P17342184819627563764

`∑{d}[n+1, A000079(A000005(#)-1)]`
-/

namespace A347405.P17342184819627563764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000079 (A000005 d - 1).toNat

end

end A347405.P17342184819627563764

namespace A347405

/-- `∑{d}[n+1, A000079(A000005(#)-1)]` -/
def P17342184819627563764.Spec : Prop :=
  ∀ n, P17342184819627563764.a n = A347405 (n + 1)

end A347405

/-! ## A347405.P7789789700397071269

`∑{d}[n+1, A000005(#)*A069626((n+1)/#)]`
-/

namespace A347405.P7789789700397071269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A069626 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347405.P7789789700397071269

namespace A347405

/-- `∑{d}[n+1, A000005(#)*A069626((n+1)/#)]` -/
def P7789789700397071269.Spec : Prop :=
  ∀ n, P7789789700397071269.a n = A347405 (n + 1)

end A347405

/-!
# A347406: Earliest sequence of distinct positive integers such that both gcd(a(n),a(n-k)) = 1 and gcd(a(n),a(n+k)) = 1, where k is each divisor of a(n) and n - k >= 1.

The programs for A347406, there is no canonical definition to state claims against.
-/

/-! ## A347406.P4365656368303650574

`A347179(n+1)+A184955(A027581(n))`
-/

namespace A347406.P4365656368303650574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347179 (n + 1) + A184955 (A027581 n).toNat

end

end A347406.P4365656368303650574

/-!
# A347408: A347338(n) is the a(n)-th number having its number of divisors.

The programs for A347408, there is no canonical definition to state claims against.
-/

/-! ## A347408.P9198713300857214950

`A067004(A347338(n+1))`
-/

namespace A347408.P9198713300857214950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (A347338 (n + 1)).toNat

end

end A347408.P9198713300857214950

/-! ## A347408.P2600545465389745557

`A047983(A347338(n+1)+n+1)`
-/

namespace A347408.P2600545465389745557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047983 (A347338 (n + 1) + (n + 1 : ℤ)).toNat

end

end A347408.P2600545465389745557

/-!
# A347409: Longest run of halving steps in the trajectory from n to 1 in the Collatz map (or 3x+1 problem), or -1 if no such trajectory exists.

The programs for A347409, there is no canonical definition to state claims against.
-/

/-! ## A347409.P17359155741974194876

`val(A087226(n+1), 2)`
-/

namespace A347409.P17359155741974194876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A087226 (n + 1)).toNat 2

end

end A347409.P17359155741974194876

/-! ## A347409.P6982152228324972642

`A006577(and(-A087226(n+1), A087226(n+1)))`
-/

namespace A347409.P6982152228324972642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (Int.land (-A087226 (n + 1)) (A087226 (n + 1))).toNat

end

end A347409.P6982152228324972642

/-! ## A347409.P1738564522936824382

`A006666(and(-A087226(n+1), A087226(n+1)))`
-/

namespace A347409.P1738564522936824382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (Int.land (-A087226 (n + 1)) (A087226 (n + 1))).toNat

end

end A347409.P1738564522936824382

/-! ## A347409.P14012319078583181241

`A006666(gcd(A020707(n), A087226(n+1)))`
-/

namespace A347409.P14012319078583181241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (Int.gcd (A020707 n) (A087226 (n + 1)))

end

end A347409.P14012319078583181241

/-! ## A347409.P6490761409930919990

`val(A225784(n+1)², 2)/2`
-/

namespace A347409.P6490761409930919990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A225784 (n + 1) ^ 2).toNat 2 : ℚ) / 2

end

end A347409.P6490761409930919990

/-!
# A347410: Numbers with property that when divided by the sum of their digits the quotient and remainder are the same.

The programs for A347410, there is no canonical definition to state claims against.
-/

/-! ## A347410.P1600846862493567249

`A308311(A174513(n+1))`
-/

namespace A347410.P1600846862493567249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308311 (A174513 (n + 1)).toNat

end

end A347410.P1600846862493567249

/-!
# A347411: Sqrt(3)+1-adic expansion of 4, in balanced ternary alphabet.

The programs for A347411, there is no canonical definition to state claims against.
-/

/-! ## A347411.P13482423599726679835

`Δ[A304573(3*n+4)]%A068108(n+3)`
-/

namespace A347411.P13482423599726679835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304573 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A068108 (n + 3))

end

end A347411.P13482423599726679835

/-! ## A347411.P14025286307019742510

`A074290(gcd(A051293(n+1), A101751(n+1)))`
-/

namespace A347411.P14025286307019742510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (Int.gcd (A051293 (n + 1)) (A101751 (n + 1)))

end

end A347411.P14025286307019742510

/-! ## A347411.P10926770247582370480

`A071037(n)-A079559(A097331(n+1))`
-/

namespace A347411.P10926770247582370480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071037 n - A079559 (A097331 (n + 1)).toNat

end

end A347411.P10926770247582370480

/-! ## A347411.P18455740817869893

`A059841(n)-A187950(A331454(n+1))`
-/

namespace A347411.P18455740817869893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n - A187950 (A331454 (n + 1)).toNat

end

end A347411.P18455740817869893

/-! ## A347411.P3902229936189019317

`A000035(n+1)-A187950(A331454(n+1))`
-/

namespace A347411.P3902229936189019317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) - A187950 (A331454 (n + 1)).toNat

end

end A347411.P3902229936189019317

/-!
# A347412: Sqrt(3)+1-adic expansion of 4, in binary alphabet.

The programs for A347412, there is no canonical definition to state claims against.
-/

/-! ## A347412.P11862412860137964541

`A089809(A089042(n+2))`
-/

namespace A347412.P11862412860137964541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (A089042 (n + 2)).toNat

end

end A347412.P11862412860137964541

/-! ## A347412.P10014715561439814302

`A000035(A268448(n+3)+A055396(n+1))`
-/

namespace A347412.P10014715561439814302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A268448 (n + 3) + A055396 (n + 1)).toNat

end

end A347412.P10014715561439814302

/-! ## A347412.P3029341053026009769

`A189920(xor(A142052(3*n+5), A283100(n+1)))`
-/

namespace A347412.P3029341053026009769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189920 (Int.xor (A142052 (3 * n + 5)) (A283100 (n + 1))).toNat

end

end A347412.P3029341053026009769

/-! ## A347412.P4382459389400069277

`A024692(Δ[A000053(n+4)])`
-/

namespace A347412.P4382459389400069277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000053 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024692 (f1 (n + 1) - f1 n).toNat

end

end A347412.P4382459389400069277

/-! ## A347412.P7223236912482027113

`and(1, A229167(A047845(n+1)))`
-/

namespace A347412.P7223236912482027113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A229167 (A047845 (n + 1)).toNat)

end

end A347412.P7223236912482027113

/-!
# A347413: a(n) = (product of first n semiprimes) mod (sum of first n semiprimes).

The programs for A347413, there is no canonical definition to state claims against.
-/

/-! ## A347413.P3885171321619793167

`A112141(n+1)%A062198(n+1)`
-/

namespace A347413.P3885171321619793167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112141 (n + 1)) (A062198 (n + 1))

end

end A347413.P3885171321619793167

/-! ## A347413.P10883917261506873621

`∏[A001358(n+1)]%A062198(n+1)`
-/

namespace A347413.P10883917261506873621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A062198 (n + 1))

end

end A347413.P10883917261506873621

/-! ## A347413.P17611783173425614001

`∏[eq[2, A105700(n)]]%A062198(n+1)`
-/

namespace A347413.P17611783173425614001
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A062198 (n + 1))

end

end A347413.P17611783173425614001

/-! ## A347413.P3261663713386651385

`∏[eq[2, A226378(n)]]%A062198(n+1)`
-/

namespace A347413.P3261663713386651385
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A062198 (n + 1))

end

end A347413.P3261663713386651385

/-! ## A347413.P2339580994464780460

`∏[eq[2, A284289(n)]]%A062198(n+1)`
-/

namespace A347413.P2339580994464780460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A062198 (n + 1))

end

end A347413.P2339580994464780460

/-! ## A347413.P17274836142664850823

`∏[eq[2, A284465(n)]]%A062198(n+1)`
-/

namespace A347413.P17274836142664850823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284465 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A062198 (n + 1))

end

end A347413.P17274836142664850823

/-! ## A347413.P11466448078518723340

`∏[sqrt(A074985(n+1))]%A062198(n+1)`
-/

namespace A347413.P11466448078518723340
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074985 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)) (A062198 (n + 1))

end

end A347413.P11466448078518723340

/-! ## A347413.P7023821850925168195

`∏[A131749(∑[n+1])]%A062198(n+1)`
-/

namespace A347413.P7023821850925168195
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131749 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A062198 (n + 1))

end

end A347413.P7023821850925168195

/-! ## A347413.P5529587043001412690

`∏[A186621(n+1)+1]%A062198(n+1)`
-/

namespace A347413.P5529587043001412690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A062198 (n + 1))

end

end A347413.P5529587043001412690

/-! ## A347413.P13384203716128960394

`∏[eq[2, A001222(n+1)]+1]%A062198(n+1)`
-/

namespace A347413.P13384203716128960394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A062198 (n + 1))

end

end A347413.P13384203716128960394

/-!
# A347414: Number of partitions of n which occur as the automorphism orbit sizes of a rooted forest of n vertices.

The programs for A347414, there is no canonical definition to state claims against.
-/

/-! ## A347414.P16579660888820828906

`A128559(A391620(n+1))+A001222(n+1)`
-/

namespace A347414.P16579660888820828906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128559 (A391620 (n + 1)).toNat + A001222 (n + 1)

end

end A347414.P16579660888820828906

/-! ## A347414.P11591511471426371209

`A290104(A000108(n))+A083690(n+1)`
-/

namespace A347414.P11591511471426371209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (A000108 n).toNat + A083690 (n + 1)

end

end A347414.P11591511471426371209

/-! ## A347414.P1001742320197353832

`A035968(n+1)-A064911(A000110(n))`
-/

namespace A347414.P1001742320197353832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035968 (n + 1) - A064911 (A000110 n).toNat

end

end A347414.P1001742320197353832

/-! ## A347414.P17439423615701223800

`A240218(n+1)+A124762(A090748(n+1))`
-/

namespace A347414.P17439423615701223800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240218 (n + 1) + A124762 (A090748 (n + 1)).toNat

end

end A347414.P17439423615701223800

/-! ## A347414.P7516207334828684545

`A385734(A165878(2*n+3))+A364913(n+1)`
-/

namespace A347414.P7516207334828684545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385734 (A165878 (2 * n + 3)).toNat + A364913 (n + 1)

end

end A347414.P7516207334828684545

/-!
# A347415: a(n) = Sum_{k=1..n} floor((n/k)^k).

The programs for A347415, there is no canonical definition to state claims against.
-/

/-! ## A347415.P12888484529027110916

`∑[∑[A211976(A355581(n+1))]]`
-/

namespace A347415.P12888484529027110916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211976 (A355581 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347415.P12888484529027110916

/-! ## A347415.P12100877973986487266

`A333227(A122025(n))+A007504(n)`
-/

namespace A347415.P12100877973986487266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333227 (A122025 n).toNat + A007504 n

end

end A347415.P12100877973986487266

/-! ## A347415.P1796453396504937001

`A000982(n)+A000196(A304013(n+1))`
-/

namespace A347415.P1796453396504937001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n + A000196 (A304013 (n + 1)).toNat

end

end A347415.P1796453396504937001

/-! ## A347415.P12871597923092982035

`A116085(n+1)+A003056(A147871(3*n+1))`
-/

namespace A347415.P12871597923092982035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116085 (n + 1) + A003056 (A147871 (3 * n + 1)).toNat

end

end A347415.P12871597923092982035

/-!
# A347416: a(n) = Sum_{k=1..n} floor((n/k)^n).

The programs for A347416, there is no canonical definition to state claims against.
-/

/-! ## A347416.P15095730255867552357

`A003165(A293073(n+1))+3^n`
-/

namespace A347416.P15095730255867552357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003165 (A293073 (n + 1)).toNat + (3 ^ n : ℤ)

end

end A347416.P15095730255867552357

/-!
# A347419: Number of partitions of n into two or more distinct primes.

The programs for A347419, there is no canonical definition to state claims against.
-/

/-! ## A347419.P5327433854021161721

`A000586(n+1)-A010051(n+1)`
-/

namespace A347419.P5327433854021161721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (n + 1) - A010051 (n + 1)

end

end A347419.P5327433854021161721

/-! ## A347419.P11071710287527421704

`A000586(n+1)-A185012(A181796(n+1))`
-/

namespace A347419.P11071710287527421704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (n + 1) - A185012 (A181796 (n + 1)).toNat

end

end A347419.P11071710287527421704

/-! ## A347419.P2909337023155534315

`Δ[A280271(n)]-A010051(n+1)`
-/

namespace A347419.P2909337023155534315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A010051 (n + 1)

end

end A347419.P2909337023155534315

/-! ## A347419.P15550829477610939458

`Δ[A280271(n)]-char[A040976(n+1)+1]`
-/

namespace A347419.P15550829477610939458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280271 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A347419.P15550829477610939458

/-! ## A347419.P8405599880220314206

`A000586(n+1)+A117929(n+1)-A347550(n+1)`
-/

namespace A347419.P8405599880220314206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (n + 1) + (A117929 (n + 1) - A347550 (n + 1))

end

end A347419.P8405599880220314206

/-! ## A347419.P15547300520269176169

`A348323(n+1)-A331849(n+1)`
-/

namespace A347419.P15547300520269176169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348323 (n + 1) - A331849 (n + 1)

end

end A347419.P15547300520269176169

/-!
# A347420: Number of partitions of [n] where the first k elements are marked (0 <= k <= n) and at least k blocks contain their own index.

The programs for A347420, there is no canonical definition to state claims against.
-/

/-! ## A347420.P14779793008002677670

`A000110(n)+A350589(n)`
-/

namespace A347420.P14779793008002677670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n + A350589 n

end

end A347420.P14779793008002677670

/-! ## A347420.P1371246468069472749

`A350589(n)+A011971(∑[n])`
-/

namespace A347420.P1371246468069472749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350589 n + A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A347420.P1371246468069472749

/-! ## A347420.P911769000439997057

`A350589(n)+A108087(∑[n])`
-/

namespace A347420.P911769000439997057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350589 n + A108087 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A347420.P911769000439997057

/-! ## A347420.P1385295122720301669

`A350589(n)+A259691(∑[n])`
-/

namespace A347420.P1385295122720301669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350589 n + A259691 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A347420.P1385295122720301669

/-! ## A347420.P95488603415908066

`A350589(n)+Δ[A005001(n)]`
-/

namespace A347420.P95488603415908066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350589 n + (f1 (n + 1) - f1 n)

end

end A347420.P95488603415908066

/-! ## A347420.P11679110476802388502

`ceil(A350589(n)+A186021(n)/2)`
-/

namespace A347420.P11679110476802388502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A350589 n : ℚ) + (A186021 n : ℚ) / 2⌉

end

end A347420.P11679110476802388502

/-! ## A347420.P6679229582204601554

`A350589(n)+A293024(∑[n]+n)`
-/

namespace A347420.P6679229582204601554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350589 n + A293024 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A347420.P6679229582204601554

/-! ## A347420.P2345425825722935530

`A350589(n)+A186021(A028310(n))/2`
-/

namespace A347420.P2345425825722935530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350589 n : ℚ) + (A186021 (A028310 n).toNat : ℚ) / 2

end

end A347420.P2345425825722935530

/-! ## A347420.P702044670311532537

`A000108(n)+A350589(n)+A016098(n)`
-/

namespace A347420.P702044670311532537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A350589 n + A016098 n)

end

end A347420.P702044670311532537

/-! ## A347420.P5127781457730616090

`A350589(n)+A186021(n)/A020639(A004277(n))`
-/

namespace A347420.P5127781457730616090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350589 n : ℚ) + (A186021 n : ℚ) / (A020639 (A004277 n).toNat : ℚ)

end

end A347420.P5127781457730616090

/-!
# A347421: Numbers k such that the product of the first k semiprimes is divisible by the sum of the first k semiprimes.

The programs for A347421, there is no canonical definition to state claims against.
-/

/-! ## A347421.P13215164142930907141

`eq[0, A347413(n+1)]+1`
-/

namespace A347421.P13215164142930907141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347413 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347421.P13215164142930907141

/-! ## A347421.P9523970377847043308

`record[A000027(n+1)-A347413(n+1)]`
-/

namespace A347421.P9523970377847043308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A347413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347421.P9523970377847043308

/-! ## A347421.P4545434150572842305

`record[A005408(n)-(A347413(n+1)+n)]`
-/

namespace A347421.P4545434150572842305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (A347413 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347421.P4545434150572842305

/-! ## A347421.P13429687812288995684

`lt[A347413(n+1), A000005(n+1)]+1`
-/

namespace A347421.P13429687812288995684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A347421.P13429687812288995684

/-! ## A347421.P8384114333371653174

`record[A260739(n+1)-A347413(A260739(n+1))]`
-/

namespace A347421.P8384114333371653174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (n + 1) - A347413 (A260739 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347421.P8384114333371653174

/-! ## A347421.P16596929554331709536

`record[A052938(2*n)-A347413(n+1)]`
-/

namespace A347421.P16596929554331709536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * n) - A347413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347421.P16596929554331709536

/-! ## A347421.P5012148681132039069

`record[A008619(n)-A347413(A008619(n))]`
-/

namespace A347421.P5012148681132039069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A347413 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347421.P5012148681132039069

/-! ## A347421.P14136066239206288522

`record[A028242(2*n)-A347413(n+1)]`
-/

namespace A347421.P14136066239206288522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * n) - A347413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347421.P14136066239206288522

/-! ## A347421.P17254265025755708524

`record[A079715(n+1)-A347413(A079715(n+1))]`
-/

namespace A347421.P17254265025755708524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079715 (n + 1) - A347413 (A079715 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347421.P17254265025755708524

/-!
# A347425: a(n) = Bernoulli(2*n) * (2*n+1)! if 2*n+1 is a prime, otherwise a(n) = Bernoulli(2*n) * (2*n)!.

The programs for A347425, there is no canonical definition to state claims against.
-/

/-! ## A347425.P15179375307057406365

`A001332(n)/A128060(n+1)`
-/

namespace A347425.P15179375307057406365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001332 n : ℚ) / (A128060 (n + 1) : ℚ)

end

end A347425.P15179375307057406365

/-! ## A347425.P9097592349741561097

`A049614(2*n)*A292899(2*n)`
-/

namespace A347425.P9097592349741561097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049614 (2 * n) * A292899 (2 * n)

end

end A347425.P9097592349741561097

/-! ## A347425.P2882127976207708633

`A129825(2*n+1)/A128060(n+1)`
-/

namespace A347425.P2882127976207708633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129825 (2 * n + 1) : ℚ) / (A128060 (n + 1) : ℚ)

end

end A347425.P2882127976207708633

/-! ## A347425.P13553596083694899217

`A048998(n*Δ[n²])/A128060(n+1)`
-/

namespace A347425.P13553596083694899217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048998 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat : ℚ) / (A128060 (n + 1) : ℚ)

end

end A347425.P13553596083694899217

/-! ## A347425.P18313448862218339652

`A080779(n*Δ[n²])/A128060(n+1)`
-/

namespace A347425.P18313448862218339652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080779 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat : ℚ) / (A128060 (n + 1) : ℚ)

end

end A347425.P18313448862218339652

/-!
# A347426: Numerators of coefficients in expansion of e.g.f. x / (1 + 2*x - exp(x)).

The programs for A347426, there is no canonical definition to state claims against.
-/

/-! ## A347426.P12571334209289522983

`A338875(∑[n+1]+1)`
-/

namespace A347426.P12571334209289522983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338875 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A347426.P12571334209289522983

/-! ## A347426.P13982240960877380455

`lcm(1-and(2, n), A338875(A134869(n+1)))`
-/

namespace A347426.P13982240960877380455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A338875 (A134869 (n + 1)).toNat)

end

end A347426.P13982240960877380455

/-! ## A347426.P14915369520560864560

`A338875(A000124(n+1))+A025465(n)`
-/

namespace A347426.P14915369520560864560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338875 (A000124 (n + 1)).toNat + A025465 n

end

end A347426.P14915369520560864560

/-! ## A347426.P248042534292662609

`or(A000007(n), A338875(A000124(n+1)))`
-/

namespace A347426.P248042534292662609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A338875 (A000124 (n + 1)).toNat)

end

end A347426.P248042534292662609

/-! ## A347426.P8847815885025611426

`A338875(A000124(n+1))+A007030(n+1)`
-/

namespace A347426.P8847815885025611426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338875 (A000124 (n + 1)).toNat + A007030 (n + 1)

end

end A347426.P8847815885025611426

/-!
# A347427: Denominators of coefficients in expansion of e.g.f. x / (1 + 2*x - exp(x)).

The programs for A347427, there is no canonical definition to state claims against.
-/

/-! ## A347427.P2777143691695841718

`A338876(∑[n+1]+1)`
-/

namespace A347427.P2777143691695841718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338876 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A347427.P2777143691695841718

/-! ## A347427.P1113677816156390119

`and(-1, A338876(A134869(n+1)))`
-/

namespace A347427.P1113677816156390119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A338876 (A134869 (n + 1)).toNat)

end

end A347427.P1113677816156390119

/-! ## A347427.P12440047907932869607

`A000188(A001790(n))*A027642(n)`
-/

namespace A347427.P12440047907932869607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A001790 n).toNat * A027642 n

end

end A347427.P12440047907932869607

/-! ## A347427.P10890156547436580138

`A002033(A003212(n))*A027642(n)`
-/

namespace A347427.P10890156547436580138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A003212 n).toNat * A027642 n

end

end A347427.P10890156547436580138

/-! ## A347427.P4498406965444372877

`A010208(A020112(n))*A027642(n)`
-/

namespace A347427.P4498406965444372877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010208 (A020112 n).toNat * A027642 n

end

end A347427.P4498406965444372877

/-!
# A347428: Expansion of g.f. Product_{k>=2} 1/(1-x^phi(k)).

The programs for A347428, there is no canonical definition to state claims against.
-/

/-! ## A347428.P8481964247166834689

`A271493(C(or(1, n), ∑{digits}[n, 10^#]%9))`
-/

namespace A347428.P8481964247166834689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271493 (Nat.choose (Nat.lor 1 n) (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9))

end

end A347428.P8481964247166834689

/-! ## A347428.P8627420250223923608

`A271493(A002998(or(1, n)))`
-/

namespace A347428.P8627420250223923608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271493 (A002998 (Nat.lor 1 n)).toNat

end

end A347428.P8627420250223923608

/-! ## A347428.P14440941845610662911

`A271493(A087051(or(1, n)))`
-/

namespace A347428.P14440941845610662911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271493 (A087051 (Nat.lor 1 n)).toNat

end

end A347428.P14440941845610662911

/-! ## A347428.P2998116984857037019

`A271493(A237346(or(1, n)))`
-/

namespace A347428.P2998116984857037019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271493 (A237346 (Nat.lor 1 n)).toNat

end

end A347428.P2998116984857037019

/-! ## A347428.P9239071989908358975

`A271493(A240237(or(1, n)))`
-/

namespace A347428.P9239071989908358975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271493 (A240237 (Nat.lor 1 n)).toNat

end

end A347428.P9239071989908358975

/-!
# A347429: a(n) is the alternating sum of the n-th row of A047920.

The programs for A347429, there is no canonical definition to state claims against.
-/

/-! ## A347429.P18071570121971018373

`(A134831(n)+n!)/2`
-/

namespace A347429.P18071570121971018373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134831 n + (Nat.factorial n : ℤ) : ℚ) / 2

end

end A347429.P18071570121971018373

/-! ## A347429.P3142503856782928373

`(A134831(n)+A000142(n))/2`
-/

namespace A347429.P3142503856782928373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134831 n + A000142 n : ℚ) / 2

end

end A347429.P3142503856782928373

/-! ## A347429.P14302727423016690433

`A004526(A134831(n)+A000142(n))`
-/

namespace A347429.P14302727423016690433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A134831 n + A000142 n).toNat

end

end A347429.P14302727423016690433

/-! ## A347429.P14665366423359473161

`A065033(A134831(n)+A000142(n))`
-/

namespace A347429.P14665366423359473161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A134831 n + A000142 n).toNat

end

end A347429.P14665366423359473161

/-!
# A347431: Antidiagonal sums of A047920.

The programs for A347431, there is no canonical definition to state claims against.
-/

/-! ## A347431.P7562647064706880328

`A316355((n+1)*a(n-1)²)` with `a(0)=1`
-/

namespace A347431.P7562647064706880328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A316355 ((n + 1 : ℤ) * a (n - 1) ^ 2).toNat

end

end A347431.P7562647064706880328

/-! ## A347431.P6217143796391972848

`A071610(A007460(n))`
-/

namespace A347431.P6217143796391972848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071610 (A007460 n).toNat

end

end A347431.P6217143796391972848

/-!
# A347432: E.g.f.: exp( exp(x) * (exp(x) - 1 - x) ).

The programs for A347432, there is no canonical definition to state claims against.
-/

/-! ## A347432.P638875312863426093

`A055930(A059419(n+1)+n!)`
-/

namespace A347432.P638875312863426093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055930 (A059419 (n + 1) + (Nat.factorial n : ℤ)).toNat

end

end A347432.P638875312863426093

/-! ## A347432.P14103921248308153655

`A055930(A266342(n+1)+n!)`
-/

namespace A347432.P14103921248308153655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055930 (A266342 (n + 1) + (Nat.factorial n : ℤ)).toNat

end

end A347432.P14103921248308153655

/-! ## A347432.P1430690351345167360

`A055930(A054973(n+1)+∑{digits}[n, #!])`
-/

namespace A347432.P1430690351345167360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055930 (A054973 (n + 1) + ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x).sum : ℕ) : ℤ)).toNat

end

end A347432.P1430690351345167360

/-!
# A347436: a(n) is the least odd number that has exactly n decompositions as the sum of three primes, or 0 if there is no such odd number.

The programs for A347436, there is no canonical definition to state claims against.
-/

/-! ## A347436.P10440170975190110913

`or(1, A139321(n))%(18-A080532(n))`
-/

namespace A347436.P10440170975190110913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 1 (A139321 n)) (18 - A080532 n)

end

end A347436.P10440170975190110913

/-! ## A347436.P8640881113445062943

`A118001(A139321(n))`
-/

namespace A347436.P8640881113445062943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118001 (A139321 n).toNat

end

end A347436.P8640881113445062943

/-! ## A347436.P6879866685905660647

`A118759(or(1, A139321(n)))`
-/

namespace A347436.P6879866685905660647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.lor 1 (A139321 n)).toNat

end

end A347436.P6879866685905660647

/-! ## A347436.P10098122813827647604

`or(1, A033677(A139321(n)²))`
-/

namespace A347436.P10098122813827647604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A033677 (A139321 n ^ 2).toNat)

end

end A347436.P10098122813827647604

/-! ## A347436.P6939761170537634950

`A139321(n)+A000007(A052547(n))`
-/

namespace A347436.P6939761170537634950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139321 n + A000007 (A052547 n).toNat

end

end A347436.P6939761170537634950

/-!
# A347437: Number of factorizations of n with integer alternating product.

The programs for A347437, there is no canonical definition to state claims against.
-/

/-! ## A347437.P8006443588344062397

`A347441(n+1)+A347438(n+1)`
-/

namespace A347437.P8006443588344062397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347441 (n + 1) + A347438 (n + 1)

end

end A347437.P8006443588344062397

/-! ## A347437.P386624699516892715

`val(A001316(A211776(n+1)), 2)`
-/

namespace A347437.P386624699516892715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (A211776 (n + 1)).toNat).toNat 2

end

end A347437.P386624699516892715

/-! ## A347437.P4300644869360174912

`A046523(∏{p}[n+1, #^val(n+1, #²)]%A191227(n))`
-/

namespace A347437.P4300644869360174912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ) (A191227 n)).toNat

end

end A347437.P4300644869360174912

/-! ## A347437.P2699356103374770693

`A027383((∏{e}[n+1, floor(#/2)+1]-1)%A185258(n+1))`
-/

namespace A347437.P2699356103374770693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 2⌋ + 1) - 1) (A185258 (n + 1))).toNat

end

end A347437.P2699356103374770693

/-! ## A347437.P17026147147917503872

`A306645(A000120(A253139(n+1)²))`
-/

namespace A347437.P17026147147917503872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306645 (A000120 (A253139 (n + 1) ^ 2).toNat).toNat

end

end A347437.P17026147147917503872

/-!
# A347438: Number of unordered factorizations of n with alternating product 1.

The programs for A347438, there is no canonical definition to state claims against.
-/

/-! ## A347438.P11846192791532005009

`Δ[A096276(floor(sqrt(n)))]`
-/

namespace A347438.P11846192791532005009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 (Nat.sqrt n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347438.P11846192791532005009

/-! ## A347438.P15168848434316176642

`abs(Δ[A096276(A000196(n))])`
-/

namespace A347438.P15168848434316176642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 (A000196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A347438.P15168848434316176642

/-! ## A347438.P6323241689480834588

`A347437(n+1)-A347441(n+1)`
-/

namespace A347438.P6323241689480834588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347437 (n + 1) - A347441 (n + 1)

end

end A347438.P6323241689480834588

/-! ## A347438.P607517644098235737

`∑{d}[n+1, A001055(#)*A316441((n+1)/#)]`
-/

namespace A347438.P607517644098235737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001055 d * A316441 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347438.P607517644098235737

/-! ## A347438.P18403370092074839604

`Δ[A096276(A000196(n))]%A007918(n)`
-/

namespace A347438.P18403370092074839604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 (A000196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A007918 n)

end

end A347438.P18403370092074839604

/-! ## A347438.P11100892472943462899

`A000038(n+1)+Δ[A096276(A000196(n))]`
-/

namespace A347438.P11100892472943462899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 (A000196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (f1 (n + 1) - f1 n)

end

end A347438.P11100892472943462899

/-! ## A347438.P9980123453263518782

`A001055(A033676(n+1))*A010052(n+1)`
-/

namespace A347438.P9980123453263518782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A033676 (n + 1)).toNat * A010052 (n + 1)

end

end A347438.P9980123453263518782

/-! ## A347438.P18413974212644510210

`A001055(A033676(n+1))%Δ[A020703(n+1)]`
-/

namespace A347438.P18413974212644510210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001055 (A033676 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A347438.P18413974212644510210

/-! ## A347438.P13553313965712284435

`Δ[A096276(A000196(n))%A000096(n+5)]`
-/

namespace A347438.P13553313965712284435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096276 (A000196 n).toNat) (A000096 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347438.P13553313965712284435

/-! ## A347438.P17510659620684552959

`∑{d}[n+1, A328707(#)*A339717((n+1)/#)]`
-/

namespace A347438.P17510659620684552959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328707 d * A339717 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347438.P17510659620684552959

/-! ## A347438.P6091624079877280712

`A353377(n+1)*A353434(A007425(n+1))`
-/

namespace A347438.P6091624079877280712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353377 (n + 1) * A353434 (A007425 (n + 1)).toNat

end

end A347438.P6091624079877280712

/-!
# A347439: Number of factorizations of n with integer reciprocal alternating product.

The programs for A347439, there is no canonical definition to state claims against.
-/

/-! ## A347439.P14580232555635939745

`A347442(n+1)-A347441(n+1)`
-/

namespace A347439.P14580232555635939745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347442 (n + 1) - A347441 (n + 1)

end

end A347439.P14580232555635939745

/-! ## A347439.P17993550801127401062

`A344417(n+1)-abs(A011597(n))`
-/

namespace A347439.P17993550801127401062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344417 (n + 1) - |A011597 n|

end

end A347439.P17993550801127401062

/-! ## A347439.P10551586689796641725

`A344417(n+1)-A011597(n²)`
-/

namespace A347439.P10551586689796641725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344417 (n + 1) - A011597 (n ^ 2)

end

end A347439.P10551586689796641725

/-! ## A347439.P12635607973587470361

`abs(A344417(-xor(n, -1))-A011597(n²))`
-/

namespace A347439.P12635607973587470361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A344417 (-Int.xor (n : ℤ) (-1)).toNat - A011597 (n ^ 2)|

end

end A347439.P12635607973587470361

/-! ## A347439.P10398544219118333922

`A376657(n+1)+A128882(∏{e}[n+1, floor(#/2)+1]-1)`
-/

namespace A347439.P10398544219118333922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376657 (n + 1) + A128882 (∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 2⌋ + 1) - 1).toNat

end

end A347439.P10398544219118333922

/-! ## A347439.P18063903716702293999

`A344417(n+1)-A151935(A151935(n))`
-/

namespace A347439.P18063903716702293999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344417 (n + 1) - A151935 (A151935 n).toNat

end

end A347439.P18063903716702293999

/-! ## A347439.P4385401394255114837

`A295879(A066060(n+1)²)-A057427(n)`
-/

namespace A347439.P4385401394255114837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295879 (A066060 (n + 1) ^ 2).toNat - A057427 n

end

end A347439.P4385401394255114837

/-!
# A347440: Number of factorizations of n with alternating product < 1.

The programs for A347440, there is no canonical definition to state claims against.
-/

/-! ## A347440.P6693680411585530033

`A339846(n+1)-A347438(n+1)`
-/

namespace A347440.P6693680411585530033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339846 (n + 1) - A347438 (n + 1)

end

end A347440.P6693680411585530033

/-! ## A347440.P14583193235548211862

`Δ[A096276(n)]-A347456(n+1)`
-/

namespace A347440.P14583193235548211862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A347456 (n + 1)

end

end A347440.P14583193235548211862

/-! ## A347440.P13834715900693997107

`A001055(n+1)-A347456(n+1)`
-/

namespace A347440.P13834715900693997107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A347456 (n + 1)

end

end A347440.P13834715900693997107

/-! ## A347440.P1863712942085231294

`A028422(n+1)+1-A347456(n+1)`
-/

namespace A347440.P1863712942085231294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1) + (1 - A347456 (n + 1))

end

end A347440.P1863712942085231294

/-! ## A347440.P5555222062863788804

`A318284(A181819(n+1))-A347456(n+1)`
-/

namespace A347440.P5555222062863788804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A181819 (n + 1)).toNat - A347456 (n + 1)

end

end A347440.P5555222062863788804

/-! ## A347440.P16511884076424844069

`A096276(n+1)-A096276(n)-A347456(n+1)`
-/

namespace A347440.P16511884076424844069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 (n + 1) - A096276 n - A347456 (n + 1)

end

end A347440.P16511884076424844069

/-! ## A347440.P3827240112573637782

`A339846(n+1)+A339890(n+1)-A347456(n+1)`
-/

namespace A347440.P3827240112573637782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339846 (n + 1) + (A339890 (n + 1) - A347456 (n + 1))

end

end A347440.P3827240112573637782

/-! ## A347440.P3032264002467277923

`A347705(n+1)-A339890(n+1)`
-/

namespace A347440.P3032264002467277923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347705 (n + 1) - A339890 (n + 1)

end

end A347440.P3032264002467277923

/-!
# A347441: Number of odd-length factorizations of n with integer alternating product.

The programs for A347441, there is no canonical definition to state claims against.
-/

/-! ## A347441.P4511615981514699290

`A347437(n+1)-A347438(n+1)`
-/

namespace A347441.P4511615981514699290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347437 (n + 1) - A347438 (n + 1)

end

end A347441.P4511615981514699290

/-! ## A347441.P3138476352985352185

`A347442(n+1)-A347439(n+1)`
-/

namespace A347441.P3138476352985352185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347442 (n + 1) - A347439 (n + 1)

end

end A347441.P3138476352985352185

/-! ## A347441.P17728373422553883576

`A339890(n+1)+A347437(n+1)-A347456(n+1)`
-/

namespace A347441.P17728373422553883576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339890 (n + 1) + (A347437 (n + 1) - A347456 (n + 1))

end

end A347441.P17728373422553883576

/-! ## A347441.P2456534992662865002

`A347437(n+1)+A347705(n+1)-A001055(n+1)`
-/

namespace A347441.P2456534992662865002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347437 (n + 1) + (A347705 (n + 1) - A001055 (n + 1))

end

end A347441.P2456534992662865002

/-! ## A347441.P13813443365483443144

`A347437(n+1)-A033687(A114003(n+1))%A259933(n+1)`
-/

namespace A347441.P13813443365483443144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347437 (n + 1) - Int.tmod (A033687 (A114003 (n + 1)).toNat) (A259933 (n + 1))

end

end A347441.P13813443365483443144

/-!
# A347442: Number of factorizations of n with integer reverse-alternating product.

The programs for A347442, there is no canonical definition to state claims against.
-/

/-! ## A347442.P2366016800214501063

`A347441(n+1)+A347439(n+1)`
-/

namespace A347442.P2366016800214501063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347441 (n + 1) + A347439 (n + 1)

end

end A347442.P2366016800214501063

/-! ## A347442.P399019488325618106

`A347437(n+1)+A347439(n+1)-A347438(n+1)`
-/

namespace A347442.P399019488325618106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347437 (n + 1) + (A347439 (n + 1) - A347438 (n + 1))

end

end A347442.P399019488325618106

/-! ## A347442.P18324128137942631080

`A344417(n+1)+A347441(n+1)-A011597(n²)`
-/

namespace A347442.P18324128137942631080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344417 (n + 1) + (A347441 (n + 1) - A011597 (n ^ 2))

end

end A347442.P18324128137942631080

/-! ## A347442.P11366131863883500478

`A000041(A267116(n+1)%A050969(n+1))`
-/

namespace A347442.P11366131863883500478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.tmod (A267116 (n + 1)) (A050969 (n + 1))).toNat

end

end A347442.P11366131863883500478

/-! ## A347442.P4640235942927730364

`A328545(A267116(n+1))%A101640(n+1)`
-/

namespace A347442.P4640235942927730364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328545 (A267116 (n + 1)).toNat) (A101640 (n + 1))

end

end A347442.P4640235942927730364

/-!
# A347443: Number of integer partitions of n with reverse-alternating product <= 1.

The programs for A347443, there is no canonical definition to state claims against.
-/

/-! ## A347443.P3558529357465832614

`A119620(n)+A344608(n)`
-/

namespace A347443.P3558529357465832614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 n + A344608 n

end

end A347443.P3558529357465832614

/-! ## A347443.P7551303247558405751

`A035363(abs(1-n))+A027187(n)`
-/

namespace A347443.P7551303247558405751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 |1 - (n : ℤ)|.toNat + A027187 n

end

end A347443.P7551303247558405751

/-! ## A347443.P3376068419907653165

`A000041(floor(n/2))+A086543(n)-A027193(n)`
-/

namespace A347443.P3376068419907653165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌊(n : ℚ) / 2⌋.toNat + (A086543 n - A027193 n)

end

end A347443.P3376068419907653165

/-! ## A347443.P1770229642005709693

`A035363(2*A004526(n))+A086543(n)-A027193(n)`
-/

namespace A347443.P1770229642005709693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * A004526 n).toNat + (A086543 n - A027193 n)

end

end A347443.P1770229642005709693

/-! ## A347443.P7732561705707352744

`A000041(n)-A347448(n)+A086543(n)-A027193(n)`
-/

namespace A347443.P7732561705707352744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A347448 n + (A086543 n - A027193 n)

end

end A347443.P7732561705707352744

/-!
# A347444: Number of odd-length integer partitions of n with integer alternating product.

The programs for A347444, there is no canonical definition to state claims against.
-/

/-! ## A347444.P13251907468511143226

`A347445(n)-A035363(n)`
-/

namespace A347444.P13251907468511143226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347445 n - A035363 n

end

end A347444.P13251907468511143226

/-! ## A347444.P2192601935771172884

`A347445(n)-A103919(∑[n])`
-/

namespace A347444.P2192601935771172884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347445 n - A103919 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A347444.P2192601935771172884

/-! ## A347444.P5175363959384808061

`A347445(n)-A035444(2*n)`
-/

namespace A347444.P5175363959384808061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347445 n - A035444 (2 * n)

end

end A347444.P5175363959384808061

/-! ## A347444.P14781946995963621692

`A347445(n)+A001489(A035444(2*n)+1)+1`
-/

namespace A347444.P14781946995963621692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347445 n + A001489 (A035444 (2 * n) + 1).toNat + 1

end

end A347444.P14781946995963621692

/-! ## A347444.P16763267894121230428

`A347445(n)+-A103919(∑[n])%A139910(n+1)`
-/

namespace A347444.P16763267894121230428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347445 n + Int.tmod (-A103919 (∑ j ∈ Finset.range (n + 1), f1 j)) (A139910 (n + 1))

end

end A347444.P16763267894121230428

/-! ## A347444.P10927923580204470157

`A347446(n)-A347704(n)`
-/

namespace A347444.P10927923580204470157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347446 n - A347704 n

end

end A347444.P10927923580204470157

/-!
# A347445: Number of integer partitions of n with integer reverse-alternating product.

The programs for A347445, there is no canonical definition to state claims against.
-/

/-! ## A347445.P17246674368900732082

`A347444(n)+A035363(n)`
-/

namespace A347445.P17246674368900732082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347444 n + A035363 n

end

end A347445.P17246674368900732082

/-! ## A347445.P17159679338086890363

`A347444(n)+A103919(∑[n])`
-/

namespace A347445.P17159679338086890363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347444 n + A103919 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A347445.P17159679338086890363

/-! ## A347445.P11995349075035632243

`A347444(n)+A035444(2*n)`
-/

namespace A347445.P11995349075035632243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347444 n + A035444 (2 * n)

end

end A347445.P11995349075035632243

/-! ## A347445.P2791719290365833977

`A035363(n)+A347446(n)-A347704(n)`
-/

namespace A347445.P2791719290365833977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + (A347446 n - A347704 n)

end

end A347445.P2791719290365833977

/-! ## A347445.P2382301626291289936

`A347444(n)+A347438(2^n)`
-/

namespace A347445.P2382301626291289936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347444 n + A347438 (2 ^ n)

end

end A347445.P2382301626291289936

/-!
# A347446: Number of integer partitions of n with integer alternating product.

The programs for A347446, there is no canonical definition to state claims against.
-/

/-! ## A347446.P9491221946087873202

`A347704(n)+A347444(n)`
-/

namespace A347446.P9491221946087873202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347704 n + A347444 n

end

end A347446.P9491221946087873202

/-! ## A347446.P4385030421354762772

`A347445(n)+A347704(n)-A035363(n)`
-/

namespace A347446.P4385030421354762772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347445 n + (A347704 n - A035363 n)

end

end A347446.P4385030421354762772

/-! ## A347446.P10677938622039971035

`A347704(n)+A347445(n)-A103919(∑[n])`
-/

namespace A347446.P10677938622039971035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347704 n + (A347445 n - A103919 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A347446.P10677938622039971035

/-! ## A347446.P14447959971785436440

`A347704(n)+A347445(n)-A035444(2*n)`
-/

namespace A347446.P14447959971785436440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347704 n + (A347445 n - A035444 (2 * n))

end

end A347446.P14447959971785436440

/-! ## A347446.P3679912527396375204

`A347704(n)+A347445(n)-A347438(2^n)`
-/

namespace A347446.P3679912527396375204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347704 n + (A347445 n - A347438 (2 ^ n))

end

end A347446.P3679912527396375204

/-!
# A347447: Number of strict factorizations of n with alternating product > 1.

The programs for A347447, there is no canonical definition to state claims against.
-/

/-! ## A347447.P13409384743130255667

`ceil(C(∏{e}[n+1, #+1], 2)/18)`
-/

namespace A347447.P13409384743130255667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) 2 : ℚ) / 18⌉

end

end A347447.P13409384743130255667

/-! ## A347447.P13230473477394889526

`ceil(floor((∏{e}[n+1, #+1]/2)²)/10)`
-/

namespace A347447.P13230473477394889526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊(((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2) ^ 2⌋ : ℚ) / 10⌉

end

end A347447.P13230473477394889526

/-! ## A347447.P14960234679894024654

`ceil(round((∏{e}[n+1, #+1]/2)²)/10)`
-/

namespace A347447.P14960234679894024654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.roundAway ((((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2) ^ 2) : ℚ) / 10⌉

end

end A347447.P14960234679894024654

/-! ## A347447.P11007778682261400707

`ceil(floor((∑{d}[n+1, gcd(n, #)]/2)²)/10)`
-/

namespace A347447.P11007778682261400707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊(((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℚ) / 2) ^ 2⌋ : ℚ) / 10⌉

end

end A347447.P11007778682261400707

/-! ## A347447.P22204686243516817

`ceil(floor(∑{d}[n+1, or(#, -1)]²/4)/10)`
-/

namespace A347447.P22204686243516817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊(((∑ d ∈ Nat.divisors (f1 n), Int.lor (d : ℤ) (-1)) ^ 2 : ℤ) : ℚ) / 4⌋ : ℚ) / 10⌉

end

end A347447.P22204686243516817

/-! ## A347447.P13448168220664783513

`ceil(C(A000005(n+1), 2)/18)`
-/

namespace A347447.P13448168220664783513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (A000005 (n + 1)).toNat 2 : ℚ) / 18⌉

end

end A347447.P13448168220664783513

/-! ## A347447.P10540212450376744913

`ceil(∑{d}[n+1, A000005(#²)-1]/40)`
-/

namespace A347447.P10540212450376744913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ d ∈ Nat.divisors (f1 n), (A000005 (d ^ 2) - 1) : ℤ) : ℚ) / 40⌉

end

end A347447.P10540212450376744913

/-! ## A347447.P12403636137949628960

`round((A000040(∏{e}[n+1, #+1])+3)/11)`
-/

namespace A347447.P12403636137949628960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000040 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) + 3 : ℚ) / 11)

end

end A347447.P12403636137949628960

/-! ## A347447.P693528429969878238

`ceil(round((A000005(61*(n+1))/4)²)/10)`
-/

namespace A347447.P693528429969878238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.roundAway (((A000005 (61 * (n + 1)) : ℚ) / 4) ^ 2) : ℚ) / 10⌉

end

end A347447.P693528429969878238

/-!
# A347448: Number of integer partitions of n with alternating product > 1.

The programs for A347448, there is no canonical definition to state claims against.
-/

/-! ## A347448.P532196720175399723

`A000041(n)-A119620(n)`
-/

namespace A347448.P532196720175399723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A119620 n

end

end A347448.P532196720175399723

/-! ## A347448.P8873928600415389318

`∑[A002865(n)]-A119620(n)`
-/

namespace A347448.P8873928600415389318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A119620 n

end

end A347448.P8873928600415389318

/-! ## A347448.P17697783004294282759

`A000065(n)+1-A119620(n)`
-/

namespace A347448.P17697783004294282759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A119620 n)

end

end A347448.P17697783004294282759

/-! ## A347448.P10850821332823574822

`A000041(n)-A000041(A004526(n))`
-/

namespace A347448.P10850821332823574822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A000041 (A004526 n).toNat

end

end A347448.P10850821332823574822

/-! ## A347448.P10727003355713844201

`A000065(n)-A000065(A004526(n))`
-/

namespace A347448.P10727003355713844201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n - A000065 (A004526 n).toNat

end

end A347448.P10727003355713844201

/-! ## A347448.P6192285029187530071

`A000041(n)-A000041(A123108(n))`
-/

namespace A347448.P6192285029187530071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A000041 (A123108 n).toNat

end

end A347448.P6192285029187530071

/-! ## A347448.P2981010512545126160

`A027187(n)+A027193(n)-A119620(n)`
-/

namespace A347448.P2981010512545126160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n + (A027193 n - A119620 n)

end

end A347448.P2981010512545126160

/-! ## A347448.P8671840110432202937

`A083690(n+1)+A000041(n)-A000041(n+1)`
-/

namespace A347448.P8671840110432202937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083690 (n + 1) + (A000041 n - A000041 (n + 1))

end

end A347448.P8671840110432202937

/-! ## A347448.P12517127230774616439

`A035363(2*n)-A119620(n)`
-/

namespace A347448.P12517127230774616439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A119620 n

end

end A347448.P12517127230774616439

/-! ## A347448.P4470866414765939342

`A119620(2*n)-A119620(n)`
-/

namespace A347448.P4470866414765939342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A119620 n

end

end A347448.P4470866414765939342

/-! ## A347448.P4041900098795490941

`sqrt(A001255(n))-A119620(n)`
-/

namespace A347448.P4041900098795490941
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A119620 n : ℝ)

end

end A347448.P4041900098795490941

/-!
# A347449: Number of integer partitions of n with reverse-alternating product > 1.

The programs for A347449, there is no canonical definition to state claims against.
-/

/-! ## A347449.P9168513976927692466

`A344607(n)-A119620(n)`
-/

namespace A347449.P9168513976927692466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344607 n - A119620 n

end

end A347449.P9168513976927692466

/-! ## A347449.P1073448536459324060

`A000041(n)-A347443(n)`
-/

namespace A347449.P1073448536459324060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A347443 n

end

end A347449.P1073448536459324060

/-! ## A347449.P15086401741037072417

`A213598(n)-A347443(n)`
-/

namespace A347449.P15086401741037072417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A347443 n

end

end A347449.P15086401741037072417

/-! ## A347449.P11383147404138961904

`A347448(n)-A344608(n)`
-/

namespace A347449.P11383147404138961904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347448 n - A344608 n

end

end A347449.P11383147404138961904

/-! ## A347449.P2811939045541034609

`∑[A002865(n)]-A347443(n)`
-/

namespace A347449.P2811939045541034609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A347443 n

end

end A347449.P2811939045541034609

/-!
# A347450: Numbers whose multiset of prime indices has alternating product <= 1.

The programs for A347450, the canonical program `A347450.P17431101381661842723` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347450 has offset 1).

The definition of A347450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347450.P17431101381661842723

`∪[∪[2*(n+1)², (n+1)²], A028260(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A347450

/-- `∪[∪[2*(n+1)², (n+1)²], A028260(n+1)]` -/
def P17431101381661842723.Spec : Prop :=
  ∀ n, (P17431101381661842723.a n : ℤ) = A347450 (n + 1)

theorem P17431101381661842723.correct : P17431101381661842723.Spec := by
  intro n
  simp only [A347450, Nat.add_sub_cancel]

end A347450

/-! ## A347450.P6384561949185610645

`∪[A028260(n+1), A028982(n+1)]`
-/

namespace A347450.P6384561949185610645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347450.P6384561949185610645

namespace A347450

/-- `∪[A028260(n+1), A028982(n+1)]` -/
def P6384561949185610645.Spec : Prop :=
  ∀ n, (P6384561949185610645.a n : ℤ) = A347450 (n + 1)

end A347450

/-! ## A347450.P1562483111748609231

`∪[A028260(n+1), A067051(n+1)]`
-/

namespace A347450.P1562483111748609231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347450.P1562483111748609231

namespace A347450

/-- `∪[A028260(n+1), A067051(n+1)]` -/
def P1562483111748609231.Spec : Prop :=
  ∀ n, (P1562483111748609231.a n : ℤ) = A347450 (n + 1)

end A347450

/-! ## A347450.P15507995936972113308

`∪[A028260(n+1), A088827(n+1)]`
-/

namespace A347450.P15507995936972113308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347450.P15507995936972113308

namespace A347450

/-- `∪[A028260(n+1), A088827(n+1)]` -/
def P15507995936972113308.Spec : Prop :=
  ∀ n, (P15507995936972113308.a n : ℤ) = A347450 (n + 1)

end A347450

/-! ## A347450.P15603553752218277542

`∪[A028260(n+1), A096033(n+1)]`
-/

namespace A347450.P15603553752218277542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347450.P15603553752218277542

namespace A347450

/-- `∪[A028260(n+1), A096033(n+1)]` -/
def P15603553752218277542.Spec : Prop :=
  ∀ n, (P15603553752218277542.a n : ℤ) = A347450 (n + 1)

end A347450

/-! ## A347450.P776382673652809840

`∪[A028982(n+1), A119899(n+1)]`
-/

namespace A347450.P776382673652809840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347450.P776382673652809840

namespace A347450

/-- `∪[A028982(n+1), A119899(n+1)]` -/
def P776382673652809840.Spec : Prop :=
  ∀ n, (P776382673652809840.a n : ℤ) = A347450 (n + 1)

end A347450

/-! ## A347450.P2049209842846700520

`lt[A316524(n+1), 2]+1`
-/

namespace A347450.P2049209842846700520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A347450.P2049209842846700520

namespace A347450

/-- `lt[A316524(n+1), 2]+1` -/
def P2049209842846700520.Spec : Prop :=
  ∀ n, (P2049209842846700520.a n : ℤ) = A347450 (n + 1)

end A347450

/-! ## A347450.P6728187283719350269

`lt[A071321(n+1), 3]+1`
-/

namespace A347450.P6728187283719350269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071321 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A347450.P6728187283719350269

namespace A347450

/-- `lt[A071321(n+1), 3]+1` -/
def P6728187283719350269.Spec : Prop :=
  ∀ n, (P6728187283719350269.a n : ℤ) = A347450 (n + 1)

end A347450

/-! ## A347450.P11204740501199939797

`eq[char[A026422(n+2)], A010052(2*n)]`
-/

namespace A347450.P11204740501199939797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A347450.P11204740501199939797

namespace A347450

/-- `eq[char[A026422(n+2)], A010052(2*n)]` -/
def P11204740501199939797.Spec : Prop :=
  ∀ n, (P11204740501199939797.a n : ℤ) = A347450 (n + 1)

end A347450

/-! ## A347450.P10878321718836024331

`∪[A119899(n+1), A347451(n+1)]`
-/

namespace A347450.P10878321718836024331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347450.P10878321718836024331

namespace A347450

/-- `∪[A119899(n+1), A347451(n+1)]` -/
def P10878321718836024331.Spec : Prop :=
  ∀ n, (P10878321718836024331.a n : ℤ) = A347450 (n + 1)

end A347450

/-!
# A347451: Numbers whose multiset of prime indices has integer reciprocal alternating product.

The programs for A347451, there is no canonical definition to state claims against.
-/

/-! ## A347451.P16958305970084818129

`∩[A347450(n+1), A347457(n+1)]`
-/

namespace A347451.P16958305970084818129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347451.P16958305970084818129

/-! ## A347451.P16907815327043437066

`record[A078898(A347454(n+1))]`
-/

namespace A347451.P16907815327043437066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A347454 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347451.P16907815327043437066

/-! ## A347451.P3521259608475534478

`record[A289441(A347454(n+2))]`
-/

namespace A347451.P3521259608475534478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (A347454 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347451.P3521259608475534478

/-!
# A347452: Heinz numbers of integer partitions whose sum is 3/2 their length, rounded down.

The programs for A347452, there is no canonical definition to state claims against.
-/

/-! ## A347452.P5068965131556345348

`∪[2*A348384(n+1), A348384(n+1)]`
-/

namespace A347452.P5068965131556345348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A348384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347452.P5068965131556345348

/-!
# A347453: Heinz numbers of odd-length integer partitions with integer alternating (or reverse-alternating) product.

The programs for A347453, there is no canonical definition to state claims against.
-/

/-! ## A347453.P13700497226787202017

`filter[A347454(n+1), A049240(#)]`
-/

namespace A347453.P13700497226787202017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A347453.P13700497226787202017

/-! ## A347453.P3213588112820701708

`filter[A347454(n+1), A066829(#)]`
-/

namespace A347453.P3213588112820701708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A347453.P3213588112820701708

/-! ## A347453.P1236368840351375826

`filter[A347454(n+1), A267635(#)]`
-/

namespace A347453.P1236368840351375826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A347453.P1236368840351375826

/-! ## A347453.P68303666399034196

`∩[A026424(n+1), A347454(n+1)]`
-/

namespace A347453.P68303666399034196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347453.P68303666399034196

/-! ## A347453.P17301170220347305069

`filter[A347457(n+1), A066829(#)]`
-/

namespace A347453.P17301170220347305069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A347453.P17301170220347305069

/-!
# A347454: Numbers whose multiset of prime indices has integer alternating product.

The programs for A347454, there is no canonical definition to state claims against.
-/

/-! ## A347454.P6393031863496947199

`∪[(n+1)², A347453(n+1)]`
-/

namespace A347454.P6393031863496947199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347454.P6393031863496947199

/-! ## A347454.P7007042886419173213

`∪[A119848(n+1), A018080(n)]`
-/

namespace A347454.P7007042886419173213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018080 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347454.P7007042886419173213

/-! ## A347454.P5725482198673787092

`∪[A119848(n+1), A101427(n)]`
-/

namespace A347454.P5725482198673787092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101427 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347454.P5725482198673787092

/-! ## A347454.P18256730183301176808

`∪[A265640(n+1), A018080(n)]`
-/

namespace A347454.P18256730183301176808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018080 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347454.P18256730183301176808

/-! ## A347454.P11110565948919943852

`∪[A265640(n+1), A101427(n)]`
-/

namespace A347454.P11110565948919943852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101427 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347454.P11110565948919943852

/-! ## A347454.P16556824166209803338

`∪[A347453(n+1), A025741(n)]`
-/

namespace A347454.P16556824166209803338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025741 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347454.P16556824166209803338

/-! ## A347454.P15428582799066162493

`∪[A119848(n+1), A270700(n)]`
-/

namespace A347454.P15428582799066162493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270700 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347454.P15428582799066162493

/-! ## A347454.P5244326487167698571

`∪[A119848(n+1), A373309(n)]`
-/

namespace A347454.P5244326487167698571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373309 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347454.P5244326487167698571

/-! ## A347454.P13960134947867622009

`∪[A265640(n+1), A270700(n)]`
-/

namespace A347454.P13960134947867622009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270700 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347454.P13960134947867622009

/-! ## A347454.P1041840120043774805

`∪[A265640(n+1), A373309(n)]`
-/

namespace A347454.P1041840120043774805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373309 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347454.P1041840120043774805

/-!
# A347455: Heinz numbers of integer partitions with non-integer alternating product.

The programs for A347455, there is no canonical definition to state claims against.
-/

/-! ## A347455.P1062293586041398730

`∩[A285800(n+1), A343337(n+1)]`
-/

namespace A347455.P1062293586041398730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347455.P1062293586041398730

/-! ## A347455.P4063618000135519681

`∩[A285800(n+1), A343343(n+1)]`
-/

namespace A347455.P4063618000135519681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347455.P4063618000135519681

/-! ## A347455.P14364042224663193744

`∩[A343337(n+1), A134376(n+5)]`
-/

namespace A347455.P14364042224663193744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134376 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347455.P14364042224663193744

/-! ## A347455.P7920918050457952523

`∩[A105441(n+1), A328335(n+1)]`
-/

namespace A347455.P7920918050457952523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347455.P7920918050457952523

/-! ## A347455.P5069525740757138992

`∩[A131651(n+1), A328335(n+1)]`
-/

namespace A347455.P5069525740757138992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347455.P5069525740757138992

/-!
# A347456: Number of factorizations of n with alternating product >= 1.

The programs for A347456, there is no canonical definition to state claims against.
-/

/-! ## A347456.P10577019904133089765

`Δ[A096276(n)]-A347440(n+1)`
-/

namespace A347456.P10577019904133089765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A347440 (n + 1)

end

end A347456.P10577019904133089765

/-! ## A347456.P8995355791064441430

`A344417(n+1)+A122180(n+1)`
-/

namespace A347456.P8995355791064441430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344417 (n + 1) + A122180 (n + 1)

end

end A347456.P8995355791064441430

/-! ## A347456.P11599501844222622582

`A347438(n+1)+A339890(n+1)`
-/

namespace A347456.P11599501844222622582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347438 (n + 1) + A339890 (n + 1)

end

end A347456.P11599501844222622582

/-! ## A347456.P17907319844803357043

`A001055(n+1)-A347440(n+1)`
-/

namespace A347456.P17907319844803357043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A347440 (n + 1)

end

end A347456.P17907319844803357043

/-! ## A347456.P11047199050286479907

`A347438((n+1)²)-A347440(n+1)`
-/

namespace A347456.P11047199050286479907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347438 ((n + 1) ^ 2) - A347440 (n + 1)

end

end A347456.P11047199050286479907

/-! ## A347456.P15318138593875456284

`A339890(n+1)+Δ[A096276(A000196(n))]`
-/

namespace A347456.P15318138593875456284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 (A000196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339890 (n + 1) + (f1 (n + 1) - f1 n)

end

end A347456.P15318138593875456284

/-! ## A347456.P10560157179428689465

`A122180(n+1)+A057567(A000188(n+1))`
-/

namespace A347456.P10560157179428689465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122180 (n + 1) + A057567 (A000188 (n + 1)).toNat

end

end A347456.P10560157179428689465

/-! ## A347456.P447916342440667483

`A347438(n+1)+A340607(A003961(n+1))`
-/

namespace A347456.P447916342440667483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347438 (n + 1) + A340607 (A003961 (n + 1)).toNat

end

end A347456.P447916342440667483

/-! ## A347456.P1159150693353150266

`A347438(n+1)+A340607(A064988(n+1))`
-/

namespace A347456.P1159150693353150266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347438 (n + 1) + A340607 (A064988 (n + 1)).toNat

end

end A347456.P1159150693353150266

/-! ## A347456.P10972410345011284492

`A096276(n+1)-A096276(n)-A347440(n+1)`
-/

namespace A347456.P10972410345011284492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 (n + 1) - A096276 n - A347440 (n + 1)

end

end A347456.P10972410345011284492

/-!
# A347457: Heinz numbers of integer partitions with integer alternating product.

The programs for A347457, there is no canonical definition to state claims against.
-/

/-! ## A347457.P8286985301783714050

`comp[A347455(n+1)-1]+1`
-/

namespace A347457.P8286985301783714050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347455 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A347457.P8286985301783714050

/-! ## A347457.P4886009015988367891

`∪[A318991(n+1), A006500(n)]`
-/

namespace A347457.P4886009015988367891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006500 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347457.P4886009015988367891

/-! ## A347457.P13785698270094703131

`∪[A014153(n), A318991(n+1)]`
-/

namespace A347457.P13785698270094703131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347457.P13785698270094703131

/-! ## A347457.P11951119852953116705

`comp[∪[A347455(n+1), A004926(n)]]`
-/

namespace A347457.P11951119852953116705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347455 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004926 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A347457.P11951119852953116705

/-! ## A347457.P10152087342720872227

`comp[∪[A347455(n+1), A075952(n)]]`
-/

namespace A347457.P10152087342720872227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347455 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075952 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A347457.P10152087342720872227

/-! ## A347457.P1795481408569612225

`∪[A046363(n+1), A318991(n+1)]`
-/

namespace A347457.P1795481408569612225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347457.P1795481408569612225

/-! ## A347457.P8716714197315508408

`∪[A119848(n+1), A318991(n+1)]`
-/

namespace A347457.P8716714197315508408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347457.P8716714197315508408

/-! ## A347457.P16070666918160291021

`∪[A182852(n+1), A318991(n+1)]`
-/

namespace A347457.P16070666918160291021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347457.P16070666918160291021

/-! ## A347457.P7870244436397203158

`∪[A347451(n+1), A347453(n+1)]`
-/

namespace A347457.P7870244436397203158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347457.P7870244436397203158

/-! ## A347457.P5686117993645609760

`∪[A347451(n+1), A347454(n+1)]`
-/

namespace A347457.P5686117993645609760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A347457.P5686117993645609760

/-!
# A347458: Number of factorizations of n^2 with integer alternating product.

The programs for A347458, there is no canonical definition to state claims against.
-/

/-! ## A347458.P6028978958367731071

`A347437((n+1)²)`
-/

namespace A347458.P6028978958367731071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347437 ((n + 1) ^ 2)

end

end A347458.P6028978958367731071

/-! ## A347458.P15210618711911627672

`A347437(A000290(n+1))+A000007(n+4)`
-/

namespace A347458.P15210618711911627672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347437 (A000290 (n + 1)).toNat + A000007 (n + 4)

end

end A347458.P15210618711911627672

/-! ## A347458.P11556320487080512329

`A347437(xor(n, -1)²)%A058341(A028310(n))`
-/

namespace A347458.P11556320487080512329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347437 (Int.xor (n : ℤ) (-1) ^ 2).toNat) (A058341 (A028310 n).toNat)

end

end A347458.P11556320487080512329

/-! ## A347458.P2378064852600766244

`A347437(A000290(n+1))*A381526(A011531(n+1))`
-/

namespace A347458.P2378064852600766244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347437 (A000290 (n + 1)).toNat * A381526 (A011531 (n + 1)).toNat

end

end A347458.P2378064852600766244

/-! ## A347458.P12649058851152722152

`A347437(A000290(n+1))*A381526(A293873(n+1))`
-/

namespace A347458.P12649058851152722152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347437 (A000290 (n + 1)).toNat * A381526 (A293873 (n + 1)).toNat

end

end A347458.P12649058851152722152

/-! ## A347458.P9429664722186772038

`A347437(A000290(n+1))%A082183(A000040(n+1))`
-/

namespace A347458.P9429664722186772038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347437 (A000290 (n + 1)).toNat) (A082183 (A000040 (n + 1)).toNat)

end

end A347458.P9429664722186772038

/-! ## A347458.P11658219191972531943

`A347437(xor(n, -1)²)%A041914(n)`
-/

namespace A347458.P11658219191972531943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347437 (Int.xor (n : ℤ) (-1) ^ 2).toNat) (A041914 n)

end

end A347458.P11658219191972531943

/-!
# A347459: Number of factorizations of n^2 with integer reciprocal alternating product.

The programs for A347459, there is no canonical definition to state claims against.
-/

/-! ## A347459.P7973418247666183990

`A347439((n+1)²)`
-/

namespace A347459.P7973418247666183990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347439 ((n + 1) ^ 2)

end

end A347459.P7973418247666183990

/-! ## A347459.P7270985692946075451

`A054977(n+1)*A347439(A000290(n+1))`
-/

namespace A347459.P7270985692946075451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A347439 (A000290 (n + 1)).toNat

end

end A347459.P7270985692946075451

/-! ## A347459.P10269380958852510636

`A347439(A000290(n+1))%A006562(n+1)`
-/

namespace A347459.P10269380958852510636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347439 (A000290 (n + 1)).toNat) (A006562 (n + 1))

end

end A347459.P10269380958852510636

/-! ## A347459.P6710728075458667987

`A347439(A002620(2*(n+1)))+A000035(2*(n+2))`
-/

namespace A347459.P6710728075458667987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347439 (A002620 (2 * (n + 1))).toNat + A000035 (2 * (n + 2))

end

end A347459.P6710728075458667987

/-! ## A347459.P6826978625711975408

`A347439(A000290(n+1))+A332641(A048793(n))`
-/

namespace A347459.P6826978625711975408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347439 (A000290 (n + 1)).toNat + A332641 (A048793 n).toNat

end

end A347459.P6826978625711975408

/-!
# A347460: Number of distinct possible alternating products of factorizations of n.

The programs for A347460, there is no canonical definition to state claims against.
-/

/-! ## A347460.P5817551754978518753

`A347709(n+1)+A038548(n+1)`
-/

namespace A347460.P5817551754978518753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347709 (n + 1) + A038548 (n + 1)

end

end A347460.P5817551754978518753

/-! ## A347460.P15082567154786215806

`A347709(n+1)+A072670(n)+1`
-/

namespace A347460.P15082567154786215806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347709 (n + 1) + (A072670 n + 1)

end

end A347460.P15082567154786215806

/-! ## A347460.P847603316124373754

`A347709(n+1)+A211272(2*(n+1))`
-/

namespace A347460.P847603316124373754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347709 (n + 1) + A211272 (2 * (n + 1))

end

end A347460.P847603316124373754

/-! ## A347460.P12073865893021850573

`A347709(n+1)+A161841(n+1)/2`
-/

namespace A347460.P12073865893021850573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347709 (n + 1) : ℚ) + (A161841 (n + 1) : ℚ) / 2

end

end A347460.P12073865893021850573

/-! ## A347460.P2865197824521485644

`ceil(A347709(n+1)+A000005(n+1)/2)`
-/

namespace A347460.P2865197824521485644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A347709 (n + 1) : ℚ) + (A000005 (n + 1) : ℚ) / 2⌉

end

end A347460.P2865197824521485644

/-! ## A347460.P9672227337002666346

`C(2, n+2)+A347708(n+1)+A072670(n)`
-/

namespace A347460.P9672227337002666346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + (A347708 (n + 1) + A072670 n)

end

end A347460.P9672227337002666346

/-! ## A347460.P11004954404295618056

`A347709(n+1)+round(A000005(2*n+1-n)/2)`
-/

namespace A347460.P11004954404295618056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347709 (n + 1) + SequenceMachineLib.roundAway ((A000005 (2 * n + 1 - n) : ℚ) / 2)

end

end A347460.P11004954404295618056

/-! ## A347460.P14115537750030032469

`A005496(A347709(n+1)+A072670(n))`
-/

namespace A347460.P14115537750030032469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A347709 (n + 1) + A072670 n).toNat

end

end A347460.P14115537750030032469

/-! ## A347460.P13607480388945922736

`A028310(A347708(n+1)+A072670(n))`
-/

namespace A347460.P13607480388945922736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A347708 (n + 1) + A072670 n).toNat

end

end A347460.P13607480388945922736

/-! ## A347460.P8840969442778755860

`A347709(n+1)+A065033(A000005(n+1))`
-/

namespace A347460.P8840969442778755860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347709 (n + 1) + A065033 (A000005 (n + 1)).toNat

end

end A347460.P8840969442778755860

/-!
# A347461: Number of distinct possible alternating products of integer partitions of n.

The programs for A347461, there is no canonical definition to state claims against.
-/

/-! ## A347461.P5669446538485949963

`A055641(A024314(n+1))+A051424(n)`
-/

namespace A347461.P5669446538485949963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A024314 (n + 1)).toNat + A051424 n

end

end A347461.P5669446538485949963

/-!
# A347462: Number of distinct possible reverse-alternating products of integer partitions of n.

The programs for A347462, there is no canonical definition to state claims against.
-/

/-! ## A347462.P16641053447083019413

`A034891(n)-A180160(A292553(n))`
-/

namespace A347462.P16641053447083019413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034891 n - A180160 (A292553 n).toNat

end

end A347462.P16641053447083019413

/-!
# A347463: Number of ordered factorizations of n with integer alternating product.

The programs for A347463, there is no canonical definition to state claims against.
-/

/-! ## A347463.P5667250767820111974

`A347048(n+1)+A347049(n+1)`
-/

namespace A347463.P5667250767820111974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347048 (n + 1) + A347049 (n + 1)

end

end A347463.P5667250767820111974

/-! ## A347463.P5423047042586429092

`A010846(∏{p}[n+1, #^val(n+1, #²)]^A360661(n+1))`
-/

namespace A347463.P5423047042586429092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ) ^ (A360661 (n + 1) : ℤ))).toNat

end

end A347463.P5423047042586429092

/-! ## A347463.P8463320954923553808

`A070939(A347437(n+1)^A360661(n+1))`
-/

namespace A347463.P8463320954923553808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((A347437 (n + 1) : ℚ) ^ (A360661 (n + 1) : ℤ))).toNat

end

end A347463.P8463320954923553808

/-! ## A347463.P15141623308569581069

`A322483((n+1)^(A344417(n+1)-abs(A011597(n))))`
-/

namespace A347463.P15141623308569581069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A344417 (n + 1) - |A011597 n| : ℤ))).toNat

end

end A347463.P15141623308569581069

/-! ## A347463.P6444949757371411722

`A105973(A293514(n+1))`
-/

namespace A347463.P6444949757371411722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105973 (A293514 (n + 1)).toNat

end

end A347463.P6444949757371411722

/-!
# A347464: Number of even-length ordered factorizations of n^2 into factors > 1 with alternating product 1.

The programs for A347464, there is no canonical definition to state claims against.
-/

/-! ## A347464.P12872812995269334672

`A138100(A275729(n)^A252736(n+1))`
-/

namespace A347464.P12872812995269334672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138100 (SequenceMachineLib.roundAway ((A275729 n : ℚ) ^ (A252736 (n + 1) : ℤ))).toNat

end

end A347464.P12872812995269334672

/-! ## A347464.P3533847929210510390

`A352325(A006241(n+1))%A140141(n+3)`
-/

namespace A347464.P3533847929210510390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352325 (A006241 (n + 1)).toNat) (A140141 (n + 3))

end

end A347464.P3533847929210510390

/-! ## A347464.P7310749307858935237

`A162340(A318313(n+2)*A318326(n+1))`
-/

namespace A347464.P7310749307858935237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162340 (A318313 (n + 2) * A318326 (n + 1)).toNat

end

end A347464.P7310749307858935237

/-!
# A347465: Numbers whose multiset of prime indices has alternating product > 1.

The programs for A347465, there is no canonical definition to state claims against.
-/

/-! ## A347465.P6665884134020123559

`lt[1, A316524(n+1)]+1`
-/

namespace A347465.P6665884134020123559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A347465.P6665884134020123559

/-! ## A347465.P3986763062421566881

`lt[2, A071321(n+1)]+1`
-/

namespace A347465.P3986763062421566881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071321 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A347465.P3986763062421566881

/-! ## A347465.P9619300449208838249

`comp[A347450(n+1)-1]+1`
-/

namespace A347465.P9619300449208838249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347450 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A347465.P9619300449208838249

/-! ## A347465.P8519186843016819682

`eq[1, A353669(2*(n+1))]+1`
-/

namespace A347465.P8519186843016819682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353669 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A347465.P8519186843016819682

/-! ## A347465.P3873227400280950860

`lt[0, A353669(2*(n+2))]+2`
-/

namespace A347465.P3873227400280950860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353669 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A347465.P3873227400280950860

/-! ## A347465.P13393682817364740661

`∩[2*n, A119899(n+1)]/2`
-/

namespace A347465.P13393682817364740661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119899 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A347465.P13393682817364740661

/-! ## A347465.P10786686701455024221

`eq[1, A353669(gcd(n, C(2, n))+n)]`
-/

namespace A347465.P10786686701455024221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353669 (Nat.gcd n (Nat.choose 2 n) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347465.P10786686701455024221

/-! ## A347465.P12023746349360194782

`lt[2, A071321(n*a(and(1, n)^n))]` with `a(0)=1, a(1)=1`
-/

namespace A347465.P12023746349360194782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A071321 ((n : ℤ) * f2 (Nat.land 1 n ^ n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A347465.P12023746349360194782

/-! ## A347465.P5372606503390986507

`eq[0, A119842(A022144(n))]`
-/

namespace A347465.P5372606503390986507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119842 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347465.P5372606503390986507

/-! ## A347465.P6537644308377913612

`eq[0, A119842(A234275(n))]`
-/

namespace A347465.P6537644308377913612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119842 (A234275 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347465.P6537644308377913612

/-!
# A347466: Number of factorizations of n^2.

The programs for A347466, there is no canonical definition to state claims against.
-/

/-! ## A347466.P12844036497577810849

`A001055((n+1)²)`
-/

namespace A347466.P12844036497577810849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 ((n + 1) ^ 2)

end

end A347466.P12844036497577810849

/-! ## A347466.P8217616990218754849

`A050322(A101296((n+1)²))`
-/

namespace A347466.P8217616990218754849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050322 (A101296 ((n + 1) ^ 2)).toNat

end

end A347466.P8217616990218754849

/-! ## A347466.P5129766027986812060

`∑{d}[A071364((n+1)²), A050370(#)]`
-/

namespace A347466.P5129766027986812060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A050370 d

end

end A347466.P5129766027986812060

/-! ## A347466.P3917410213961006313

`A028422((n+1)²)+1`
-/

namespace A347466.P3917410213961006313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 ((n + 1) ^ 2) + 1

end

end A347466.P3917410213961006313

/-! ## A347466.P74937240101641560

`∑{d}[(n+1)², A050370(#)]`
-/

namespace A347466.P74937240101641560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050370 d

end

end A347466.P74937240101641560

/-! ## A347466.P13326822438513335099

`or(char[3], A001055(∑[2*n+1]))`
-/

namespace A347466.P13326822438513335099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A001055 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A347466.P13326822438513335099

/-! ## A347466.P3350718084588000128

`A344368((n+1)²)/(n+1)²`
-/

namespace A347466.P3350718084588000128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344368 ((n + 1) ^ 2) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A347466.P3350718084588000128

/-! ## A347466.P13376950351983142638

`∑{d}[A001055(∑[2*n+1]), A000010(#)]`
-/

namespace A347466.P13376950351983142638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A347466.P13376950351983142638

/-! ## A347466.P3166330798795634159

`A001055(∑[2*n+1])%A000040(n+1)`
-/

namespace A347466.P3166330798795634159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001055 (∑ j ∈ Finset.range (n + 1), f1 j)) (A000040 (n + 1))

end

end A347466.P3166330798795634159

/-! ## A347466.P4873470010993418364

`A001055(∑[2*n+1])+A008683(8*(n+1))`
-/

namespace A347466.P4873470010993418364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (∑ j ∈ Finset.range (n + 1), f1 j) + A008683 (8 * (n + 1))

end

end A347466.P4873470010993418364

/-! ## A347466.P17539517860546152031

`A064553(A064555(A001055((n+1)*(n+1))))`
-/

namespace A347466.P17539517860546152031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A064555 (A001055 ((n + 1) * (n + 1))).toNat).toNat

end

end A347466.P17539517860546152031

/-!
# A347467: Numbers h such that floor(k*sqrt(3)) = floor(h*sqrt(2)) for some k.

The programs for A347467, there is no canonical definition to state claims against.
-/

/-! ## A347467.P13950737433598516983

`ceil(A346308(n+1)/sqrt(2))`
-/

namespace A347467.P13950737433598516983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A346308 (n + 1) : ℝ) / Real.sqrt (2 : ℝ)⌉

end

end A347467.P13950737433598516983

/-! ## A347467.P7822937632150542613

`record[A026249(floor((n+1)*sqrt(3)))]`
-/

namespace A347467.P7822937632150542613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347467.P7822937632150542613

/-! ## A347467.P6319073706915363396

`A026249(A346308(n+1))`
-/

namespace A347467.P6319073706915363396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (A346308 (n + 1)).toNat

end

end A347467.P6319073706915363396

/-! ## A347467.P14954261760631891923

`A049472(A346308(n+1)+1)`
-/

namespace A347467.P14954261760631891923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A346308 (n + 1) + 1).toNat

end

end A347467.P14954261760631891923

/-! ## A347467.P13343984307551045314

`A248183(A346308(n+1)+2)`
-/

namespace A347467.P13343984307551045314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (A346308 (n + 1) + 2).toNat

end

end A347467.P13343984307551045314

/-! ## A347467.P12093828186335488207

`A194990(2*A346308(n+1))`
-/

namespace A347467.P12093828186335488207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194990 (2 * A346308 (n + 1)).toNat

end

end A347467.P12093828186335488207

/-!
# A347468: Numbers k such that floor(k*sqrt(3)) = floor(h*sqrt(2)) for some h.

The programs for A347468, there is no canonical definition to state claims against.
-/

/-! ## A347468.P3866109027628015711

`ceil(γ*A346308(n+1))`
-/

namespace A347468.P3866109027628015711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.eulerMascheroniConstant * (A346308 (n + 1) : ℝ)⌉

end

end A347468.P3866109027628015711

/-! ## A347468.P18380539065049972792

`eq[1, A188295(floor(n*sqrt(3))+1)]`
-/

namespace A347468.P18380539065049972792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347468.P18380539065049972792

/-! ## A347468.P12647620384207017932

`record[A188374(n+1)+floor((n+1)/sqrt(3))]`
-/

namespace A347468.P12647620384207017932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188374 (n + 1) + ⌊(n + 1 : ℝ) / Real.sqrt (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347468.P12647620384207017932

/-! ## A347468.P7783965354903532570

`A026254(A346308(n+1))`
-/

namespace A347468.P7783965354903532570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026254 (A346308 (n + 1)).toNat

end

end A347468.P7783965354903532570

/-! ## A347468.P2080261472240442642

`A097337(A346308(n+1)+1)`
-/

namespace A347468.P2080261472240442642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A346308 (n + 1) + 1).toNat

end

end A347468.P2080261472240442642

/-! ## A347468.P4178386115717684040

`A194979(A346308(n+1)+1)-1`
-/

namespace A347468.P4178386115717684040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (A346308 (n + 1) + 1).toNat - 1

end

end A347468.P4178386115717684040

/-! ## A347468.P664204983454502969

`record[A194979(n+1)-A188295(n+1)]`
-/

namespace A347468.P664204983454502969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (n + 1) - A188295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347468.P664204983454502969

/-! ## A347468.P17822335728365057484

`record[(n+1)%A026250(A022838(n+1))]`
-/

namespace A347468.P17822335728365057484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A026250 (A022838 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347468.P17822335728365057484

/-! ## A347468.P16948828329684791972

`floor(A014963(10*(n+10))+γ*A346308(n+1))`
-/

namespace A347468.P16948828329684791972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014963 (10 * (n + 10)) : ℝ) + Real.eulerMascheroniConstant * (A346308 (n + 1) : ℝ)⌋

end

end A347468.P16948828329684791972

/-! ## A347468.P3256918492373469014

`A194979(A346308(n+1))%A000040(n+1)²`
-/

namespace A347468.P3256918492373469014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194979 (A346308 (n + 1)).toNat) (A000040 (n + 1) ^ 2)

end

end A347468.P3256918492373469014

/-!
# A347470: Least product of any two numbers whose concatenation is n, excluding 0*n for n > 9.

The programs for A347470, there is no canonical definition to state claims against.
-/

/-! ## A347470.P18136452125741410869

`lcm(A137564(A257850(n)), A217657(n))`
-/

namespace A347470.P18136452125741410869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A137564 (A257850 n).toNat) (A217657 n)

end

end A347470.P18136452125741410869

/-!
# A347471: a(n) is the least number k such that n = A347470(k) := least a*b with concat(a,b) = k.

The programs for A347471, there is no canonical definition to state claims against.
-/

/-! ## A347471.P3386930714597454140

`∑{e}[A000079(n), A362023(#)]`
-/

namespace A347471.P3386930714597454140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A362023 (Nat.factorization (f1 n).natAbs p)

end

end A347471.P3386930714597454140

/-! ## A347471.P3246089889394322024

`∑{e}[A016116(2*n), A362023(#)]`
-/

namespace A347471.P3246089889394322024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A362023 (Nat.factorization (f1 n).natAbs p)

end

end A347471.P3246089889394322024

/-!
# A347472: Maximum number of nonzero entries allowed in an n X n matrix to ensure there is a 2 X 2 zero submatrix.

The programs for A347472, there is no canonical definition to state claims against.
-/

/-! ## A347472.P9648250030070588445

`A350296(n+2)-1`
-/

namespace A347472.P9648250030070588445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350296 (n + 2) - 1

end

end A347472.P9648250030070588445

/-! ## A347472.P7258698744230383248

`(n+2)²-A001197(n+2)`
-/

namespace A347472.P7258698744230383248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A001197 (n + 2)

end

end A347472.P7258698744230383248

/-! ## A347472.P8886604467323587338

`(n+1)*(n+3)-A072567(n+2)`
-/

namespace A347472.P8886604467323587338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 3) : ℤ) - A072567 (n + 2)

end

end A347472.P8886604467323587338

/-! ## A347472.P523492137588198341

`∑[Δ[A350296(n+1)]%(2*n+1)]`
-/

namespace A347472.P523492137588198341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350296 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347472.P523492137588198341

/-! ## A347472.P16622382400507202447

`(n+2)²-(A205805(2*(n+2))+1)`
-/

namespace A347472.P16622382400507202447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - (A205805 (2 * (n + 2)) + 1)

end

end A347472.P16622382400507202447

/-!
# A347473: Maximum number of nonzero entries allowed in an n X n matrix to ensure there is a 3 X 3 zero submatrix.

The programs for A347473, there is no canonical definition to state claims against.
-/

/-! ## A347473.P13403289711546978069

`A350237(n+3)-1`
-/

namespace A347473.P13403289711546978069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350237 (n + 3) - 1

end

end A347473.P13403289711546978069

/-! ## A347473.P7867333932429032735

`(n+3)²-A001198(n+3)`
-/

namespace A347473.P7867333932429032735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - A001198 (n + 3)

end

end A347473.P7867333932429032735

/-! ## A347473.P15845962232036540780

`(n+3)²-A350304(n+3)-1`
-/

namespace A347473.P15845962232036540780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - A350304 (n + 3) - 1

end

end A347473.P15845962232036540780

/-! ## A347473.P9852016214126838543

`A023443(A350237(n+3))`
-/

namespace A347473.P9852016214126838543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A350237 (n + 3)).toNat

end

end A347473.P9852016214126838543

/-! ## A347473.P1632034176453220470

`A289207(A350237(n+3)+1)`
-/

namespace A347473.P1632034176453220470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A350237 (n + 3) + 1).toNat

end

end A347473.P1632034176453220470

/-!
# A347474: Maximum number of nonzero entries allowed in an n X n matrix to ensure there is a 4 X 4 zero submatrix.

The programs for A347474, there is no canonical definition to state claims against.
-/

/-! ## A347474.P4879597853664980872

`(n+4)²-A006616(n+4)`
-/

namespace A347474.P4879597853664980872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 4) ^ 2 : ℤ) - A006616 (n + 4)

end

end A347474.P4879597853664980872

/-! ## A347474.P14729783874876074988

`ogf((2x+2x^2+2x^3+6x^4+7x^5+6x^6+9x^7+9x^8+8x^9+9x^10+11x^11)/(1-x))`
-/

namespace A347474.P14729783874876074988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2, 2, 6, 7, 6, 9, 9, 8, 9, 11] [1, -1] n

end

end A347474.P14729783874876074988

/-! ## A347474.P3688941062030500744

`A038127(A008724(n))+A008724(2*n+3)`
-/

namespace A347474.P3688941062030500744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038127 (A008724 n).toNat + A008724 (2 * n + 3)

end

end A347474.P3688941062030500744

/-!
# A347475: Numbers k such that k and the k-th triangular number T(k) = k*(k+1)/2 have only odd digits.

The programs for A347475, there is no canonical definition to state claims against.
-/

/-! ## A347475.P12521177185167188047

`∩[A014261(n+1), A349243(n+1)]`
-/

namespace A347475.P12521177185167188047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347475.P12521177185167188047

/-!
# A347476: Numbers which give a prime number when 0's and 1's are interchanged in their binary representation.

The programs for A347476, there is no canonical definition to state claims against.
-/

/-! ## A347476.P10020546982000573669

`eq[1, ∑{e}[n-A006257(n), #]]`
-/

namespace A347476.P10020546982000573669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A006257 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A347476.P10020546982000573669

/-! ## A347476.P2090670710568117739

`eq[0, A007920(A035327(n))]`
-/

namespace A347476.P2090670710568117739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A035327 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347476.P2090670710568117739

/-! ## A347476.P16640271439228005341

`eq[2, A074206(A035327(n)²)]`
-/

namespace A347476.P16640271439228005341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A035327 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347476.P16640271439228005341

/-! ## A347476.P4789347940526737089

`eq[1, A053989(A035327(n)+1)]`
-/

namespace A347476.P4789347940526737089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (A035327 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347476.P4789347940526737089

/-! ## A347476.P516653896014723519

`eq[0, A007920(A003817(n)-n)]`
-/

namespace A347476.P516653896014723519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A003817 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347476.P516653896014723519

/-! ## A347476.P327584836321688450

`eq[0, A007920(n-A006257(n))]`
-/

namespace A347476.P327584836321688450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 ((n : ℤ) - A006257 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347476.P327584836321688450

/-! ## A347476.P17552597371188299986

`eq[1, A003415(A003817(n)-n)]`
-/

namespace A347476.P17552597371188299986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003817 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347476.P17552597371188299986

/-! ## A347476.P13479029913421180039

`eq[1, A003415(n-A006257(n))]`
-/

namespace A347476.P13479029913421180039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 ((n : ℤ) - A006257 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347476.P13479029913421180039

/-! ## A347476.P4301725862528724133

`eq[1, A018783(A003817(n)-n)]`
-/

namespace A347476.P4301725862528724133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (A003817 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347476.P4301725862528724133

/-! ## A347476.P13597886211234930126

`eq[2, A001222(abs(2*(n+1)-A003817(2*n))+1)]`
-/

namespace A347476.P13597886211234930126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|(2 * (n + 1) : ℤ) - A003817 (2 * n)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347476.P13597886211234930126

/-!
# A347477: Number of total dominating sets in the complement graph of the n-cycle.

The programs for A347477, the canonical program `A347477.P8263666243731258991` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347477 has offset 3).

The definition of A347477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347477.P8263666243731258991

`record[2^n-1-n*4%(n+3)]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A347477

/-- `record[2^n-1-n*4%(n+3)]` -/
def P8263666243731258991.Spec : Prop :=
  ∀ n, P8263666243731258991.a n = A347477 (n + 3)

theorem P8263666243731258991.correct : P8263666243731258991.Spec := by
  intro n
  simp only [A347477, Nat.add_sub_cancel]

end A347477

/-! ## A347477.P6973925596588063288

`a(n-1)+2^(n+2)-4` with `a(0)=0, a(1)=1, a(2)=11`
-/

namespace A347477.P6973925596588063288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 11] fun n a =>
  a (n - 1) + ((2 ^ (n + 2) : ℤ) - 4)

end

end A347477.P6973925596588063288

namespace A347477

/-- `a(n-1)+2^(n+2)-4` -/
def P6973925596588063288.Spec : Prop :=
  ∀ n, P6973925596588063288.a n = A347477 (n + 3)

end A347477

/-! ## A347477.P5362125707292827857

`record[A347502(n)-2*n]`
-/

namespace A347477.P5362125707292827857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347502 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347477.P5362125707292827857

namespace A347477

/-- `record[A347502(n)-2*n]` -/
def P5362125707292827857.Spec : Prop :=
  ∀ n, P5362125707292827857.a n = A347477 (n + 3)

end A347477

/-! ## A347477.P15797343323936431365

`record[A052552(n)-2*xor(1, n)]`
-/

namespace A347477.P15797343323936431365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 n - (2 * Nat.xor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347477.P15797343323936431365

namespace A347477

/-- `record[A052552(n)-2*xor(1, n)]` -/
def P15797343323936431365.Spec : Prop :=
  ∀ n, P15797343323936431365.a n = A347477 (n + 3)

end A347477

/-! ## A347477.P7229353271862903772

`record[2^floor(n/2)-A267881(n)]`
-/

namespace A347477.P7229353271862903772
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) - (A267881 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347477.P7229353271862903772

namespace A347477

/-- `record[2^floor(n/2)-A267881(n)]` -/
def P7229353271862903772.Spec : Prop :=
  ∀ n, P7229353271862903772.a n = (A347477 (n + 3) : ℚ)

end A347477

/-! ## A347477.P6533485144269979880

`A247618(n)-A329502(n)`
-/

namespace A347477.P6533485144269979880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247618 n - A329502 n

end

end A347477.P6533485144269979880

namespace A347477

/-- `A247618(n)-A329502(n)` -/
def P6533485144269979880.Spec : Prop :=
  ∀ n, P6533485144269979880.a n = A347477 (n + 3)

end A347477

/-!
# A347478: Number of total dominating sets in the n-alkane graph.

The programs for A347478, the canonical program `A347478.P4020024426077931183` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347478 has offset 1).

The definition of A347478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347478.P344394690558071230

`ogf((15+4x)/(1-4x))`
-/

namespace A347478.P344394690558071230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, 4] [1, -4] n

end

end A347478.P344394690558071230

namespace A347478

/-- `ogf((15+4x)/(1-4x))` -/
def P344394690558071230.Spec : Prop :=
  ∀ n, P344394690558071230.a n = A347478 (n + 1)

end A347478

/-! ## A347478.P4020024426077931183

`4*a(n-1)` with `a(0)=15, a(1)=64`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A347478

/-- `4*a(n-1)` -/
def P4020024426077931183.Spec : Prop :=
  ∀ n, (P4020024426077931183.a n : ℤ) = A347478 (n + 1)

theorem P4020024426077931183.correct : P4020024426077931183.Spec := by
  intro n
  simp only [A347478, Nat.add_sub_cancel]

end A347478

/-! ## A347478.P15650768774940304459

`4^(n+2)-floor(acot(n))`
-/

namespace A347478.P15650768774940304459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 2) : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A347478.P15650768774940304459

namespace A347478

/-- `4^(n+2)-floor(acot(n))` -/
def P15650768774940304459.Spec : Prop :=
  ∀ n, P15650768774940304459.a n = A347478 (n + 1)

end A347478

/-! ## A347478.P2299690425789886663

`ceil(4^(n+2)-acot(n))`
-/

namespace A347478.P2299690425789886663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 ^ (n + 2) : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉

end

end A347478.P2299690425789886663

namespace A347478

/-- `ceil(4^(n+2)-acot(n))` -/
def P2299690425789886663.Spec : Prop :=
  ∀ n, P2299690425789886663.a n = A347478 (n + 1)

end A347478

/-! ## A347478.P3450076756360390712

`(16-floor(acot(n)))*4^n`
-/

namespace A347478.P3450076756360390712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 - ⌊SequenceMachineLib.acot (n : ℝ)⌋) * (4 ^ n : ℤ)

end

end A347478.P3450076756360390712

namespace A347478

/-- `(16-floor(acot(n)))*4^n` -/
def P3450076756360390712.Spec : Prop :=
  ∀ n, P3450076756360390712.a n = A347478 (n + 1)

end A347478

/-! ## A347478.P5293699673321368450

`4^(n+2)-C(2, n+2)`
-/

namespace A347478.P5293699673321368450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 2) : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

end

end A347478.P5293699673321368450

namespace A347478

/-- `4^(n+2)-C(2, n+2)` -/
def P5293699673321368450.Spec : Prop :=
  ∀ n, P5293699673321368450.a n = A347478 (n + 1)

end A347478

/-! ## A347478.P3853198502831059338

`round(4^(n+2)-acot(n+1))`
-/

namespace A347478.P3853198502831059338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 ^ (n + 2) : ℝ) - SequenceMachineLib.acot (n + 1 : ℝ))

end

end A347478.P3853198502831059338

namespace A347478

/-- `round(4^(n+2)-acot(n+1))` -/
def P3853198502831059338.Spec : Prop :=
  ∀ n, P3853198502831059338.a n = A347478 (n + 1)

end A347478

/-! ## A347478.P17021450279371929061

`4^(n+2)-floor(1/(n+1))`
-/

namespace A347478.P17021450279371929061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 2) : ℤ) - ⌊1 / (n + 1 : ℚ)⌋

end

end A347478.P17021450279371929061

namespace A347478

/-- `4^(n+2)-floor(1/(n+1))` -/
def P17021450279371929061.Spec : Prop :=
  ∀ n, P17021450279371929061.a n = A347478 (n + 1)

end A347478

/-! ## A347478.P1298880243745997773

`A018196(2*(n+2))`
-/

namespace A347478.P1298880243745997773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018196 (2 * (n + 2))

end

end A347478.P1298880243745997773

namespace A347478

/-- `A018196(2*(n+2))` -/
def P1298880243745997773.Spec : Prop :=
  ∀ n, P1298880243745997773.a n = A347478 (n + 1)

end A347478

/-! ## A347478.P9023330904139933180

`A132479(n+1)*A198633(n)`
-/

namespace A347478.P9023330904139933180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132479 (n + 1) * A198633 n

end

end A347478.P9023330904139933180

namespace A347478

/-- `A132479(n+1)*A198633(n)` -/
def P9023330904139933180.Spec : Prop :=
  ∀ n, P9023330904139933180.a n = A347478 (n + 1)

end A347478

/-! ## A347478.P9292521584769046693

`A171497(n)*A258935(n+2)`
-/

namespace A347478.P9292521584769046693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171497 n * A258935 (n + 2)

end

end A347478.P9292521584769046693

namespace A347478

/-- `A171497(n)*A258935(n+2)` -/
def P9292521584769046693.Spec : Prop :=
  ∀ n, P9292521584769046693.a n = A347478 (n + 1)

end A347478

/-! ## A347478.P5058550507841672278

`A171497(n)*A240951(n+3)`
-/

namespace A347478.P5058550507841672278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171497 n * A240951 (n + 3)

end

end A347478.P5058550507841672278

namespace A347478

/-- `A171497(n)*A240951(n+3)` -/
def P5058550507841672278.Spec : Prop :=
  ∀ n, P5058550507841672278.a n = A347478 (n + 1)

end A347478

/-! ## A347478.P12170766617118865019

`A077552(n+1)*A258935(n+2)`
-/

namespace A347478.P12170766617118865019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077552 (n + 1) * A258935 (n + 2)

end

end A347478.P12170766617118865019

namespace A347478

/-- `A077552(n+1)*A258935(n+2)` -/
def P12170766617118865019.Spec : Prop :=
  ∀ n, P12170766617118865019.a n = A347478 (n + 1)

end A347478

/-! ## A347478.P11549167283041015213

`(A146541(n)+A020707(n))*A198633(n)`
-/

namespace A347478.P11549167283041015213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A146541 n + A020707 n) * A198633 n

end

end A347478.P11549167283041015213

namespace A347478

/-- `(A146541(n)+A020707(n))*A198633(n)` -/
def P11549167283041015213.Spec : Prop :=
  ∀ n, P11549167283041015213.a n = A347478 (n + 1)

end A347478

/-! ## A347478.P11997108660321235656

`(A198633(n+1)+A146541(n))*A198633(n)`
-/

namespace A347478.P11997108660321235656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A198633 (n + 1) + A146541 n) * A198633 n

end

end A347478.P11997108660321235656

namespace A347478

/-- `(A198633(n+1)+A146541(n))*A198633(n)` -/
def P11997108660321235656.Spec : Prop :=
  ∀ n, P11997108660321235656.a n = A347478 (n + 1)

end A347478

/-! ## A347478.P14060451148356079267

`(A020707(n+1)-A171497(n))*A171497(n)`
-/

namespace A347478.P14060451148356079267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020707 (n + 1) - A171497 n) * A171497 n

end

end A347478.P14060451148356079267

namespace A347478

/-- `(A020707(n+1)-A171497(n))*A171497(n)` -/
def P14060451148356079267.Spec : Prop :=
  ∀ n, P14060451148356079267.a n = A347478 (n + 1)

end A347478

/-! ## A347478.P17231890440246416116

`(A146541(n+1)-A171497(n))*A171497(n)`
-/

namespace A347478.P17231890440246416116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A146541 (n + 1) - A171497 n) * A171497 n

end

end A347478.P17231890440246416116

namespace A347478

/-- `(A146541(n+1)-A171497(n))*A171497(n)` -/
def P17231890440246416116.Spec : Prop :=
  ∀ n, P17231890440246416116.a n = A347478 (n + 1)

end A347478

/-! ## A347478.P8771683469937019577

`(A171497(n+1)-A171497(n))*A171497(n)`
-/

namespace A347478.P8771683469937019577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171497 (n + 1) - A171497 n) * A171497 n

end

end A347478.P8771683469937019577

namespace A347478

/-- `(A171497(n+1)-A171497(n))*A171497(n)` -/
def P8771683469937019577.Spec : Prop :=
  ∀ n, P8771683469937019577.a n = A347478 (n + 1)

end A347478

/-! ## A347478.P9620281975180352406

`(A173033(n+1)-A173033(n))*A258935(n+2)`
-/

namespace A347478.P9620281975180352406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A173033 (n + 1) - A173033 n) * A258935 (n + 2)

end

end A347478.P9620281975180352406

namespace A347478

/-- `(A173033(n+1)-A173033(n))*A258935(n+2)` -/
def P9620281975180352406.Spec : Prop :=
  ∀ n, P9620281975180352406.a n = A347478 (n + 1)

end A347478

/-! ## A347478.P759529934190791664

`(A020707(n+1)-A077552(n+1))*A077552(n+1)`
-/

namespace A347478.P759529934190791664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020707 (n + 1) - A077552 (n + 1)) * A077552 (n + 1)

end

end A347478.P759529934190791664

namespace A347478

/-- `(A020707(n+1)-A077552(n+1))*A077552(n+1)` -/
def P759529934190791664.Spec : Prop :=
  ∀ n, P759529934190791664.a n = A347478 (n + 1)

end A347478

/-!
# A347481: Number of total dominating sets in the n-dipyramidal graph.

The programs for A347481, the canonical program `A347481.P12391842532662398562` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347481 has offset 1).

The definition of A347481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347481.P12391842532662398562

`A302603(n+2)+∑[2^(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A347481

/-- `A302603(n+2)+∑[2^(n+1)]` -/
def P12391842532662398562.Spec : Prop :=
  ∀ n, P12391842532662398562.a n = A347481 (n + 1)

theorem P12391842532662398562.correct : P12391842532662398562.Spec := by
  intro n
  simp only [A347481, Nat.add_sub_cancel]

end A347481

/-! ## A347481.P10594272359810710646

`A001638(n+1)+∑[A007283(n)]`
-/

namespace A347481.P10594272359810710646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001638 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347481.P10594272359810710646

namespace A347481

/-- `A001638(n+1)+∑[A007283(n)]` -/
def P10594272359810710646.Spec : Prop :=
  ∀ n, P10594272359810710646.a n = A347481 (n + 1)

end A347481

/-! ## A347481.P14020099508274450613

`A001638(n+1)+3*A126646(n)`
-/

namespace A347481.P14020099508274450613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001638 (n + 1) + 3 * A126646 n

end

end A347481.P14020099508274450613

namespace A347481

/-- `A001638(n+1)+3*A126646(n)` -/
def P14020099508274450613.Spec : Prop :=
  ∀ n, P14020099508274450613.a n = A347481 (n + 1)

end A347481

/-! ## A347481.P424531297624583240

`A001638(n+1)+A004119(n+2)-4`
-/

namespace A347481.P424531297624583240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001638 (n + 1) + (A004119 (n + 2) - 4)

end

end A347481.P424531297624583240

namespace A347481

/-- `A001638(n+1)+A004119(n+2)-4` -/
def P424531297624583240.Spec : Prop :=
  ∀ n, P424531297624583240.a n = A347481 (n + 1)

end A347481

/-! ## A347481.P15506446919456853674

`A001638(n+1)-(A083944(n+3)+A083944(n))`
-/

namespace A347481.P15506446919456853674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001638 (n + 1) - (A083944 (n + 3) + A083944 n)

end

end A347481.P15506446919456853674

namespace A347481

/-- `A001638(n+1)-(A083944(n+3)+A083944(n))` -/
def P15506446919456853674.Spec : Prop :=
  ∀ n, P15506446919456853674.a n = A347481 (n + 1)

end A347481

/-!
# A347485: Irregular triangle read by rows: T(n, k) is the q-multinomial coefficient defined by the k-th partition of n in Abramowitz-Stegun order, evaluated at q = 2.

The programs for A347485, there is no canonical definition to state claims against.
-/

/-! ## A347485.P4195283504554388181

`A215088(A347488(n+1))`
-/

namespace A347485.P4195283504554388181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215088 (A347488 (n + 1)).toNat

end

end A347485.P4195283504554388181

/-! ## A347485.P10773340649756385990

`A203580(A347489(n+1))`
-/

namespace A347485.P10773340649756385990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203580 (A347489 (n + 1)).toNat

end

end A347485.P10773340649756385990

/-! ## A347485.P2375463103663446293

`A003961(A080852(n))%A114491(n)`
-/

namespace A347485.P2375463103663446293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003961 (A080852 n).toNat) (A114491 n)

end

end A347485.P2375463103663446293

/-! ## A347485.P16864376337006988666

`A178772(A194583(n))%A131280(n+1)`
-/

namespace A347485.P16864376337006988666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178772 (A194583 n).toNat) (A131280 (n + 1))

end

end A347485.P16864376337006988666

/-! ## A347485.P5961683257254876113

`C(A383159(A006498(2*n+3)), A139600(n))`
-/

namespace A347485.P5961683257254876113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A383159 (A006498 (2 * n + 3)).toNat).toNat (A139600 n).toNat

end

end A347485.P5961683257254876113

/-!
# A347486: Irregular triangle read by rows: T(n, k) is the q-multinomial coefficient defined by the k-th partition of n in Abramowitz-Stegun order, evaluated at q = 3.

The programs for A347486, there is no canonical definition to state claims against.
-/

/-! ## A347486.P5973658732158989601

`A332249(2*A347488(n+1))`
-/

namespace A347486.P5973658732158989601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332249 (2 * A347488 (n + 1)).toNat

end

end A347486.P5973658732158989601

/-! ## A347486.P9624031897117255009

`A332249(A347488(n+1)+A347488(n+1)-1)`
-/

namespace A347486.P9624031897117255009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332249 (A347488 (n + 1) + (A347488 (n + 1) - 1)).toNat

end

end A347486.P9624031897117255009

/-! ## A347486.P17067367169267637836

`A163325(A347491(n+1))`
-/

namespace A347486.P17067367169267637836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163325 (A347491 (n + 1)).toNat

end

end A347486.P17067367169267637836

/-! ## A347486.P8074416939031747220

`A334888(A347490(n+1))`
-/

namespace A347486.P8074416939031747220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334888 (A347490 (n + 1)).toNat

end

end A347486.P8074416939031747220

/-! ## A347486.P9283428467965654147

`A244591(A347485(n+1)+1)`
-/

namespace A347486.P9283428467965654147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244591 (A347485 (n + 1) + 1).toNat

end

end A347486.P9283428467965654147

/-!
# A347487: Irregular triangle read by rows: T(n, k) is the q-multinomial coefficient defined by the k-th partition of n in Abramowitz-Stegun order, evaluated at q = 4.

The programs for A347487, there is no canonical definition to state claims against.
-/

/-! ## A347487.P4623926124225291859

`A303787(A347488(n+1))`
-/

namespace A347487.P4623926124225291859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303787 (A347488 (n + 1)).toNat

end

end A347487.P4623926124225291859

/-! ## A347487.P10668339270064945599

`A065361(A347491(n+1))`
-/

namespace A347487.P10668339270064945599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A347491 (n + 1)).toNat

end

end A347487.P10668339270064945599

/-! ## A347487.P3385447574596631307

`A072650(A347490(n+1))`
-/

namespace A347487.P3385447574596631307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072650 (A347490 (n + 1)).toNat

end

end A347487.P3385447574596631307

/-! ## A347487.P15505211999350347885

`A106151(2*A347490(n+1))`
-/

namespace A347487.P15505211999350347885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106151 (2 * A347490 (n + 1)).toNat

end

end A347487.P15505211999350347885

/-! ## A347487.P14014232078429643964

`A106151(A347490(n+1)+A185119(n))`
-/

namespace A347487.P14014232078429643964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106151 (A347490 (n + 1) + A185119 n).toNat

end

end A347487.P14014232078429643964

/-!
# A347488: Irregular triangle read by rows: T(n, k) is the q-multinomial coefficient defined by the k-th partition of n in Abramowitz-Stegun order, evaluated at q = 5.

The programs for A347488, there is no canonical definition to state claims against.
-/

/-! ## A347488.P8966798040207330989

`A020655(A055642(n)*A347487(n+1))`
-/

namespace A347488.P8966798040207330989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (A055642 n * A347487 (n + 1)).toNat

end

end A347488.P8966798040207330989

/-! ## A347488.P4727770987497781977

`A020655(A347487(n+1)^A055642(n))`
-/

namespace A347488.P4727770987497781977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (SequenceMachineLib.roundAway ((A347487 (n + 1) : ℚ) ^ (A055642 n : ℤ))).toNat

end

end A347488.P4727770987497781977

/-! ## A347488.P12482804374093126923

`A028899(A347492(n+1))`
-/

namespace A347488.P12482804374093126923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A347492 (n + 1)).toNat

end

end A347488.P12482804374093126923

/-!
# A347489: Irregular triangle read by rows: T(n, k) is the q-multinomial coefficient defined by the k-th partition of n in Abramowitz-Stegun order, evaluated at q = 7.

The programs for A347489, there is no canonical definition to state claims against.
-/

/-! ## A347489.P4499872465592597157

`A037466(A347488(n+1))`
-/

namespace A347489.P4499872465592597157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (A347488 (n + 1)).toNat

end

end A347489.P4499872465592597157

/-! ## A347489.P4145563247903851643

`A028901(A347492(n+1))`
-/

namespace A347489.P4145563247903851643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (A347492 (n + 1)).toNat

end

end A347489.P4145563247903851643

/-!
# A347490: Irregular triangle read by rows: T(n, k) is the q-multinomial coefficient defined by the k-th partition of n in Abramowitz-Stegun order, evaluated at q = 8.

The programs for A347490, there is no canonical definition to state claims against.
-/

/-! ## A347490.P18286846071782994444

`A037467(A347488(n+1))`
-/

namespace A347490.P18286846071782994444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037467 (A347488 (n + 1)).toNat

end

end A347490.P18286846071782994444

/-! ## A347490.P15476546619509613067

`A037474(A347489(n+1))`
-/

namespace A347490.P15476546619509613067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A347489 (n + 1)).toNat

end

end A347490.P15476546619509613067

/-! ## A347490.P6347213163592027178

`A028902(A347492(n+1))`
-/

namespace A347490.P6347213163592027178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A347492 (n + 1)).toNat

end

end A347490.P6347213163592027178

/-!
# A347491: Irregular triangle read by rows: T(n, k) is the q-multinomial coefficient defined by the k-th partition of n in Abramowitz-Stegun order, evaluated at q = 9.

The programs for A347491, there is no canonical definition to state claims against.
-/

/-! ## A347491.P10656911861683046334

`A037468(A347488(n+1))`
-/

namespace A347491.P10656911861683046334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 (A347488 (n + 1)).toNat

end

end A347491.P10656911861683046334

/-! ## A347491.P13050255592012405200

`A037475(A347489(n+1))`
-/

namespace A347491.P13050255592012405200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (A347489 (n + 1)).toNat

end

end A347491.P13050255592012405200

/-! ## A347491.P2427743477382443874

`A037477(A347490(n+1))`
-/

namespace A347491.P2427743477382443874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A347490 (n + 1)).toNat

end

end A347491.P2427743477382443874

/-! ## A347491.P10682515617711593788

`A028903(A347492(n+1))`
-/

namespace A347491.P10682515617711593788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A347492 (n + 1)).toNat

end

end A347491.P10682515617711593788

/-!
# A347492: Irregular triangle read by rows: T(n, k) is the q-multinomial coefficient defined by the k-th partition of n in Abramowitz-Stegun order, evaluated at q = 11.

The programs for A347492, there is no canonical definition to state claims against.
-/

/-! ## A347492.P11525252742695028578

`∑{d}[A013618(A153987(n)), #]`
-/

namespace A347492.P11525252742695028578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013618 (A153987 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A347492.P11525252742695028578

/-!
# A347493: a(0) = 1, a(1) = 0, a(2) = a(3) = 1; thereafter, a(n) = a(n-1) + a(n-2) + a(n-4).

The programs for A347493, the canonical program `A347493.P6980433483272239298` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347493 has offset 0).

The definition of A347493 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-4)` (program `A347493.P6980433483272239298`, by `A347493.P6980433483272239298.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A347493.P6980433483272239298

`a(n-1)+a(n-2)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A347493

/-- `a(n-1)+a(n-2)+a(n-4)` -/
def P6980433483272239298.Spec : Prop :=
  ∀ n, (P6980433483272239298.a n : ℤ) = A347493 n

theorem P6980433483272239298.correct : P6980433483272239298.Spec := by
  intro n
  simp only [A347493]

end A347493

/-! ## A347493.P1627158097181958907

`ogf((-1+x)/(-1+x+x^2+x^4))`
-/

namespace A347493.P1627158097181958907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -1, -1, 0, -1] n

end

end A347493.P1627158097181958907

namespace A347493

/-- `ogf((-1+x)/(-1+x+x^2+x^4))` -/
def P1627158097181958907.Spec : Prop :=
  ∀ n, P1627158097181958907.a n = A347493 n

end A347493

/-! ## A347493.P7482423453808976043

`A017818(2*n)`
-/

namespace A347493.P7482423453808976043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 (2 * n)

end

end A347493.P7482423453808976043

namespace A347493

/-- `A017818(2*n)` -/
def P7482423453808976043.Spec : Prop :=
  ∀ n, P7482423453808976043.a n = A347493 n

end A347493

/-! ## A347493.P16185195098699302030

`A005251(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A347493.P16185195098699302030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005251 (n + 1) - a (n - 1)

end

end A347493.P16185195098699302030

namespace A347493

/-- `A005251(n+1)-a(n-1)` -/
def P16185195098699302030.Spec : Prop :=
  ∀ n, P16185195098699302030.a n = A347493 n

end A347493

/-! ## A347493.P888001943461141050

`A182097(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A347493.P888001943461141050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A182097 (2 * n) - a (n - 1)

end

end A347493.P888001943461141050

namespace A347493

/-- `A182097(2*n)-a(n-1)` -/
def P888001943461141050.Spec : Prop :=
  ∀ n, P888001943461141050.a n = A347493 n

end A347493

/-! ## A347493.P8895023543956660343

`Δ[A181532(n)]`
-/

namespace A347493.P8895023543956660343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347493.P8895023543956660343

namespace A347493

/-- `Δ[A181532(n)]` -/
def P8895023543956660343.Spec : Prop :=
  ∀ n, P8895023543956660343.a n = A347493 n

end A347493

/-! ## A347493.P14876611419655758251

`Δ[A017818(Δ[n²])]`
-/

namespace A347493.P14876611419655758251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347493.P14876611419655758251

namespace A347493

/-- `Δ[A017818(Δ[n²])]` -/
def P14876611419655758251.Spec : Prop :=
  ∀ n, P14876611419655758251.a n = A347493 n

end A347493

/-! ## A347493.P4099971724773651500

`A060945(n)-A181532(n)`
-/

namespace A347493.P4099971724773651500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060945 n - A181532 n

end

end A347493.P4099971724773651500

namespace A347493

/-- `A060945(n)-A181532(n)` -/
def P4099971724773651500.Spec : Prop :=
  ∀ n, P4099971724773651500.a n = A347493 n

end A347493

/-! ## A347493.P10234879531049771150

`A181532(n+1)-A181532(n)`
-/

namespace A347493.P10234879531049771150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181532 (n + 1) - A181532 n

end

end A347493.P10234879531049771150

namespace A347493

/-- `A181532(n+1)-A181532(n)` -/
def P10234879531049771150.Spec : Prop :=
  ∀ n, P10234879531049771150.a n = A347493 n

end A347493

/-! ## A347493.P15947777733587658479

`A060945(n)+A060945(n)-A005314(n+1)`
-/

namespace A347493.P15947777733587658479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060945 n + (A060945 n - A005314 (n + 1))

end

end A347493.P15947777733587658479

namespace A347493

/-- `A060945(n)+A060945(n)-A005314(n+1)` -/
def P15947777733587658479.Spec : Prop :=
  ∀ n, P15947777733587658479.a n = A347493 n

end A347493

/-! ## A347493.P3275623456969650872

`A228362(2*n+1)+A000931(2*n)-A228361(2*n)`
-/

namespace A347493.P3275623456969650872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228362 (2 * n + 1) + (A000931 (2 * n) - A228361 (2 * n))

end

end A347493.P3275623456969650872

namespace A347493

/-- `A228362(2*n+1)+A000931(2*n)-A228361(2*n)` -/
def P3275623456969650872.Spec : Prop :=
  ∀ n, P3275623456969650872.a n = A347493 n

end A347493

/-! ## A347493.P17456203858193723522

`A134816(2*(n+2))-A228362(2*n+3)`
-/

namespace A347493.P17456203858193723522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (2 * (n + 2)) - A228362 (2 * n + 3)

end

end A347493.P17456203858193723522

namespace A347493

/-- `A134816(2*(n+2))-A228362(2*n+3)` -/
def P17456203858193723522.Spec : Prop :=
  ∀ n, P17456203858193723522.a n = A347493 n

end A347493

/-! ## A347493.P11730284159492230894

`A228361(2*n+3)-A228362(2*n+3)`
-/

namespace A347493.P11730284159492230894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (2 * n + 3) - A228362 (2 * n + 3)

end

end A347493.P11730284159492230894

namespace A347493

/-- `A228361(2*n+3)-A228362(2*n+3)` -/
def P11730284159492230894.Spec : Prop :=
  ∀ n, P11730284159492230894.a n = A347493 n

end A347493

/-! ## A347493.P10207449700936834344

`A137495(n+1)-2*A060945(n+1)`
-/

namespace A347493.P10207449700936834344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137495 (n + 1) - 2 * A060945 (n + 1)

end

end A347493.P10207449700936834344

namespace A347493

/-- `A137495(n+1)-2*A060945(n+1)` -/
def P10207449700936834344.Spec : Prop :=
  ∀ n, P10207449700936834344.a n = A347493 n

end A347493

/-! ## A347493.P3444364819546908901

`Δ[A193771(2*n+1)-A193771(2*n)]`
-/

namespace A347493.P3444364819546908901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193771 (2 * n + 1) - A193771 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347493.P3444364819546908901

namespace A347493

/-- `Δ[A193771(2*n+1)-A193771(2*n)]` -/
def P3444364819546908901.Spec : Prop :=
  ∀ n, P3444364819546908901.a n = A347493 n

end A347493

/-! ## A347493.P6167076013724323119

`Δ[A164407(n+4)-A164409(n+4)]`
-/

namespace A347493.P6167076013724323119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164407 (n + 4) - A164409 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347493.P6167076013724323119

namespace A347493

/-- `Δ[A164407(n+4)-A164409(n+4)]` -/
def P6167076013724323119.Spec : Prop :=
  ∀ n, P6167076013724323119.a n = A347493 n

end A347493

/-!
# A347496: Primorial base Niven numbers (A333426) with a record gap to the next primorial base Niven number.

The programs for A347496, there is no canonical definition to state claims against.
-/

/-! ## A347496.P12656530369035028714

`A000120(A369300(n))*A019565(n)`
-/

namespace A347496.P12656530369035028714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A369300 n).toNat * A019565 n

end

end A347496.P12656530369035028714

/-! ## A347496.P14491538225621167699

`A057142(A308531(n+1))-A209229(n)`
-/

namespace A347496.P14491538225621167699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 (A308531 (n + 1)).toNat - A209229 n

end

end A347496.P14491538225621167699

/-! ## A347496.P8297862533275314139

`A008687(A344064(n))*A344085(n+1)`
-/

namespace A347496.P8297862533275314139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (A344064 n).toNat * A344085 (n + 1)

end

end A347496.P8297862533275314139

/-!
# A347497: Alternating antidiagonal sums of A047920.

The programs for A347497, there is no canonical definition to state claims against.
-/

/-! ## A347497.P1205135955506520669

`A195120(2*A130905(n))`
-/

namespace A347497.P1205135955506520669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (2 * A130905 n).toNat

end

end A347497.P1205135955506520669

/-! ## A347497.P16513938952139270349

`A110656(3*A266083(n))`
-/

namespace A347497.P16513938952139270349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (3 * A266083 n).toNat

end

end A347497.P16513938952139270349

/-!
# A347499: Triangle read by rows: n-th row is the lexicographically earliest n-element subset of {1,2,3,...,A347498(n)} with the property that all products i * j are distinct for i <= j.

The programs for A347499, there is no canonical definition to state claims against.
-/

/-! ## A347499.P2339609617823561842

`A084558(A003002(n)^A002262(n))`
-/

namespace A347499.P2339609617823561842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (SequenceMachineLib.roundAway ((A003002 n : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A347499.P2339609617823561842

/-! ## A347499.P18186002944857746979

`A084558(A059268(n)^A081604(n))`
-/

namespace A347499.P18186002944857746979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (SequenceMachineLib.roundAway ((A059268 n : ℚ) ^ (A081604 n : ℤ))).toNat

end

end A347499.P18186002944857746979

/-! ## A347499.P4696013753940092569

`A235224(A000267(n)^A002262(n))`
-/

namespace A347499.P4696013753940092569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (SequenceMachineLib.roundAway ((A000267 n : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A347499.P4696013753940092569

/-! ## A347499.P7857579072706421044

`A084558(A165477(n)^A002262(n))`
-/

namespace A347499.P7857579072706421044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (SequenceMachineLib.roundAway ((A165477 n : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A347499.P7857579072706421044

/-! ## A347499.P10916203695286188457

`A352957(n+1)+A005614(A153649(n+1))`
-/

namespace A347499.P10916203695286188457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352957 (n + 1) + A005614 (A153649 (n + 1)).toNat

end

end A347499.P10916203695286188457

