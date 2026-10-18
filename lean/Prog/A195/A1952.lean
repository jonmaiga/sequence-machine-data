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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A195203: E.g.f.: Sum_{n>=0} x*(n + x)^(n-1) * x^n/n!.

The programs for A195203, there is no canonical definition to state claims against.
-/

/-! ## A195203.P8262178677054010861

`A263454(A236292(n+1))`
-/

namespace A195203.P8262178677054010861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263454 (A236292 (n + 1)).toNat

end

end A195203.P8262178677054010861

/-! ## A195203.P10176630967977741848

`A240498(A006882(n)+n)`
-/

namespace A195203.P10176630967977741848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240498 (A006882 n + (n : ℤ)).toNat

end

end A195203.P10176630967977741848

/-!
# A195204: Triangle of coefficients of a sequence of binomial type polynomials.

The programs for A195204, there is no canonical definition to state claims against.
-/

/-! ## A195204.P1699840609366941852

`A246200(A228912(n)+A228892(n+1))`
-/

namespace A195204.P1699840609366941852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A228912 n + A228892 (n + 1)).toNat

end

end A195204.P1699840609366941852

/-!
# A195206: Number of 1s in the first 10^n entries of the Kolakoski sequence, A000002.

The programs for A195206, there is no canonical definition to state claims against.
-/

/-! ## A195206.P10445625645323121719

`A011557(n)-A342407(n)`
-/

namespace A195206.P10445625645323121719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n - A342407 n

end

end A195206.P10445625645323121719

/-! ## A195206.P12266745332381273004

`A342407(n)-A289324(n)`
-/

namespace A195206.P12266745332381273004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342407 n - A289324 n

end

end A195206.P12266745332381273004

/-! ## A195206.P1967924014248967450

`Δ[A002275(n)]-A342407(n)`
-/

namespace A195206.P1967924014248967450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A342407 n

end

end A195206.P1967924014248967450

/-! ## A195206.P14596035096391181365

`Δ[A098406(n)]-A342407(n)`
-/

namespace A195206.P14596035096391181365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A342407 n

end

end A195206.P14596035096391181365

/-! ## A195206.P18011166405064672386

`A001019(n)+A016189(n)-A342407(n)`
-/

namespace A195206.P18011166405064672386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n + (A016189 n - A342407 n)

end

end A195206.P18011166405064672386

/-!
# A195207: Number of even divisors of !n.

The programs for A195207, there is no canonical definition to state claims against.
-/

/-! ## A195207.P11520642546219801195

`A224980(A000034(n)^A224979(n+1))`
-/

namespace A195207.P11520642546219801195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224980 (SequenceMachineLib.roundAway ((A000034 n : ℚ) ^ (A224979 (n + 1) : ℤ))).toNat

end

end A195207.P11520642546219801195

/-! ## A195207.P4471315909432066431

`A224980(∑[A165326(n)]^A224979(n+1))`
-/

namespace A195207.P4471315909432066431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224980 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A224979 (n + 1) : ℤ))).toNat

end

end A195207.P4471315909432066431

/-! ## A195207.P2647317645988469424

`A194184(n+1)%A052126(A126646(n))`
-/

namespace A195207.P2647317645988469424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194184 (n + 1)) (A052126 (A126646 n).toNat)

end

end A195207.P2647317645988469424

/-! ## A195207.P9170879638768585598

`A194217(n+1)%A052126(A126646(n))`
-/

namespace A195207.P9170879638768585598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194217 (n + 1)) (A052126 (A126646 n).toNat)

end

end A195207.P9170879638768585598

/-! ## A195207.P4379757667097831918

`A220783(n+1)%A179926(A166552(n+1))`
-/

namespace A195207.P4379757667097831918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220783 (n + 1)) (A179926 (A166552 (n + 1)).toNat)

end

end A195207.P4379757667097831918

/-!
# A195209: Sum of even divisors of !n.

The programs for A195209, there is no canonical definition to state claims against.
-/

/-! ## A195209.P16105151504443605587

`∑{d}[A000166(n), #%or(1, #)]`
-/

namespace A195209.P16105151504443605587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d % Nat.lor 1 d

end

end A195209.P16105151504443605587

/-! ## A195209.P15398736498734797115

`∑{d}[A000166(n), #]-A195210(n)`
-/

namespace A195209.P15398736498734797115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - A195210 n

end

end A195209.P15398736498734797115

/-! ## A195209.P10358656095773974089

`∑{d}[A182386(n), #]-A195210(n)`
-/

namespace A195209.P10358656095773974089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - A195210 n

end

end A195209.P10358656095773974089

/-! ## A195209.P1652011819573747211

`∑{d}[A047920(∑[n]+n), #]-A195210(n)`
-/

namespace A195209.P1652011819573747211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - A195210 n

end

end A195209.P1652011819573747211

/-! ## A195209.P16917129384707557732

`∑{d}[A306512(∑[n]+n), #]-A195210(n)`
-/

namespace A195209.P16917129384707557732
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306512 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - A195210 n

end

end A195209.P16917129384707557732

/-!
# A195210: Sum of odd divisors of !n.

The programs for A195210, there is no canonical definition to state claims against.
-/

/-! ## A195210.P16956301046458255374

`∑{d}[2-n*a(n-1), #*#%2]` with `a(0)=2`
-/

namespace A195210.P16956301046458255374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  2 - (n : ℤ) * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d * (d % 2)

end

end A195210.P16956301046458255374

/-! ## A195210.P9569233761070599301

`∑{d}[2-n*a(n-1), #*and(1, #)]` with `a(0)=2`
-/

namespace A195210.P9569233761070599301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  2 - (n : ℤ) * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d * Nat.land 1 d

end

end A195210.P9569233761070599301

/-! ## A195210.P4465941733524385279

`∑{d}[A000166(n), #*#%2]`
-/

namespace A195210.P4465941733524385279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d * (d % 2)

end

end A195210.P4465941733524385279

/-! ## A195210.P17639521096520399564

`∑{d}[A182386(n), #*and(1, #)]`
-/

namespace A195210.P17639521096520399564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182386 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d * Nat.land 1 d

end

end A195210.P17639521096520399564

/-! ## A195210.P12727624413924076639

`∑{d}[A000166(n)*A033999(n), lcm(2, #)-#]`
-/

namespace A195210.P12727624413924076639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((Nat.lcm 2 d : ℤ) - (d : ℤ))

end

end A195210.P12727624413924076639

/-!
# A195211: Number of 2s in the first 10^n entries of the generalized Kolakoski-(2,3) sequence A071820.

The programs for A195211, there is no canonical definition to state claims against.
-/

/-! ## A195211.P1468246257293872491

`A209862(ceil(10^n/2))`
-/

namespace A195211.P1468246257293872491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209862 ⌈(10 ^ n : ℚ) / 2⌉.toNat

end

end A195211.P1468246257293872491

/-!
# A195212: Numbers n for which the exponent of the largest prime factor of n is even.

The programs for A195212, the canonical program `A195212.P2346357563342899304` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195212 has offset 1).

The definition of A195212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1003 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195212.P2346357563342899304

`lt[A006530(A007913(n+1)), A006530(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A195212

/-- `lt[A006530(A007913(n+1)), A006530(n+1)]+1` -/
def P2346357563342899304.Spec : Prop :=
  ∀ n, (P2346357563342899304.a n : ℤ) = A195212 (n + 1)

theorem P2346357563342899304.correct : P2346357563342899304.Spec := by
  intro n
  simp only [A195212, Nat.add_sub_cancel]

end A195212

/-! ## A195212.P10939590374247192536

`lt[A300518(n+1), A006530(n+1)]+1`
-/

namespace A195212.P10939590374247192536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A195212.P10939590374247192536

namespace A195212

/-- `lt[A300518(n+1), A006530(n+1)]+1` -/
def P10939590374247192536.Spec : Prop :=
  ∀ n, (P10939590374247192536.a n : ℤ) = A195212 (n + 1)

end A195212

/-! ## A195212.P17897340283038572939

`eq[2, A280193(A071178(n+1))]+1`
-/

namespace A195212.P17897340283038572939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A071178 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A195212.P17897340283038572939

namespace A195212

/-- `eq[2, A280193(A071178(n+1))]+1` -/
def P17897340283038572939.Spec : Prop :=
  ∀ n, (P17897340283038572939.a n : ℤ) = A195212 (n + 1)

end A195212

/-! ## A195212.P17350378518132184205

`eq[2, A020639(A037916(n+2))]+2`
-/

namespace A195212.P17350378518132184205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A037916 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A195212.P17350378518132184205

namespace A195212

/-- `eq[2, A020639(A037916(n+2))]+2` -/
def P17350378518132184205.Spec : Prop :=
  ∀ n, (P17350378518132184205.a n : ℤ) = A195212 (n + 1)

end A195212

/-! ## A195212.P16645778830896078363

`lt[2, A318651(A071178(n+1)+2)]+1`
-/

namespace A195212.P16645778830896078363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318651 (A071178 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A195212.P16645778830896078363

namespace A195212

/-- `lt[2, A318651(A071178(n+1)+2)]+1` -/
def P16645778830896078363.Spec : Prop :=
  ∀ n, (P16645778830896078363.a n : ℤ) = A195212 (n + 1)

end A195212

/-! ## A195212.P10117105024425590651

`eq[1, A046660(A053585(n+1))%2]+1`
-/

namespace A195212.P10117105024425590651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046660 (A053585 (n + 1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A195212.P10117105024425590651

namespace A195212

/-- `eq[1, A046660(A053585(n+1))%2]+1` -/
def P10117105024425590651.Spec : Prop :=
  ∀ n, (P10117105024425590651.a n : ℤ) = A195212 (n + 1)

end A195212

/-! ## A195212.P12135744617578425966

`lt[A300518(n+1), A085392(n+1)]+1`
-/

namespace A195212.P12135744617578425966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A195212.P12135744617578425966

namespace A195212

/-- `lt[A300518(n+1), A085392(n+1)]+1` -/
def P12135744617578425966.Spec : Prop :=
  ∀ n, (P12135744617578425966.a n : ℤ) = A195212 (n + 1)

end A195212

/-! ## A195212.P7934397410049593168

`lt[A300518(n+1), A249740(n+1)]+1`
-/

namespace A195212.P7934397410049593168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A195212.P7934397410049593168

namespace A195212

/-- `lt[A300518(n+1), A249740(n+1)]+1` -/
def P7934397410049593168.Spec : Prop :=
  ∀ n, (P7934397410049593168.a n : ℤ) = A195212 (n + 1)

end A195212

/-! ## A195212.P8325983913717934076

`lt[1, A053246(A071178(n+1)²+1)]+1`
-/

namespace A195212.P8325983913717934076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053246 (A071178 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A195212.P8325983913717934076

namespace A195212

/-- `lt[1, A053246(A071178(n+1)²+1)]+1` -/
def P8325983913717934076.Spec : Prop :=
  ∀ n, (P8325983913717934076.a n : ℤ) = A195212 (n + 1)

end A195212

/-! ## A195212.P2225935237310332285

`A020725(lt[A300518(n+1), A006530(n+1)])`
-/

namespace A195212.P2225935237310332285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A195212.P2225935237310332285

namespace A195212

/-- `A020725(lt[A300518(n+1), A006530(n+1)])` -/
def P2225935237310332285.Spec : Prop :=
  ∀ n, P2225935237310332285.a n = A195212 (n + 1)

end A195212

/-! ## A195212.P8283804407002368813

`A020725(lt[A300518(n+1), A085392(n+1)])`
-/

namespace A195212.P8283804407002368813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A195212.P8283804407002368813

namespace A195212

/-- `A020725(lt[A300518(n+1), A085392(n+1)])` -/
def P8283804407002368813.Spec : Prop :=
  ∀ n, P8283804407002368813.a n = A195212 (n + 1)

end A195212

/-! ## A195212.P4638079877465173461

`A020725(lt[A300518(n+1), A249740(n+1)])`
-/

namespace A195212.P4638079877465173461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A195212.P4638079877465173461

namespace A195212

/-- `A020725(lt[A300518(n+1), A249740(n+1)])` -/
def P4638079877465173461.Spec : Prop :=
  ∀ n, P4638079877465173461.a n = A195212 (n + 1)

end A195212

/-!
# A195213: Number of lower triangles of an n X n integer array with each element differing from all of its diagonal, vertical, antidiagonal and horizontal neighbors by 1 or less and triangles differing by a constant counted only once.

The programs for A195213, there is no canonical definition to state claims against.
-/

/-! ## A195213.P6970504352539601314

`A195220(∑[n+1])`
-/

namespace A195213.P6970504352539601314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195220 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195213.P6970504352539601314

/-! ## A195213.P10618567532540407969

`record[A195220(A193592(n)+n)]`
-/

namespace A195213.P10618567532540407969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195220 (A193592 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195213.P10618567532540407969

/-! ## A195213.P10599451261163653465

`record[A023531(n)*A195220(n+1)]`
-/

namespace A195213.P10599451261163653465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A195220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195213.P10599451261163653465

/-! ## A195213.P8928515239083767287

`record[A103451(n)*A195220(n+1)]`
-/

namespace A195213.P8928515239083767287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A195220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195213.P8928515239083767287

/-! ## A195213.P4240408612249317678

`record[A111967(n)*A195220(n+1)]`
-/

namespace A195213.P4240408612249317678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 n * A195220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195213.P4240408612249317678

/-!
# A195214: Number of lower triangles of an n X n integer array with each element differing from all of its diagonal, vertical, antidiagonal and horizontal neighbors by 2 or less and triangles differing by a constant counted only once.

The programs for A195214, there is no canonical definition to state claims against.
-/

/-! ## A195214.P6716870130254663365

`A195220(∑[n+2])`
-/

namespace A195214.P6716870130254663365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195220 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195214.P6716870130254663365

/-! ## A195214.P13403214618817535057

`record[A104974(n)*A195220(n+2)]`
-/

namespace A195214.P13403214618817535057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104974 n * A195220 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195214.P13403214618817535057

/-! ## A195214.P6133601477881707070

`record[gcd(A102404(n), A195220(n+1))]`
-/

namespace A195214.P6133601477881707070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A102404 n) (A195220 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195214.P6133601477881707070

/-! ## A195214.P9980262863215027536

`record[and(A111967(n), A195220(n+1))]`
-/

namespace A195214.P9980262863215027536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A111967 n) (A195220 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195214.P9980262863215027536

/-! ## A195214.P8815115206490577408

`record[A195220(n+2)/A195220(n+4)]`
-/

namespace A195214.P8815115206490577408
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195220 (n + 2) : ℚ) / (A195220 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195214.P8815115206490577408

/-!
# A195215: Number of lower triangles of an n X n integer array with each element differing from all of its diagonal, vertical, antidiagonal and horizontal neighbors by 3 or less and triangles differing by a constant counted only once.

The programs for A195215, there is no canonical definition to state claims against.
-/

/-! ## A195215.P4660118196485083271

`A195220(∑[n+3]+1)`
-/

namespace A195215.P4660118196485083271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195220 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A195215.P4660118196485083271

/-!
# A195216: Number of lower triangles of an n X n integer array with each element differing from all of its diagonal, vertical, antidiagonal and horizontal neighbors by 4 or less and triangles differing by a constant counted only once.

The programs for A195216, there is no canonical definition to state claims against.
-/

/-! ## A195216.P4357463713238792375

`A195220(A141214(n+1))`
-/

namespace A195216.P4357463713238792375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195220 (A141214 (n + 1)).toNat

end

end A195216.P4357463713238792375

/-! ## A195216.P17229115177426938087

`A195220(A056000(n)+7)`
-/

namespace A195216.P17229115177426938087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195220 (A056000 n + 7).toNat

end

end A195216.P17229115177426938087

/-! ## A195216.P16553884109818770994

`A195220(eq[3, A193592(n)])`
-/

namespace A195216.P16553884109818770994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195220 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195216.P16553884109818770994

/-! ## A195216.P17992478675858160979

`A195220(A052905(n+1)+2)`
-/

namespace A195216.P17992478675858160979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195220 (A052905 (n + 1) + 2).toNat

end

end A195216.P17992478675858160979

/-!
# A195217: Number of lower triangles of an n X n integer array with each element differing from all of its diagonal, vertical, antidiagonal and horizontal neighbors by 5 or less and triangles differing by a constant counted only once.

The programs for A195217, there is no canonical definition to state claims against.
-/

/-! ## A195217.P3955062729829315123

`A195220(A056115(n)+11)`
-/

namespace A195217.P3955062729829315123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195220 (A056115 n + 11).toNat

end

end A195217.P3955062729829315123

/-! ## A195217.P17867005446908901881

`A195220(eq[4, A193592(n)])`
-/

namespace A195217.P17867005446908901881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195220 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195217.P17867005446908901881

/-!
# A195218: Number of lower triangles of an n X n integer array with each element differing from all of its diagonal, vertical, antidiagonal and horizontal neighbors by 6 or less and triangles differing by a constant counted only once.

The programs for A195218, there is no canonical definition to state claims against.
-/

/-! ## A195218.P1380602583890764351

`A195220(eq[5, A193592(n)])`
-/

namespace A195218.P1380602583890764351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195220 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195218.P1380602583890764351

/-!
# A195219: Number of lower triangles of an n X n integer array with each element differing from all of its diagonal, vertical, antidiagonal and horizontal neighbors by 7 or less and triangles differing by a constant counted only once.

The programs for A195219, there is no canonical definition to state claims against.
-/

/-! ## A195219.P9724400851594512124

`A195220(eq[6, A193592(n)])`
-/

namespace A195219.P9724400851594512124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195220 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195219.P9724400851594512124

/-!
# A195221: Number of lower triangles of a 3 X 3 integer array with each element differing from all of its diagonal, vertical, antidiagonal and horizontal neighbors by n or less and triangles differing by a constant counted only once.

The programs for A195221, there is no canonical definition to state claims against.
-/

/-! ## A195221.P2512561756065856183

`A195220(∑[n+2]+4)`
-/

namespace A195221.P2512561756065856183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195220 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A195221.P2512561756065856183

/-! ## A195221.P4092247653496911995

`or(1, A195220(A167614(n+1)))`
-/

namespace A195221.P4092247653496911995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A195220 (A167614 (n + 1)).toNat)

end

end A195221.P4092247653496911995

/-! ## A195221.P4078362062756883279

`A195220(A167614(n+1))+A185284(n)`
-/

namespace A195221.P4078362062756883279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195220 (A167614 (n + 1)).toNat + A185284 n

end

end A195221.P4078362062756883279

/-! ## A195221.P10766563568999055337

`lcm(A087960(n), A195220(A167614(n+1)))`
-/

namespace A195221.P10766563568999055337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A195220 (A167614 (n + 1)).toNat)

end

end A195221.P10766563568999055337

/-! ## A195221.P11677951178749306012

`A195220(A167614(n+1))%A016936(n+1)`
-/

namespace A195221.P11677951178749306012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195220 (A167614 (n + 1)).toNat) (A016936 (n + 1))

end

end A195221.P11677951178749306012

/-!
# A195222: Number of lower triangles of a 4 X 4 integer array with each element differing from all of its diagonal, vertical, antidiagonal and horizontal neighbors by n or less and triangles differing by a constant counted only once.

The programs for A195222, there is no canonical definition to state claims against.
-/

/-! ## A195222.P16202628582183478106

`A195220(A141214(n)+7)`
-/

namespace A195222.P16202628582183478106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195220 (A141214 n + 7).toNat

end

end A195222.P16202628582183478106

/-! ## A195222.P14666501988911188468

`A195220(A052905(n)+9)`
-/

namespace A195222.P14666501988911188468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195220 (A052905 n + 9).toNat

end

end A195222.P14666501988911188468

/-! ## A195222.P7550402871842301133

`A195220(A055999(n)+10)`
-/

namespace A195222.P7550402871842301133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195220 (A055999 n + 10).toNat

end

end A195222.P7550402871842301133

/-! ## A195222.P14337695688496640119

`A195220(A167614(n+2)+1)`
-/

namespace A195222.P14337695688496640119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195220 (A167614 (n + 2) + 1).toNat

end

end A195222.P14337695688496640119

/-! ## A195222.P6495987054349161135

`A195220(eq[5, A131818(n+1)])`
-/

namespace A195222.P6495987054349161135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195220 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195222.P6495987054349161135

/-!
# A195223: Number of lower triangles of a 5 X 5 integer array with each element differing from all of its diagonal, vertical, antidiagonal and horizontal neighbors by n or less and triangles differing by a constant counted only once.

The programs for A195223, there is no canonical definition to state claims against.
-/

/-! ## A195223.P3190160629666785167

`A195220(A167499(n+3))`
-/

namespace A195223.P3190160629666785167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195220 (A167499 (n + 3)).toNat

end

end A195223.P3190160629666785167

/-! ## A195223.P3656786462683613805

`A195220(A056000(n)+15)`
-/

namespace A195223.P3656786462683613805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195220 (A056000 n + 15).toNat

end

end A195223.P3656786462683613805

/-! ## A195223.P7376755775577278361

`A195220(A141214(n+1)+8)`
-/

namespace A195223.P7376755775577278361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195220 (A141214 (n + 1) + 8).toNat

end

end A195223.P7376755775577278361

/-! ## A195223.P16028108549799047298

`A195220(A034856(n+3)+7)`
-/

namespace A195223.P16028108549799047298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195220 (A034856 (n + 3) + 7).toNat

end

end A195223.P16028108549799047298

/-! ## A195223.P2768752574398232212

`A195220(eq[6, A131818(n+1)])`
-/

namespace A195223.P2768752574398232212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195220 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195223.P2768752574398232212

/-!
# A195224: 

The programs for A195224, there is no canonical definition to state claims against.
-/

/-! ## A195224.P6575978893779973394

`A195220(eq[7, A131818(n+1)])`
-/

namespace A195224.P6575978893779973394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195220 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195224.P6575978893779973394

/-!
# A195225: 

The programs for A195225, there is no canonical definition to state claims against.
-/

/-! ## A195225.P6220144628247569305

`A195220(eq[8, A131818(n+1)])`
-/

namespace A195225.P6220144628247569305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195220 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195225.P6220144628247569305

/-!
# A195226: Number of lower triangles of an n X n 0..2 array with each element differing from all of its diagonal, vertical, antidiagonal and horizontal neighbors by one or less.

The programs for A195226, there is no canonical definition to state claims against.
-/

/-! ## A195226.P17918615587975818328

`A195232(∑[n+2])`
-/

namespace A195226.P17918615587975818328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195232 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195226.P17918615587975818328

/-! ## A195226.P4483462001332105131

`record[A195232(A061579(n+1))]`
-/

namespace A195226.P4483462001332105131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195232 (A061579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195226.P4483462001332105131

/-! ## A195226.P7838991359293320530

`or(1, A195232(A000096(n+1)))`
-/

namespace A195226.P7838991359293320530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A195232 (A000096 (n + 1)).toNat)

end

end A195226.P7838991359293320530

/-! ## A195226.P3211353205967997745

`record[A195232(A000096(∏{p}[n+1, #^val(n+1, #²)]))]`
-/

namespace A195226.P3211353205967997745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195232 (A000096 (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195226.P3211353205967997745

/-! ## A195226.P14081717623218477327

`A195232(A000096(n+1))+A000007(n+1)`
-/

namespace A195226.P14081717623218477327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195232 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A195226.P14081717623218477327

/-!
# A195227: Number of lower triangles of an n X n 0..3 array with each element differing from all of its diagonal, vertical, antidiagonal and horizontal neighbors by one or less.

The programs for A195227, there is no canonical definition to state claims against.
-/

/-! ## A195227.P17089129951514259436

`A195232(∑[n+3]+1)`
-/

namespace A195227.P17089129951514259436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195232 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A195227.P17089129951514259436

/-! ## A195227.P14583250725597460172

`record[A195232(A140978(n+1)-n)]`
-/

namespace A195227.P14583250725597460172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195232 (A140978 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195227.P14583250725597460172

/-!
# A195228: Number of lower triangles of an n X n 0..4 array with each element differing from all of its diagonal, vertical, antidiagonal and horizontal neighbors by one or less.

The programs for A195228, there is no canonical definition to state claims against.
-/

/-! ## A195228.P10538747562977529584

`A195232(A141214(n+1))`
-/

namespace A195228.P10538747562977529584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195232 (A141214 (n + 1)).toNat

end

end A195228.P10538747562977529584

/-! ## A195228.P14714557781814631679

`A195232(A027379(n+2))`
-/

namespace A195228.P14714557781814631679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195232 (A027379 (n + 2)).toNat

end

end A195228.P14714557781814631679

/-! ## A195228.P6228180076830632102

`A195232(A155212(n)+5)`
-/

namespace A195228.P6228180076830632102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195232 (A155212 n + 5).toNat

end

end A195228.P6228180076830632102

/-! ## A195228.P9882837569756825953

`A195232(A056000(n)+7)`
-/

namespace A195228.P9882837569756825953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195232 (A056000 n + 7).toNat

end

end A195228.P9882837569756825953

/-! ## A195228.P2419307336784703277

`A195232(eq[3, A193592(n)])`
-/

namespace A195228.P2419307336784703277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195228.P2419307336784703277

/-!
# A195229: Number of lower triangles of an n X n 0..5 array with each element differing from all of its diagonal, vertical, antidiagonal and horizontal neighbors by one or less.

The programs for A195229, there is no canonical definition to state claims against.
-/

/-! ## A195229.P10184108105075988122

`A195232(Δ[A264443(n)])`
-/

namespace A195229.P10184108105075988122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195232 (f1 (n + 1) - f1 n).toNat

end

end A195229.P10184108105075988122

/-! ## A195229.P17016611700799556425

`A195232(eq[4, A193592(n)])`
-/

namespace A195229.P17016611700799556425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195229.P17016611700799556425

/-! ## A195229.P16957088909955329385

`A195232(Δ[A023545(n+1)])`
-/

namespace A195229.P16957088909955329385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195232 (f1 (n + 1) - f1 n).toNat

end

end A195229.P16957088909955329385

/-! ## A195229.P13207745311878665460

`A195232(Δ[A141214(n)+A034857(n+1)])`
-/

namespace A195229.P13207745311878665460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n + A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195232 (f1 (n + 1) - f1 n).toNat

end

end A195229.P13207745311878665460

/-! ## A195229.P5372549124889973260

`A195232(A051936(n+4)+A045918(n))`
-/

namespace A195229.P5372549124889973260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195232 (A051936 (n + 4) + A045918 n).toNat

end

end A195229.P5372549124889973260

/-!
# A195230: Number of lower triangles of an n X n 0..6 array with each element differing from all of its diagonal, vertical, antidiagonal and horizontal neighbors by one or less.

The programs for A195230, there is no canonical definition to state claims against.
-/

/-! ## A195230.P5411733583148132130

`A195232(A056119(n)+16)`
-/

namespace A195230.P5411733583148132130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195232 (A056119 n + 16).toNat

end

end A195230.P5411733583148132130

/-! ## A195230.P6143551721538909224

`A195232(eq[3, A219347(n)])`
-/

namespace A195230.P6143551721538909224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195230.P6143551721538909224

/-! ## A195230.P9469924172318390468

`A195232(eq[5, A193592(n)])`
-/

namespace A195230.P9469924172318390468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195230.P9469924172318390468

/-! ## A195230.P7711648069594589878

`A195232(eq[6, A200370(n+1)])`
-/

namespace A195230.P7711648069594589878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195230.P7711648069594589878

/-! ## A195230.P12792942006518929406

`A195232(A000217(n+5)+n+1)`
-/

namespace A195230.P12792942006518929406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195232 (A000217 (n + 5) + (n + 1 : ℤ)).toNat

end

end A195230.P12792942006518929406

/-!
# A195231: Number of lower triangles of an n X n 0..7 array with each element differing from all of its diagonal, vertical, antidiagonal and horizontal neighbors by one or less.

The programs for A195231, there is no canonical definition to state claims against.
-/

/-! ## A195231.P16060131661892707454

`A195230(n+1)+A195213(A303368(n+1))`
-/

namespace A195231.P16060131661892707454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195230 (n + 1) + A195213 (A303368 (n + 1)).toNat

end

end A195231.P16060131661892707454

/-!
# A195233: Number of lower triangles of a 3 X 3 0..n array with each element differing from all of its diagonal, vertical, antidiagonal and horizontal neighbors by one or less.

The programs for A195233, the canonical program `A195233.P7951749039056023729` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195233 has offset 1).

The definition of A195233 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195233.P7951749039056023729

`2*a(n-1)-a(n-2)` with `a(0)=64, a(1)=155`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A195233

/-- `2*a(n-1)-a(n-2)` -/
def P7951749039056023729.Spec : Prop :=
  ∀ n, P7951749039056023729.a n = A195233 (n + 1)

theorem P7951749039056023729.correct : P7951749039056023729.Spec := by
  intro n
  simp only [A195233, Nat.add_sub_cancel]

end A195233

/-!
# A195236: Number of lower triangles of a 6 X 6 0..n array with each element differing from all of its diagonal, vertical, antidiagonal and horizontal neighbors by one or less.

The programs for A195236, there is no canonical definition to state claims against.
-/

/-! ## A195236.P3645627553113232830

`A195232(A051936(n+4)+A045918(n)+10)`
-/

namespace A195236.P3645627553113232830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195232 (A051936 (n + 4) + A045918 n + 10).toNat

end

end A195236.P3645627553113232830

/-!
# A195237: Number of lower triangles of a 7 X 7 0..n array with each element differing from all of its diagonal, vertical, antidiagonal and horizontal neighbors by one or less.

The programs for A195237, there is no canonical definition to state claims against.
-/

/-! ## A195237.P7358834428512938269

`A195232(eq[8, A131818(n+1)])`
-/

namespace A195237.P7358834428512938269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195237.P7358834428512938269

/-!
# A195238: Numbers with at least 2 and not more than 3 distinct prime factors not greater than 7 that are multiples of 7 or of 15.

The programs for A195238, the canonical program `A195238.P15351824491001559001` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195238 has offset 1).

The definition of A195238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195238.P5246890247416533258

`∩[A002473(n+1), A075658(n+1)]`
-/

namespace A195238.P5246890247416533258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195238.P5246890247416533258

namespace A195238

/-- `∩[A002473(n+1), A075658(n+1)]` -/
def P5246890247416533258.Spec : Prop :=
  ∀ n, (P5246890247416533258.a n : ℤ) = A195238 (n + 1)

end A195238

/-! ## A195238.P15854401562886743592

`∩[A075658(n+1), A086247(n)+a(n-1)]` with `a(0)=1`
-/

namespace A195238.P15854401562886743592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A086247 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195238.P15854401562886743592

namespace A195238

/-- `∩[A075658(n+1), A086247(n)+a(n-1)]` -/
def P15854401562886743592.Spec : Prop :=
  ∀ n, (P15854401562886743592.a n : ℤ) = A195238 (n + 1)

end A195238

/-! ## A195238.P15351824491001559001

`filter[A075658(n+1), A086299(#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A195238

/-- `filter[A075658(n+1), A086299(#)]` -/
def P15351824491001559001.Spec : Prop :=
  ∀ n, P15351824491001559001.a n = A195238 (n + 1)

theorem P15351824491001559001.correct : P15351824491001559001.Spec := by
  intro n
  simp only [A195238, Nat.add_sub_cancel]

end A195238

/-!
# A195241: Expansion of (1-x+19*x^3-3*x^4)/(1-x)^3.

The programs for A195241, the canonical program `A195241.P387464294369737388` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195241 has offset 0).

The definition of A195241 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+19x^3-3x^4)/(1-3x+3x^2-x^3))` (program `A195241.P387464294369737388`, by `A195241.P387464294369737388.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195241.P387464294369737388

`ogf((1-x+19x^3-3x^4)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A195241

/-- `ogf((1-x+19x^3-3x^4)/(1-3x+3x^2-x^3))` -/
def P387464294369737388.Spec : Prop :=
  ∀ n, P387464294369737388.a n = A195241 n

theorem P387464294369737388.correct : P387464294369737388.Spec := by
  intro n
  simp only [A195241]

end A195241

/-! ## A195241.P18134945524630449483

`A000217(A004280(A004280(n+1)))-A004273(n)`
-/

namespace A195241.P18134945524630449483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004280 (A004280 (n + 1)).toNat).toNat - A004273 n

end

end A195241.P18134945524630449483

namespace A195241

/-- `A000217(A004280(A004280(n+1)))-A004273(n)` -/
def P18134945524630449483.Spec : Prop :=
  ∀ n, P18134945524630449483.a n = A195241 n

end A195241

/-! ## A195241.P9811965672819340931

`A000124(record[A266258(n)])-2*n`
-/

namespace A195241.P9811965672819340931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266258 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - (2 * n : ℤ)

end

end A195241.P9811965672819340931

namespace A195241

/-- `A000124(record[A266258(n)])-2*n` -/
def P9811965672819340931.Spec : Prop :=
  ∀ n, P9811965672819340931.a n = A195241 n

end A195241

/-! ## A195241.P12454118039156637409

`∑[A019425(record[n+1+A019425(n)+n])]`
-/

namespace A195241.P12454118039156637409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A019425 n + (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195241.P12454118039156637409

namespace A195241

/-- `∑[A019425(record[n+1+A019425(n)+n])]` -/
def P12454118039156637409.Spec : Prop :=
  ∀ n, P12454118039156637409.a n = A195241 n

end A195241

/-! ## A195241.P50312772324622557

`record[A028242(n)+A014107(A131508(n))]`
-/

namespace A195241.P50312772324622557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n + A014107 (A131508 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195241.P50312772324622557

namespace A195241

/-- `record[A028242(n)+A014107(A131508(n))]` -/
def P50312772324622557.Spec : Prop :=
  ∀ n, P50312772324622557.a n = A195241 n

end A195241

/-! ## A195241.P10973506459270713460

`A267047(A004275(A004275(n)))-A004275(n)`
-/

namespace A195241.P10973506459270713460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267047 (A004275 (A004275 n).toNat).toNat - A004275 n

end

end A195241.P10973506459270713460

namespace A195241

/-- `A267047(A004275(A004275(n)))-A004275(n)` -/
def P10973506459270713460.Spec : Prop :=
  ∀ n, P10973506459270713460.a n = A195241 n

end A195241

/-! ## A195241.P11481198714417453683

`A000124(A004280(A004280(n+1)))-A004277(n)`
-/

namespace A195241.P11481198714417453683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A004280 (A004280 (n + 1)).toNat).toNat - A004277 n

end

end A195241.P11481198714417453683

namespace A195241

/-- `A000124(A004280(A004280(n+1)))-A004277(n)` -/
def P11481198714417453683.Spec : Prop :=
  ∀ n, P11481198714417453683.a n = A195241 n

end A195241

/-! ## A195241.P15786327492372683603

`A330613(∑[A004280(A004280(n+1))])`
-/

namespace A195241.P15786327492372683603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A004280 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330613 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A195241.P15786327492372683603

namespace A195241

/-- `A330613(∑[A004280(A004280(n+1))])` -/
def P15786327492372683603.Spec : Prop :=
  ∀ n, P15786327492372683603.a n = A195241 n

end A195241

/-!
# A195242: Expansion of Sum_{n>=0} n^n*x^n/(1 - n*x)^n.

The programs for A195242, there is no canonical definition to state claims against.
-/

/-! ## A195242.P11200199246228167952

`A065033(A245496(n))`
-/

namespace A195242.P11200199246228167952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A245496 n).toNat

end

end A195242.P11200199246228167952

/-!
# A195243: Number of lower triangles of an n X n 0..3 array with each element differing from all of its diagonal, vertical, antidiagonal and horizontal neighbors by two or less.

The programs for A195243, there is no canonical definition to state claims against.
-/

/-! ## A195243.P7254704103056797958

`A195248(∑[n+3]+1)`
-/

namespace A195243.P7254704103056797958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195248 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A195243.P7254704103056797958

/-!
# A195244: Number of lower triangles of an n X n 0..4 array with each element differing from all of its diagonal, vertical, antidiagonal and horizontal neighbors by two or less.

The programs for A195244, there is no canonical definition to state claims against.
-/

/-! ## A195244.P2695687474510510670

`A195248(A141214(n+1))`
-/

namespace A195244.P2695687474510510670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195248 (A141214 (n + 1)).toNat

end

end A195244.P2695687474510510670

/-! ## A195244.P7446395720325869707

`A195248(A056000(n)+7)`
-/

namespace A195244.P7446395720325869707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195248 (A056000 n + 7).toNat

end

end A195244.P7446395720325869707

/-! ## A195244.P2118779718830046024

`A195248(eq[3, A193592(n)])`
-/

namespace A195244.P2118779718830046024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195244.P2118779718830046024

/-! ## A195244.P9090062296159188805

`A195248(eq[4, A140996(n)])`
-/

namespace A195244.P9090062296159188805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195244.P9090062296159188805

/-! ## A195244.P3688814087375412256

`A195248(eq[4, A057728(n+1)])`
-/

namespace A195244.P3688814087375412256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195244.P3688814087375412256

/-!
# A195245: Number of lower triangles of an n X n 0..5 array with each element differing from all of its diagonal, vertical, antidiagonal and horizontal neighbors by two or less.

The programs for A195245, there is no canonical definition to state claims against.
-/

/-! ## A195245.P10041552291868343759

`A195248(eq[2, A092921(n)])`
-/

namespace A195245.P10041552291868343759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195245.P10041552291868343759

/-! ## A195245.P6472446576954969595

`A195248(eq[4, A193592(n)])`
-/

namespace A195245.P6472446576954969595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195245.P6472446576954969595

/-! ## A195245.P6902276024983038100

`A195248(eq[8, A140996(n)])`
-/

namespace A195245.P6902276024983038100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195245.P6902276024983038100

/-! ## A195245.P5926841859904310482

`A195248(Δ[A023545(n+1)])`
-/

namespace A195245.P5926841859904310482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195248 (f1 (n + 1) - f1 n).toNat

end

end A195245.P5926841859904310482

/-! ## A195245.P1195797555996670240

`A195248(A141214(n+2)-1)`
-/

namespace A195245.P1195797555996670240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195248 (A141214 (n + 2) - 1).toNat

end

end A195245.P1195797555996670240

/-!
# A195247: Number of lower triangles of an n X n 0..7 array with each element differing from all of its diagonal, vertical, antidiagonal and horizontal neighbors by two or less.

The programs for A195247, there is no canonical definition to state claims against.
-/

/-! ## A195247.P3263459012651244963

`A195248(eq[6, A193592(n)])`
-/

namespace A195247.P3263459012651244963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195247.P3263459012651244963

/-!
# A195250: Number of lower triangles of a 4X4 0..n array with each element differing from all of its diagonal, vertical, antidiagonal and horizontal neighbors by two or less.

The programs for A195250, there is no canonical definition to state claims against.
-/

/-! ## A195250.P5615974325986585201

`A195248(A141214(n)+7)`
-/

namespace A195250.P5615974325986585201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195248 (A141214 n + 7).toNat

end

end A195250.P5615974325986585201

/-!
# A195251: Number of lower triangles of a 5X5 0..n array with each element differing from all of its diagonal, vertical, antidiagonal and horizontal neighbors by two or less.

The programs for A195251, there is no canonical definition to state claims against.
-/

/-! ## A195251.P2271725528565762427

`A195248(eq[6, A131818(n+1)])`
-/

namespace A195251.P2271725528565762427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195251.P2271725528565762427

/-!
# A195253: Number of lower triangles of a 7X7 0..n array with each element differing from all of its diagonal, vertical, antidiagonal and horizontal neighbors by two or less.

The programs for A195253, there is no canonical definition to state claims against.
-/

/-! ## A195253.P9176207011880062371

`A195248(A000124(n+6)+6)`
-/

namespace A195253.P9176207011880062371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195248 (A000124 (n + 6) + 6).toNat

end

end A195253.P9176207011880062371

/-!
# A195254: O.g.f.: Sum_{n>=0} 2*(n+2)^(n-1)*x^n/(1+n*x)^n.

The programs for A195254, the canonical program `A195254.P7545265282348472626` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195254 has offset 0).

The definition of A195254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195254.P7545265282348472626

`(n+1)*a(n-1)-2*(n-2)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A195254

/-- `(n+1)*a(n-1)-2*(n-2)*a(n-2)` -/
def P7545265282348472626.Spec : Prop :=
  ∀ n, P7545265282348472626.a n = A195254 n

theorem P7545265282348472626.correct : P7545265282348472626.Spec := by
  intro n
  simp only [A195254]

end A195254

/-! ## A195254.P14344114500882924265

`2^n+(n-1)*a(n-1)` with `a(0)=1`
-/

namespace A195254.P14344114500882924265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℤ) + ((n : ℤ) - 1) * a (n - 1)

end

end A195254.P14344114500882924265

namespace A195254

/-- `2^n+(n-1)*a(n-1)` -/
def P14344114500882924265.Spec : Prop :=
  ∀ n, P14344114500882924265.a n = A195254 n

end A195254

/-! ## A195254.P10200203571531955935

`2^n-(a(n-1)-n*a(n-1))` with `a(0)=1`
-/

namespace A195254.P10200203571531955935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℤ) - (a (n - 1) - (n : ℤ) * a (n - 1))

end

end A195254.P10200203571531955935

namespace A195254

/-- `2^n-(a(n-1)-n*a(n-1))` -/
def P10200203571531955935.Spec : Prop :=
  ∀ n, P10200203571531955935.a n = A195254 n

end A195254

/-! ## A195254.P9142537171535295178

`2^n+a(n-1)/cot(atan(n))-a(n-1)` with `a(0)=1`
-/

namespace A195254.P9142537171535295178
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℝ) + a (n - 1) / Real.cot (Real.arctan (n : ℝ)) - a (n - 1)

end

end A195254.P9142537171535295178

namespace A195254

/-- `2^n+a(n-1)/cot(atan(n))-a(n-1)` -/
def P9142537171535295178.Spec : Prop :=
  ∀ n, P9142537171535295178.a n = (A195254 n : ℝ)

end A195254

/-! ## A195254.P15024129956208320093

`2^n+a(n-1)/n^-1-a(n-1)` with `a(0)=1`
-/

namespace A195254.P15024129956208320093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ) - a (n - 1)

end

end A195254.P15024129956208320093

namespace A195254

/-- `2^n+a(n-1)/n^-1-a(n-1)` -/
def P15024129956208320093.Spec : Prop :=
  ∀ n, P15024129956208320093.a n = (A195254 n : ℚ)

end A195254

/-! ## A195254.P1061462591492594219

`(n-1)*a(n-1)+A000051(n)-1` with `a(0)=1, a(1)=2`
-/

namespace A195254.P1061462591492594219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((n : ℤ) - 1) * a (n - 1) + (A000051 n - 1)

end

end A195254.P1061462591492594219

namespace A195254

/-- `(n-1)*a(n-1)+A000051(n)-1` -/
def P1061462591492594219.Spec : Prop :=
  ∀ n, P1061462591492594219.a n = A195254 n

end A195254

/-! ## A195254.P12195933187701050031

`A010842(A004273(n)-n)*A040001(2*n)`
-/

namespace A195254.P12195933187701050031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010842 (A004273 n - (n : ℤ)).toNat * A040001 (2 * n)

end

end A195254.P12195933187701050031

namespace A195254

/-- `A010842(A004273(n)-n)*A040001(2*n)` -/
def P12195933187701050031.Spec : Prop :=
  ∀ n, P12195933187701050031.a n = A195254 n

end A195254

/-! ## A195254.P9433838696593076674

`A001285(A178334(n))*A010842(A004273(n)-n)`
-/

namespace A195254.P9433838696593076674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A178334 n).toNat * A010842 (A004273 n - (n : ℤ)).toNat

end

end A195254.P9433838696593076674

namespace A195254

/-- `A001285(A178334(n))*A010842(A004273(n)-n)` -/
def P9433838696593076674.Spec : Prop :=
  ∀ n, P9433838696593076674.a n = A195254 n

end A195254

/-! ## A195254.P6639624037540683183

`A061142(A020639(n+1))*A010842(A004273(n)-n)`
-/

namespace A195254.P6639624037540683183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A020639 (n + 1)).toNat * A010842 (A004273 n - (n : ℤ)).toNat

end

end A195254.P6639624037540683183

namespace A195254

/-- `A061142(A020639(n+1))*A010842(A004273(n)-n)` -/
def P6639624037540683183.Spec : Prop :=
  ∀ n, P6639624037540683183.a n = A195254 n

end A195254

/-!
# A195255: O.g.f.: Sum_{n>=0} 3*(n+3)^(n-1)*x^n/(1+n*x)^n.

The programs for A195255, there is no canonical definition to state claims against.
-/

/-! ## A195255.P8393583633039889870

`3^n+(n-1)*a(n-1)` with `a(0)=1`
-/

namespace A195255.P8393583633039889870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 ^ n : ℤ) + ((n : ℤ) - 1) * a (n - 1)

end

end A195255.P8393583633039889870

/-! ## A195255.P469254081411786254

`3^n-(a(n-1)-n*a(n-1))` with `a(0)=1`
-/

namespace A195255.P469254081411786254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 ^ n : ℤ) - (a (n - 1) - (n : ℤ) * a (n - 1))

end

end A195255.P469254081411786254

/-! ## A195255.P9976827097344939508

`3^n+a(n-1)/n^-1-a(n-1)` with `a(0)=1`
-/

namespace A195255.P9976827097344939508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 ^ n : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ) - a (n - 1)

end

end A195255.P9976827097344939508

/-! ## A195255.P10792439492687779051

`3^n+a(n-1)*A023443(n)` with `a(0)=1`
-/

namespace A195255.P10792439492687779051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 ^ n : ℤ) + a (n - 1) * A023443 n

end

end A195255.P10792439492687779051

/-! ## A195255.P8197579245762519835

`n*a(n-1)+A000244(n)-a(n-1)` with `a(0)=1`
-/

namespace A195255.P8197579245762519835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) + (A000244 n - a (n - 1))

end

end A195255.P8197579245762519835

/-!
# A195256: O.g.f.: Sum_{n>=0} 4*(n+4)^(n-1)*x^n/(1+n*x)^n.

The programs for A195256, there is no canonical definition to state claims against.
-/

/-! ## A195256.P13305970453298882368

`4^n+(n-1)*a(n-1)` with `a(0)=1`
-/

namespace A195256.P13305970453298882368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (4 ^ n : ℤ) + ((n : ℤ) - 1) * a (n - 1)

end

end A195256.P13305970453298882368

/-! ## A195256.P8618581011584090050

`4^n-(a(n-1)-n*a(n-1))` with `a(0)=1`
-/

namespace A195256.P8618581011584090050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (4 ^ n : ℤ) - (a (n - 1) - (n : ℤ) * a (n - 1))

end

end A195256.P8618581011584090050

/-! ## A195256.P8647794821321052928

`n*a(n-1)+A000302(n)-a(n-1)` with `a(0)=1`
-/

namespace A195256.P8647794821321052928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) + (A000302 n - a (n - 1))

end

end A195256.P8647794821321052928

/-! ## A195256.P11269104721443277769

`A051049(2*n)+n*a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A195256.P11269104721443277769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051049 (2 * n) + (n : ℤ) * a (n - 1) - a (n - 1)

end

end A195256.P11269104721443277769

/-! ## A195256.P13938065993865809518

`A007179(2*n+1)+n*a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A195256.P13938065993865809518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007179 (2 * n + 1) + ((n : ℤ) * a (n - 1) - a (n - 1))

end

end A195256.P13938065993865809518

/-!
# A195257: O.g.f.: Sum_{n>=0} 5*(n+5)^(n-1)*x^n/(1+n*x)^n.

The programs for A195257, there is no canonical definition to state claims against.
-/

/-! ## A195257.P4422519306220174575

`5^n+(n-1)*a(n-1)` with `a(0)=1`
-/

namespace A195257.P4422519306220174575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (5 ^ n : ℤ) + ((n : ℤ) - 1) * a (n - 1)

end

end A195257.P4422519306220174575

/-! ## A195257.P9094012627953253188

`5^n-round((1-n)*a(n-1))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A195257.P9094012627953253188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (5 ^ n : ℤ) - (1 - (n : ℤ)) * a (n - 1)

end

end A195257.P9094012627953253188

/-! ## A195257.P17134432882796364928

`5^n-(a(n-1)-n*a(n-1))` with `a(0)=1`
-/

namespace A195257.P17134432882796364928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (5 ^ n : ℤ) - (a (n - 1) - (n : ℤ) * a (n - 1))

end

end A195257.P17134432882796364928

/-! ## A195257.P516318871521031567

`5^n+a(n-1)*A023443(n)` with `a(0)=1`
-/

namespace A195257.P516318871521031567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (5 ^ n : ℤ) + a (n - 1) * A023443 n

end

end A195257.P516318871521031567

/-! ## A195257.P4623903031603275374

`A000351(n)+n*a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A195257.P4623903031603275374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000351 n + ((n : ℤ) * a (n - 1) - a (n - 1))

end

end A195257.P4623903031603275374

/-!
# A195258: Triangle read by rows: row n gives the n primes corresponding to A187825.

The programs for A195258, there is no canonical definition to state claims against.
-/

/-! ## A195258.P2045952445398960245

`A003631(A083785(n+1)+A010815(n))`
-/

namespace A195258.P2045952445398960245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (A083785 (n + 1) + A010815 n).toNat

end

end A195258.P2045952445398960245

/-!
# A195259: G.f.: A(x) = 1 + Sum_{n>=1} x^n*A(x)^(3^(n-1)).

The programs for A195259, there is no canonical definition to state claims against.
-/

/-! ## A195259.P2871489604335437227

`A057367(A006116(n))+1`
-/

namespace A195259.P2871489604335437227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 (A006116 n).toNat + 1

end

end A195259.P2871489604335437227

/-! ## A195259.P16560186520435475401

`A008619((∑[A008619(n)]-1)*a(n-1))` with `a(0)=1`
-/

namespace A195259.P16560186520435475401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008619 ((∑ j ∈ Finset.range (n + 1), f1 j - 1) * a (n - 1)).toNat

end

end A195259.P16560186520435475401

/-! ## A195259.P12547142956071227913

`A215747(A208203(n))+A000142(n)`
-/

namespace A195259.P12547142956071227913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215747 (A208203 n).toNat + A000142 n

end

end A195259.P12547142956071227913

/-!
# A195260: G.f.: A(x) = 1 + Sum_{n>=1} x^n*A(x)^(3^n).

The programs for A195260, there is no canonical definition to state claims against.
-/

/-! ## A195260.P9265585501546732228

`A329547(A000165(n)-n)`
-/

namespace A195260.P9265585501546732228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329547 (A000165 n - (n : ℤ)).toNat

end

end A195260.P9265585501546732228

/-! ## A195260.P13843314780419858644

`A182653(∏[A024816(n+1)+1])`
-/

namespace A195260.P13843314780419858644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182653 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A195260.P13843314780419858644

/-!
# A195261: G.f.: A(x) = 1 + Sum_{n>=1} x^n*A(x)^A000069(n), where A000069 lists numbers with an odd number of 1's in their binary expansion.

The programs for A195261, there is no canonical definition to state claims against.
-/

/-! ## A195261.P878080278498922089

`A065261(or(∑[n], A174347(n)))`
-/

namespace A195261.P878080278498922089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065261 (Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A174347 n)).toNat

end

end A195261.P878080278498922089

/-! ## A195261.P5128828112870210962

`A226316(n)+∑{e}[A227725(2*(n+1)), val(#!, 2)]`
-/

namespace A195261.P5128828112870210962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227725 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226316 n + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n).natAbs p)) 2 : ℕ) : ℤ)

end

end A195261.P5128828112870210962

/-! ## A195261.P8787871663690806162

`A065719(A278990(n))+A001764(n)`
-/

namespace A195261.P8787871663690806162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (A278990 n).toNat + A001764 n

end

end A195261.P8787871663690806162

/-!
# A195262: G.f.: A(x) = Sum_{n>=0} x^n*A(x)^A001969(n+1), where A001969 lists numbers with an even number of 1's in their binary expansion.

The programs for A195262, there is no canonical definition to state claims against.
-/

/-! ## A195262.P14626865829218819536

`A107347(4*A162326(n))`
-/

namespace A195262.P14626865829218819536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107347 (4 * A162326 n).toNat

end

end A195262.P14626865829218819536

/-! ## A195262.P12363258152072557394

`A107347(lcm(4, A162326(n)))`
-/

namespace A195262.P12363258152072557394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107347 (Int.lcm 4 (A162326 n))

end

end A195262.P12363258152072557394

/-!
# A195264: Iterate x -> A080670(x) (replace x with the concatenation of the primes and exponents in its prime factorization) starting at n until reach 1 or a prime (which is then the value of a(n)); or a(n) = -1 if a prime is never reached.

The programs for A195264, there is no canonical definition to state claims against.
-/

/-! ## A195264.P10729418042758919423

`A037276(A080670(A080670(A080670(n+1))))`
-/

namespace A195264.P10729418042758919423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A080670 (A080670 (A080670 (n + 1)).toNat).toNat).toNat

end

end A195264.P10729418042758919423

/-!
# A195268: Numbers whose sum of odd divisors is prime.

The programs for A195268, there is no canonical definition to state claims against.
-/

/-! ## A195268.P2008015901612015519

`eq[2, A000005(A000593(n+1))]+1`
-/

namespace A195268.P2008015901612015519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000593 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A195268.P2008015901612015519

/-! ## A195268.P16181713777169503837

`eq[5, A001222(A004011(n))]`
-/

namespace A195268.P16181713777169503837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004011 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195268.P16181713777169503837

/-! ## A195268.P12150929037459623142

`eq[5, A001222(A096727(2*n))]`
-/

namespace A195268.P12150929037459623142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A096727 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195268.P12150929037459623142

/-! ## A195268.P281902054285027074

`eq[5, A001222(A103640(2*n))]`
-/

namespace A195268.P281902054285027074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A103640 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195268.P281902054285027074

/-! ## A195268.P16596603034893610474

`eq[A000005(A004011(n)), A040056(n)]`
-/

namespace A195268.P16596603034893610474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004011 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195268.P16596603034893610474

/-!
# A195270: 3-gap primes: Prime p is a term iff there is no prime between 3*p and 3*q, where q is the next prime after p.

The programs for A195270, there is no canonical definition to state claims against.
-/

/-! ## A195270.P3385840910858887392

`p?[A125631(A125495(2*(n+2)))]`
-/

namespace A195270.P3385840910858887392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125631 (A125495 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195270.P3385840910858887392

/-!
# A195271: 1.5-gap primes: Prime p is a term iff there is no prime between 1.5*p and 1.5*q, where q is the next prime after p.

The programs for A195271, there is no canonical definition to state claims against.
-/

/-! ## A195271.P12725348916534752925

`p?[A101739(n+1)+A047402(n+1)]`
-/

namespace A195271.P12725348916534752925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101739 (n + 1) + A047402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195271.P12725348916534752925

/-! ## A195271.P11924283706528663090

`p?[record[Δ[A169679(n+1)]]]`
-/

namespace A195271.P11924283706528663090
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195271.P11924283706528663090

/-! ## A195271.P3235606680801722764

`A076873(ceil(log2(A076875(n+1))))`
-/

namespace A195271.P3235606680801722764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076873 ⌈Real.logb 2 (A076875 (n + 1) : ℝ)⌉.toNat

end

end A195271.P3235606680801722764

/-!
# A195272: Number of lower triangles of an n X n integer array with each element differing from all of its vertical and horizontal neighbors by 2 or less and triangles differing by a constant counted only once.

The programs for A195272, there is no canonical definition to state claims against.
-/

/-! ## A195272.P7641241244664992903

`A195278(∑[n+2])`
-/

namespace A195272.P7641241244664992903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195278 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195272.P7641241244664992903

/-!
# A195273: Number of lower triangles of an n X n integer array with each element differing from all of its vertical and horizontal neighbors by 3 or less and triangles differing by a constant counted only once.

The programs for A195273, there is no canonical definition to state claims against.
-/

/-! ## A195273.P10038152023375591903

`A195278(∑[n+3]+1)`
-/

namespace A195273.P10038152023375591903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195278 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A195273.P10038152023375591903

/-!
# A195274: Number of lower triangles of an n X n integer array with each element differing from all of its vertical and horizontal neighbors by 4 or less and triangles differing by a constant counted only once.

The programs for A195274, there is no canonical definition to state claims against.
-/

/-! ## A195274.P2930386892804845326

`A195278(A141214(n+1))`
-/

namespace A195274.P2930386892804845326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195278 (A141214 (n + 1)).toNat

end

end A195274.P2930386892804845326

/-! ## A195274.P15096334431506901013

`A195278(A155212(n)+5)`
-/

namespace A195274.P15096334431506901013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195278 (A155212 n + 5).toNat

end

end A195274.P15096334431506901013

/-! ## A195274.P15555449989173990018

`A195278(A052905(n+1)+2)`
-/

namespace A195274.P15555449989173990018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195278 (A052905 (n + 1) + 2).toNat

end

end A195274.P15555449989173990018

/-!
# A195276: Number of lower triangles of an n X n integer array with each element differing from all of its vertical and horizontal neighbors by 6 or less and triangles differing by a constant counted only once.

The programs for A195276, there is no canonical definition to state claims against.
-/

/-! ## A195276.P11757214017167819863

`A195278(A055999(n+3)+1)`
-/

namespace A195276.P11757214017167819863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195278 (A055999 (n + 3) + 1).toNat

end

end A195276.P11757214017167819863

/-!
# A195278: T(n,k) = Number of lower triangles of an n X n integer array with each element differing from all of its vertical and horizontal neighbors by k or less and triangles differing by a constant counted only once.

The programs for A195278, there is no canonical definition to state claims against.
-/

/-! ## A195278.P13220222339485017253

`or(1, A338546(A146070(n+1)))`
-/

namespace A195278.P13220222339485017253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A338546 (A146070 (n + 1)).toNat)

end

end A195278.P13220222339485017253

/-! ## A195278.P3247119074952367788

`or(1, A049862(A323995(n+3)))`
-/

namespace A195278.P3247119074952367788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A049862 (A323995 (n + 3)).toNat)

end

end A195278.P3247119074952367788

/-!
# A195279: Number of lower triangles of a 3 X 3 integer array with each element differing from all of its vertical and horizontal neighbors by n or less and triangles differing by a constant counted only once.

The programs for A195279, the canonical program `A195279.P4298696130975354631` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195279 has offset 1).

The definition of A195279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195279.P4298696130975354631

`(2*n+3)²*A063496(n+2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A195279

/-- `(2*n+3)²*A063496(n+2)` -/
def P4298696130975354631.Spec : Prop :=
  ∀ n, P4298696130975354631.a n = A195279 (n + 1)

theorem P4298696130975354631.correct : P4298696130975354631.Spec := by
  intro n
  simp only [A195279, Nat.add_sub_cancel]

end A195279

/-! ## A195279.P7448139113959125842

`A100157(n+2)²-A258582(n+1)²`
-/

namespace A195279.P7448139113959125842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100157 (n + 2) ^ 2 - A258582 (n + 1) ^ 2

end

end A195279.P7448139113959125842

namespace A195279

/-- `A100157(n+2)²-A258582(n+1)²` -/
def P7448139113959125842.Spec : Prop :=
  ∀ n, P7448139113959125842.a n = A195279 (n + 1)

end A195279

/-! ## A195279.P8510935391548169747

`Δ[(n+1)*A000447(n+1)]*A016754(n+1)`
-/

namespace A195279.P8510935391548169747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A016754 (n + 1)

end

end A195279.P8510935391548169747

namespace A195279

/-- `Δ[(n+1)*A000447(n+1)]*A016754(n+1)` -/
def P8510935391548169747.Spec : Prop :=
  ∀ n, P8510935391548169747.a n = A195279 (n + 1)

end A195279

/-! ## A195279.P12333631502012831423

`A272125(2*n+3)`
-/

namespace A195279.P12333631502012831423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272125 (2 * n + 3)

end

end A195279.P12333631502012831423

namespace A195279

/-- `A272125(2*n+3)` -/
def P12333631502012831423.Spec : Prop :=
  ∀ n, P12333631502012831423.a n = A195279 (n + 1)

end A195279

/-! ## A195279.P13218698251560731751

`(2*n+3)*A071270(2*n+3)`
-/

namespace A195279.P13218698251560731751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A071270 (2 * n + 3)

end

end A195279.P13218698251560731751

namespace A195279

/-- `(2*n+3)*A071270(2*n+3)` -/
def P13218698251560731751.Spec : Prop :=
  ∀ n, P13218698251560731751.a n = A195279 (n + 1)

end A195279

/-! ## A195279.P16776099018853191286

`(2*n+3)²*A005900(2*n+3)`
-/

namespace A195279.P16776099018853191286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) * A005900 (2 * n + 3)

end

end A195279.P16776099018853191286

namespace A195279

/-- `(2*n+3)²*A005900(2*n+3)` -/
def P16776099018853191286.Spec : Prop :=
  ∀ n, P16776099018853191286.a n = A195279 (n + 1)

end A195279

/-! ## A195279.P6082801064391743477

`record[A272125(A000265(n+3))]`
-/

namespace A195279.P6082801064391743477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272125 (A000265 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195279.P6082801064391743477

namespace A195279

/-- `record[A272125(A000265(n+3))]` -/
def P6082801064391743477.Spec : Prop :=
  ∀ n, P6082801064391743477.a n = A195279 (n + 1)

end A195279

/-! ## A195279.P13667207571739642302

`record[A272125(A046666(n+2)+3)]`
-/

namespace A195279.P13667207571739642302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272125 (A046666 (n + 2) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195279.P13667207571739642302

namespace A195279

/-- `record[A272125(A046666(n+2)+3)]` -/
def P13667207571739642302.Spec : Prop :=
  ∀ n, P13667207571739642302.a n = A195279 (n + 1)

end A195279

/-! ## A195279.P4644129919819780288

`A271535(2*n+3)-A271535(2*(n+1))`
-/

namespace A195279.P4644129919819780288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271535 (2 * n + 3) - A271535 (2 * (n + 1))

end

end A195279.P4644129919819780288

namespace A195279

/-- `A271535(2*n+3)-A271535(2*(n+1))` -/
def P4644129919819780288.Spec : Prop :=
  ∀ n, P4644129919819780288.a n = A195279 (n + 1)

end A195279

/-!
# A195280: Number of lower triangles of a 4X4 integer array with each element differing from all of its vertical and horizontal neighbors by n or less and triangles differing by a constant counted only once.

The programs for A195280, there is no canonical definition to state claims against.
-/

/-! ## A195280.P1297037555304865300

`A195278(A141214(n)+7)`
-/

namespace A195280.P1297037555304865300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195278 (A141214 n + 7).toNat

end

end A195280.P1297037555304865300

/-! ## A195280.P3803942737745117864

`A195278(A052905(n)+9)`
-/

namespace A195280.P3803942737745117864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195278 (A052905 n + 9).toNat

end

end A195280.P3803942737745117864

/-! ## A195280.P14257545076499847905

`A195278(A055999(n)+10)`
-/

namespace A195280.P14257545076499847905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195278 (A055999 n + 10).toNat

end

end A195280.P14257545076499847905

/-! ## A195280.P1326855767840072730

`A195278(A167614(n+2)+1)`
-/

namespace A195280.P1326855767840072730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195278 (A167614 (n + 2) + 1).toNat

end

end A195280.P1326855767840072730

/-! ## A195280.P15299932749789886901

`A195278(A115744(n+1)+4)`
-/

namespace A195280.P15299932749789886901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195278 (A115744 (n + 1) + 4).toNat

end

end A195280.P15299932749789886901

/-!
# A195284: Decimal expansion of shortest length of segment from side AB through incenter to side AC in right triangle ABC with sidelengths (a,b,c)=(3,4,5); i.e., decimal expansion of 2*sqrt(10)/3.

The programs for A195284, there is no canonical definition to state claims against.
-/

/-! ## A195284.P10152270311133065642

`A176219(n)-A000038(n)`
-/

namespace A195284.P10152270311133065642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176219 (n + 1) - A000038 n

end

end A195284.P10152270311133065642

/-! ## A195284.P16277839995269655972

`ceil(A176219(n)/A261143(n))`
-/

namespace A195284.P16277839995269655972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176219 (n + 1) : ℚ) / (A261143 n : ℚ)⌉

end

end A195284.P16277839995269655972

/-! ## A195284.P16754391214464327733

`A040006(n)/6*A176219(n)`
-/

namespace A195284.P16754391214464327733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040006 n : ℚ) / 6 * (A176219 (n + 1) : ℚ)

end

end A195284.P16754391214464327733

/-! ## A195284.P11558119248063908275

`A176219(n)/A261143(n+2)`
-/

namespace A195284.P11558119248063908275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176219 (n + 1) : ℚ) / (A261143 (n + 2) : ℚ)

end

end A195284.P11558119248063908275

/-! ## A195284.P11894931313311231807

`A176219(n)/A014963(A016825(n))`
-/

namespace A195284.P11894931313311231807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176219 (n + 1) : ℚ) / (A014963 (A016825 n).toNat : ℚ)

end

end A195284.P11894931313311231807

/-! ## A195284.P11966451568244634059

`A176219(n)/A014963(A017089(n))`
-/

namespace A195284.P11966451568244634059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176219 (n + 1) : ℚ) / (A014963 (A017089 n).toNat : ℚ)

end

end A195284.P11966451568244634059

/-!
# A195287: a(n) = (A091137(n)/n!) * Integral_{u=-1..1} u*(u+1)*...*(u+n-1) du.

The programs for A195287, there is no canonical definition to state claims against.
-/

/-! ## A195287.P13710501249073367246

`A002657(A004905(n+1))-A141417(n)`
-/

namespace A195287.P13710501249073367246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002657 (A004905 (n + 1)).toNat - A141417 n

end

end A195287.P13710501249073367246

/-! ## A195287.P15958319101587296313

`A002657(n)-A141417(A181352(n))`
-/

namespace A195287.P15958319101587296313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002657 n - A141417 (A181352 n).toNat

end

end A195287.P15958319101587296313

/-! ## A195287.P12525044572820266667

`A002657(A145461(n+1))-A141417(n)`
-/

namespace A195287.P12525044572820266667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002657 (A145461 (n + 1)).toNat - A141417 n

end

end A195287.P12525044572820266667

/-! ## A195287.P13014694269692064823

`A002657(A004881(n+1))-A141417(n)`
-/

namespace A195287.P13014694269692064823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002657 (A004881 (n + 1)).toNat - A141417 n

end

end A195287.P13014694269692064823

/-! ## A195287.P7380263513031549025

`A140825(∑[record[A049687(n)]])-A141417(n)`
-/

namespace A195287.P7380263513031549025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140825 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A141417 n

end

end A195287.P7380263513031549025

/-!
# A195291: Years in the Gregorian calendar which are not (proleptic) leap years.

The programs for A195291, there is no canonical definition to state claims against.
-/

/-! ## A195291.P5409324650804851756

`record[xor(C(n², root(10, 1/4))+n, 3^(n%2))]`
-/

namespace A195291.P5409324650804851756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.choose (n ^ 2) (SequenceMachineLib.roundAway ((10 : ℝ) ^ (1 / ((1 : ℚ) / 4 : ℝ)))).toNat + n) (3 ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195291.P5409324650804851756

/-! ## A195291.P6451094545900601812

`lt[0, A118759(n)%4]`
-/

namespace A195291.P6451094545900601812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118759 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A195291.P6451094545900601812

/-! ## A195291.P2876141182600084400

`lt[gcd(4, A244158(n)), 3]`
-/

namespace A195291.P2876141182600084400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A244158 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195291.P2876141182600084400

/-! ## A195291.P3436989434538526068

`eq[0, A014017(A118759(n))]`
-/

namespace A195291.P3436989434538526068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 (A118759 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195291.P3436989434538526068

/-! ## A195291.P16985565961224093286

`eq[0, A014017(A244158(n))]`
-/

namespace A195291.P16985565961224093286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 (A244158 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195291.P16985565961224093286

/-! ## A195291.P10003415054425074050

`lt[-A009531(n), A118759(n)]`
-/

namespace A195291.P10003415054425074050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A009531 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195291.P10003415054425074050

/-! ## A195291.P5735341547312229906

`eq[0, A264769(A096582(n+1))]`
-/

namespace A195291.P5735341547312229906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264769 (A096582 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195291.P5735341547312229906

/-!
# A195295: Number of Goldbach partitions of 4^n.

The programs for A195295, there is no canonical definition to state claims against.
-/

/-! ## A195295.P15004371774440019490

`A006307(2*n)`
-/

namespace A195295.P15004371774440019490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006307 (2 * n)

end

end A195295.P15004371774440019490

/-! ## A195295.P2261765549918052259

`record[A006307(and(n, n+1))]`
-/

namespace A195295.P2261765549918052259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006307 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195295.P2261765549918052259

/-! ## A195295.P10556406179071548986

`record[A006307(abs(xor(1, -n)))]`
-/

namespace A195295.P10556406179071548986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006307 |Int.xor 1 (-(n : ℤ))|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195295.P10556406179071548986

/-! ## A195295.P16927420618266987150

`record[A006307(n)/(-1)^n]`
-/

namespace A195295.P16927420618266987150
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006307 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195295.P16927420618266987150

/-! ## A195295.P6199263247013024655

`record[A006307(n-val(n+1, 2))]`
-/

namespace A195295.P6199263247013024655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006307 (n - SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195295.P6199263247013024655

