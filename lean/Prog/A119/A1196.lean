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
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C050
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
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
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A119600: a(n) = 4*Product_{i=1..n-1} (3^i+1)^2.

The programs for A119600, there is no canonical definition to state claims against.
-/

/-! ## A119600.P4795516676366027627

`4*A290000(n)²`
-/

namespace A119600.P4795516676366027627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A290000 n ^ 2

end

end A119600.P4795516676366027627

/-! ## A119600.P3251447634957331321

`(2*A290000(n))²`
-/

namespace A119600.P3251447634957331321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A290000 n) ^ 2

end

end A119600.P3251447634957331321

/-! ## A119600.P2007747601064848070

`lcm(2, ∏[A094388(n)])²`
-/

namespace A119600.P2007747601064848070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A119600.P2007747601064848070

/-! ## A119600.P10993767449758644127

`(A323716(n)/A103457(n))²`
-/

namespace A119600.P10993767449758644127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A323716 n : ℚ) / (A103457 n : ℚ)) ^ 2

end

end A119600.P10993767449758644127

/-! ## A119600.P6811422924538305846

`(A000007(n)+∏[A094388(n)])²`
-/

namespace A119600.P6811422924538305846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + ∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A119600.P6811422924538305846

/-!
# A119601: a(n) = 4*Product_{i=1..2n-1} (3^i+1)^2.

The programs for A119601, there is no canonical definition to state claims against.
-/

/-! ## A119601.P9253091956425999454

`A119600(2*n)`
-/

namespace A119601.P9253091956425999454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119600 (2 * n)

end

end A119601.P9253091956425999454

/-!
# A119603: Merging prime factors of n-th composite number.

The programs for A119603, there is no canonical definition to state claims against.
-/

/-! ## A119603.P8055541008188217474

`A037276(A002808(n+1))`
-/

namespace A119603.P8055541008188217474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A002808 (n + 1)).toNat

end

end A119603.P8055541008188217474

/-! ## A119603.P3276651876263757437

`A037276(Δ[A053767(n)])`
-/

namespace A119603.P3276651876263757437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (f1 (n + 1) - f1 n).toNat

end

end A119603.P3276651876263757437

/-! ## A119603.P14343859595283045272

`A037276(comp[A351078(n)])`
-/

namespace A119603.P14343859595283045272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A119603.P14343859595283045272

/-! ## A119603.P1492045760021893627

`A037276(A018252(2+n))`
-/

namespace A119603.P1492045760021893627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A018252 (2 + n)).toNat

end

end A119603.P1492045760021893627

/-! ## A119603.P5459439390642646964

`A037276(A141468(3+n))`
-/

namespace A119603.P5459439390642646964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A141468 (3 + n)).toNat

end

end A119603.P5459439390642646964

/-! ## A119603.P11738150529011633844

`A037276(A072668(n+1)+1)`
-/

namespace A119603.P11738150529011633844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A072668 (n + 1) + 1).toNat

end

end A119603.P11738150529011633844

/-! ## A119603.P8514631575056285468

`A037276(comp[C(A006530(n+1), n)])`
-/

namespace A119603.P8514631575056285468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A119603.P8514631575056285468

/-! ## A119603.P10414210074637615064

`A037276(lt[1, A003415(n)])`
-/

namespace A119603.P10414210074637615064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A119603.P10414210074637615064

/-! ## A119603.P4718245489037981548

`A049201(comp[C(A006530(n+1), n)])`
-/

namespace A119603.P4718245489037981548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049201 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A119603.P4718245489037981548

/-!
# A119605: Numbers m such that all groups of order m are Con-Cos groups.

The programs for A119605, there is no canonical definition to state claims against.
-/

/-! ## A119605.P13475012849965109224

`comp[6*(n+1)-a(n-2)]` with `a(0)=0, a(1)=4`
-/

namespace A119605.P13475012849965109224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  (6 * (n + 1) : ℤ) - f1 (n - 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A119605.P13475012849965109224

/-! ## A119605.P3234985384579402469

`lt[A141459(n)+1, 4*n]`
-/

namespace A119605.P3234985384579402469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A119605.P3234985384579402469

/-! ## A119605.P4838071435697483131

`lt[A027642(n), 7*n+1]`
-/

namespace A119605.P4838071435697483131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A119605.P4838071435697483131

/-! ## A119605.P4716225226797083981

`lt[A293813(n), 5%(n+1)]`
-/

namespace A119605.P4716225226797083981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293813 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A119605.P4716225226797083981

/-! ## A119605.P4908368929103379863

`∪[A084116(n+1), Δ[n²]]`
-/

namespace A119605.P4908368929103379863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084116 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119605.P4908368929103379863

/-!
# A119607: Number of primes of the form f(n) - 1, where f(n) is the product of one or more divisors of n.

The programs for A119607, there is no canonical definition to state claims against.
-/

/-! ## A119607.P3236915129822612903

`A113315(A024183(n+1))%A195989(n+1)`
-/

namespace A119607.P3236915129822612903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113315 (A024183 (n + 1)).toNat) (A195989 (n + 1))

end

end A119607.P3236915129822612903

/-! ## A119607.P1361333047318668585

`A212065(A250769(n+3))%A109015(n+1)`
-/

namespace A119607.P1361333047318668585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212065 (A250769 (n + 3)).toNat) (A109015 (n + 1))

end

end A119607.P1361333047318668585

/-! ## A119607.P4169736834911736452

`A282571(xor(3, 2*n))%(n^(n%2)+1)`
-/

namespace A119607.P4169736834911736452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282571 (Nat.xor 3 (2 * n))) (n ^ (n % 2) + 1 : ℤ)

end

end A119607.P4169736834911736452

/-! ## A119607.P10941422723228518572

`and(A093178(n), A139399(A319001(n)))`
-/

namespace A119607.P10941422723228518572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093178 n) (A139399 (A319001 n).toNat)

end

end A119607.P10941422723228518572

/-! ## A119607.P4818832221015893458

`A075928(A116391(n+1))%A275870(n+1)`
-/

namespace A119607.P4818832221015893458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075928 (A116391 (n + 1)).toNat) (A275870 (n + 1))

end

end A119607.P4818832221015893458

/-!
# A119608: Let b(1)=0, b(2)= 1. b(2^m +k) = (b(2^m+1-k) + b(k))/2, 1 <= k <= 2^m, m >= 0. a(n) is numerator of b(n).

The programs for A119608, the canonical program `A119608.P13313804277254006300` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119608 has offset 1).

The definition of A119608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119608.P13313804277254006300

`abs(A065620(A280995(n)))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A119608

/-- `abs(A065620(A280995(n)))` -/
def P13313804277254006300.Spec : Prop :=
  ∀ n, P13313804277254006300.a n = A119608 (n + 1)

theorem P13313804277254006300.correct : P13313804277254006300.Spec := by
  intro n
  simp only [A119608, Nat.add_sub_cancel]

end A119608

/-! ## A119608.P17304308607833656049

`A035327(xor(A056539(n), A135528(n+1)))`
-/

namespace A119608.P17304308607833656049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Int.xor (A056539 n) (A135528 (n + 1))).toNat

end

end A119608.P17304308607833656049

namespace A119608

/-- `A035327(xor(A056539(n), A135528(n+1)))` -/
def P17304308607833656049.Spec : Prop :=
  ∀ n, P17304308607833656049.a n = A119608 (n + 1)

end A119608

/-! ## A119608.P4911394159730618241

`A053646(A145341(n+1))`
-/

namespace A119608.P4911394159730618241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (A145341 (n + 1)).toNat

end

end A119608.P4911394159730618241

namespace A119608

/-- `A053646(A145341(n+1))` -/
def P4911394159730618241.Spec : Prop :=
  ∀ n, P4911394159730618241.a n = A119608 (n + 1)

end A119608

/-! ## A119608.P13866594836931983864

`A053646(A057889(Δ[n²]))`
-/

namespace A119608.P13866594836931983864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (A057889 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A119608.P13866594836931983864

namespace A119608

/-- `A053646(A057889(Δ[n²]))` -/
def P13866594836931983864.Spec : Prop :=
  ∀ n, P13866594836931983864.a n = A119608 (n + 1)

end A119608

/-! ## A119608.P7181399403875396428

`A053646(A163807(Δ[n²]))`
-/

namespace A119608.P7181399403875396428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (A163807 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A119608.P7181399403875396428

namespace A119608

/-- `A053646(A163807(Δ[n²]))` -/
def P7181399403875396428.Spec : Prop :=
  ∀ n, P7181399403875396428.a n = A119608 (n + 1)

end A119608

/-! ## A119608.P8891986216190327985

`A053646(A030101(2*n+1))`
-/

namespace A119608.P8891986216190327985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (A030101 (2 * n + 1)).toNat

end

end A119608.P8891986216190327985

namespace A119608

/-- `A053646(A030101(2*n+1))` -/
def P8891986216190327985.Spec : Prop :=
  ∀ n, P8891986216190327985.a n = A119608 (n + 1)

end A119608

/-! ## A119608.P7372409372444820161

`A053646(A345401(n))`
-/

namespace A119608.P7372409372444820161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (A345401 n).toNat

end

end A119608.P7372409372444820161

namespace A119608

/-- `A053646(A345401(n))` -/
def P7372409372444820161.Spec : Prop :=
  ∀ n, P7372409372444820161.a n = A119608 (n + 1)

end A119608

/-!
# A119609: p^2-p-1 that is not prime, where p is prime.

The programs for A119609, there is no canonical definition to state claims against.
-/

/-! ## A119609.P13372927584510728649

`A046151(A119570(n+1))`
-/

namespace A119609.P13372927584510728649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046151 (A119570 (n + 1)).toNat

end

end A119609.P13372927584510728649

/-! ## A119609.P16802210888795707554

`A028387(A119570(n+1)-2)`
-/

namespace A119609.P16802210888795707554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (A119570 (n + 1) - 2).toNat

end

end A119609.P16802210888795707554

/-! ## A119609.P15621155583204058372

`filter[A306190(n+1), A005171(#)]`
-/

namespace A119609.P15621155583204058372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A119609.P15621155583204058372

/-! ## A119609.P7112992399456721573

`filter[A306190(n+1), A292438(#)]`
-/

namespace A119609.P7112992399456721573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A119609.P7112992399456721573

/-!
# A119610: Number of cases in which the first player is killed in a Russian roulette game where 5 players use a gun with n chambers and the number of bullets can be from 1 to n. Players do not rotate the cylinder after the game starts.

The programs for A119610, the canonical program `A119610.P17902838598756113928` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119610 has offset 1).

The definition of A119610 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119610.P13806085084342272978

`ogf(1/(1-2x-x^5+2x^6))`
-/

namespace A119610.P13806085084342272978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 0, 0, 0, -1, 2] n

end

end A119610.P13806085084342272978

namespace A119610

/-- `ogf(1/(1-2x-x^5+2x^6))` -/
def P13806085084342272978.Spec : Prop :=
  ∀ n, P13806085084342272978.a n = A119610 (n + 1)

end A119610

/-! ## A119610.P17902838598756113928

`2*a(n-1)+a(n-5)-2*a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=33`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A119610

/-- `2*a(n-1)+a(n-5)-2*a(n-6)` -/
def P17902838598756113928.Spec : Prop :=
  ∀ n, P17902838598756113928.a n = A119610 (n + 1)

theorem P17902838598756113928.correct : P17902838598756113928.Spec := by
  intro n
  simp only [A119610, Nat.add_sub_cancel]

end A119610

/-! ## A119610.P10469515230566970095

`floor(2^(n+5)/31)`
-/

namespace A119610.P10469515230566970095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (n + 5) : ℚ) / 31⌋

end

end A119610.P10469515230566970095

namespace A119610

/-- `floor(2^(n+5)/31)` -/
def P10469515230566970095.Spec : Prop :=
  ∀ n, P10469515230566970095.a n = A119610 (n + 1)

end A119610

/-! ## A119610.P4963612746681067593

`char[5*n]+2*a(n-1)` with `a(0)=1`
-/

namespace A119610.P4963612746681067593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 2 * a (n - 1)

end

end A119610.P4963612746681067593

namespace A119610

/-- `char[5*n]+2*a(n-1)` -/
def P4963612746681067593.Spec : Prop :=
  ∀ n, (P4963612746681067593.a n : ℤ) = A119610 (n + 1)

end A119610

/-! ## A119610.P16709232834791898303

`a(n-1)+a(n-1)+val(a(n-1), 16)` with `a(0)=1`
-/

namespace A119610.P16709232834791898303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + SequenceMachineLib.valuation (a (n - 1)) 16)

end

end A119610.P16709232834791898303

namespace A119610

/-- `a(n-1)+a(n-1)+val(a(n-1), 16)` -/
def P16709232834791898303.Spec : Prop :=
  ∀ n, (P16709232834791898303.a n : ℤ) = A119610 (n + 1)

end A119610

/-! ## A119610.P9819683501792226384

`∑[A349842(n)]`
-/

namespace A119610.P9819683501792226384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119610.P9819683501792226384

namespace A119610

/-- `∑[A349842(n)]` -/
def P9819683501792226384.Spec : Prop :=
  ∀ n, P9819683501792226384.a n = A119610 (n + 1)

end A119610

/-! ## A119610.P6416733694428633801

`2*A349842(n)-A079998(n)`
-/

namespace A119610.P6416733694428633801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A349842 n - A079998 n

end

end A119610.P6416733694428633801

namespace A119610

/-- `2*A349842(n)-A079998(n)` -/
def P6416733694428633801.Spec : Prop :=
  ∀ n, P6416733694428633801.a n = A119610 (n + 1)

end A119610

/-! ## A119610.P2690202455234670478

`A349842(n+1)-A079998(n+1)`
-/

namespace A119610.P2690202455234670478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349842 (n + 1) - A079998 (n + 1)

end

end A119610.P2690202455234670478

namespace A119610

/-- `A349842(n+1)-A079998(n+1)` -/
def P2690202455234670478.Spec : Prop :=
  ∀ n, P2690202455234670478.a n = A119610 (n + 1)

end A119610

/-! ## A119610.P5608575074743255812

`A349842(n+1)+A002266(n)-A002266(n+1)`
-/

namespace A119610.P5608575074743255812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349842 (n + 1) + (A002266 n - A002266 (n + 1))

end

end A119610.P5608575074743255812

namespace A119610

/-- `A349842(n+1)+A002266(n)-A002266(n+1)` -/
def P5608575074743255812.Spec : Prop :=
  ∀ n, P5608575074743255812.a n = A119610 (n + 1)

end A119610

/-! ## A119610.P3535551620882959864

`Δ[A178459(n+4)]`
-/

namespace A119610.P3535551620882959864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178459 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119610.P3535551620882959864

namespace A119610

/-- `Δ[A178459(n+4)]` -/
def P3535551620882959864.Spec : Prop :=
  ∀ n, P3535551620882959864.a n = A119610 (n + 1)

end A119610

/-! ## A119610.P6189137953210263553

`xor(A224521(n+1), A224521(n))`
-/

namespace A119610.P6189137953210263553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A224521 (n + 1)) (A224521 n)

end

end A119610.P6189137953210263553

namespace A119610

/-- `xor(A224521(n+1), A224521(n))` -/
def P6189137953210263553.Spec : Prop :=
  ∀ n, P6189137953210263553.a n = A119610 (n + 1)

end A119610

/-! ## A119610.P16438946623307530786

`∑[A183191(∑[n]+1)]`
-/

namespace A119610.P16438946623307530786
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183191 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119610.P16438946623307530786

namespace A119610

/-- `∑[A183191(∑[n]+1)]` -/
def P16438946623307530786.Spec : Prop :=
  ∀ n, P16438946623307530786.a n = A119610 (n + 1)

end A119610

/-!
# A119611: Number of free polyominoes in {4,5} tessellation of the hyperbolic plane.

The programs for A119611, there is no canonical definition to state claims against.
-/

/-! ## A119611.P2341390948110240924

`floor(sqrt(A325113(n!)))`
-/

namespace A119611.P2341390948110240924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A325113 (Nat.factorial n))

end

end A119611.P2341390948110240924

/-! ## A119611.P7237728082913491335

`A024417(ceil(C(n, 2)^(n/3))+1)`
-/

namespace A119611.P7237728082913491335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (⌈(Nat.choose n 2 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉ + 1).toNat

end

end A119611.P7237728082913491335

/-! ## A119611.P7958645866318200441

`A274430(a(n-1))/3*floor(n²/(n+1))` with `a(0)=1, a(1)=1`
-/

namespace A119611.P7958645866318200441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A274430 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) / 3 * (⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋ : ℚ)

end

end A119611.P7958645866318200441

/-! ## A119611.P4993955024002710090

`A347646(A259805(n+1))`
-/

namespace A119611.P4993955024002710090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347646 (A259805 (n + 1)).toNat

end

end A119611.P4993955024002710090

/-!
# A119612: Number of integers of the form (nk)^3/(n^3+k^3), k>=1.

The programs for A119612, there is no canonical definition to state claims against.
-/

/-! ## A119612.P16180898785719813131

`A356877(n)%A386574(n+1)`
-/

namespace A119612.P16180898785719813131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356877 n) (A386574 (n + 1))

end

end A119612.P16180898785719813131

/-! ## A119612.P87301475988224650

`A257992(gcd(A000918(n+2), A132658(n+6)))`
-/

namespace A119612.P87301475988224650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (Int.gcd (A000918 (n + 2)) (A132658 (n + 6)))

end

end A119612.P87301475988224650

/-! ## A119612.P5623961279134462746

`A214757(n+1)%A386574(n+1)`
-/

namespace A119612.P5623961279134462746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214757 (n + 1)) (A386574 (n + 1))

end

end A119612.P5623961279134462746

/-! ## A119612.P798132284911487662

`p?[A098064(n+3)]%A351112(n+1)`
-/

namespace A119612.P798132284911487662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098064 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A351112 (n + 1))

end

end A119612.P798132284911487662

/-! ## A119612.P17627602120399860807

`A335780(n+1)%A386574(n+1)`
-/

namespace A119612.P17627602120399860807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335780 (n + 1)) (A386574 (n + 1))

end

end A119612.P17627602120399860807

/-!
# A119613: Numbers n such that the difference between the largest distinct prime divisor and the smallest distinct prime divisor is a prime.

The programs for A119613, there is no canonical definition to state claims against.
-/

/-! ## A119613.P813118292145948102

`A002808(A154370(n+1))`
-/

namespace A119613.P813118292145948102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A154370 (n + 1)).toNat

end

end A119613.P813118292145948102

/-! ## A119613.P16931471561331311707

`A018252(A154370(n+1)+1)`
-/

namespace A119613.P16931471561331311707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A154370 (n + 1) + 1).toNat

end

end A119613.P16931471561331311707

/-! ## A119613.P17782896580587496489

`A141468(A154370(n+1)+2)`
-/

namespace A119613.P17782896580587496489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A154370 (n + 1) + 2).toNat

end

end A119613.P17782896580587496489

/-! ## A119613.P14226137120816047078

`eq[1, A003415(A046665(n+1))]+1`
-/

namespace A119613.P14226137120816047078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A046665 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119613.P14226137120816047078

/-! ## A119613.P10351902117658587757

`A056653(A154370(n+1)%A069074(n))`
-/

namespace A119613.P10351902117658587757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (Int.tmod (A154370 (n + 1)) (A069074 n)).toNat

end

end A119613.P10351902117658587757

/-! ## A119613.P12681194345109678909

`A056653(or(A000007(n), A154370(n+1)))`
-/

namespace A119613.P12681194345109678909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (Int.lor (A000007 n) (A154370 (n + 1))).toNat

end

end A119613.P12681194345109678909

/-! ## A119613.P8933158346539100477

`or(A000038(n), A056653(A154370(n+1)))`
-/

namespace A119613.P8933158346539100477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A056653 (A154370 (n + 1)).toNat)

end

end A119613.P8933158346539100477

/-! ## A119613.P6379022956129208339

`A056653(A154370(n+1))%Δ[A254473(n)]`
-/

namespace A119613.P6379022956129208339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056653 (A154370 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A119613.P6379022956129208339

/-! ## A119613.P9233073007787534415

`A056653(A154370(n+1))+A000007(n+1)`
-/

namespace A119613.P9233073007787534415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (A154370 (n + 1)).toNat + A000007 (n + 1)

end

end A119613.P9233073007787534415

/-! ## A119613.P14920173002546307524

`A056653(A154370(n+1))+A000038(A008706(n))`
-/

namespace A119613.P14920173002546307524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (A154370 (n + 1)).toNat + A000038 (A008706 n).toNat

end

end A119613.P14920173002546307524

/-! ## A119613.P7052548669647402677

`A056653(A154370(n+1))+A000038(A017209(n))`
-/

namespace A119613.P7052548669647402677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (A154370 (n + 1)).toNat + A000038 (A017209 n).toNat

end

end A119613.P7052548669647402677

/-! ## A119613.P12415173912169459792

`A056653(A154370(n+1))+A055672(A055672(n))`
-/

namespace A119613.P12415173912169459792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (A154370 (n + 1)).toNat + A055672 (A055672 n).toNat

end

end A119613.P12415173912169459792

/-!
# A119615: Write down the primes 2,3,5,... but omit any prime (such as 23 or 31 or 71 ...) that has appeared as a string earlier in the sequence.

The programs for A119615, there is no canonical definition to state claims against.
-/

/-! ## A119615.P15952147484257931963

`A000040(lt[A010815(2*(n+2)), A356225(3*n+4)])`
-/

namespace A119615.P15952147484257931963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356225 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A119615.P15952147484257931963

/-! ## A119615.P4611201777845321943

`A000040(lt[A333381(3*(n+1)), A318360(2*(n+2))])`
-/

namespace A119615.P4611201777845321943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318360 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A119615.P4611201777845321943

/-! ## A119615.P17427957484043143682

`A095323(A007095(n+1))%A271658(2*(n+1))`
-/

namespace A119615.P17427957484043143682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095323 (A007095 (n + 1)).toNat) (A271658 (2 * (n + 1)))

end

end A119615.P17427957484043143682

/-! ## A119615.P17420141381239403335

`eq[A003415(n), A182469(A375128(n+1))]`
-/

namespace A119615.P17420141381239403335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182469 (A375128 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119615.P17420141381239403335

/-! ## A119615.P7519125102721347885

`eq[A007920(n), A151721(n)]`
-/

namespace A119615.P7519125102721347885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119615.P7519125102721347885

/-!
# A119616: Second elementary symmetric function of divisors of n.

The programs for A119616, the canonical program `A119616.P87110889445347598` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119616 has offset 1).

The definition of A119616 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119616.P87110889445347598

`(A000203(n+1)²-A001157(n+1))/2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A119616

/-- `(A000203(n+1)²-A001157(n+1))/2` -/
def P87110889445347598.Spec : Prop :=
  ∀ n, P87110889445347598.a n = (A119616 (n + 1) : ℚ)

end A119616

/-! ## A119616.P5150469025334733083

`A066293(n+1)/2`
-/

namespace A119616.P5150469025334733083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066293 (n + 1) : ℚ) / 2

end

end A119616.P5150469025334733083

namespace A119616

/-- `A066293(n+1)/2` -/
def P5150469025334733083.Spec : Prop :=
  ∀ n, P5150469025334733083.a n = (A119616 (n + 1) : ℚ)

end A119616

/-! ## A119616.P17618775117548769230

`A066294(n+1)/2+n+1`
-/

namespace A119616.P17618775117548769230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066294 (n + 1) : ℚ) / 2 + (n + 1 : ℚ)

end

end A119616.P17618775117548769230

namespace A119616

/-- `A066294(n+1)/2+n+1` -/
def P17618775117548769230.Spec : Prop :=
  ∀ n, P17618775117548769230.a n = (A119616 (n + 1) : ℚ)

end A119616

/-! ## A119616.P8048662530174871991

`A067692(n+1)-∑{d}[ϕ²-(ϕ-n), #²]`
-/

namespace A119616.P8048662530174871991
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067692 (n + 1) - ((∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d ^ 2 : ℕ) : ℤ)

end

end A119616.P8048662530174871991

namespace A119616

/-- `A067692(n+1)-∑{d}[ϕ²-(ϕ-n), #²]` -/
def P8048662530174871991.Spec : Prop :=
  ∀ n, P8048662530174871991.a n = A119616 (n + 1)

end A119616

/-! ## A119616.P4422921716700315122

`A184387(n+1)-∑{d}[n+1, #*(#+1)/2]`
-/

namespace A119616.P4422921716700315122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184387 (n + 1) : ℚ) - ∑ d ∈ Nat.divisors (f1 n), (d * (d + 1) : ℚ) / 2

end

end A119616.P4422921716700315122

namespace A119616

/-- `A184387(n+1)-∑{d}[n+1, #*(#+1)/2]` -/
def P4422921716700315122.Spec : Prop :=
  ∀ n, P4422921716700315122.a n = (A119616 (n + 1) : ℚ)

end A119616

/-! ## A119616.P6525625346191770503

`A067692(n+1)-A001157(n+1)`
-/

namespace A119616.P6525625346191770503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067692 (n + 1) - A001157 (n + 1)

end

end A119616.P6525625346191770503

namespace A119616

/-- `A067692(n+1)-A001157(n+1)` -/
def P6525625346191770503.Spec : Prop :=
  ∀ n, P6525625346191770503.a n = A119616 (n + 1)

end A119616

/-! ## A119616.P7693223160085380948

`A072861(n+1)-A067692(n+1)`
-/

namespace A119616.P7693223160085380948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072861 (n + 1) - A067692 (n + 1)

end

end A119616.P7693223160085380948

namespace A119616

/-- `A072861(n+1)-A067692(n+1)` -/
def P7693223160085380948.Spec : Prop :=
  ∀ n, P7693223160085380948.a n = A119616 (n + 1)

end A119616

/-! ## A119616.P14348463629944821622

`A184387(n+1)-A007437(n+1)`
-/

namespace A119616.P14348463629944821622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184387 (n + 1) - A007437 (n + 1)

end

end A119616.P14348463629944821622

namespace A119616

/-- `A184387(n+1)-A007437(n+1)` -/
def P14348463629944821622.Spec : Prop :=
  ∀ n, P14348463629944821622.a n = A119616 (n + 1)

end A119616

/-! ## A119616.P16476735656289483587

`A000203(n+1)²-A067692(n+1)`
-/

namespace A119616.P16476735656289483587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) ^ 2 - A067692 (n + 1)

end

end A119616.P16476735656289483587

namespace A119616

/-- `A000203(n+1)²-A067692(n+1)` -/
def P16476735656289483587.Spec : Prop :=
  ∀ n, P16476735656289483587.a n = A119616 (n + 1)

end A119616

/-! ## A119616.P14436012515520229367

`(A072861(n+1)-A001157(n+1))/2`
-/

namespace A119616.P14436012515520229367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072861 (n + 1) - A001157 (n + 1) : ℚ) / 2

end

end A119616.P14436012515520229367

namespace A119616

/-- `(A072861(n+1)-A001157(n+1))/2` -/
def P14436012515520229367.Spec : Prop :=
  ∀ n, P14436012515520229367.a n = (A119616 (n + 1) : ℚ)

end A119616

/-! ## A119616.P14629859072827313008

`(A143348(n+1)²-A001157(n+1))/2`
-/

namespace A119616.P14629859072827313008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143348 (n + 1) ^ 2 - A001157 (n + 1) : ℚ) / 2

end

end A119616.P14629859072827313008

namespace A119616

/-- `(A143348(n+1)²-A001157(n+1))/2` -/
def P14629859072827313008.Spec : Prop :=
  ∀ n, P14629859072827313008.a n = (A119616 (n + 1) : ℚ)

end A119616

/-! ## A119616.P2479808904840201887

`∑{d}[n+1, A000082(#)*A318677((n+1)/#)]`
-/

namespace A119616.P2479808904840201887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000082 d * A318677 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A119616.P2479808904840201887

namespace A119616

/-- `∑{d}[n+1, A000082(#)*A318677((n+1)/#)]` -/
def P2479808904840201887.Spec : Prop :=
  ∀ n, P2479808904840201887.a n = A119616 (n + 1)

end A119616

/-! ## A119616.P1356841527011177907

`∑{d}[n+1, A064987(#)*A318675((n+1)/#)]`
-/

namespace A119616.P1356841527011177907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064987 d * A318675 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A119616.P1356841527011177907

namespace A119616

/-- `∑{d}[n+1, A064987(#)*A318675((n+1)/#)]` -/
def P1356841527011177907.Spec : Prop :=
  ∀ n, P1356841527011177907.a n = A119616 (n + 1)

end A119616

/-! ## A119616.P6453463311820502058

`A000217(∑{d}[n+1, #])-∑{d}[n+1, #*(#+1)/2]`
-/

namespace A119616.P6453463311820502058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (∑ d ∈ Nat.divisors (f1 n), d) : ℚ) - ∑ d ∈ Nat.divisors (f2 n), (d * (d + 1) : ℚ) / 2

end

end A119616.P6453463311820502058

namespace A119616

/-- `A000217(∑{d}[n+1, #])-∑{d}[n+1, #*(#+1)/2]` -/
def P6453463311820502058.Spec : Prop :=
  ∀ n, P6453463311820502058.a n = (A119616 (n + 1) : ℚ)

end A119616

/-! ## A119616.P3983682842711390525

`A000217(A000203(n+1))-A007437(n+1)`
-/

namespace A119616.P3983682842711390525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000203 (n + 1)).toNat - A007437 (n + 1)

end

end A119616.P3983682842711390525

namespace A119616

/-- `A000217(A000203(n+1))-A007437(n+1)` -/
def P3983682842711390525.Spec : Prop :=
  ∀ n, P3983682842711390525.a n = A119616 (n + 1)

end A119616

/-! ## A119616.P9633984392095432104

`A014682(A066293(n+1))`
-/

namespace A119616.P9633984392095432104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A066293 (n + 1)).toNat

end

end A119616.P9633984392095432104

namespace A119616

/-- `A014682(A066293(n+1))` -/
def P9633984392095432104.Spec : Prop :=
  ∀ n, P9633984392095432104.a n = A119616 (n + 1)

end A119616

/-!
# A119617: Integers of the form c(n)/b(n) where c(n+1)=c(n)+(n+1)^4 with c(0)=1 and b(n+1)=b(n)+(n+1)^2 with b(0)=1.

The programs for A119617, the canonical program `A119617.P1083742252120374484` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119617 has offset 1).

The definition of A119617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119617.P16856769310404199857

`ogf((1+6x+16x^2+6x^3+x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A119617.P16856769310404199857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 16, 6, 1] [1, -1, -2, 2, 1, -1] n

end

end A119617.P16856769310404199857

namespace A119617

/-- `ogf((1+6x+16x^2+6x^3+x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P16856769310404199857.Spec : Prop :=
  ∀ n, P16856769310404199857.a n = A119617 (n + 1)

end A119617

/-! ## A119617.P1083742252120374484

`(30*(n+1)*n-3*(2*(n+1)-1)*(-1)^(n+1)+5)/8`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A119617

/-- `(30*(n+1)*n-3*(2*(n+1)-1)*(-1)^(n+1)+5)/8` -/
def P1083742252120374484.Spec : Prop :=
  ∀ n, P1083742252120374484.a n = (A119617 (n + 1) : ℚ)

end A119617

/-! ## A119617.P10510640788078754931

`3*A247643(n)-2`
-/

namespace A119617.P10510640788078754931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A247643 n - 2

end

end A119617.P10510640788078754931

namespace A119617

/-- `3*A247643(n)-2` -/
def P10510640788078754931.Spec : Prop :=
  ∀ n, P10510640788078754931.a n = A119617 (n + 1)

end A119617

/-! ## A119617.P1760691633568422701

`1+6*A085787(n)`
-/

namespace A119617.P1760691633568422701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 6 * A085787 n

end

end A119617.P1760691633568422701

namespace A119617

/-- `1+6*A085787(n)` -/
def P1760691633568422701.Spec : Prop :=
  ∀ n, P1760691633568422701.a n = A119617 (n + 1)

end A119617

/-! ## A119617.P1801770552657151448

`∑[A298028(n)+3*n]`
-/

namespace A119617.P1801770552657151448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298028 n + (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119617.P1801770552657151448

namespace A119617

/-- `∑[A298028(n)+3*n]` -/
def P1801770552657151448.Spec : Prop :=
  ∀ n, P1801770552657151448.a n = A119617 (n + 1)

end A119617

/-! ## A119617.P15636210797859828508

`∑[A280166(n)+7*n]`
-/

namespace A119617.P15636210797859828508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280166 n + (7 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119617.P15636210797859828508

namespace A119617

/-- `∑[A280166(n)+7*n]` -/
def P15636210797859828508.Spec : Prop :=
  ∀ n, P15636210797859828508.a n = A119617 (n + 1)

end A119617

/-! ## A119617.P372145151602904319

`A195162(n)+A005891(n)`
-/

namespace A119617.P372145151602904319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195162 n + A005891 n

end

end A119617.P372145151602904319

namespace A119617

/-- `A195162(n)+A005891(n)` -/
def P372145151602904319.Spec : Prop :=
  ∀ n, P372145151602904319.a n = A119617 (n + 1)

end A119617

/-! ## A119617.P10052722634580699120

`A273368(n)+A247643(n)`
-/

namespace A119617.P10052722634580699120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273368 n + A247643 n

end

end A119617.P10052722634580699120

namespace A119617

/-- `A273368(n)+A247643(n)` -/
def P10052722634580699120.Spec : Prop :=
  ∀ n, P10052722634580699120.a n = A119617 (n + 1)

end A119617

/-! ## A119617.P2857894571096177482

`∪[A134153(n), A134154(n)]`
-/

namespace A119617.P2857894571096177482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134154 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119617.P2857894571096177482

namespace A119617

/-- `∪[A134153(n), A134154(n)]` -/
def P2857894571096177482.Spec : Prop :=
  ∀ n, (P2857894571096177482.a n : ℤ) = A119617 (n + 1)

end A119617

/-! ## A119617.P8690001753869287539

`∑[A165988(n)+A008486(n)]`
-/

namespace A119617.P8690001753869287539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165988 n + A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119617.P8690001753869287539

namespace A119617

/-- `∑[A165988(n)+A008486(n)]` -/
def P8690001753869287539.Spec : Prop :=
  ∀ n, P8690001753869287539.a n = A119617 (n + 1)

end A119617

/-! ## A119617.P1748516142346005882

`A062317(n+1)+A028895(n)`
-/

namespace A119617.P1748516142346005882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062317 (n + 1) + A028895 n

end

end A119617.P1748516142346005882

namespace A119617

/-- `A062317(n+1)+A028895(n)` -/
def P1748516142346005882.Spec : Prop :=
  ∀ n, P1748516142346005882.a n = A119617 (n + 1)

end A119617

/-! ## A119617.P475554133289132355

`A135556(n+1)+A045943(n)`
-/

namespace A119617.P475554133289132355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135556 (n + 1) + A045943 n

end

end A119617.P475554133289132355

namespace A119617

/-- `A135556(n+1)+A045943(n)` -/
def P475554133289132355.Spec : Prop :=
  ∀ n, P475554133289132355.a n = A119617 (n + 1)

end A119617

/-! ## A119617.P15957781222750588978

`A181433(n+1)+A074378(n)`
-/

namespace A119617.P15957781222750588978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181433 (n + 1) + A074378 n

end

end A119617.P15957781222750588978

namespace A119617

/-- `A181433(n+1)+A074378(n)` -/
def P15957781222750588978.Spec : Prop :=
  ∀ n, P15957781222750588978.a n = A119617 (n + 1)

end A119617

/-! ## A119617.P441165612829128502

`A375352(n+1)+A110660(n)`
-/

namespace A119617.P441165612829128502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375352 (n + 1) + A110660 n

end

end A119617.P441165612829128502

namespace A119617

/-- `A375352(n+1)+A110660(n)` -/
def P441165612829128502.Spec : Prop :=
  ∀ n, P441165612829128502.a n = A119617 (n + 1)

end A119617

/-! ## A119617.P14740319963936401759

`A273367(n)+A219190(n+1)`
-/

namespace A119617.P14740319963936401759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273367 n + A219190 (n + 1)

end

end A119617.P14740319963936401759

namespace A119617

/-- `A273367(n)+A219190(n+1)` -/
def P14740319963936401759.Spec : Prop :=
  ∀ n, P14740319963936401759.a n = A119617 (n + 1)

end A119617

/-! ## A119617.P14292571709097055563

`A299645(n+1)+A212965(n)`
-/

namespace A119617.P14292571709097055563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299645 (n + 1) + A212965 n

end

end A119617.P14292571709097055563

namespace A119617

/-- `A299645(n+1)+A212965(n)` -/
def P14292571709097055563.Spec : Prop :=
  ∀ n, P14292571709097055563.a n = A119617 (n + 1)

end A119617

/-! ## A119617.P3257726775162161076

`A069125(n+1)-A132354(n)`
-/

namespace A119617.P3257726775162161076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069125 (n + 1) - A132354 n

end

end A119617.P3257726775162161076

namespace A119617

/-- `A069125(n+1)-A132354(n)` -/
def P3257726775162161076.Spec : Prop :=
  ∀ n, P3257726775162161076.a n = A119617 (n + 1)

end A119617

/-! ## A119617.P4472562518058941512

`A069099(n+1)-A317300(n)`
-/

namespace A119617.P4472562518058941512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069099 (n + 1) - A317300 n

end

end A119617.P4472562518058941512

namespace A119617

/-- `A069099(n+1)-A317300(n)` -/
def P4472562518058941512.Spec : Prop :=
  ∀ n, P4472562518058941512.a n = A119617 (n + 1)

end A119617

/-! ## A119617.P13685734000964527235

`A321383(n+1)-A132356(n)`
-/

namespace A119617.P13685734000964527235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321383 (n + 1) - A132356 n

end

end A119617.P13685734000964527235

namespace A119617

/-- `A321383(n+1)-A132356(n)` -/
def P13685734000964527235.Spec : Prop :=
  ∀ n, P13685734000964527235.a n = A119617 (n + 1)

end A119617

/-! ## A119617.P1354133029862568791

`A273366(n)-A321383(n+1)`
-/

namespace A119617.P1354133029862568791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273366 n - A321383 (n + 1)

end

end A119617.P1354133029862568791

namespace A119617

/-- `A273366(n)-A321383(n+1)` -/
def P1354133029862568791.Spec : Prop :=
  ∀ n, P1354133029862568791.a n = A119617 (n + 1)

end A119617

/-!
# A119618: Inverse permutation to sequence A114792 (if sequence A114792 is indeed a permutation of the positive integers).

The programs for A119618, there is no canonical definition to state claims against.
-/

/-! ## A119618.P10991255154916392168

`A113321(n+1)-A052412(A326849(n))`
-/

namespace A119618.P10991255154916392168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113321 (n + 1) - A052412 (A326849 n).toNat

end

end A119618.P10991255154916392168

/-! ## A119618.P2526513918940718455

`A219636(n+2)-∑[n]%(n+1)-A052412(A326849(n))`
-/

namespace A119618.P2526513918940718455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219636 (n + 2) - (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ) - A052412 (A326849 n).toNat

end

end A119618.P2526513918940718455

/-! ## A119618.P9332261080424022763

`A113324(A113323(n+1))-A052412(A326849(n))`
-/

namespace A119618.P9332261080424022763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113324 (A113323 (n + 1)).toNat - A052412 (A326849 n).toNat

end

end A119618.P9332261080424022763

/-! ## A119618.P7624286793692406051

`A002251(A054084(n+2))-1-A052412(A326849(n))`
-/

namespace A119618.P7624286793692406051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A054084 (n + 2)).toNat - 1 - A052412 (A326849 n).toNat

end

end A119618.P7624286793692406051

/-! ## A119618.P8560067546512863048

`A054084(A014681(n+2))-1-A052412(A326849(n))`
-/

namespace A119618.P8560067546512863048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054084 (A014681 (n + 2)).toNat - 1 - A052412 (A326849 n).toNat

end

end A119618.P8560067546512863048

/-!
# A119619: a(n) = Product_{i=1..n} i / gcd(i,n).

The programs for A119619, the canonical program `A119619.P8213995835525385254` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119619 has offset 1).

The definition of A119619 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067911, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A119619.P8213995835525385254

`A000142(n+1)/A067911(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A119619

/-- `A000142(n+1)/A067911(n+1)` -/
def P8213995835525385254.Spec : Prop :=
  ∀ n, P8213995835525385254.a n = (A119619 (n + 1) : ℚ)

end A119619

/-! ## A119619.P1698376668027603376

`∏{d}[n+1, A001783(#)]`
-/

namespace A119619.P1698376668027603376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A001783 d

end

end A119619.P1698376668027603376

namespace A119619

/-- `∏{d}[n+1, A001783(#)]` -/
def P1698376668027603376.Spec : Prop :=
  ∀ n, P1698376668027603376.a n = A119619 (n + 1)

end A119619

/-! ## A119619.P15708015734226776912

`n!/A051190(n+1)`
-/

namespace A119619.P15708015734226776912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A051190 (n + 1) : ℚ)

end

end A119619.P15708015734226776912

namespace A119619

/-- `n!/A051190(n+1)` -/
def P15708015734226776912.Spec : Prop :=
  ∀ n, P15708015734226776912.a n = (A119619 (n + 1) : ℚ)

end A119619

/-! ## A119619.P14352462663139482062

`A000142(n)/A051190(n+1)`
-/

namespace A119619.P14352462663139482062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A051190 (n + 1) : ℚ)

end

end A119619.P14352462663139482062

namespace A119619

/-- `A000142(n)/A051190(n+1)` -/
def P14352462663139482062.Spec : Prop :=
  ∀ n, P14352462663139482062.a n = (A119619 (n + 1) : ℚ)

end A119619

/-! ## A119619.P16026067415563412207

`A051696(n+1)/A067911(n+1)*A095996(n+1)`
-/

namespace A119619.P16026067415563412207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051696 (n + 1) : ℚ) / (A067911 (n + 1) : ℚ) * (A095996 (n + 1) : ℚ)

end

end A119619.P16026067415563412207

namespace A119619

/-- `A051696(n+1)/A067911(n+1)*A095996(n+1)` -/
def P16026067415563412207.Spec : Prop :=
  ∀ n, P16026067415563412207.a n = (A119619 (n + 1) : ℚ)

end A119619

/-! ## A119619.P4403197227811186633

`A062763(n+2)/A067911(n+1)*A095996(n+2)`
-/

namespace A119619.P4403197227811186633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062763 (n + 2) : ℚ) / (A067911 (n + 1) : ℚ) * (A095996 (n + 2) : ℚ)

end

end A119619.P4403197227811186633

namespace A119619

/-- `A062763(n+2)/A067911(n+1)*A095996(n+2)` -/
def P4403197227811186633.Spec : Prop :=
  ∀ n, P4403197227811186633.a n = (A119619 (n + 1) : ℚ)

end A119619

/-!
# A119620: Number of partitions of floor(3*n/2) into n parts each from {1,2,...,n}.

The programs for A119620, there is no canonical definition to state claims against.
-/

/-! ## A119620.P5918638637444953784

`A000041(floor(n/2))`
-/

namespace A119620.P5918638637444953784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌊(n : ℚ) / 2⌋.toNat

end

end A119620.P5918638637444953784

/-! ## A119620.P1846256991811952178

`A035363(and(n, -2))`
-/

namespace A119620.P1846256991811952178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (Int.land (n : ℤ) (-2)).toNat

end

end A119620.P1846256991811952178

/-! ## A119620.P13572043427290676409

`A035363(or(1, n)-1)`
-/

namespace A119620.P13572043427290676409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (Nat.lor 1 n - 1)

end

end A119620.P13572043427290676409

/-! ## A119620.P5318928374053011406

`A035363(n-n%2)`
-/

namespace A119620.P5318928374053011406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n - n % 2)

end

end A119620.P5318928374053011406

/-! ## A119620.P13612726111633865793

`A000065(floor(n/2))+1`
-/

namespace A119620.P13612726111633865793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 ⌊(n : ℚ) / 2⌋.toNat + 1

end

end A119620.P13612726111633865793

/-! ## A119620.P8913447446821007934

`A035363(2*floor(n/2))`
-/

namespace A119620.P8913447446821007934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * ⌊(n : ℚ) / 2⌋).toNat

end

end A119620.P8913447446821007934

/-! ## A119620.P6574925717524660433

`root(A000041(and(n, -2)/2), 2)²`
-/

namespace A119620.P6574925717524660433
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A000041 (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-2) : ℚ) / 2)).toNat : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A119620.P6574925717524660433

/-! ## A119620.P16984185903491300488

`or(A000041(ceil((n-1)/2)), char[1])`
-/

namespace A119620.P16984185903491300488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000041 ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A119620.P16984185903491300488

/-! ## A119620.P2026415429885165290

`(A000041(n-∑[and(1, n)])^(1-1/2))²`
-/

namespace A119620.P2026415429885165290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A000041 (n - ∑ j ∈ Finset.range (n + 1), f1 j) : ℝ) ^ (1 - (1 : ℚ) / 2 : ℝ)) ^ 2

end

end A119620.P2026415429885165290

/-! ## A119620.P10022273454115764368

`A194451(A267458(n))`
-/

namespace A119620.P10022273454115764368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194451 (A267458 n).toNat

end

end A119620.P10022273454115764368

/-! ## A119620.P17724186759135441217

`∑[A002865(A057979(n+1))]`
-/

namespace A119620.P17724186759135441217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A057979 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119620.P17724186759135441217

/-! ## A119620.P15584636894033742036

`A035444(and(2*n, -3))`
-/

namespace A119620.P15584636894033742036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (Int.land (2 * n : ℤ) (-3)).toNat

end

end A119620.P15584636894033742036

/-! ## A119620.P4353663079324743720

`A035377(3*floor(n/2))`
-/

namespace A119620.P4353663079324743720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (3 * ⌊(n : ℚ) / 2⌋).toNat

end

end A119620.P4353663079324743720

/-! ## A119620.P6640851644467575523

`∑{#}[floor(n/2), A002865(#)]`
-/

namespace A119620.P6640851644467575523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A002865 k

end

end A119620.P6640851644467575523

/-!
# A119622: Numbers m such that no group of order m is a Con-Cos group.

The programs for A119622, there is no canonical definition to state claims against.
-/

/-! ## A119622.P12635702053532678158

`∑[6-a(n-2)]` with `a(0)=4, a(1)=8, a(2)=4, a(3)=2`
-/

namespace A119622.P12635702053532678158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 8, 4, 2] fun n f1 =>
  6 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119622.P12635702053532678158

/-! ## A119622.P2747339212858482378

`record[A256420(n+5)]`
-/

namespace A119622.P2747339212858482378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256420 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119622.P2747339212858482378

/-! ## A119622.P5647998982132646111

`2*comp[A174530(n)]`
-/

namespace A119622.P5647998982132646111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174530 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A119622.P5647998982132646111

/-!
# A119623: Composite numbers for which the second elementary symmetric function of divisors (s2) is prime.

The programs for A119623, there is no canonical definition to state claims against.
-/

/-! ## A119623.P12995450838242320655

`eq[A100802(n), A211991(A155212(n))]`
-/

namespace A119623.P12995450838242320655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100802 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211991 (A155212 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119623.P12995450838242320655

/-! ## A119623.P5346032810190159026

`eq[A001222(A155212(n)), A326852(n)]`
-/

namespace A119623.P5346032810190159026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A155212 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119623.P5346032810190159026

/-! ## A119623.P5972130884531460082

`lt[A347131(A155212(n)), A020513(n)]`
-/

namespace A119623.P5972130884531460082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347131 (A155212 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119623.P5972130884531460082

/-! ## A119623.P18119438481466013311

`A096014(A092911(n+1)*A194829(n+1))`
-/

namespace A119623.P18119438481466013311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096014 (A092911 (n + 1) * A194829 (n + 1)).toNat

end

end A119623.P18119438481466013311

/-!
# A119624: Least k>0 such that, for n>1, 2*n^k + 1 is prime; or 0 if no such prime possible as 2*n^k + 1 is 0 mod(3).

The programs for A119624, there is no canonical definition to state claims against.
-/

/-! ## A119624.P18197839553946481141

`and(A094097(A001263(n+1)), A163806(n))`
-/

namespace A119624.P18197839553946481141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094097 (A001263 (n + 1)).toNat) (A163806 n)

end

end A119624.P18197839553946481141

/-! ## A119624.P5618252718310665510

`A138066(A061511(n+1))`
-/

namespace A119624.P5618252718310665510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138066 (A061511 (n + 1)).toNat

end

end A119624.P5618252718310665510

/-! ## A119624.P6102836319516192171

`A138066(A158699(n+1))`
-/

namespace A119624.P6102836319516192171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138066 (A158699 (n + 1)).toNat

end

end A119624.P6102836319516192171

/-! ## A119624.P14403167200784706308

`A138066(A247107(n+1))`
-/

namespace A119624.P14403167200784706308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138066 (A247107 (n + 1)).toNat

end

end A119624.P14403167200784706308

/-! ## A119624.P9730754045933427978

`A138066(A138142(n+2))`
-/

namespace A119624.P9730754045933427978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138066 (A138142 (n + 2)).toNat

end

end A119624.P9730754045933427978

/-!
# A119625: Start with 17 and repeatedly reverse the digits and add 1 to get the next term.

The programs for A119625, there is no canonical definition to state claims against.
-/

/-! ## A119625.P7642741541647068448

`A004086(a(n-1))+1` with `a(0)=17`
-/

namespace A119625.P7642741541647068448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [17] fun n a =>
  A004086 (a (n - 1)).toNat + 1

end

end A119625.P7642741541647068448

/-!
# A119630: Orders of non-Abelian simple groups of rank at least two.

The programs for A119630, there is no canonical definition to state claims against.
-/

/-! ## A119630.P3739869178122615572

`A001034(A041711(n))%A014601(A109379(3*n+1))`
-/

namespace A119630.P3739869178122615572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001034 (A041711 n).toNat) (A014601 (A109379 (3 * n + 1)).toNat)

end

end A119630.P3739869178122615572

/-!
# A119631: Orders of non-Abelian simple groups of rank at least four.

The programs for A119631, there is no canonical definition to state claims against.
-/

/-! ## A119631.P218855397670542926

`A119630(A014601(n)^A109375(n))`
-/

namespace A119631.P218855397670542926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119630 (SequenceMachineLib.roundAway ((A014601 n : ℚ) ^ (A109375 n : ℤ))).toNat

end

end A119631.P218855397670542926

/-!
# A119632: Lengths of successive runs in A160357, where a run here means a string of alternating terms.

The programs for A119632, there is no canonical definition to state claims against.
-/

/-! ## A119632.P8018183716316083664

`Δ[A064970(n+1)]`
-/

namespace A119632.P8018183716316083664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119632.P8018183716316083664

/-! ## A119632.P16441429026169426470

`A064970(n+2)-A064970(n+1)`
-/

namespace A119632.P16441429026169426470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064970 (n + 2) - A064970 (n + 1)

end

end A119632.P16441429026169426470

/-! ## A119632.P7539315496893631125

`Δ[eq[A160357(n+1), A160357(n)]]`
-/

namespace A119632.P7539315496893631125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A119632.P7539315496893631125

/-! ## A119632.P4098579546565722862

`Δ[record[A160356(n+1)*A160357(n)]]`
-/

namespace A119632.P4098579546565722862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160356 (n + 1) * A160357 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119632.P4098579546565722862

/-! ## A119632.P197664072284382721

`Δ[record[A064970(A028920(n))]]`
-/

namespace A119632.P197664072284382721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064970 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119632.P197664072284382721

/-!
# A119633: a(n) = (A046717(n))^3.

The programs for A119633, the canonical program `A119633.P3368979013141627521` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119633 has offset 1).

The definition of A119633 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A046717(n+1)^3` (program `A119633.P3368979013141627521`, by `A119633.P3368979013141627521.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A119633.P3368979013141627521

`A046717(n+1)^3`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A119633

/-- `A046717(n+1)^3` -/
def P3368979013141627521.Spec : Prop :=
  ∀ n, P3368979013141627521.a n = A119633 (n + 1)

theorem P3368979013141627521.correct : P3368979013141627521.Spec := by
  intro n
  simp only [A119633, Nat.add_sub_cancel]

end A119633

/-! ## A119633.P11736823287822819702

`((-1)^(n+1)+3^(1+n+1)+(-1)^(n+1)*3^(1+2*(n+1))+27^(n+1))/8`
-/

namespace A119633.P11736823287822819702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ (n + 1) + (3 ^ (1 + (n + 1)) : ℤ) + (-1) ^ (n + 1) * (3 ^ (1 + 2 * (n + 1)) : ℤ) + (27 ^ (n + 1) : ℤ) : ℚ) / 8

end

end A119633.P11736823287822819702

namespace A119633

/-- `((-1)^(n+1)+3^(1+n+1)+(-1)^(n+1)*3^(1+2*(n+1))+27^(n+1))/8` -/
def P11736823287822819702.Spec : Prop :=
  ∀ n, P11736823287822819702.a n = (A119633 (n + 1) : ℚ)

end A119633

/-! ## A119633.P9069220566668199016

`or(1, ∑[3^n])^3`
-/

namespace A119633.P9069220566668199016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A119633.P9069220566668199016

namespace A119633

/-- `or(1, ∑[3^n])^3` -/
def P9069220566668199016.Spec : Prop :=
  ∀ n, (P9069220566668199016.a n : ℤ) = A119633 (n + 1)

end A119633

/-! ## A119633.P2986586349946004074

`(∑[3^n]+n%2)^3`
-/

namespace A119633.P2986586349946004074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + n % 2) ^ 3

end

end A119633.P2986586349946004074

namespace A119633

/-- `(∑[3^n]+n%2)^3` -/
def P2986586349946004074.Spec : Prop :=
  ∀ n, (P2986586349946004074.a n : ℤ) = A119633 (n + 1)

end A119633

/-! ## A119633.P17915294235795125109

`Δ[3^n-a(n-1)]^3` with `a(0)=1`
-/

namespace A119633.P17915294235795125109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (3 ^ n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A119633.P17915294235795125109

namespace A119633

/-- `Δ[3^n-a(n-1)]^3` -/
def P17915294235795125109.Spec : Prop :=
  ∀ n, P17915294235795125109.a n = A119633 (n + 1)

end A119633

/-! ## A119633.P7710719275573546951

`A164907(n)^3`
-/

namespace A119633.P7710719275573546951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164907 n ^ 3

end

end A119633.P7710719275573546951

namespace A119633

/-- `A164907(n)^3` -/
def P7710719275573546951.Spec : Prop :=
  ∀ n, P7710719275573546951.a n = A119633 (n + 1)

end A119633

/-! ## A119633.P17175309492948944484

`Δ[A080926(n)]^3`
-/

namespace A119633.P17175309492948944484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A119633.P17175309492948944484

namespace A119633

/-- `Δ[A080926(n)]^3` -/
def P17175309492948944484.Spec : Prop :=
  ∀ n, P17175309492948944484.a n = A119633 (n + 1)

end A119633

/-! ## A119633.P3997746046399839230

`A080925(n+1)^3`
-/

namespace A119633.P3997746046399839230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080925 (n + 1) ^ 3

end

end A119633.P3997746046399839230

namespace A119633

/-- `A080925(n+1)^3` -/
def P3997746046399839230.Spec : Prop :=
  ∀ n, P3997746046399839230.a n = A119633 (n + 1)

end A119633

/-! ## A119633.P6152595082063284710

`Δ[A015518(n+1)]^3`
-/

namespace A119633.P6152595082063284710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A119633.P6152595082063284710

namespace A119633

/-- `Δ[A015518(n+1)]^3` -/
def P6152595082063284710.Spec : Prop :=
  ∀ n, P6152595082063284710.a n = A119633 (n + 1)

end A119633

/-! ## A119633.P9393431187700265557

`(A084182(n+1)/2)^3`
-/

namespace A119633.P9393431187700265557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A084182 (n + 1) : ℚ) / 2) ^ 3

end

end A119633.P9393431187700265557

namespace A119633

/-- `(A084182(n+1)/2)^3` -/
def P9393431187700265557.Spec : Prop :=
  ∀ n, P9393431187700265557.a n = (A119633 (n + 1) : ℚ)

end A119633

/-!
# A119634: a(n) = lcm(1,...,2n+2)/2.

The programs for A119634, the canonical program `A119634.P2827677778374818823` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119634 has offset 0).

The definition of A119634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119634.P2827677778374818823

`lcm(a(n-1), ∑[6*n²])` with `a(0)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A119634

/-- `lcm(a(n-1), ∑[6*n²])` -/
def P2827677778374818823.Spec : Prop :=
  ∀ n, (P2827677778374818823.a n : ℤ) = A119634 n

theorem P2827677778374818823.correct : P2827677778374818823.Spec := by
  intro n
  simp only [A119634]

end A119634

/-! ## A119634.P5312088570926777257

`lcm(-a(n-1), lcm(2*n+1, n+1))` with `a(0)=1`
-/

namespace A119634.P5312088570926777257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (Nat.lcm (2 * n + 1) (n + 1) : ℤ)

end

end A119634.P5312088570926777257

namespace A119634

/-- `lcm(-a(n-1), lcm(2*n+1, n+1))` -/
def P5312088570926777257.Spec : Prop :=
  ∀ n, (P5312088570926777257.a n : ℤ) = A119634 n

end A119634

/-! ## A119634.P14809959386590168512

`lcm((2*n+1)*(n+1), floor(a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A119634.P14809959386590168512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm ((2 * n + 1) * (n + 1)) (a (n - 1))

end

end A119634.P14809959386590168512

namespace A119634

/-- `lcm((2*n+1)*(n+1), floor(a(n-1)))` -/
def P14809959386590168512.Spec : Prop :=
  ∀ n, (P14809959386590168512.a n : ℤ) = A119634 n

end A119634

/-! ## A119634.P13900180684532665965

`lcm((n+1)*(2*n+1), a(2*n-(n+1)))` with `a(0)=1`
-/

namespace A119634.P13900180684532665965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm ((n + 1) * (2 * n + 1)) (a (2 * n - (n + 1)))

end

end A119634.P13900180684532665965

namespace A119634

/-- `lcm((n+1)*(2*n+1), a(2*n-(n+1)))` -/
def P13900180684532665965.Spec : Prop :=
  ∀ n, (P13900180684532665965.a n : ℤ) = A119634 n

end A119634

/-! ## A119634.P13782459630012619541

`A025552(Δ[n²])`
-/

namespace A119634.P13782459630012619541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025552 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A119634.P13782459630012619541

namespace A119634

/-- `A025552(Δ[n²])` -/
def P13782459630012619541.Spec : Prop :=
  ∀ n, P13782459630012619541.a n = A119634 n

end A119634

/-! ## A119634.P8321860200691235481

`A025555(Δ[n²])`
-/

namespace A119634.P8321860200691235481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025555 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A119634.P8321860200691235481

namespace A119634

/-- `A025555(Δ[n²])` -/
def P8321860200691235481.Spec : Prop :=
  ∀ n, P8321860200691235481.a n = A119634 n

end A119634

/-! ## A119634.P3814579419561311449

`A099996(n+1)/2`
-/

namespace A119634.P3814579419561311449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099996 (n + 1) : ℚ) / 2

end

end A119634.P3814579419561311449

namespace A119634

/-- `A099996(n+1)/2` -/
def P3814579419561311449.Spec : Prop :=
  ∀ n, P3814579419561311449.a n = (A119634 n : ℚ)

end A119634

/-! ## A119634.P16095670485158343953

`A003418(2*(n+1))/2`
-/

namespace A119634.P16095670485158343953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (2 * (n + 1)) : ℚ) / 2

end

end A119634.P16095670485158343953

namespace A119634

/-- `A003418(2*(n+1))/2` -/
def P16095670485158343953.Spec : Prop :=
  ∀ n, P16095670485158343953.a n = (A119634 n : ℚ)

end A119634

/-! ## A119634.P11808617102130880169

`A025560(2*n+3)/2`
-/

namespace A119634.P11808617102130880169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025560 (2 * n + 3) : ℚ) / 2

end

end A119634.P11808617102130880169

namespace A119634

/-- `A025560(2*n+3)/2` -/
def P11808617102130880169.Spec : Prop :=
  ∀ n, P11808617102130880169.a n = (A119634 n : ℚ)

end A119634

/-! ## A119634.P4957658913648048473

`A051426(2*(n+1))/4`
-/

namespace A119634.P4957658913648048473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051426 (2 * (n + 1)) : ℚ) / 4

end

end A119634.P4957658913648048473

namespace A119634

/-- `A051426(2*(n+1))/4` -/
def P4957658913648048473.Spec : Prop :=
  ∀ n, P4957658913648048473.a n = (A119634 n : ℚ)

end A119634

/-! ## A119634.P15508621428284688971

`A067391(2*n+3)/2`
-/

namespace A119634.P15508621428284688971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067391 (2 * n + 3) : ℚ) / 2

end

end A119634.P15508621428284688971

namespace A119634

/-- `A067391(2*n+3)/2` -/
def P15508621428284688971.Spec : Prop :=
  ∀ n, P15508621428284688971.a n = (A119634 n : ℚ)

end A119634

/-! ## A119634.P18184521958889720082

`A073618(2*n+3)/2`
-/

namespace A119634.P18184521958889720082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073618 (2 * n + 3) : ℚ) / 2

end

end A119634.P18184521958889720082

namespace A119634

/-- `A073618(2*n+3)/2` -/
def P18184521958889720082.Spec : Prop :=
  ∀ n, P18184521958889720082.a n = (A119634 n : ℚ)

end A119634

/-! ## A119634.P17475073161832764835

`lcm(2*n+1, A025540(n))`
-/

namespace A119634.P17475073161832764835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A025540 n)

end

end A119634.P17475073161832764835

namespace A119634

/-- `lcm(2*n+1, A025540(n))` -/
def P17475073161832764835.Spec : Prop :=
  ∀ n, (P17475073161832764835.a n : ℤ) = A119634 n

end A119634

/-! ## A119634.P8143727586345520187

`Δ[∑[A003418(2*n)]/2]`
-/

namespace A119634.P8143727586345520187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (2 * n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119634.P8143727586345520187

namespace A119634

/-- `Δ[∑[A003418(2*n)]/2]` -/
def P8143727586345520187.Spec : Prop :=
  ∀ n, P8143727586345520187.a n = (A119634 n : ℚ)

end A119634

/-! ## A119634.P9365979884452328522

`ceil(A070198(2*n+1)/2)`
-/

namespace A119634.P9365979884452328522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A070198 (2 * n + 1) : ℚ) / 2⌉

end

end A119634.P9365979884452328522

namespace A119634

/-- `ceil(A070198(2*n+1)/2)` -/
def P9365979884452328522.Spec : Prop :=
  ∀ n, P9365979884452328522.a n = A119634 n

end A119634

/-! ## A119634.P17261513800857693752

`(n+1)*A002944(2*(n+1))`
-/

namespace A119634.P17261513800857693752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002944 (2 * (n + 1))

end

end A119634.P17261513800857693752

namespace A119634

/-- `(n+1)*A002944(2*(n+1))` -/
def P17261513800857693752.Spec : Prop :=
  ∀ n, P17261513800857693752.a n = A119634 n

end A119634

/-! ## A119634.P8991316784155020467

`lcm(n+1, A025552(2*n+1))`
-/

namespace A119634.P8991316784155020467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A025552 (2 * n + 1))

end

end A119634.P8991316784155020467

namespace A119634

/-- `lcm(n+1, A025552(2*n+1))` -/
def P8991316784155020467.Spec : Prop :=
  ∀ n, (P8991316784155020467.a n : ℤ) = A119634 n

end A119634

/-! ## A119634.P4300281912858228116

`a(n-1)*A120114(n-1)` with `a(0)=1`
-/

namespace A119634.P4300281912858228116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A120114 (n - 1)

end

end A119634.P4300281912858228116

namespace A119634

/-- `a(n-1)*A120114(n-1)` -/
def P4300281912858228116.Spec : Prop :=
  ∀ n, P4300281912858228116.a n = A119634 n

end A119634

/-! ## A119634.P15345693124377211900

`lcm(lcm(n, a(n-1)), A002457(n))` with `a(0)=1`
-/

namespace A119634.P15345693124377211900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (Nat.lcm n (a (n - 1)) : ℤ) (A002457 n)

end

end A119634.P15345693124377211900

namespace A119634

/-- `lcm(lcm(n, a(n-1)), A002457(n))` -/
def P15345693124377211900.Spec : Prop :=
  ∀ n, (P15345693124377211900.a n : ℤ) = A119634 n

end A119634

/-! ## A119634.P11430834499261191507

`A002457(n)*A068553(n+1)`
-/

namespace A119634.P11430834499261191507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n * A068553 (n + 1)

end

end A119634.P11430834499261191507

namespace A119634

/-- `A002457(n)*A068553(n+1)` -/
def P11430834499261191507.Spec : Prop :=
  ∀ n, P11430834499261191507.a n = A119634 n

end A119634

/-!
# A119635: a(n) = n*(1 + n^2)*2^n.

The programs for A119635, the canonical program `A119635.P9144609565879921146` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119635 has offset 1).

The definition of A119635 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(1+(n+1)²)*2^(n+1)` (program `A119635.P9144609565879921146`, by `A119635.P9144609565879921146.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A119635.P5085284878129973167

`((n+1)^3+n+1)*2^(n+1)`
-/

namespace A119635.P5085284878129973167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 + (n + 1)) * 2 ^ (n + 1)

end

end A119635.P5085284878129973167

namespace A119635

/-- `((n+1)^3+n+1)*2^(n+1)` -/
def P5085284878129973167.Spec : Prop :=
  ∀ n, (P5085284878129973167.a n : ℤ) = A119635 (n + 1)

theorem P5085284878129973167.correct : P5085284878129973167.Spec := by
  intro n
  simp only [A119635, Nat.add_sub_cancel, A119635.P5085284878129973167.a, A119635.P9144609565879921146.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A119635

/-! ## A119635.P9144609565879921146

`(n+1)*(1+(n+1)²)*2^(n+1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A119635

/-- `(n+1)*(1+(n+1)²)*2^(n+1)` -/
def P9144609565879921146.Spec : Prop :=
  ∀ n, (P9144609565879921146.a n : ℤ) = A119635 (n + 1)

theorem P9144609565879921146.correct : P9144609565879921146.Spec := by
  intro n
  simp only [A119635, Nat.add_sub_cancel]

end A119635

/-! ## A119635.P3245345306031737324

`ogf((4+8x+16x^2)/(1-8x+24x^2-32x^3+16x^4))`
-/

namespace A119635.P3245345306031737324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 8, 16] [1, -8, 24, -32, 16] n

end

end A119635.P3245345306031737324

namespace A119635

/-- `ogf((4+8x+16x^2)/(1-8x+24x^2-32x^3+16x^4))` -/
def P3245345306031737324.Spec : Prop :=
  ∀ n, P3245345306031737324.a n = A119635 (n + 1)

end A119635

/-! ## A119635.P3463931534575454403

`A128789(n+1)+A036289(n+1)`
-/

namespace A119635.P3463931534575454403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128789 (n + 1) + A036289 (n + 1)

end

end A119635.P3463931534575454403

namespace A119635

/-- `A128789(n+1)+A036289(n+1)` -/
def P3463931534575454403.Spec : Prop :=
  ∀ n, P3463931534575454403.a n = A119635 (n + 1)

theorem P3463931534575454403.correct : P3463931534575454403.Spec := by
  intro n
  simp only [A119635, Nat.add_sub_cancel, A119635.P3463931534575454403.a, A119635.P9144609565879921146.a, A036289, A036289.P13525419631139213940.a, A128789, A128789.P13129381073551512114.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A119635

/-! ## A119635.P2667058042549952779

`A134401(n+1)+A128789(n+1)`
-/

namespace A119635.P2667058042549952779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134401 (n + 1) + A128789 (n + 1)

end

end A119635.P2667058042549952779

namespace A119635

/-- `A134401(n+1)+A128789(n+1)` -/
def P2667058042549952779.Spec : Prop :=
  ∀ n, P2667058042549952779.a n = A119635 (n + 1)

end A119635

/-! ## A119635.P10176069542179804842

`A128789(n+1)+A097064(n+2)`
-/

namespace A119635.P10176069542179804842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128789 (n + 1) + A097064 (n + 2)

end

end A119635.P10176069542179804842

namespace A119635

/-- `A128789(n+1)+A097064(n+2)` -/
def P10176069542179804842.Spec : Prop :=
  ∀ n, P10176069542179804842.a n = A119635 (n + 1)

end A119635

/-! ## A119635.P11350468223946495017

`A129002(n+1)-A128796(n+1)`
-/

namespace A119635.P11350468223946495017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129002 (n + 1) - A128796 (n + 1)

end

end A119635.P11350468223946495017

namespace A119635

/-- `A129002(n+1)-A128796(n+1)` -/
def P11350468223946495017.Spec : Prop :=
  ∀ n, P11350468223946495017.a n = A119635 (n + 1)

theorem P11350468223946495017.correct : P11350468223946495017.Spec := by
  intro n
  simp only [A119635, Nat.add_sub_cancel, A119635.P11350468223946495017.a, A119635.P9144609565879921146.a, A128796, A128796.P2345555735138113176.a, A129002, A129002.P2751204566084846886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A119635

/-! ## A119635.P5699500704598834125

`A128960(n+1)+∑[A001787(n+2)]`
-/

namespace A119635.P5699500704598834125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128960 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119635.P5699500704598834125

namespace A119635

/-- `A128960(n+1)+∑[A001787(n+2)]` -/
def P5699500704598834125.Spec : Prop :=
  ∀ n, P5699500704598834125.a n = A119635 (n + 1)

end A119635

/-! ## A119635.P5287511145009767572

`A084850(n)+A004767(n)*A084850(n)`
-/

namespace A119635.P5287511145009767572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084850 n + A004767 n * A084850 n

end

end A119635.P5287511145009767572

namespace A119635

/-- `A084850(n)+A004767(n)*A084850(n)` -/
def P5287511145009767572.Spec : Prop :=
  ∀ n, P5287511145009767572.a n = A119635 (n + 1)

end A119635

/-! ## A119635.P558459393665401662

`A002064(n+1)+A128960(n+1)+A003261(n+1)`
-/

namespace A119635.P558459393665401662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 (n + 1) + (A128960 (n + 1) + A003261 (n + 1))

end

end A119635.P558459393665401662

namespace A119635

/-- `A002064(n+1)+A128960(n+1)+A003261(n+1)` -/
def P558459393665401662.Spec : Prop :=
  ∀ n, P558459393665401662.a n = A119635 (n + 1)

theorem P558459393665401662.correct : P558459393665401662.Spec := by
  intro n
  simp only [A119635, Nat.add_sub_cancel, A119635.P558459393665401662.a, A119635.P9144609565879921146.a, A002064, A002064.P16424863031535762998.a, A003261, A003261.P10775905742820185947.a, A128960, A128960.P17672098471833153486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119635

/-! ## A119635.P14616796483677577821

`A036289(n+1)+A128960(n+1)+A036289(n+1)`
-/

namespace A119635.P14616796483677577821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 (n + 1) + (A128960 (n + 1) + A036289 (n + 1))

end

end A119635.P14616796483677577821

namespace A119635

/-- `A036289(n+1)+A128960(n+1)+A036289(n+1)` -/
def P14616796483677577821.Spec : Prop :=
  ∀ n, P14616796483677577821.a n = A119635 (n + 1)

theorem P14616796483677577821.correct : P14616796483677577821.Spec := by
  intro n
  simp only [A119635, Nat.add_sub_cancel, A119635.P14616796483677577821.a, A119635.P9144609565879921146.a, A036289, A036289.P13525419631139213940.a, A128960, A128960.P17672098471833153486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119635

/-! ## A119635.P6094371535390570575

`A036289(n+1)+A129002(n+1)-A007758(n+1)`
-/

namespace A119635.P6094371535390570575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 (n + 1) + (A129002 (n + 1) - A007758 (n + 1))

end

end A119635.P6094371535390570575

namespace A119635

/-- `A036289(n+1)+A129002(n+1)-A007758(n+1)` -/
def P6094371535390570575.Spec : Prop :=
  ∀ n, P6094371535390570575.a n = A119635 (n + 1)

theorem P6094371535390570575.correct : P6094371535390570575.Spec := by
  intro n
  simp only [A119635, Nat.add_sub_cancel, A119635.P6094371535390570575.a, A119635.P9144609565879921146.a, A007758, A007758.P17176775618145894956.a, A036289, A036289.P13525419631139213940.a, A129002, A129002.P2751204566084846886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A119635

/-! ## A119635.P15329035077712354979

`A128985(n+1)+A129002(n+1)-A128960(n+1)`
-/

namespace A119635.P15329035077712354979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128985 (n + 1) + (A129002 (n + 1) - A128960 (n + 1))

end

end A119635.P15329035077712354979

namespace A119635

/-- `A128985(n+1)+A129002(n+1)-A128960(n+1)` -/
def P15329035077712354979.Spec : Prop :=
  ∀ n, P15329035077712354979.a n = A119635 (n + 1)

theorem P15329035077712354979.correct : P15329035077712354979.Spec := by
  intro n
  simp only [A119635, Nat.add_sub_cancel, A119635.P15329035077712354979.a, A119635.P9144609565879921146.a, A128960, A128960.P17672098471833153486.a, A128985, A128985.P12184313217683518671.a, A129002, A129002.P2751204566084846886.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119635

/-! ## A119635.P5810401294561886415

`A001787(n+1)+A001787(n+1)*A058331(n+1)`
-/

namespace A119635.P5810401294561886415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) + A001787 (n + 1) * A058331 (n + 1)

end

end A119635.P5810401294561886415

namespace A119635

/-- `A001787(n+1)+A001787(n+1)*A058331(n+1)` -/
def P5810401294561886415.Spec : Prop :=
  ∀ n, P5810401294561886415.a n = A119635 (n + 1)

end A119635

/-! ## A119635.P7603772688733336213

`A000051(n+1)*A034262(n+1)-A034262(n+1)`
-/

namespace A119635.P7603772688733336213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) * A034262 (n + 1) - A034262 (n + 1)

end

end A119635.P7603772688733336213

namespace A119635

/-- `A000051(n+1)*A034262(n+1)-A034262(n+1)` -/
def P7603772688733336213.Spec : Prop :=
  ∀ n, P7603772688733336213.a n = A119635 (n + 1)

theorem P7603772688733336213.correct : P7603772688733336213.Spec := by
  intro n
  simp only [A119635, Nat.add_sub_cancel, A119635.P7603772688733336213.a, A119635.P9144609565879921146.a, A000051, A000051.P14067217022188782580.a, A034262, A034262.P1986901683698587680.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A119635

/-! ## A119635.P1665684574145900878

`Δ[A036827(n)+A036799(n)]`
-/

namespace A119635.P1665684574145900878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036827 n + A036799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119635.P1665684574145900878

namespace A119635

/-- `Δ[A036827(n)+A036799(n)]` -/
def P1665684574145900878.Spec : Prop :=
  ∀ n, P1665684574145900878.a n = A119635 (n + 1)

theorem P1665684574145900878.correct : P1665684574145900878.Spec := by
  intro n
  simp only [A119635, Nat.add_sub_cancel, A119635.P1665684574145900878.f1, A119635.P1665684574145900878.a, A119635.P9144609565879921146.a, A036799, A036799.P11890976520549442909.a, A036827, A036827.P11394607514665482824.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119635

/-! ## A119635.P7419891004677984749

`A036289(n+1)+A036827(n+1)-A036827(n)`
-/

namespace A119635.P7419891004677984749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 (n + 1) + (A036827 (n + 1) - A036827 n)

end

end A119635.P7419891004677984749

namespace A119635

/-- `A036289(n+1)+A036827(n+1)-A036827(n)` -/
def P7419891004677984749.Spec : Prop :=
  ∀ n, P7419891004677984749.a n = A119635 (n + 1)

theorem P7419891004677984749.correct : P7419891004677984749.Spec := by
  intro n
  simp only [A119635, Nat.add_sub_cancel, A119635.P7419891004677984749.a, A119635.P9144609565879921146.a, A036289, A036289.P13525419631139213940.a, A036827, A036827.P11394607514665482824.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119635

/-! ## A119635.P6068842325972048304

`A127369(n+1)/A000079(n+1)`
-/

namespace A119635.P6068842325972048304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127369 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A119635.P6068842325972048304

namespace A119635

/-- `A127369(n+1)/A000079(n+1)` -/
def P6068842325972048304.Spec : Prop :=
  ∀ n, P6068842325972048304.a n = (A119635 (n + 1) : ℚ)

end A119635

/-! ## A119635.P3566816351053471155

`A127369(n+1)/A131577(n+2)`
-/

namespace A119635.P3566816351053471155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127369 (n + 1) : ℚ) / (A131577 (n + 2) : ℚ)

end

end A119635.P3566816351053471155

namespace A119635

/-- `A127369(n+1)/A131577(n+2)` -/
def P3566816351053471155.Spec : Prop :=
  ∀ n, P3566816351053471155.a n = (A119635 (n + 1) : ℚ)

end A119635

/-! ## A119635.P17509625399630990480

`A129004(n+1)/A000079(n+1)-A128796(n+1)`
-/

namespace A119635.P17509625399630990480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129004 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ) - (A128796 (n + 1) : ℚ)

end

end A119635.P17509625399630990480

namespace A119635

/-- `A129004(n+1)/A000079(n+1)-A128796(n+1)` -/
def P17509625399630990480.Spec : Prop :=
  ∀ n, P17509625399630990480.a n = (A119635 (n + 1) : ℚ)

end A119635

/-!
# A119636: a(n) = lcm(1,...,2n+4)/((n+1)*binomial(2n+2, n+1)).

The programs for A119636, the canonical program `A119636.P13421198858277065567` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119636 has offset 0).

The definition of A119636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 374 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119636.P13421198858277065567

`A068553(n+1)*A120114(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A119636

/-- `A068553(n+1)*A120114(n)` -/
def P13421198858277065567.Spec : Prop :=
  ∀ n, P13421198858277065567.a n = A119636 n

theorem P13421198858277065567.correct : P13421198858277065567.Spec := by
  intro n
  simp only [A119636]

end A119636

/-! ## A119636.P18424924773241017347

`A048619(2*n+1)*A120114(n)`
-/

namespace A119636.P18424924773241017347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048619 (2 * n + 1) * A120114 n

end

end A119636.P18424924773241017347

namespace A119636

/-- `A048619(2*n+1)*A120114(n)` -/
def P18424924773241017347.Spec : Prop :=
  ∀ n, P18424924773241017347.a n = A119636 n

end A119636

/-! ## A119636.P17501744137009963846

`A119634(n+1)/A002457(n)`
-/

namespace A119636.P17501744137009963846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119634 (n + 1) : ℚ) / (A002457 n : ℚ)

end

end A119636.P17501744137009963846

namespace A119636

/-- `A119634(n+1)/A002457(n)` -/
def P17501744137009963846.Spec : Prop :=
  ∀ n, P17501744137009963846.a n = (A119636 n : ℚ)

end A119636

/-! ## A119636.P9357460669112661034

`A068553(n+1)/A119634(n)*A119634(n+1)`
-/

namespace A119636.P9357460669112661034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068553 (n + 1) : ℚ) / (A119634 n : ℚ) * (A119634 (n + 1) : ℚ)

end

end A119636.P9357460669112661034

namespace A119636

/-- `A068553(n+1)/A119634(n)*A119634(n+1)` -/
def P9357460669112661034.Spec : Prop :=
  ∀ n, P9357460669112661034.a n = (A119636 n : ℚ)

end A119636

/-! ## A119636.P16747587032564767504

`A120101(A000096(n))*A120114(n)`
-/

namespace A119636.P16747587032564767504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120101 (A000096 n).toNat * A120114 n

end

end A119636.P16747587032564767504

namespace A119636

/-- `A120101(A000096(n))*A120114(n)` -/
def P16747587032564767504.Spec : Prop :=
  ∀ n, P16747587032564767504.a n = A119636 n

end A119636

/-! ## A119636.P18165027803485539280

`A120101(∑[n+2]-1)`
-/

namespace A119636.P18165027803485539280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120101 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A119636.P18165027803485539280

namespace A119636

/-- `A120101(∑[n+2]-1)` -/
def P18165027803485539280.Spec : Prop :=
  ∀ n, P18165027803485539280.a n = A119636 n

end A119636

/-! ## A119636.P17622321470196103173

`A068553(n+1)*A119634(n+1)/A119634(n)`
-/

namespace A119636.P17622321470196103173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068553 (n + 1) * A119634 (n + 1) : ℚ) / (A119634 n : ℚ)

end

end A119636.P17622321470196103173

namespace A119636

/-- `A068553(n+1)*A119634(n+1)/A119634(n)` -/
def P17622321470196103173.Spec : Prop :=
  ∀ n, P17622321470196103173.a n = (A119636 n : ℚ)

end A119636

/-!
# A119637: Related to number of reachable pairs in a digraph (see Rao article for details).

The programs for A119637, there is no canonical definition to state claims against.
-/

/-! ## A119637.P15191457846355645788

`A007953(A246015(n))+A000217(n)`
-/

namespace A119637.P15191457846355645788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A246015 n).toNat + A000217 n

end

end A119637.P15191457846355645788

/-! ## A119637.P12513429366617237513

`A152749(n)-A007949(A053617(n))`
-/

namespace A119637.P12513429366617237513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152749 n - A007949 (A053617 n).toNat

end

end A119637.P12513429366617237513

/-! ## A119637.P17250390411121825463

`A152749(n)-A261488(A270613(3*n+2))`
-/

namespace A119637.P17250390411121825463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152749 n - A261488 (A270613 (3 * n + 2)).toNat

end

end A119637.P17250390411121825463

/-!
# A119638: Related to number of reachable pairs in a digraph (see Rao article for details).

The programs for A119638, there is no canonical definition to state claims against.
-/

/-! ## A119638.P2762933559720756012

`n*A065033(A265436(2*n+3))`
-/

namespace A119638.P2762933559720756012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A065033 (A265436 (2 * n + 3)).toNat

end

end A119638.P2762933559720756012

/-! ## A119638.P12898479619328383477

`n*(A352745(2*n+3)-A000196(2*(n+2)))`
-/

namespace A119638.P12898479619328383477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A352745 (2 * n + 3) - A000196 (2 * (n + 2)))

end

end A119638.P12898479619328383477

/-! ## A119638.P12340659116145501933

`n*A033273(A317306(n+1))`
-/

namespace A119638.P12340659116145501933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A033273 (A317306 (n + 1)).toNat

end

end A119638.P12340659116145501933

/-! ## A119638.P14129463360906141091

`n*∑[A156728(A222313(2*(n+2))+1)]`
-/

namespace A119638.P14129463360906141091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156728 (A222313 (2 * (n + 2)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A119638.P14129463360906141091

/-! ## A119638.P7512586928606038897

`n*A070939(A006367(n))`
-/

namespace A119638.P7512586928606038897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A070939 (A006367 n).toNat

end

end A119638.P7512586928606038897

/-!
# A119639: Related to number of reachable pairs in a digraph (see Rao article for details).

The programs for A119639, there is no canonical definition to state claims against.
-/

/-! ## A119639.P1312248472519773841

`A002024((A227426(n)+A000217(n))²)`
-/

namespace A119639.P1312248472519773841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 ((A227426 n + A000217 n) ^ 2).toNat

end

end A119639.P1312248472519773841

/-! ## A119639.P14934331417189590119

`or(A273140(n+1), A287337(A000105(n)))`
-/

namespace A119639.P14934331417189590119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A273140 (n + 1)) (A287337 (A000105 n).toNat)

end

end A119639.P14934331417189590119

/-! ## A119639.P8140578989059605046

`or(A273096(A273096(n)), A273140(n+1))`
-/

namespace A119639.P8140578989059605046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A273096 (A273096 n).toNat) (A273140 (n + 1))

end

end A119639.P8140578989059605046

/-! ## A119639.P12731383839861520327

`A103151(n+1)+A079643(A103158(n+1))`
-/

namespace A119639.P12731383839861520327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103151 (n + 1) + A079643 (A103158 (n + 1)).toNat

end

end A119639.P12731383839861520327

/-! ## A119639.P7585537643428053437

`A363805(A028491(n+2))+A273140(n+1)`
-/

namespace A119639.P7585537643428053437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (A028491 (n + 2)).toNat + A273140 (n + 1)

end

end A119639.P7585537643428053437

/-!
# A119640: Related to number of reachable pairs in a digraph (see Rao article for details).

The programs for A119640, there is no canonical definition to state claims against.
-/

/-! ## A119640.P2392046426292810685

`n*ceil(log(A171003(n+1)))`
-/

namespace A119640.P2392046426292810685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈Real.log (A171003 (n + 1) : ℝ)⌉

end

end A119640.P2392046426292810685

/-! ## A119640.P10683634627157806274

`n*A180446(n+1)%A048757(n)`
-/

namespace A119640.P10683634627157806274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A180446 (n + 1)) (A048757 n)

end

end A119640.P10683634627157806274

/-! ## A119640.P15502190769485475151

`n*(A048266(A048266(n+1))-A257639(n+1))`
-/

namespace A119640.P15502190769485475151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A048266 (A048266 (n + 1)).toNat - A257639 (n + 1))

end

end A119640.P15502190769485475151

/-! ## A119640.P2324345956998135386

`n*A334097(A324738(n))`
-/

namespace A119640.P2324345956998135386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A334097 (A324738 n).toNat

end

end A119640.P2324345956998135386

/-! ## A119640.P18415979611731964075

`n*A070939(A128742(n))`
-/

namespace A119640.P18415979611731964075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A070939 (A128742 n).toNat

end

end A119640.P18415979611731964075

/-!
# A119641: Prime numbers of trees with n unlabeled nodes.

The programs for A119641, there is no canonical definition to state claims against.
-/

/-! ## A119641.P6294983050905339412

`A000055(A119642(n+1))`
-/

namespace A119641.P6294983050905339412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (A119642 (n + 1)).toNat

end

end A119641.P6294983050905339412

/-! ## A119641.P4263165258124213536

`A144520(A119642(n+1))-A057428(3*(n+1))`
-/

namespace A119641.P4263165258124213536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144520 (A119642 (n + 1)).toNat - A057428 (3 * (n + 1))

end

end A119641.P4263165258124213536

/-! ## A119641.P1320537431058096347

`p?[A000055(n)]`
-/

namespace A119641.P1320537431058096347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119641.P1320537431058096347

/-!
# A119644: a(n) = n-th prime from among those primes which are coprime to the n-th composite.

The programs for A119644, the canonical program `A119644.P9048720214858133115` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119644 has offset 1).

The definition of A119644 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119644.P9048720214858133115

`A000040(n+1+A001221(A002808(n+1)))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A119644

/-- `A000040(n+1+A001221(A002808(n+1)))` -/
def P9048720214858133115.Spec : Prop :=
  ∀ n, P9048720214858133115.a n = A119644 (n + 1)

theorem P9048720214858133115.correct : P9048720214858133115.Spec := by
  intro n
  simp only [A119644, Nat.add_sub_cancel]

end A119644

/-! ## A119644.P8451814668260315748

`A065091(A062501(n+2)+n)`
-/

namespace A119644.P8451814668260315748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A062501 (n + 2) + (n : ℤ)).toNat

end

end A119644.P8451814668260315748

namespace A119644

/-- `A065091(A062501(n+2)+n)` -/
def P8451814668260315748.Spec : Prop :=
  ∀ n, P8451814668260315748.a n = A119644 (n + 1)

end A119644

/-! ## A119644.P9173996907109054794

`A000040(A062501(n+2)+n+1)`
-/

namespace A119644.P9173996907109054794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A062501 (n + 2) + (n + 1 : ℤ)).toNat

end

end A119644.P9173996907109054794

namespace A119644

/-- `A000040(A062501(n+2)+n+1)` -/
def P9173996907109054794.Spec : Prop :=
  ∀ n, P9173996907109054794.a n = A119644 (n + 1)

end A119644

/-! ## A119644.P13065928343055269139

`A006093(A062501(n+2)+n+1)+1`
-/

namespace A119644.P13065928343055269139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A062501 (n + 2) + (n : ℤ) + 1).toNat + 1

end

end A119644.P13065928343055269139

namespace A119644

/-- `A006093(A062501(n+2)+n+1)+1` -/
def P13065928343055269139.Spec : Prop :=
  ∀ n, P13065928343055269139.a n = A119644 (n + 1)

end A119644

/-! ## A119644.P12095609334288301785

`A065091(A001221(A002808(n+1))+n)`
-/

namespace A119644.P12095609334288301785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A001221 (A002808 (n + 1)).toNat + (n : ℤ)).toNat

end

end A119644.P12095609334288301785

namespace A119644

/-- `A065091(A001221(A002808(n+1))+n)` -/
def P12095609334288301785.Spec : Prop :=
  ∀ n, P12095609334288301785.a n = A119644 (n + 1)

end A119644

/-! ## A119644.P2440001749080096532

`A000040(A001221(A018252(n+2))+n+1)`
-/

namespace A119644.P2440001749080096532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A001221 (A018252 (n + 2)).toNat + (n + 1 : ℤ)).toNat

end

end A119644.P2440001749080096532

namespace A119644

/-- `A000040(A001221(A018252(n+2))+n+1)` -/
def P2440001749080096532.Spec : Prop :=
  ∀ n, P2440001749080096532.a n = A119644 (n + 1)

end A119644

/-! ## A119644.P9277190079766197605

`A008578(A062501(n+2)+n+2)`
-/

namespace A119644.P9277190079766197605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A062501 (n + 2) + (n + 2 : ℤ)).toNat

end

end A119644.P9277190079766197605

namespace A119644

/-- `A008578(A062501(n+2)+n+2)` -/
def P9277190079766197605.Spec : Prop :=
  ∀ n, P9277190079766197605.a n = A119644 (n + 1)

end A119644

/-! ## A119644.P16616475072016264218

`A000040(A083399(A002808(n+1))+n)`
-/

namespace A119644.P16616475072016264218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A083399 (A002808 (n + 1)).toNat + (n : ℤ)).toNat

end

end A119644.P16616475072016264218

namespace A119644

/-- `A000040(A083399(A002808(n+1))+n)` -/
def P16616475072016264218.Spec : Prop :=
  ∀ n, P16616475072016264218.a n = A119644 (n + 1)

theorem P16616475072016264218.correct : P16616475072016264218.Spec := by
  intro n
  simp only [A119644, Nat.add_sub_cancel, A119644.P16616475072016264218.a, A119644.P9048720214858133115.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A083399, A083399.P16148020281325742632.a, A000005, A000005.P16091521709108585461.a, A055212, A055212.P14412881054625885538.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A033273, A033273.P18420659424697249895.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119644

/-! ## A119644.P7587933528424302071

`A160656(A062501(n+2)+n+1)`
-/

namespace A119644.P7587933528424302071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160656 (A062501 (n + 2) + (n + 1 : ℤ)).toNat

end

end A119644.P7587933528424302071

namespace A119644

/-- `A160656(A062501(n+2)+n+1)` -/
def P7587933528424302071.Spec : Prop :=
  ∀ n, P7587933528424302071.a n = A119644 (n + 1)

end A119644

/-!
# A119645: Product of consecutive prime number of primes.

The programs for A119645, there is no canonical definition to state claims against.
-/

/-! ## A119645.P12577684697438682675

`ratio[A002110(A007504(n))]`
-/

namespace A119645.P12577684697438682675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A007504 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A119645.P12577684697438682675

/-! ## A119645.P15426590528045242345

`ratio[A002110(∑[A182986(n+1)])]`
-/

namespace A119645.P15426590528045242345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A119645.P15426590528045242345

/-!
# A119646: a(n) = maximum number of partitions of n into 3 parts, each having the same product.

The programs for A119646, there is no canonical definition to state claims against.
-/

/-! ## A119646.P3828422314555971903

`Δ[comp[lt[A317578(n+3), n]]]`
-/

namespace A119646.P3828422314555971903
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317578 (n + 3)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A119646.P3828422314555971903

/-! ## A119646.P2448557312445604408

`Δ[lt[A023443(n), A317578(n+3)]]`
-/

namespace A119646.P2448557312445604408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317578 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A119646.P2448557312445604408

/-! ## A119646.P11205265368778506055

`Δ[lt[A317558(n+1), A317578(n+3)]]`
-/

namespace A119646.P11205265368778506055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317558 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317578 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A119646.P11205265368778506055

/-! ## A119646.P639431293486985566

`Δ[lt[n-1, A317578(n+3)]%A124057(n+1)]`
-/

namespace A119646.P639431293486985566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317578 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => f2 j < f3 j) n : ℤ) (A124057 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119646.P639431293486985566

/-! ## A119646.P10728114641859368727

`Δ[lt[A220862(n+1)+n, A317578(n+3)]]`
-/

namespace A119646.P10728114641859368727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220862 (n + 1) + (n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317578 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A119646.P10728114641859368727

/-!
# A119649: a(0)=0, a(1)=1; for n >= 1, a(n+1) = (n+2)*a(n) + 2*Sum_{k=2..n-1} binomial(n, k)*a(k)*a(n-k+1).

The programs for A119649, there is no canonical definition to state claims against.
-/

/-! ## A119649.P14052184720688733995

`A392975(n)+A189638(A393003(n))`
-/

namespace A119649.P14052184720688733995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392975 n + A189638 (A393003 n).toNat

end

end A119649.P14052184720688733995

/-! ## A119649.P17781497445871678248

`A122651(A007870(n))*A173318(n)`
-/

namespace A119649.P17781497445871678248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122651 (A007870 n).toNat * A173318 n

end

end A119649.P17781497445871678248

/-!
# A119651: Number of different values of exactly n standard American coins (pennies, nickels, dimes and quarters).

The programs for A119651, the canonical program `A119651.P1058283512209552698` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119651 has offset 1).

The definition of A119651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119651.P1058283512209552698

`ogf((4+2x+4x^2+4x^3+4x^4+3x^5+2x^6+x^7)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A119651

/-- `ogf((4+2x+4x^2+4x^3+4x^4+3x^5+2x^6+x^7)/(1-2x+x^2))` -/
def P1058283512209552698.Spec : Prop :=
  ∀ n, P1058283512209552698.a n = A119651 (n + 1)

theorem P1058283512209552698.correct : P1058283512209552698.Spec := by
  intro n
  simp only [A119651, Nat.add_sub_cancel]

end A119651

/-!
# A119652: Number of different values of <= n standard American coins (pennies, nickels, dimes and quarters).

The programs for A119652, the canonical program `A119652.P17883623673782973951` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119652 has offset 1).

The definition of A119652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119652.P17883623673782973951

`ogf((4+5x+5x^2+5x^3+4x^4+2x^5)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A119652

/-- `ogf((4+5x+5x^2+5x^3+4x^4+2x^5)/(1-2x+x^2))` -/
def P17883623673782973951.Spec : Prop :=
  ∀ n, P17883623673782973951.a n = A119652 (n + 1)

theorem P17883623673782973951.correct : P17883623673782973951.Spec := by
  intro n
  simp only [A119652, Nat.add_sub_cancel]

end A119652

/-!
# A119653: Denominator of BernoulliB[2p] divided by 6, where p=Prime[n].

The programs for A119653, there is no canonical definition to state claims against.
-/

/-! ## A119653.P12349105642037567081

`A090815(n+1)/6`
-/

namespace A119653.P12349105642037567081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090815 (n + 1) : ℚ) / 6

end

end A119653.P12349105642037567081

/-! ## A119653.P18098171559963296799

`A110560(2*p?[abs(xor(n, -2))])`
-/

namespace A119653.P18098171559963296799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A119653.P18098171559963296799

/-! ## A119653.P16438908527863857337

`A014973(A072055(n+1))`
-/

namespace A119653.P16438908527863857337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (A072055 (n + 1)).toNat

end

end A119653.P16438908527863857337

/-! ## A119653.P16056128396442622390

`A008615(A090815(n+1))`
-/

namespace A119653.P16056128396442622390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A090815 (n + 1)).toNat

end

end A119653.P16056128396442622390

/-! ## A119653.P10377566845434616285

`A128059(A008864(n+1))`
-/

namespace A119653.P10377566845434616285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 (A008864 (n + 1)).toNat

end

end A119653.P10377566845434616285

/-! ## A119653.P11403364726232850434

`A145737(A000040(n+1))`
-/

namespace A119653.P11403364726232850434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145737 (A000040 (n + 1)).toNat

end

end A119653.P11403364726232850434

/-! ## A119653.P5810745097637308616

`A128059(A028815(n+1))`
-/

namespace A119653.P5810745097637308616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 (A028815 (n + 1)).toNat

end

end A119653.P5810745097637308616

/-! ## A119653.P11340095402411738537

`A090585(A100484(n+1))`
-/

namespace A119653.P11340095402411738537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090585 (A100484 (n + 1)).toNat

end

end A119653.P11340095402411738537

/-! ## A119653.P12878218971308342953

`A145737(A216886(n+1))`
-/

namespace A119653.P12878218971308342953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145737 (A216886 (n + 1)).toNat

end

end A119653.P12878218971308342953

/-! ## A119653.P3326833163400084587

`A177735(A383578(n+1))`
-/

namespace A119653.P3326833163400084587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177735 (A383578 (n + 1)).toNat

end

end A119653.P3326833163400084587

/-!
# A119656: Denominator of BernoulliB(4*prime(n))/30.

The programs for A119656, the canonical program `A119656.P1920939192166810603` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119656 has offset 1).

The definition of A119656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 368 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119656.P9932631888107843052

`A165949(A100484(n+1))`
-/

namespace A119656.P9932631888107843052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165949 (A100484 (n + 1)).toNat

end

end A119656.P9932631888107843052

namespace A119656

/-- `A165949(A100484(n+1))` -/
def P9932631888107843052.Spec : Prop :=
  ∀ n, P9932631888107843052.a n = A119656 (n + 1)

end A119656

/-! ## A119656.P8335262650140787961

`A165949(A001747(n+2))`
-/

namespace A119656.P8335262650140787961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165949 (A001747 (n + 2)).toNat

end

end A119656.P8335262650140787961

namespace A119656

/-- `A165949(A001747(n+2))` -/
def P8335262650140787961.Spec : Prop :=
  ∀ n, P8335262650140787961.a n = A119656 (n + 1)

end A119656

/-! ## A119656.P6609204581546188404

`A165949(A077017(n+2))`
-/

namespace A119656.P6609204581546188404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165949 (A077017 (n + 2)).toNat

end

end A119656.P6609204581546188404

namespace A119656

/-- `A165949(A077017(n+2))` -/
def P6609204581546188404.Spec : Prop :=
  ∀ n, P6609204581546188404.a n = A119656 (n + 1)

end A119656

/-! ## A119656.P15808718140824385903

`A165949(2*A000040(n+1))`
-/

namespace A119656.P15808718140824385903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165949 (2 * A000040 (n + 1)).toNat

end

end A119656.P15808718140824385903

namespace A119656

/-- `A165949(2*A000040(n+1))` -/
def P15808718140824385903.Spec : Prop :=
  ∀ n, P15808718140824385903.a n = A119656 (n + 1)

end A119656

/-! ## A119656.P2674825823291005122

`A288872(A001749(n+1))/6`
-/

namespace A119656.P2674825823291005122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288872 (A001749 (n + 1)).toNat : ℚ) / 6

end

end A119656.P2674825823291005122

namespace A119656

/-- `A288872(A001749(n+1))/6` -/
def P2674825823291005122.Spec : Prop :=
  ∀ n, P2674825823291005122.a n = (A119656 (n + 1) : ℚ)

end A119656

/-! ## A119656.P1920939192166810603

`A128059(A055670(n+1))*A128059(A072055(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A119656

/-- `A128059(A055670(n+1))*A128059(A072055(n+1))` -/
def P1920939192166810603.Spec : Prop :=
  ∀ n, P1920939192166810603.a n = A119656 (n + 1)

theorem P1920939192166810603.correct : P1920939192166810603.Spec := by
  intro n
  simp only [A119656, Nat.add_sub_cancel]

end A119656

/-! ## A119656.P4625295403948740450

`A027760(A062876(n+1))/30`
-/

namespace A119656.P4625295403948740450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027760 (A062876 (n + 1)).toNat : ℚ) / 30

end

end A119656.P4625295403948740450

namespace A119656

/-- `A027760(A062876(n+1))/30` -/
def P4625295403948740450.Spec : Prop :=
  ∀ n, P4625295403948740450.a n = (A119656 (n + 1) : ℚ)

end A119656

/-! ## A119656.P14007581508069046192

`A110560(A001749(n+1))*A128059(A055670(n+1))`
-/

namespace A119656.P14007581508069046192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (A001749 (n + 1)).toNat * A128059 (A055670 (n + 1)).toNat

end

end A119656.P14007581508069046192

namespace A119656

/-- `A110560(A001749(n+1))*A128059(A055670(n+1))` -/
def P14007581508069046192.Spec : Prop :=
  ∀ n, P14007581508069046192.a n = A119656 (n + 1)

end A119656

/-! ## A119656.P969699507347138096

`A117358(A027642(A001749(n+1)))`
-/

namespace A119656.P969699507347138096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A027642 (A001749 (n + 1)).toNat).toNat

end

end A119656.P969699507347138096

namespace A119656

/-- `A117358(A027642(A001749(n+1)))` -/
def P969699507347138096.Spec : Prop :=
  ∀ n, P969699507347138096.a n = A119656 (n + 1)

end A119656

/-!
# A119657: Denominator of BernoulliB[10p] divided by 66, where p=Prime[n].

The programs for A119657, there is no canonical definition to state claims against.
-/

/-! ## A119657.P6666824867597887642

`A177735(A001750(n+1))/11`
-/

namespace A119657.P6666824867597887642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177735 (A001750 (n + 1)).toNat : ℚ) / 11

end

end A119657.P6666824867597887642

/-!
# A119658: Area of consecutive Prime-Indexed Prime rectangles.

The programs for A119658, the canonical program `A119658.P11667563093156553318` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119658 has offset 1).

The definition of A119658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119658.P3231612345428971750

`A006450(n+1)*A006450(n+2)`
-/

namespace A119658.P3231612345428971750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) * A006450 (n + 2)

end

end A119658.P3231612345428971750

namespace A119658

/-- `A006450(n+1)*A006450(n+2)` -/
def P3231612345428971750.Spec : Prop :=
  ∀ n, P3231612345428971750.a n = A119658 (n + 1)

end A119658

/-! ## A119658.P7220819091059355146

`A175247(n+2)*A175247(n+3)`
-/

namespace A119658.P7220819091059355146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 2) * A175247 (n + 3)

end

end A119658.P7220819091059355146

namespace A119658

/-- `A175247(n+2)*A175247(n+3)` -/
def P7220819091059355146.Spec : Prop :=
  ∀ n, P7220819091059355146.a n = A119658 (n + 1)

end A119658

/-! ## A119658.P10347132781241881459

`p?[A048989(2*n+1)]*p?[A048989(n+2)]`
-/

namespace A119658.P10347132781241881459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048989 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048989 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A119658.P10347132781241881459

namespace A119658

/-- `p?[A048989(2*n+1)]*p?[A048989(n+2)]` -/
def P10347132781241881459.Spec : Prop :=
  ∀ n, P10347132781241881459.a n = A119658 (n + 1)

end A119658

/-! ## A119658.P9369233158705838872

`lcm(A000040(A065091(n+1)), A006450(n+1))`
-/

namespace A119658.P9369233158705838872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000040 (A065091 (n + 1)).toNat) (A006450 (n + 1))

end

end A119658.P9369233158705838872

namespace A119658

/-- `lcm(A000040(A065091(n+1)), A006450(n+1))` -/
def P9369233158705838872.Spec : Prop :=
  ∀ n, (P9369233158705838872.a n : ℤ) = A119658 (n + 1)

end A119658

/-! ## A119658.P9214314028300450069

`lcm(A000040(A000040(n+1)), A006450(n+2))`
-/

namespace A119658.P9214314028300450069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000040 (A000040 (n + 1)).toNat) (A006450 (n + 2))

end

end A119658.P9214314028300450069

namespace A119658

/-- `lcm(A000040(A000040(n+1)), A006450(n+2))` -/
def P9214314028300450069.Spec : Prop :=
  ∀ n, (P9214314028300450069.a n : ℤ) = A119658 (n + 1)

end A119658

/-! ## A119658.P11667563093156553318

`A000040(A000040(n+1))*A000040(A065091(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A119658

/-- `A000040(A000040(n+1))*A000040(A065091(n+1))` -/
def P11667563093156553318.Spec : Prop :=
  ∀ n, P11667563093156553318.a n = A119658 (n + 1)

theorem P11667563093156553318.correct : P11667563093156553318.Spec := by
  intro n
  simp only [A119658, Nat.add_sub_cancel]

end A119658

/-! ## A119658.P8811427364372975507

`A006005(A065091(n+1))*A065091(A006093(n+1))`
-/

namespace A119658.P8811427364372975507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A065091 (n + 1)).toNat * A065091 (A006093 (n + 1)).toNat

end

end A119658.P8811427364372975507

namespace A119658

/-- `A006005(A065091(n+1))*A065091(A006093(n+1))` -/
def P8811427364372975507.Spec : Prop :=
  ∀ n, P8811427364372975507.a n = A119658 (n + 1)

end A119658

/-! ## A119658.P7082708420016830704

`A000040(A000040(n+1))*A000040(A000040(n+2))`
-/

namespace A119658.P7082708420016830704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (n + 1)).toNat * A000040 (A000040 (n + 2)).toNat

end

end A119658.P7082708420016830704

namespace A119658

/-- `A000040(A000040(n+1))*A000040(A000040(n+2))` -/
def P7082708420016830704.Spec : Prop :=
  ∀ n, P7082708420016830704.a n = A119658 (n + 1)

end A119658

/-! ## A119658.P12636505167627220273

`A008578(A028815(n+1))*A008578(A008864(n+2))`
-/

namespace A119658.P12636505167627220273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A028815 (n + 1)).toNat * A008578 (A008864 (n + 2)).toNat

end

end A119658.P12636505167627220273

namespace A119658

/-- `A008578(A028815(n+1))*A008578(A008864(n+2))` -/
def P12636505167627220273.Spec : Prop :=
  ∀ n, P12636505167627220273.a n = A119658 (n + 1)

end A119658

/-! ## A119658.P16366916464276825960

`A065091(A006093(n+1))*A065091(A006093(n+2))`
-/

namespace A119658.P16366916464276825960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A006093 (n + 1)).toNat * A065091 (A006093 (n + 2)).toNat

end

end A119658.P16366916464276825960

namespace A119658

/-- `A065091(A006093(n+1))*A065091(A006093(n+2))` -/
def P16366916464276825960.Spec : Prop :=
  ∀ n, P16366916464276825960.a n = A119658 (n + 1)

end A119658

/-! ## A119658.P5460777567213710

`A006005(A006005(n+2))*A006005(A008578(n+2))`
-/

namespace A119658.P5460777567213710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A006005 (n + 2)).toNat * A006005 (A008578 (n + 2)).toNat

end

end A119658.P5460777567213710

namespace A119658

/-- `A006005(A006005(n+2))*A006005(A008578(n+2))` -/
def P5460777567213710.Spec : Prop :=
  ∀ n, P5460777567213710.a n = A119658 (n + 1)

end A119658

/-! ## A119658.P7969398162275958060

`p?[A064988(2*n+1)]*p?[A064988(n+1)]`
-/

namespace A119658.P7969398162275958060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A119658.P7969398162275958060

namespace A119658

/-- `p?[A064988(2*n+1)]*p?[A064988(n+1)]` -/
def P7969398162275958060.Spec : Prop :=
  ∀ n, P7969398162275958060.a n = A119658 (n + 1)

end A119658

/-! ## A119658.P13304285258812449379

`p?[A064988(n+1)]*A064988(A065091(n+1))`
-/

namespace A119658.P13304285258812449379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A064988 (A065091 (n + 1)).toNat

end

end A119658.P13304285258812449379

namespace A119658

/-- `p?[A064988(n+1)]*A064988(A065091(n+1))` -/
def P13304285258812449379.Spec : Prop :=
  ∀ n, P13304285258812449379.a n = A119658 (n + 1)

end A119658

/-! ## A119658.P16395485237048538907

`∏{p}[A006094(n+1), A000040(#)]`
-/

namespace A119658.P16395485237048538907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 p

end

end A119658.P16395485237048538907

namespace A119658

/-- `∏{p}[A006094(n+1), A000040(#)]` -/
def P16395485237048538907.Spec : Prop :=
  ∀ n, P16395485237048538907.a n = A119658 (n + 1)

end A119658

/-! ## A119658.P3232870751809317668

`∏{p}[A116570(2*n), A000040(#)]`
-/

namespace A119658.P3232870751809317668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 p

end

end A119658.P3232870751809317668

namespace A119658

/-- `∏{p}[A116570(2*n), A000040(#)]` -/
def P3232870751809317668.Spec : Prop :=
  ∀ n, P3232870751809317668.a n = A119658 (n + 1)

end A119658

/-!
# A119660: Prime factor of the distinct numbers appearing as denominators of Bernoulli numbers A090801 that is greater than all previous a(n). a(1) = 2.

The programs for A119660, there is no canonical definition to state claims against.
-/

/-! ## A119660.P4783369064141186608

`record[A006530(A090801(n+2))]`
-/

namespace A119660.P4783369064141186608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A090801 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119660.P4783369064141186608

/-! ## A119660.P8086936321715621494

`∪[A038537(n+1), A092307(n+1)]`
-/

namespace A119660.P8086936321715621494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119660.P8086936321715621494

/-! ## A119660.P6895530540835459863

`∪[A066306(n+1), A092307(n+1)]`
-/

namespace A119660.P6895530540835459863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119660.P6895530540835459863

/-! ## A119660.P8837283906340949213

`∪[A076530(n+1), A092307(n+1)]`
-/

namespace A119660.P8837283906340949213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119660.P8837283906340949213

/-! ## A119660.P10022391176286762595

`∪[A079148(n+1), A092307(n+1)]`
-/

namespace A119660.P10022391176286762595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119660.P10022391176286762595

/-!
# A119661: a(n) = floor(Pi/arccos(n/(n+1))).

The programs for A119661, the canonical program `A119661.P3431954635346906207` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119661 has offset 1).

The definition of A119661 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(π/acos((n+1)/(n+2)))` (program `A119661.P3431954635346906207`, by `A119661.P3431954635346906207.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A119661.P3431954635346906207

`floor(π/acos((n+1)/(n+2)))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A119661

/-- `floor(π/acos((n+1)/(n+2)))` -/
def P3431954635346906207.Spec : Prop :=
  ∀ n, P3431954635346906207.a n = A119661 (n + 1)

theorem P3431954635346906207.correct : P3431954635346906207.Spec := by
  intro n
  simp only [A119661, Nat.add_sub_cancel]

end A119661

/-! ## A119661.P8981527594077337008

`A121902(A190524(n+2)-A121902(n))`
-/

namespace A119661.P8981527594077337008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A190524 (n + 2) - A121902 n).toNat

end

end A119661.P8981527594077337008

namespace A119661

/-- `A121902(A190524(n+2)-A121902(n))` -/
def P8981527594077337008.Spec : Prop :=
  ∀ n, P8981527594077337008.a n = A119661 (n + 1)

end A119661

/-! ## A119661.P1308162325154976033

`A003056(A284534(n+1))+A000079(A151909(n))`
-/

namespace A119661.P1308162325154976033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A284534 (n + 1)).toNat + A000079 (A151909 n).toNat

end

end A119661.P1308162325154976033

namespace A119661

/-- `A003056(A284534(n+1))+A000079(A151909(n))` -/
def P1308162325154976033.Spec : Prop :=
  ∀ n, P1308162325154976033.a n = A119661 (n + 1)

end A119661

/-! ## A119661.P11445694399703300346

`A003056(A284534(n+1))+A000005(A151909(n)+1)`
-/

namespace A119661.P11445694399703300346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A284534 (n + 1)).toNat + A000005 (A151909 n + 1).toNat

end

end A119661.P11445694399703300346

namespace A119661

/-- `A003056(A284534(n+1))+A000005(A151909(n)+1)` -/
def P11445694399703300346.Spec : Prop :=
  ∀ n, P11445694399703300346.a n = A119661 (n + 1)

end A119661

/-! ## A119661.P12593645801617591956

`A003056(A284534(n+1))+A000027(A151909(n)+1)`
-/

namespace A119661.P12593645801617591956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A284534 (n + 1)).toNat + A000027 (A151909 n + 1).toNat

end

end A119661.P12593645801617591956

namespace A119661

/-- `A003056(A284534(n+1))+A000027(A151909(n)+1)` -/
def P12593645801617591956.Spec : Prop :=
  ∀ n, P12593645801617591956.a n = A119661 (n + 1)

end A119661

/-! ## A119661.P13275291688193009685

`A003056(A284534(n+1))+A000041(A151909(n)+1)`
-/

namespace A119661.P13275291688193009685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A284534 (n + 1)).toNat + A000041 (A151909 n + 1).toNat

end

end A119661.P13275291688193009685

namespace A119661

/-- `A003056(A284534(n+1))+A000041(A151909(n)+1)` -/
def P13275291688193009685.Spec : Prop :=
  ∀ n, P13275291688193009685.a n = A119661 (n + 1)

end A119661

/-! ## A119661.P1337135825775859202

`A003056(A284534(n+1))+A000142(A151909(n)+1)`
-/

namespace A119661.P1337135825775859202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A284534 (n + 1)).toNat + A000142 (A151909 n + 1).toNat

end

end A119661.P1337135825775859202

namespace A119661

/-- `A003056(A284534(n+1))+A000142(A151909(n)+1)` -/
def P1337135825775859202.Spec : Prop :=
  ∀ n, P1337135825775859202.a n = A119661 (n + 1)

end A119661

/-! ## A119661.P7001349192824520514

`A003056(A284534(n+1))+A002618(A151909(n)+1)`
-/

namespace A119661.P7001349192824520514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A284534 (n + 1)).toNat + A002618 (A151909 n + 1).toNat

end

end A119661.P7001349192824520514

namespace A119661

/-- `A003056(A284534(n+1))+A002618(A151909(n)+1)` -/
def P7001349192824520514.Spec : Prop :=
  ∀ n, P7001349192824520514.a n = A119661 (n + 1)

end A119661

/-! ## A119661.P7232825682562971175

`A003056(A284534(n+1))+A005117(A151909(n)+1)`
-/

namespace A119661.P7232825682562971175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A284534 (n + 1)).toNat + A005117 (A151909 n + 1).toNat

end

end A119661.P7232825682562971175

namespace A119661

/-- `A003056(A284534(n+1))+A005117(A151909(n)+1)` -/
def P7232825682562971175.Spec : Prop :=
  ∀ n, P7232825682562971175.a n = A119661 (n + 1)

end A119661

/-! ## A119661.P2886480033200876990

`A003056(A284534(n+1))+A006530(A151909(n)+1)`
-/

namespace A119661.P2886480033200876990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A284534 (n + 1)).toNat + A006530 (A151909 n + 1).toNat

end

end A119661.P2886480033200876990

namespace A119661

/-- `A003056(A284534(n+1))+A006530(A151909(n)+1)` -/
def P2886480033200876990.Spec : Prop :=
  ∀ n, P2886480033200876990.a n = A119661 (n + 1)

end A119661

/-!
# A119662: Primes of the form k! + k^2 + 1.

The programs for A119662, there is no canonical definition to state claims against.
-/

/-! ## A119662.P13872800823885170640

`p?[n²+n!+1]`
-/

namespace A119662.P13872800823885170640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (Nat.factorial n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A119662.P13872800823885170640

/-!
# A119663: Triangular numbers with at most two distinct prime factors.

The programs for A119663, there is no canonical definition to state claims against.
-/

/-! ## A119663.P9730891377308156943

`record[lcm(2, A139082(n+1))/2]`
-/

namespace A119663.P9730891377308156943
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A139082 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119663.P9730891377308156943

/-! ## A119663.P14189353949525207132

`record[gcd(A000217(n+1), A139082(n+1))]`
-/

namespace A119663.P14189353949525207132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (n + 1)) (A139082 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119663.P14189353949525207132

/-! ## A119663.P11220417480141815134

`record[A000124(n)%A139082(n+1)+n]`
-/

namespace A119663.P11220417480141815134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000124 n) (A139082 (n + 1)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119663.P11220417480141815134

/-! ## A119663.P9906215898724022843

`C(lt[A001221(C(n+2, 2)), 3]+2, 2)`
-/

namespace A119663.P9906215898724022843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (n + 2) 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2) 2

end

end A119663.P9906215898724022843

/-! ## A119663.P1292584186424108149

`∩[A070915(n+1), A000217(n)]`
-/

namespace A119663.P1292584186424108149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119663.P1292584186424108149

/-!
# A119664: Sign in term (2p +/ - 1) for triangular numbers of the form p * (2p +/ - 1), where the two factors are both primes.

The programs for A119664, the canonical program `A119664.P12264335523670075281` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119664 has offset 1).

The definition of A119664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119664.P12264335523670075281

`(-1)^A164977(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A119664

/-- `(-1)^A164977(n+1)` -/
def P12264335523670075281.Spec : Prop :=
  ∀ n, P12264335523670075281.a n = (A119664 (n + 1) : ℚ)

end A119664

/-! ## A119664.P7236185445619659590

`1-and(2, A079149(n+1)+1)`
-/

namespace A119664.P7236185445619659590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A079149 (n + 1) + 1)

end

end A119664.P7236185445619659590

namespace A119664

/-- `1-and(2, A079149(n+1)+1)` -/
def P7236185445619659590.Spec : Prop :=
  ∀ n, P7236185445619659590.a n = A119664 (n + 1)

end A119664

/-! ## A119664.P5761750664657005985

`A215063(gcd(A034444(n+1), A164977(n+1)))`
-/

namespace A119664.P5761750664657005985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215063 (Int.gcd (A034444 (n + 1)) (A164977 (n + 1)))

end

end A119664.P5761750664657005985

namespace A119664

/-- `A215063(gcd(A034444(n+1), A164977(n+1)))` -/
def P5761750664657005985.Spec : Prop :=
  ∀ n, P5761750664657005985.a n = A119664 (n + 1)

end A119664

/-! ## A119664.P6409777824263235615

`A001222(A001222(A164977(n+1))²)-1`
-/

namespace A119664.P6409777824263235615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001222 (A164977 (n + 1)).toNat ^ 2).toNat - 1

end

end A119664.P6409777824263235615

namespace A119664

/-- `A001222(A001222(A164977(n+1))²)-1` -/
def P6409777824263235615.Spec : Prop :=
  ∀ n, P6409777824263235615.a n = A119664 (n + 1)

end A119664

/-! ## A119664.P4042680093390042619

`A304438(A164977(n+1)+1)`
-/

namespace A119664.P4042680093390042619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304438 (A164977 (n + 1) + 1).toNat

end

end A119664.P4042680093390042619

namespace A119664

/-- `A304438(A164977(n+1)+1)` -/
def P4042680093390042619.Spec : Prop :=
  ∀ n, P4042680093390042619.a n = A119664 (n + 1)

end A119664

/-! ## A119664.P13357899583151738672

`A068717(A079149(n+1))`
-/

namespace A119664.P13357899583151738672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068717 (A079149 (n + 1)).toNat

end

end A119664.P13357899583151738672

namespace A119664

/-- `A068717(A079149(n+1))` -/
def P13357899583151738672.Spec : Prop :=
  ∀ n, P13357899583151738672.a n = A119664 (n + 1)

end A119664

/-! ## A119664.P11270786379022269754

`A008836(A164977(n+1))`
-/

namespace A119664.P11270786379022269754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A164977 (n + 1)).toNat

end

end A119664.P11270786379022269754

namespace A119664

/-- `A008836(A164977(n+1))` -/
def P11270786379022269754.Spec : Prop :=
  ∀ n, P11270786379022269754.a n = A119664 (n + 1)

end A119664

/-! ## A119664.P9009507661849337913

`A009531(2*A164977(n+1)+1)`
-/

namespace A119664.P9009507661849337913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * A164977 (n + 1) + 1).toNat

end

end A119664.P9009507661849337913

namespace A119664

/-- `A009531(2*A164977(n+1)+1)` -/
def P9009507661849337913.Spec : Prop :=
  ∀ n, P9009507661849337913.a n = A119664 (n + 1)

end A119664

/-! ## A119664.P17684557045216128551

`A009531(A164977(n+1)+A164977(n+1)+1)`
-/

namespace A119664.P17684557045216128551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A164977 (n + 1) + (A164977 (n + 1) + 1)).toNat

end

end A119664.P17684557045216128551

namespace A119664

/-- `A009531(A164977(n+1)+A164977(n+1)+1)` -/
def P17684557045216128551.Spec : Prop :=
  ∀ n, P17684557045216128551.a n = A119664 (n + 1)

end A119664

/-!
# A119665: Sign in the term (2q +/ - 1) for triangular numbers of the form q * (2q +/ - 1) where both factors are primes (or prime powers).

The programs for A119665, there is no canonical definition to state claims against.
-/

/-! ## A119665.P5306479689750927896

`(-1)^A268830(A119663(n+1))`
-/

namespace A119665.P5306479689750927896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A268830 (A119663 (n + 1)).toNat : ℤ)

end

end A119665.P5306479689750927896

/-! ## A119665.P2524659391179843220

`A066170(A119663(n+1))`
-/

namespace A119665.P2524659391179843220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066170 (A119663 (n + 1)).toNat

end

end A119665.P2524659391179843220

/-! ## A119665.P8367904830593831838

`A140756(A119663(n+1)+1)`
-/

namespace A119665.P8367904830593831838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (A119663 (n + 1) + 1).toNat

end

end A119665.P8367904830593831838

/-! ## A119665.P9075683689283264687

`A165574(A004719(n+1)*n²+7)`
-/

namespace A119665.P9075683689283264687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165574 (A004719 (n + 1) * (n ^ 2 : ℤ) + 7).toNat

end

end A119665.P9075683689283264687

/-! ## A119665.P12333517592370715943

`A106400(A027655(n)%A158558(n+2))`
-/

namespace A119665.P12333517592370715943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (Int.tmod (A027655 n) (A158558 (n + 2))).toNat

end

end A119665.P12333517592370715943

/-!
# A119666: Each term k provides a value of (sum-of-digits of 5^k)/k that is closer to Pi than the previous value.

The programs for A119666, there is no canonical definition to state claims against.
-/

/-! ## A119666.P13005342662398845005

`A342863(A150794(n))`
-/

namespace A119666.P13005342662398845005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342863 (A150794 n).toNat

end

end A119666.P13005342662398845005

/-! ## A119666.P16122473614205492161

`A194902(A112160(n²))`
-/

namespace A119666.P16122473614205492161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194902 (A112160 (n ^ 2)).toNat

end

end A119666.P16122473614205492161

/-!
# A119667: Squares that contain multi-digit prime substrings.

The programs for A119667, there is no canonical definition to state claims against.
-/

/-! ## A119667.P14934819313391444610

`or(A001221(A166201(n)), A005843(n+7))²`
-/

namespace A119667.P14934819313391444610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A166201 n).toNat) (A005843 (n + 7)) ^ 2

end

end A119667.P14934819313391444610

/-! ## A119667.P11971540663644331228

`A005245(A175805(n+2)-1)²`
-/

namespace A119667.P11971540663644331228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005245 (A175805 (n + 2) - 1).toNat ^ 2

end

end A119667.P11971540663644331228

/-!
# A119668: Number of chambers in root systems of type A_n.

The programs for A119668, there is no canonical definition to state claims against.
-/

/-! ## A119668.P13328081644208143570

`∑[A286091(n^n)]`
-/

namespace A119668.P13328081644208143570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286091 (n ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119668.P13328081644208143570

/-!
# A119671: a(0)=1. a(2^m +k) = a(m) + k, where 0 <= k <= 2^m -1, m >= 0.

The programs for A119671, there is no canonical definition to state claims against.
-/

/-! ## A119671.P13421783944099734436

`A194029(A070939(n))+A004526(A006257(n))`
-/

namespace A119671.P13421783944099734436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194029 (A070939 n).toNat + A004526 (A006257 n).toNat

end

end A119671.P13421783944099734436

/-! ## A119671.P9147390406638217699

`1-A131617(A083662(n))+n`
-/

namespace A119671.P9147390406638217699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A131617 (A083662 n).toNat + (n : ℤ)

end

end A119671.P9147390406638217699

/-! ## A119671.P8611904875992007061

`A110654(A005408(n))-A131617(A083662(n))`
-/

namespace A119671.P8611904875992007061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A005408 n).toNat - A131617 (A083662 n).toNat

end

end A119671.P8611904875992007061

/-! ## A119671.P1049390769505333540

`2-A115973(A062383(n))+n`
-/

namespace A119671.P1049390769505333540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A115973 (A062383 n).toNat + (n : ℤ)

end

end A119671.P1049390769505333540

/-! ## A119671.P10371498043043529977

`2-A001489(n)-A115973(A062383(n))`
-/

namespace A119671.P10371498043043529977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001489 n - A115973 (A062383 n).toNat

end

end A119671.P10371498043043529977

/-!
# A119672: Number of prime factors (with multiplicity) of n^4 + 3*n^2 + 1 (A057721).

The programs for A119672, the canonical program `A119672.P5651530296740596756` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119672 has offset 0).

The definition of A119672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119672.P5651530296740596756

`A001222(n^4+3*n²+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A119672

/-- `A001222(n^4+3*n²+1)` -/
def P5651530296740596756.Spec : Prop :=
  ∀ n, P5651530296740596756.a n = A119672 n

theorem P5651530296740596756.correct : P5651530296740596756.Spec := by
  intro n
  simp only [A119672]

end A119672

/-! ## A119672.P8175156715405206537

`∑{e}[A278247(n²), #]`
-/

namespace A119672.P8175156715405206537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278247 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A119672.P8175156715405206537

namespace A119672

/-- `∑{e}[A278247(n²), #]` -/
def P8175156715405206537.Spec : Prop :=
  ∀ n, (P8175156715405206537.a n : ℤ) = A119672 n

end A119672

/-! ## A119672.P4908636402787570925

`A069904(A278247(n²))`
-/

namespace A119672.P4908636402787570925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (A278247 (n ^ 2)).toNat

end

end A119672.P4908636402787570925

namespace A119672

/-- `A069904(A278247(n²))` -/
def P4908636402787570925.Spec : Prop :=
  ∀ n, P4908636402787570925.a n = A119672 n

end A119672

/-! ## A119672.P12033236887760937908

`A054973(2*A278247(n²))`
-/

namespace A119672.P12033236887760937908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (2 * A278247 (n ^ 2)).toNat

end

end A119672.P12033236887760937908

namespace A119672

/-- `A054973(2*A278247(n²))` -/
def P12033236887760937908.Spec : Prop :=
  ∀ n, P12033236887760937908.a n = A119672 n

end A119672

/-! ## A119672.P5509191162598514096

`A069904(A046523(A278247(n*n)))`
-/

namespace A119672.P5509191162598514096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (A046523 (A278247 (n * n)).toNat).toNat

end

end A119672.P5509191162598514096

namespace A119672

/-- `A069904(A046523(A278247(n*n)))` -/
def P5509191162598514096.Spec : Prop :=
  ∀ n, P5509191162598514096.a n = A119672 n

end A119672

/-! ## A119672.P16340621017692172149

`A001222(A278247(n²))*A178334(n)`
-/

namespace A119672.P16340621017692172149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278247 (n ^ 2)).toNat * A178334 n

end

end A119672.P16340621017692172149

namespace A119672

/-- `A001222(A278247(n²))*A178334(n)` -/
def P16340621017692172149.Spec : Prop :=
  ∀ n, P16340621017692172149.a n = A119672 n

end A119672

/-!
# A119673: T(n, k) = 3*T(n-1, k-1) + T(n-1, k) for k < n and T(n, n) = 1, T(n, k) = 0, if k < 0 or k > n; triangle read by rows.

The programs for A119673, the canonical program `A119673.P14676430310363076738` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119673 has offset 0).

The definition of A119673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119673.P14153615937114789293

`A193842(n-row(n))`
-/

namespace A119673.P14153615937114789293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 (n - SequenceMachineLib.triRow n)

end

end A119673.P14153615937114789293

namespace A119673

/-- `A193842(n-row(n))` -/
def P14153615937114789293.Spec : Prop :=
  ∀ n, P14153615937114789293.a n = A119673 n

end A119673

/-! ## A119673.P4882904378006065243

`A193842(2*(n+1)-comp[∑[n]])`
-/

namespace A119673.P4882904378006065243
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 (2 * (n + 1) - SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A119673.P4882904378006065243

namespace A119673

/-- `A193842(2*(n+1)-comp[∑[n]])` -/
def P4882904378006065243.Spec : Prop :=
  ∀ n, P4882904378006065243.a n = A119673 n

end A119673

/-! ## A119673.P14676430310363076738

`abs(2*a(n-1)-A013610(n))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A119673

/-- `abs(2*a(n-1)-A013610(n))` -/
def P14676430310363076738.Spec : Prop :=
  ∀ n, P14676430310363076738.a n = A119673 n

theorem P14676430310363076738.correct : P14676430310363076738.Spec := by
  intro n
  simp only [A119673]

end A119673

/-! ## A119673.P2060991535087563510

`gcd(A010816(n), A193842(A271439(n)))`
-/

namespace A119673.P2060991535087563510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n) (A193842 (A271439 n).toNat)

end

end A119673.P2060991535087563510

namespace A119673

/-- `gcd(A010816(n), A193842(A271439(n)))` -/
def P2060991535087563510.Spec : Prop :=
  ∀ n, (P2060991535087563510.a n : ℤ) = A119673 n

end A119673

/-! ## A119673.P2218922053320760

`A193842(A271439(n))^Δ[A002260(n+1)]`
-/

namespace A119673.P2218922053320760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193842 (A271439 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A119673.P2218922053320760

namespace A119673

/-- `A193842(A271439(n))^Δ[A002260(n+1)]` -/
def P2218922053320760.Spec : Prop :=
  ∀ n, P2218922053320760.a n = (A119673 n : ℚ)

end A119673

/-! ## A119673.P8602915548922192089

`A193842(A271439(n))^(A000027(n+1)-n)`
-/

namespace A119673.P8602915548922192089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193842 (A271439 n).toNat : ℚ) ^ (A000027 (n + 1) - (n : ℤ) : ℤ)

end

end A119673.P8602915548922192089

namespace A119673

/-- `A193842(A271439(n))^(A000027(n+1)-n)` -/
def P8602915548922192089.Spec : Prop :=
  ∀ n, P8602915548922192089.a n = (A119673 n : ℚ)

end A119673

/-! ## A119673.P11812855332113987095

`A121561(A093515(n+1))*A193842(A271439(n))`
-/

namespace A119673.P11812855332113987095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121561 (A093515 (n + 1)).toNat * A193842 (A271439 n).toNat

end

end A119673.P11812855332113987095

namespace A119673

/-- `A121561(A093515(n+1))*A193842(A271439(n))` -/
def P11812855332113987095.Spec : Prop :=
  ∀ n, P11812855332113987095.a n = A119673 n

end A119673

/-! ## A119673.P7346756517570609091

`A001221(A002374(n+3))*A193842(A271439(n))`
-/

namespace A119673.P7346756517570609091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002374 (n + 3)).toNat * A193842 (A271439 n).toNat

end

end A119673.P7346756517570609091

namespace A119673

/-- `A001221(A002374(n+3))*A193842(A271439(n))` -/
def P7346756517570609091.Spec : Prop :=
  ∀ n, P7346756517570609091.a n = A119673 n

end A119673

/-! ## A119673.P2467309487812857962

`A193842(A271439(n))^A046951(A007947(n+1))`
-/

namespace A119673.P2467309487812857962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193842 (A271439 n).toNat : ℚ) ^ (A046951 (A007947 (n + 1)).toNat : ℤ)

end

end A119673.P2467309487812857962

namespace A119673

/-- `A193842(A271439(n))^A046951(A007947(n+1))` -/
def P2467309487812857962.Spec : Prop :=
  ∀ n, P2467309487812857962.a n = (A119673 n : ℚ)

end A119673

/-! ## A119673.P17531080890821686243

`A193842(A271439(n))+A000007(n+1)`
-/

namespace A119673.P17531080890821686243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 (A271439 n).toNat + A000007 (n + 1)

end

end A119673.P17531080890821686243

namespace A119673

/-- `A193842(A271439(n))+A000007(n+1)` -/
def P17531080890821686243.Spec : Prop :=
  ∀ n, P17531080890821686243.a n = A119673 n

end A119673

/-! ## A119673.P968885009101589284

`gcd(2, A000040(n+2))*A193842(A271439(n))`
-/

namespace A119673.P968885009101589284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 2)) : ℤ) * A193842 (A271439 n).toNat

end

end A119673.P968885009101589284

namespace A119673

/-- `gcd(2, A000040(n+2))*A193842(A271439(n))` -/
def P968885009101589284.Spec : Prop :=
  ∀ n, P968885009101589284.a n = A119673 n

end A119673

/-! ## A119673.P17659653306971159893

`A193842(A271439(n))%A000041(n+2)`
-/

namespace A119673.P17659653306971159893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193842 (A271439 n).toNat) (A000041 (n + 2))

end

end A119673.P17659653306971159893

namespace A119673

/-- `A193842(A271439(n))%A000041(n+2)` -/
def P17659653306971159893.Spec : Prop :=
  ∀ n, P17659653306971159893.a n = A119673 n

end A119673

/-! ## A119673.P9097973503024089830

`A057979(2*n)*A193842(A271439(n))`
-/

namespace A119673.P9097973503024089830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) * A193842 (A271439 n).toNat

end

end A119673.P9097973503024089830

namespace A119673

/-- `A057979(2*n)*A193842(A271439(n))` -/
def P9097973503024089830.Spec : Prop :=
  ∀ n, P9097973503024089830.a n = A119673 n

end A119673

/-! ## A119673.P13291675551613169672

`A003849(A003622(n+1))*A193842(A271439(n))`
-/

namespace A119673.P13291675551613169672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A003622 (n + 1)).toNat * A193842 (A271439 n).toNat

end

end A119673.P13291675551613169672

namespace A119673

/-- `A003849(A003622(n+1))*A193842(A271439(n))` -/
def P13291675551613169672.Spec : Prop :=
  ∀ n, P13291675551613169672.a n = A119673 n

end A119673

/-! ## A119673.P3502214468088870261

`A007318(A286956(n)+1-n)*A193842(A271439(n))`
-/

namespace A119673.P3502214468088870261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A286956 n + (1 - (n : ℤ))).toNat * A193842 (A271439 n).toNat

end

end A119673.P3502214468088870261

namespace A119673

/-- `A007318(A286956(n)+1-n)*A193842(A271439(n))` -/
def P3502214468088870261.Spec : Prop :=
  ∀ n, P3502214468088870261.a n = A119673 n

end A119673

/-! ## A119673.P16801449443474819758

`A014591(A286956(n)+1-n)*A193842(A271439(n))`
-/

namespace A119673.P16801449443474819758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014591 (A286956 n + (1 - (n : ℤ))).toNat * A193842 (A271439 n).toNat

end

end A119673.P16801449443474819758

namespace A119673

/-- `A014591(A286956(n)+1-n)*A193842(A271439(n))` -/
def P16801449443474819758.Spec : Prop :=
  ∀ n, P16801449443474819758.a n = A119673 n

end A119673

/-! ## A119673.P6378426994088715120

`A014963(A007304(n+1))*A193842(A271439(n))`
-/

namespace A119673.P6378426994088715120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A007304 (n + 1)).toNat * A193842 (A271439 n).toNat

end

end A119673.P6378426994088715120

namespace A119673

/-- `A014963(A007304(n+1))*A193842(A271439(n))` -/
def P6378426994088715120.Spec : Prop :=
  ∀ n, P6378426994088715120.a n = A119673 n

end A119673

/-! ## A119673.P1416845475209194691

`A193842(A271439(n))^A014963(A006093(n+1))`
-/

namespace A119673.P1416845475209194691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193842 (A271439 n).toNat : ℚ) ^ (A014963 (A006093 (n + 1)).toNat : ℤ)

end

end A119673.P1416845475209194691

namespace A119673

/-- `A193842(A271439(n))^A014963(A006093(n+1))` -/
def P1416845475209194691.Spec : Prop :=
  ∀ n, P1416845475209194691.a n = (A119673 n : ℚ)

end A119673

/-!
# A119674: Number of states of the minimal deterministic finite automaton that accepts binary strings that represent numbers that are divisible by n.

The programs for A119674, the canonical program `A119674.P4521212800816503129` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119674 has offset 1).

The definition of A119674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119674.P17825699874927905357

`(n+1)/2^val(n+1, 2)+val(n+1, 2)`
-/

namespace A119674.P17825699874927905357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + (SequenceMachineLib.valuation (n + 1) 2 : ℚ)

end

end A119674.P17825699874927905357

namespace A119674

/-- `(n+1)/2^val(n+1, 2)+val(n+1, 2)` -/
def P17825699874927905357.Spec : Prop :=
  ∀ n, P17825699874927905357.a n = (A119674 (n + 1) : ℚ)

end A119674

/-! ## A119674.P4521212800816503129

`A000265(n+1)+A007814(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A119674

/-- `A000265(n+1)+A007814(n+1)` -/
def P4521212800816503129.Spec : Prop :=
  ∀ n, P4521212800816503129.a n = A119674 (n + 1)

theorem P4521212800816503129.correct : P4521212800816503129.Spec := by
  intro n
  simp only [A119674, Nat.add_sub_cancel]

end A119674

/-! ## A119674.P8686978217559162029

`val(n+1, 2)+(n+1)/(or(n, n+1)-n)`
-/

namespace A119674.P8686978217559162029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℚ) + (n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ)

end

end A119674.P8686978217559162029

namespace A119674

/-- `val(n+1, 2)+(n+1)/(or(n, n+1)-n)` -/
def P8686978217559162029.Spec : Prop :=
  ∀ n, P8686978217559162029.a n = (A119674 (n + 1) : ℚ)

end A119674

/-! ## A119674.P17707902873235177077

`val(n+1, 2)+(n+1)/xor(n, or(n, n+1))`
-/

namespace A119674.P17707902873235177077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℚ) + (n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ)

end

end A119674.P17707902873235177077

namespace A119674

/-- `val(n+1, 2)+(n+1)/xor(n, or(n, n+1))` -/
def P17707902873235177077.Spec : Prop :=
  ∀ n, P17707902873235177077.a n = (A119674 (n + 1) : ℚ)

end A119674

/-! ## A119674.P8526218761111988755

`val(n+1, 2)+(n+1)*2^-val(n+1, 2)`
-/

namespace A119674.P8526218761111988755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℚ) + (n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ)

end

end A119674.P8526218761111988755

namespace A119674

/-- `val(n+1, 2)+(n+1)*2^-val(n+1, 2)` -/
def P8526218761111988755.Spec : Prop :=
  ∀ n, P8526218761111988755.a n = (A119674 (n + 1) : ℚ)

end A119674

/-! ## A119674.P11767537110477861418

`val(n+1, 2)+2^(log2(n+1)-val(n+1, 2))`
-/

namespace A119674.P11767537110477861418
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℝ) + (2 : ℝ) ^ (Real.logb 2 (n + 1 : ℝ) - (SequenceMachineLib.valuation (n + 1) 2 : ℝ))

end

end A119674.P11767537110477861418

namespace A119674

/-- `val(n+1, 2)+2^(log2(n+1)-val(n+1, 2))` -/
def P11767537110477861418.Spec : Prop :=
  ∀ n, P11767537110477861418.a n = (A119674 (n + 1) : ℝ)

end A119674

/-! ## A119674.P3911115088955812865

`val(n+1, 2)+(n+1)/and(n+1, -(n+1))`
-/

namespace A119674.P3911115088955812865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℚ) + (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

end

end A119674.P3911115088955812865

namespace A119674

/-- `val(n+1, 2)+(n+1)/and(n+1, -(n+1))` -/
def P3911115088955812865.Spec : Prop :=
  ∀ n, P3911115088955812865.a n = (A119674 (n + 1) : ℚ)

end A119674

/-! ## A119674.P3670946960104446401

`val(n+1, 2)+(n+1)/ceil(xor(n, n+1)/2)`
-/

namespace A119674.P3670946960104446401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℚ) + (n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ)

end

end A119674.P3670946960104446401

namespace A119674

/-- `val(n+1, 2)+(n+1)/ceil(xor(n, n+1)/2)` -/
def P3670946960104446401.Spec : Prop :=
  ∀ n, P3670946960104446401.a n = (A119674 (n + 1) : ℚ)

end A119674

/-! ## A119674.P16308207411316180312

`val(n+1, 2)+2*(n+1)/(xor(n, n+1)+1)`
-/

namespace A119674.P16308207411316180312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 : ℚ) + (2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)

end

end A119674.P16308207411316180312

namespace A119674

/-- `val(n+1, 2)+2*(n+1)/(xor(n, n+1)+1)` -/
def P16308207411316180312.Spec : Prop :=
  ∀ n, P16308207411316180312.a n = (A119674 (n + 1) : ℚ)

end A119674

/-! ## A119674.P15448190632902585909

`floor(log2(xor(n, n+1)))+(n+1)/(or(n, n+1)-n)`
-/

namespace A119674.P15448190632902585909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (Nat.xor n (n + 1)) : ℚ) + (n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ)

end

end A119674.P15448190632902585909

namespace A119674

/-- `floor(log2(xor(n, n+1)))+(n+1)/(or(n, n+1)-n)` -/
def P15448190632902585909.Spec : Prop :=
  ∀ n, P15448190632902585909.a n = (A119674 (n + 1) : ℚ)

end A119674

/-! ## A119674.P16212038276072112547

`A089265(n+1)+1`
-/

namespace A119674.P16212038276072112547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089265 (n + 1) + 1

end

end A119674.P16212038276072112547

namespace A119674

/-- `A089265(n+1)+1` -/
def P16212038276072112547.Spec : Prop :=
  ∀ n, P16212038276072112547.a n = A119674 (n + 1)

end A119674

/-! ## A119674.P3588588103461567005

`Δ[n²]-A274593(n)`
-/

namespace A119674.P3588588103461567005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A274593 n

end

end A119674.P3588588103461567005

namespace A119674

/-- `Δ[n²]-A274593(n)` -/
def P3588588103461567005.Spec : Prop :=
  ∀ n, P3588588103461567005.a n = A119674 (n + 1)

end A119674

/-! ## A119674.P16954113988560527697

`A330393(n)+A025480(n)`
-/

namespace A119674.P16954113988560527697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330393 n + A025480 n

end

end A119674.P16954113988560527697

namespace A119674

/-- `A330393(n)+A025480(n)` -/
def P16954113988560527697.Spec : Prop :=
  ∀ n, P16954113988560527697.a n = A119674 (n + 1)

end A119674

/-! ## A119674.P10851948337361063830

`A153733(n)+A001511(n+1)`
-/

namespace A119674.P10851948337361063830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 n + A001511 (n + 1)

end

end A119674.P10851948337361063830

namespace A119674

/-- `A153733(n)+A001511(n+1)` -/
def P10851948337361063830.Spec : Prop :=
  ∀ n, P10851948337361063830.a n = A119674 (n + 1)

theorem P10851948337361063830.correct : P10851948337361063830.Spec := by
  intro n
  simp only [A119674, Nat.add_sub_cancel, A119674.P10851948337361063830.a, A119674.P4521212800816503129.a, A000265, A000265.P16482698636471710744.a, A001511, A001511.P17146462531039486101.a, A007814, A007814.P13537437864234730737.a, A153733, A153733.P10755713114946739736.a, A006519, A006519.P10435570611646570274.a, A331739, A331739.P457850794578440847.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A119674

/-! ## A119674.P12761908110253785570

`A153733(n)+2-Δ[A000120(n)]`
-/

namespace A119674.P12761908110253785570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 n + (2 - (f1 (n + 1) - f1 n))

end

end A119674.P12761908110253785570

namespace A119674

/-- `A153733(n)+2-Δ[A000120(n)]` -/
def P12761908110253785570.Spec : Prop :=
  ∀ n, P12761908110253785570.a n = A119674 (n + 1)

end A119674

/-! ## A119674.P2513141754663147735

`Δ[A005187(n)]+2*A025480(n)`
-/

namespace A119674.P2513141754663147735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A025480 n

end

end A119674.P2513141754663147735

namespace A119674

/-- `Δ[A005187(n)]+2*A025480(n)` -/
def P2513141754663147735.Spec : Prop :=
  ∀ n, P2513141754663147735.a n = A119674 (n + 1)

end A119674

/-! ## A119674.P6397723558349139317

`A007814(n+1)+A153733(n)+1`
-/

namespace A119674.P6397723558349139317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + (A153733 n + 1)

end

end A119674.P6397723558349139317

namespace A119674

/-- `A007814(n+1)+A153733(n)+1` -/
def P6397723558349139317.Spec : Prop :=
  ∀ n, P6397723558349139317.a n = A119674 (n + 1)

theorem P6397723558349139317.correct : P6397723558349139317.Spec := by
  intro n
  simp only [A119674, Nat.add_sub_cancel, A119674.P6397723558349139317.a, A119674.P4521212800816503129.a, A000265, A000265.P16482698636471710744.a, A007814, A007814.P13537437864234730737.a, A153733, A153733.P10755713114946739736.a, A001511, A001511.P17146462531039486101.a, A331739, A331739.P457850794578440847.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A119674

/-! ## A119674.P11724649740703104779

`A271519(n+1)+A003602(n+1)`
-/

namespace A119674.P11724649740703104779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271519 (n + 1) + A003602 (n + 1)

end

end A119674.P11724649740703104779

namespace A119674

/-- `A271519(n+1)+A003602(n+1)` -/
def P11724649740703104779.Spec : Prop :=
  ∀ n, P11724649740703104779.a n = A119674 (n + 1)

end A119674

/-! ## A119674.P1744749540891012267

`A271519(n+1)+A025480(n)+1`
-/

namespace A119674.P1744749540891012267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271519 (n + 1) + (A025480 n + 1)

end

end A119674.P1744749540891012267

namespace A119674

/-- `A271519(n+1)+A025480(n)+1` -/
def P1744749540891012267.Spec : Prop :=
  ∀ n, P1744749540891012267.a n = A119674 (n + 1)

end A119674

/-! ## A119674.P1101380301320446623

`A274716(n+1)+A063787(n+1)`
-/

namespace A119674.P1101380301320446623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274716 (n + 1) + A063787 (n + 1)

end

end A119674.P1101380301320446623

namespace A119674

/-- `A274716(n+1)+A063787(n+1)` -/
def P1101380301320446623.Spec : Prop :=
  ∀ n, P1101380301320446623.a n = A119674 (n + 1)

end A119674

/-!
# A119675: Natural numbers n such that the number of prime factors of n (counted with multiplicity) is a Fibonacci number.

The programs for A119675, there is no canonical definition to state claims against.
-/

/-! ## A119675.P6147394701146831032

`lt[tan(A073855(n)), 0]`
-/

namespace A119675.P6147394701146831032
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A073855 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A119675.P6147394701146831032

/-! ## A119675.P3463099117365426358

`eq[1, A001945(∑{e}[n, #])]`
-/

namespace A119675.P3463099117365426358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001945 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119675.P3463099117365426358

/-! ## A119675.P15268614007079988423

`lt[C(6, a(A001222(n))), 3]` with `a(0)=3`
-/

namespace A119675.P15268614007079988423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  Nat.choose 6 (f1 (A001222 n).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119675.P15268614007079988423

/-! ## A119675.P1075806630095298979

`lt[A342403(n+1), n]+1`
-/

namespace A119675.P1075806630095298979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342403 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A119675.P1075806630095298979

/-! ## A119675.P886058777368789037

`lt[2, A000005(∑{e}[n, #]+13)]`
-/

namespace A119675.P886058777368789037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A119675.P886058777368789037

/-! ## A119675.P789627508311480638

`eq[1, 97%(A001222(n+1)+1)]+1`
-/

namespace A119675.P789627508311480638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 97 (A001222 (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119675.P789627508311480638

/-! ## A119675.P11121805004876467476

`lt[A006530(∑{e}[n+1, #]+13), 8]+1`
-/

namespace A119675.P11121805004876467476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 13)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A119675.P11121805004876467476

/-! ## A119675.P8591541596078525021

`lt[A073855(n), A073855(n²)]`
-/

namespace A119675.P8591541596078525021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119675.P8591541596078525021

/-! ## A119675.P5455681404353842183

`lt[A000005(A001222(n+2)), 3]+2`
-/

namespace A119675.P5455681404353842183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001222 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A119675.P5455681404353842183

/-! ## A119675.P11089997054388743384

`record[n/A001222(a(A001222(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A119675.P11089997054388743384
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  (n : ℚ) / (A001222 (SequenceMachineLib.roundAway (f1 (A001222 n).toNat)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119675.P11089997054388743384

/-!
# A119676: a(0)=1. a(n) = n-th integer from among those positive integers which are coprime to the product of the earlier terms of the sequence.

The programs for A119676, there is no canonical definition to state claims against.
-/

/-! ## A119676.P3928253105332167290

`∑[A278042(or(n, A056182(n)))]`
-/

namespace A119676.P3928253105332167290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278042 (Int.lor (n : ℤ) (A056182 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119676.P3928253105332167290

/-! ## A119676.P15401873197917090363

`A157416(n+2)+A000122(n)-A022554(n)`
-/

namespace A119676.P15401873197917090363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157416 (n + 2) + A000122 n - A022554 n

end

end A119676.P15401873197917090363

/-! ## A119676.P6236237069999342748

`∑[A346698((A247323(n+2)+A247321(n))²)]`
-/

namespace A119676.P6236237069999342748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 ((A247323 (n + 2) + A247321 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119676.P6236237069999342748

/-!
# A119677: a(n) is the number of complete squares that fit inside the circle with radius n, drawn on squared paper at (0, 0).

The programs for A119677, the canonical program `A119677.P15587159543036332007` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119677 has offset 0).

The definition of A119677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119677.P15587159543036332007

`4*(A036698(n)-n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A119677

/-- `4*(A036698(n)-n)` -/
def P15587159543036332007.Spec : Prop :=
  ∀ n, P15587159543036332007.a n = A119677 n

theorem P15587159543036332007.correct : P15587159543036332007.Spec := by
  intro n
  simp only [A119677]

end A119677

/-! ## A119677.P11154425740530541547

`∑[A036693(n)-4]+3`
-/

namespace A119677.P11154425740530541547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036693 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A119677.P11154425740530541547

namespace A119677

/-- `∑[A036693(n)-4]+3` -/
def P11154425740530541547.Spec : Prop :=
  ∀ n, P11154425740530541547.a n = A119677 n

end A119677

/-! ## A119677.P18250714922767789146

`4*(∑[A036694(n)]-n)`
-/

namespace A119677.P18250714922767789146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A119677.P18250714922767789146

namespace A119677

/-- `4*(∑[A036694(n)]-n)` -/
def P18250714922767789146.Spec : Prop :=
  ∀ n, P18250714922767789146.a n = A119677 n

end A119677

/-! ## A119677.P11843241887500095175

`A000328(n)-(4*n+1)`
-/

namespace A119677.P11843241887500095175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n - (4 * n + 1 : ℤ)

end

end A119677.P11843241887500095175

namespace A119677

/-- `A000328(n)-(4*n+1)` -/
def P11843241887500095175.Spec : Prop :=
  ∀ n, P11843241887500095175.a n = A119677 n

end A119677

/-! ## A119677.P1586567039692370750

`A136485(A004277(n))`
-/

namespace A119677.P1586567039692370750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136485 (A004277 n).toNat

end

end A119677.P1586567039692370750

namespace A119677

/-- `A136485(A004277(n))` -/
def P1586567039692370750.Spec : Prop :=
  ∀ n, P1586567039692370750.a n = A119677 n

end A119677

/-! ## A119677.P3193049130308493578

`A136485(A004275(n+1))`
-/

namespace A119677.P3193049130308493578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136485 (A004275 (n + 1)).toNat

end

end A119677.P3193049130308493578

namespace A119677

/-- `A136485(A004275(n+1))` -/
def P3193049130308493578.Spec : Prop :=
  ∀ n, P3193049130308493578.a n = A119677 n

end A119677

/-! ## A119677.P2262739017808467553

`A136485(A316571(n+1))`
-/

namespace A119677.P2262739017808467553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136485 (A316571 (n + 1)).toNat

end

end A119677.P2262739017808467553

namespace A119677

/-- `A136485(A316571(n+1))` -/
def P2262739017808467553.Spec : Prop :=
  ∀ n, P2262739017808467553.a n = A119677 n

end A119677

/-! ## A119677.P17086340922780385599

`A136485(A300576(n+2))`
-/

namespace A119677.P17086340922780385599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136485 (A300576 (n + 2)).toNat

end

end A119677.P17086340922780385599

namespace A119677

/-- `A136485(A300576(n+2))` -/
def P17086340922780385599.Spec : Prop :=
  ∀ n, P17086340922780385599.a n = A119677 n

end A119677

/-! ## A119677.P7624954443882726800

`A261849(A008486(n)-n)`
-/

namespace A119677.P7624954443882726800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261849 (A008486 n - (n : ℤ)).toNat

end

end A119677.P7624954443882726800

namespace A119677

/-- `A261849(A008486(n)-n)` -/
def P7624954443882726800.Spec : Prop :=
  ∀ n, P7624954443882726800.a n = A119677 n

end A119677

/-! ## A119677.P6502778574507005130

`A261849(A008574(n)-2*n)`
-/

namespace A119677.P6502778574507005130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261849 (A008574 n - (2 * n : ℤ)).toNat

end

end A119677.P6502778574507005130

namespace A119677

/-- `A261849(A008574(n)-2*n)` -/
def P6502778574507005130.Spec : Prop :=
  ∀ n, P6502778574507005130.a n = A119677 n

end A119677

/-! ## A119677.P5352746886821722376

`A053411(2*n)-A005408(2*n)`
-/

namespace A119677.P5352746886821722376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 (2 * n) - A005408 (2 * n)

end

end A119677.P5352746886821722376

namespace A119677

/-- `A053411(2*n)-A005408(2*n)` -/
def P5352746886821722376.Spec : Prop :=
  ∀ n, P5352746886821722376.a n = A119677 n

end A119677

/-! ## A119677.P14832989476899945527

`filter[A261849(n+1), A121262(#)]`
-/

namespace A119677.P14832989476899945527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A119677.P14832989476899945527

namespace A119677

/-- `filter[A261849(n+1), A121262(#)]` -/
def P14832989476899945527.Spec : Prop :=
  ∀ n, P14832989476899945527.a n = A119677 n

end A119677

/-! ## A119677.P1769493224125366198

`A016813(A036698(n))-A016813(n)`
-/

namespace A119677.P1769493224125366198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A036698 n).toNat - A016813 n

end

end A119677.P1769493224125366198

namespace A119677

/-- `A016813(A036698(n))-A016813(n)` -/
def P1769493224125366198.Spec : Prop :=
  ∀ n, P1769493224125366198.a n = A119677 n

end A119677

/-! ## A119677.P6891912102488367550

`A008574(∑[A036694(n)])-A008574(n)`
-/

namespace A119677.P6891912102488367550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A008574 n

end

end A119677.P6891912102488367550

namespace A119677

/-- `A008574(∑[A036694(n)])-A008574(n)` -/
def P6891912102488367550.Spec : Prop :=
  ∀ n, P6891912102488367550.a n = A119677 n

end A119677

/-! ## A119677.P15057075143640381343

`4*A237526(n²)`
-/

namespace A119677.P15057075143640381343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A237526 (n ^ 2)

end

end A119677.P15057075143640381343

namespace A119677

/-- `4*A237526(n²)` -/
def P15057075143640381343.Spec : Prop :=
  ∀ n, P15057075143640381343.a n = A119677 n

end A119677

/-! ## A119677.P1721466076154145559

`A014198(n²)-4*n`
-/

namespace A119677.P1721466076154145559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014198 (n ^ 2) - (4 * n : ℤ)

end

end A119677.P1721466076154145559

namespace A119677

/-- `A014198(n²)-4*n` -/
def P1721466076154145559.Spec : Prop :=
  ∀ n, P1721466076154145559.a n = A119677 n

end A119677

/-! ## A119677.P9232429139266423391

`4*(A014200(n²)-n)`
-/

namespace A119677.P9232429139266423391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A014200 (n ^ 2) - (n : ℤ))

end

end A119677.P9232429139266423391

namespace A119677

/-- `4*(A014200(n²)-n)` -/
def P9232429139266423391.Spec : Prop :=
  ∀ n, P9232429139266423391.a n = A119677 n

end A119677

/-!
# A119680: Prime numbers obtained by inserting a 0 between each pair of adjacent digits of a prime number > 10.

The programs for A119680, there is no canonical definition to state claims against.
-/

/-! ## A119680.P9402086410733668313

`A051022(A159236(n+1))`
-/

namespace A119680.P9402086410733668313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (A159236 (n + 1)).toNat

end

end A119680.P9402086410733668313

/-! ## A119680.P5013087502228999684

`A051022(p?[A050674(n+1)])`
-/

namespace A119680.P5013087502228999684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A119680.P5013087502228999684

/-! ## A119680.P16768330412543854

`A051022(filter[A050674(n+1), A175126(#)])`
-/

namespace A119680.P16768330412543854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (f1 (SequenceMachineLib.nth (fun j => A175126 (f1 j).toNat = 1) n)).toNat

end

end A119680.P16768330412543854

/-! ## A119680.P1452223769448649685

`A051022(∩[A000040(n+1), A050674(n+1)])`
-/

namespace A119680.P1452223769448649685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A119680.P1452223769448649685

/-! ## A119680.P11356774770156389397

`A051022(∩[A045344(n+1), A050674(n+1)])`
-/

namespace A119680.P11356774770156389397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A119680.P11356774770156389397

/-! ## A119680.P5769292484265474478

`A051022(∩[A050674(n+1), A053577(n+1)])`
-/

namespace A119680.P5769292484265474478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A119680.P5769292484265474478

/-! ## A119680.P1776000460320475215

`A051022(∩[A050674(n+1), A055977(n+1)])`
-/

namespace A119680.P1776000460320475215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A119680.P1776000460320475215

/-! ## A119680.P11954307019796929776

`A051022(∩[A326715(n+1), A050674(n+1)])`
-/

namespace A119680.P11954307019796929776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050674 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A119680.P11954307019796929776

/-! ## A119680.P15909620662242525270

`∩[A092909(n+1), A120533(n+1)]`
-/

namespace A119680.P15909620662242525270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119680.P15909620662242525270

/-! ## A119680.P928510292536171234

`p?[A092909(n+5)]`
-/

namespace A119680.P928510292536171234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092909 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119680.P928510292536171234

/-!
# A119681: Odd numbers n such that 2n-1 is prime.

The programs for A119681, the canonical program `A119681.P12750816001809644194` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119681 has offset 1).

The definition of A119681 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119681.P12750816001809644194

`(A002144(n+1)+1)/2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A119681

/-- `(A002144(n+1)+1)/2` -/
def P12750816001809644194.Spec : Prop :=
  ∀ n, P12750816001809644194.a n = (A119681 (n + 1) : ℚ)

end A119681

/-! ## A119681.P3145726527747807758

`ceil(p?[4*n+1]/2)`
-/

namespace A119681.P3145726527747807758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌉

end

end A119681.P3145726527747807758

namespace A119681

/-- `ceil(p?[4*n+1]/2)` -/
def P3145726527747807758.Spec : Prop :=
  ∀ n, P3145726527747807758.a n = A119681 (n + 1)

end A119681

/-! ## A119681.P16261544478287005503

`round(p?[4*n+1]/2)`
-/

namespace A119681.P16261544478287005503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2)

end

end A119681.P16261544478287005503

namespace A119681

/-- `round(p?[4*n+1]/2)` -/
def P16261544478287005503.Spec : Prop :=
  ∀ n, P16261544478287005503.a n = A119681 (n + 1)

end A119681

/-! ## A119681.P12898341722478189378

`ceil(cosh(log(p?[4*n+1])))`
-/

namespace A119681.P12898341722478189378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ))⌉

end

end A119681.P12898341722478189378

namespace A119681

/-- `ceil(cosh(log(p?[4*n+1])))` -/
def P12898341722478189378.Spec : Prop :=
  ∀ n, P12898341722478189378.a n = A119681 (n + 1)

end A119681

/-! ## A119681.P2609138377322197525

`round(cosh(log(p?[4*n+1])))`
-/

namespace A119681.P2609138377322197525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ)))

end

end A119681.P2609138377322197525

namespace A119681

/-- `round(cosh(log(p?[4*n+1])))` -/
def P2609138377322197525.Spec : Prop :=
  ∀ n, P2609138377322197525.a n = A119681 (n + 1)

end A119681

/-! ## A119681.P2001545293977564382

`ceil(sinh(log(p?[4*n+1])))`
-/

namespace A119681.P2001545293977564382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ))⌉

end

end A119681.P2001545293977564382

namespace A119681

/-- `ceil(sinh(log(p?[4*n+1])))` -/
def P2001545293977564382.Spec : Prop :=
  ∀ n, P2001545293977564382.a n = A119681 (n + 1)

end A119681

/-! ## A119681.P4583512110423155970

`(p?[4*n+1]+1)/2`
-/

namespace A119681.P4583512110423155970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1 : ℚ) / 2

end

end A119681.P4583512110423155970

namespace A119681

/-- `(p?[4*n+1]+1)/2` -/
def P4583512110423155970.Spec : Prop :=
  ∀ n, P4583512110423155970.a n = (A119681 (n + 1) : ℚ)

end A119681

/-! ## A119681.P13114001784695347276

`A089255(n+1)-2`
-/

namespace A119681.P13114001784695347276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089255 (n + 1) - 2

end

end A119681.P13114001784695347276

namespace A119681

/-- `A089255(n+1)-2` -/
def P13114001784695347276.Spec : Prop :=
  ∀ n, P13114001784695347276.a n = A119681 (n + 1)

end A119681

/-! ## A119681.P1908068946640862638

`ceil(sqrt(A171555(n+1)))`
-/

namespace A119681.P1908068946640862638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A171555 (n + 1) : ℝ)⌉

end

end A119681.P1908068946640862638

namespace A119681

/-- `ceil(sqrt(A171555(n+1)))` -/
def P1908068946640862638.Spec : Prop :=
  ∀ n, P1908068946640862638.a n = A119681 (n + 1)

end A119681

/-! ## A119681.P9116979894763036492

`ceil(A002144(n+1)/2)`
-/

namespace A119681.P9116979894763036492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002144 (n + 1) : ℚ) / 2⌉

end

end A119681.P9116979894763036492

namespace A119681

/-- `ceil(A002144(n+1)/2)` -/
def P9116979894763036492.Spec : Prop :=
  ∀ n, P9116979894763036492.a n = A119681 (n + 1)

end A119681

/-! ## A119681.P12579122569211845257

`2*A005098(n+1)+1`
-/

namespace A119681.P12579122569211845257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005098 (n + 1) + 1

end

end A119681.P12579122569211845257

namespace A119681

/-- `2*A005098(n+1)+1` -/
def P12579122569211845257.Spec : Prop :=
  ∀ n, P12579122569211845257.a n = A119681 (n + 1)

end A119681

/-! ## A119681.P9641782238888608871

`A152680(n+1)/2+1`
-/

namespace A119681.P9641782238888608871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152680 (n + 1) : ℚ) / 2 + 1

end

end A119681.P9641782238888608871

namespace A119681

/-- `A152680(n+1)/2+1` -/
def P9641782238888608871.Spec : Prop :=
  ∀ n, P9641782238888608871.a n = (A119681 (n + 1) : ℚ)

end A119681

/-! ## A119681.P1406334931141051495

`2*A111215(n+1)+3`
-/

namespace A119681.P1406334931141051495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111215 (n + 1) + 3

end

end A119681.P1406334931141051495

namespace A119681

/-- `2*A111215(n+1)+3` -/
def P1406334931141051495.Spec : Prop :=
  ∀ n, P1406334931141051495.a n = A119681 (n + 1)

end A119681

/-! ## A119681.P1464926700772537295

`∪[A186300(n+1), A186294(n+1)]`
-/

namespace A119681.P1464926700772537295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119681.P1464926700772537295

namespace A119681

/-- `∪[A186300(n+1), A186294(n+1)]` -/
def P1464926700772537295.Spec : Prop :=
  ∀ n, (P1464926700772537295.a n : ℤ) = A119681 (n + 1)

end A119681

/-! ## A119681.P7406724906917705295

`A002144(n+1)-(A005098(n+1)+A005098(n+1))`
-/

namespace A119681.P7406724906917705295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) - (A005098 (n + 1) + A005098 (n + 1))

end

end A119681.P7406724906917705295

namespace A119681

/-- `A002144(n+1)-(A005098(n+1)+A005098(n+1))` -/
def P7406724906917705295.Spec : Prop :=
  ∀ n, P7406724906917705295.a n = A119681 (n + 1)

end A119681

/-! ## A119681.P975309975268409892

`ceil(A002313(n+2)/2)`
-/

namespace A119681.P975309975268409892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002313 (n + 2) : ℚ) / 2⌉

end

end A119681.P975309975268409892

namespace A119681

/-- `ceil(A002313(n+2)/2)` -/
def P975309975268409892.Spec : Prop :=
  ∀ n, P975309975268409892.a n = A119681 (n + 1)

end A119681

/-! ## A119681.P17006348477255604841

`A034954(n+2)/A002313(n+2)`
-/

namespace A119681.P17006348477255604841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034954 (n + 2) : ℚ) / (A002313 (n + 2) : ℚ)

end

end A119681.P17006348477255604841

namespace A119681

/-- `A034954(n+2)/A002313(n+2)` -/
def P17006348477255604841.Spec : Prop :=
  ∀ n, P17006348477255604841.a n = (A119681 (n + 1) : ℚ)

end A119681

/-! ## A119681.P6623398747704701459

`A034954(n+2)/A280084(n+2)`
-/

namespace A119681.P6623398747704701459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034954 (n + 2) : ℚ) / (A280084 (n + 2) : ℚ)

end

end A119681.P6623398747704701459

namespace A119681

/-- `A034954(n+2)/A280084(n+2)` -/
def P6623398747704701459.Spec : Prop :=
  ∀ n, P6623398747704701459.a n = (A119681 (n + 1) : ℚ)

end A119681

/-! ## A119681.P1668222564196129267

`record[A057024(n+1)]`
-/

namespace A119681.P1668222564196129267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119681.P1668222564196129267

namespace A119681

/-- `record[A057024(n+1)]` -/
def P1668222564196129267.Spec : Prop :=
  ∀ n, P1668222564196129267.a n = A119681 (n + 1)

end A119681

/-! ## A119681.P5049931472886356915

`record[A271974(n+3)]`
-/

namespace A119681.P5049931472886356915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271974 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119681.P5049931472886356915

namespace A119681

/-- `record[A271974(n+3)]` -/
def P5049931472886356915.Spec : Prop :=
  ∀ n, P5049931472886356915.a n = A119681 (n + 1)

end A119681

/-!
# A119682: Numerator of Sum_{k=1..n} (-1)^(k+1)/k^2.

The programs for A119682, there is no canonical definition to state claims against.
-/

/-! ## A119682.P8840485805087643468

`A119784(n+1)/gcd(A001819(n+1), A119784(n+1))`
-/

namespace A119682.P8840485805087643468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119784 (n + 1) : ℚ) / (Int.gcd (A001819 (n + 1)) (A119784 (n + 1)) : ℚ)

end

end A119682.P8840485805087643468

/-! ## A119682.P1324187810656646923

`A119784(A077168(n))/A007406(n+1)`
-/

namespace A119682.P1324187810656646923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119784 (A077168 n).toNat : ℚ) / (A007406 (n + 1) : ℚ)

end

end A119682.P1324187810656646923

/-! ## A119682.P4448084381021863367

`A119784(A077168(n))/A322265(∑[n+4]-n)`
-/

namespace A119682.P4448084381021863367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119784 (A077168 n).toNat : ℚ) / (A322265 (∑ j ∈ Finset.range (n + 1), f1 j - n) : ℚ)

end

end A119682.P4448084381021863367

/-! ## A119682.P3475047857674110670

`A119784(A077168(n))/(∑[(1/(n+1))²]*A007407(n+1))`
-/

namespace A119682.P3475047857674110670
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119784 (A077168 n).toNat : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j) * (A007407 (n + 1) : ℚ))

end

end A119682.P3475047857674110670

/-!
# A119683: Maximal number of steps that an n-state Turing machine can make which was started on an initially blank tape before halting on the blank tape again.

The programs for A119683, there is no canonical definition to state claims against.
-/

/-! ## A119683.P12762606149300007980

`∑[A100516(n)]+val(n+1, 2)`
-/

namespace A119683.P12762606149300007980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A119683.P12762606149300007980

/-!
# A119684: Ternary emirpimes.

The programs for A119684, there is no canonical definition to state claims against.
-/

/-! ## A119684.P101885720729146396

`filter[A007089(2*(n+2)), A083888(#)]`
-/

namespace A119684.P101885720729146396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A083888 (f1 j).toNat = 1) n)

end

end A119684.P101885720729146396

/-!
# A119685: G.f. satisfies: A(x) = x + A(x^2/(1-x)^2).

The programs for A119685, there is no canonical definition to state claims against.
-/

/-! ## A119685.P8488188045583328048

`A065033(A057889(n)+A000129(n))`
-/

namespace A119685.P8488188045583328048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A057889 n + A000129 n).toNat

end

end A119685.P8488188045583328048

/-! ## A119685.P8507662467433839644

`A123108(A057889(n)+A000129(n))`
-/

namespace A119685.P8507662467433839644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A057889 n + A000129 n).toNat

end

end A119685.P8507662467433839644

/-! ## A119685.P14893657862581961795

`A004526(A215928(n)+A008729(n))`
-/

namespace A119685.P14893657862581961795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A215928 n + A008729 n).toNat

end

end A119685.P14893657862581961795

/-! ## A119685.P188804197935545432

`A065033(A173151(n)+A000129(n))`
-/

namespace A119685.P188804197935545432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A173151 n + A000129 n).toNat

end

end A119685.P188804197935545432

/-! ## A119685.P11948420386410727812

`A065033(A209862(n)+A000129(n))`
-/

namespace A119685.P11948420386410727812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A209862 n + A000129 n).toNat

end

end A119685.P11948420386410727812

/-!
# A119686: Numerator of Sum_{k=1..n} 1/(prime(k) - 1)^2.

The programs for A119686, there is no canonical definition to state claims against.
-/

/-! ## A119686.P3634706333974910277

`A277599(∏[A029618(n)*A042813(n)])`
-/

namespace A119686.P3634706333974910277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 n * A042813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277599 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A119686.P3634706333974910277

/-!
# A119687: f-Pascal's triangle where f(n) = n^2 = A000290(n).

The programs for A119687, the canonical program `A119687.P15835442132254681947` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119687 has offset 0).

The definition of A119687 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119687.P15835442132254681947

`T(n-1,k-1)²+T(n-1,k)²` with `a(0)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A119687

/-- `T(n-1,k-1)²+T(n-1,k)²` -/
def P15835442132254681947.Spec : Prop :=
  ∀ n, (P15835442132254681947.a n : ℤ) = A119687 n

theorem P15835442132254681947.correct : P15835442132254681947.Spec := by
  intro n
  simp only [A119687]

end A119687

/-! ## A119687.P11161203145430811003

`T(n-1,k-1)*T(n-1,k-1)+T(n-1,k)*T(n-1,k)` with `a(0)=1`
-/

namespace A119687.P11161203145430811003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n * SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n * SequenceMachineLib.triUp a n

end

end A119687.P11161203145430811003

namespace A119687

/-- `T(n-1,k-1)*T(n-1,k-1)+T(n-1,k)*T(n-1,k)` -/
def P11161203145430811003.Spec : Prop :=
  ∀ n, (P11161203145430811003.a n : ℤ) = A119687 n

theorem P11161203145430811003.correct : P11161203145430811003.Spec := by
  intro n
  simp only [A119687, Nat.add_sub_cancel, A119687.P11161203145430811003.a, A119687.P15835442132254681947.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A119687

/-! ## A119687.P7968428785130819332

`T(n-1,k-1)*T(n-1,k-1)-(T(n-1,k)-2*T(n-1,k))*T(n-1,k)` with `a(0)=1`
-/

namespace A119687.P7968428785130819332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n * SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUp a n - 2 * SequenceMachineLib.triUp a n) * SequenceMachineLib.triUp a n

end

end A119687.P7968428785130819332

namespace A119687

/-- `T(n-1,k-1)*T(n-1,k-1)-(T(n-1,k)-2*T(n-1,k))*T(n-1,k)` -/
def P7968428785130819332.Spec : Prop :=
  ∀ n, P7968428785130819332.a n = A119687 n

end A119687

/-!
# A119688: a(n) = n!! mod (n+1).

The programs for A119688, the canonical program `A119688.P1162028171687552644` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119688 has offset 1).

The definition of A119688 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119688.P1162028171687552644

`A006882(n+1)%(n+2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A119688

/-- `A006882(n+1)%(n+2)` -/
def P1162028171687552644.Spec : Prop :=
  ∀ n, P1162028171687552644.a n = A119688 (n + 1)

theorem P1162028171687552644.correct : P1162028171687552644.Spec := by
  intro n
  simp only [A119688, Nat.add_sub_cancel]

end A119688

/-! ## A119688.P6709024081567022364

`A126868(n+2)`
-/

namespace A119688.P6709024081567022364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126868 (n + 2)

end

end A119688.P6709024081567022364

namespace A119688

/-- `A126868(n+2)` -/
def P6709024081567022364.Spec : Prop :=
  ∀ n, P6709024081567022364.a n = A119688 (n + 1)

end A119688

/-! ## A119688.P15231211122720743769

`∏[(n+1)/a(n-1)]%(n+2)` with `a(0)=1`
-/

namespace A119688.P15231211122720743769
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℚ) / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)) (n + 2 : ℤ)

end

end A119688.P15231211122720743769

namespace A119688

/-- `∏[(n+1)/a(n-1)]%(n+2)` -/
def P15231211122720743769.Spec : Prop :=
  ∀ n, P15231211122720743769.a n = A119688 (n + 1)

end A119688

/-! ## A119688.P2952654887627471384

`A227415(n+2)%(n+2)`
-/

namespace A119688.P2952654887627471384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227415 (n + 2)) (n + 2 : ℤ)

end

end A119688.P2952654887627471384

namespace A119688

/-- `A227415(n+2)%(n+2)` -/
def P2952654887627471384.Spec : Prop :=
  ∀ n, P2952654887627471384.a n = A119688 (n + 1)

end A119688

/-! ## A119688.P18213390659428035984

`A076051(n+2)%(n+2)`
-/

namespace A119688.P18213390659428035984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076051 (n + 2)) (n + 2 : ℤ)

end

end A119688.P18213390659428035984

namespace A119688

/-- `A076051(n+2)%(n+2)` -/
def P18213390659428035984.Spec : Prop :=
  ∀ n, P18213390659428035984.a n = A119688 (n + 1)

end A119688

/-! ## A119688.P10711512013878530613

`A060696(n+3)%(n+2)`
-/

namespace A119688.P10711512013878530613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060696 (n + 3)) (n + 2 : ℤ)

end

end A119688.P10711512013878530613

namespace A119688

/-- `A060696(n+3)%(n+2)` -/
def P10711512013878530613.Spec : Prop :=
  ∀ n, P10711512013878530613.a n = A119688 (n + 1)

end A119688

/-! ## A119688.P2143203252804743736

`A216443(n+3)%(n+2)`
-/

namespace A119688.P2143203252804743736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216443 (n + 3)) (n + 2 : ℤ)

end

end A119688.P2143203252804743736

namespace A119688

/-- `A216443(n+3)%(n+2)` -/
def P2143203252804743736.Spec : Prop :=
  ∀ n, P2143203252804743736.a n = A119688 (n + 1)

end A119688

/-! ## A119688.P4893929017145462610

`A216466(n+3)%(n+2)`
-/

namespace A119688.P4893929017145462610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216466 (n + 3)) (n + 2 : ℤ)

end

end A119688.P4893929017145462610

namespace A119688

/-- `A216466(n+3)%(n+2)` -/
def P4893929017145462610.Spec : Prop :=
  ∀ n, P4893929017145462610.a n = A119688 (n + 1)

end A119688

/-! ## A119688.P15706020130251465191

`A007911(n+4)%(n+2)`
-/

namespace A119688.P15706020130251465191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007911 (n + 4)) (n + 2 : ℤ)

end

end A119688.P15706020130251465191

namespace A119688

/-- `A007911(n+4)%(n+2)` -/
def P15706020130251465191.Spec : Prop :=
  ∀ n, P15706020130251465191.a n = A119688 (n + 1)

end A119688

/-! ## A119688.P7539919989049084880

`A308434(n+3)%(n+2)`
-/

namespace A119688.P7539919989049084880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308434 (n + 3)) (n + 2 : ℤ)

end

end A119688.P7539919989049084880

namespace A119688

/-- `A308434(n+3)%(n+2)` -/
def P7539919989049084880.Spec : Prop :=
  ∀ n, P7539919989049084880.a n = A119688 (n + 1)

end A119688

/-!
# A119689: Numbers n such that the sum of the largest distinct prime divisor and the smallest distinct prime divisor is a prime.

The programs for A119689, the canonical program `A119689.P16972974707859361701` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119689 has offset 1).

The definition of A119689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119689.P7183529207786569120

`eq[2, A000005(A074320(n+2))]+2`
-/

namespace A119689.P7183529207786569120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A074320 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A119689.P7183529207786569120

namespace A119689

/-- `eq[2, A000005(A074320(n+2))]+2` -/
def P7183529207786569120.Spec : Prop :=
  ∀ n, (P7183529207786569120.a n : ℤ) = A119689 (n + 1)

end A119689

/-! ## A119689.P16972974707859361701

`eq[n%2, A001222(A006530(n+1)+2)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A119689

/-- `eq[n%2, A001222(A006530(n+1)+2)]+1` -/
def P16972974707859361701.Spec : Prop :=
  ∀ n, (P16972974707859361701.a n : ℤ) = A119689 (n + 1)

theorem P16972974707859361701.correct : P16972974707859361701.Spec := by
  intro n
  simp only [A119689, Nat.add_sub_cancel]

end A119689

/-! ## A119689.P13467627153028719458

`eq[(-1)^n, A033273(A006530(n+2)+2)]+2`
-/

namespace A119689.P13467627153028719458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A006530 (n + 2) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A119689.P13467627153028719458

namespace A119689

/-- `eq[(-1)^n, A033273(A006530(n+2)+2)]+2` -/
def P13467627153028719458.Spec : Prop :=
  ∀ n, (P13467627153028719458.a n : ℤ) = A119689 (n + 1)

end A119689

/-! ## A119689.P16352128818035456149

`lt[A111089(n+1), A111089(A074320(n+1))]+1`
-/

namespace A119689.P16352128818035456149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (A074320 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A119689.P16352128818035456149

namespace A119689

/-- `lt[A111089(n+1), A111089(A074320(n+1))]+1` -/
def P16352128818035456149.Spec : Prop :=
  ∀ n, (P16352128818035456149.a n : ℤ) = A119689 (n + 1)

end A119689

/-! ## A119689.P6059913465107552836

`eq[A074320(2*(n+1)), A111089(A074320(n+1))]+1`
-/

namespace A119689.P6059913465107552836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074320 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (A074320 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A119689.P6059913465107552836

namespace A119689

/-- `eq[A074320(2*(n+1)), A111089(A074320(n+1))]+1` -/
def P6059913465107552836.Spec : Prop :=
  ∀ n, (P6059913465107552836.a n : ℤ) = A119689 (n + 1)

end A119689

/-!
# A119690: a(n) = n! mod n*(n+1)/2.

The programs for A119690, the canonical program `A119690.P2325763212217434104` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119690 has offset 1).

The definition of A119690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119690.P2325763212217434104

`or(1, C(∏{p}[n+2, #-1], n))-1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A119690

/-- `or(1, C(∏{p}[n+2, #-1], n))-1` -/
def P2325763212217434104.Spec : Prop :=
  ∀ n, P2325763212217434104.a n = A119690 (n + 1)

theorem P2325763212217434104.correct : P2325763212217434104.Spec := by
  intro n
  simp only [A119690, Nat.add_sub_cancel]

end A119690

/-! ## A119690.P17731709847927436354

`∏{p}[n+2, C(#, #%(n+1))]-1`
-/

namespace A119690.P17731709847927436354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose p (p % (n + 1)) : ℕ) : ℤ) - 1

end

end A119690.P17731709847927436354

namespace A119690

/-- `∏{p}[n+2, C(#, #%(n+1))]-1` -/
def P17731709847927436354.Spec : Prop :=
  ∀ n, P17731709847927436354.a n = A119690 (n + 1)

end A119690

/-! ## A119690.P7481490702327367642

`and(n+1, ∏{p}[n+2, C(#, n+1)])`
-/

namespace A119690.P7481490702327367642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose p (n + 1))

end

end A119690.P7481490702327367642

namespace A119690

/-- `and(n+1, ∏{p}[n+2, C(#, n+1)])` -/
def P7481490702327367642.Spec : Prop :=
  ∀ n, (P7481490702327367642.a n : ℤ) = A119690 (n + 1)

end A119690

/-! ## A119690.P7340771945013966828

`A090585(n+1)-1`
-/

namespace A119690.P7340771945013966828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090585 (n + 1) - 1

end

end A119690.P7340771945013966828

namespace A119690

/-- `A090585(n+1)-1` -/
def P7340771945013966828.Spec : Prop :=
  ∀ n, P7340771945013966828.a n = A119690 (n + 1)

end A119690

/-! ## A119690.P12419292540356099931

`(n+1)%A110560(n)`
-/

namespace A119690.P12419292540356099931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A110560 n)

end

end A119690.P12419292540356099931

namespace A119690

/-- `(n+1)%A110560(n)` -/
def P12419292540356099931.Spec : Prop :=
  ∀ n, P12419292540356099931.a n = A119690 (n + 1)

end A119690

/-! ## A119690.P16683579368202035097

`(n+1)*Δ[A066520(n+1)]²`
-/

namespace A119690.P16683579368202035097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n) ^ 2

end

end A119690.P16683579368202035097

namespace A119690

/-- `(n+1)*Δ[A066520(n+1)]²` -/
def P16683579368202035097.Spec : Prop :=
  ∀ n, P16683579368202035097.a n = A119690 (n + 1)

end A119690

/-! ## A119690.P10564696385296628548

`A004442(A090585(n+1))`
-/

namespace A119690.P10564696385296628548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A090585 (n + 1)).toNat

end

end A119690.P10564696385296628548

namespace A119690

/-- `A004442(A090585(n+1))` -/
def P10564696385296628548.Spec : Prop :=
  ∀ n, P10564696385296628548.a n = A119690 (n + 1)

end A119690

/-! ## A119690.P12401698475182381201

`A000096(n)%A090585(n+1)`
-/

namespace A119690.P12401698475182381201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000096 n) (A090585 (n + 1))

end

end A119690.P12401698475182381201

namespace A119690

/-- `A000096(n)%A090585(n+1)` -/
def P12401698475182381201.Spec : Prop :=
  ∀ n, P12401698475182381201.a n = A119690 (n + 1)

end A119690

/-! ## A119690.P17324710814699590080

`A014681(n)%A090585(n+1)`
-/

namespace A119690.P17324710814699590080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014681 n) (A090585 (n + 1))

end

end A119690.P17324710814699590080

namespace A119690

/-- `A014681(n)%A090585(n+1)` -/
def P17324710814699590080.Spec : Prop :=
  ∀ n, P17324710814699590080.a n = A119690 (n + 1)

end A119690

/-! ## A119690.P1129229520600913867

`A015906(n)%A090585(n+1)`
-/

namespace A119690.P1129229520600913867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015906 n) (A090585 (n + 1))

end

end A119690.P1129229520600913867

namespace A119690

/-- `A015906(n)%A090585(n+1)` -/
def P1129229520600913867.Spec : Prop :=
  ∀ n, P1129229520600913867.a n = A119690 (n + 1)

end A119690

/-! ## A119690.P1700592186915783530

`and(A083220(n), A090585(n+1))`
-/

namespace A119690.P1700592186915783530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083220 n) (A090585 (n + 1))

end

end A119690.P1700592186915783530

namespace A119690

/-- `and(A083220(n), A090585(n+1))` -/
def P1700592186915783530.Spec : Prop :=
  ∀ n, P1700592186915783530.a n = A119690 (n + 1)

end A119690

/-! ## A119690.P14906440941859280192

`and(A090585(n+1), A133265(n))`
-/

namespace A119690.P14906440941859280192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090585 (n + 1)) (A133265 n)

end

end A119690.P14906440941859280192

namespace A119690

/-- `and(A090585(n+1), A133265(n))` -/
def P14906440941859280192.Spec : Prop :=
  ∀ n, P14906440941859280192.a n = A119690 (n + 1)

end A119690

/-! ## A119690.P11524102412090613434

`and(A090585(n+1), A275365(n))`
-/

namespace A119690.P11524102412090613434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090585 (n + 1)) (A275365 n)

end

end A119690.P11524102412090613434

namespace A119690

/-- `and(A090585(n+1), A275365(n))` -/
def P11524102412090613434.Spec : Prop :=
  ∀ n, P11524102412090613434.a n = A119690 (n + 1)

end A119690

/-! ## A119690.P15990046988535848978

`and(A090585(n+1), A285326(n))`
-/

namespace A119690.P15990046988535848978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090585 (n + 1)) (A285326 n)

end

end A119690.P15990046988535848978

namespace A119690

/-- `and(A090585(n+1), A285326(n))` -/
def P15990046988535848978.Spec : Prop :=
  ∀ n, P15990046988535848978.a n = A119690 (n + 1)

end A119690

/-! ## A119690.P8055018028543827213

`A000265(n+2)-A171435(n+2)`
-/

namespace A119690.P8055018028543827213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 2) - A171435 (n + 2)

end

end A119690.P8055018028543827213

namespace A119690

/-- `A000265(n+2)-A171435(n+2)` -/
def P8055018028543827213.Spec : Prop :=
  ∀ n, P8055018028543827213.a n = A119690 (n + 1)

end A119690

/-! ## A119690.P13937561580766639516

`(n+1)*A000035(A292596(n+2))`
-/

namespace A119690.P13937561580766639516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000035 (A292596 (n + 2)).toNat

end

end A119690.P13937561580766639516

namespace A119690

/-- `(n+1)*A000035(A292596(n+2))` -/
def P13937561580766639516.Spec : Prop :=
  ∀ n, P13937561580766639516.a n = A119690 (n + 1)

end A119690

/-! ## A119690.P15976322780311603483

`A127229(n+5)%A090585(n+1)`
-/

namespace A119690.P15976322780311603483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A090585 (n + 1))

end

end A119690.P15976322780311603483

namespace A119690

/-- `A127229(n+5)%A090585(n+1)` -/
def P15976322780311603483.Spec : Prop :=
  ∀ n, P15976322780311603483.a n = A119690 (n + 1)

end A119690

/-! ## A119690.P4142390266453663417

`and(A090585(n+1), A140524(n+1))`
-/

namespace A119690.P4142390266453663417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090585 (n + 1)) (A140524 (n + 1))

end

end A119690.P4142390266453663417

namespace A119690

/-- `and(A090585(n+1), A140524(n+1))` -/
def P4142390266453663417.Spec : Prop :=
  ∀ n, P4142390266453663417.a n = A119690 (n + 1)

end A119690

/-! ## A119690.P13567344878316914992

`(n+1)*A080545(n+2)`
-/

namespace A119690.P13567344878316914992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A080545 (n + 2)

end

end A119690.P13567344878316914992

namespace A119690

/-- `(n+1)*A080545(n+2)` -/
def P13567344878316914992.Spec : Prop :=
  ∀ n, P13567344878316914992.a n = A119690 (n + 1)

end A119690

/-! ## A119690.P6117269655253852792

`lcm(n+1, A151763(n+2))`
-/

namespace A119690.P6117269655253852792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A151763 (n + 2))

end

end A119690.P6117269655253852792

namespace A119690

/-- `lcm(n+1, A151763(n+2))` -/
def P6117269655253852792.Spec : Prop :=
  ∀ n, (P6117269655253852792.a n : ℤ) = A119690 (n + 1)

end A119690

/-!
# A119692: a(n) = binomial(2*n,n) * Fibonacci(n).

The programs for A119692, the canonical program `A119692.P16480705611754038416` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119692 has offset 0).

The definition of A119692 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n, n)*A000045(n)` (program `A119692.P16480705611754038416`, by `A119692.P16480705611754038416.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A119692.P141985986822174760

`2*A119693(n)`
-/

namespace A119692.P141985986822174760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119693 n

end

end A119692.P141985986822174760

namespace A119692

/-- `2*A119693(n)` -/
def P141985986822174760.Spec : Prop :=
  ∀ n, P141985986822174760.a n = A119692 n

end A119692

/-! ## A119692.P16480705611754038416

`C(2*n, n)*A000045(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A119692

/-- `C(2*n, n)*A000045(n)` -/
def P16480705611754038416.Spec : Prop :=
  ∀ n, P16480705611754038416.a n = A119692 n

theorem P16480705611754038416.correct : P16480705611754038416.Spec := by
  intro n
  simp only [A119692]

end A119692

/-! ## A119692.P17505002861485523271

`C(2*n, n)*round(ϕ^n/sqrt(5))`
-/

namespace A119692.P17505002861485523271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))

end

end A119692.P17505002861485523271

namespace A119692

/-- `C(2*n, n)*round(ϕ^n/sqrt(5))` -/
def P17505002861485523271.Spec : Prop :=
  ∀ n, P17505002861485523271.a n = A119692 n

end A119692

/-! ## A119692.P15104932007430860929

`∑{#}[n-1, C(n-1-#, #)*C(2*n, n)]`
-/

namespace A119692.P15104932007430860929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose ((n : ℤ) - 1 - (k : ℤ)).toNat k * Nat.choose (2 * n) n

end

end A119692.P15104932007430860929

namespace A119692

/-- `∑{#}[n-1, C(n-1-#, #)*C(2*n, n)]` -/
def P15104932007430860929.Spec : Prop :=
  ∀ n, (P15104932007430860929.a n : ℤ) = A119692 n

end A119692

/-! ## A119692.P17893808569584347138

`(n+1)*A119694(n)`
-/

namespace A119692.P17893808569584347138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A119694 n

end

end A119692.P17893808569584347138

namespace A119692

/-- `(n+1)*A119694(n)` -/
def P17893808569584347138.Spec : Prop :=
  ∀ n, P17893808569584347138.a n = A119692 n

end A119692

/-! ## A119692.P2820421425167636195

`(n-∑[a(n-1)-(1-a(n-2))])*A000984(n)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A119692.P2820421425167636195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j) * A000984 n

end

end A119692.P2820421425167636195

namespace A119692

/-- `(n-∑[a(n-1)-(1-a(n-2))])*A000984(n)` -/
def P2820421425167636195.Spec : Prop :=
  ∀ n, P2820421425167636195.a n = A119692 n

end A119692

/-! ## A119692.P10904661142648788922

`A000045(n)*A000984(n)`
-/

namespace A119692.P10904661142648788922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A000984 n

end

end A119692.P10904661142648788922

namespace A119692

/-- `A000045(n)*A000984(n)` -/
def P10904661142648788922.Spec : Prop :=
  ∀ n, P10904661142648788922.a n = A119692 n

theorem P10904661142648788922.correct : P10904661142648788922.Spec := by
  intro n
  simp only [A119692, Nat.add_sub_cancel, A119692.P10904661142648788922.a, A119692.P16480705611754038416.a, A000045, A000045.P11838749114346432762.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119692

/-! ## A119692.P12976215269193527210

`A000108(n)*A099920(n)`
-/

namespace A119692.P12976215269193527210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A099920 n

end

end A119692.P12976215269193527210

namespace A119692

/-- `A000108(n)*A099920(n)` -/
def P12976215269193527210.Spec : Prop :=
  ∀ n, P12976215269193527210.a n = A119692 n

end A119692

/-! ## A119692.P12813412536697370111

`(A001611(n)-1)*A000984(n)`
-/

namespace A119692.P12813412536697370111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * A000984 n

end

end A119692.P12813412536697370111

namespace A119692

/-- `(A001611(n)-1)*A000984(n)` -/
def P12813412536697370111.Spec : Prop :=
  ∀ n, P12813412536697370111.a n = A119692 n

theorem P12813412536697370111.correct : P12813412536697370111.Spec := by
  intro n
  simp only [A119692, Nat.add_sub_cancel, A119692.P12813412536697370111.a, A119692.P16480705611754038416.a, A000045, A000045.P11838749114346432762.a, A000984, A000984.P7946844122574426130.a, A001611, A001611.P16593652898942925329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119692

/-! ## A119692.P5690368718618286866

`A000045(n)*A001405(2*n)`
-/

namespace A119692.P5690368718618286866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A001405 (2 * n)

end

end A119692.P5690368718618286866

namespace A119692

/-- `A000045(n)*A001405(2*n)` -/
def P5690368718618286866.Spec : Prop :=
  ∀ n, P5690368718618286866.a n = A119692 n

end A119692

/-! ## A119692.P1372263291315764632

`A000045(n)*A056040(2*n)`
-/

namespace A119692.P1372263291315764632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A056040 (2 * n)

end

end A119692.P1372263291315764632

namespace A119692

/-- `A000045(n)*A056040(2*n)` -/
def P1372263291315764632.Spec : Prop :=
  ∀ n, P1372263291315764632.a n = A119692 n

end A119692

/-! ## A119692.P13297230856101514265

`2*A000045(n)*A088218(n)`
-/

namespace A119692.P13297230856101514265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000045 n * A088218 n)

end

end A119692.P13297230856101514265

namespace A119692

/-- `2*A000045(n)*A088218(n)` -/
def P13297230856101514265.Spec : Prop :=
  ∀ n, P13297230856101514265.a n = A119692 n

end A119692

/-! ## A119692.P1351999080879419131

`A000045(n)*A128014(2*n)`
-/

namespace A119692.P1351999080879419131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A128014 (2 * n)

end

end A119692.P1351999080879419131

namespace A119692

/-- `A000045(n)*A128014(2*n)` -/
def P1351999080879419131.Spec : Prop :=
  ∀ n, P1351999080879419131.a n = A119692 n

end A119692

/-! ## A119692.P6410173296707002403

`A000045(n)*A129383(2*n)`
-/

namespace A119692.P6410173296707002403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A129383 (2 * n)

end

end A119692.P6410173296707002403

namespace A119692

/-- `A000045(n)*A129383(2*n)` -/
def P6410173296707002403.Spec : Prop :=
  ∀ n, P6410173296707002403.a n = A119692 n

end A119692

/-! ## A119692.P5784256446830597945

`A000045(n)/2*A028329(n)`
-/

namespace A119692.P5784256446830597945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / 2 * (A028329 n : ℚ)

end

end A119692.P5784256446830597945

namespace A119692

/-- `A000045(n)/2*A028329(n)` -/
def P5784256446830597945.Spec : Prop :=
  ∀ n, P5784256446830597945.a n = (A119692 n : ℚ)

theorem P5784256446830597945.correct : P5784256446830597945.Spec := by
  intro n
  simp only [A119692, Nat.add_sub_cancel, A119692.P5784256446830597945.a, A119692.P16480705611754038416.a, A000045, A000045.P11838749114346432762.a, A028329, A028329.P2723209719397665586.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119692

/-! ## A119692.P7252368380076163916

`A000045(n)*A210736(2*n+1)`
-/

namespace A119692.P7252368380076163916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A210736 (2 * n + 1)

end

end A119692.P7252368380076163916

namespace A119692

/-- `A000045(n)*A210736(2*n+1)` -/
def P7252368380076163916.Spec : Prop :=
  ∀ n, P7252368380076163916.a n = A119692 n

end A119692

/-! ## A119692.P8361694772622946236

`(A176085(n)+A081696(n))*A000045(n)`
-/

namespace A119692.P8361694772622946236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176085 n + A081696 n) * A000045 n

end

end A119692.P8361694772622946236

namespace A119692

/-- `(A176085(n)+A081696(n))*A000045(n)` -/
def P8361694772622946236.Spec : Prop :=
  ∀ n, P8361694772622946236.a n = A119692 n

theorem P8361694772622946236.correct : P8361694772622946236.Spec := by
  intro n
  simp only [A119692, Nat.add_sub_cancel, A119692.P8361694772622946236.a, A119692.P16480705611754038416.a, A000045, A000045.P11838749114346432762.a, A081696, A081696.P144682512311677634.a, A176085, A176085.P18095810620596158957.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119692

/-! ## A119692.P6566169550106628027

`(A001700(n)-A001791(n))*A000045(n)`
-/

namespace A119692.P6566169550106628027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001700 n - A001791 n) * A000045 n

end

end A119692.P6566169550106628027

namespace A119692

/-- `(A001700(n)-A001791(n))*A000045(n)` -/
def P6566169550106628027.Spec : Prop :=
  ∀ n, P6566169550106628027.a n = A119692 n

end A119692

/-! ## A119692.P7516115703720016357

`(A026671(n)-A054441(n))*A000045(n)`
-/

namespace A119692.P7516115703720016357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026671 n - A054441 n) * A000045 n

end

end A119692.P7516115703720016357

namespace A119692

/-- `(A026671(n)-A054441(n))*A000045(n)` -/
def P7516115703720016357.Spec : Prop :=
  ∀ n, P7516115703720016357.a n = A119692 n

theorem P7516115703720016357.correct : P7516115703720016357.Spec := by
  intro n
  simp only [A119692, Nat.add_sub_cancel, A119692.P7516115703720016357.a, A119692.P16480705611754038416.a, A000045, A000045.P11838749114346432762.a, A026671, A026671.P11258807246634829896.a, A054441, A054441.P15897159802868765390.a, A001076, A001076.P17701824972558233071.a, A176280, A176280.P4320208068863388958.f1, A176280.P4320208068863388958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119692

/-! ## A119692.P3354216670951469531

`(A277287(n)-A257838(n))*A000045(n)`
-/

namespace A119692.P3354216670951469531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A277287 n - A257838 n) * A000045 n

end

end A119692.P3354216670951469531

namespace A119692

/-- `(A277287(n)-A257838(n))*A000045(n)` -/
def P3354216670951469531.Spec : Prop :=
  ∀ n, P3354216670951469531.a n = A119692 n

end A119692

/-!
# A119693: a(n) = binomial(2*n,n) * Fibonacci(n)/2.

The programs for A119693, the canonical program `A119693.P16182671038255865393` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119693 has offset 0).

The definition of A119693 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119693.P16182671038255865393

`A119692(n)/2`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A119693

/-- `A119692(n)/2` -/
def P16182671038255865393.Spec : Prop :=
  ∀ n, P16182671038255865393.a n = (A119693 n : ℚ)

end A119693

/-! ## A119693.P12753703703212063598

`C(2*n, n)*A000045(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A119693.P12753703703212063598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n) n : ℤ) * A000045 n : ℚ) / 2

end

end A119693.P12753703703212063598

namespace A119693

/-- `C(2*n, n)*A000045(n)/2` -/
def P12753703703212063598.Spec : Prop :=
  ∀ n, P12753703703212063598.a n = (A119693 n : ℚ)

end A119693

/-! ## A119693.P4843303807059143221

`(n+1)/2*A119694(n)`
-/

namespace A119693.P4843303807059143221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A119694 n : ℚ)

end

end A119693.P4843303807059143221

namespace A119693

/-- `(n+1)/2*A119694(n)` -/
def P4843303807059143221.Spec : Prop :=
  ∀ n, P4843303807059143221.a n = (A119693 n : ℚ)

end A119693

/-! ## A119693.P10266604313995676048

`C(2*n, n)/2*A000045(n)`
-/

namespace A119693.P10266604313995676048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / 2 * (A000045 n : ℚ)

end

end A119693.P10266604313995676048

namespace A119693

/-- `C(2*n, n)/2*A000045(n)` -/
def P10266604313995676048.Spec : Prop :=
  ∀ n, P10266604313995676048.a n = (A119693 n : ℚ)

end A119693

/-! ## A119693.P13700200057793323110

`A000045(n)*A088218(n)`
-/

namespace A119693.P13700200057793323110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A088218 n

end

end A119693.P13700200057793323110

namespace A119693

/-- `A000045(n)*A088218(n)` -/
def P13700200057793323110.Spec : Prop :=
  ∀ n, P13700200057793323110.a n = A119693 n

end A119693

/-! ## A119693.P9405725649075900079

`abs(A000045(n)*A110556(n))`
-/

namespace A119693.P9405725649075900079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000045 n * A110556 n|

end

end A119693.P9405725649075900079

namespace A119693

/-- `abs(A000045(n)*A110556(n))` -/
def P9405725649075900079.Spec : Prop :=
  ∀ n, P9405725649075900079.a n = A119693 n

end A119693

/-! ## A119693.P13958707300096355834

`A000045(n)*record[A138364(n)]`
-/

namespace A119693.P13958707300096355834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119693.P13958707300096355834

namespace A119693

/-- `A000045(n)*record[A138364(n)]` -/
def P13958707300096355834.Spec : Prop :=
  ∀ n, P13958707300096355834.a n = A119693 n

end A119693

/-! ## A119693.P10012323075365610538

`A000045(n)*A210736(2*n)`
-/

namespace A119693.P10012323075365610538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A210736 (2 * n)

end

end A119693.P10012323075365610538

namespace A119693

/-- `A000045(n)*A210736(2*n)` -/
def P10012323075365610538.Spec : Prop :=
  ∀ n, P10012323075365610538.a n = A119693 n

end A119693

/-! ## A119693.P3323857211628884916

`A000045(n)/2*A000984(n)`
-/

namespace A119693.P3323857211628884916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / 2 * (A000984 n : ℚ)

end

end A119693.P3323857211628884916

namespace A119693

/-- `A000045(n)/2*A000984(n)` -/
def P3323857211628884916.Spec : Prop :=
  ∀ n, P3323857211628884916.a n = (A119693 n : ℚ)

end A119693

/-! ## A119693.P16427660445800286335

`A000108(n)/2*A099920(n)`
-/

namespace A119693.P16427660445800286335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / 2 * (A099920 n : ℚ)

end

end A119693.P16427660445800286335

namespace A119693

/-- `A000108(n)/2*A099920(n)` -/
def P16427660445800286335.Spec : Prop :=
  ∀ n, P16427660445800286335.a n = (A119693 n : ℚ)

end A119693

/-!
# A119694: a(n) = Fibonacci(n) * Catalan(n).

The programs for A119694, the canonical program `A119694.P9770232383195286344` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119694 has offset 0).

The definition of A119694 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)*A000108(n)` (program `A119694.P9770232383195286344`, by `A119694.P9770232383195286344.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A119694.P9770232383195286344

`A000045(n)*A000108(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A119694

/-- `A000045(n)*A000108(n)` -/
def P9770232383195286344.Spec : Prop :=
  ∀ n, P9770232383195286344.a n = A119694 n

theorem P9770232383195286344.correct : P9770232383195286344.Spec := by
  intro n
  simp only [A119694]

end A119694

/-! ## A119694.P5410755700933173599

`(2*n-1)*(2*n*a(n-1)+(8*n-12)*a(n-2))/(n*(n+1))` with `a(0)=0, a(1)=1`
-/

namespace A119694.P5410755700933173599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((2 * n : ℤ) - 1 : ℚ) * ((2 * n : ℚ) * a (n - 1) + ((8 * n : ℤ) - 12 : ℚ) * a (n - 2)) / (n * (n + 1) : ℚ)

end

end A119694.P5410755700933173599

namespace A119694

/-- `(2*n-1)*(2*n*a(n-1)+(8*n-12)*a(n-2))/(n*(n+1))` -/
def P5410755700933173599.Spec : Prop :=
  ∀ n, P5410755700933173599.a n = (A119694 n : ℚ)

end A119694

/-! ## A119694.P7354209192357009769

`∑{#}[n, C(n, #)²]/(n+1)*A000045(n)`
-/

namespace A119694.P7354209192357009769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k ^ 2 : ℕ) : ℚ) / (n + 1 : ℚ) * (A000045 n : ℚ)

end

end A119694.P7354209192357009769

namespace A119694

/-- `∑{#}[n, C(n, #)²]/(n+1)*A000045(n)` -/
def P7354209192357009769.Spec : Prop :=
  ∀ n, P7354209192357009769.a n = (A119694 n : ℚ)

end A119694

/-! ## A119694.P11713676191341577884

`∑{#}[n, C(n, #)²]/(n+1)*A103609(2*n)`
-/

namespace A119694.P11713676191341577884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k ^ 2 : ℕ) : ℚ) / (n + 1 : ℚ) * (A103609 (2 * n) : ℚ)

end

end A119694.P11713676191341577884

namespace A119694

/-- `∑{#}[n, C(n, #)²]/(n+1)*A103609(2*n)` -/
def P11713676191341577884.Spec : Prop :=
  ∀ n, P11713676191341577884.a n = (A119694 n : ℚ)

end A119694

/-! ## A119694.P12136985622440808022

`(A157726(n)-3)*∑{#}[n, C(n, #)²]/(n+1)`
-/

namespace A119694.P12136985622440808022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157726 n - 3 : ℚ) * (((∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k ^ 2 : ℕ) : ℚ) / (n + 1 : ℚ))

end

end A119694.P12136985622440808022

namespace A119694

/-- `(A157726(n)-3)*∑{#}[n, C(n, #)²]/(n+1)` -/
def P12136985622440808022.Spec : Prop :=
  ∀ n, P12136985622440808022.a n = (A119694 n : ℚ)

end A119694

/-! ## A119694.P6197746620376732536

`∑{#}[floor((n-1)/2), C(n-#-1, #)*A000108(n)]`
-/

namespace A119694.P6197746620376732536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n : ℤ) - (k : ℤ) - 1).toNat k : ℤ) * A000108 n

end

end A119694.P6197746620376732536

namespace A119694

/-- `∑{#}[floor((n-1)/2), C(n-#-1, #)*A000108(n)]` -/
def P6197746620376732536.Spec : Prop :=
  ∀ n, P6197746620376732536.a n = A119694 n

end A119694

/-! ## A119694.P1992547497465823317

`∑{#}[floor(n/2), ((n-2*#+1)*C(n, n-#)/(n-#+1))²]*A212804(n+1)`
-/

namespace A119694.P1992547497465823317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ k ∈ Finset.range (f1 n + 1).toNat, ((((n : ℤ) - (2 * k : ℤ) + 1) * (Nat.choose n ((n : ℤ) - (k : ℤ)).toNat : ℤ) : ℚ) / ((n : ℤ) - (k : ℤ) + 1 : ℚ)) ^ 2) * (A212804 (n + 1) : ℚ)

end

end A119694.P1992547497465823317

namespace A119694

/-- `∑{#}[floor(n/2), ((n-2*#+1)*C(n, n-#)/(n-#+1))²]*A212804(n+1)` -/
def P1992547497465823317.Spec : Prop :=
  ∀ n, P1992547497465823317.a n = (A119694 n : ℚ)

end A119694

/-! ## A119694.P8648719763478981470

`abs(A000045(n)*A168491(n))`
-/

namespace A119694.P8648719763478981470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000045 n * A168491 n|

end

end A119694.P8648719763478981470

namespace A119694

/-- `abs(A000045(n)*A168491(n))` -/
def P8648719763478981470.Spec : Prop :=
  ∀ n, P8648719763478981470.a n = A119694 n

end A119694

/-! ## A119694.P2256601956594434588

`abs(A000108(n)*A236191(n))`
-/

namespace A119694.P2256601956594434588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000108 n * A236191 n|

end

end A119694.P2256601956594434588

namespace A119694

/-- `abs(A000108(n)*A236191(n))` -/
def P2256601956594434588.Spec : Prop :=
  ∀ n, P2256601956594434588.a n = A119694 n

end A119694

/-! ## A119694.P12254862111581259426

`sqrt(A007598(n))*A000108(n)`
-/

namespace A119694.P12254862111581259426
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007598 n : ℝ) * (A000108 n : ℝ)

end

end A119694.P12254862111581259426

namespace A119694

/-- `sqrt(A007598(n))*A000108(n)` -/
def P12254862111581259426.Spec : Prop :=
  ∀ n, P12254862111581259426.a n = (A119694 n : ℝ)

end A119694

/-! ## A119694.P6628706939984627117

`A000045(n)*A039599(∑[n])`
-/

namespace A119694.P6628706939984627117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A039599 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A119694.P6628706939984627117

namespace A119694

/-- `A000045(n)*A039599(∑[n])` -/
def P6628706939984627117.Spec : Prop :=
  ∀ n, P6628706939984627117.a n = A119694 n

end A119694

/-! ## A119694.P15856516402755606342

`A000045(n)*Δ[A155587(n)]`
-/

namespace A119694.P15856516402755606342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (f1 (n + 1) - f1 n)

end

end A119694.P15856516402755606342

namespace A119694

/-- `A000045(n)*Δ[A155587(n)]` -/
def P15856516402755606342.Spec : Prop :=
  ∀ n, P15856516402755606342.a n = A119694 n

end A119694

/-! ## A119694.P4880987592327856160

`A000045(n)*A120588(n+1)`
-/

namespace A119694.P4880987592327856160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A120588 (n + 1)

end

end A119694.P4880987592327856160

namespace A119694

/-- `A000045(n)*A120588(n+1)` -/
def P4880987592327856160.Spec : Prop :=
  ∀ n, P4880987592327856160.a n = A119694 n

end A119694

/-! ## A119694.P5013320862261226778

`A000108(n)*A212804(n+1)`
-/

namespace A119694.P5013320862261226778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A212804 (n + 1)

end

end A119694.P5013320862261226778

namespace A119694

/-- `A000108(n)*A212804(n+1)` -/
def P5013320862261226778.Spec : Prop :=
  ∀ n, P5013320862261226778.a n = A119694 n

end A119694

/-! ## A119694.P2146302102274946725

`(A001611(n)-1)*A000108(n)`
-/

namespace A119694.P2146302102274946725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * A000108 n

end

end A119694.P2146302102274946725

namespace A119694

/-- `(A001611(n)-1)*A000108(n)` -/
def P2146302102274946725.Spec : Prop :=
  ∀ n, P2146302102274946725.a n = A119694 n

theorem P2146302102274946725.correct : P2146302102274946725.Spec := by
  intro n
  simp only [A119694, Nat.add_sub_cancel, A119694.P2146302102274946725.a, A119694.P9770232383195286344.a, A000045, A000045.P11838749114346432762.a, A000108, A000108.P17551949696095299361.a, A001611, A001611.P16593652898942925329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A119694

/-! ## A119694.P734775349933982088

`(A120304(n)+2)*A000045(n)`
-/

namespace A119694.P734775349933982088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A120304 n + 2) * A000045 n

end

end A119694.P734775349933982088

namespace A119694

/-- `(A120304(n)+2)*A000045(n)` -/
def P734775349933982088.Spec : Prop :=
  ∀ n, P734775349933982088.a n = A119694 n

theorem P734775349933982088.correct : P734775349933982088.Spec := by
  intro n
  simp only [A119694, Nat.add_sub_cancel, A119694.P734775349933982088.a, A119694.P9770232383195286344.a, A000045, A000045.P11838749114346432762.a, A000108, A000108.P17551949696095299361.a, A120304, A120304.P16195813583233364787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A119694

/-! ## A119694.P4446800604412234428

`A000045(n)*A028303(2*n)`
-/

namespace A119694.P4446800604412234428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A028303 (2 * n)

end

end A119694.P4446800604412234428

namespace A119694

/-- `A000045(n)*A028303(2*n)` -/
def P4446800604412234428.Spec : Prop :=
  ∀ n, P4446800604412234428.a n = A119694 n

end A119694

/-! ## A119694.P17847030445072995284

`A000045(n)*A028304(2*n)`
-/

namespace A119694.P17847030445072995284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A028304 (2 * n)

end

end A119694.P17847030445072995284

namespace A119694

/-- `A000045(n)*A028304(2*n)` -/
def P17847030445072995284.Spec : Prop :=
  ∀ n, P17847030445072995284.a n = A119694 n

end A119694

/-! ## A119694.P12686585660543465207

`A000108(n)*A053602(2*n)`
-/

namespace A119694.P12686585660543465207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A053602 (2 * n)

end

end A119694.P12686585660543465207

namespace A119694

/-- `A000108(n)*A053602(2*n)` -/
def P12686585660543465207.Spec : Prop :=
  ∀ n, P12686585660543465207.a n = A119694 n

end A119694

/-!
# A119695: a(n) = Fibonacci(n)*n^2*(binomial(2*n, n))^2/(n+1).

The programs for A119695, the canonical program `A119695.P15481749714011192177` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119695 has offset 0).

The definition of A119695 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)*n²*C(2*n, n)²/(n+1)` (program `A119695.P1698219508785766519`, by `A119695.P1698219508785766519.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A119695.P1698219508785766519

`A000045(n)*n²*C(2*n, n)²/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A119695.P1698219508785766519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n * (n ^ 2 : ℤ) * (Nat.choose (2 * n) n ^ 2 : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A119695.P1698219508785766519

namespace A119695

/-- `A000045(n)*n²*C(2*n, n)²/(n+1)` -/
def P1698219508785766519.Spec : Prop :=
  ∀ n, P1698219508785766519.a n = (A119695 n : ℚ)

theorem P1698219508785766519.correct : P1698219508785766519.Spec := by
  intro n
  simp only [A119695, Nat.add_sub_cancel, A119695.P1698219508785766519.a, A119695.P15481749714011192177.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119695

/-! ## A119695.P15481749714011192177

`(n+1)*C(2*n, n+1)²*A000045(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A119695

/-- `(n+1)*C(2*n, n+1)²*A000045(n)` -/
def P15481749714011192177.Spec : Prop :=
  ∀ n, P15481749714011192177.a n = A119695 n

theorem P15481749714011192177.correct : P15481749714011192177.Spec := by
  intro n
  simp only [A119695]

end A119695

/-! ## A119695.P10807310381771057248

`A001791(n)*A119701(n)`
-/

namespace A119695.P10807310381771057248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n * A119701 n

end

end A119695.P10807310381771057248

namespace A119695

/-- `A001791(n)*A119701(n)` -/
def P10807310381771057248.Spec : Prop :=
  ∀ n, P10807310381771057248.a n = A119695 n

end A119695

/-! ## A119695.P10490598796332447062

`A001791(n)²*A099920(n)`
-/

namespace A119695.P10490598796332447062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n ^ 2 * A099920 n

end

end A119695.P10490598796332447062

namespace A119695

/-- `A001791(n)²*A099920(n)` -/
def P10490598796332447062.Spec : Prop :=
  ∀ n, P10490598796332447062.a n = A119695 n

end A119695

/-! ## A119695.P5310865012600797107

`n*A000108(n)*A119701(n)`
-/

namespace A119695.P5310865012600797107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000108 n * A119701 n)

end

end A119695.P5310865012600797107

namespace A119695

/-- `n*A000108(n)*A119701(n)` -/
def P5310865012600797107.Spec : Prop :=
  ∀ n, P5310865012600797107.a n = A119695 n

end A119695

/-! ## A119695.P5605682704156100594

`C(2*n, n)*A000045(n)*n²*A000108(n)`
-/

namespace A119695.P5605682704156100594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * A000045 n * (n ^ 2 : ℤ) * A000108 n

end

end A119695.P5605682704156100594

namespace A119695

/-- `C(2*n, n)*A000045(n)*n²*A000108(n)` -/
def P5605682704156100594.Spec : Prop :=
  ∀ n, P5605682704156100594.a n = A119695 n

end A119695

/-!
# A119696: a(n) = Fibonacci(n)*n^3*(binomial(2*n, n))^2/(n+1).

The programs for A119696, the canonical program `A119696.P44814447468164684` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119696 has offset 0).

The definition of A119696 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)*n^3*C(2*n, n)²/(n+1)` (program `A119696.P1975591767878323079`, by `A119696.P1975591767878323079.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A119696.P1975591767878323079

`A000045(n)*n^3*C(2*n, n)²/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A119696.P1975591767878323079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n * (n ^ 3 : ℤ) * (Nat.choose (2 * n) n ^ 2 : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A119696.P1975591767878323079

namespace A119696

/-- `A000045(n)*n^3*C(2*n, n)²/(n+1)` -/
def P1975591767878323079.Spec : Prop :=
  ∀ n, P1975591767878323079.a n = (A119696 n : ℚ)

theorem P1975591767878323079.correct : P1975591767878323079.Spec := by
  intro n
  simp only [A119696, Nat.add_sub_cancel, A119696.P1975591767878323079.a, A119696.P44814447468164684.a, A000045, A000045.P11838749114346432762.a, A119695, A119695.P15481749714011192177.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119696

/-! ## A119696.P44814447468164684

`n*A119695(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A119696

/-- `n*A119695(n)` -/
def P44814447468164684.Spec : Prop :=
  ∀ n, P44814447468164684.a n = A119696 n

theorem P44814447468164684.correct : P44814447468164684.Spec := by
  intro n
  simp only [A119696]

end A119696

/-! ## A119696.P1296653198914906720

`A000108(n)*A119703(n)`
-/

namespace A119696.P1296653198914906720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A119703 n

end

end A119696.P1296653198914906720

namespace A119696

/-- `A000108(n)*A119703(n)` -/
def P1296653198914906720.Spec : Prop :=
  ∀ n, P1296653198914906720.a n = A119696 n

end A119696

/-! ## A119696.P5651938345954187653

`n*A001791(n)*A119701(n)`
-/

namespace A119696.P5651938345954187653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001791 n * A119701 n)

end

end A119696.P5651938345954187653

namespace A119696

/-- `n*A001791(n)*A119701(n)` -/
def P5651938345954187653.Spec : Prop :=
  ∀ n, P5651938345954187653.a n = A119696 n

end A119696

/-! ## A119696.P3052361888214733859

`n*A001791(n)²*A099920(n)`
-/

namespace A119696.P3052361888214733859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001791 n ^ 2 * A099920 n)

end

end A119696.P3052361888214733859

namespace A119696

/-- `n*A001791(n)²*A099920(n)` -/
def P3052361888214733859.Spec : Prop :=
  ∀ n, P3052361888214733859.a n = A119696 n

end A119696

/-!
# A119697: a(n) = Fibonacci(n)*n*binomial(2*n,n)/(n+1).

The programs for A119697, the canonical program `A119697.P9446901935336878940` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119697 has offset 0).

The definition of A119697 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119697.P9446901935336878940

`n*A119694(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A119697

/-- `n*A119694(n)` -/
def P9446901935336878940.Spec : Prop :=
  ∀ n, P9446901935336878940.a n = A119697 n

theorem P9446901935336878940.correct : P9446901935336878940.Spec := by
  intro n
  simp only [A119697]

end A119697

/-! ## A119697.P1327659810489249966

`A000045(n)*n*C(2*n, n)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A119697.P1327659810489249966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n * (n : ℤ) * (Nat.choose (2 * n) n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A119697.P1327659810489249966

namespace A119697

/-- `A000045(n)*n*C(2*n, n)/(n+1)` -/
def P1327659810489249966.Spec : Prop :=
  ∀ n, P1327659810489249966.a n = (A119697 n : ℚ)

end A119697

/-! ## A119697.P4094388453218232972

`∑{#}[n-1, C(n-1-#, #)*C(2*n, n-1)]`
-/

namespace A119697.P4094388453218232972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose ((n : ℤ) - 1 - (k : ℤ)).toNat k * Nat.choose (2 * n) ((n : ℤ) - 1).toNat

end

end A119697.P4094388453218232972

namespace A119697

/-- `∑{#}[n-1, C(n-1-#, #)*C(2*n, n-1)]` -/
def P4094388453218232972.Spec : Prop :=
  ∀ n, (P4094388453218232972.a n : ℤ) = A119697 n

end A119697

/-! ## A119697.P10153073295715097008

`C(2*n, n+1)*A000045(n)`
-/

namespace A119697.P10153073295715097008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) (n + 1) : ℤ) * A000045 n

end

end A119697.P10153073295715097008

namespace A119697

/-- `C(2*n, n+1)*A000045(n)` -/
def P10153073295715097008.Spec : Prop :=
  ∀ n, P10153073295715097008.a n = A119697 n

end A119697

/-! ## A119697.P2634449460517304504

`A000045(n)*A001791(n)`
-/

namespace A119697.P2634449460517304504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A001791 n

end

end A119697.P2634449460517304504

namespace A119697

/-- `A000045(n)*A001791(n)` -/
def P2634449460517304504.Spec : Prop :=
  ∀ n, P2634449460517304504.a n = A119697 n

theorem P2634449460517304504.correct : P2634449460517304504.Spec := by
  intro n
  simp only [A119697, Nat.add_sub_cancel, A119697.P2634449460517304504.a, A119697.P9446901935336878940.a, A000045, A000045.P11838749114346432762.a, A001791, A001791.P9713013280951293137.a, A119694, A119694.P9770232383195286344.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A119697

/-! ## A119697.P15340065050481755838

`A000108(n)*A045925(n)`
-/

namespace A119697.P15340065050481755838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A045925 n

end

end A119697.P15340065050481755838

namespace A119697

/-- `A000108(n)*A045925(n)` -/
def P15340065050481755838.Spec : Prop :=
  ∀ n, P15340065050481755838.a n = A119697 n

theorem P15340065050481755838.correct : P15340065050481755838.Spec := by
  intro n
  simp only [A119697, Nat.add_sub_cancel, A119697.P15340065050481755838.a, A119697.P9446901935336878940.a, A000108, A000108.P17551949696095299361.a, A045925, A045925.P2609971174242523106.a, A119694, A119694.P9770232383195286344.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A119697

/-! ## A119697.P2966913923761277941

`A000045(n)*Δ[A279561(n)]`
-/

namespace A119697.P2966913923761277941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (f1 (n + 1) - f1 n)

end

end A119697.P2966913923761277941

namespace A119697

/-- `A000045(n)*Δ[A279561(n)]` -/
def P2966913923761277941.Spec : Prop :=
  ∀ n, P2966913923761277941.a n = A119697 n

end A119697

/-! ## A119697.P10468737478928941699

`A001791(n)*A324969(n+1)`
-/

namespace A119697.P10468737478928941699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n * A324969 (n + 1)

end

end A119697.P10468737478928941699

namespace A119697

/-- `A001791(n)*A324969(n+1)` -/
def P10468737478928941699.Spec : Prop :=
  ∀ n, P10468737478928941699.a n = A119697 n

end A119697

/-! ## A119697.P1452399645839502143

`A000045(n)*A037952(2*n)`
-/

namespace A119697.P1452399645839502143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A037952 (2 * n)

end

end A119697.P1452399645839502143

namespace A119697

/-- `A000045(n)*A037952(2*n)` -/
def P1452399645839502143.Spec : Prop :=
  ∀ n, P1452399645839502143.a n = A119697 n

end A119697

/-! ## A119697.P2261636236078438895

`n*A000045(n)*A000108(n)`
-/

namespace A119697.P2261636236078438895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000045 n * A000108 n)

end

end A119697.P2261636236078438895

namespace A119697

/-- `n*A000045(n)*A000108(n)` -/
def P2261636236078438895.Spec : Prop :=
  ∀ n, P2261636236078438895.a n = A119697 n

end A119697

/-! ## A119697.P9983384270213670425

`abs(n*A000045(n)*A168491(n))`
-/

namespace A119697.P9983384270213670425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (A000045 n * A168491 n)|

end

end A119697.P9983384270213670425

namespace A119697

/-- `abs(n*A000045(n)*A168491(n))` -/
def P9983384270213670425.Spec : Prop :=
  ∀ n, P9983384270213670425.a n = A119697 n

end A119697

/-! ## A119697.P13901839987976605683

`abs(n*A000108(n)*A236191(n))`
-/

namespace A119697.P13901839987976605683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (A000108 n * A236191 n)|

end

end A119697.P13901839987976605683

namespace A119697

/-- `abs(n*A000108(n)*A236191(n))` -/
def P13901839987976605683.Spec : Prop :=
  ∀ n, P13901839987976605683.a n = A119697 n

end A119697

/-! ## A119697.P7094695215008069159

`n*A000108(n)*sqrt(A007598(n))`
-/

namespace A119697.P7094695215008069159
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A000108 n : ℝ) * Real.sqrt (A007598 n : ℝ)

end

end A119697.P7094695215008069159

namespace A119697

/-- `n*A000108(n)*sqrt(A007598(n))` -/
def P7094695215008069159.Spec : Prop :=
  ∀ n, P7094695215008069159.a n = (A119697 n : ℝ)

end A119697

/-! ## A119697.P5848134406698693024

`n*A000045(n)*Δ[A155587(n)]`
-/

namespace A119697.P5848134406698693024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000045 n * (f1 (n + 1) - f1 n))

end

end A119697.P5848134406698693024

namespace A119697

/-- `n*A000045(n)*Δ[A155587(n)]` -/
def P5848134406698693024.Spec : Prop :=
  ∀ n, P5848134406698693024.a n = A119697 n

end A119697

/-! ## A119697.P11728417137811988127

`n*A126120(2*n)*A212804(n+1)`
-/

namespace A119697.P11728417137811988127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A126120 (2 * n) * A212804 (n + 1))

end

end A119697.P11728417137811988127

namespace A119697

/-- `n*A126120(2*n)*A212804(n+1)` -/
def P11728417137811988127.Spec : Prop :=
  ∀ n, P11728417137811988127.a n = A119697 n

end A119697

/-! ## A119697.P1621345336796436021

`n*A103609(2*n)*A126120(2*n)`
-/

namespace A119697.P1621345336796436021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A103609 (2 * n) * A126120 (2 * n))

end

end A119697.P1621345336796436021

namespace A119697

/-- `n*A103609(2*n)*A126120(2*n)` -/
def P1621345336796436021.Spec : Prop :=
  ∀ n, P1621345336796436021.a n = A119697 n

end A119697

/-! ## A119697.P16784132635542832890

`(A000071(n+2)-A000071(n+1))*A001791(n)`
-/

namespace A119697.P16784132635542832890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 2) - A000071 (n + 1)) * A001791 n

end

end A119697.P16784132635542832890

namespace A119697

/-- `(A000071(n+2)-A000071(n+1))*A001791(n)` -/
def P16784132635542832890.Spec : Prop :=
  ∀ n, P16784132635542832890.a n = A119697 n

end A119697

/-! ## A119697.P6051614835611814628

`A119701(n)/(n+1)`
-/

namespace A119697.P6051614835611814628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119701 n : ℚ) / (n + 1 : ℚ)

end

end A119697.P6051614835611814628

namespace A119697

/-- `A119701(n)/(n+1)` -/
def P6051614835611814628.Spec : Prop :=
  ∀ n, P6051614835611814628.a n = (A119697 n : ℚ)

end A119697

/-!
# A119698: a(n) = n^3*binomial(2*n, n)*Fibonacci(n)^2.

The programs for A119698, the canonical program `A119698.P5322224514598486474` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119698 has offset 0).

The definition of A119698 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3*C(2*n, n)*A000045(n)²` (program `A119698.P5322224514598486474`, by `A119698.P5322224514598486474.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A119698.P5322224514598486474

`n^3*C(2*n, n)*A000045(n)²`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A119698

/-- `n^3*C(2*n, n)*A000045(n)²` -/
def P5322224514598486474.Spec : Prop :=
  ∀ n, P5322224514598486474.a n = A119698 n

theorem P5322224514598486474.correct : P5322224514598486474.Spec := by
  intro n
  simp only [A119698]

end A119698

/-! ## A119698.P12565921463630812982

`n*A119699(n)`
-/

namespace A119698.P12565921463630812982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A119699 n

end

end A119698.P12565921463630812982

namespace A119698

/-- `n*A119699(n)` -/
def P12565921463630812982.Spec : Prop :=
  ∀ n, P12565921463630812982.a n = A119698 n

theorem P12565921463630812982.correct : P12565921463630812982.Spec := by
  intro n
  simp only [A119698, Nat.add_sub_cancel, A119698.P12565921463630812982.a, A119698.P5322224514598486474.a, A000045, A000045.P11838749114346432762.a, A119699, A119699.P11156118851817094709.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119698

/-! ## A119698.P10497598481814019290

`n²*A119700(n)`
-/

namespace A119698.P10497598481814019290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A119700 n

end

end A119698.P10497598481814019290

namespace A119698

/-- `n²*A119700(n)` -/
def P10497598481814019290.Spec : Prop :=
  ∀ n, P10497598481814019290.a n = A119698 n

theorem P10497598481814019290.correct : P10497598481814019290.Spec := by
  intro n
  simp only [A119698, Nat.add_sub_cancel, A119698.P10497598481814019290.a, A119698.P5322224514598486474.a, A000045, A000045.P11838749114346432762.a, A119700, A119700.P9306650432074402630.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119698

/-! ## A119698.P126939044969463066

`A000045(n)*A119703(n)`
-/

namespace A119698.P126939044969463066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A119703 n

end

end A119698.P126939044969463066

namespace A119698

/-- `A000045(n)*A119703(n)` -/
def P126939044969463066.Spec : Prop :=
  ∀ n, P126939044969463066.a n = A119698 n

theorem P126939044969463066.correct : P126939044969463066.Spec := by
  intro n
  simp only [A119698, Nat.add_sub_cancel, A119698.P126939044969463066.a, A119698.P5322224514598486474.a, A000045, A000045.P11838749114346432762.a, A119703, A119703.P5447830082239601374.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119698

/-! ## A119698.P13471659078050909984

`A000045(n)²*A005429(n)`
-/

namespace A119698.P13471659078050909984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2 * A005429 n

end

end A119698.P13471659078050909984

namespace A119698

/-- `A000045(n)²*A005429(n)` -/
def P13471659078050909984.Spec : Prop :=
  ∀ n, P13471659078050909984.a n = A119698 n

theorem P13471659078050909984.correct : P13471659078050909984.Spec := by
  intro n
  simp only [A119698, Nat.add_sub_cancel, A119698.P13471659078050909984.a, A119698.P5322224514598486474.a, A000045, A000045.P11838749114346432762.a, A005429, A005429.P3990202658088493029.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119698

/-! ## A119698.P16208714123677850917

`A045925(n)²*A005430(n)`
-/

namespace A119698.P16208714123677850917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n ^ 2 * A005430 n

end

end A119698.P16208714123677850917

namespace A119698

/-- `A045925(n)²*A005430(n)` -/
def P16208714123677850917.Spec : Prop :=
  ∀ n, P16208714123677850917.a n = A119698 n

theorem P16208714123677850917.correct : P16208714123677850917.Spec := by
  intro n
  simp only [A119698, Nat.add_sub_cancel, A119698.P16208714123677850917.a, A119698.P5322224514598486474.a, A000045, A000045.P11838749114346432762.a, A005430, A005430.P3213108425417519818.a, A045925, A045925.P2609971174242523106.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119698

/-! ## A119698.P8736682529985720645

`n*A005430(n)*A169630(n)`
-/

namespace A119698.P8736682529985720645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A005430 n * A169630 n)

end

end A119698.P8736682529985720645

namespace A119698

/-- `n*A005430(n)*A169630(n)` -/
def P8736682529985720645.Spec : Prop :=
  ∀ n, P8736682529985720645.a n = A119698 n

theorem P8736682529985720645.correct : P8736682529985720645.Spec := by
  intro n
  simp only [A119698, Nat.add_sub_cancel, A119698.P8736682529985720645.a, A119698.P5322224514598486474.a, A000045, A000045.P11838749114346432762.a, A005430, A005430.P3213108425417519818.a, A169630, A169630.P113445014588492800.a, A007598, A007598.P12226372241189459830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119698

/-!
# A119699: a(n) = n^2*binomial(2*n, n)*Fibonacci(n)^2.

The programs for A119699, the canonical program `A119699.P11156118851817094709` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119699 has offset 0).

The definition of A119699 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*C(2*n, n)*A000045(n)²` (program `A119699.P11156118851817094709`, by `A119699.P11156118851817094709.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A119699.P11156118851817094709

`n²*C(2*n, n)*A000045(n)²`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A119699

/-- `n²*C(2*n, n)*A000045(n)²` -/
def P11156118851817094709.Spec : Prop :=
  ∀ n, P11156118851817094709.a n = A119699 n

theorem P11156118851817094709.correct : P11156118851817094709.Spec := by
  intro n
  simp only [A119699]

end A119699

/-! ## A119699.P18346152740919251326

`n*A119700(n)`
-/

namespace A119699.P18346152740919251326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A119700 n

end

end A119699.P18346152740919251326

namespace A119699

/-- `n*A119700(n)` -/
def P18346152740919251326.Spec : Prop :=
  ∀ n, P18346152740919251326.a n = A119699 n

theorem P18346152740919251326.correct : P18346152740919251326.Spec := by
  intro n
  simp only [A119699, Nat.add_sub_cancel, A119699.P18346152740919251326.a, A119699.P11156118851817094709.a, A000045, A000045.P11838749114346432762.a, A119700, A119700.P9306650432074402630.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119699

/-! ## A119699.P5668784050638361634

`(n*A000045(n))²*C(2*n, n)`
-/

namespace A119699.P5668784050638361634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A000045 n) ^ 2 * (Nat.choose (2 * n) n : ℤ)

end

end A119699.P5668784050638361634

namespace A119699

/-- `(n*A000045(n))²*C(2*n, n)` -/
def P5668784050638361634.Spec : Prop :=
  ∀ n, P5668784050638361634.a n = A119699 n

theorem P5668784050638361634.correct : P5668784050638361634.Spec := by
  intro n
  simp only [A119699, Nat.add_sub_cancel, A119699.P5668784050638361634.a, A119699.P11156118851817094709.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A119699

/-! ## A119699.P4614619214600615471

`A002736(n)*A007598(n)`
-/

namespace A119699.P4614619214600615471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002736 n * A007598 n

end

end A119699.P4614619214600615471

namespace A119699

/-- `A002736(n)*A007598(n)` -/
def P4614619214600615471.Spec : Prop :=
  ∀ n, P4614619214600615471.a n = A119699 n

theorem P4614619214600615471.correct : P4614619214600615471.Spec := by
  intro n
  simp only [A119699, Nat.add_sub_cancel, A119699.P4614619214600615471.a, A119699.P11156118851817094709.a, A000045, A000045.P11838749114346432762.a, A002736, A002736.P9373791893693471064.a, A007598, A007598.P12226372241189459830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119699

/-! ## A119699.P9854736815176649845

`A000045(n)*A119702(n)`
-/

namespace A119699.P9854736815176649845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A119702 n

end

end A119699.P9854736815176649845

namespace A119699

/-- `A000045(n)*A119702(n)` -/
def P9854736815176649845.Spec : Prop :=
  ∀ n, P9854736815176649845.a n = A119699 n

theorem P9854736815176649845.correct : P9854736815176649845.Spec := by
  intro n
  simp only [A119699, Nat.add_sub_cancel, A119699.P9854736815176649845.a, A119699.P11156118851817094709.a, A000045, A000045.P11838749114346432762.a, A119702, A119702.P6712861101296639263.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119699

/-! ## A119699.P3733452018634795492

`A005430(n)*A169630(n)`
-/

namespace A119699.P3733452018634795492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005430 n * A169630 n

end

end A119699.P3733452018634795492

namespace A119699

/-- `A005430(n)*A169630(n)` -/
def P3733452018634795492.Spec : Prop :=
  ∀ n, P3733452018634795492.a n = A119699 n

theorem P3733452018634795492.correct : P3733452018634795492.Spec := by
  intro n
  simp only [A119699, Nat.add_sub_cancel, A119699.P3733452018634795492.a, A119699.P11156118851817094709.a, A000045, A000045.P11838749114346432762.a, A005430, A005430.P3213108425417519818.a, A169630, A169630.P113445014588492800.a, A007598, A007598.P12226372241189459830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119699

/-! ## A119699.P9383353887754234483

`A000045(n)²*A002736(n)`
-/

namespace A119699.P9383353887754234483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2 * A002736 n

end

end A119699.P9383353887754234483

namespace A119699

/-- `A000045(n)²*A002736(n)` -/
def P9383353887754234483.Spec : Prop :=
  ∀ n, P9383353887754234483.a n = A119699 n

theorem P9383353887754234483.correct : P9383353887754234483.Spec := by
  intro n
  simp only [A119699, Nat.add_sub_cancel, A119699.P9383353887754234483.a, A119699.P11156118851817094709.a, A000045, A000045.P11838749114346432762.a, A002736, A002736.P9373791893693471064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119699

/-! ## A119699.P12555710200177726824

`A045925(n)²*A000984(n)`
-/

namespace A119699.P12555710200177726824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n ^ 2 * A000984 n

end

end A119699.P12555710200177726824

namespace A119699

/-- `A045925(n)²*A000984(n)` -/
def P12555710200177726824.Spec : Prop :=
  ∀ n, P12555710200177726824.a n = A119699 n

theorem P12555710200177726824.correct : P12555710200177726824.Spec := by
  intro n
  simp only [A119699, Nat.add_sub_cancel, A119699.P12555710200177726824.a, A119699.P11156118851817094709.a, A000045, A000045.P11838749114346432762.a, A000984, A000984.P7946844122574426130.a, A045925, A045925.P2609971174242523106.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119699

/-! ## A119699.P4767888847466972810

`n*A005430(n)*A007598(n)`
-/

namespace A119699.P4767888847466972810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A005430 n * A007598 n)

end

end A119699.P4767888847466972810

namespace A119699

/-- `n*A005430(n)*A007598(n)` -/
def P4767888847466972810.Spec : Prop :=
  ∀ n, P4767888847466972810.a n = A119699 n

theorem P4767888847466972810.correct : P4767888847466972810.Spec := by
  intro n
  simp only [A119699, Nat.add_sub_cancel, A119699.P4767888847466972810.a, A119699.P11156118851817094709.a, A000045, A000045.P11838749114346432762.a, A005430, A005430.P3213108425417519818.a, A007598, A007598.P12226372241189459830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119699

/-! ## A119699.P14823232423546100686

`n*A000045(n)*A119701(n)`
-/

namespace A119699.P14823232423546100686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000045 n * A119701 n)

end

end A119699.P14823232423546100686

namespace A119699

/-- `n*A000045(n)*A119701(n)` -/
def P14823232423546100686.Spec : Prop :=
  ∀ n, P14823232423546100686.a n = A119699 n

theorem P14823232423546100686.correct : P14823232423546100686.Spec := by
  intro n
  simp only [A119699, Nat.add_sub_cancel, A119699.P14823232423546100686.a, A119699.P11156118851817094709.a, A000045, A000045.P11838749114346432762.a, A119701, A119701.P17465216366958950940.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119699

