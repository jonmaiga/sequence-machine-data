import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
# A265310: Least positive k such that the product of divisors of n (A007955) divides k!.

The programs for A265310, there is no canonical definition to state claims against.
-/

/-! ## A265310.P7444378470233566339

`A002034(gcd(∏{d}[n+1, #], A139050(n+1)))`
-/

namespace A265310.P7444378470233566339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (Int.gcd ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A139050 (n + 1)))

end

end A265310.P7444378470233566339

/-! ## A265310.P1589561281311219303

`A002034(gcd(A007955(n+1), A139050(n+1)))`
-/

namespace A265310.P1589561281311219303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (Int.gcd (A007955 (n + 1)) (A139050 (n + 1)))

end

end A265310.P1589561281311219303

/-! ## A265310.P10092491387887511739

`A002034(∏{d}[n+1, #])`
-/

namespace A265310.P10092491387887511739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∏ d ∈ Nat.divisors (f1 n), d)

end

end A265310.P10092491387887511739

/-! ## A265310.P5290617514574780832

`A122416(∏{d}[n+1, #])-1`
-/

namespace A265310.P5290617514574780832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122416 (∏ d ∈ Nat.divisors (f1 n), d) - 1

end

end A265310.P5290617514574780832

/-! ## A265310.P7395979492854945983

`A002034(exp(∑{d}[n+1, log(#)]))`
-/

namespace A265310.P7395979492854945983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (SequenceMachineLib.roundAway (Real.exp (∑ d ∈ Nat.divisors (f1 n), Real.log (d : ℝ)))).toNat

end

end A265310.P7395979492854945983

/-!
# A265311: a(n) is the number of abelian subgroups of maximal order in S_n.

The programs for A265311, there is no canonical definition to state claims against.
-/

/-! ## A265311.P10673114307021009370

`A343033(xor(12, A340498(n)))`
-/

namespace A265311.P10673114307021009370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343033 (Int.xor 12 (A340498 n)).toNat

end

end A265311.P10673114307021009370

/-! ## A265311.P17199159694255900387

`A099507(A144186(n)*A259862(n+1))`
-/

namespace A265311.P17199159694255900387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099507 (A144186 n * A259862 (n + 1)).toNat

end

end A265311.P17199159694255900387

/-! ## A265311.P18126260695874521548

`A361731(A047842(3*(n+1))%A140113(n+1))`
-/

namespace A265311.P18126260695874521548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361731 (Int.tmod (A047842 (3 * (n + 1))) (A140113 (n + 1))).toNat

end

end A265311.P18126260695874521548

/-!
# A265312: Square array read by ascending antidiagonals, Bell numbers iterated by the Bell transform.

The programs for A265312, there is no canonical definition to state claims against.
-/

/-! ## A265312.P12872143479448974311

`∏{p}[A051295(A287417(n)), #]`
-/

namespace A265312.P12872143479448974311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051295 (A287417 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A265312.P12872143479448974311

/-! ## A265312.P6545150618059243549

`A172471(A143632(n)^A324198(n))`
-/

namespace A265312.P6545150618059243549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (SequenceMachineLib.roundAway ((A143632 n : ℚ) ^ (A324198 n : ℤ))).toNat

end

end A265312.P6545150618059243549

/-! ## A265312.P1714806625533528963

`A154450(A267383(n)%A015048(n+1))`
-/

namespace A265312.P1714806625533528963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154450 (Int.tmod (A267383 n) (A015048 (n + 1))).toNat

end

end A265312.P1714806625533528963

/-! ## A265312.P15476310931935818933

`A276625(A287216(n)%A324754(2*n+3))`
-/

namespace A265312.P15476310931935818933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (Int.tmod (A287216 n) (A324754 (2 * n + 3))).toNat

end

end A265312.P15476310931935818933

/-! ## A265312.P4712537008794885511

`gcd(A113143(n), A284826(A008292(n+1)))`
-/

namespace A265312.P4712537008794885511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113143 n) (A284826 (A008292 (n + 1)).toNat)

end

end A265312.P4712537008794885511

/-!
# A265313: Square array read by ascending antidiagonals, complementary Bell numbers iterated by the Bell transform.

The programs for A265313, there is no canonical definition to state claims against.
-/

/-! ## A265313.P10750103318697277961

`A131851(A026998(n)^3)`
-/

namespace A265313.P10750103318697277961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (A026998 n ^ 3).toNat

end

end A265313.P10750103318697277961

/-! ## A265313.P13306522672158411611

`A122944(A000041(A110291(n)))`
-/

namespace A265313.P13306522672158411611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122944 (A000041 (A110291 n).toNat).toNat

end

end A265313.P13306522672158411611

/-! ## A265313.P12602461253811945781

`A016319(A049472(A320750(n+1)!))`
-/

namespace A265313.P12602461253811945781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016319 (A049472 (Nat.factorial (A320750 (n + 1)).toNat)).toNat

end

end A265313.P12602461253811945781

/-! ## A265313.P8520652778150485039

`A131851(A026998(n)²*A026998(n))`
-/

namespace A265313.P8520652778150485039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (A026998 n ^ 2 * A026998 n).toNat

end

end A265313.P8520652778150485039

/-! ## A265313.P10673755640127372044

`A260875(n+1)^A201949(A180662(n+3))`
-/

namespace A265313.P10673755640127372044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260875 (n + 1) : ℚ) ^ (A201949 (A180662 (n + 3)).toNat : ℤ)

end

end A265313.P10673755640127372044

/-!
# A265314: Triangle read by rows, the numerators of the Bell transform of B(n,1) where B(n,x) are the Bernoulli polynomials.

The programs for A265314, there is no canonical definition to state claims against.
-/

/-! ## A265314.P17594783780018088004

`A071619(and(A018468(n+1), A144402(n)))`
-/

namespace A265314.P17594783780018088004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 (Int.land (A018468 (n + 1)) (A144402 n)).toNat

end

end A265314.P17594783780018088004

/-! ## A265314.P10004055486178252682

`A030101(and(A117414(n), A338030((n+1)²)))`
-/

namespace A265314.P10004055486178252682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.land (A117414 n) (A338030 ((n + 1) ^ 2))).toNat

end

end A265314.P10004055486178252682

/-! ## A265314.P11972700205374821439

`A140517(A084938(n))%A045537(2*(n+1))`
-/

namespace A265314.P11972700205374821439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140517 (A084938 n).toNat) (A045537 (2 * (n + 1)))

end

end A265314.P11972700205374821439

/-! ## A265314.P5520401043189966279

`A071619(and(A018468(n+1), A057150(n+1)))`
-/

namespace A265314.P5520401043189966279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 (Int.land (A018468 (n + 1)) (A057150 (n + 1))).toNat

end

end A265314.P5520401043189966279

/-! ## A265314.P1414631078394471545

`and(A046413(n+1), A339617(A057150(n+1)))`
-/

namespace A265314.P1414631078394471545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046413 (n + 1)) (A339617 (A057150 (n + 1)).toNat)

end

end A265314.P1414631078394471545

/-!
# A265316: First row of A262057.

The programs for A265316, the canonical program `A265316.P6661828198078736164` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265316 has offset 1).

The definition of A265316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1065 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265316.P6661828198078736164

`A261691(2*n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A265316

/-- `A261691(2*n)` -/
def P6661828198078736164.Spec : Prop :=
  ∀ n, P6661828198078736164.a n = A265316 (n + 1)

theorem P6661828198078736164.correct : P6661828198078736164.Spec := by
  intro n
  simp only [A265316, Nat.add_sub_cancel]

end A265316

/-! ## A265316.P1740742034263137719

`A348636(n+1)-1`
-/

namespace A265316.P1740742034263137719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348636 (n + 1) - 1

end

end A265316.P1740742034263137719

namespace A265316

/-- `A348636(n+1)-1` -/
def P1740742034263137719.Spec : Prop :=
  ∀ n, P1740742034263137719.a n = A265316 (n + 1)

end A265316

/-! ## A265316.P3290083278172865843

`record[A261691(and(n, n+1))]`
-/

namespace A265316.P3290083278172865843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261691 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265316.P3290083278172865843

namespace A265316

/-- `record[A261691(and(n, n+1))]` -/
def P3290083278172865843.Spec : Prop :=
  ∀ n, P3290083278172865843.a n = A265316 (n + 1)

end A265316

/-! ## A265316.P9932871288586326014

`record[A261691(n)/(-1)^n]`
-/

namespace A265316.P9932871288586326014
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261691 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265316.P9932871288586326014

namespace A265316

/-- `record[A261691(n)/(-1)^n]` -/
def P9932871288586326014.Spec : Prop :=
  ∀ n, P9932871288586326014.a n = (A265316 (n + 1) : ℚ)

end A265316

/-! ## A265316.P3026471143528244779

`A261691(n+n+n)/3`
-/

namespace A265316.P3026471143528244779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261691 (n + n + n) : ℚ) / 3

end

end A265316.P3026471143528244779

namespace A265316

/-- `A261691(n+n+n)/3` -/
def P3026471143528244779.Spec : Prop :=
  ∀ n, P3026471143528244779.a n = (A265316 (n + 1) : ℚ)

end A265316

/-! ## A265316.P4844291986117620761

`record[A261691(A014681(n))]`
-/

namespace A265316.P4844291986117620761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261691 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265316.P4844291986117620761

namespace A265316

/-- `record[A261691(A014681(n))]` -/
def P4844291986117620761.Spec : Prop :=
  ∀ n, P4844291986117620761.a n = A265316 (n + 1)

end A265316

/-! ## A265316.P13739710865313437412

`record[A261691(A131380(n))]`
-/

namespace A265316.P13739710865313437412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261691 (A131380 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265316.P13739710865313437412

namespace A265316

/-- `record[A261691(A131380(n))]` -/
def P13739710865313437412.Spec : Prop :=
  ∀ n, P13739710865313437412.a n = A265316 (n + 1)

end A265316

/-! ## A265316.P16109103611157015382

`record[A261691(A022998(n)-n)]`
-/

namespace A265316.P16109103611157015382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261691 (A022998 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265316.P16109103611157015382

namespace A265316

/-- `record[A261691(A022998(n)-n)]` -/
def P16109103611157015382.Spec : Prop :=
  ∀ n, P16109103611157015382.a n = A265316 (n + 1)

end A265316

/-! ## A265316.P4270219929564515745

`A262057(∑[n]+1)`
-/

namespace A265316.P4270219929564515745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262057 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265316.P4270219929564515745

namespace A265316

/-- `A262057(∑[n]+1)` -/
def P4270219929564515745.Spec : Prop :=
  ∀ n, P4270219929564515745.a n = A265316 (n + 1)

end A265316

/-! ## A265316.P8282418740531323003

`record[A262057(n+1)]`
-/

namespace A265316.P8282418740531323003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265316.P8282418740531323003

namespace A265316

/-- `record[A262057(n+1)]` -/
def P8282418740531323003.Spec : Prop :=
  ∀ n, P8282418740531323003.a n = A265316 (n + 1)

end A265316

/-!
# A265319: Binary representation of the n-th iteration of the "Rule 102" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265319, there is no canonical definition to state claims against.
-/

/-! ## A265319.P13945896867648412652

`A006943(n)*A011557(n)`
-/

namespace A265319.P13945896867648412652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 n * A011557 n

end

end A265319.P13945896867648412652

/-! ## A265319.P13893911061919658313

`Δ[A002275(n)]*A006943(n)`
-/

namespace A265319.P13893911061919658313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006943 n

end

end A265319.P13893911061919658313

/-! ## A265319.P3553092060122461368

`A006943(n)*A038303(A000217(n))`
-/

namespace A265319.P3553092060122461368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 n * A038303 (A000217 n).toNat

end

end A265319.P3553092060122461368

/-! ## A265319.P3563828089185397059

`A006943(n)*A007088(A000079(n))`
-/

namespace A265319.P3563828089185397059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 n * A007088 (A000079 n).toNat

end

end A265319.P3563828089185397059

/-! ## A265319.P2150999058422887757

`record[A305989(A288807(n))]*A348783(n)`
-/

namespace A265319.P2150999058422887757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A288807 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A348783 n

end

end A265319.P2150999058422887757

/-!
# A265320: Binary representation of the n-th iteration of the "Rule 110" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265320, there is no canonical definition to state claims against.
-/

/-! ## A265320.P14338084750757125119

`A007088(A006978(n+1))*A011557(n)`
-/

namespace A265320.P14338084750757125119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A006978 (n + 1)).toNat * A011557 n

end

end A265320.P14338084750757125119

/-! ## A265320.P5671053374626845016

`A007088(A006978(n+1))*A007088(A000079(n))`
-/

namespace A265320.P5671053374626845016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A006978 (n + 1)).toNat * A007088 (A000079 n).toNat

end

end A265320.P5671053374626845016

/-! ## A265320.P11388876851169935117

`A011557(n)*A305989(A267357(n))`
-/

namespace A265320.P11388876851169935117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A305989 (A267357 n).toNat

end

end A265320.P11388876851169935117

/-! ## A265320.P5394519323975109818

`A007088(A117999(n))`
-/

namespace A265320.P5394519323975109818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A117999 n).toNat

end

end A265320.P5394519323975109818

/-!
# A265321: Total number of ON (black) cells after n iterations of the "Rule 110" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265321, there is no canonical definition to state claims against.
-/

/-! ## A265321.P9687539778208924190

`∑[A071049(n)]`
-/

namespace A265321.P9687539778208924190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265321.P9687539778208924190

/-! ## A265321.P5997201428662478319

`∑[∑[A151931(n)]]`
-/

namespace A265321.P5997201428662478319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151931 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265321.P5997201428662478319

/-! ## A265321.P11712271391709117774

`∑[n-A246027(n)]`
-/

namespace A265321.P11712271391709117774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A246027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265321.P11712271391709117774

/-! ## A265321.P5964803212784552503

`(n+1)²-A265323(n)`
-/

namespace A265321.P5964803212784552503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A265323 n

end

end A265321.P5964803212784552503

/-! ## A265321.P4291642377853928369

`∑[1-A071048(n)+n]`
-/

namespace A265321.P4291642377853928369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A071048 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265321.P4291642377853928369

/-! ## A265321.P17812912291370358126

`(n+1)²-∑[A265322(n)]`
-/

namespace A265321.P17812912291370358126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265321.P17812912291370358126

/-! ## A265321.P11881021543536811000

`A267518(n-1)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A265321.P11881021543536811000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A267518 (n - 1) + a (n - 1)

end

end A265321.P11881021543536811000

/-!
# A265322: Number of OFF (white) cells in the n-th iteration of the "Rule 110" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265322, there is no canonical definition to state claims against.
-/

/-! ## A265322.P12292916441251604778

`A071048(n)+n`
-/

namespace A265322.P12292916441251604778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071048 n + (n : ℤ)

end

end A265322.P12292916441251604778

/-! ## A265322.P12637484384498556658

`A246027(n)+1+n`
-/

namespace A265322.P12637484384498556658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246027 n + 1 + (n : ℤ)

end

end A265322.P12637484384498556658

/-! ## A265322.P4775648509693645060

`Δ[n²]-A071049(n)`
-/

namespace A265322.P4775648509693645060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A071049 n

end

end A265322.P4775648509693645060

/-! ## A265322.P4258875502860190060

`∑[2-A151931(n)]-1`
-/

namespace A265322.P4258875502860190060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A151931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A265322.P4258875502860190060

/-! ## A265322.P7244865367465890604

`A000027(n+1)+n-A071049(n)`
-/

namespace A265322.P7244865367465890604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + ((n : ℤ) - A071049 n)

end

end A265322.P7244865367465890604

/-! ## A265322.P11346947301162057067

`A070951(n)+A070952(n)-A071049(n)`
-/

namespace A265322.P11346947301162057067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070951 n + (A070952 n - A071049 n)

end

end A265322.P11346947301162057067

/-! ## A265322.P4264366521814034446

`A071043(n)+A071044(n)-A071049(n)`
-/

namespace A265322.P4264366521814034446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071043 n + (A071044 n - A071049 n)

end

end A265322.P4264366521814034446

/-! ## A265322.P12862207145296540579

`A265703(n+1)+A070951(n)-A071049(n)`
-/

namespace A265322.P12862207145296540579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265703 (n + 1) + (A070951 n - A071049 n)

end

end A265322.P12862207145296540579

/-! ## A265322.P3220926203285583399

`A004526(2*n)+1-A071049(n)+n`
-/

namespace A265322.P3220926203285583399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * n) + 1 - A071049 n + (n : ℤ)

end

end A265322.P3220926203285583399

/-! ## A265322.P5137252725408817377

`A001489(A071049(n))-A001489(2*n+1)`
-/

namespace A265322.P5137252725408817377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A071049 n).toNat - A001489 (2 * n + 1)

end

end A265322.P5137252725408817377

/-!
# A265323: Total number of OFF (white) cells after n iterations of the "Rule 110" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265323, there is no canonical definition to state claims against.
-/

/-! ## A265323.P11008373702310837819

`∑[A265322(n)]`
-/

namespace A265323.P11008373702310837819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265323.P11008373702310837819

/-! ## A265323.P17317505263139935353

`∑[A071048(n)+n]`
-/

namespace A265323.P17317505263139935353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071048 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265323.P17317505263139935353

/-! ## A265323.P12060924063866808136

`(n+1)²-A265321(n)`
-/

namespace A265323.P12060924063866808136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A265321 n

end

end A265323.P12060924063866808136

/-! ## A265323.P14341485513938781638

`∑[A246027(n)+1+n]`
-/

namespace A265323.P14341485513938781638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246027 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265323.P14341485513938781638

/-! ## A265323.P7304433320061083994

`∑[Δ[n²]-A071049(n)]`
-/

namespace A265323.P7304433320061083994
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A071049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265323.P7304433320061083994

/-! ## A265323.P8343925004241046617

`∑[abs(∑[A151931(n)-1]-n)]`
-/

namespace A265323.P8343925004241046617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151931 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265323.P8343925004241046617

/-! ## A265323.P12135023300454409786

`∑[A070951(n)+A070952(n)-A071049(n)]`
-/

namespace A265323.P12135023300454409786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070951 n + (A070952 n - A071049 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265323.P12135023300454409786

/-!
# A265324: Numbers with nonincreasing digits such that every cyclic shift is a prime.

The programs for A265324, there is no canonical definition to state claims against.
-/

/-! ## A265324.P15708819665120587081

`∩[A068652(n+1), A028912(n)]`
-/

namespace A265324.P15708819665120587081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028912 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265324.P15708819665120587081

/-! ## A265324.P10828355976711018850

`∩[A028867(n+1), A068652(n+1)]`
-/

namespace A265324.P10828355976711018850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265324.P10828355976711018850

/-!
# A265326: n-th prime minus its binary reversal.

The programs for A265326, the canonical program `A265326.P14016085815446765591` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265326 has offset 1).

The definition of A265326 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A055945, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A265326.P15707601103284523230

`A000040(n+1)-A098957(n+1)`
-/

namespace A265326.P15707601103284523230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A098957 (n + 1)

end

end A265326.P15707601103284523230

namespace A265326

/-- `A000040(n+1)-A098957(n+1)` -/
def P15707601103284523230.Spec : Prop :=
  ∀ n, P15707601103284523230.a n = A265326 (n + 1)

end A265326

/-! ## A265326.P14016085815446765591

`A055945(A000040(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A265326

/-- `A055945(A000040(n+1))` -/
def P14016085815446765591.Spec : Prop :=
  ∀ n, P14016085815446765591.a n = A265326 (n + 1)

theorem P14016085815446765591.correct : P14016085815446765591.Spec := by
  intro n
  simp only [A265326, Nat.add_sub_cancel]

end A265326

/-! ## A265326.P7717277400564980336

`A100484(n+1)/2-A098957(n+1)`
-/

namespace A265326.P7717277400564980336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (n + 1) : ℚ) / 2 - (A098957 (n + 1) : ℚ)

end

end A265326.P7717277400564980336

namespace A265326

/-- `A100484(n+1)/2-A098957(n+1)` -/
def P7717277400564980336.Spec : Prop :=
  ∀ n, P7717277400564980336.a n = (A265326 (n + 1) : ℚ)

end A265326

/-! ## A265326.P2700892243272852804

`Δ[A108754(n+1)+A073497(n+1)]-A098957(n+1)`
-/

namespace A265326.P2700892243272852804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108754 (n + 1) + A073497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A098957 (n + 1)

end

end A265326.P2700892243272852804

namespace A265326

/-- `Δ[A108754(n+1)+A073497(n+1)]-A098957(n+1)` -/
def P2700892243272852804.Spec : Prop :=
  ∀ n, P2700892243272852804.a n = A265326 (n + 1)

end A265326

/-! ## A265326.P1075685335733288592

`A006530(A100484(n+1))-A098957(n+1)`
-/

namespace A265326.P1075685335733288592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A100484 (n + 1)).toNat - A098957 (n + 1)

end

end A265326.P1075685335733288592

namespace A265326

/-- `A006530(A100484(n+1))-A098957(n+1)` -/
def P1075685335733288592.Spec : Prop :=
  ∀ n, P1075685335733288592.a n = A265326 (n + 1)

end A265326

/-! ## A265326.P16433437078267755720

`A055945(A161847(n+1))`
-/

namespace A265326.P16433437078267755720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (A161847 (n + 1)).toNat

end

end A265326.P16433437078267755720

namespace A265326

/-- `A055945(A161847(n+1))` -/
def P16433437078267755720.Spec : Prop :=
  ∀ n, P16433437078267755720.a n = A265326 (n + 1)

end A265326

/-! ## A265326.P11669820325830014902

`A055945(A008578(n+2))`
-/

namespace A265326.P11669820325830014902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (A008578 (n + 2)).toNat

end

end A265326.P11669820325830014902

namespace A265326

/-- `A055945(A008578(n+2))` -/
def P11669820325830014902.Spec : Prop :=
  ∀ n, P11669820325830014902.a n = A265326 (n + 1)

end A265326

/-! ## A265326.P3040790628366147322

`A055945(A182986(n+2))`
-/

namespace A265326.P3040790628366147322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (A182986 (n + 2)).toNat

end

end A265326.P3040790628366147322

namespace A265326

/-- `A055945(A182986(n+2))` -/
def P3040790628366147322.Spec : Prop :=
  ∀ n, P3040790628366147322.a n = A265326 (n + 1)

end A265326

/-! ## A265326.P5631583836209865552

`A055945(record[A006530(n+2)])`
-/

namespace A265326.P5631583836209865552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265326.P5631583836209865552

namespace A265326

/-- `A055945(record[A006530(n+2)])` -/
def P5631583836209865552.Spec : Prop :=
  ∀ n, P5631583836209865552.a n = A265326 (n + 1)

end A265326

/-! ## A265326.P5550943933940244650

`A055945(record[A020639(n+2)])`
-/

namespace A265326.P5550943933940244650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265326.P5550943933940244650

namespace A265326

/-- `A055945(record[A020639(n+2)])` -/
def P5550943933940244650.Spec : Prop :=
  ∀ n, P5550943933940244650.a n = A265326 (n + 1)

end A265326

/-! ## A265326.P3375179974494956105

`A055945(eq[0, A051699(n)])`
-/

namespace A265326.P3375179974494956105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265326.P3375179974494956105

namespace A265326

/-- `A055945(eq[0, A051699(n)])` -/
def P3375179974494956105.Spec : Prop :=
  ∀ n, P3375179974494956105.a n = A265326 (n + 1)

end A265326

/-! ## A265326.P16778136791421204456

`A055945(record[A014963(n+2)])`
-/

namespace A265326.P16778136791421204456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265326.P16778136791421204456

namespace A265326

/-- `A055945(record[A014963(n+2)])` -/
def P16778136791421204456.Spec : Prop :=
  ∀ n, P16778136791421204456.a n = A265326 (n + 1)

end A265326

/-! ## A265326.P5963906976469980952

`A004086(A004087(n+1))-A098957(n+1)`
-/

namespace A265326.P5963906976469980952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004087 (n + 1)).toNat - A098957 (n + 1)

end

end A265326.P5963906976469980952

namespace A265326

/-- `A004086(A004087(n+1))-A098957(n+1)` -/
def P5963906976469980952.Spec : Prop :=
  ∀ n, P5963906976469980952.a n = A265326 (n + 1)

end A265326

/-! ## A265326.P9660454131580140905

`A000040(n+1)-A162742(2*A000040(n+1))`
-/

namespace A265326.P9660454131580140905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A162742 (2 * A000040 (n + 1)).toNat

end

end A265326.P9660454131580140905

namespace A265326

/-- `A000040(n+1)-A162742(2*A000040(n+1))` -/
def P9660454131580140905.Spec : Prop :=
  ∀ n, P9660454131580140905.a n = A265326 (n + 1)

end A265326

/-! ## A265326.P8494572633029504547

`A000040(n+1)-A281589(2*A000040(n+1))`
-/

namespace A265326.P8494572633029504547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A281589 (2 * A000040 (n + 1)).toNat

end

end A265326.P8494572633029504547

namespace A265326

/-- `A000040(n+1)-A281589(2*A000040(n+1))` -/
def P8494572633029504547.Spec : Prop :=
  ∀ n, P8494572633029504547.a n = A265326 (n + 1)

end A265326

/-! ## A265326.P9445129722345695965

`A000040(n+1)-A325401(2*A000040(n+1))`
-/

namespace A265326.P9445129722345695965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A325401 (2 * A000040 (n + 1)).toNat

end

end A265326.P9445129722345695965

namespace A265326

/-- `A000040(n+1)-A325401(2*A000040(n+1))` -/
def P9445129722345695965.Spec : Prop :=
  ∀ n, P9445129722345695965.a n = A265326 (n + 1)

end A265326

/-! ## A265326.P4022907412370524884

`A159006(n+1)-A145382(n+1)`
-/

namespace A265326.P4022907412370524884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159006 (n + 1) - A145382 (n + 1)

end

end A265326.P4022907412370524884

namespace A265326

/-- `A159006(n+1)-A145382(n+1)` -/
def P4022907412370524884.Spec : Prop :=
  ∀ n, P4022907412370524884.a n = A265326 (n + 1)

end A265326

/-! ## A265326.P52156927040331639

`A000040(n+1)-A342122(2*A000040(n+1))`
-/

namespace A265326.P52156927040331639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A342122 (2 * A000040 (n + 1)).toNat

end

end A265326.P52156927040331639

namespace A265326

/-- `A000040(n+1)-A342122(2*A000040(n+1))` -/
def P52156927040331639.Spec : Prop :=
  ∀ n, P52156927040331639.a n = A265326 (n + 1)

end A265326

/-!
# A265328: Carmichael numbers (A002997) k such that k-1 is a perfect power (A001597).

The programs for A265328, there is no canonical definition to state claims against.
-/

/-! ## A265328.P16976108090254103437

`∪[A265285(n+1), A265628(n+1)]%A265285(n+1)`
-/

namespace A265328.P16976108090254103437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265628 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A265285 (n + 1))

end

end A265328.P16976108090254103437

/-!
# A265329: Self-inverse permutation of nonnegative integers: a(n) = A263273(A057889(A263273(n))).

The programs for A265329, there is no canonical definition to state claims against.
-/

/-! ## A265329.P11540956807075818148

`A264965(A263273(n))`
-/

namespace A265329.P11540956807075818148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264965 (A263273 n).toNat

end

end A265329.P11540956807075818148

/-! ## A265329.P16532464810245004312

`A263273(A264966(n))`
-/

namespace A265329.P16532464810245004312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A264966 n).toNat

end

end A265329.P16532464810245004312

/-! ## A265329.P4998250598593664917

`A263273(A057889(A263273(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265329.P4998250598593664917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A057889 (A263273 n).toNat).toNat

end

end A265329.P4998250598593664917

/-! ## A265329.P16890484507426282706

`A264965(A266643(A246200(n)))`
-/

namespace A265329.P16890484507426282706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264965 (A266643 (A246200 n).toNat).toNat

end

end A265329.P16890484507426282706

/-! ## A265329.P16611132989164541977

`A264965(A246200(A266644(n)))`
-/

namespace A265329.P16611132989164541977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264965 (A246200 (A266644 n).toNat).toNat

end

end A265329.P16611132989164541977

/-! ## A265329.P3295818868652723306

`A264965(A264965(A266642(A263272(n))))`
-/

namespace A265329.P3295818868652723306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264965 (A264965 (A266642 (A263272 n).toNat).toNat).toNat

end

end A265329.P3295818868652723306

/-! ## A265329.P17201008776334746318

`A264965(A264965(A263272(A266641(n))))`
-/

namespace A265329.P17201008776334746318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264965 (A264965 (A263272 (A266641 n).toNat).toNat).toNat

end

end A265329.P17201008776334746318

/-! ## A265329.P6418374248905086312

`A264965(A264965(A264965(A265369(n))))`
-/

namespace A265329.P6418374248905086312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264965 (A264965 (A264965 (A265369 n).toNat).toNat).toNat

end

end A265329.P6418374248905086312

/-! ## A265329.P16866805851553123976

`A264965(A264965(A264965(A057889(A264965(n)))))`
-/

namespace A265329.P16866805851553123976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264965 (A264965 (A264965 (A057889 (A264965 n).toNat).toNat).toNat).toNat

end

end A265329.P16866805851553123976

/-! ## A265329.P17878717452987208226

`A057889(A264966(A264966(A264967(A264968(n)))))`
-/

namespace A265329.P17878717452987208226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A264966 (A264966 (A264967 (A264968 n).toNat).toNat).toNat).toNat

end

end A265329.P17878717452987208226

/-!
# A265330: Zero-based row index to A265345; 2-adic valuation of bijective base-3 reversal of n: a(n) = A007814(A263273(n)).

The programs for A265330, there is no canonical definition to state claims against.
-/

/-! ## A265330.P11860772638357822086

`A007814(A263273(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265330.P11860772638357822086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A263273 (n + 1)).toNat

end

end A265330.P11860772638357822086

/-! ## A265330.P18070065472857408278

`A265331(n+1)-1`
-/

namespace A265330.P18070065472857408278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265331 (n + 1) - 1

end

end A265330.P18070065472857408278

/-! ## A265330.P12711114175671837878

`val(A030102(n+1), 2)`
-/

namespace A265330.P12711114175671837878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A030102 (n + 1)).toNat 2

end

end A265330.P12711114175671837878

/-! ## A265330.P15290242408245070742

`val(A264966(n+1), 2)`
-/

namespace A265330.P15290242408245070742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A264966 (n + 1)).toNat 2

end

end A265330.P15290242408245070742

/-! ## A265330.P14588056516841495902

`val(A266644(n+1), 2)`
-/

namespace A265330.P14588056516841495902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A266644 (n + 1)).toNat 2

end

end A265330.P14588056516841495902

/-! ## A265330.P12005687872877316649

`A007814(A030102(n+1))`
-/

namespace A265330.P12005687872877316649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A030102 (n + 1)).toNat

end

end A265330.P12005687872877316649

/-! ## A265330.P13500098354376671570

`A007814(A264966(n+1))`
-/

namespace A265330.P13500098354376671570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A264966 (n + 1)).toNat

end

end A265330.P13500098354376671570

/-! ## A265330.P6170362111548646211

`A265346(n+1)+A265910(n+1)-A265348(n+1)`
-/

namespace A265330.P6170362111548646211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265346 (n + 1) + (A265910 (n + 1) - A265348 (n + 1))

end

end A265330.P6170362111548646211

/-! ## A265330.P3734018923783588757

`A200748(n)%A265331(n+1)`
-/

namespace A265330.P3734018923783588757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A265331 (n + 1))

end

end A265330.P3734018923783588757

/-! ## A265330.P7372539055819234891

`A058197(n+1)%A265331(n+1)`
-/

namespace A265330.P7372539055819234891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A265331 (n + 1))

end

end A265330.P7372539055819234891

/-! ## A265330.P416975501859446936

`A117010(n+1)%A265331(n+1)`
-/

namespace A265330.P416975501859446936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117010 (n + 1)) (A265331 (n + 1))

end

end A265330.P416975501859446936

/-! ## A265330.P10307186900967206848

`A244415(A030102(n+1)²)`
-/

namespace A265330.P10307186900967206848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A030102 (n + 1) ^ 2).toNat

end

end A265330.P10307186900967206848

/-! ## A265330.P7793833238395155300

`A244415(A263273(n+1)²)`
-/

namespace A265330.P7793833238395155300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A263273 (n + 1) ^ 2).toNat

end

end A265330.P7793833238395155300

/-! ## A265330.P9508983845314200821

`A244415(A264966(n+1)²)`
-/

namespace A265330.P9508983845314200821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A264966 (n + 1) ^ 2).toNat

end

end A265330.P9508983845314200821

/-! ## A265330.P10793932800682812201

`A070198(n)%A265331(n+1)`
-/

namespace A265330.P10793932800682812201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A265331 (n + 1))

end

end A265330.P10793932800682812201

/-! ## A265330.P6707627647525609237

`A079782(n+1)%A265331(n+1)`
-/

namespace A265330.P6707627647525609237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A265331 (n + 1))

end

end A265330.P6707627647525609237

/-! ## A265330.P11626579066872667064

`A083685(n+1)%A265331(n+1)`
-/

namespace A265330.P11626579066872667064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A265331 (n + 1))

end

end A265330.P11626579066872667064

/-! ## A265330.P1204920166219914083

`A121934(n+1)%A265331(n+1)`
-/

namespace A265330.P1204920166219914083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A265331 (n + 1))

end

end A265330.P1204920166219914083

/-! ## A265330.P5930955189627422442

`A152448(n)%A265331(n+1)`
-/

namespace A265330.P5930955189627422442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152448 n) (A265331 (n + 1))

end

end A265330.P5930955189627422442

/-!
# A265331: One-based row index to A265345.

The programs for A265331, there is no canonical definition to state claims against.
-/

/-! ## A265331.P9639536618323064812

`A001511(A263273(n+1))`
-/

namespace A265331.P9639536618323064812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A263273 (n + 1)).toNat

end

end A265331.P9639536618323064812

/-! ## A265331.P10886745010798528194

`A265330(n+1)+1`
-/

namespace A265331.P10886745010798528194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265330 (n + 1) + 1

end

end A265331.P10886745010798528194

/-! ## A265331.P17237978521304135

`val(A030102(n+1), 2)+1`
-/

namespace A265331.P17237978521304135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A030102 (n + 1)).toNat 2 + 1

end

end A265331.P17237978521304135

/-! ## A265331.P2486883962728869529

`val(A264966(n+1), 2)+1`
-/

namespace A265331.P2486883962728869529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A264966 (n + 1)).toNat 2 + 1

end

end A265331.P2486883962728869529

/-! ## A265331.P10173721165980878330

`val(A266644(n+1), 2)+1`
-/

namespace A265331.P10173721165980878330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A266644 (n + 1)).toNat 2 + 1

end

end A265331.P10173721165980878330

/-! ## A265331.P9595389036134921085

`val(n+1-A055947(n+1), 2)+1`
-/

namespace A265331.P9595389036134921085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1 : ℤ) - A055947 (n + 1)).toNat 2 + 1

end

end A265331.P9595389036134921085

/-! ## A265331.P3542458777883793970

`A001511(A030102(n+1))`
-/

namespace A265331.P3542458777883793970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A030102 (n + 1)).toNat

end

end A265331.P3542458777883793970

/-! ## A265331.P534456272116126915

`A007814(A264966(n+1))+1`
-/

namespace A265331.P534456272116126915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A264966 (n + 1)).toNat + 1

end

end A265331.P534456272116126915

/-! ## A265331.P8513347935639288452

`∏{e}[A006519(A263273(n+1)), A006519(n)+#]`
-/

namespace A265331.P8513347935639288452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A263273 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A006519 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A265331.P8513347935639288452

/-! ## A265331.P18125047935255948489

`A001511(A266644(n+1))`
-/

namespace A265331.P18125047935255948489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A266644 (n + 1)).toNat

end

end A265331.P18125047935255948489

/-! ## A265331.P9137602981140122254

`A007814(2*A030102(n+1))`
-/

namespace A265331.P9137602981140122254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * A030102 (n + 1)).toNat

end

end A265331.P9137602981140122254

/-! ## A265331.P16501290089151207189

`A265330(A265342(n+1))`
-/

namespace A265331.P16501290089151207189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265330 (A265342 (n + 1)).toNat

end

end A265331.P16501290089151207189

/-! ## A265331.P15952258016376131682

`A001511(A004771(A002145(n+1))-n)`
-/

namespace A265331.P15952258016376131682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A004771 (A002145 (n + 1)).toNat - (n : ℤ)).toNat

end

end A265331.P15952258016376131682

/-! ## A265331.P15350387818977392709

`A049773(A366839((n+1)²))`
-/

namespace A265331.P15350387818977392709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (A366839 ((n + 1) ^ 2)).toNat

end

end A265331.P15350387818977392709

/-!
# A265332: a(n) is the index of the column in A265901 where n appears; also the index of the row in A265903 where n appears.

The programs for A265332, the canonical program `A265332.P14034574010007287764` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265332 has offset 1).

The definition of A265332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265332.P14034574010007287764

`A051135(abs(1-n)+2)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A265332

/-- `A051135(abs(1-n)+2)` -/
def P14034574010007287764.Spec : Prop :=
  ∀ n, P14034574010007287764.a n = A265332 (n + 1)

theorem P14034574010007287764.correct : P14034574010007287764.Spec := by
  intro n
  simp only [A265332, Nat.add_sub_cancel]

end A265332

/-! ## A265332.P16685760087217396188

`ceil(A051135(n+1)-acot(n))`
-/

namespace A265332.P16685760087217396188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051135 (n + 1) : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉

end

end A265332.P16685760087217396188

namespace A265332

/-- `ceil(A051135(n+1)-acot(n))` -/
def P16685760087217396188.Spec : Prop :=
  ∀ n, P16685760087217396188.a n = A265332 (n + 1)

end A265332

/-! ## A265332.P16818161185754546733

`Δ[A051135(n)+a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A265332.P16818161185754546733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A051135 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265332.P16818161185754546733

namespace A265332

/-- `Δ[A051135(n)+a(n-1)]` -/
def P16818161185754546733.Spec : Prop :=
  ∀ n, P16818161185754546733.a n = A265332 (n + 1)

end A265332

/-! ## A265332.P5690526704597261464

`A051135(n+1)-A000007(n)`
-/

namespace A265332.P5690526704597261464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051135 (n + 1) - A000007 n

end

end A265332.P5690526704597261464

namespace A265332

/-- `A051135(n+1)-A000007(n)` -/
def P5690526704597261464.Spec : Prop :=
  ∀ n, P5690526704597261464.a n = A265332 (n + 1)

end A265332

/-! ## A265332.P7346006777882552193

`A051135(n+1)/A054977(n)`
-/

namespace A265332.P7346006777882552193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051135 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A265332.P7346006777882552193

namespace A265332

/-- `A051135(n+1)/A054977(n)` -/
def P7346006777882552193.Spec : Prop :=
  ∀ n, P7346006777882552193.a n = (A265332 (n + 1) : ℚ)

end A265332

/-! ## A265332.P17870221474878973440

`A051135(n+1)-A036987(2*n)`
-/

namespace A265332.P17870221474878973440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051135 (n + 1) - A036987 (2 * n)

end

end A265332.P17870221474878973440

namespace A265332

/-- `A051135(n+1)-A036987(2*n)` -/
def P17870221474878973440.Spec : Prop :=
  ∀ n, P17870221474878973440.a n = A265332 (n + 1)

end A265332

/-! ## A265332.P17977384821258099351

`A051135(n+1)-A135523(2*n+1)`
-/

namespace A265332.P17977384821258099351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051135 (n + 1) - A135523 (2 * n + 1)

end

end A265332.P17977384821258099351

namespace A265332

/-- `A051135(n+1)-A135523(2*n+1)` -/
def P17977384821258099351.Spec : Prop :=
  ∀ n, P17977384821258099351.a n = A265332 (n + 1)

end A265332

/-! ## A265332.P15894687452906582853

`A051135(n+1)-A135534(2*n+1)`
-/

namespace A265332.P15894687452906582853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051135 (n + 1) - A135534 (2 * n + 1)

end

end A265332.P15894687452906582853

namespace A265332

/-- `A051135(n+1)-A135534(2*n+1)` -/
def P15894687452906582853.Spec : Prop :=
  ∀ n, P15894687452906582853.a n = A265332 (n + 1)

end A265332

/-! ## A265332.P7240629526886895081

`A051135(n+1)*A325470(2*a(n-1)+1)` with `a(0)=1`
-/

namespace A265332.P7240629526886895081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051135 (n + 1) * A325470 (2 * a (n - 1) + 1).toNat

end

end A265332.P7240629526886895081

namespace A265332

/-- `A051135(n+1)*A325470(2*a(n-1)+1)` -/
def P7240629526886895081.Spec : Prop :=
  ∀ n, P7240629526886895081.a n = A265332 (n + 1)

end A265332

/-! ## A265332.P4109087323353701951

`A051135(n+1)+A135560(n+1)-A241235(n+1)`
-/

namespace A265332.P4109087323353701951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051135 (n + 1) + (A135560 (n + 1) - A241235 (n + 1))

end

end A265332.P4109087323353701951

namespace A265332

/-- `A051135(n+1)+A135560(n+1)-A241235(n+1)` -/
def P4109087323353701951.Spec : Prop :=
  ∀ n, P4109087323353701951.a n = A265332 (n + 1)

end A265332

/-! ## A265332.P18018468519956819619

`A162598(n+1)+A267104(n+1)-A267102(n+1)`
-/

namespace A265332.P18018468519956819619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162598 (n + 1) + (A267104 (n + 1) - A267102 (n + 1))

end

end A265332.P18018468519956819619

namespace A265332

/-- `A162598(n+1)+A267104(n+1)-A267102(n+1)` -/
def P18018468519956819619.Spec : Prop :=
  ∀ n, P18018468519956819619.a n = A265332 (n + 1)

end A265332

/-! ## A265332.P1375021515445417078

`A051135(n+1)/(A241235(n+1)-A135523(n+1))`
-/

namespace A265332.P1375021515445417078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051135 (n + 1) : ℚ) / (A241235 (n + 1) - A135523 (n + 1) : ℚ)

end

end A265332.P1375021515445417078

namespace A265332

/-- `A051135(n+1)/(A241235(n+1)-A135523(n+1))` -/
def P1375021515445417078.Spec : Prop :=
  ∀ n, P1375021515445417078.a n = (A265332 (n + 1) : ℚ)

end A265332

/-! ## A265332.P10651882120806510505

`val(A267111(n+1), 2)+1`
-/

namespace A265332.P10651882120806510505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A267111 (n + 1)).toNat 2 + 1

end

end A265332.P10651882120806510505

namespace A265332

/-- `val(A267111(n+1), 2)+1` -/
def P10651882120806510505.Spec : Prop :=
  ∀ n, (P10651882120806510505.a n : ℤ) = A265332 (n + 1)

end A265332

/-! ## A265332.P7455972412805360322

`A001511(A267111(n+1))`
-/

namespace A265332.P7455972412805360322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A267111 (n + 1)).toNat

end

end A265332.P7455972412805360322

namespace A265332

/-- `A001511(A267111(n+1))` -/
def P7455972412805360322.Spec : Prop :=
  ∀ n, P7455972412805360322.a n = A265332 (n + 1)

end A265332

/-! ## A265332.P12963455405046048323

`Δ[A266412(2*(n+1))]`
-/

namespace A265332.P12963455405046048323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266412 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265332.P12963455405046048323

namespace A265332

/-- `Δ[A266412(2*(n+1))]` -/
def P12963455405046048323.Spec : Prop :=
  ∀ n, P12963455405046048323.a n = A265332 (n + 1)

end A265332

/-! ## A265332.P12883792118758375996

`A091090(A276441(n+1))`
-/

namespace A265332.P12883792118758375996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A276441 (n + 1)).toNat

end

end A265332.P12883792118758375996

namespace A265332

/-- `A091090(A276441(n+1))` -/
def P12883792118758375996.Spec : Prop :=
  ∀ n, P12883792118758375996.a n = A265332 (n + 1)

end A265332

/-! ## A265332.P789831840681668962

`A266640(A122155(n+1))`
-/

namespace A265332.P789831840681668962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266640 (A122155 (n + 1)).toNat

end

end A265332.P789831840681668962

namespace A265332

/-- `A266640(A122155(n+1))` -/
def P789831840681668962.Spec : Prop :=
  ∀ n, P789831840681668962.a n = A265332 (n + 1)

end A265332

/-!
# A265333: Characteristic function for A265334: a(n) = 1 if n >= k! but < 2*k! for some k, 0 otherwise.

The programs for A265333, the canonical program `A265333.P11142459361382241526` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265333 has offset 0).

The definition of A265333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265333.P15839904098825513130

`char[A265334(n+1)]`
-/

namespace A265333.P15839904098825513130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A265333.P15839904098825513130

namespace A265333

/-- `char[A265334(n+1)]` -/
def P15839904098825513130.Spec : Prop :=
  ∀ n, (P15839904098825513130.a n : ℤ) = A265333 n

end A265333

/-! ## A265333.P3282975950465643324

`A257680(n-n%∑[char[n!]]!)`
-/

namespace A265333.P3282975950465643324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 (n - n % Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A265333.P3282975950465643324

namespace A265333

/-- `A257680(n-n%∑[char[n!]]!)` -/
def P3282975950465643324.Spec : Prop :=
  ∀ n, P3282975950465643324.a n = A265333 n

end A265333

/-! ## A265333.P9916606365869469771

`A257511(A257686(n))`
-/

namespace A265333.P9916606365869469771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257511 (A257686 n).toNat

end

end A265333.P9916606365869469771

namespace A265333

/-- `A257511(A257686(n))` -/
def P9916606365869469771.Spec : Prop :=
  ∀ n, P9916606365869469771.a n = A265333 n

end A265333

/-! ## A265333.P859515803222742566

`A257511(n-A257687(n))`
-/

namespace A265333.P859515803222742566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257511 ((n : ℤ) - A257687 n).toNat

end

end A265333.P859515803222742566

namespace A265333

/-- `A257511(n-A257687(n))` -/
def P859515803222742566.Spec : Prop :=
  ∀ n, P859515803222742566.a n = A265333 n

end A265333

/-! ## A265333.P15989219228065232359

`A257680(n-A257687(n))`
-/

namespace A265333.P15989219228065232359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 ((n : ℤ) - A257687 n).toNat

end

end A265333.P15989219228065232359

namespace A265333

/-- `A257680(n-A257687(n))` -/
def P15989219228065232359.Spec : Prop :=
  ∀ n, P15989219228065232359.a n = A265333 n

end A265333

/-! ## A265333.P13415101192372865503

`A257680(A257686(2*n-n))`
-/

namespace A265333.P13415101192372865503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 (A257686 (2 * n - n)).toNat

end

end A265333.P13415101192372865503

namespace A265333

/-- `A257680(A257686(2*n-n))` -/
def P13415101192372865503.Spec : Prop :=
  ∀ n, P13415101192372865503.a n = A265333 n

end A265333

/-! ## A265333.P2150489221245223487

`A257680(∑[char[n!]]!*A099563(n))`
-/

namespace A265333.P2150489221245223487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 ((Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A099563 n).toNat

end

end A265333.P2150489221245223487

namespace A265333

/-- `A257680(∑[char[n!]]!*A099563(n))` -/
def P2150489221245223487.Spec : Prop :=
  ∀ n, P2150489221245223487.a n = A265333 n

end A265333

/-! ## A265333.P11142459361382241526

`A084558(n)-A084558(A004526(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A265333

/-- `A084558(n)-A084558(A004526(n))` -/
def P11142459361382241526.Spec : Prop :=
  ∀ n, P11142459361382241526.a n = A265333 n

theorem P11142459361382241526.correct : P11142459361382241526.Spec := by
  intro n
  simp only [A265333]

end A265333

/-! ## A265333.P8920111573826968280

`A257680(n*A257680(A257686(n)))`
-/

namespace A265333.P8920111573826968280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 ((n : ℤ) * A257680 (A257686 n).toNat).toNat

end

end A265333.P8920111573826968280

namespace A265333

/-- `A257680(n*A257680(A257686(n)))` -/
def P8920111573826968280.Spec : Prop :=
  ∀ n, P8920111573826968280.a n = A265333 n

end A265333

/-! ## A265333.P8949351526734604930

`A084558(n)-A084558(A008619(n)-1)`
-/

namespace A265333.P8949351526734604930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n - A084558 (A008619 n - 1).toNat

end

end A265333.P8949351526734604930

namespace A265333

/-- `A084558(n)-A084558(A008619(n)-1)` -/
def P8949351526734604930.Spec : Prop :=
  ∀ n, P8949351526734604930.a n = A265333 n

end A265333

/-! ## A265333.P10643666614846846626

`A316341(2*A257686(n)-A257686(n))`
-/

namespace A265333.P10643666614846846626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 (2 * A257686 n - A257686 n).toNat

end

end A265333.P10643666614846846626

namespace A265333

/-- `A316341(2*A257686(n)-A257686(n))` -/
def P10643666614846846626.Spec : Prop :=
  ∀ n, P10643666614846846626.a n = A265333 n

end A265333

/-! ## A265333.P1166729791510243920

`A213890(A276149(n))`
-/

namespace A265333.P1166729791510243920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213890 (A276149 n).toNat

end

end A265333.P1166729791510243920

namespace A265333

/-- `A213890(A276149(n))` -/
def P1166729791510243920.Spec : Prop :=
  ∀ n, P1166729791510243920.a n = A265333 n

end A265333

/-! ## A265333.P12775534449525941002

`A257511(A276149(A225901(n)))`
-/

namespace A265333.P12775534449525941002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257511 (A276149 (A225901 n).toNat).toNat

end

end A265333.P12775534449525941002

namespace A265333

/-- `A257511(A276149(A225901(n)))` -/
def P12775534449525941002.Spec : Prop :=
  ∀ n, P12775534449525941002.a n = A265333 n

end A265333

/-! ## A265333.P10987485408501775346

`A257511(A276149(A276149(A302852(A302851(n)))))`
-/

namespace A265333.P10987485408501775346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257511 (A276149 (A276149 (A302852 (A302851 n).toNat).toNat).toNat).toNat

end

end A265333.P10987485408501775346

namespace A265333

/-- `A257511(A276149(A276149(A302852(A302851(n)))))` -/
def P10987485408501775346.Spec : Prop :=
  ∀ n, P10987485408501775346.a n = A265333 n

end A265333

/-! ## A265333.P11694475566662943005

`A257511(A276149(A276149(A153880(n))))`
-/

namespace A265333.P11694475566662943005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257511 (A276149 (A276149 (A153880 n).toNat).toNat).toNat

end

end A265333.P11694475566662943005

namespace A265333

/-- `A257511(A276149(A276149(A153880(n))))` -/
def P11694475566662943005.Spec : Prop :=
  ∀ n, P11694475566662943005.a n = A265333 n

end A265333

/-! ## A265333.P623033743795635212

`A316341(A316341(n²)+A257686(n))`
-/

namespace A265333.P623033743795635212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 (A316341 (n ^ 2) + A257686 n).toNat

end

end A265333.P623033743795635212

namespace A265333

/-- `A316341(A316341(n²)+A257686(n))` -/
def P623033743795635212.Spec : Prop :=
  ∀ n, P623033743795635212.a n = A265333 n

end A265333

/-!
# A265334: Numbers that are >= k! but < 2*k! for some k; numbers whose factorial base representation (A007623) begins with digit "1".

The programs for A265334, the canonical program `A265334.P10828477990969834378` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265334 has offset 1).

The definition of A265334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265334.P6323804520451483810

`A220660(n+1)+A220695(n+1)-n`
-/

namespace A265334.P6323804520451483810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220660 (n + 1) + (A220695 (n + 1) - (n : ℤ))

end

end A265334.P6323804520451483810

namespace A265334

/-- `A220660(n+1)+A220695(n+1)-n` -/
def P6323804520451483810.Spec : Prop :=
  ∀ n, P6323804520451483810.a n = A265334 (n + 1)

end A265334

/-! ## A265334.P10828477990969834378

`eq[A038712(A038712(n+1)), A099563(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A265334

/-- `eq[A038712(A038712(n+1)), A099563(n)]` -/
def P10828477990969834378.Spec : Prop :=
  ∀ n, (P10828477990969834378.a n : ℤ) = A265334 (n + 1)

theorem P10828477990969834378.correct : P10828477990969834378.Spec := by
  intro n
  simp only [A265334, Nat.add_sub_cancel]

end A265334

/-! ## A265334.P2158411623466503229

`eq[A099563(n), A293234(A120944(n+1))]`
-/

namespace A265334.P2158411623466503229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293234 (A120944 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A265334.P2158411623466503229

namespace A265334

/-- `eq[A099563(n), A293234(A120944(n+1))]` -/
def P2158411623466503229.Spec : Prop :=
  ∀ n, (P2158411623466503229.a n : ℤ) = A265334 (n + 1)

end A265334

/-! ## A265334.P3021896244410050272

`eq[A057427(A003159(n+1)), A099563(n)]`
-/

namespace A265334.P3021896244410050272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A003159 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A265334.P3021896244410050272

namespace A265334

/-- `eq[A057427(A003159(n+1)), A099563(n)]` -/
def P3021896244410050272.Spec : Prop :=
  ∀ n, (P3021896244410050272.a n : ℤ) = A265334 (n + 1)

end A265334

/-! ## A265334.P12487570274781512741

`eq[A099563(n), A328248(A156898(n+1))]`
-/

namespace A265334.P12487570274781512741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328248 (A156898 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A265334.P12487570274781512741

namespace A265334

/-- `eq[A099563(n), A328248(A156898(n+1))]` -/
def P12487570274781512741.Spec : Prop :=
  ∀ n, (P12487570274781512741.a n : ℤ) = A265334 (n + 1)

end A265334

/-! ## A265334.P8890300874232524431

`eq[A099563(n), A328248(A000040(n+1))]`
-/

namespace A265334.P8890300874232524431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328248 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A265334.P8890300874232524431

namespace A265334

/-- `eq[A099563(n), A328248(A000040(n+1))]` -/
def P8890300874232524431.Spec : Prop :=
  ∀ n, (P8890300874232524431.a n : ℤ) = A265334 (n + 1)

end A265334

/-! ## A265334.P18270187400313491323

`eq[1, A090996(A277012(n))]`
-/

namespace A265334.P18270187400313491323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A277012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265334.P18270187400313491323

namespace A265334

/-- `eq[1, A090996(A277012(n))]` -/
def P18270187400313491323.Spec : Prop :=
  ∀ n, (P18270187400313491323.a n : ℤ) = A265334 (n + 1)

end A265334

/-! ## A265334.P18281412599596815859

`lt[A349223(n+1), A104745(A276010(n))]`
-/

namespace A265334.P18281412599596815859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104745 (A276010 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A265334.P18281412599596815859

namespace A265334

/-- `lt[A349223(n+1), A104745(A276010(n))]` -/
def P18281412599596815859.Spec : Prop :=
  ∀ n, (P18281412599596815859.a n : ℤ) = A265334 (n + 1)

end A265334

/-!
# A265335: Self-inverse permutation of nonnegative integers: a(n) = A264994(5*n)/5.

The programs for A265335, there is no canonical definition to state claims against.
-/

/-! ## A265335.P213803758722039232

`A264994(5*n)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265335.P213803758722039232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264994 (5 * n) : ℚ) / 5

end

end A265335.P213803758722039232

/-! ## A265335.P3964596925526051367

`A255590(A264994(5*n))`
-/

namespace A265335.P3964596925526051367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255590 (A264994 (5 * n)).toNat

end

end A265335.P3964596925526051367

/-!
# A265336: Number of nonleading 0-bits in bijective base-3 reversal of n: a(n) = A080791(A263273(n)).

The programs for A265336, there is no canonical definition to state claims against.
-/

/-! ## A265336.P6435062770258906722

`A265340(n)-A265337(n)`
-/

namespace A265336.P6435062770258906722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265340 n - A265337 n

end

end A265336.P6435062770258906722

/-! ## A265336.P14269784413818847190

`A080791(A263273(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265336.P14269784413818847190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A263273 n).toNat

end

end A265336.P14269784413818847190

/-! ## A265336.P5426666730000744960

`A080791(A264966(n))`
-/

namespace A265336.P5426666730000744960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A264966 n).toNat

end

end A265336.P5426666730000744960

/-! ## A265336.P2711388430742312177

`A008687(A263273(n)+1)-1`
-/

namespace A265336.P2711388430742312177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (A263273 n + 1).toNat - 1

end

end A265336.P2711388430742312177

/-! ## A265336.P16873582546871063964

`A265340(n)-A000120(A263273(n))`
-/

namespace A265336.P16873582546871063964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265340 n - A000120 (A263273 n).toNat

end

end A265336.P16873582546871063964

/-! ## A265336.P4406662792558837355

`A023416(2*A263273(n)+1)`
-/

namespace A265336.P4406662792558837355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (2 * A263273 n + 1).toNat

end

end A265336.P4406662792558837355

/-! ## A265336.P3723051255119538269

`A023416(2*A263273(n))-1`
-/

namespace A265336.P3723051255119538269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (2 * A263273 n).toNat - 1

end

end A265336.P3723051255119538269

/-! ## A265336.P6772435331727303082

`A023416(A263273(n)+A263273(n)+1)`
-/

namespace A265336.P6772435331727303082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A263273 n + (A263273 n + 1)).toNat

end

end A265336.P6772435331727303082

/-!
# A265337: Number of 1-bits in base-3 reversal of n: a(n) = A000120(A263273(n)).

The programs for A265337, there is no canonical definition to state claims against.
-/

/-! ## A265337.P13952356374729480960

`A265340(n)-A265336(n)`
-/

namespace A265337.P13952356374729480960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265340 n - A265336 n

end

end A265337.P13952356374729480960

/-! ## A265337.P3942342412649206141

`A000120(A263273(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265337.P3942342412649206141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A263273 n).toNat

end

end A265337.P3942342412649206141

/-! ## A265337.P4879419107442135497

`A000120(A264966(n))`
-/

namespace A265337.P4879419107442135497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A264966 n).toNat

end

end A265337.P4879419107442135497

/-! ## A265337.P3782517348503777713

`A265340(n)-A080791(A263273(n))`
-/

namespace A265337.P3782517348503777713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265340 n - A080791 (A263273 n).toNat

end

end A265337.P3782517348503777713

/-! ## A265337.P13086619468642405346

`A000120(A266644(n))`
-/

namespace A265337.P13086619468642405346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A266644 n).toNat

end

end A265337.P13086619468642405346

/-! ## A265337.P10870668546633530859

`A001222(A278222(A264966(n)%A186619(n+1)))`
-/

namespace A265337.P10870668546633530859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 (Int.tmod (A264966 n) (A186619 (n + 1))).toNat).toNat

end

end A265337.P10870668546633530859

/-!
# A265338: Self-inverse permutation of nonnegative integers: a(n) = A264979(8*n) / 8.

The programs for A265338, there is no canonical definition to state claims against.
-/

/-! ## A265338.P14361071386866643682

`A264979(8*n)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265338.P14361071386866643682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264979 (8 * n) : ℚ) / 8

end

end A265338.P14361071386866643682

/-! ## A265338.P12216212719823858779

`A110656(A264979(8*n))`
-/

namespace A265338.P12216212719823858779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A264979 (8 * n)).toNat

end

end A265338.P12216212719823858779

/-!
# A265339: a(n) = A263273(A004526(A263273(n))).

The programs for A265339, there is no canonical definition to state claims against.
-/

/-! ## A265339.P14589993224517354885

`A263273(A004526(A263273(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265339.P14589993224517354885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A004526 (A263273 n).toNat).toNat

end

end A265339.P14589993224517354885

/-! ## A265339.P4523440426057622062

`A263273(floor(A263273(n)/2))`
-/

namespace A265339.P4523440426057622062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 ⌊(A263273 n : ℚ) / 2⌋.toNat

end

end A265339.P4523440426057622062

/-! ## A265339.P2794163514992319151

`A263273((A263273(n)-A000035(n))/2)`
-/

namespace A265339.P2794163514992319151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (SequenceMachineLib.roundAway ((A263273 n - A000035 n : ℚ) / 2)).toNat

end

end A265339.P2794163514992319151

/-! ## A265339.P4718198852195632226

`A263273(A123108(A263273(n)))-A000007(n)`
-/

namespace A265339.P4718198852195632226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A123108 (A263273 n).toNat).toNat - A000007 n

end

end A265339.P4718198852195632226

/-! ## A265339.P3510261532379118596

`A263273(A123108(A263273(n)))%A084634(n)`
-/

namespace A265339.P3510261532379118596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263273 (A123108 (A263273 n).toNat).toNat) (A084634 n)

end

end A265339.P3510261532379118596

/-!
# A265340: Number of iterations of A265339 needed to reach zero; a(0) = 0; for n >= 1, a(n) = 1 + a(A265339(n)).

The programs for A265340, there is no canonical definition to state claims against.
-/

/-! ## A265340.P4364756894312960360

`A265336(n)+A265337(n)`
-/

namespace A265340.P4364756894312960360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265336 n + A265337 n

end

end A265340.P4364756894312960360

/-! ## A265340.P1939762214975535244

`ceil(log2(A263273(n)+1))`
-/

namespace A265340.P1939762214975535244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A263273 n + 1 : ℝ)⌉

end

end A265340.P1939762214975535244

/-! ## A265340.P10160793875290135065

`a(A265339(A265339(n)))+2` with `a(0)=0, a(1)=1`
-/

namespace A265340.P10160793875290135065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A265339 (A265339 n).toNat).toNat + 2

end

end A265340.P10160793875290135065

/-! ## A265340.P10932842470345382571

`A070941(A263273(n))-1`
-/

namespace A265340.P10932842470345382571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 (A263273 n).toNat - 1

end

end A265340.P10932842470345382571

/-! ## A265340.P4144851373269721025

`A001222(A062383(A263273(n)))`
-/

namespace A265340.P4144851373269721025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A062383 (A263273 n).toNat).toNat

end

end A265340.P4144851373269721025

/-! ## A265340.P7448545856731844046

`A265336(n)+A000120(A263273(n))`
-/

namespace A265340.P7448545856731844046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265336 n + A000120 (A263273 n).toNat

end

end A265340.P7448545856731844046

/-! ## A265340.P8607878410535570125

`A265337(n)+A080791(A263273(n))`
-/

namespace A265340.P8607878410535570125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265337 n + A080791 (A263273 n).toNat

end

end A265340.P8607878410535570125

/-! ## A265340.P2912158764348160831

`A070939(2*A263273(n))-1`
-/

namespace A265340.P2912158764348160831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * A263273 n).toNat - 1

end

end A265340.P2912158764348160831

/-!
# A265341: Permutation of odd numbers: a(n) = 1 + (2*A265353(n)).

The programs for A265341, there is no canonical definition to state claims against.
-/

/-! ## A265341.P12359661595509067667

`1+2*A265353(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265341.P12359661595509067667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A265353 n

end

end A265341.P12359661595509067667

/-! ## A265341.P10208917730710751081

`or(1, A004277(A265353(n)))`
-/

namespace A265341.P10208917730710751081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A004277 (A265353 n).toNat)

end

end A265341.P10208917730710751081

/-! ## A265341.P12260393334015410285

`A004277(A265353(n)+1)-1`
-/

namespace A265341.P12260393334015410285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A265353 n + 1).toNat - 1

end

end A265341.P12260393334015410285

/-! ## A265341.P6962908154329941248

`A264983(A263273(n))`
-/

namespace A265341.P6962908154329941248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264983 (A263273 n).toNat

end

end A265341.P6962908154329941248

/-! ## A265341.P14176312925424788404

`2*A265356(A265351(n))+1`
-/

namespace A265341.P14176312925424788404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265356 (A265351 n).toNat + 1

end

end A265341.P14176312925424788404

/-! ## A265341.P6433329437702793261

`A264983(A265352(A263272(n)))`
-/

namespace A265341.P6433329437702793261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264983 (A265352 (A263272 n).toNat).toNat

end

end A265341.P6433329437702793261

/-! ## A265341.P6801860337586403501

`A264983(A263272(A265351(n)))`
-/

namespace A265341.P6801860337586403501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264983 (A263272 (A265351 n).toNat).toNat

end

end A265341.P6801860337586403501

/-! ## A265341.P5337867085515541321

`A264983(A265354(A264985(n)))`
-/

namespace A265341.P5337867085515541321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264983 (A265354 (A264985 n).toNat).toNat

end

end A265341.P5337867085515541321

/-! ## A265341.P17622501849985684011

`A264983(A264985(A265353(n)))`
-/

namespace A265341.P17622501849985684011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264983 (A264985 (A265353 n).toNat).toNat

end

end A265341.P17622501849985684011

/-! ## A265341.P4438444049258615994

`A264983(A265354(A263272(A265355(n))))`
-/

namespace A265341.P4438444049258615994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264983 (A265354 (A263272 (A265355 n).toNat).toNat).toNat

end

end A265341.P4438444049258615994

/-! ## A265341.P13831868107514966002

`A264983(A265354(A264992(A264989(n))))`
-/

namespace A265341.P13831868107514966002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264983 (A265354 (A264992 (A264989 n).toNat).toNat).toNat

end

end A265341.P13831868107514966002

/-! ## A265341.P5334801989993945504

`A264983(A265353(A266189(n)))`
-/

namespace A265341.P5334801989993945504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264983 (A265353 (A266189 n).toNat).toNat

end

end A265341.P5334801989993945504

/-! ## A265341.P10356490610972823104

`A264983(A265354(A264989(A264991(n))))`
-/

namespace A265341.P10356490610972823104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264983 (A265354 (A264989 (A264991 n).toNat).toNat).toNat

end

end A265341.P10356490610972823104

/-! ## A265341.P15161767108460949478

`A264983(A265354(A265354(A266190(n))))`
-/

namespace A265341.P15161767108460949478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264983 (A265354 (A265354 (A266190 n).toNat).toNat).toNat

end

end A265341.P15161767108460949478

/-! ## A265341.P6728429867683292258

`A264983(A266189(A265354(n)))`
-/

namespace A265341.P6728429867683292258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264983 (A266189 (A265354 n).toNat).toNat

end

end A265341.P6728429867683292258

/-! ## A265341.P5955988916204604853

`A264983(A265339(A264983(n)))`
-/

namespace A265341.P5955988916204604853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264983 (A265339 (A264983 n).toNat).toNat

end

end A265341.P5955988916204604853

/-! ## A265341.P12792136652906326922

`A263273(2*A263273(n)+1)`
-/

namespace A265341.P12792136652906326922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (2 * A263273 n + 1).toNat

end

end A265341.P12792136652906326922

/-! ## A265341.P16465527552050879070

`A263273(or(1, 2*A263273(n)))`
-/

namespace A265341.P16465527552050879070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (Int.lor 1 (2 * A263273 n)).toNat

end

end A265341.P16465527552050879070

/-! ## A265341.P1309515392537275741

`A263273(xor(1, 2*A263273(n)))`
-/

namespace A265341.P1309515392537275741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (Int.xor 1 (2 * A263273 n)).toNat

end

end A265341.P1309515392537275741

/-! ## A265341.P7002119627793196366

`A263273(A263273(n)+A263273(n)+1)`
-/

namespace A265341.P7002119627793196366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A263273 n + (A263273 n + 1)).toNat

end

end A265341.P7002119627793196366

/-!
# A265342: Permutation of even numbers: a(n) = 2 * A265351(n).

The programs for A265342, there is no canonical definition to state claims against.
-/

/-! ## A265342.P1693268047737843168

`2*A265351(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265342.P1693268047737843168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265351 n

end

end A265342.P1693268047737843168

/-! ## A265342.P18172875495855564259

`2*A263272(A263273(n))`
-/

namespace A265342.P18172875495855564259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A263272 (A263273 n).toNat

end

end A265342.P18172875495855564259

/-! ## A265342.P6556534823511252770

`A265351(A005843(n)/2)+A265351(n)`
-/

namespace A265342.P6556534823511252770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A265351 n

end

end A265342.P6556534823511252770

/-! ## A265342.P7627344452185859872

`2*A265904(A263272(n))`
-/

namespace A265342.P7627344452185859872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265904 (A263272 n).toNat

end

end A265342.P7627344452185859872

/-! ## A265342.P1565312534487147355

`A265904(A263272(n))+A265351(n)`
-/

namespace A265342.P1565312534487147355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265904 (A263272 n).toNat + A265351 n

end

end A265342.P1565312534487147355

/-! ## A265342.P1883863343484725587

`2*A266641(A264966(n))`
-/

namespace A265342.P1883863343484725587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266641 (A264966 n).toNat

end

end A265342.P1883863343484725587

/-! ## A265342.P10895193834447487575

`2*A265355(A265353(n))`
-/

namespace A265342.P10895193834447487575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265355 (A265353 n).toNat

end

end A265342.P10895193834447487575

/-! ## A265342.P6516637579837418878

`A265355(A265353(n))+A265351(n)`
-/

namespace A265342.P6516637579837418878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265355 (A265353 n).toNat + A265351 n

end

end A265342.P6516637579837418878

/-! ## A265342.P12426311030313219017

`A005843(A265351(n))`
-/

namespace A265342.P12426311030313219017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A265351 n).toNat

end

end A265342.P12426311030313219017

/-! ## A265342.P7699758077335095689

`A264984(A263273(n))`
-/

namespace A265342.P7699758077335095689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264984 (A263273 n).toNat

end

end A265342.P7699758077335095689

/-! ## A265342.P3243464098778314905

`A264984(A265352(A263272(n)))`
-/

namespace A265342.P3243464098778314905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264984 (A265352 (A263272 n).toNat).toNat

end

end A265342.P3243464098778314905

/-! ## A265342.P11004263126481900731

`A264984(A265354(A264985(n)))`
-/

namespace A265342.P11004263126481900731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264984 (A265354 (A264985 n).toNat).toNat

end

end A265342.P11004263126481900731

/-! ## A265342.P2227061362340058990

`A265351(n)+A263272(A263273(n))`
-/

namespace A265342.P2227061362340058990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 n + A263272 (A263273 n).toNat

end

end A265342.P2227061362340058990

/-! ## A265342.P10935616142573832933

`A265904(A263272(n))+A263272(A263273(n))`
-/

namespace A265342.P10935616142573832933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265904 (A263272 n).toNat + A263272 (A263273 n).toNat

end

end A265342.P10935616142573832933

/-! ## A265342.P2170027114026229764

`2*A265344(A265365(n))`
-/

namespace A265342.P2170027114026229764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265344 (A265365 n).toNat

end

end A265342.P2170027114026229764

/-! ## A265342.P2571739349908601536

`2*A264976(A265363(n))`
-/

namespace A265342.P2571739349908601536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A264976 (A265363 n).toNat

end

end A265342.P2571739349908601536

/-! ## A265342.P17463426242044709451

`A264984(A265339(A264984(n)))`
-/

namespace A265342.P17463426242044709451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264984 (A265339 (A264984 n).toNat).toNat

end

end A265342.P17463426242044709451

/-! ## A265342.P791721172472717413

`2*A264967(A266644(n))`
-/

namespace A265342.P791721172472717413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A264967 (A266644 n).toNat

end

end A265342.P791721172472717413

/-! ## A265342.P6098346719667144484

`A266643(2*A266644(n))`
-/

namespace A265342.P6098346719667144484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266643 (2 * A266644 n).toNat

end

end A265342.P6098346719667144484

/-! ## A265342.P310726491415630347

`A266643(A266644(n)+A266644(n))`
-/

namespace A265342.P310726491415630347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266643 (A266644 n + A266644 n).toNat

end

end A265342.P310726491415630347

/-!
# A265343: Permutation of nonnegative integers: a(n) = A264978(A263272(n)).

The programs for A265343, there is no canonical definition to state claims against.
-/

/-! ## A265343.P3694960992693818100

`A264978(A263272(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265343.P3694960992693818100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A263272 n).toNat

end

end A265343.P3694960992693818100

/-! ## A265343.P2644897204630111258

`A264978(A265351(A263273(n)))`
-/

namespace A265343.P2644897204630111258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A265351 (A263273 n).toNat).toNat

end

end A265343.P2644897204630111258

/-! ## A265343.P6564281846060092094

`A264978(A265344(A264978(n)))`
-/

namespace A265343.P6564281846060092094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A265344 (A264978 n).toNat).toNat

end

end A265343.P6564281846060092094

/-! ## A265343.P11793301739711149093

`A264978(A263273(2*n)/2)`
-/

namespace A265343.P11793301739711149093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (SequenceMachineLib.roundAway ((A263273 (2 * n) : ℚ) / 2)).toNat

end

end A265343.P11793301739711149093

/-! ## A265343.P13347710607866311087

`A264978(A264976(A264974(n)))`
-/

namespace A265343.P13347710607866311087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A264976 (A264974 n).toNat).toNat

end

end A265343.P13347710607866311087

/-! ## A265343.P3215626391550342885

`A264978(A265351(A264974(A265363(n))))`
-/

namespace A265343.P3215626391550342885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A265351 (A264974 (A265363 n).toNat).toNat).toNat

end

end A265343.P3215626391550342885

/-! ## A265343.P17319534236225304270

`A264978(A264974(A264975(n)))`
-/

namespace A265343.P17319534236225304270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A264974 (A264975 n).toNat).toNat

end

end A265343.P17319534236225304270

/-! ## A265343.P7988932714738245398

`A265365(A265352(n))`
-/

namespace A265343.P7988932714738245398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265365 (A265352 n).toNat

end

end A265343.P7988932714738245398

/-! ## A265343.P17001966878274798567

`A265365(A265339(2*n))`
-/

namespace A265343.P17001966878274798567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265365 (A265339 (2 * n)).toNat

end

end A265343.P17001966878274798567

/-! ## A265343.P11730603150625847864

`A264974(A264984(n))/2`
-/

namespace A265343.P11730603150625847864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264974 (A264984 n).toNat : ℚ) / 2

end

end A265343.P11730603150625847864

/-! ## A265343.P13192468370293666251

`A264974(2*A263272(n))/2`
-/

namespace A265343.P13192468370293666251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264974 (2 * A263272 n).toNat : ℚ) / 2

end

end A265343.P13192468370293666251

/-! ## A265343.P16151341510099319668

`A264975(2*A264975(n))/2`
-/

namespace A265343.P16151341510099319668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264975 (2 * A264975 n).toNat : ℚ) / 2

end

end A265343.P16151341510099319668

/-! ## A265343.P10566845926039164364

`A263272(A265344(A263272(A265338(A265338(n)))))`
-/

namespace A265343.P10566845926039164364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265344 (A263272 (A265338 (A265338 n).toNat).toNat).toNat).toNat

end

end A265343.P10566845926039164364

/-! ## A265343.P3688600452553846268

`A263272(A265344(A265344(A263272(A265344(n)))))`
-/

namespace A265343.P3688600452553846268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265344 (A265344 (A263272 (A265344 n).toNat).toNat).toNat).toNat

end

end A265343.P3688600452553846268

/-! ## A265343.P4084107303811470842

`A265365(A263273(A263272(A265366(A265365(n)))))`
-/

namespace A265343.P4084107303811470842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265365 (A263273 (A263272 (A265366 (A265365 n).toNat).toNat).toNat).toNat

end

end A265343.P4084107303811470842

/-! ## A265343.P4518857659787125362

`A265363(2*n)/2`
-/

namespace A265343.P4518857659787125362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265363 (2 * n) : ℚ) / 2

end

end A265343.P4518857659787125362

/-! ## A265343.P15466809671587376139

`A265365(A263273(A265344(A263273(A265366(n)))))`
-/

namespace A265343.P15466809671587376139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265365 (A263273 (A265344 (A263273 (A265366 n).toNat).toNat).toNat).toNat

end

end A265343.P15466809671587376139

/-! ## A265343.P12261231257091347471

`A004526(A264974(A264984(n)))`
-/

namespace A265343.P12261231257091347471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A264974 (A264984 n).toNat).toNat

end

end A265343.P12261231257091347471

/-! ## A265343.P2801207707040549177

`A004526(A264974(A263273(2*n)))`
-/

namespace A265343.P2801207707040549177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A264974 (A263273 (2 * n)).toNat).toNat

end

end A265343.P2801207707040549177

/-! ## A265343.P3509806721504486824

`A264978(A264976(A265363(A264976(A265367(n)))))`
-/

namespace A265343.P3509806721504486824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A264976 (A265363 (A264976 (A265367 n).toNat).toNat).toNat).toNat

end

end A265343.P3509806721504486824

/-!
# A265344: Permutation of nonnegative integers: a(n) = A263272(A264978(n)).

The programs for A265344, there is no canonical definition to state claims against.
-/

/-! ## A265344.P14891587795405723597

`A263272(A264978(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265344.P14891587795405723597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264978 n).toNat

end

end A265344.P14891587795405723597

/-! ## A265344.P13229614238398106066

`A263272(A265365(A263273(n)))`
-/

namespace A265344.P13229614238398106066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265365 (A263273 n).toNat).toNat

end

end A265344.P13229614238398106066

/-! ## A265344.P8512893197386085029

`A265364(2*n)/2`
-/

namespace A265344.P8512893197386085029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265364 (2 * n) : ℚ) / 2

end

end A265344.P8512893197386085029

/-! ## A265344.P7861280592421501971

`A263272(A264974(2*n)/2)`
-/

namespace A265344.P7861280592421501971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (SequenceMachineLib.roundAway ((A264974 (2 * n) : ℚ) / 2)).toNat

end

end A265344.P7861280592421501971

/-! ## A265344.P5808164119750724713

`A263272(A265365(A265364(A264974(n))))`
-/

namespace A265344.P5808164119750724713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265365 (A265364 (A264974 n).toNat).toNat).toNat

end

end A265344.P5808164119750724713

/-! ## A265344.P7822008244635713458

`A263272(A265365(A264974(A265363(n))))`
-/

namespace A265344.P7822008244635713458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265365 (A264974 (A265363 n).toNat).toNat).toNat

end

end A265344.P7822008244635713458

/-! ## A265344.P3355181485737750102

`A263272(A265343(A263272(n)))`
-/

namespace A265344.P3355181485737750102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265343 (A263272 n).toNat).toNat

end

end A265344.P3355181485737750102

/-! ## A265344.P11165520131207617305

`A263272(A263272(4*n)/4)`
-/

namespace A265344.P11165520131207617305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (SequenceMachineLib.roundAway ((A263272 (4 * n) : ℚ) / 4)).toNat

end

end A265344.P11165520131207617305

/-! ## A265344.P16368404282639227891

`A265351(A265366(n))`
-/

namespace A265344.P16368404282639227891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A265366 n).toNat

end

end A265344.P16368404282639227891

/-! ## A265344.P2599180002425908851

`A264978(A265343(A264978(A264979(A264979(n)))))`
-/

namespace A265344.P2599180002425908851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A265343 (A264978 (A264979 (A264979 n).toNat).toNat).toNat).toNat

end

end A265344.P2599180002425908851

/-! ## A265344.P4434338714418591039

`A264978(A265343(A264978(A265338(A265338(n)))))`
-/

namespace A265344.P4434338714418591039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A265343 (A264978 (A265338 (A265338 n).toNat).toNat).toNat).toNat

end

end A265344.P4434338714418591039

/-! ## A265344.P3105038278640758844

`A264978(A265343(A265343(A264978(A265343(n)))))`
-/

namespace A265344.P3105038278640758844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A265343 (A265343 (A264978 (A265343 n).toNat).toNat).toNat).toNat

end

end A265344.P3105038278640758844

/-! ## A265344.P15284439374875139494

`A263273(2*A264978(n))/2`
-/

namespace A265344.P15284439374875139494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263273 (2 * A264978 n).toNat : ℚ) / 2

end

end A265344.P15284439374875139494

/-! ## A265344.P10633304293438166677

`A264976(A264976(2*n)/2)`
-/

namespace A265344.P10633304293438166677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264976 (SequenceMachineLib.roundAway ((A264976 (2 * n) : ℚ) / 2)).toNat

end

end A265344.P10633304293438166677

/-! ## A265344.P6077502516187114200

`A004526(A263273(A264974(2*n)))`
-/

namespace A265344.P6077502516187114200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A263273 (A264974 (2 * n)).toNat).toNat

end

end A265344.P6077502516187114200

/-! ## A265344.P11163471631714425462

`A264976(A264974(A264978(A264976(A264975(n)))))`
-/

namespace A265344.P11163471631714425462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264976 (A264974 (A264978 (A264976 (A264975 n).toNat).toNat).toNat).toNat

end

end A265344.P11163471631714425462

/-! ## A265344.P369057336610224076

`A265902(A265368(2*n))/2`
-/

namespace A265344.P369057336610224076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265902 (A265368 (2 * n)).toNat : ℚ) / 2

end

end A265344.P369057336610224076

/-!
# A265345: Square array A(row,col): For row=0, A(0,col) = A265341(col), for row > 0, A(row,col) = A265342(A(row-1,col)).

The programs for A265345, there is no canonical definition to state claims against.
-/

/-! ## A265345.P4123221964092263667

`A265347(A038722(n+1))`
-/

namespace A265345.P4123221964092263667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265347 (A038722 (n + 1)).toNat

end

end A265345.P4123221964092263667

/-! ## A265345.P6471681552642574237

`A265347(A061579(n)+1)`
-/

namespace A265345.P6471681552642574237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265347 (A061579 n + 1).toNat

end

end A265345.P6471681552642574237

/-! ## A265345.P3611050070592471392

`A265347(A093995(n+1)-n)`
-/

namespace A265345.P3611050070592471392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265347 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A265345.P3611050070592471392

/-! ## A265345.P13448073267411866990

`A265347(A002024(n+1)²-n)`
-/

namespace A265345.P13448073267411866990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265347 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A265345.P13448073267411866990

/-! ## A265345.P8070081246768698313

`A265347(A274093(n+1)²-n)`
-/

namespace A265345.P8070081246768698313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265347 (A274093 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A265345.P8070081246768698313

/-! ## A265345.P3635180448428999854

`A265347(A057944(n)+A004736(n+1))`
-/

namespace A265345.P3635180448428999854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265347 (A057944 n + A004736 (n + 1)).toNat

end

end A265345.P3635180448428999854

/-! ## A265345.P16646534006490120329

`A263273(A265895(n+1))`
-/

namespace A265345.P16646534006490120329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A265895 (n + 1)).toNat

end

end A265345.P16646534006490120329

/-! ## A265345.P2336713942328155154

`A263273(A135764(A265896(A135764(n+1))))`
-/

namespace A265345.P2336713942328155154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A135764 (A265896 (A135764 (n + 1)).toNat).toNat).toNat

end

end A265345.P2336713942328155154

/-! ## A265345.P13374419804186797072

`A265347(A265346(A265347(n+1)))`
-/

namespace A265345.P13374419804186797072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265347 (A265346 (A265347 (n + 1)).toNat).toNat

end

end A265345.P13374419804186797072

/-! ## A265345.P18316106471327171211

`A265895(A265346(A265895(A265895(A265896(n+1)))))`
-/

namespace A265345.P18316106471327171211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265895 (A265346 (A265895 (A265895 (A265896 (n + 1)).toNat).toNat).toNat).toNat

end

end A265345.P18316106471327171211

/-!
# A265346: Inverse permutation to A265345.

The programs for A265346, there is no canonical definition to state claims against.
-/

/-! ## A265346.P3436312438429690070

`A265331(n+1)+A265348(n+1)-A265911(n+1)`
-/

namespace A265346.P3436312438429690070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265331 (n + 1) + (A265348 (n + 1) - A265911 (n + 1))

end

end A265346.P3436312438429690070

/-! ## A265346.P5364842747339767055

`A265896(A263273(n+1))`
-/

namespace A265346.P5364842747339767055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265896 (A263273 (n + 1)).toNat

end

end A265346.P5364842747339767055

/-! ## A265346.P8905746074720969981

`A265896(A265354(A264985(n+1)))`
-/

namespace A265346.P8905746074720969981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265896 (A265354 (A264985 (n + 1)).toNat).toNat

end

end A265346.P8905746074720969981

/-! ## A265346.P16973881246286415535

`A265896(A264985(A265353(n+1)))`
-/

namespace A265346.P16973881246286415535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265896 (A264985 (A265353 (n + 1)).toNat).toNat

end

end A265346.P16973881246286415535

/-! ## A265346.P15639049756431065306

`A265896(A030102(n+1)*A038500(n+1))`
-/

namespace A265346.P15639049756431065306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265896 (A030102 (n + 1) * A038500 (n + 1)).toNat

end

end A265346.P15639049756431065306

/-! ## A265346.P14877973017089628549

`A265896(lcm(A030102(n+1), A038500(n+1)))`
-/

namespace A265346.P14877973017089628549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265896 (Int.lcm (A030102 (n + 1)) (A038500 (n + 1)))

end

end A265346.P14877973017089628549

/-! ## A265346.P8891694894553059736

`A265330(n+1)+A265348(n+1)-A265910(n+1)`
-/

namespace A265346.P8891694894553059736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265330 (n + 1) + (A265348 (n + 1) - A265910 (n + 1))

end

end A265346.P8891694894553059736

/-! ## A265346.P7222047005701037525

`A265896(A265345(A265896(n+1)))`
-/

namespace A265346.P7222047005701037525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265896 (A265345 (A265896 (n + 1)).toNat).toNat

end

end A265346.P7222047005701037525

/-! ## A265346.P3538010570323549861

`A038722(A265348(n+1))`
-/

namespace A265346.P3538010570323549861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A265348 (n + 1)).toNat

end

end A265346.P3538010570323549861

/-!
# A265347: Transpose of square array A265345.

The programs for A265347, there is no canonical definition to state claims against.
-/

/-! ## A265347.P10952253232822010168

`A265345(A038722(n+1))`
-/

namespace A265347.P10952253232822010168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265345 (A038722 (n + 1)).toNat

end

end A265347.P10952253232822010168

/-! ## A265347.P8622899175855255145

`A265345(A061579(n)+1)`
-/

namespace A265347.P8622899175855255145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265345 (A061579 n + 1).toNat

end

end A265347.P8622899175855255145

/-! ## A265347.P2749756774583405121

`A265345(A002024(n+1)²-n)`
-/

namespace A265347.P2749756774583405121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265345 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A265347.P2749756774583405121

/-! ## A265347.P15486250564573248805

`A265345(A123578(n+1)²-n)`
-/

namespace A265347.P15486250564573248805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265345 (A123578 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A265347.P15486250564573248805

/-! ## A265347.P8770075936844368381

`A265345(A025581(n)+n-A002262(n)+1)`
-/

namespace A265347.P8770075936844368381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265345 (A025581 n + ((n : ℤ) - A002262 n) + 1).toNat

end

end A265347.P8770075936844368381

/-! ## A265347.P6181736614473390684

`A265345(A123578(n+1)*A123578(n+1)-n)`
-/

namespace A265347.P6181736614473390684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265345 (A123578 (n + 1) * A123578 (n + 1) - (n : ℤ)).toNat

end

end A265347.P6181736614473390684

/-! ## A265347.P5409973873425379320

`A265345(A265348(A265345(n+1)))`
-/

namespace A265347.P5409973873425379320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265345 (A265348 (A265345 (n + 1)).toNat).toNat

end

end A265347.P5409973873425379320

/-!
# A265348: Inverse permutation to A265347.

The programs for A265348, there is no canonical definition to state claims against.
-/

/-! ## A265348.P8237064229897729374

`A265346(n+1)+A265911(n+1)-A265331(n+1)`
-/

namespace A265348.P8237064229897729374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265346 (n + 1) + (A265911 (n + 1) - A265331 (n + 1))

end

end A265348.P8237064229897729374

/-! ## A265348.P3611418219925191938

`A265346(n+1)+A265910(n+1)-A265330(n+1)`
-/

namespace A265348.P3611418219925191938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265346 (n + 1) + (A265910 (n + 1) - A265330 (n + 1))

end

end A265348.P3611418219925191938

/-! ## A265348.P18270684307749879378

`A038722(A265346(n+1))`
-/

namespace A265348.P18270684307749879378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A265346 (n + 1)).toNat

end

end A265348.P18270684307749879378

/-! ## A265348.P2573110616891920428

`A061579(A265346(n+1)-1)+1`
-/

namespace A265348.P2573110616891920428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A265346 (n + 1) - 1).toNat + 1

end

end A265348.P2573110616891920428

/-! ## A265348.P3315954062827408812

`A265346(A265347(A265346(A265331(A264980(n)))))`
-/

namespace A265348.P3315954062827408812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265346 (A265347 (A265346 (A265331 (A264980 n).toNat).toNat).toNat).toNat

end

end A265348.P3315954062827408812

/-!
# A265349: Numbers in whose factorial base representation (A007623) no digit > 0 occurs more than once.

The programs for A265349, there is no canonical definition to state claims against.
-/

/-! ## A265349.P6042439548269761475

`eq[0, A275949(n)]`
-/

namespace A265349.P6042439548269761475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275949 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265349.P6042439548269761475

/-! ## A265349.P4554932759287439550

`eq[0, A275964(n)]`
-/

namespace A265349.P4554932759287439550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265349.P4554932759287439550

/-! ## A265349.P11492918723014287943

`eq[A060130(n), A275806(n)]`
-/

namespace A265349.P11492918723014287943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A265349.P11492918723014287943

/-! ## A265349.P11250295865355995671

`eq[A060130(n), A275948(n)]`
-/

namespace A265349.P11250295865355995671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275948 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A265349.P11250295865355995671

/-! ## A265349.P7669229926353625020

`eq[A275806(n), A275948(n)]`
-/

namespace A265349.P7669229926353625020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275948 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A265349.P7669229926353625020

/-! ## A265349.P16978172973972782492

`lt[A264990(n), 2]`
-/

namespace A265349.P16978172973972782492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264990 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A265349.P16978172973972782492

/-! ## A265349.P11434916193049639950

`eq[A057427(n), A264990(n)]`
-/

namespace A265349.P11434916193049639950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264990 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A265349.P11434916193049639950

/-! ## A265349.P2985960417739815587

`lt[A275962(A225901(n)), 1]`
-/

namespace A265349.P2985960417739815587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275962 (A225901 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A265349.P2985960417739815587

/-!
# A265350: Numbers whose factorial base representation (A007623) contains at least one of the nonzero digits occurs more than once (although not necessarily in adjacent positions).

The programs for A265350, there is no canonical definition to state claims against.
-/

/-! ## A265350.P12320902376718015348

`comp[A265349(n)]`
-/

namespace A265350.P12320902376718015348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265349 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A265350.P12320902376718015348

/-! ## A265350.P14085325148427285299

`lt[0, A275949(n)]`
-/

namespace A265350.P14085325148427285299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275949 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A265350.P14085325148427285299

/-! ## A265350.P727840907457435024

`lt[0, A275964(n)]`
-/

namespace A265350.P727840907457435024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A265350.P727840907457435024

/-! ## A265350.P10735339161960325643

`eq[2, and(2, A278235(n)-1)]`
-/

namespace A265350.P10735339161960325643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A278235 n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265350.P10735339161960325643

/-! ## A265350.P6225053802251830800

`comp[eq[A275949(n), A275964(n)]]`
-/

namespace A265350.P6225053802251830800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275949 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275964 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A265350.P6225053802251830800

/-! ## A265350.P8755854433097554991

`lt[1, A264990(n)]`
-/

namespace A265350.P8755854433097554991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264990 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A265350.P8755854433097554991

/-! ## A265350.P9628599741297516165

`eq[1, A001975(a(n-1))%A264990(n)]` with `a(0)=4`
-/

namespace A265350.P9628599741297516165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  Int.tmod (A001975 (f2 (n - 1)).toNat) (A264990 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265350.P9628599741297516165

/-! ## A265350.P9102709752578289070

`eq[1, A183935(a(n-1)+1)%A264990(n)]` with `a(0)=4`
-/

namespace A265350.P9102709752578289070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  Int.tmod (A183935 (f2 (n - 1) + 1).toNat) (A264990 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265350.P9102709752578289070

/-! ## A265350.P8780117008481623402

`lt[0, A275962(A225901(n))]`
-/

namespace A265350.P8780117008481623402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275962 (A225901 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A265350.P8780117008481623402

/-!
# A265351: Permutation of nonnegative integers: a(n) = A263272(A263273(n)).

The programs for A265351, there is no canonical definition to state claims against.
-/

/-! ## A265351.P7438770106636579612

`A265342(n)/2`
-/

namespace A265351.P7438770106636579612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265342 n : ℚ) / 2

end

end A265351.P7438770106636579612

/-! ## A265351.P11333763473545794600

`A263272(A263273(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265351.P11333763473545794600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A263273 n).toNat

end

end A265351.P11333763473545794600

/-! ## A265351.P388875404224399615

`A264974(A265367(n))`
-/

namespace A265351.P388875404224399615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A265367 n).toNat

end

end A265351.P388875404224399615

/-! ## A265351.P3912886031237533573

`A265904(A263272(n))`
-/

namespace A265351.P3912886031237533573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265904 (A263272 n).toNat

end

end A265351.P3912886031237533573

/-! ## A265351.P9462723676174267849

`A266641(A264966(n))`
-/

namespace A265351.P9462723676174267849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266641 (A264966 n).toNat

end

end A265351.P9462723676174267849

/-! ## A265351.P11712171814285046891

`A266641(A265369(A057889(n)))`
-/

namespace A265351.P11712171814285046891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266641 (A265369 (A057889 n).toNat).toNat

end

end A265351.P11712171814285046891

/-! ## A265351.P10240244767061556395

`A265355(A265353(n))`
-/

namespace A265351.P10240244767061556395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265355 (A265353 n).toNat

end

end A265351.P10240244767061556395

/-! ## A265351.P10685814130758862824

`A265355(A266190(A264985(n)))`
-/

namespace A265351.P10685814130758862824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265355 (A266190 (A264985 n).toNat).toNat

end

end A265351.P10685814130758862824

/-! ## A265351.P15892030095309707062

`A263272(A266643(A246200(n)))`
-/

namespace A265351.P15892030095309707062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A266643 (A246200 n).toNat).toNat

end

end A265351.P15892030095309707062

/-! ## A265351.P10407761950565735158

`A263272(A265366(A264978(n)))`
-/

namespace A265351.P10407761950565735158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265366 (A264978 n).toNat).toNat

end

end A265351.P10407761950565735158

/-! ## A265351.P4493539974836734090

`A263272(A264965(A263272(A266641(n))))`
-/

namespace A265351.P4493539974836734090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264965 (A263272 (A266641 n).toNat).toNat).toNat

end

end A265351.P4493539974836734090

/-! ## A265351.P3740262085753428008

`A265344(A265365(n))`
-/

namespace A265351.P3740262085753428008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265344 (A265365 n).toNat

end

end A265351.P3740262085753428008

/-! ## A265351.P11131050537775949318

`A263272(A266643(A263272(A264967(n))))`
-/

namespace A265351.P11131050537775949318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A266643 (A263272 (A264967 n).toNat).toNat).toNat

end

end A265351.P11131050537775949318

/-! ## A265351.P10301893396749383981

`A265904(A263273(2*n)/2)`
-/

namespace A265351.P10301893396749383981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265904 (SequenceMachineLib.roundAway ((A263273 (2 * n) : ℚ) / 2)).toNat

end

end A265351.P10301893396749383981

/-! ## A265351.P1724884578041206441

`A263272(A265364(A264974(n)))`
-/

namespace A265351.P1724884578041206441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265364 (A264974 n).toNat).toNat

end

end A265351.P1724884578041206441

/-! ## A265351.P16468919331727739652

`A265344(A264978(A265364(A263273(A265364(n)))))`
-/

namespace A265351.P16468919331727739652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265344 (A264978 (A265364 (A263273 (A265364 n).toNat).toNat).toNat).toNat

end

end A265351.P16468919331727739652

/-! ## A265351.P4790732648451544652

`A264976(A265363(n))`
-/

namespace A265351.P4790732648451544652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264976 (A265363 n).toNat

end

end A265351.P4790732648451544652

/-! ## A265351.P14373612658097110356

`A263272(A265353(A266189(n)))`
-/

namespace A265351.P14373612658097110356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265353 (A266189 n).toNat).toNat

end

end A265351.P14373612658097110356

/-! ## A265351.P6366453729609197696

`A263272(A265329(A264965(n)))`
-/

namespace A265351.P6366453729609197696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265329 (A264965 n).toNat).toNat

end

end A265351.P6366453729609197696

/-! ## A265351.P16672384719916381959

`A263272(A265329(A057889(A265369(n))))`
-/

namespace A265351.P16672384719916381959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265329 (A057889 (A265369 n).toNat).toNat).toNat

end

end A265351.P16672384719916381959

/-!
# A265352: Permutation of nonnegative integers: a(n) = A263273(A263272(n)).

The programs for A265352, there is no canonical definition to state claims against.
-/

/-! ## A265352.P11566254354093564182

`A263273(A263272(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265352.P11566254354093564182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A263272 n).toNat

end

end A265352.P11566254354093564182

/-! ## A265352.P12059851012993709332

`A263273(A263273(2*n)/2)`
-/

namespace A265352.P12059851012993709332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (SequenceMachineLib.roundAway ((A263273 (2 * n) : ℚ) / 2)).toNat

end

end A265352.P12059851012993709332

/-! ## A265352.P9419252408335535620

`A265368(A264974(n))`
-/

namespace A265352.P9419252408335535620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265368 (A264974 n).toNat

end

end A265352.P9419252408335535620

/-! ## A265352.P16090230843076197690

`A266643(A264968(n))`
-/

namespace A265352.P16090230843076197690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266643 (A264968 n).toNat

end

end A265352.P16090230843076197690

/-! ## A265352.P5976605713373478556

`A263273(A264984(n)/2)`
-/

namespace A265352.P5976605713373478556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (SequenceMachineLib.roundAway ((A264984 n : ℚ) / 2)).toNat

end

end A265352.P5976605713373478556

/-! ## A265352.P13568072664552892109

`A263273(A266641(A057889(n)))`
-/

namespace A265352.P13568072664552892109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A266641 (A057889 n).toNat).toNat

end

end A265352.P13568072664552892109

/-! ## A265352.P10337578192884689589

`A265354(A265356(n))`
-/

namespace A265352.P10337578192884689589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265354 (A265356 n).toNat

end

end A265352.P10337578192884689589

/-! ## A265352.P3564212481269787656

`A266643(A266644(2*n)/2)`
-/

namespace A265352.P3564212481269787656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266643 (SequenceMachineLib.roundAway ((A266644 (2 * n) : ℚ) / 2)).toNat

end

end A265352.P3564212481269787656

/-! ## A265352.P6266816975788401898

`A265339(2*n)`
-/

namespace A265352.P6266816975788401898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265339 (2 * n)

end

end A265352.P6266816975788401898

/-! ## A265352.P17802054336168343283

`A265339(A004273(n)+1)/gcd(n, n+1)`
-/

namespace A265352.P17802054336168343283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265339 (A004273 n + 1).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A265352.P17802054336168343283

/-! ## A265352.P16266058129768103963

`A263273(A265344(A264978(n)))`
-/

namespace A265352.P16266058129768103963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A265344 (A264978 n).toNat).toNat

end

end A265352.P16266058129768103963

/-! ## A265352.P9646966562125481381

`A265902(A263273(n))`
-/

namespace A265352.P9646966562125481381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265902 (A263273 n).toNat

end

end A265352.P9646966562125481381

/-! ## A265352.P12112762168190133027

`A265902(A263272(A265351(n)))`
-/

namespace A265352.P12112762168190133027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265902 (A263272 (A265351 n).toNat).toNat

end

end A265352.P12112762168190133027

/-! ## A265352.P16640861383703644495

`A265902(A265354(A264985(n)))`
-/

namespace A265352.P16640861383703644495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265902 (A265354 (A264985 n).toNat).toNat

end

end A265352.P16640861383703644495

/-! ## A265352.P8584359524182812198

`A266643(A246200(A264967(A246200(n))))`
-/

namespace A265352.P8584359524182812198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266643 (A246200 (A264967 (A246200 n).toNat).toNat).toNat

end

end A265352.P8584359524182812198

/-! ## A265352.P1084401513660944705

`A265368(A263272(2*n)/2)`
-/

namespace A265352.P1084401513660944705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265368 (SequenceMachineLib.roundAway ((A263272 (2 * n) : ℚ) / 2)).toNat

end

end A265352.P1084401513660944705

/-! ## A265352.P6978251386566721235

`A265368(A263272(A264976(n)))`
-/

namespace A265352.P6978251386566721235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265368 (A263272 (A264976 n).toNat).toNat

end

end A265352.P6978251386566721235

/-! ## A265352.P4343841596159468714

`A265364(A264975(n))`
-/

namespace A265352.P4343841596159468714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265364 (A264975 n).toNat

end

end A265352.P4343841596159468714

/-! ## A265352.P7721278102292204623

`A265366(A265343(n))`
-/

namespace A265352.P7721278102292204623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265366 (A265343 n).toNat

end

end A265352.P7721278102292204623

/-! ## A265352.P6041135990963096775

`A265364(A265351(2*n)/2)`
-/

namespace A265352.P6041135990963096775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265364 (SequenceMachineLib.roundAway ((A265351 (2 * n) : ℚ) / 2)).toNat

end

end A265352.P6041135990963096775

/-!
# A265353: Permutation of nonnegative integers: a(n) = A264985(A263273(n)).

The programs for A265353, there is no canonical definition to state claims against.
-/

/-! ## A265353.P1487695922347516785

`A264985(A263273(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265353.P1487695922347516785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A263273 n).toNat

end

end A265353.P1487695922347516785

/-! ## A265353.P13704911815551340506

`floor(A265341(n)/2)`
-/

namespace A265353.P13704911815551340506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A265341 n : ℚ) / 2⌋

end

end A265353.P13704911815551340506

/-! ## A265353.P18144394861839077431

`A266190(A264985(n))`
-/

namespace A265353.P18144394861839077431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266190 (A264985 n).toNat

end

end A265353.P18144394861839077431

/-! ## A265353.P7422403524466565131

`A266190(A264996(n+1)-1)`
-/

namespace A265353.P7422403524466565131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266190 (A264996 (n + 1) - 1).toNat

end

end A265353.P7422403524466565131

/-! ## A265353.P16229033722283318704

`A266190((A264983(n)-1)/2)`
-/

namespace A265353.P16229033722283318704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266190 (SequenceMachineLib.roundAway ((A264983 n - 1 : ℚ) / 2)).toNat

end

end A265353.P16229033722283318704

/-! ## A265353.P5466255243391966286

`A266190(A263272(A265355(n)))`
-/

namespace A265353.P5466255243391966286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266190 (A263272 (A265355 n).toNat).toNat

end

end A265353.P5466255243391966286

/-! ## A265353.P11747622018403662614

`A265356(A265351(n))`
-/

namespace A265353.P11747622018403662614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265356 (A265351 n).toNat

end

end A265353.P11747622018403662614

/-! ## A265353.P5611903005381954819

`A265356(A265342(n)/2)`
-/

namespace A265353.P5611903005381954819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265356 (SequenceMachineLib.roundAway ((A265342 n : ℚ) / 2)).toNat

end

end A265353.P5611903005381954819

/-! ## A265353.P10840519485748465109

`A264996(A263273(n)+1)-1`
-/

namespace A265353.P10840519485748465109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264996 (A263273 n + 1).toNat - 1

end

end A265353.P10840519485748465109

/-! ## A265353.P7730781679220123769

`A264985(A265352(A263272(n)))`
-/

namespace A265353.P7730781679220123769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265352 (A263272 n).toNat).toNat

end

end A265353.P7730781679220123769

/-! ## A265353.P3702887758891040560

`A264985(A265352(A264985(A265356(n))))`
-/

namespace A265353.P3702887758891040560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265352 (A264985 (A265356 n).toNat).toNat).toNat

end

end A265353.P3702887758891040560

/-! ## A265353.P16016351936339982541

`A266190(A264992(A264989(n)))`
-/

namespace A265353.P16016351936339982541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266190 (A264992 (A264989 n).toNat).toNat

end

end A265353.P16016351936339982541

/-! ## A265353.P3240677741409261792

`A263273(A266189(n))`
-/

namespace A265353.P3240677741409261792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A266189 n).toNat

end

end A265353.P3240677741409261792

/-! ## A265353.P12952451769287134647

`A264985(A265368(A264975(n)))`
-/

namespace A265353.P12952451769287134647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265368 (A264975 n).toNat).toNat

end

end A265353.P12952451769287134647

/-! ## A265353.P13149017804002823584

`A266190(A264989(A264991(n)))`
-/

namespace A265353.P13149017804002823584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266190 (A264989 (A264991 n).toNat).toNat

end

end A265353.P13149017804002823584

/-! ## A265353.P6785822620869852734

`A266190(A265354(A266190(n)))`
-/

namespace A265353.P6785822620869852734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266190 (A265354 (A266190 n).toNat).toNat

end

end A265353.P6785822620869852734

/-! ## A265353.P342867753911557226

`A264985(A265352(A264989(A265357(n))))`
-/

namespace A265353.P342867753911557226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265352 (A264989 (A265357 n).toNat).toNat).toNat

end

end A265353.P342867753911557226

/-! ## A265353.P2862741219888441679

`A264985(A265902(A265352(n)))`
-/

namespace A265353.P2862741219888441679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265902 (A265352 n).toNat).toNat

end

end A265353.P2862741219888441679

/-! ## A265353.P9316925433539282547

`A264985(A265902(A263272(A265904(n))))`
-/

namespace A265353.P9316925433539282547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265902 (A263272 (A265904 n).toNat).toNat).toNat

end

end A265353.P9316925433539282547

/-! ## A265353.P5050936795798453226

`A266190(A263273(A265910(2*n+1)))`
-/

namespace A265353.P5050936795798453226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266190 (A263273 (A265910 (2 * n + 1)).toNat).toNat

end

end A265353.P5050936795798453226

/-!
# A265354: Permutation of nonnegative integers: a(n) = A263273(A264985(n)).

The programs for A265354, there is no canonical definition to state claims against.
-/

/-! ## A265354.P3672925137790642168

`A263273(A264985(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265354.P3672925137790642168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A264985 n).toNat

end

end A265354.P3672925137790642168

/-! ## A265354.P2144378943777677378

`A265352(A265355(n))`
-/

namespace A265354.P2144378943777677378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (A265355 n).toNat

end

end A265354.P2144378943777677378

/-! ## A265354.P2853170360308900129

`A263273(A264996(n+1)-1)`
-/

namespace A265354.P2853170360308900129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A264996 (n + 1) - 1).toNat

end

end A265354.P2853170360308900129

/-! ## A265354.P5755743942596982345

`A263273((A264983(n)-1)/2)`
-/

namespace A265354.P5755743942596982345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (SequenceMachineLib.roundAway ((A264983 n - 1 : ℚ) / 2)).toNat

end

end A265354.P5755743942596982345

/-! ## A265354.P4951934407955363495

`A263273(A265356(A263272(n)))`
-/

namespace A265354.P4951934407955363495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A265356 (A263272 n).toNat).toNat

end

end A265354.P4951934407955363495

/-! ## A265354.P2425640715046497304

`A265339(Δ[n²])`
-/

namespace A265354.P2425640715046497304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265339 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A265354.P2425640715046497304

/-! ## A265354.P18346818743422378701

`A263273(A266190(A265353(n)))`
-/

namespace A265354.P18346818743422378701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A266190 (A265353 n).toNat).toNat

end

end A265354.P18346818743422378701

/-! ## A265354.P13754175630809848796

`A266189(A263273(n))`
-/

namespace A265354.P13754175630809848796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266189 (A263273 n).toNat

end

end A265354.P13754175630809848796

/-! ## A265354.P18406615562079856962

`A266189(A263272(A265351(n)))`
-/

namespace A265354.P18406615562079856962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266189 (A263272 (A265351 n).toNat).toNat

end

end A265354.P18406615562079856962

/-! ## A265354.P18446418270959534255

`A265911(Δ[n²])-1`
-/

namespace A265354.P18446418270959534255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265911 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A265354.P18446418270959534255

/-! ## A265354.P851843594666702232

`1-4/2+A265911(2*n+1)`
-/

namespace A265354.P851843594666702232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (4 : ℚ) / 2 + (A265911 (2 * n + 1) : ℚ)

end

end A265354.P851843594666702232

/-! ## A265354.P14941617752296606567

`A265348(2*n+1)-A265346(2*n+1)`
-/

namespace A265354.P14941617752296606567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265348 (2 * n + 1) - A265346 (2 * n + 1)

end

end A265354.P14941617752296606567

/-! ## A265354.P10190240438227079584

`A090740(2*n+1)*A265339(2*n+1)`
-/

namespace A265354.P10190240438227079584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090740 (2 * n + 1) * A265339 (2 * n + 1)

end

end A265354.P10190240438227079584

/-! ## A265354.P4854188412917042466

`A263273(A264992(A264989(n)))`
-/

namespace A265354.P4854188412917042466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A264992 (A264989 n).toNat).toNat

end

end A265354.P4854188412917042466

/-! ## A265354.P5914541296830303057

`A266189(A265353(A266189(n)))`
-/

namespace A265354.P5914541296830303057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266189 (A265353 (A266189 n).toNat).toNat

end

end A265354.P5914541296830303057

/-! ## A265354.P7168175522701937045

`A264985(A266190(n))`
-/

namespace A265354.P7168175522701937045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A266190 n).toNat

end

end A265354.P7168175522701937045

/-! ## A265354.P8642123075190632893

`A264996(A266190(n)+1)-1`
-/

namespace A265354.P8642123075190632893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264996 (A266190 n + 1).toNat - 1

end

end A265354.P8642123075190632893

/-! ## A265354.P17992863080871078087

`A023443(A265911(2*n+1))`
-/

namespace A265354.P17992863080871078087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A265911 (2 * n + 1)).toNat

end

end A265354.P17992863080871078087

/-! ## A265354.P13535132916332284498

`A263273(A263273(A265339(2*n+1)))`
-/

namespace A265354.P13535132916332284498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A263273 (A265339 (2 * n + 1)).toNat).toNat

end

end A265354.P13535132916332284498

/-! ## A265354.P2167628029539169048

`A265910(Δ[n²])`
-/

namespace A265354.P2167628029539169048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265910 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A265354.P2167628029539169048

/-!
# A265355: Permutation of nonnegative integers: a(n) = A263272(A264985(n)).

The programs for A265355, there is no canonical definition to state claims against.
-/

/-! ## A265355.P10736177099651645454

`A263272(A264985(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265355.P10736177099651645454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264985 n).toNat

end

end A265355.P10736177099651645454

/-! ## A265355.P10435220367054542634

`A263272(A264996(n+1)-1)`
-/

namespace A265355.P10435220367054542634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264996 (n + 1) - 1).toNat

end

end A265355.P10435220367054542634

/-! ## A265355.P18327858821909548805

`A263272((A264983(n)-1)/2)`
-/

namespace A265355.P18327858821909548805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (SequenceMachineLib.roundAway ((A264983 n - 1 : ℚ) / 2)).toNat

end

end A265355.P18327858821909548805

/-! ## A265355.P12989260680705697360

`A263272(A265356(A263272(n)))`
-/

namespace A265355.P12989260680705697360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265356 (A263272 n).toNat).toNat

end

end A265355.P12989260680705697360

/-! ## A265355.P16484675416436813940

`A264985(A265356(A266190(A265353(n))))`
-/

namespace A265355.P16484675416436813940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265356 (A266190 (A265353 n).toNat).toNat).toNat

end

end A265355.P16484675416436813940

/-! ## A265355.P12857821403641056045

`A263272(A265353(A263273(n)))`
-/

namespace A265355.P12857821403641056045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265353 (A263273 n).toNat).toNat

end

end A265355.P12857821403641056045

/-! ## A265355.P6666851507093334502

`A263272(A265353(A263272(A265351(n))))`
-/

namespace A265355.P6666851507093334502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265353 (A263272 (A265351 n).toNat).toNat).toNat

end

end A265355.P6666851507093334502

/-! ## A265355.P15804546373793869018

`A263272(A264992(A264989(n)))`
-/

namespace A265355.P15804546373793869018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264992 (A264989 n).toNat).toNat

end

end A265355.P15804546373793869018

/-! ## A265355.P2845711227346647876

`A263272(A264992(A263272(A265358(n))))`
-/

namespace A265355.P2845711227346647876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264992 (A263272 (A265358 n).toNat).toNat).toNat

end

end A265355.P2845711227346647876

/-! ## A265355.P2749015020974008629

`A263272(A264992(A265362(A264974(n))))`
-/

namespace A265355.P2749015020974008629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264992 (A265362 (A264974 n).toNat).toNat).toNat

end

end A265355.P2749015020974008629

/-! ## A265355.P3016257527762403575

`A263272(A264992(A264974(A265361(n))))`
-/

namespace A265355.P3016257527762403575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264992 (A264974 (A265361 n).toNat).toNat).toNat

end

end A265355.P3016257527762403575

/-! ## A265355.P5434518607464278484

`A263272(A265353(A265353(A266189(n))))`
-/

namespace A265355.P5434518607464278484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265353 (A265353 (A266189 n).toNat).toNat).toNat

end

end A265355.P5434518607464278484

/-! ## A265355.P18004432242450148514

`A265358(A264991(n))`
-/

namespace A265355.P18004432242450148514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265358 (A264991 n).toNat

end

end A265355.P18004432242450148514

/-! ## A265355.P5107903593657345758

`A263272(A264989(A264991(A264976(A264975(n)))))`
-/

namespace A265355.P5107903593657345758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264989 (A264991 (A264976 (A264975 n).toNat).toNat).toNat).toNat

end

end A265355.P5107903593657345758

/-! ## A265355.P6460545597557453987

`A263272(A264989(A264991(A265361(A265362(n)))))`
-/

namespace A265355.P6460545597557453987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264989 (A264991 (A265361 (A265362 n).toNat).toNat).toNat).toNat

end

end A265355.P6460545597557453987

/-! ## A265355.P7370580653683616969

`A263272(A265354(A266190(n)))`
-/

namespace A265355.P7370580653683616969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265354 (A266190 n).toNat).toNat

end

end A265355.P7370580653683616969

/-! ## A265355.P204353624651616159

`A264989(A265357(A264992(A264985(A264992(n)))))`
-/

namespace A265355.P204353624651616159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A265357 (A264992 (A264985 (A264992 n).toNat).toNat).toNat).toNat

end

end A265355.P204353624651616159

/-! ## A265355.P6913148629775464643

`A265351(A265354(n))`
-/

namespace A265355.P6913148629775464643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A265354 n).toNat

end

end A265355.P6913148629775464643

/-! ## A265355.P3172947504356824191

`A265351(A265339(Δ[n²]))`
-/

namespace A265355.P3172947504356824191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A265339 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A265355.P3172947504356824191

/-! ## A265355.P1991598744880332860

`A265351(A263273(A265356(A264985(A265356(n)))))`
-/

namespace A265355.P1991598744880332860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A263273 (A265356 (A264985 (A265356 n).toNat).toNat).toNat).toNat

end

end A265355.P1991598744880332860

/-!
# A265356: Permutation of nonnegative integers: a(n) = A264985(A263272(n)).

The programs for A265356, there is no canonical definition to state claims against.
-/

/-! ## A265356.P3141746767794083187

`A264985(A263272(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265356.P3141746767794083187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A263272 n).toNat

end

end A265356.P3141746767794083187

/-! ## A265356.P13594267459986238294

`A264985(A264984(n)/2)`
-/

namespace A265356.P13594267459986238294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (SequenceMachineLib.roundAway ((A264984 n : ℚ) / 2)).toNat

end

end A265356.P13594267459986238294

/-! ## A265356.P12220931349347613374

`A264996(A263272(n)+1)-1`
-/

namespace A265356.P12220931349347613374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264996 (A263272 n + 1).toNat - 1

end

end A265356.P12220931349347613374

/-! ## A265356.P10538817847963289858

`A264985(A265355(A264985(n)))`
-/

namespace A265356.P10538817847963289858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265355 (A264985 n).toNat).toNat

end

end A265356.P10538817847963289858

/-! ## A265356.P13116410064636204231

`A263272(A265355(A265355(A263272(A265355(n)))))`
-/

namespace A265356.P13116410064636204231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265355 (A265355 (A263272 (A265355 n).toNat).toNat).toNat).toNat

end

end A265356.P13116410064636204231

/-! ## A265356.P7892025759040407350

`A264985(A265351(A263273(n)))`
-/

namespace A265356.P7892025759040407350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265351 (A263273 n).toNat).toNat

end

end A265356.P7892025759040407350

/-! ## A265356.P16444779421515960978

`A264985(A265904(A265351(n)))`
-/

namespace A265356.P16444779421515960978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265904 (A265351 n).toNat).toNat

end

end A265356.P16444779421515960978

/-! ## A265356.P6203143353163517772

`A264985(A265351(A264985(A265353(n))))`
-/

namespace A265356.P6203143353163517772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265351 (A264985 (A265353 n).toNat).toNat).toNat

end

end A265356.P6203143353163517772

/-! ## A265356.P16572679693244392651

`A264985(A263273(2*n)/2)`
-/

namespace A265356.P16572679693244392651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (SequenceMachineLib.roundAway ((A263273 (2 * n) : ℚ) / 2)).toNat

end

end A265356.P16572679693244392651

/-! ## A265356.P11750609871937530165

`A264985(A265358(A264989(n)))`
-/

namespace A265356.P11750609871937530165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265358 (A264989 n).toNat).toNat

end

end A265356.P11750609871937530165

/-! ## A265356.P5830135095093491834

`A264985(A265358(A264985(A264992(n))))`
-/

namespace A265356.P5830135095093491834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265358 (A264985 (A264992 n).toNat).toNat).toNat

end

end A265356.P5830135095093491834

/-! ## A265356.P14260539326670831734

`A264985(A264976(A264974(n)))`
-/

namespace A265356.P14260539326670831734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A264976 (A264974 n).toNat).toNat

end

end A265356.P14260539326670831734

/-! ## A265356.P1844989858060717058

`A264985(A264974(A264975(n)))`
-/

namespace A265356.P1844989858060717058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A264974 (A264975 n).toNat).toNat

end

end A265356.P1844989858060717058

/-! ## A265356.P16311472403253547173

`A264992(A265357(n))`
-/

namespace A265356.P16311472403253547173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264992 (A265357 n).toNat

end

end A265356.P16311472403253547173

/-! ## A265356.P9702146857403282425

`A264992(A264989(A264976(A263272(A264976(n)))))`
-/

namespace A265356.P9702146857403282425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264992 (A264989 (A264976 (A263272 (A264976 n).toNat).toNat).toNat).toNat

end

end A265356.P9702146857403282425

/-! ## A265356.P17234893683731216055

`A264992(A264989(A263272(A264992(A264991(n)))))`
-/

namespace A265356.P17234893683731216055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264992 (A264989 (A263272 (A264992 (A264991 n).toNat).toNat).toNat).toNat

end

end A265356.P17234893683731216055

/-! ## A265356.P6230028942527118342

`A264992(A264989(A265358(A263272(A265358(n)))))`
-/

namespace A265356.P6230028942527118342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264992 (A264989 (A265358 (A263272 (A265358 n).toNat).toNat).toNat).toNat

end

end A265356.P6230028942527118342

/-! ## A265356.P6780376843792923354

`A264989(A264991(A263272(A265362(A265361(n)))))`
-/

namespace A265356.P6780376843792923354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A264991 (A263272 (A265362 (A265361 n).toNat).toNat).toNat).toNat

end

end A265356.P6780376843792923354

/-! ## A265356.P9839003727405232588

`A265353(A265352(n))`
-/

namespace A265356.P9839003727405232588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265353 (A265352 n).toNat

end

end A265356.P9839003727405232588

/-! ## A265356.P10240066827280030386

`A264985(A265352(A265904(n)))`
-/

namespace A265356.P10240066827280030386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A265352 (A265904 n).toNat).toNat

end

end A265356.P10240066827280030386

/-!
# A265357: Permutation of nonnegative integers: a(n) = A264989(A263272(n)).

The programs for A265357, there is no canonical definition to state claims against.
-/

/-! ## A265357.P17160155684390042901

`A264989(A263272(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265357.P17160155684390042901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A263272 n).toNat

end

end A265357.P17160155684390042901

/-! ## A265357.P1665430937379356913

`A264991(A265356(n))`
-/

namespace A265357.P1665430937379356913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264991 (A265356 n).toNat

end

end A265357.P1665430937379356913

/-! ## A265357.P3775025944655739931

`A264989(A265355(A264985(n)))`
-/

namespace A265357.P3775025944655739931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A265355 (A264985 n).toNat).toNat

end

end A265357.P3775025944655739931

/-! ## A265357.P9082203151022172015

`A264989(A265351(A263273(n)))`
-/

namespace A265357.P9082203151022172015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A265351 (A263273 n).toNat).toNat

end

end A265357.P9082203151022172015

/-! ## A265357.P17917837766403856261

`A264989(A265351(A264985(A265353(n))))`
-/

namespace A265357.P17917837766403856261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A265351 (A264985 (A265353 n).toNat).toNat).toNat

end

end A265357.P17917837766403856261

/-! ## A265357.P17264994331807988490

`A264989(A263273(2*n)/2)`
-/

namespace A265357.P17264994331807988490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (SequenceMachineLib.roundAway ((A263273 (2 * n) : ℚ) / 2)).toNat

end

end A265357.P17264994331807988490

/-! ## A265357.P6788014165935582712

`A264989(A265358(A264989(n)))`
-/

namespace A265357.P6788014165935582712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A265358 (A264989 n).toNat).toNat

end

end A265357.P6788014165935582712

/-! ## A265357.P12766323854025990099

`A264991(A264985(A263272(A264991(A264992(n)))))`
-/

namespace A265357.P12766323854025990099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264991 (A264985 (A263272 (A264991 (A264992 n).toNat).toNat).toNat).toNat

end

end A265357.P12766323854025990099

/-! ## A265357.P3137732646697305577

`A264989(A264976(A264974(n)))`
-/

namespace A265357.P3137732646697305577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A264976 (A264974 n).toNat).toNat

end

end A265357.P3137732646697305577

/-! ## A265357.P13327834643691618294

`A264991(A264985(A264976(A263272(A264976(n)))))`
-/

namespace A265357.P13327834643691618294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264991 (A264985 (A264976 (A263272 (A264976 n).toNat).toNat).toNat).toNat

end

end A265357.P13327834643691618294

/-! ## A265357.P5473363834652338691

`A264985(A264992(A263272(2*n-n)))`
-/

namespace A265357.P5473363834652338691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A264992 (A263272 (2 * n - n)).toNat).toNat

end

end A265357.P5473363834652338691

/-! ## A265357.P8394375484171796713

`A264985(A264992(A265904(A265351(n))))`
-/

namespace A265357.P8394375484171796713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A264992 (A265904 (A265351 n).toNat).toNat).toNat

end

end A265357.P8394375484171796713

/-! ## A265357.P12790606828095793772

`A263272(A265358(A263272(A264992(A264991(n)))))`
-/

namespace A265357.P12790606828095793772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265358 (A263272 (A264992 (A264991 n).toNat).toNat).toNat).toNat

end

end A265357.P12790606828095793772

/-! ## A265357.P16290645702729822386

`A263272(A265358(A265358(A263272(A265358(n)))))`
-/

namespace A265357.P16290645702729822386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265358 (A265358 (A263272 (A265358 n).toNat).toNat).toNat).toNat

end

end A265357.P16290645702729822386

/-! ## A265357.P11605251793322557258

`A265362(A264975(n))`
-/

namespace A265357.P11605251793322557258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265362 (A264975 n).toNat

end

end A265357.P11605251793322557258

/-! ## A265357.P10511708248359986218

`A265362(A265351(2*n)/2)`
-/

namespace A265357.P10511708248359986218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265362 (SequenceMachineLib.roundAway ((A265351 (2 * n) : ℚ) / 2)).toNat

end

end A265357.P10511708248359986218

/-! ## A265357.P10060775193964965402

`A264989(A263273(A265352(n)))`
-/

namespace A265357.P10060775193964965402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A263273 (A265352 n).toNat).toNat

end

end A265357.P10060775193964965402

/-! ## A265357.P14998100542352850038

`A265362(A264974(A265344(A264978(n))))`
-/

namespace A265357.P14998100542352850038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265362 (A264974 (A265344 (A264978 n).toNat).toNat).toNat

end

end A265357.P14998100542352850038

/-! ## A265357.P3259298466854061435

`A265362(A264974(A264978(A265343(n))))`
-/

namespace A265357.P3259298466854061435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265362 (A264974 (A264978 (A265343 n).toNat).toNat).toNat

end

end A265357.P3259298466854061435

/-! ## A265357.P14908823110129126863

`A265362(A265367(A264974(A265363(n))))`
-/

namespace A265357.P14908823110129126863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265362 (A265367 (A264974 (A265363 n).toNat).toNat).toNat

end

end A265357.P14908823110129126863

/-!
# A265358: Permutation of nonnegative integers: a(n) = A263272(A264989(n)).

The programs for A265358, there is no canonical definition to state claims against.
-/

/-! ## A265358.P11648647189864972622

`A263272(A264989(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265358.P11648647189864972622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264989 n).toNat

end

end A265358.P11648647189864972622

/-! ## A265358.P5881521786963660690

`A265355(A264992(n))`
-/

namespace A265358.P5881521786963660690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265355 (A264992 n).toNat

end

end A265358.P5881521786963660690

/-! ## A265358.P8872819582994502293

`A263272(floor(A263272(2*n+1)/2))`
-/

namespace A265358.P8872819582994502293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 ⌊(A263272 (2 * n + 1) : ℚ) / 2⌋.toNat

end

end A265358.P8872819582994502293

/-! ## A265358.P2643442036581614571

`A263272(A265357(A263272(n)))`
-/

namespace A265358.P2643442036581614571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265357 (A263272 n).toNat).toNat

end

end A265358.P2643442036581614571

/-! ## A265358.P539166847304991179

`A263272(A264991(A264985(n)))`
-/

namespace A265358.P539166847304991179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264991 (A264985 n).toNat).toNat

end

end A265358.P539166847304991179

/-! ## A265358.P13695597477079608402

`A265355(A264985(A265357(A264985(A265356(n)))))`
-/

namespace A265358.P13695597477079608402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265355 (A264985 (A265357 (A264985 (A265356 n).toNat).toNat).toNat).toNat

end

end A265358.P13695597477079608402

/-! ## A265358.P2280874387906398072

`A264976(A265361(n))`
-/

namespace A265358.P2280874387906398072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264976 (A265361 n).toNat

end

end A265358.P2280874387906398072

/-! ## A265358.P11605208603538995035

`A263273(2*A264989(n))/2`
-/

namespace A265358.P11605208603538995035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263273 (2 * A264989 n).toNat : ℚ) / 2

end

end A265358.P11605208603538995035

/-! ## A265358.P15163013285044797924

`A263272(A265362(A264974(n)))`
-/

namespace A265358.P15163013285044797924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265362 (A264974 n).toNat).toNat

end

end A265358.P15163013285044797924

/-! ## A265358.P7834849356229152574

`A263272(A265362(A263272(A264976(n))))`
-/

namespace A265358.P7834849356229152574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265362 (A263272 (A264976 n).toNat).toNat).toNat

end

end A265358.P7834849356229152574

/-! ## A265358.P11924526978108985082

`A263272(A265362(A265363(A263273(n))))`
-/

namespace A265358.P11924526978108985082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265362 (A265363 (A263273 n).toNat).toNat).toNat

end

end A265358.P11924526978108985082

/-! ## A265358.P1042782171016606840

`A263272(A265362(A263273(A265364(n))))`
-/

namespace A265358.P1042782171016606840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265362 (A263273 (A265364 n).toNat).toNat).toNat

end

end A265358.P1042782171016606840

/-! ## A265358.P4709371185570565394

`A265355(A264985(A264989(A266189(A266189(n)))))`
-/

namespace A265358.P4709371185570565394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265355 (A264985 (A264989 (A266189 (A266189 n).toNat).toNat).toNat).toNat

end

end A265358.P4709371185570565394

/-! ## A265358.P14199202622502866948

`A264976(A264974(A264991(A264989(A264991(n)))))`
-/

namespace A265358.P14199202622502866948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264976 (A264974 (A264991 (A264989 (A264991 n).toNat).toNat).toNat).toNat

end

end A265358.P14199202622502866948

/-! ## A265358.P16482762375426781234

`A264989(A265357(A265357(A264989(A265357(n)))))`
-/

namespace A265358.P16482762375426781234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A265357 (A265357 (A264989 (A265357 n).toNat).toNat).toNat).toNat

end

end A265358.P16482762375426781234

/-! ## A265358.P972569203786808772

`A265351(A263273(A265357(A263273(A265352(n)))))`
-/

namespace A265358.P972569203786808772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A263273 (A265357 (A263273 (A265352 n).toNat).toNat).toNat).toNat

end

end A265358.P972569203786808772

/-! ## A265358.P5989626993712233820

`A263272(A263273(A265910(A265352(2*n+1))))`
-/

namespace A265358.P5989626993712233820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A263273 (A265910 (A265352 (2 * n + 1)).toNat).toNat).toNat

end

end A265358.P5989626993712233820

/-! ## A265358.P7852007694331106379

`A265351(A265910(2*(2*n+1)))`
-/

namespace A265358.P7852007694331106379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265351 (A265910 (2 * (2 * n + 1))).toNat

end

end A265358.P7852007694331106379

/-! ## A265358.P12862645809477770357

`A263272(A263273(A265910(4*n+2)))`
-/

namespace A265358.P12862645809477770357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A263273 (A265910 (4 * n + 2)).toNat).toNat

end

end A265358.P12862645809477770357

/-!
# A265359: Spiralwise distance to the nearest inner neighbor in Ulam-style square-spirals using zero-based indexing: a(0) = 0, for n >= 1, a(n) = n - A265409(n).

The programs for A265359, the canonical program `A265359.P15668175611696395647` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265359 has offset 0).

The definition of A265359 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A240025, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A265359.P15668175611696395647

`a(n-1)+A240025(n)+A240025(n-1)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A265359

/-- `a(n-1)+A240025(n)+A240025(n-1)` -/
def P15668175611696395647.Spec : Prop :=
  ∀ n, P15668175611696395647.a n = A265359 n

theorem P15668175611696395647.correct : P15668175611696395647.Spec := by
  intro n
  simp only [A265359]

end A265359

/-! ## A265359.P3365154631400582784

`∑[char[ceil(a(n-2)+n/4)]]` with `a(0)=1, a(1)=1`
-/

namespace A265359.P3365154631400582784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  ⌈(f2 (n - 2) : ℚ) + (n : ℚ) / 4⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265359.P3365154631400582784

namespace A265359

/-- `∑[char[ceil(a(n-2)+n/4)]]` -/
def P3365154631400582784.Spec : Prop :=
  ∀ n, (P3365154631400582784.a n : ℤ) = A265359 n

end A265359

/-! ## A265359.P11621852853385259433

`∑[char[round(a(n-2)+sqrt(a(n-1)))]]` with `a(0)=1, a(1)=1`
-/

namespace A265359.P11621852853385259433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  SequenceMachineLib.roundAway ((f2 (n - 2) : ℝ) + Real.sqrt (f2 (n - 1) : ℝ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265359.P11621852853385259433

namespace A265359

/-- `∑[char[round(a(n-2)+sqrt(a(n-1)))]]` -/
def P11621852853385259433.Spec : Prop :=
  ∀ n, (P11621852853385259433.a n : ℤ) = A265359 n

end A265359

/-! ## A265359.P5778399156305922216

`∑[char[A173151(n)]]`
-/

namespace A265359.P5778399156305922216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173151 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265359.P5778399156305922216

namespace A265359

/-- `∑[char[A173151(n)]]` -/
def P5778399156305922216.Spec : Prop :=
  ∀ n, (P5778399156305922216.a n : ℤ) = A265359 n

end A265359

/-! ## A265359.P10139675491960330361

`n-∑[char[A265412(n+1)]]`
-/

namespace A265359.P10139675491960330361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265412 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A265359.P10139675491960330361

namespace A265359

/-- `n-∑[char[A265412(n+1)]]` -/
def P10139675491960330361.Spec : Prop :=
  ∀ n, P10139675491960330361.a n = A265359 n

end A265359

/-! ## A265359.P2242265089697481044

`∑[char[A008621(n)+a(n-2)]]` with `a(0)=1, a(1)=2`
-/

namespace A265359.P2242265089697481044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  A008621 n + f2 (n - 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265359.P2242265089697481044

namespace A265359

/-- `∑[char[A008621(n)+a(n-2)]]` -/
def P2242265089697481044.Spec : Prop :=
  ∀ n, (P2242265089697481044.a n : ℤ) = A265359 n

end A265359

/-! ## A265359.P1925579244776790477

`n-A265409((n-1)%(n+1)+1)`
-/

namespace A265359.P1925579244776790477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A265409 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) + 1).toNat

end

end A265359.P1925579244776790477

namespace A265359

/-- `n-A265409((n-1)%(n+1)+1)` -/
def P1925579244776790477.Spec : Prop :=
  ∀ n, P1925579244776790477.a n = A265359 n

end A265359

/-! ## A265359.P5078317442008230984

`n-A265409(A240025(n)+n)`
-/

namespace A265359.P5078317442008230984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A265409 (A240025 n + (n : ℤ)).toNat

end

end A265359.P5078317442008230984

namespace A265359

/-- `n-A265409(A240025(n)+n)` -/
def P5078317442008230984.Spec : Prop :=
  ∀ n, P5078317442008230984.a n = A265359 n

end A265359

/-! ## A265359.P6639124584046851219

`A087156(n+1)-A265410(n+1)`
-/

namespace A265359.P6639124584046851219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) - A265410 (n + 1)

end

end A265359.P6639124584046851219

namespace A265359

/-- `A087156(n+1)-A265410(n+1)` -/
def P6639124584046851219.Spec : Prop :=
  ∀ n, P6639124584046851219.a n = A265359 n

end A265359

/-! ## A265359.P15124270851897394400

`n-(A083479(A083479(n))+A057428(n))`
-/

namespace A265359.P15124270851897394400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A083479 (A083479 n).toNat + A057428 n)

end

end A265359.P15124270851897394400

namespace A265359

/-- `n-(A083479(A083479(n))+A057428(n))` -/
def P15124270851897394400.Spec : Prop :=
  ∀ n, P15124270851897394400.a n = A265359 n

end A265359

/-! ## A265359.P2492112801494978138

`A057427(n)+n-A083479(A083479(n))`
-/

namespace A265359.P2492112801494978138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ((n : ℤ) - A083479 (A083479 n).toNat)

end

end A265359.P2492112801494978138

namespace A265359

/-- `A057427(n)+n-A083479(A083479(n))` -/
def P2492112801494978138.Spec : Prop :=
  ∀ n, P2492112801494978138.a n = A265359 n

end A265359

/-! ## A265359.P1475989735000805016

`A293137(n-A000196(n))+A293137(n)`
-/

namespace A265359.P1475989735000805016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 ((n : ℤ) - A000196 n).toNat + A293137 n

end

end A265359.P1475989735000805016

namespace A265359

/-- `A293137(n-A000196(n))+A293137(n)` -/
def P1475989735000805016.Spec : Prop :=
  ∀ n, P1475989735000805016.a n = A265359 n

end A265359

/-! ## A265359.P5440585211818457554

`A265400(A265413(n+1))-A265410(n+1)`
-/

namespace A265359.P5440585211818457554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265400 (A265413 (n + 1)).toNat - A265410 (n + 1)

end

end A265359.P5440585211818457554

namespace A265359

/-- `A265400(A265413(n+1))-A265410(n+1)` -/
def P5440585211818457554.Spec : Prop :=
  ∀ n, P5440585211818457554.a n = A265359 n

end A265359

/-! ## A265359.P9073825311518257767

`n-A265409(A000267(A002620(n)))`
-/

namespace A265359.P9073825311518257767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A265409 (A000267 (A002620 n).toNat).toNat

end

end A265359.P9073825311518257767

namespace A265359

/-- `n-A265409(A000267(A002620(n)))` -/
def P9073825311518257767.Spec : Prop :=
  ∀ n, P9073825311518257767.a n = A265359 n

end A265359

/-! ## A265359.P16543298906551407632

`n-A265409(A000267(A033638(n)))`
-/

namespace A265359.P16543298906551407632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A265409 (A000267 (A033638 n).toNat).toNat

end

end A265359.P16543298906551407632

namespace A265359

/-- `n-A265409(A000267(A033638(n)))` -/
def P16543298906551407632.Spec : Prop :=
  ∀ n, P16543298906551407632.a n = A265359 n

end A265359

/-! ## A265359.P13731744600167658265

`n+1-A265410(A000267(A033638(n+1)))`
-/

namespace A265359.P13731744600167658265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A265410 (A000267 (A033638 (n + 1)).toNat).toNat

end

end A265359.P13731744600167658265

namespace A265359

/-- `n+1-A265410(A000267(A033638(n+1)))` -/
def P13731744600167658265.Spec : Prop :=
  ∀ n, P13731744600167658265.a n = A265359 n

end A265359

/-!
# A265360: Second smallest number of complexity n: second smallest number requiring n 1's to build using + and *.

The programs for A265360, there is no canonical definition to state claims against.
-/

/-! ## A265360.P1015890832508008036

`eq[A181157(n+1), A394500(n+1)]`
-/

namespace A265360.P1015890832508008036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A265360.P1015890832508008036

/-!
# A265361: Permutation of nonnegative integers: a(n) = A264974(A264989(n)).

The programs for A265361, there is no canonical definition to state claims against.
-/

/-! ## A265361.P17964525524119374600

`A264974(A264989(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265361.P17964525524119374600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A264989 n).toNat

end

end A265361.P17964525524119374600

/-! ## A265361.P9654317320950789294

`A264975(A265358(n))`
-/

namespace A265361.P9654317320950789294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264975 (A265358 n).toNat

end

end A265361.P9654317320950789294

/-! ## A265361.P14186681309848331427

`A264974(A265357(A263272(n)))`
-/

namespace A265361.P14186681309848331427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A265357 (A263272 n).toNat).toNat

end

end A265361.P14186681309848331427

/-! ## A265361.P8838123650157746327

`A264974(A264991(A264985(n)))`
-/

namespace A265361.P8838123650157746327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A264991 (A264985 n).toNat).toNat

end

end A265361.P8838123650157746327

/-! ## A265361.P7952259178311787499

`A264974(A264985(A264992(n)))`
-/

namespace A265361.P7952259178311787499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A264985 (A264992 n).toNat).toNat

end

end A265361.P7952259178311787499

/-! ## A265361.P16117487032572478783

`A264974(A265357(A265351(A263273(n))))`
-/

namespace A265361.P16117487032572478783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A265357 (A265351 (A263273 n).toNat).toNat).toNat

end

end A265361.P16117487032572478783

/-! ## A265361.P17889962628932250948

`A263272(2*A264989(n))/2`
-/

namespace A265361.P17889962628932250948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263272 (2 * A264989 n).toNat : ℚ) / 2

end

end A265361.P17889962628932250948

/-! ## A265361.P12712294037914350133

`A264974(A265362(A264974(n)))`
-/

namespace A265361.P12712294037914350133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A265362 (A264974 n).toNat).toNat

end

end A265361.P12712294037914350133

/-! ## A265361.P16374089015439001859

`A263272(A264989(n)+A264989(n))/2`
-/

namespace A265361.P16374089015439001859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263272 (A264989 n + A264989 n).toNat : ℚ) / 2

end

end A265361.P16374089015439001859

/-! ## A265361.P11465744630732665372

`A264975(A263272(A265362(A263272(A264976(n)))))`
-/

namespace A265361.P11465744630732665372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264975 (A263272 (A265362 (A263272 (A264976 n).toNat).toNat).toNat).toNat

end

end A265361.P11465744630732665372

/-! ## A265361.P9939441488119597372

`A264989(A265362(A265362(A264989(A265362(n)))))`
-/

namespace A265361.P9939441488119597372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A265362 (A265362 (A264989 (A265362 n).toNat).toNat).toNat).toNat

end

end A265361.P9939441488119597372

/-! ## A265361.P7879311982898154200

`A264975(A263272(A264989(A264976(A264975(n)))))`
-/

namespace A265361.P7879311982898154200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264975 (A263272 (A264989 (A264976 (A264975 n).toNat).toNat).toNat).toNat

end

end A265361.P7879311982898154200

/-! ## A265361.P13580360189148056551

`A264975(A263272(A264991(A264989(A264991(n)))))`
-/

namespace A265361.P13580360189148056551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264975 (A263272 (A264991 (A264989 (A264991 n).toNat).toNat).toNat).toNat

end

end A265361.P13580360189148056551

/-! ## A265361.P16096291603055348421

`A264974(A265357(A265351(A265351(A265902(n)))))`
-/

namespace A265361.P16096291603055348421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A265357 (A265351 (A265351 (A265902 n).toNat).toNat).toNat).toNat

end

end A265361.P16096291603055348421

/-! ## A265361.P2194078553456821936

`A265351(2*A265358(n))/2`
-/

namespace A265361.P2194078553456821936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265351 (2 * A265358 n).toNat : ℚ) / 2

end

end A265361.P2194078553456821936

/-! ## A265361.P17283377038199493974

`A265367(A265352(A265357(A263273(A265352(n)))))`
-/

namespace A265361.P17283377038199493974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265367 (A265352 (A265357 (A263273 (A265352 n).toNat).toNat).toNat).toNat

end

end A265361.P17283377038199493974

/-! ## A265361.P10329963842417016899

`A264974(A004526(A004526(A264984(2*n+1))))`
-/

namespace A265361.P10329963842417016899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A004526 (A004526 (A264984 (2 * n + 1)).toNat).toNat).toNat

end

end A265361.P10329963842417016899

/-!
# A265362: Permutation of nonnegative integers: a(n) = A264989(A264974(n)).

The programs for A265362, there is no canonical definition to state claims against.
-/

/-! ## A265362.P13715218555008136514

`A264989(A264974(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265362.P13715218555008136514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A264974 n).toNat

end

end A265362.P13715218555008136514

/-! ## A265362.P3984419206509936322

`A265357(A264976(n))`
-/

namespace A265362.P3984419206509936322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265357 (A264976 n).toNat

end

end A265362.P3984419206509936322

/-! ## A265362.P2941380486435042989

`A264989(A264986(n)/2)`
-/

namespace A265362.P2941380486435042989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (SequenceMachineLib.roundAway ((A264986 n : ℚ) / 2)).toNat

end

end A265362.P2941380486435042989

/-! ## A265362.P9435513415769617

`A264989(A263272(2*n)/2)`
-/

namespace A265362.P9435513415769617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (SequenceMachineLib.roundAway ((A263272 (2 * n) : ℚ) / 2)).toNat

end

end A265362.P9435513415769617

/-! ## A265362.P14320062762620088086

`A265357(A265352(2*n)/2)`
-/

namespace A265362.P14320062762620088086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265357 (SequenceMachineLib.roundAway ((A265352 (2 * n) : ℚ) / 2)).toNat

end

end A265362.P14320062762620088086

/-! ## A265362.P7011806585190655233

`A264989(A264975(A263272(n)))`
-/

namespace A265362.P7011806585190655233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A264975 (A263272 n).toNat).toNat

end

end A265362.P7011806585190655233

/-! ## A265362.P5710371658448134430

`A264989(A265361(A264989(n)))`
-/

namespace A265362.P5710371658448134430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A265361 (A264989 n).toNat).toNat

end

end A265362.P5710371658448134430

/-! ## A265362.P9232535623232050998

`A264985(A264992(A264974(2*n-n)))`
-/

namespace A265362.P9232535623232050998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264985 (A264992 (A264974 (2 * n - n)).toNat).toNat

end

end A265362.P9232535623232050998

/-! ## A265362.P6546982692278333850

`A264989(A264975(A265355(A264985(n))))`
-/

namespace A265362.P6546982692278333850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A264975 (A265355 (A264985 n).toNat).toNat).toNat

end

end A265362.P6546982692278333850

/-! ## A265362.P6229378972361866485

`A264989(A264975(A264985(A265356(n))))`
-/

namespace A265362.P6229378972361866485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A264975 (A264985 (A265356 n).toNat).toNat).toNat

end

end A265362.P6229378972361866485

/-! ## A265362.P3328630804475074882

`A263272(A265358(A264974(A263273(A263273(n)))))`
-/

namespace A265362.P3328630804475074882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265358 (A264974 (A263273 (A263273 n).toNat).toNat).toNat).toNat

end

end A265362.P3328630804475074882

/-! ## A265362.P8228102368865413312

`A263272(A265358(A265361(A263272(A265358(n)))))`
-/

namespace A265362.P8228102368865413312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265358 (A265361 (A263272 (A265358 n).toNat).toNat).toNat).toNat

end

end A265362.P8228102368865413312

/-! ## A265362.P2398159188816415338

`A264974(A265361(A265361(A264974(A265361(n)))))`
-/

namespace A265362.P2398159188816415338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A265361 (A265361 (A264974 (A265361 n).toNat).toNat).toNat).toNat

end

end A265362.P2398159188816415338

/-! ## A265362.P2445572077524128260

`A264991(A264985(A264975(A264974(A264975(n)))))`
-/

namespace A265362.P2445572077524128260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264991 (A264985 (A264975 (A264974 (A264975 n).toNat).toNat).toNat).toNat

end

end A265362.P2445572077524128260

/-! ## A265362.P3428573224011955739

`A265357(A263272(A265367(A265352(n))))`
-/

namespace A265362.P3428573224011955739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265357 (A263272 (A265367 (A265352 n).toNat).toNat).toNat

end

end A265362.P3428573224011955739

/-! ## A265362.P6605910626996358001

`A264989(A263272(A263273(A265368(n))))`
-/

namespace A265362.P6605910626996358001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A263272 (A263273 (A265368 n).toNat).toNat).toNat

end

end A265362.P6605910626996358001

/-!
# A265363: Permutation of nonnegative integers: a(n) = A264974(A263273(n)).

The programs for A265363, there is no canonical definition to state claims against.
-/

/-! ## A265363.P17937018317256677800

`A264974(A263273(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265363.P17937018317256677800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A263273 n).toNat

end

end A265363.P17937018317256677800

/-! ## A265363.P13937978718775705755

`A264975(A265351(n))`
-/

namespace A265363.P13937978718775705755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264975 (A265351 n).toNat

end

end A265363.P13937978718775705755

/-! ## A265363.P8459445394887422198

`A266641(2*A264966(n))/2`
-/

namespace A265363.P8459445394887422198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266641 (2 * A264966 n).toNat : ℚ) / 2

end

end A265363.P8459445394887422198

/-! ## A265363.P15912825614086822874

`A264974(A265352(A263272(n)))`
-/

namespace A265363.P15912825614086822874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A265352 (A263272 n).toNat).toNat

end

end A265363.P15912825614086822874

/-! ## A265363.P14638813223933010657

`A264974(A265366(A264978(n)))`
-/

namespace A265363.P14638813223933010657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A265366 (A264978 n).toNat).toNat

end

end A265363.P14638813223933010657

/-! ## A265363.P3997680339048484022

`A264974(A265354(A264985(n)))`
-/

namespace A265363.P3997680339048484022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A265354 (A264985 n).toNat).toNat

end

end A265363.P3997680339048484022

/-! ## A265363.P15827898873183970987

`A264974(A264985(A265353(n)))`
-/

namespace A265363.P15827898873183970987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A264985 (A265353 n).toNat).toNat

end

end A265363.P15827898873183970987

/-! ## A265363.P1763740606436601806

`A264974(A264978(A265365(n)))`
-/

namespace A265363.P1763740606436601806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A264978 (A265365 n).toNat).toNat

end

end A265363.P1763740606436601806

/-! ## A265363.P15587815466425471033

`A264974(A265366(A263272(A265344(n))))`
-/

namespace A265363.P15587815466425471033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A265366 (A263272 (A265344 n).toNat).toNat).toNat

end

end A265363.P15587815466425471033

/-! ## A265363.P6660793029784504607

`A264975(A263272(A263273(A264989(A264989(n)))))`
-/

namespace A265363.P6660793029784504607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264975 (A263272 (A263273 (A264989 (A264989 n).toNat).toNat).toNat).toNat

end

end A265363.P6660793029784504607

/-! ## A265363.P3592025327253624758

`A264974(A265364(A264974(n)))`
-/

namespace A265363.P3592025327253624758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A265364 (A264974 n).toNat).toNat

end

end A265363.P3592025327253624758

/-! ## A265363.P14587508526920234582

`A264975(A263272(A263273(A264975(A264976(n)))))`
-/

namespace A265363.P14587508526920234582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264975 (A263272 (A263273 (A264975 (A264976 n).toNat).toNat).toNat).toNat

end

end A265363.P14587508526920234582

/-! ## A265363.P17217459956489512808

`A263272(A264976(A263273(A264991(A264992(n)))))`
-/

namespace A265363.P17217459956489512808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A264976 (A263273 (A264991 (A264992 n).toNat).toNat).toNat).toNat

end

end A265363.P17217459956489512808

/-! ## A265363.P11822874205302789515

`A264974(A265368(A264975(n)))`
-/

namespace A265363.P11822874205302789515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A265368 (A264975 n).toNat).toNat

end

end A265363.P11822874205302789515

/-! ## A265363.P13349955209935677947

`A264974(A265352(A264978(A265343(n))))`
-/

namespace A265363.P13349955209935677947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A265352 (A264978 (A265343 n).toNat).toNat).toNat

end

end A265363.P13349955209935677947

/-! ## A265363.P260433353727095222

`A264974(A265339(A264984(n)))`
-/

namespace A265363.P260433353727095222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A265339 (A264984 n).toNat).toNat

end

end A265363.P260433353727095222

/-! ## A265363.P17869555966108508864

`A264974(A265902(A265352(n)))`
-/

namespace A265363.P17869555966108508864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A265902 (A265352 n).toNat).toNat

end

end A265363.P17869555966108508864

/-! ## A265363.P5677108066086605643

`A264974(A265902(A265354(A265356(n))))`
-/

namespace A265363.P5677108066086605643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A265902 (A265354 (A265356 n).toNat).toNat).toNat

end

end A265363.P5677108066086605643

/-! ## A265363.P15018162569237086771

`A264974(A265352(A265352(A265904(n))))`
-/

namespace A265363.P15018162569237086771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A265352 (A265352 (A265904 n).toNat).toNat).toNat

end

end A265363.P15018162569237086771

/-! ## A265363.P1400044456687054261

`A264989(A265362(A263273(A264992(A264991(n)))))`
-/

namespace A265363.P1400044456687054261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264989 (A265362 (A263273 (A264992 (A264991 n).toNat).toNat).toNat).toNat

end

end A265363.P1400044456687054261

/-!
# A265364: Permutation of nonnegative integers: a(n) = A263273(A264974(n)).

The programs for A265364, there is no canonical definition to state claims against.
-/

/-! ## A265364.P9806053247416411347

`A263273(A264974(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265364.P9806053247416411347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A264974 n).toNat

end

end A265364.P9806053247416411347

/-! ## A265364.P6278512175846415031

`A265352(A264976(n))`
-/

namespace A265364.P6278512175846415031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (A264976 n).toNat

end

end A265364.P6278512175846415031

/-! ## A265364.P5860085299375120275

`A263273(A264986(n)/2)`
-/

namespace A265364.P5860085299375120275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (SequenceMachineLib.roundAway ((A264986 n : ℚ) / 2)).toNat

end

end A265364.P5860085299375120275

/-! ## A265364.P9923733520681751001

`A263273(A263272(2*n)/2)`
-/

namespace A265364.P9923733520681751001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (SequenceMachineLib.roundAway ((A263272 (2 * n) : ℚ) / 2)).toNat

end

end A265364.P9923733520681751001

/-! ## A265364.P13428625844771593138

`A265352(A265352(2*n)/2)`
-/

namespace A265364.P13428625844771593138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (SequenceMachineLib.roundAway ((A265352 (2 * n) : ℚ) / 2)).toNat

end

end A265364.P13428625844771593138

/-! ## A265364.P11538604608355861801

`A266643(A264968(2*n)/2)`
-/

namespace A265364.P11538604608355861801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266643 (SequenceMachineLib.roundAway ((A264968 (2 * n) : ℚ) / 2)).toNat

end

end A265364.P11538604608355861801

/-! ## A265364.P11139600171658472980

`A264965(A266642(2*n)/2)`
-/

namespace A265364.P11139600171658472980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264965 (SequenceMachineLib.roundAway ((A266642 (2 * n) : ℚ) / 2)).toNat

end

end A265364.P11139600171658472980

/-! ## A265364.P12550671576086003383

`A263273(A264975(A263272(n)))`
-/

namespace A265364.P12550671576086003383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A264975 (A263272 n).toNat).toNat

end

end A265364.P12550671576086003383

/-! ## A265364.P1356674987495046155

`A263273(A265363(A263273(n)))`
-/

namespace A265364.P1356674987495046155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A265363 (A263273 n).toNat).toNat

end

end A265364.P1356674987495046155

/-! ## A265364.P3760523063455404208

`A263273(A265361(A264989(n)))`
-/

namespace A265364.P3760523063455404208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A265361 (A264989 n).toNat).toNat

end

end A265364.P3760523063455404208

/-! ## A265364.P6793742806321793821

`A263273(A264989(A265362(n)))`
-/

namespace A265364.P6793742806321793821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A264989 (A265362 n).toNat).toNat

end

end A265364.P6793742806321793821

/-! ## A265364.P2744244456933047100

`A263273(A265361(A263272(A265358(n))))`
-/

namespace A265364.P2744244456933047100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A265361 (A263272 (A265358 n).toNat).toNat).toNat

end

end A265364.P2744244456933047100

/-! ## A265364.P2215328139992989495

`A263273(A264975(A265355(A264985(n))))`
-/

namespace A265364.P2215328139992989495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A264975 (A265355 (A264985 n).toNat).toNat).toNat

end

end A265364.P2215328139992989495

/-! ## A265364.P15084762763282723096

`A263273(A264975(A264985(A265356(n))))`
-/

namespace A265364.P15084762763282723096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A264975 (A264985 (A265356 n).toNat).toNat).toNat

end

end A265364.P15084762763282723096

/-! ## A265364.P15413470860301405165

`A263272(A265351(A264974(A264978(A264978(n)))))`
-/

namespace A265364.P15413470860301405165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265351 (A264974 (A264978 (A264978 n).toNat).toNat).toNat).toNat

end

end A265364.P15413470860301405165

/-! ## A265364.P16527852778461131427

`A264978(A265365(A265363(A264978(A265365(n)))))`
-/

namespace A265364.P16527852778461131427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A265365 (A265363 (A264978 (A265365 n).toNat).toNat).toNat).toNat

end

end A265364.P16527852778461131427

/-! ## A265364.P1384521788562930337

`A265366(A264978(A265363(A264974(A265363(n)))))`
-/

namespace A265364.P1384521788562930337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265366 (A264978 (A265363 (A264974 (A265363 n).toNat).toNat).toNat).toNat

end

end A265364.P1384521788562930337

/-! ## A265364.P10086567289363265256

`A265352(A263272(A264975(A264974(A264975(n)))))`
-/

namespace A265364.P10086567289363265256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (A263272 (A264975 (A264974 (A264975 n).toNat).toNat).toNat).toNat

end

end A265364.P10086567289363265256

/-! ## A265364.P3128094790835957214

`A263273(A263272(A264976(A264992(A264991(n)))))`
-/

namespace A265364.P3128094790835957214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A263272 (A264976 (A264992 (A264991 n).toNat).toNat).toNat).toNat

end

end A265364.P3128094790835957214

/-! ## A265364.P12731250698012844277

`A264974(A265363(A264974(2*n-n)))`
-/

namespace A265364.P12731250698012844277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A265363 (A264974 (2 * n - n)).toNat).toNat

end

end A265364.P12731250698012844277

/-!
# A265365: Permutation of nonnegative integers: a(n) = A264978(A263273(n)).

The programs for A265365, there is no canonical definition to state claims against.
-/

/-! ## A265365.P13195028653636705995

`A264978(A263273(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265365.P13195028653636705995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A263273 n).toNat

end

end A265365.P13195028653636705995

/-! ## A265365.P974827570053223240

`A264978(A265352(A263272(n)))`
-/

namespace A265365.P974827570053223240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A265352 (A263272 n).toNat).toNat

end

end A265365.P974827570053223240

/-! ## A265365.P3941597374308919991

`A264978(A263272(A265351(n)))`
-/

namespace A265365.P3941597374308919991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A263272 (A265351 n).toNat).toNat

end

end A265365.P3941597374308919991

/-! ## A265365.P2655910051335804906

`A264978(A265366(A264978(n)))`
-/

namespace A265365.P2655910051335804906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A265366 (A264978 n).toNat).toNat

end

end A265365.P2655910051335804906

/-! ## A265365.P5248074332793961708

`A263272(A265344(A263273(A265338(A265338(n)))))`
-/

namespace A265365.P5248074332793961708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265344 (A263273 (A265338 (A265338 n).toNat).toNat).toNat).toNat

end

end A265365.P5248074332793961708

/-! ## A265365.P2373622558644980758

`A263272(A265344(A265366(A263272(A265344(n)))))`
-/

namespace A265365.P2373622558644980758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265344 (A265366 (A263272 (A265344 n).toNat).toNat).toNat).toNat

end

end A265365.P2373622558644980758

/-! ## A265365.P264377616713207328

`A264978(A265364(A264974(n)))`
-/

namespace A265365.P264377616713207328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A265364 (A264974 n).toNat).toNat

end

end A265365.P264377616713207328

/-! ## A265365.P3382500840850400601

`A263272(A265344(A265364(A263273(A265364(n)))))`
-/

namespace A265365.P3382500840850400601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A265344 (A265364 (A263273 (A265364 n).toNat).toNat).toNat).toNat

end

end A265365.P3382500840850400601

/-! ## A265365.P16686612018636899831

`A264978(A264974(A265363(n)))`
-/

namespace A265365.P16686612018636899831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A264974 (A265363 n).toNat).toNat

end

end A265365.P16686612018636899831

/-! ## A265365.P3243780522935335912

`A264978(A265352(A264974(A264975(n))))`
-/

namespace A265365.P3243780522935335912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A265352 (A264974 (A264975 n).toNat).toNat).toNat

end

end A265365.P3243780522935335912

/-! ## A265365.P17918634436048404084

`A264978(A265352(A264978(A265343(n))))`
-/

namespace A265365.P17918634436048404084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A265352 (A264978 (A265343 n).toNat).toNat).toNat

end

end A265365.P17918634436048404084

/-! ## A265365.P947708184897300266

`A264974(2*A263273(n))/2`
-/

namespace A265365.P947708184897300266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264974 (2 * A263273 n).toNat : ℚ) / 2

end

end A265365.P947708184897300266

/-! ## A265365.P9141358059889579478

`A265343(A265351(n))`
-/

namespace A265365.P9141358059889579478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265343 (A265351 n).toNat

end

end A265365.P9141358059889579478

/-! ## A265365.P7259345374929549163

`A265343(A265342(n)/2)`
-/

namespace A265365.P7259345374929549163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265343 (SequenceMachineLib.roundAway ((A265342 n : ℚ) / 2)).toNat

end

end A265365.P7259345374929549163

/-! ## A265365.P11921926542923760710

`A264978(A264976(A265367(n)))`
-/

namespace A265365.P11921926542923760710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A264976 (A265367 n).toNat).toNat

end

end A265365.P11921926542923760710

/-! ## A265365.P14080940067674958920

`A263273(A265366(A263273(2*n-n)))`
-/

namespace A265365.P14080940067674958920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A265366 (A263273 (2 * n - n)).toNat).toNat

end

end A265365.P14080940067674958920

/-! ## A265365.P3643611743231130598

`A263273(A265366(A265339(A263273(2*n))))`
-/

namespace A265365.P3643611743231130598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A265366 (A265339 (A263273 (2 * n)).toNat).toNat).toNat

end

end A265365.P3643611743231130598

/-! ## A265365.P1429442217221025941

`A263273(A265366(A264966(A263273(A264966(n)))))`
-/

namespace A265365.P1429442217221025941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A265366 (A264966 (A263273 (A264966 n).toNat).toNat).toNat).toNat

end

end A265365.P1429442217221025941

/-! ## A265365.P4623401584832179955

`A265343(A263272(A265366(A263273(A265366(n)))))`
-/

namespace A265365.P4623401584832179955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265343 (A263272 (A265366 (A263273 (A265366 n).toNat).toNat).toNat).toNat

end

end A265365.P4623401584832179955

/-!
# A265366: Permutation of nonnegative integers: a(n) = A263273(A264978(n)).

The programs for A265366, there is no canonical definition to state claims against.
-/

/-! ## A265366.P10964417634513790620

`A263273(A264978(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265366.P10964417634513790620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A264978 n).toNat

end

end A265366.P10964417634513790620

/-! ## A265366.P8489203182024128474

`A265352(A265344(n))`
-/

namespace A265366.P8489203182024128474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (A265344 n).toNat

end

end A265366.P8489203182024128474

/-! ## A265366.P15872642294622324780

`A263273(A263272(A265344(A265338(A265338(n)))))`
-/

namespace A265366.P15872642294622324780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A263272 (A265344 (A265338 (A265338 n).toNat).toNat).toNat).toNat

end

end A265366.P15872642294622324780

/-! ## A265366.P8964528462468479470

`A263273(A265365(A263273(n)))`
-/

namespace A265366.P8964528462468479470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A265365 (A263273 n).toNat).toNat

end

end A265366.P8964528462468479470

/-! ## A265366.P15434807591988321229

`A263273(A264974(2*n)/2)`
-/

namespace A265366.P15434807591988321229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (SequenceMachineLib.roundAway ((A264974 (2 * n) : ℚ) / 2)).toNat

end

end A265366.P15434807591988321229

/-! ## A265366.P573053451779697326

`A265352(A265364(2*n)/2)`
-/

namespace A265366.P573053451779697326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (SequenceMachineLib.roundAway ((A265364 (2 * n) : ℚ) / 2)).toNat

end

end A265366.P573053451779697326

/-! ## A265366.P8156713719963449590

`A263273(A263272(A265344(A264974(A264974(n)))))`
-/

namespace A265366.P8156713719963449590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A263272 (A265344 (A264974 (A264974 n).toNat).toNat).toNat).toNat

end

end A265366.P8156713719963449590

/-! ## A265366.P8199470969691771586

`A265339(2*A265344(n))`
-/

namespace A265366.P8199470969691771586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265339 (2 * A265344 n).toNat

end

end A265366.P8199470969691771586

/-! ## A265366.P11680187128337382860

`A263273(A265343(A263272(n)))`
-/

namespace A265366.P11680187128337382860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A265343 (A263272 n).toNat).toNat

end

end A265366.P11680187128337382860

/-! ## A265366.P13896728293572932106

`A263273(A265343(A263273(A265352(n))))`
-/

namespace A265366.P13896728293572932106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A265343 (A263273 (A265352 n).toNat).toNat).toNat

end

end A265366.P13896728293572932106

/-! ## A265366.P1543100635151515410

`A264978(A265365(A264978(2*n-n)))`
-/

namespace A265366.P1543100635151515410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A265365 (A264978 (2 * n - n)).toNat).toNat

end

end A265366.P1543100635151515410

/-! ## A265366.P11296525875320908645

`A264978(A265365(A265365(A264978(A265365(n)))))`
-/

namespace A265366.P11296525875320908645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A265365 (A265365 (A264978 (A265365 n).toNat).toNat).toNat).toNat

end

end A265366.P11296525875320908645

/-! ## A265366.P17674712535139847467

`A265364(A264976(2*n)/2)`
-/

namespace A265366.P17674712535139847467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265364 (SequenceMachineLib.roundAway ((A264976 (2 * n) : ℚ) / 2)).toNat

end

end A265366.P17674712535139847467

/-! ## A265366.P17612597392111798406

`A263273(A004526(A264974(2*n)))`
-/

namespace A265366.P17612597392111798406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A004526 (A264974 (2 * n)).toNat).toNat

end

end A265366.P17612597392111798406

/-! ## A265366.P1128207086057358477

`A264974(A265363(A264978(A264976(A264975(n)))))`
-/

namespace A265366.P1128207086057358477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A265363 (A264978 (A264976 (A264975 n).toNat).toNat).toNat).toNat

end

end A265366.P1128207086057358477

/-! ## A265366.P5458495703009850012

`A265364(A264974(A265343(A264978(A265343(n)))))`
-/

namespace A265366.P5458495703009850012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265364 (A264974 (A265343 (A264978 (A265343 n).toNat).toNat).toNat).toNat

end

end A265366.P5458495703009850012

/-! ## A265366.P16938409553281998815

`A265364(A264974(A265365(A264974(A265363(n)))))`
-/

namespace A265366.P16938409553281998815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265364 (A264974 (A265365 (A264974 (A265363 n).toNat).toNat).toNat).toNat

end

end A265366.P16938409553281998815

/-! ## A265366.P16534322979207792223

`A265364(A264974(A264978(A265363(A265364(n)))))`
-/

namespace A265366.P16534322979207792223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265364 (A264974 (A264978 (A265363 (A265364 n).toNat).toNat).toNat).toNat

end

end A265366.P16534322979207792223

/-! ## A265366.P6603738222026610496

`A263273(A263273(8*n)/8)`
-/

namespace A265366.P6603738222026610496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (SequenceMachineLib.roundAway ((A263273 (8 * n) : ℚ) / 8)).toNat

end

end A265366.P6603738222026610496

/-! ## A265366.P10457428253742288587

`A264976(A265367(A264978(A264975(A264976(n)))))`
-/

namespace A265366.P10457428253742288587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264976 (A265367 (A264978 (A264975 (A264976 n).toNat).toNat).toNat).toNat

end

end A265366.P10457428253742288587

/-!
# A265367: Permutation of nonnegative integers: a(n) = A264974(A263272(A263273(n))).

The programs for A265367, there is no canonical definition to state claims against.
-/

/-! ## A265367.P741808255633502029

`A264975(A263273(n))`
-/

namespace A265367.P741808255633502029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264975 (A263273 n).toNat

end

end A265367.P741808255633502029

/-! ## A265367.P14487123605961885967

`A264974(A265351(n))`
-/

namespace A265367.P14487123605961885967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A265351 n).toNat

end

end A265367.P14487123605961885967

/-! ## A265367.P5002588355747048313

`A264974(A263272(A263273(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265367.P5002588355747048313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A263272 (A263273 n).toNat).toNat

end

end A265367.P5002588355747048313

/-! ## A265367.P266446230613075608

`A264974(A265342(n)/2)`
-/

namespace A265367.P266446230613075608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (SequenceMachineLib.roundAway ((A265342 n : ℚ) / 2)).toNat

end

end A265367.P266446230613075608

/-! ## A265367.P16842019662996659267

`A264975(A265352(A263272(n)))`
-/

namespace A265367.P16842019662996659267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264975 (A265352 (A263272 n).toNat).toNat

end

end A265367.P16842019662996659267

/-! ## A265367.P6148096851147785631

`A264974(A265355(A265353(n)))`
-/

namespace A265367.P6148096851147785631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A265355 (A265353 n).toNat).toNat

end

end A265367.P6148096851147785631

/-! ## A265367.P6461692116011528632

`A264974(A263272(A265366(A264978(n))))`
-/

namespace A265367.P6461692116011528632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A263272 (A265366 (A264978 n).toNat).toNat).toNat

end

end A265367.P6461692116011528632

/-! ## A265367.P7977468779362182935

`A264974(A263272(A265354(A264985(n))))`
-/

namespace A265367.P7977468779362182935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A263272 (A265354 (A264985 n).toNat).toNat).toNat

end

end A265367.P7977468779362182935

/-! ## A265367.P1282014633238875444

`A264974(A263272(A265366(A263272(A265344(n)))))`
-/

namespace A265367.P1282014633238875444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A263272 (A265366 (A263272 (A265344 n).toNat).toNat).toNat).toNat

end

end A265367.P1282014633238875444

/-! ## A265367.P9950459863038862070

`A264974(A265344(A265365(n)))`
-/

namespace A265367.P9950459863038862070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A265344 (A265365 n).toNat).toNat

end

end A265367.P9950459863038862070

/-! ## A265367.P11606808919394664898

`A264974(A263272(A265364(A264974(n))))`
-/

namespace A265367.P11606808919394664898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A263272 (A265364 (A264974 n).toNat).toNat).toNat

end

end A265367.P11606808919394664898

/-! ## A265367.P16230398864131022397

`A264975(A263272(A265351(A264975(A264976(n)))))`
-/

namespace A265367.P16230398864131022397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264975 (A263272 (A265351 (A264975 (A264976 n).toNat).toNat).toNat).toNat

end

end A265367.P16230398864131022397

/-! ## A265367.P16217045762840224764

`A264975(A264974(A265363(n)))`
-/

namespace A265367.P16217045762840224764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264975 (A264974 (A265363 n).toNat).toNat

end

end A265367.P16217045762840224764

/-! ## A265367.P17600170393956988124

`A264975(A265368(A264975(n)))`
-/

namespace A265367.P17600170393956988124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264975 (A265368 (A264975 n).toNat).toNat

end

end A265367.P17600170393956988124

/-! ## A265367.P15190968608148975769

`A264974(A263272(A265902(A265352(n))))`
-/

namespace A265367.P15190968608148975769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A263272 (A265902 (A265352 n).toNat).toNat).toNat

end

end A265367.P15190968608148975769

/-! ## A265367.P8518043653743856485

`A264975(A265352(A265352(A265904(n))))`
-/

namespace A265367.P8518043653743856485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264975 (A265352 (A265352 (A265904 n).toNat).toNat).toNat

end

end A265367.P8518043653743856485

/-!
# A265368: Permutation of nonnegative integers: a(n) = A263273(A263272(A264974(n))).

The programs for A265368, there is no canonical definition to state claims against.
-/

/-! ## A265368.P15389636925653033152

`A263273(A264976(n))`
-/

namespace A265368.P15389636925653033152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A264976 n).toNat

end

end A265368.P15389636925653033152

/-! ## A265368.P3928924681214146553

`A265352(A264974(n))`
-/

namespace A265368.P3928924681214146553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (A264974 n).toNat

end

end A265368.P3928924681214146553

/-! ## A265368.P7610902017493676249

`A263273(A263272(A264974(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265368.P7610902017493676249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A263272 (A264974 n).toNat).toNat

end

end A265368.P7610902017493676249

/-! ## A265368.P11323789900641148615

`A265339(A264986(n))`
-/

namespace A265368.P11323789900641148615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265339 (A264986 n).toNat

end

end A265368.P11323789900641148615

/-! ## A265368.P1072848482378675154

`A265902(A265364(n))`
-/

namespace A265368.P1072848482378675154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265902 (A265364 n).toNat

end

end A265368.P1072848482378675154

/-! ## A265368.P8867116694869766399

`A265339(2*A264974(n))`
-/

namespace A265368.P8867116694869766399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265339 (2 * A264974 n).toNat

end

end A265368.P8867116694869766399

/-! ## A265368.P1387456969019069669

`A265352(A264986(n)/2)`
-/

namespace A265368.P1387456969019069669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (SequenceMachineLib.roundAway ((A264986 n : ℚ) / 2)).toNat

end

end A265368.P1387456969019069669

/-! ## A265368.P2478990002865943917

`A265352(A263272(2*n)/2)`
-/

namespace A265368.P2478990002865943917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (SequenceMachineLib.roundAway ((A263272 (2 * n) : ℚ) / 2)).toNat

end

end A265368.P2478990002865943917

/-! ## A265368.P18257511044831864148

`A263273(A265352(2*n)/2)`
-/

namespace A265368.P18257511044831864148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (SequenceMachineLib.roundAway ((A265352 (2 * n) : ℚ) / 2)).toNat

end

end A265368.P18257511044831864148

/-! ## A265368.P4757877052129699709

`A265339(A264984(2*n)/2)`
-/

namespace A265368.P4757877052129699709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265339 (SequenceMachineLib.roundAway ((A264984 (2 * n) : ℚ) / 2)).toNat

end

end A265368.P4757877052129699709

/-! ## A265368.P12474952399104017099

`A265352(A264975(A263272(n)))`
-/

namespace A265368.P12474952399104017099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (A264975 (A263272 n).toNat).toNat

end

end A265368.P12474952399104017099

/-! ## A265368.P17674427268621922982

`A265352(A265363(A263273(n)))`
-/

namespace A265368.P17674427268621922982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (A265363 (A263273 n).toNat).toNat

end

end A265368.P17674427268621922982

/-! ## A265368.P6822627491705646322

`A263273(A265358(A265362(n)))`
-/

namespace A265368.P6822627491705646322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A265358 (A265362 n).toNat).toNat

end

end A265368.P6822627491705646322

/-! ## A265368.P8161878630547892290

`A263273(A263272(A265361(A264989(n))))`
-/

namespace A265368.P8161878630547892290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A263272 (A265361 (A264989 n).toNat).toNat).toNat

end

end A265368.P8161878630547892290

/-! ## A265368.P10344561994269185932

`A265352(A265363(A265366(A264978(n))))`
-/

namespace A265368.P10344561994269185932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (A265363 (A265366 (A264978 n).toNat).toNat).toNat

end

end A265368.P10344561994269185932

/-! ## A265368.P16784291127003093871

`A265352(A265363(A264978(A265365(n))))`
-/

namespace A265368.P16784291127003093871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265352 (A265363 (A264978 (A265365 n).toNat).toNat).toNat

end

end A265368.P16784291127003093871

/-! ## A265368.P3210261890727509840

`A263273(A263272(A265361(A263272(A265358(n)))))`
-/

namespace A265368.P3210261890727509840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A263272 (A265361 (A263272 (A265358 n).toNat).toNat).toNat).toNat

end

end A265368.P3210261890727509840

/-!
# A265369: Self-inverse permutation of nonnegative integers: a(n) = A057889(A263273(A057889(n))).

The programs for A265369, there is no canonical definition to state claims against.
-/

/-! ## A265369.P9727090048941894908

`A264966(A057889(n))`
-/

namespace A265369.P9727090048941894908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264966 (A057889 n).toNat

end

end A265369.P9727090048941894908

/-! ## A265369.P4805377479323779962

`A057889(A264965(n))`
-/

namespace A265369.P4805377479323779962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A264965 n).toNat

end

end A265369.P4805377479323779962

/-! ## A265369.P3053847332918593374

`A057889(A263273(A057889(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265369.P3053847332918593374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A263273 (A057889 n).toNat).toNat

end

end A265369.P3053847332918593374

/-! ## A265369.P17580872556660411685

`A264966(A266642(A263272(n)))`
-/

namespace A265369.P17580872556660411685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264966 (A266642 (A263272 n).toNat).toNat

end

end A265369.P17580872556660411685

/-! ## A265369.P5243816303776024401

`A264966(A263272(A266641(n)))`
-/

namespace A265369.P5243816303776024401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264966 (A263272 (A266641 n).toNat).toNat

end

end A265369.P5243816303776024401

/-! ## A265369.P14620053492062049156

`A264966(A264966(A263273(n)))`
-/

namespace A265369.P14620053492062049156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264966 (A264966 (A263273 n).toNat).toNat

end

end A265369.P14620053492062049156

/-! ## A265369.P11236348406561714610

`A264966(A264966(A266643(A246200(n))))`
-/

namespace A265369.P11236348406561714610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264966 (A264966 (A266643 (A246200 n).toNat).toNat).toNat

end

end A265369.P11236348406561714610

/-! ## A265369.P17175831787315108921

`A264966(A264966(A246200(A266644(n))))`
-/

namespace A265369.P17175831787315108921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264966 (A264966 (A246200 (A266644 n).toNat).toNat).toNat

end

end A265369.P17175831787315108921

/-! ## A265369.P15475353493844093670

`A264966(A264966(A266643(A263272(A264967(n)))))`
-/

namespace A265369.P15475353493844093670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264966 (A264966 (A266643 (A263272 (A264967 n).toNat).toNat).toNat).toNat

end

end A265369.P15475353493844093670

/-! ## A265369.P8792490166568279092

`A263272(A266641(A264965(A266644(A266643(n)))))`
-/

namespace A265369.P8792490166568279092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A266641 (A264965 (A266644 (A266643 n).toNat).toNat).toNat).toNat

end

end A265369.P8792490166568279092

/-! ## A265369.P8870805290151829263

`A264966(A264966(A265368(A264975(n))))`
-/

namespace A265369.P8870805290151829263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264966 (A264966 (A265368 (A264975 n).toNat).toNat).toNat

end

end A265369.P8870805290151829263

/-! ## A265369.P12626898303812008347

`A264966(A264966(A264966(A265329(n))))`
-/

namespace A265369.P12626898303812008347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264966 (A264966 (A264966 (A265329 n).toNat).toNat).toNat

end

end A265369.P12626898303812008347

/-! ## A265369.P9099567534593520223

`A263273(A264965(A264965(A264967(A264968(n)))))`
-/

namespace A265369.P9099567534593520223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 (A264965 (A264965 (A264967 (A264968 n).toNat).toNat).toNat).toNat

end

end A265369.P9099567534593520223

/-!
# A265370: a(0) = 0; for n >= 1, a(n) = A070939(A078510(n)).

The programs for A265370, the canonical program `A265370.P3607156033040373403` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265370 has offset 0).

The definition of A265370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265370.P3607156033040373403

`ceil(log2(A078510(n)+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A265370

/-- `ceil(log2(A078510(n)+1))` -/
def P3607156033040373403.Spec : Prop :=
  ∀ n, P3607156033040373403.a n = A265370 n

theorem P3607156033040373403.correct : P3607156033040373403.Spec := by
  intro n
  simp only [A265370]

end A265370

/-! ## A265370.P13887124954360377523

`A029837(A078510(n)+1)`
-/

namespace A265370.P13887124954360377523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A078510 n + 1).toNat

end

end A265370.P13887124954360377523

namespace A265370

/-- `A029837(A078510(n)+1)` -/
def P13887124954360377523.Spec : Prop :=
  ∀ n, P13887124954360377523.a n = A265370 n

end A265370

/-! ## A265370.P8414743379737894615

`A070939(A078510(n))-A000007(n)`
-/

namespace A265370.P8414743379737894615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A078510 n).toNat - A000007 n

end

end A265370.P8414743379737894615

namespace A265370

/-- `A070939(A078510(n))-A000007(n)` -/
def P8414743379737894615.Spec : Prop :=
  ∀ n, P8414743379737894615.a n = A265370 n

end A265370

/-! ## A265370.P17096209458975008600

`A057427(n)*A070939(A078510(n))`
-/

namespace A265370.P17096209458975008600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A070939 (A078510 n).toNat

end

end A265370.P17096209458975008600

namespace A265370

/-- `A057427(n)*A070939(A078510(n))` -/
def P17096209458975008600.Spec : Prop :=
  ∀ n, P17096209458975008600.a n = A265370 n

end A265370

/-! ## A265370.P6632508833297280509

`A070939(A078510(n))%A000070(n)`
-/

namespace A265370.P6632508833297280509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (A078510 n).toNat) (A000070 n)

end

end A265370.P6632508833297280509

namespace A265370

/-- `A070939(A078510(n))%A000070(n)` -/
def P6632508833297280509.Spec : Prop :=
  ∀ n, P6632508833297280509.a n = A265370 n

end A265370

/-! ## A265370.P8842048907481271302

`A070939(A078510(n))-A008683((n+1)²)`
-/

namespace A265370.P8842048907481271302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A078510 n).toNat - A008683 ((n + 1) ^ 2)

end

end A265370.P8842048907481271302

namespace A265370

/-- `A070939(A078510(n))-A008683((n+1)²)` -/
def P8842048907481271302.Spec : Prop :=
  ∀ n, P8842048907481271302.a n = A265370 n

end A265370

/-! ## A265370.P395046570671530434

`A000040(n+1)%2*A070939(A078510(n))`
-/

namespace A265370.P395046570671530434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A070939 (A078510 n).toNat

end

end A265370.P395046570671530434

namespace A265370

/-- `A000040(n+1)%2*A070939(A078510(n))` -/
def P395046570671530434.Spec : Prop :=
  ∀ n, P395046570671530434.a n = A265370 n

end A265370

/-! ## A265370.P16632631358599206136

`A070939(A078510(n))-A000045(C(2, n+2))`
-/

namespace A265370.P16632631358599206136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A078510 n).toNat - A000045 (Nat.choose 2 (n + 2))

end

end A265370.P16632631358599206136

namespace A265370

/-- `A070939(A078510(n))-A000045(C(2, n+2))` -/
def P16632631358599206136.Spec : Prop :=
  ∀ n, P16632631358599206136.a n = A265370 n

end A265370

/-!
# A265371: Number of nX3 arrays containing 3 copies of 0..n-1 with no equal horizontal, vertical or antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265371, there is no canonical definition to state claims against.
-/

/-! ## A265371.P3717275109399009271

`A265373(∑[n+3]+1)`
-/

namespace A265371.P3717275109399009271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265373 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A265371.P3717275109399009271

/-!
# A265372: Number of nX4 arrays of permutations of 4 copies of 0..n-1 with no equal horizontal, vertical or antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265372, there is no canonical definition to state claims against.
-/

/-! ## A265372.P4320294947103451655

`A265373(∑[n+4]+3)`
-/

namespace A265372.P4320294947103451655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265373 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A265372.P4320294947103451655

/-!
# A265373: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with no equal horizontal, vertical or antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265373, there is no canonical definition to state claims against.
-/

/-! ## A265373.P8169578101579995510

`10%(3^A320606(n+1))`
-/

namespace A265373.P8169578101579995510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 10 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A320606 (n + 1) : ℤ)))

end

end A265373.P8169578101579995510

/-! ## A265373.P371789874923920824

`A004688(A320606(n+1))`
-/

namespace A265373.P371789874923920824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004688 (A320606 (n + 1)).toNat

end

end A265373.P371789874923920824

/-! ## A265373.P11612044179665112236

`A286334(A212163(n+1))`
-/

namespace A265373.P11612044179665112236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286334 (A212163 (n + 1)).toNat

end

end A265373.P11612044179665112236

/-! ## A265373.P17631350949034810434

`A286334(A212195(n+1))`
-/

namespace A265373.P17631350949034810434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286334 (A212195 (n + 1)).toNat

end

end A265373.P17631350949034810434

/-! ## A265373.P2787069608924116162

`A373696(A182797(n+1))`
-/

namespace A265373.P2787069608924116162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373696 (A182797 (n + 1)).toNat

end

end A265373.P2787069608924116162

/-!
# A265374: Number of 4Xn arrays containing n copies of 0..4-1 with no equal horizontal, vertical or antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265374, there is no canonical definition to state claims against.
-/

/-! ## A265374.P3118061293143448033

`A265373(A141214(n)+7)`
-/

namespace A265374.P3118061293143448033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265373 (A141214 n + 7).toNat

end

end A265374.P3118061293143448033

/-! ## A265374.P1044119205693159780

`A265373(A052905(n)+9)`
-/

namespace A265374.P1044119205693159780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265373 (A052905 n + 9).toNat

end

end A265374.P1044119205693159780

/-! ## A265374.P11947145364040036157

`A265373(A055999(n)+10)`
-/

namespace A265374.P11947145364040036157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265373 (A055999 n + 10).toNat

end

end A265374.P11947145364040036157

/-! ## A265374.P15048066242098216057

`A265373(eq[5, A066657(n)])`
-/

namespace A265374.P15048066242098216057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265373 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265374.P15048066242098216057

/-!
# A265375: Number of 5Xn arrays containing n copies of 0..5-1 with no equal horizontal, vertical or antidiagonal neighbors and new values introduced sequentially from 0.

The programs for A265375, there is no canonical definition to state claims against.
-/

/-! ## A265375.P2621198240010060290

`record[A265373(∑[n+1]+5)]`
-/

namespace A265375.P2621198240010060290
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265373 (∑ j ∈ Finset.range (n + 1), f2 j + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265375.P2621198240010060290

/-! ## A265375.P14223338935611456673

`A265373(A167499(n+3))`
-/

namespace A265375.P14223338935611456673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265373 (A167499 (n + 3)).toNat

end

end A265375.P14223338935611456673

/-! ## A265375.P16448896397573719161

`A265373(A155212(n)+13)`
-/

namespace A265375.P16448896397573719161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265373 (A155212 n + 13).toNat

end

end A265375.P16448896397573719161

/-!
# A265376: a(1) = 1 and a(n) = Sum_{i=1..n-1} (-1)^i*i*a(i).

The programs for A265376, there is no canonical definition to state claims against.
-/

/-! ## A265376.P13797520108136099500

`∏[(char[1]+n)*A033999(n)+1]`
-/

namespace A265376.P13797520108136099500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f2 j = n then 1 else 0) + n : ℕ) : ℤ) * A033999 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A265376.P13797520108136099500

/-! ## A265376.P13627859824219295108

`∏[-A274922(A004442(n))]`
-/

namespace A265376.P13627859824219295108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A274922 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A265376.P13627859824219295108

/-! ## A265376.P9363702493064992137

`∏[A060576(n)+A038608(n)]`
-/

namespace A265376.P9363702493064992137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n + A038608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A265376.P9363702493064992137

/-! ## A265376.P1209990586570854043

`∏[A274922(n)+A157928(n)]`
-/

namespace A265376.P1209990586570854043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 n + A157928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A265376.P1209990586570854043

/-! ## A265376.P3151527180756725787

`∏[A060576(n)-A181983(n)]`
-/

namespace A265376.P3151527180756725787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n - A181983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A265376.P3151527180756725787

/-!
# A265377: Sums of two or more consecutive positive cubes.

The programs for A265377, there is no canonical definition to state claims against.
-/

/-! ## A265377.P3717171039118380076

`A217843(lt[A341176(5*(n+1)), A211360(4*n+6)])`
-/

namespace A265377.P3717171039118380076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341176 (5 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211360 (4 * n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217843 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A265377.P3717171039118380076

/-! ## A265377.P16878697432332273483

`A217843(lt[A188383(7*n+3), A211360(4*n+6)])`
-/

namespace A265377.P16878697432332273483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188383 (7 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211360 (4 * n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217843 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A265377.P16878697432332273483

/-! ## A265377.P10348446817016312904

`A003997(A175332(n+1)^A194446(2*(n+2)))`
-/

namespace A265377.P10348446817016312904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003997 (SequenceMachineLib.roundAway ((A175332 (n + 1) : ℚ) ^ (A194446 (2 * (n + 2)) : ℤ))).toNat

end

end A265377.P10348446817016312904

/-!
# A265378: Numbers n such that n!3 + 3^9 is prime, where n!3 = n!!! is a triple factorial number (A007661).

The programs for A265378, there is no canonical definition to state claims against.
-/

/-! ## A265378.P3776876682656497186

`A057956(A029747(2*n+5))`
-/

namespace A265378.P3776876682656497186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057956 (A029747 (2 * n + 5)).toNat

end

end A265378.P3776876682656497186

/-!
# A265379: Binary representation of the n-th iteration of the "Rule 158" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265379, there is no canonical definition to state claims against.
-/

/-! ## A265379.P3581031308620573586

`A007088(A118171(n))`
-/

namespace A265379.P3581031308620573586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A118171 n).toNat

end

end A265379.P3581031308620573586

/-! ## A265379.P3481006821672992183

`A305989(A267805(n))`
-/

namespace A265379.P3481006821672992183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A267805 n).toNat

end

end A265379.P3481006821672992183

/-!
# A265380: Binary representation of the middle column of the "Rule 158" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265380, the canonical program `A265380.P382037928076372946` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265380 has offset 0).

The definition of A265380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265380.P382037928076372946

`or(10*a(n-1), A010121(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A265380

/-- `or(10*a(n-1), A010121(n+1))` -/
def P382037928076372946.Spec : Prop :=
  ∀ n, P382037928076372946.a n = A265380 n

theorem P382037928076372946.correct : P382037928076372946.Spec := by
  intro n
  simp only [A265380]

end A265380

/-! ## A265380.P15739341728899939031

`abs(A112299(n+1))+10*a(n-1)` with `a(0)=1`
-/

namespace A265380.P15739341728899939031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A112299 (n + 1)| + 10 * a (n - 1)

end

end A265380.P15739341728899939031

namespace A265380

/-- `abs(A112299(n+1))+10*a(n-1)` -/
def P15739341728899939031.Spec : Prop :=
  ∀ n, P15739341728899939031.a n = A265380 n

end A265380

/-! ## A265380.P3302202889723747672

`10*a(n-1)+1-char[A004767(n)]` with `a(0)=1`
-/

namespace A265380.P3302202889723747672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + 1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A265380.P3302202889723747672

namespace A265380

/-- `10*a(n-1)+1-char[A004767(n)]` -/
def P3302202889723747672.Spec : Prop :=
  ∀ n, P3302202889723747672.a n = A265380 n

end A265380

/-! ## A265380.P17320716788753278836

`xor(10*a(n-1), A000035(A032742(n+1)))` with `a(0)=1`
-/

namespace A265380.P17320716788753278836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (10 * a (n - 1)) (A000035 (A032742 (n + 1)).toNat)

end

end A265380.P17320716788753278836

namespace A265380

/-- `xor(10*a(n-1), A000035(A032742(n+1)))` -/
def P17320716788753278836.Spec : Prop :=
  ∀ n, P17320716788753278836.a n = A265380 n

end A265380

/-! ## A265380.P16341648038604655528

`A104326(∑[A293411(n)])`
-/

namespace A265380.P16341648038604655528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104326 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A265380.P16341648038604655528

namespace A265380

/-- `A104326(∑[A293411(n)])` -/
def P16341648038604655528.Spec : Prop :=
  ∀ n, P16341648038604655528.a n = A265380 n

end A265380

/-!
# A265381: Decimal representation of the middle column of the "Rule 158" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265381, the canonical program `A265381.P6433131096467565283` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265381 has offset 0).

The definition of A265381 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265381.P6433131096467565283

`2*a(n-1)+a(n-4)-2*a(n-5)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=14, a(4)=29`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A265381

/-- `2*a(n-1)+a(n-4)-2*a(n-5)` -/
def P6433131096467565283.Spec : Prop :=
  ∀ n, P6433131096467565283.a n = A265381 n

theorem P6433131096467565283.correct : P6433131096467565283.Spec := by
  intro n
  simp only [A265381]

end A265381

/-! ## A265381.P12276631820982523114

`floor(7*2^(n+2)/15)`
-/

namespace A265381.P12276631820982523114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 * 2 ^ (n + 2) : ℚ) / 15⌋

end

end A265381.P12276631820982523114

namespace A265381

/-- `floor(7*2^(n+2)/15)` -/
def P12276631820982523114.Spec : Prop :=
  ∀ n, P12276631820982523114.a n = A265381 n

end A265381

/-! ## A265381.P8741735690938665358

`or(2*a(n-1), gcd(1-n, ∑[n]))` with `a(0)=1`
-/

namespace A265381.P8741735690938665358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (2 * a (n - 1)) (Int.gcd (1 - (n : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A265381.P8741735690938665358

namespace A265381

/-- `or(2*a(n-1), gcd(1-n, ∑[n]))` -/
def P8741735690938665358.Spec : Prop :=
  ∀ n, (P8741735690938665358.a n : ℤ) = A265381 n

end A265381

/-! ## A265381.P18108943727919581141

`(a(n-2)+n)%2+2*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A265381.P18108943727919581141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  (a (n - 2) + n) % 2 + 2 * a (n - 1)

end

end A265381.P18108943727919581141

namespace A265381

/-- `(a(n-2)+n)%2+2*a(n-1)` -/
def P18108943727919581141.Spec : Prop :=
  ∀ n, (P18108943727919581141.a n : ℤ) = A265381 n

end A265381

/-! ## A265381.P5458389261737899244

`or(2*a(n-1), A177704(n))` with `a(0)=1`
-/

namespace A265381.P5458389261737899244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (2 * a (n - 1)) (A177704 n)

end

end A265381.P5458389261737899244

namespace A265381

/-- `or(2*a(n-1), A177704(n))` -/
def P5458389261737899244.Spec : Prop :=
  ∀ n, P5458389261737899244.a n = A265381 n

end A265381

/-! ## A265381.P17229114869465383200

`or(A007910(n), A077854(n))`
-/

namespace A265381.P17229114869465383200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007910 n) (A077854 n)

end

end A265381.P17229114869465383200

namespace A265381

/-- `or(A007910(n), A077854(n))` -/
def P17229114869465383200.Spec : Prop :=
  ∀ n, P17229114869465383200.a n = A265381 n

end A265381

/-! ## A265381.P3087887803671447500

`A256494(n+1)+A084170(n)`
-/

namespace A265381.P3087887803671447500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256494 (n + 1) + A084170 n

end

end A265381.P3087887803671447500

namespace A265381

/-- `A256494(n+1)+A084170(n)` -/
def P3087887803671447500.Spec : Prop :=
  ∀ n, P3087887803671447500.a n = A265381 n

end A265381

/-! ## A265381.P14534232781285454302

`or(A000975(n+1), A077854(n))`
-/

namespace A265381.P14534232781285454302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000975 (n + 1)) (A077854 n)

end

end A265381.P14534232781285454302

namespace A265381

/-- `or(A000975(n+1), A077854(n))` -/
def P14534232781285454302.Spec : Prop :=
  ∀ n, P14534232781285454302.a n = A265381 n

end A265381

/-! ## A265381.P15806720834264944373

`or(A000975(n+1), A115451(n))`
-/

namespace A265381.P15806720834264944373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000975 (n + 1)) (A115451 n)

end

end A265381.P15806720834264944373

namespace A265381

/-- `or(A000975(n+1), A115451(n))` -/
def P15806720834264944373.Spec : Prop :=
  ∀ n, P15806720834264944373.a n = A265381 n

end A265381

/-! ## A265381.P4042523641333026446

`A001045(n+1)+A256494(n+1)+A000225(n)`
-/

namespace A265381.P4042523641333026446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A256494 (n + 1) + A000225 n)

end

end A265381.P4042523641333026446

namespace A265381

/-- `A001045(n+1)+A256494(n+1)+A000225(n)` -/
def P4042523641333026446.Spec : Prop :=
  ∀ n, P4042523641333026446.a n = A265381 n

end A265381

/-! ## A265381.P13812999981435344905

`A000225(n+1)+A368346(n)-A368346(n+1)`
-/

namespace A265381.P13812999981435344905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (A368346 n - A368346 (n + 1))

end

end A265381.P13812999981435344905

namespace A265381

/-- `A000225(n+1)+A368346(n)-A368346(n+1)` -/
def P13812999981435344905.Spec : Prop :=
  ∀ n, P13812999981435344905.a n = A265381 n

end A265381

/-! ## A265381.P13280631626361969104

`2^(n+2)-A262450(n+2)`
-/

namespace A265381.P13280631626361969104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A262450 (n + 2)

end

end A265381.P13280631626361969104

namespace A265381

/-- `2^(n+2)-A262450(n+2)` -/
def P13280631626361969104.Spec : Prop :=
  ∀ n, P13280631626361969104.a n = A265381 n

end A265381

/-! ## A265381.P3653112014845597148

`A011377(n)-A178452(n+1)`
-/

namespace A265381.P3653112014845597148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011377 n - A178452 (n + 1)

end

end A265381.P3653112014845597148

namespace A265381

/-- `A011377(n)-A178452(n+1)` -/
def P3653112014845597148.Spec : Prop :=
  ∀ n, P3653112014845597148.a n = A265381 n

end A265381

/-! ## A265381.P409088497029428281

`A000225(n+2)-A083593(n+1)`
-/

namespace A265381.P409088497029428281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) - A083593 (n + 1)

end

end A265381.P409088497029428281

namespace A265381

/-- `A000225(n+2)-A083593(n+1)` -/
def P409088497029428281.Spec : Prop :=
  ∀ n, P409088497029428281.a n = A265381 n

end A265381

/-! ## A265381.P9348331726945246148

`A178420(n+2)-A178452(n+1)`
-/

namespace A265381.P9348331726945246148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178420 (n + 2) - A178452 (n + 1)

end

end A265381.P9348331726945246148

namespace A265381

/-- `A178420(n+2)-A178452(n+1)` -/
def P9348331726945246148.Spec : Prop :=
  ∀ n, P9348331726945246148.a n = A265381 n

end A265381

/-! ## A265381.P12119353289380654079

`A000975(n+2)-A256494(n+3)`
-/

namespace A265381.P12119353289380654079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 2) - A256494 (n + 3)

end

end A265381.P12119353289380654079

namespace A265381

/-- `A000975(n+2)-A256494(n+3)` -/
def P12119353289380654079.Spec : Prop :=
  ∀ n, P12119353289380654079.a n = A265381 n

end A265381

/-! ## A265381.P2722042743605944922

`A102650(n)/4`
-/

namespace A265381.P2722042743605944922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102650 n : ℚ) / 4

end

end A265381.P2722042743605944922

namespace A265381

/-- `A102650(n)/4` -/
def P2722042743605944922.Spec : Prop :=
  ∀ n, P2722042743605944922.a n = (A265381 n : ℚ)

end A265381

/-! ## A265381.P5287991268915419170

`A084639(n+1)-A140659(n+1)`
-/

namespace A265381.P5287991268915419170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084639 (n + 1) - A140659 (n + 1)

end

end A265381.P5287991268915419170

namespace A265381

/-- `A084639(n+1)-A140659(n+1)` -/
def P5287991268915419170.Spec : Prop :=
  ∀ n, P5287991268915419170.a n = A265381 n

end A265381

/-!
# A265382: Total number of ON (black) cells after n iterations of the "Rule 158" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265382, the canonical program `A265382.P10020199595413111500` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265382 has offset 0).

The definition of A265382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265382.P10020199595413111500

`∑[gcd(n, floor(n/2))+1+n]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A265382

/-- `∑[gcd(n, floor(n/2))+1+n]` -/
def P10020199595413111500.Spec : Prop :=
  ∀ n, (P10020199595413111500.a n : ℤ) = A265382 n

theorem P10020199595413111500.correct : P10020199595413111500.Spec := by
  intro n
  simp only [A265382]

end A265382

/-! ## A265382.P16420164839895679013

`∪[∑[n+2], ∑[n]]+∑[n+1]`
-/

namespace A265382.P16420164839895679013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n + ∑ j ∈ Finset.range (n + 1), f5 j

end

end A265382.P16420164839895679013

namespace A265382

/-- `∪[∑[n+2], ∑[n]]+∑[n+1]` -/
def P16420164839895679013.Spec : Prop :=
  ∀ n, (P16420164839895679013.a n : ℤ) = A265382 n

end A265382

/-! ## A265382.P6605425159137020486

`∑[ogf((1+3x+2x^2-x^3)/(1-2x^2+x^4))]`
-/

namespace A265382.P6605425159137020486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2, -1] [1, 0, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265382.P6605425159137020486

namespace A265382

/-- `∑[ogf((1+3x+2x^2-x^3)/(1-2x^2+x^4))]` -/
def P6605425159137020486.Spec : Prop :=
  ∀ n, P6605425159137020486.a n = A265382 n

end A265382

/-! ## A265382.P12786135625147064884

`∑[a(n-2)+3-n%2]` with `a(0)=1, a(1)=3`
-/

namespace A265382.P12786135625147064884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 2) + (3 - ((n % 2 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265382.P12786135625147064884

namespace A265382

/-- `∑[a(n-2)+3-n%2]` -/
def P12786135625147064884.Spec : Prop :=
  ∀ n, P12786135625147064884.a n = A265382 n

end A265382

/-! ## A265382.P3325716032470928945

`∑[n+1]+C(floor(n/2), 2)+n`
-/

namespace A265382.P3325716032470928945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose ⌊(n : ℚ) / 2⌋.toNat 2 + n

end

end A265382.P3325716032470928945

namespace A265382

/-- `∑[n+1]+C(floor(n/2), 2)+n` -/
def P3325716032470928945.Spec : Prop :=
  ∀ n, (P3325716032470928945.a n : ℤ) = A265382 n

end A265382

/-! ## A265382.P1050493339042080386

`∑[∑[a(n-2)+(-1)^n]]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A265382.P1050493339042080386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n f2 =>
  f2 (n - 2) + (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265382.P1050493339042080386

namespace A265382

/-- `∑[∑[a(n-2)+(-1)^n]]` -/
def P1050493339042080386.Spec : Prop :=
  ∀ n, P1050493339042080386.a n = A265382 n

end A265382

/-! ## A265382.P8636284298633403792

`∑[(n/2)^∑[(-1)^n]+n+1]`
-/

namespace A265382.P8636284298633403792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ) + (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265382.P8636284298633403792

namespace A265382

/-- `∑[(n/2)^∑[(-1)^n]+n+1]` -/
def P8636284298633403792.Spec : Prop :=
  ∀ n, P8636284298633403792.a n = (A265382 n : ℚ)

end A265382

/-! ## A265382.P14402690124220920882

`∑[n]-∑[floor((n+1)/a(n-1))]` with `a(0)=-1`
-/

namespace A265382.P14402690124220920882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  ⌊(n + 1 : ℚ) / (f2 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A265382.P14402690124220920882

namespace A265382

/-- `∑[n]-∑[floor((n+1)/a(n-1))]` -/
def P14402690124220920882.Spec : Prop :=
  ∀ n, P14402690124220920882.a n = A265382 n

end A265382

/-! ## A265382.P560927027952029086

`A111712(n+1)+n`
-/

namespace A265382.P560927027952029086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111712 (n + 1) + (n : ℤ)

end

end A265382.P560927027952029086

namespace A265382

/-- `A111712(n+1)+n` -/
def P560927027952029086.Spec : Prop :=
  ∀ n, P560927027952029086.a n = A265382 n

end A265382

/-! ## A265382.P1644992686599659879

`A195014(n)+1+n`
-/

namespace A265382.P1644992686599659879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195014 n + 1 + (n : ℤ)

end

end A265382.P1644992686599659879

namespace A265382

/-- `A195014(n)+1+n` -/
def P1644992686599659879.Spec : Prop :=
  ∀ n, P1644992686599659879.a n = A265382 n

end A265382

/-! ## A265382.P1130380642451145782

`2*∑[A071054(n)/2]`
-/

namespace A265382.P1130380642451145782
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071054 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265382.P1130380642451145782

namespace A265382

/-- `2*∑[A071054(n)/2]` -/
def P1130380642451145782.Spec : Prop :=
  ∀ n, P1130380642451145782.a n = (A265382 n : ℚ)

end A265382

/-! ## A265382.P13029858758783740807

`(n+1)²-∑[A029578(n)]`
-/

namespace A265382.P13029858758783740807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265382.P13029858758783740807

namespace A265382

/-- `(n+1)²-∑[A029578(n)]` -/
def P13029858758783740807.Spec : Prop :=
  ∀ n, P13029858758783740807.a n = A265382 n

end A265382

/-! ## A265382.P255445007458835106

`(n+1)²-Δ[A111384(n)]`
-/

namespace A265382.P255445007458835106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (f1 (n + 1) - f1 n)

end

end A265382.P255445007458835106

namespace A265382

/-- `(n+1)²-Δ[A111384(n)]` -/
def P255445007458835106.Spec : Prop :=
  ∀ n, P255445007458835106.a n = A265382 n

end A265382

/-! ## A265382.P4513427570830978335

`A134519(n+1)+∑[n]+n`
-/

namespace A265382.P4513427570830978335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134519 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)

end

end A265382.P4513427570830978335

namespace A265382

/-- `A134519(n+1)+∑[n]+n` -/
def P4513427570830978335.Spec : Prop :=
  ∀ n, P4513427570830978335.a n = A265382 n

end A265382

/-! ## A265382.P5828661509209577725

`a(n-1)+A063914(n)+2` with `a(0)=1`
-/

namespace A265382.P5828661509209577725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A063914 n + 2)

end

end A265382.P5828661509209577725

namespace A265382

/-- `a(n-1)+A063914(n)+2` -/
def P5828661509209577725.Spec : Prop :=
  ∀ n, P5828661509209577725.a n = A265382 n

end A265382

/-! ## A265382.P3407401548892371338

`∑[abs(2*n-A006370(n))]+n+1`
-/

namespace A265382.P3407401548892371338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A006370 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A265382.P3407401548892371338

namespace A265382

/-- `∑[abs(2*n-A006370(n))]+n+1` -/
def P3407401548892371338.Spec : Prop :=
  ∀ n, P3407401548892371338.a n = A265382 n

end A265382

/-! ## A265382.P6059319396471092872

`A198392(n)-A125577(n)`
-/

namespace A265382.P6059319396471092872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198392 n - A125577 n

end

end A265382.P6059319396471092872

namespace A265382

/-- `A198392(n)-A125577(n)` -/
def P6059319396471092872.Spec : Prop :=
  ∀ n, P6059319396471092872.a n = A265382 n

end A265382

/-! ## A265382.P12952971700855330533

`A111711(n+1)+A007494(n)`
-/

namespace A265382.P12952971700855330533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111711 (n + 1) + A007494 n

end

end A265382.P12952971700855330533

namespace A265382

/-- `A111711(n+1)+A007494(n)` -/
def P12952971700855330533.Spec : Prop :=
  ∀ n, P12952971700855330533.a n = A265382 n

end A265382

/-! ## A265382.P3522314656071718488

`A142150(n)+A085787(n+1)`
-/

namespace A265382.P3522314656071718488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + A085787 (n + 1)

end

end A265382.P3522314656071718488

namespace A265382

/-- `A142150(n)+A085787(n+1)` -/
def P3522314656071718488.Spec : Prop :=
  ∀ n, P3522314656071718488.a n = A265382 n

end A265382

/-! ## A265382.P1536615812766529325

`A165157(n)+A080827(n+1)`
-/

namespace A265382.P1536615812766529325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165157 n + A080827 (n + 1)

end

end A265382.P1536615812766529325

namespace A265382

/-- `A165157(n)+A080827(n+1)` -/
def P1536615812766529325.Spec : Prop :=
  ∀ n, P1536615812766529325.a n = A265382 n

end A265382

/-!
# A265383: Numbers k such that 10^k * (10^k - 1) - 1 is prime.

The programs for A265383, there is no canonical definition to state claims against.
-/

/-! ## A265383.P4712192047290640225

`record[A121468(∑[A219421(n+1)])]`
-/

namespace A265383.P4712192047290640225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219421 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121468 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265383.P4712192047290640225

/-!
# A265384: Toothpick sequence starting at the vertex of y=3*abs(x).

The programs for A265384, there is no canonical definition to state claims against.
-/

/-! ## A265384.P16286313982530123554

`∑[A001316(floor(2*n/5))]`
-/

namespace A265384.P16286313982530123554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 ⌊2 * ((n : ℚ) / 5)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265384.P16286313982530123554

/-! ## A265384.P2464033559704667911

`∑[A060632(floor(4*n/5))]`
-/

namespace A265384.P2464033559704667911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 ⌊4 * ((n : ℚ) / 5)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265384.P2464033559704667911

/-! ## A265384.P1329224310411479674

`∑[sqrt(A102376(floor(2*n/5)))]`
-/

namespace A265384.P1329224310411479674
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A102376 ⌊2 * ((n : ℚ) / 5)⌋.toNat : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265384.P1329224310411479674

/-! ## A265384.P10195967198163766977

`∑[A038573(floor(2*n/5))+1]`
-/

namespace A265384.P10195967198163766977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 ⌊2 * ((n : ℚ) / 5)⌋.toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265384.P10195967198163766977

/-! ## A265384.P8834096841060024443

`∑[A048896(2*floor(2*n/5))]`
-/

namespace A265384.P8834096841060024443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (2 * ⌊2 * ((n : ℚ) / 5)⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265384.P8834096841060024443

/-! ## A265384.P13434327903846852036

`∑[2^A000120(floor(2*n/5))]`
-/

namespace A265384.P13434327903846852036
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 ⌊2 * ((n : ℚ) / 5)⌋.toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265384.P13434327903846852036

/-! ## A265384.P7025210001367335354

`∑[A071044(2*A057354(n))]`
-/

namespace A265384.P7025210001367335354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (2 * A057354 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265384.P7025210001367335354

/-! ## A265384.P268884045317302769

`∑[A000079(A000120(floor(2*n/5)))]`
-/

namespace A265384.P268884045317302769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000120 ⌊2 * ((n : ℚ) / 5)⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265384.P268884045317302769

/-! ## A265384.P6991191984467711559

`∑[A000005(A019565(floor(2*n/5)))]`
-/

namespace A265384.P6991191984467711559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A019565 ⌊2 * ((n : ℚ) / 5)⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265384.P6991191984467711559

/-!
# A265385: Sequence defined by a(1)=a(2)=1 and a(n) = gray(a(n-1) + a(n-2)), with gray(m) = A003188(m).

The programs for A265385, the canonical program `A265385.P18236968103338119462` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265385 has offset 1).

The definition of A265385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265385.P18236968103338119462

`xor(a(n-1)+a(n-2), floor((a(n-1)+a(n-2))/2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A265385

/-- `xor(a(n-1)+a(n-2), floor((a(n-1)+a(n-2))/2))` -/
def P18236968103338119462.Spec : Prop :=
  ∀ n, P18236968103338119462.a n = A265385 (n + 1)

theorem P18236968103338119462.correct : P18236968103338119462.Spec := by
  intro n
  simp only [A265385, Nat.add_sub_cancel]

end A265385

/-! ## A265385.P16952903676462708342

`A265387(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A265385.P16952903676462708342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A265387 (n + 2) - a (n - 1)

end

end A265385.P16952903676462708342

namespace A265385

/-- `A265387(n+2)-a(n-1)` -/
def P16952903676462708342.Spec : Prop :=
  ∀ n, P16952903676462708342.a n = A265385 (n + 1)

end A265385

/-! ## A265385.P12777626463180268668

`A003188(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A265385.P12777626463180268668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A003188 (a (n - 1) + a (n - 2)).toNat

end

end A265385.P12777626463180268668

namespace A265385

/-- `A003188(a(n-1)+a(n-2))` -/
def P12777626463180268668.Spec : Prop :=
  ∀ n, P12777626463180268668.a n = A265385 (n + 1)

end A265385

/-! ## A265385.P12929319327869539862

`A003188(a(n-1)-floor(-a(n-2)))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A265385.P12929319327869539862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A003188 (a (n - 1) - (-a (n - 2))).toNat

end

end A265385.P12929319327869539862

namespace A265385

/-- `A003188(a(n-1)-floor(-a(n-2)))` -/
def P12929319327869539862.Spec : Prop :=
  ∀ n, P12929319327869539862.a n = A265385 (n + 1)

end A265385

/-! ## A265385.P7179223331050703827

`A003188(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A265385.P7179223331050703827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A003188 (a (n - 1) - (-a (n - 2))).toNat

end

end A265385.P7179223331050703827

namespace A265385

/-- `A003188(a(n-1)-ceil(-a(n-2)))` -/
def P7179223331050703827.Spec : Prop :=
  ∀ n, P7179223331050703827.a n = A265385 (n + 1)

end A265385

/-!
# A265386: Sequence defined by a(1)=a(2)=1 and a(n) = gray(gray(a(n-1)) + gray(a(n-2))), with gray(m) = A003188(m).

The programs for A265386, there is no canonical definition to state claims against.
-/

/-! ## A265386.P12163693089508469154

`A003188(A003188(a(n-1))+A003188(a(n-2)))` with `a(0)=1, a(1)=1`
-/

namespace A265386.P12163693089508469154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A003188 (A003188 (a (n - 1)).toNat + A003188 (a (n - 2)).toNat).toNat

end

end A265386.P12163693089508469154

/-! ## A265386.P15254661595400228556

`A000196(A290662(xor(1, n)))`
-/

namespace A265386.P15254661595400228556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A290662 (Nat.xor 1 n)).toNat

end

end A265386.P15254661595400228556

/-! ## A265386.P16902740579654810418

`A180199(A097110(n)/A000034(n))`
-/

namespace A265386.P16902740579654810418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180199 (SequenceMachineLib.roundAway ((A097110 n : ℚ) / (A000034 n : ℚ))).toNat

end

end A265386.P16902740579654810418

/-! ## A265386.P10373589311522760928

`A002260(lcm(A116498(n), A290674(n)))`
-/

namespace A265386.P10373589311522760928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Int.lcm (A116498 n) (A290674 n))

end

end A265386.P10373589311522760928

/-! ## A265386.P11499661010902847941

`or(A004738(A356934(n)), A204856(n))`
-/

namespace A265386.P11499661010902847941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004738 (A356934 n).toNat) (A204856 n)

end

end A265386.P11499661010902847941

/-!
# A265387: Sequence defined by a(1)=a(2)=1 and a(n) = gray(a(n-1)) + gray(a(n-2)), with gray(m) = A003188(m).

The programs for A265387, there is no canonical definition to state claims against.
-/

/-! ## A265387.P4022443129756628171

`A003188(a(n-1))+A003188(a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A265387.P4022443129756628171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A003188 (a (n - 1)).toNat + A003188 (a (n - 2)).toNat

end

end A265387.P4022443129756628171

/-! ## A265387.P6459419651286799465

`A286546(A265385(n+1))+A265385(n+1)`
-/

namespace A265387.P6459419651286799465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286546 (A265385 (n + 1)).toNat + A265385 (n + 1)

end

end A265387.P6459419651286799465

/-! ## A265387.P11072815062317744095

`A006068(A265385(n+1))`
-/

namespace A265387.P11072815062317744095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A265385 (n + 1)).toNat

end

end A265387.P11072815062317744095

/-! ## A265387.P5811113349681758815

`A005041(A148807(n))`
-/

namespace A265387.P5811113349681758815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A148807 n).toNat

end

end A265387.P5811113349681758815

/-! ## A265387.P3936883634427166608

`A005041(A148812(n))`
-/

namespace A265387.P3936883634427166608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A148812 n).toNat

end

end A265387.P3936883634427166608

/-!
# A265389: The sums from the following procedure: from the list of positive integers, repeatedly remove the first three numbers and their sum.

The programs for A265389, there is no canonical definition to state claims against.
-/

/-! ## A265389.P11799341340136468339

`A017353(n)-A305490(n+1)`
-/

namespace A265389.P11799341340136468339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n - A305490 (n + 1)

end

end A265389.P11799341340136468339

/-! ## A265389.P3287922915598637513

`A297469(2*n+1)-A305490(n+1)`
-/

namespace A265389.P3287922915598637513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297469 (2 * n + 1) - A305490 (n + 1)

end

end A265389.P3287922915598637513

/-! ## A265389.P13587854212091248064

`A297464(n)+A297466(n)+A297465(n)`
-/

namespace A265389.P13587854212091248064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297464 n + (A297466 n + A297465 n)

end

end A265389.P13587854212091248064

/-! ## A265389.P1774262086170862292

`A065475(A017341(n)-A305490(n+1))`
-/

namespace A265389.P1774262086170862292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A017341 n - A305490 (n + 1)).toNat

end

end A265389.P1774262086170862292

/-! ## A265389.P15887548556287485404

`A114637(A017341(n)-A305490(n+1))`
-/

namespace A265389.P15887548556287485404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (A017341 n - A305490 (n + 1)).toNat

end

end A265389.P15887548556287485404

/-! ## A265389.P1875451689829634102

`A233583(A017365(n)-A305490(n+1))`
-/

namespace A265389.P1875451689829634102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017365 n - A305490 (n + 1)).toNat

end

end A265389.P1875451689829634102

/-!
# A265390: a(n) = lcm_{d|n} tau(d) * Sum_{d|n} 1/tau(d), where tau(d) represents the number of divisors of d (A000005(d)).

The programs for A265390, the canonical program `A265390.P4023659624816682128` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265390 has offset 1).

The definition of A265390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265390.P11743957827121363963

`A265391(n+1)*A253139(n+1)/A265392(n+1)`
-/

namespace A265390.P11743957827121363963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265391 (n + 1) * A253139 (n + 1) : ℚ) / (A265392 (n + 1) : ℚ)

end

end A265390.P11743957827121363963

namespace A265390

/-- `A265391(n+1)*A253139(n+1)/A265392(n+1)` -/
def P11743957827121363963.Spec : Prop :=
  ∀ n, P11743957827121363963.a n = (A265390 (n + 1) : ℚ)

end A265390

/-! ## A265390.P4023659624816682128

`∏{e}[n+1, A025529(#+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A265390

/-- `∏{e}[n+1, A025529(#+1)]` -/
def P4023659624816682128.Spec : Prop :=
  ∀ n, P4023659624816682128.a n = A265390 (n + 1)

theorem P4023659624816682128.correct : P4023659624816682128.Spec := by
  intro n
  simp only [A265390, Nat.add_sub_cancel]

end A265390

/-! ## A265390.P12490873758728870951

`∏{e}[n+1, A027446(A000217(#)+1)]`
-/

namespace A265390.P12490873758728870951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A027446 (A000217 (Nat.factorization (f1 n) p) + 1).toNat

end

end A265390.P12490873758728870951

namespace A265390

/-- `∏{e}[n+1, A027446(A000217(#)+1)]` -/
def P12490873758728870951.Spec : Prop :=
  ∀ n, P12490873758728870951.a n = A265390 (n + 1)

end A265390

/-! ## A265390.P7253598591459250525

`∏{e}[n+1, A175441(A001096(#+1))]`
-/

namespace A265390.P7253598591459250525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A175441 (A001096 (Nat.factorization (f1 n) p + 1)).toNat

end

end A265390.P7253598591459250525

namespace A265390

/-- `∏{e}[n+1, A175441(A001096(#+1))]` -/
def P7253598591459250525.Spec : Prop :=
  ∀ n, P7253598591459250525.a n = A265390 (n + 1)

end A265390

/-!
# A265391: a(n) = numerator of Sum_{d|n} 1 / tau(d).

The programs for A265391, there is no canonical definition to state claims against.
-/

/-! ## A265391.P2031228778290258135

`A265390(n+1)*A265392(n+1)/A253139(n+1)`
-/

namespace A265391.P2031228778290258135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265390 (n + 1) * A265392 (n + 1) : ℚ) / (A253139 (n + 1) : ℚ)

end

end A265391.P2031228778290258135

/-! ## A265391.P15374010343914698611

`A034699(A265390(n+1))%∑[A326645(n+3)]`
-/

namespace A265391.P15374010343914698611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326645 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034699 (A265390 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265391.P15374010343914698611

/-! ## A265391.P2408390118303449108

`A079978(A003215(n))+A034699(A265390(n+1))`
-/

namespace A265391.P2408390118303449108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A003215 n).toNat + A034699 (A265390 (n + 1)).toNat

end

end A265391.P2408390118303449108

/-! ## A265391.P938634025918497687

`A034699(A265390(n+1))+C(n, A179883(n+1))`
-/

namespace A265391.P938634025918497687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A265390 (n + 1)).toNat + (Nat.choose n (A179883 (n + 1)).toNat : ℤ)

end

end A265391.P938634025918497687

/-! ## A265391.P17836236241724133397

`A034699(A265390(n+1))%A159000(n+1)`
-/

namespace A265391.P17836236241724133397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034699 (A265390 (n + 1)).toNat) (A159000 (n + 1))

end

end A265391.P17836236241724133397

/-!
# A265392: a(n) = denominator of Sum_{d|n} 1 / tau(d).

The programs for A265392, there is no canonical definition to state claims against.
-/

/-! ## A265392.P8853659753127873708

`A265391(n+1)*A253139(n+1)/A265390(n+1)`
-/

namespace A265392.P8853659753127873708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265391 (n + 1) * A253139 (n + 1) : ℚ) / (A265390 (n + 1) : ℚ)

end

end A265392.P8853659753127873708

/-! ## A265392.P18179496236033917849

`A253139(n+1)-A185254(A073348(n+1))`
-/

namespace A265392.P18179496236033917849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253139 (n + 1) - A185254 (A073348 (n + 1)).toNat

end

end A265392.P18179496236033917849

/-! ## A265392.P11817757261813868278

`gcd(A186747(A035116(n+1)), A253139(n+1))`
-/

namespace A265392.P11817757261813868278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A186747 (A035116 (n + 1)).toNat) (A253139 (n + 1))

end

end A265392.P11817757261813868278

/-! ## A265392.P5092510467836756505

`A253139(n+1)%A295557(A001318(n+8))`
-/

namespace A265392.P5092510467836756505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253139 (n + 1)) (A295557 (A001318 (n + 8)).toNat)

end

end A265392.P5092510467836756505

/-! ## A265392.P10641361889848070062

`A127370(A124859(n+1))`
-/

namespace A265392.P10641361889848070062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127370 (A124859 (n + 1)).toNat

end

end A265392.P10641361889848070062

/-!
# A265393: a(n) = the smallest number k such that floor(Sum_{d|k} 1/tau(d)) = n.

The programs for A265393, there is no canonical definition to state claims against.
-/

/-! ## A265393.P5195101237489782745

`A237350(A084193(∑[n]))`
-/

namespace A265393.P5195101237489782745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237350 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A265393.P5195101237489782745

/-! ## A265393.P1301135524877495390

`A087999(A237350(n+1))`
-/

namespace A265393.P1301135524877495390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087999 (A237350 (n + 1)).toNat

end

end A265393.P1301135524877495390

/-! ## A265393.P16627277894898651094

`A237350(n+1)%A119300(n+1)`
-/

namespace A265393.P16627277894898651094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237350 (n + 1)) (A119300 (n + 1))

end

end A265393.P16627277894898651094

/-! ## A265393.P12788122421244697155

`A237350(n+1)+A048105(3*2^n-1)`
-/

namespace A265393.P12788122421244697155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237350 (n + 1) + A048105 (3 * 2 ^ n - 1)

end

end A265393.P12788122421244697155

/-! ## A265393.P4594584877834382278

`A237350(n+1)+A000007(A006720(n))`
-/

namespace A265393.P4594584877834382278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237350 (n + 1) + A000007 (A006720 n).toNat

end

end A265393.P4594584877834382278

/-!
# A265394: Positions of records in A265388.

The programs for A265394, there is no canonical definition to state claims against.
-/

/-! ## A265394.P14906252237890031177

`floor(A265396(n+1)/2)+1`
-/

namespace A265394.P14906252237890031177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A265396 (n + 1) : ℚ) / 2⌋ + 1

end

end A265394.P14906252237890031177

/-! ## A265394.P11856532205501640164

`(A265396(n+1)+1)/A000032(C(2, n+2))`
-/

namespace A265394.P11856532205501640164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265396 (n + 1) + 1 : ℚ) / (A000032 (Nat.choose 2 (n + 2)) : ℚ)

end

end A265394.P11856532205501640164

/-! ## A265394.P16329403603392911790

`(A265396(n+1)+1)/A020639(A008458(n))`
-/

namespace A265394.P16329403603392911790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265396 (n + 1) + 1 : ℚ) / (A020639 (A008458 n).toNat : ℚ)

end

end A265394.P16329403603392911790

/-! ## A265394.P6251571608811308747

`(A265396(n+1)+1)/A020639(A008574(n))`
-/

namespace A265394.P6251571608811308747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265396 (n + 1) + 1 : ℚ) / (A020639 (A008574 n).toNat : ℚ)

end

end A265394.P6251571608811308747

/-! ## A265394.P13453340303325899801

`(A265396(n+1)+1)/A020639(A000010(n+2))`
-/

namespace A265394.P13453340303325899801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265396 (n + 1) + 1 : ℚ) / (A020639 (A000010 (n + 2)).toNat : ℚ)

end

end A265394.P13453340303325899801

/-! ## A265394.P6885097099043602345

`(A265396(n+1)+1)/A006047(A000045(n²%(n+1)))`
-/

namespace A265394.P6885097099043602345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265396 (n + 1) + 1 : ℚ) / (A006047 (A000045 (n ^ 2 % (n + 1))).toNat : ℚ)

end

end A265394.P6885097099043602345

/-! ## A265394.P1084270893396790909

`(A265396(n+1)+1)/A020639(Δ[A000040(n+1)])`
-/

namespace A265394.P1084270893396790909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265396 (n + 1) + 1 : ℚ) / (A020639 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A265394.P1084270893396790909

/-! ## A265394.P15944144303705564171

`(A265396(n+1)+1)/A020639(A006093(n+1))`
-/

namespace A265394.P15944144303705564171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265396 (n + 1) + 1 : ℚ) / (A020639 (A006093 (n + 1)).toNat : ℚ)

end

end A265394.P15944144303705564171

/-! ## A265394.P4419214252560178410

`(A265396(n+1)+1)/A020639(A008578(n+2)-1)`
-/

namespace A265394.P4419214252560178410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265396 (n + 1) + 1 : ℚ) / (A020639 (A008578 (n + 2) - 1).toNat : ℚ)

end

end A265394.P4419214252560178410

/-! ## A265394.P41794539686644026

`A273943(A265396(n+1)+1)`
-/

namespace A265394.P41794539686644026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A265396 (n + 1) + 1).toNat

end

end A265394.P41794539686644026

/-! ## A265394.P5020525030365559260

`A318516(A265396(n+1)+1)`
-/

namespace A265394.P5020525030365559260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (A265396 (n + 1) + 1).toNat

end

end A265394.P5020525030365559260

/-! ## A265394.P6451273032234779659

`A103391(xor(1, A265396(n+1)))`
-/

namespace A265394.P6451273032234779659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (Int.xor 1 (A265396 (n + 1))).toNat

end

end A265394.P6451273032234779659

/-! ## A265394.P3281841325304635629

`A328399(xor(1, A265396(n+1)))`
-/

namespace A265394.P3281841325304635629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (Int.xor 1 (A265396 (n + 1))).toNat

end

end A265394.P3281841325304635629

/-! ## A265394.P11587969716366712215

`(A265396(n+1)-A008683(2*(n+1)²)+1)/2`
-/

namespace A265394.P11587969716366712215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265396 (n + 1) - A008683 (2 * (n + 1) ^ 2) + 1 : ℚ) / 2

end

end A265394.P11587969716366712215

/-! ## A265394.P11267285637704680472

`A038572(A265396(n+1)+1)`
-/

namespace A265394.P11267285637704680472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A265396 (n + 1) + 1).toNat

end

end A265394.P11267285637704680472

/-! ## A265394.P6041574205368499795

`A322982(A265396(n+1)+1)`
-/

namespace A265394.P6041574205368499795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322982 (A265396 (n + 1) + 1).toNat

end

end A265394.P6041574205368499795

/-! ## A265394.P17391628797681472360

`A246425(or(1, A265396(n+1)))`
-/

namespace A265394.P17391628797681472360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (Int.lor 1 (A265396 (n + 1))).toNat

end

end A265394.P17391628797681472360

/-! ## A265394.P12045539564652546386

`A246425(∏{d}[A265396(n+1), #])`
-/

namespace A265394.P12045539564652546386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A265394.P12045539564652546386

/-! ## A265394.P8778215334857354665

`A246425(∏{p}[A265396(n+1), #])`
-/

namespace A265394.P8778215334857354665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A265394.P8778215334857354665

/-!
# A265395: Record values in A265388.

The programs for A265395, there is no canonical definition to state claims against.
-/

/-! ## A265395.P10110772043270097111

`A265388(A265394(n+1))`
-/

namespace A265395.P10110772043270097111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (A265394 (n + 1)).toNat

end

end A265395.P10110772043270097111

/-! ## A265395.P6120815265295948608

`record[A265388(n+1)]`
-/

namespace A265395.P6120815265295948608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265395.P6120815265295948608

/-! ## A265395.P3855122590041419034

`A265388(floor(A265396(n+1)/2)+1)`
-/

namespace A265395.P3855122590041419034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (⌊(A265396 (n + 1) : ℚ) / 2⌋ + 1).toNat

end

end A265395.P3855122590041419034

/-! ## A265395.P1714790251471314907

`A265388(ceil((A265396(n+1)+1)/2))`
-/

namespace A265395.P1714790251471314907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 ⌈(A265396 (n + 1) + 1 : ℚ) / 2⌉.toNat

end

end A265395.P1714790251471314907

/-! ## A265395.P3328041893993625960

`A265388(∏{d}[A265396(n+1), A246425(#)])`
-/

namespace A265395.P3328041893993625960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (∏ d ∈ Nat.divisors (f1 n).natAbs, A246425 d).toNat

end

end A265395.P3328041893993625960

/-! ## A265395.P17282191744846259321

`A265388((A265396(n+1)+1)/A000032(C(2, n+2)))`
-/

namespace A265395.P17282191744846259321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (SequenceMachineLib.roundAway ((A265396 (n + 1) + 1 : ℚ) / (A000032 (Nat.choose 2 (n + 2)) : ℚ))).toNat

end

end A265395.P17282191744846259321

/-! ## A265395.P16601939348718457721

`record[Δ[A265388(A158416(n))]]`
-/

namespace A265395.P16601939348718457721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265388 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265395.P16601939348718457721

/-! ## A265395.P17747674617270784050

`record[A033999(n)*A265388(A158416(n))]`
-/

namespace A265395.P17747674617270784050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A265388 (A158416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265395.P17747674617270784050

/-!
# A265396: Numerator of A265395(n)/A265394(n), record values / record positions in A265388.

The programs for A265396, there is no canonical definition to state claims against.
-/

/-! ## A265396.P7704288059210495918

`2*A265394(n+1)-(A000007(n)+1)`
-/

namespace A265396.P7704288059210495918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265394 (n + 1) - (A000007 n + 1)

end

end A265396.P7704288059210495918

/-! ## A265396.P17299202891575677608

`A020639(∏{p}[2*n, #])*A265394(n+1)-1`
-/

namespace A265396.P17299202891575677608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n), p) * A265394 (n + 1) - 1

end

end A265396.P17299202891575677608

/-! ## A265396.P9916020188926717195

`A020639(A000010(n+2))*A265394(n+1)-1`
-/

namespace A265396.P9916020188926717195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A265394 (n + 1) - 1

end

end A265396.P9916020188926717195

/-! ## A265396.P6584597471523889461

`lcm(A265394(n+1), A265395(n+1))/A265394(n+1)`
-/

namespace A265396.P6584597471523889461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A265394 (n + 1)) (A265395 (n + 1)) : ℚ) / (A265394 (n + 1) : ℚ)

end

end A265396.P6584597471523889461

/-! ## A265396.P8717141225536818194

`A020639(A000005(abs(1-4*n)))*A265394(n+1)-1`
-/

namespace A265396.P8717141225536818194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000005 |1 - (4 * n : ℤ)|.toNat).toNat * A265394 (n + 1) - 1

end

end A265396.P8717141225536818194

/-! ## A265396.P437860855245360510

`2*A265394(n+1)-A130713(n+1)!`
-/

namespace A265396.P437860855245360510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265394 (n + 1) - (Nat.factorial (A130713 (n + 1)).toNat : ℤ)

end

end A265396.P437860855245360510

/-! ## A265396.P8553196515514699614

`A020639(A000040(n+1)-1)*A265394(n+1)-1`
-/

namespace A265396.P8553196515514699614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) - 1).toNat * A265394 (n + 1) - 1

end

end A265396.P8553196515514699614

/-! ## A265396.P10994769850727255651

`2*A265394(n+1)-A014963(4*n+2)`
-/

namespace A265396.P10994769850727255651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265394 (n + 1) - A014963 (4 * n + 2)

end

end A265396.P10994769850727255651

/-! ## A265396.P12487903568619443383

`A085090(A265394(n+1))`
-/

namespace A265396.P12487903568619443383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (A265394 (n + 1)).toNat

end

end A265396.P12487903568619443383

/-! ## A265396.P15232711088126847393

`A004273(A265394(n+1)-A000007(n))`
-/

namespace A265396.P15232711088126847393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A265394 (n + 1) - A000007 n).toNat

end

end A265396.P15232711088126847393

/-! ## A265396.P13215052967967460384

`A004273(A265394(n+1))*A057427(n)`
-/

namespace A265396.P13215052967967460384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A265394 (n + 1)).toNat * A057427 n

end

end A265396.P13215052967967460384

/-! ## A265396.P11650555194134311562

`A004273(A265394(n+1)%A001844(n))`
-/

namespace A265396.P11650555194134311562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (Int.tmod (A265394 (n + 1)) (A001844 n)).toNat

end

end A265396.P11650555194134311562

/-! ## A265396.P8245767011655674575

`A004273(A265394(n+1))%A003215(n)`
-/

namespace A265396.P8245767011655674575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004273 (A265394 (n + 1)).toNat) (A003215 n)

end

end A265396.P8245767011655674575

/-! ## A265396.P9144893930506293274

`A004273(xor(A000007(n), A265394(n+1)))`
-/

namespace A265396.P9144893930506293274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (Int.xor (A000007 n) (A265394 (n + 1))).toNat

end

end A265396.P9144893930506293274

/-! ## A265396.P15136755116545375513

`A004273(A265394(n+1)+A057427(n)-1)`
-/

namespace A265396.P15136755116545375513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A265394 (n + 1) + (A057427 n - 1)).toNat

end

end A265396.P15136755116545375513

/-! ## A265396.P4072722174426362760

`A004273(A265394(n+1)-A000038(n)/2)`
-/

namespace A265396.P4072722174426362760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((A265394 (n + 1) : ℚ) - (A000038 n : ℚ) / 2)).toNat

end

end A265396.P4072722174426362760

/-! ## A265396.P13244173121329532665

`A000040(n+1)%2*A004273(A265394(n+1))`
-/

namespace A265396.P13244173121329532665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A004273 (A265394 (n + 1)).toNat

end

end A265396.P13244173121329532665

/-! ## A265396.P14132633853331267295

`A001221(A000961(n+1))*A004273(A265394(n+1))`
-/

namespace A265396.P14132633853331267295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000961 (n + 1)).toNat * A004273 (A265394 (n + 1)).toNat

end

end A265396.P14132633853331267295

/-!
# A265397: a(n) = n - A264977(n).

The programs for A265397, there is no canonical definition to state claims against.
-/

/-! ## A265397.P17500930582819188856

`n-A264977(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265397.P17500930582819188856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A264977 n

end

end A265397.P17500930582819188856

/-! ## A265397.P3570393659079224022

`-(A264977(n)+A001489(n))`
-/

namespace A265397.P3570393659079224022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A264977 n + A001489 n)

end

end A265397.P3570393659079224022

/-! ## A265397.P17644992604102329162

`n-xor(n, A008586(A283979(n)))`
-/

namespace A265397.P17644992604102329162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor (n : ℤ) (A008586 (A283979 n).toNat)

end

end A265397.P17644992604102329162

/-! ## A265397.P640316303779832476

`A057163(A057163(n))+A001489(A264977(n))`
-/

namespace A265397.P640316303779832476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057163 n).toNat + A001489 (A264977 n).toNat

end

end A265397.P640316303779832476

/-! ## A265397.P2722929701838159356

`A035327(A264977(n)+A010078(n+1))`
-/

namespace A265397.P2722929701838159356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A264977 n + A010078 (n + 1)).toNat

end

end A265397.P2722929701838159356

/-! ## A265397.P3576008418841427903

`n-xor(n, A283979(A008574(n)))`
-/

namespace A265397.P3576008418841427903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor (n : ℤ) (A283979 (A008574 n).toNat)

end

end A265397.P3576008418841427903

/-! ## A265397.P8357593599053075918

`n-∑{p}[A277330(n), A048675(#)]`
-/

namespace A265397.P8357593599053075918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A265397.P8357593599053075918

/-! ## A265397.P6546277324918094865

`n-∑{p}[A277330(n), A156552(#)]`
-/

namespace A265397.P6546277324918094865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A265397.P6546277324918094865

/-! ## A265397.P3829421210619701177

`n-∑{p}[A277330(n), A297108(#)]`
-/

namespace A265397.P3829421210619701177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A297108 p

end

end A265397.P3829421210619701177

/-! ## A265397.P8067879939664020239

`A025581(A264977(n)+∑[n])`
-/

namespace A265397.P8067879939664020239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A264977 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A265397.P8067879939664020239

/-!
# A265398: Perform one x^2 -> x+1 reduction for the polynomial with nonnegative integer coefficients that is encoded in the prime factorization of n.

The programs for A265398, the canonical program `A265398.P2745972057709611435` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265398 has offset 1).

The definition of A265398 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A265398.P2745972057709611435

`A064989(A064989(A065330(n+1)))*A064989(A065330(n+1))*A065331(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A265398

/-- `A064989(A064989(A065330(n+1)))*A064989(A065330(n+1))*A065331(n+1)` -/
def P2745972057709611435.Spec : Prop :=
  ∀ n, P2745972057709611435.a n = A265398 (n + 1)

theorem P2745972057709611435.correct : P2745972057709611435.Spec := by
  intro n
  simp only [A265398, Nat.add_sub_cancel]

end A265398

/-! ## A265398.P4648863015516185862

`A064989(A064989(n+1)*A065330(n+1))*A065331(n+1)`
-/

namespace A265398.P4648863015516185862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A064989 (n + 1) * A065330 (n + 1)).toNat * A065331 (n + 1)

end

end A265398.P4648863015516185862

namespace A265398

/-- `A064989(A064989(n+1)*A065330(n+1))*A065331(n+1)` -/
def P4648863015516185862.Spec : Prop :=
  ∀ n, P4648863015516185862.a n = A265398 (n + 1)

end A265398

/-!
# A265399: Repeatedly perform x^2 -> x+1 reduction for polynomial (with nonnegative integer coefficients) encoded in prime factorization of n, until the polynomial is at most degree 1.

The programs for A265399, there is no canonical definition to state claims against.
-/

/-! ## A265399.P12785767285571819713

`2^A265752(n+1)*3^A265753(n+1)`
-/

namespace A265399.P12785767285571819713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A265752 (n + 1) : ℤ) * (3 : ℚ) ^ (A265753 (n + 1) : ℤ)

end

end A265399.P12785767285571819713

/-! ## A265399.P4560690521543097418

`A000079(A265752(n+1))*A000244(A265753(n+1))`
-/

namespace A265399.P4560690521543097418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A265752 (n + 1)).toNat * A000244 (A265753 (n + 1)).toNat

end

end A265399.P4560690521543097418

/-! ## A265399.P13409306214639229739

`A265398(A265398(A265398(A265398(n+1))))`
-/

namespace A265399.P13409306214639229739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265398 (A265398 (A265398 (A265398 (n + 1)).toNat).toNat).toNat

end

end A265399.P13409306214639229739

