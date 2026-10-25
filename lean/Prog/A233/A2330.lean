import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A233000: Let L(n) = Fibonacci(n-1)+Fibonacci(n+1) (cf. A000045, A000032); if n is even then a(n) = (L(n)+2)^2 otherwise a(n) = L(2*n)+2.

The programs for A233000, the canonical program `A233000.P9625870352812873065` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233000 has offset 0).

The definition of A233000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233000.P9625870352812873065

`A000211(A109043(n))^gcd(2, n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A233000

/-- `A000211(A109043(n))^gcd(2, n)` -/
def P9625870352812873065.Spec : Prop :=
  ∀ n, P9625870352812873065.a n = A233000 n

theorem P9625870352812873065.correct : P9625870352812873065.Spec := by
  intro n
  simp only [A233000]

end A233000

/-! ## A233000.P10830616672217641855

`A000211(A109043(n))^Δ[A007494(n)]`
-/

namespace A233000.P10830616672217641855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000211 (A109043 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A233000.P10830616672217641855

namespace A233000

/-- `A000211(A109043(n))^Δ[A007494(n)]` -/
def P10830616672217641855.Spec : Prop :=
  ∀ n, P10830616672217641855.a n = (A233000 n : ℚ)

end A233000

/-! ## A233000.P2816499331869732783

`A000211(A109043(n))^A028920(A016777(n))`
-/

namespace A233000.P2816499331869732783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000211 (A109043 n).toNat : ℚ) ^ (A028920 (A016777 n).toNat : ℤ)

end

end A233000.P2816499331869732783

namespace A233000

/-- `A000211(A109043(n))^A028920(A016777(n))` -/
def P2816499331869732783.Spec : Prop :=
  ∀ n, P2816499331869732783.a n = (A233000 n : ℚ)

end A233000

/-! ## A233000.P13594120624053492704

`A000211(A109043(n))^A204992(A006519(n+1))`
-/

namespace A233000.P13594120624053492704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000211 (A109043 n).toNat : ℚ) ^ (A204992 (A006519 (n + 1)).toNat : ℤ)

end

end A233000.P13594120624053492704

namespace A233000

/-- `A000211(A109043(n))^A204992(A006519(n+1))` -/
def P13594120624053492704.Spec : Prop :=
  ∀ n, P13594120624053492704.a n = (A233000 n : ℚ)

end A233000

/-! ## A233000.P18441928991722073894

`A000211(A109043(n))^A006519(n²+2)`
-/

namespace A233000.P18441928991722073894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000211 (A109043 n).toNat : ℚ) ^ (A006519 (n ^ 2 + 2) : ℤ)

end

end A233000.P18441928991722073894

namespace A233000

/-- `A000211(A109043(n))^A006519(n²+2)` -/
def P18441928991722073894.Spec : Prop :=
  ∀ n, P18441928991722073894.a n = (A233000 n : ℚ)

end A233000

/-!
# A233001: a(n) = A005271(n)^2.

The programs for A233001, there is no canonical definition to state claims against.
-/

/-! ## A233001.P14789583789402700289

`A005271(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A233001.P14789583789402700289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005271 (n + 1) ^ 2

end

end A233001.P14789583789402700289

/-! ## A233001.P5830058594468535726

`A005271(n+1)^A005310(A005308(n+1))`
-/

namespace A233001.P5830058594468535726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005271 (n + 1) : ℚ) ^ (A005310 (A005308 (n + 1)).toNat : ℤ)

end

end A233001.P5830058594468535726

/-!
# A233003: (n!)^2 mod Pt(n), where Pt(n) is product of first n positive triangular numbers (A000217).

The programs for A233003, there is no canonical definition to state claims against.
-/

/-! ## A233003.P13556742478976792892

`∏[(n+1)²]%∏[∑[n+1]]`
-/

namespace A233003.P13556742478976792892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) % (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A233003.P13556742478976792892

/-! ## A233003.P10721889203128886620

`A053604(∑[A005649(n)])²`
-/

namespace A233003.P10721889203128886620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053604 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A233003.P10721889203128886620

/-!
# A233004: Pt(n) mod n!, where Pt(n) is product of first n positive triangular numbers (A000217).

The programs for A233004, there is no canonical definition to state claims against.
-/

/-! ## A233004.P7435266116631564263

`∏[∑[n+1]]%(n+1)!`
-/

namespace A233004.P7435266116631564263
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) % Nat.factorial (n + 1)

end

end A233004.P7435266116631564263

/-! ## A233004.P11423003506154401440

`∏[C(n+2, 2)]%∏[n+1]`
-/

namespace A233004.P11423003506154401440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) % (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A233004.P11423003506154401440

/-! ## A233004.P7976437969680261430

`∏[∑[n+1]]%record[A098361(n)]`
-/

namespace A233004.P7976437969680261430
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n))

end

end A233004.P7976437969680261430

/-! ## A233004.P2424828027885172334

`∏[A000217(n+1)]%∏[n+1]`
-/

namespace A233004.P2424828027885172334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A233004.P2424828027885172334

/-! ## A233004.P17984369688617087139

`∏[A085465(n+1)]%∏[n+1]`
-/

namespace A233004.P17984369688617087139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085465 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A233004.P17984369688617087139

/-!
# A233005: a(n) = floor(Pt(n)/n!), where Pt(n) is product of first n positive triangular numbers (A000217).

The programs for A233005, the canonical program `A233005.P10586204714592784254` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233005 has offset 1).

The definition of A233005 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A233005.P10586204714592784254

`floor((n+2)!/2^(n+1))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A233005

/-- `floor((n+2)!/2^(n+1))` -/
def P10586204714592784254.Spec : Prop :=
  ∀ n, P10586204714592784254.a n = A233005 (n + 1)

theorem P10586204714592784254.correct : P10586204714592784254.Spec := by
  intro n
  simp only [A233005, Nat.add_sub_cancel]

end A233005

/-! ## A233005.P7011008960149009754

`floor(∏[n/2+1])`
-/

namespace A233005.P7011008960149009754
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A233005.P7011008960149009754

namespace A233005

/-- `floor(∏[n/2+1])` -/
def P7011008960149009754.Spec : Prop :=
  ∀ n, P7011008960149009754.a n = A233005 (n + 1)

end A233005

/-! ## A233005.P7095562668835946952

`2^-n*and(A000142(n+2)/2, -2^n)`
-/

namespace A233005.P7095562668835946952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (-(n : ℤ) : ℤ) * (Int.land (SequenceMachineLib.roundAway ((A000142 (n + 2) : ℚ) / 2)) (-(2 ^ n : ℤ)) : ℚ)

end

end A233005.P7095562668835946952

namespace A233005

/-- `2^-n*and(A000142(n+2)/2, -2^n)` -/
def P7095562668835946952.Spec : Prop :=
  ∀ n, P7095562668835946952.a n = (A233005 (n + 1) : ℚ)

end A233005

/-! ## A233005.P1803924727364592951

`floor(∑[A062119(n+1)/A000079(n+1)])+1`
-/

namespace A233005.P1803924727364592951
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062119 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1

end

end A233005.P1803924727364592951

namespace A233005

/-- `floor(∑[A062119(n+1)/A000079(n+1)])+1` -/
def P1803924727364592951.Spec : Prop :=
  ∀ n, P1803924727364592951.a n = A233005 (n + 1)

end A233005

/-! ## A233005.P12121661993609241136

`A000027(floor(A001710(n+2)/A000079(n)))`
-/

namespace A233005.P12121661993609241136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌊(A001710 (n + 2) : ℚ) / (A000079 n : ℚ)⌋.toNat

end

end A233005.P12121661993609241136

namespace A233005

/-- `A000027(floor(A001710(n+2)/A000079(n)))` -/
def P12121661993609241136.Spec : Prop :=
  ∀ n, P12121661993609241136.a n = A233005 (n + 1)

end A233005

/-!
# A233006: Expansion of psi(x) / f(-x^6) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A233006, there is no canonical definition to state claims against.
-/

/-! ## A233006.P3889384022125264819

`A131576(A103517(A090942(n+1))²)`
-/

namespace A233006.P3889384022125264819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (A103517 (A090942 (n + 1)).toNat ^ 2).toNat

end

end A233006.P3889384022125264819

/-! ## A233006.P3175978147601054701

`and(-A075193(n), A165034(A113374(n)))`
-/

namespace A233006.P3175978147601054701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A075193 n) (A165034 (A113374 n).toNat)

end

end A233006.P3175978147601054701

/-! ## A233006.P1903171637433193310

`A000110(n)%p?[A001222(A039755(n))]`
-/

namespace A233006.P1903171637433193310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A039755 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000110 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A233006.P1903171637433193310

/-! ## A233006.P1824186939918899982

`A112607(xor(A129912(n+1), A211701(n+3)))`
-/

namespace A233006.P1824186939918899982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112607 (Int.xor (A129912 (n + 1)) (A211701 (n + 3))).toNat

end

end A233006.P1824186939918899982

/-! ## A233006.P15611102181129989890

`A322353(A061395(n+1)+A029746(2*(n+1)))`
-/

namespace A233006.P15611102181129989890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322353 (A061395 (n + 1) + A029746 (2 * (n + 1))).toNat

end

end A233006.P15611102181129989890

/-!
# A233007: Numbers k such that (k-1)^2 + k^2 + (k+1)^2 is a palindrome.

The programs for A233007, there is no canonical definition to state claims against.
-/

/-! ## A233007.P2074611342767588962

`xor(A085229(A348880(n)), A284238(n))`
-/

namespace A233007.P2074611342767588962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A085229 (A348880 n).toNat) (A284238 n)

end

end A233007.P2074611342767588962

/-!
# A233008: p mod 24, where p is such that 2^p - 1 is prime (see Mersenne primes, A000043).

The programs for A233008, there is no canonical definition to state claims against.
-/

/-! ## A233008.P1417424028871600725

`A000043(n+1)%24`
-/

namespace A233008.P1417424028871600725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000043 (n + 1)) 24

end

end A233008.P1417424028871600725

/-! ## A233008.P5616286614784025238

`(A090748(n+1)+1)%24`
-/

namespace A233008.P5616286614784025238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090748 (n + 1) + 1) 24

end

end A233008.P5616286614784025238

/-! ## A233008.P1736896368097753797

`(A050475(n+1)-1)%24`
-/

namespace A233008.P1736896368097753797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050475 (n + 1) - 1) 24

end

end A233008.P1736896368097753797

/-! ## A233008.P16534721889578039263

`(A061645(n+1)/2)%24`
-/

namespace A233008.P16534721889578039263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A061645 (n + 1) : ℚ) / 2)) 24

end

end A233008.P16534721889578039263

/-! ## A233008.P16507037736874773443

`ceil(sqrt(A139115(n+1)))%24`
-/

namespace A233008.P16507037736874773443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (A139115 (n + 1) : ℝ)⌉ 24

end

end A233008.P16507037736874773443

/-!
# A233009: Exponents p of the Mersenne primes 2^p - 1 (see A000043) read mod 23.

The programs for A233009, there is no canonical definition to state claims against.
-/

/-! ## A233009.P4825010918568254253

`A000043(n+1)%23`
-/

namespace A233009.P4825010918568254253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000043 (n + 1)) 23

end

end A233009.P4825010918568254253

/-! ## A233009.P7489065620937269299

`(A090748(n+1)+1)%23`
-/

namespace A233009.P7489065620937269299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090748 (n + 1) + 1) 23

end

end A233009.P7489065620937269299

/-! ## A233009.P13932560877825336573

`(A050475(n+1)-1)%23`
-/

namespace A233009.P13932560877825336573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050475 (n + 1) - 1) 23

end

end A233009.P13932560877825336573

/-! ## A233009.P7709190050016990774

`(A061645(n+1)/2)%23`
-/

namespace A233009.P7709190050016990774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A061645 (n + 1) : ℚ) / 2)) 23

end

end A233009.P7709190050016990774

/-! ## A233009.P2830257755819470686

`ceil(sqrt(A139115(n+1)))%23`
-/

namespace A233009.P2830257755819470686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (A139115 (n + 1) : ℝ)⌉ 23

end

end A233009.P2830257755819470686

/-!
# A233010: In balanced ternary notation, either a palindrome or becomes a palindrome if trailing 0's are omitted.

The programs for A233010, there is no canonical definition to state claims against.
-/

/-! ## A233010.P11014225361667191840

`eq[n, A343602(A351702(n))]`
-/

namespace A233010.P11014225361667191840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343602 (A351702 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A233010.P11014225361667191840

/-! ## A233010.P16588103022976188505

`eq[A343603(n), A351702(n)]`
-/

namespace A233010.P16588103022976188505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351702 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233010.P16588103022976188505

/-! ## A233010.P11379166894519663126

`eq[A030102(A030102(n)), A134028(n)]`
-/

namespace A233010.P11379166894519663126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (A030102 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233010.P11379166894519663126

/-! ## A233010.P17553983088980000364

`eq[n, A160652(n)]`
-/

namespace A233010.P17553983088980000364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A233010.P17553983088980000364

/-! ## A233010.P8864066313080327049

`lt[(n-A160652(n))², A055642(n)]`
-/

namespace A233010.P8864066313080327049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A160652 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A233010.P8864066313080327049

/-! ## A233010.P14499618554560337810

`record[A160652(record[A160652(n)%(n+1)])]`
-/

namespace A233010.P14499618554560337810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160652 n) (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160652 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233010.P14499618554560337810

/-! ## A233010.P17157039203430352725

`A160652(record[n/(1-A160652(n)+n)])`
-/

namespace A233010.P17157039203430352725
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (1 - A160652 n + (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160652 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A233010.P17157039203430352725

/-! ## A233010.P8284320193569352133

`eq[A134028(n), A137305(A137305(n))]`
-/

namespace A233010.P8284320193569352133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134028 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137305 (A137305 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A233010.P8284320193569352133

/-! ## A233010.P11854639793778340384

`eq[n, A038500(A008574(n))*A134028(n)]`
-/

namespace A233010.P11854639793778340384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A008574 n).toNat * A134028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A233010.P11854639793778340384

/-!
# A233012: Number of n X n 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally or vertically, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233012, there is no canonical definition to state claims against.
-/

/-! ## A233012.P10961327430401088203

`ceil(A068254(n+1)/2)`
-/

namespace A233012.P10961327430401088203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A068254 (n + 1) : ℚ) / 2⌉

end

end A233012.P10961327430401088203

/-! ## A233012.P5009703327744330883

`A233018(∑[4*n]+1)`
-/

namespace A233012.P5009703327744330883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233018 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233012.P5009703327744330883

/-! ## A233012.P7993526150085912008

`round(A222444(∑[A008574(n)])/2)`
-/

namespace A233012.P7993526150085912008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A222444 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2)

end

end A233012.P7993526150085912008

/-!
# A233013: Number of n X 3 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally or vertically, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233013, there is no canonical definition to state claims against.
-/

/-! ## A233013.P1920822385767547523

`ceil(A222439(n+1)/2)`
-/

namespace A233013.P1920822385767547523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A222439 (n + 1) : ℚ) / 2⌉

end

end A233013.P1920822385767547523

/-! ## A233013.P10738042811957160118

`3*A198710(n+1)-1`
-/

namespace A233013.P10738042811957160118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A198710 (n + 1) - 1

end

end A233013.P10738042811957160118

/-! ## A233013.P8832138310975210013

`A355882(n+1)+A198710(n+1)`
-/

namespace A233013.P8832138310975210013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355882 (n + 1) + A198710 (n + 1)

end

end A233013.P8832138310975210013

/-! ## A233013.P3134380466359053200

`3*round(A222439(n+1)/6+A225181(n)/2)-1`
-/

namespace A233013.P3134380466359053200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway ((A222439 (n + 1) : ℚ) / 6 + (A225181 n : ℚ) / 2) - 1

end

end A233013.P3134380466359053200

/-! ## A233013.P11207341926835523007

`ceil(A222444(A167614(n+1))/2)`
-/

namespace A233013.P11207341926835523007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A222444 (A167614 (n + 1)).toNat : ℚ) / 2⌉

end

end A233013.P11207341926835523007

/-!
# A233014: Number of nX4 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally or vertically, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233014, there is no canonical definition to state claims against.
-/

/-! ## A233014.P5935893318539936978

`ceil(A222440(n+1)/2)`
-/

namespace A233014.P5935893318539936978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A222440 (n + 1) : ℚ) / 2⌉

end

end A233014.P5935893318539936978

/-! ## A233014.P16727951599656232863

`3*A198711(n+1)-1`
-/

namespace A233014.P16727951599656232863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A198711 (n + 1) - 1

end

end A233014.P16727951599656232863

/-! ## A233014.P8028236577436632417

`A233018(A374004(n+1))`
-/

namespace A233014.P8028236577436632417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233018 (A374004 (n + 1)).toNat

end

end A233014.P8028236577436632417

/-! ## A233014.P15936437746076854520

`A233018(A141214(n)+7)`
-/

namespace A233014.P15936437746076854520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233018 (A141214 n + 7).toNat

end

end A233014.P15936437746076854520

/-! ## A233014.P11841094195730629214

`A233018(A167614(n+2)+1)`
-/

namespace A233014.P11841094195730629214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233018 (A167614 (n + 2) + 1).toNat

end

end A233014.P11841094195730629214

/-!
# A233015: Number of nX5 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally or vertically, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233015, there is no canonical definition to state claims against.
-/

/-! ## A233015.P5180654890426673170

`ceil(A222441(n+1)/2)`
-/

namespace A233015.P5180654890426673170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A222441 (n + 1) : ℚ) / 2⌉

end

end A233015.P5180654890426673170

/-! ## A233015.P11942532471701320720

`3*A198712(n+1)-1`
-/

namespace A233015.P11942532471701320720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A198712 (n + 1) - 1

end

end A233015.P11942532471701320720

/-! ## A233015.P2502826603418900718

`A233018(A374005(n+1))`
-/

namespace A233015.P2502826603418900718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233018 (A374005 (n + 1)).toNat

end

end A233015.P2502826603418900718

/-! ## A233015.P17511443617606113031

`A233018(A167614(n+3)+2)`
-/

namespace A233015.P17511443617606113031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233018 (A167614 (n + 3) + 2).toNat

end

end A233015.P17511443617606113031

/-! ## A233015.P14056055162454638898

`A233018(A034856(n+3)+7)`
-/

namespace A233015.P14056055162454638898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233018 (A034856 (n + 3) + 7).toNat

end

end A233015.P14056055162454638898

/-!
# A233016: Number of nX6 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally or vertically, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233016, there is no canonical definition to state claims against.
-/

/-! ## A233016.P15964811566801627774

`ceil(A222442(n+1)/2)`
-/

namespace A233016.P15964811566801627774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A222442 (n + 1) : ℚ) / 2⌉

end

end A233016.P15964811566801627774

/-! ## A233016.P9079997246733394449

`3*A198713(n+1)-1`
-/

namespace A233016.P9079997246733394449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A198713 (n + 1) - 1

end

end A233016.P9079997246733394449

/-! ## A233016.P5901990533214014240

`A233018(A374007(n+1))`
-/

namespace A233016.P5901990533214014240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233018 (A374007 (n + 1)).toNat

end

end A233016.P5901990533214014240

/-! ## A233016.P17754030874186601452

`A233018(abs(A000217(n+6)-6)+1)`
-/

namespace A233016.P17754030874186601452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233018 (|A000217 (n + 6) - 6| + 1).toNat

end

end A233016.P17754030874186601452

/-!
# A233017: Number of nX7 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally or vertically, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233017, there is no canonical definition to state claims against.
-/

/-! ## A233017.P12483740269597505421

`ceil(A222443(n+1)/2)`
-/

namespace A233017.P12483740269597505421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A222443 (n + 1) : ℚ) / 2⌉

end

end A233017.P12483740269597505421

/-! ## A233017.P15305155779682571281

`3*A198714(n+1)-1`
-/

namespace A233017.P15305155779682571281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A198714 (n + 1) - 1

end

end A233017.P15305155779682571281

/-! ## A233017.P8776358741481215025

`A233018(A374008(n+1))`
-/

namespace A233017.P8776358741481215025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233018 (A374008 (n + 1)).toNat

end

end A233017.P8776358741481215025

/-!
# A233018: T(n,k)=Number of nXk 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally or vertically, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233018, there is no canonical definition to state claims against.
-/

/-! ## A233018.P13258958223566440704

`ceil(A222444(n+1)/2)`
-/

namespace A233018.P13258958223566440704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A222444 (n + 1) : ℚ) / 2⌉

end

end A233018.P13258958223566440704

/-! ## A233018.P17617314123192594687

`round(A222444(n+1)/A036453(n+1))`
-/

namespace A233018.P17617314123192594687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A222444 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ))

end

end A233018.P17617314123192594687

/-! ## A233018.P1472662707555058305

`(A222444(n+1)+1)/ratio[A000079(n)]`
-/

namespace A233018.P1472662707555058305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222444 (n + 1) + 1 : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A233018.P1472662707555058305

/-! ## A233018.P14919630621564078230

`(A222444(n+1)+char[A029578(n)])/2`
-/

namespace A233018.P14919630621564078230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222444 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℚ) / 2

end

end A233018.P14919630621564078230

/-! ## A233018.P7603568047387583583

`(A222444(n+1)-A008683(A020484(n)))/2`
-/

namespace A233018.P7603568047387583583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222444 (n + 1) - A008683 (A020484 n).toNat : ℚ) / 2

end

end A233018.P7603568047387583583

/-! ## A233018.P4553190132145781630

`(A222444(n+1)+A035218(A035218(n+1)))/2`
-/

namespace A233018.P4553190132145781630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222444 (n + 1) + A035218 (A035218 (n + 1)).toNat : ℚ) / 2

end

end A233018.P4553190132145781630

/-! ## A233018.P15111271800591885798

`(A222444(n+1)+A001222(A094343(n+1)))/2`
-/

namespace A233018.P15111271800591885798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222444 (n + 1) + A001222 (A094343 (n + 1)).toNat : ℚ) / 2

end

end A233018.P15111271800591885798

/-! ## A233018.P8793395552391122872

`(A222444(n+1)+A006466(A014105(n)))/2`
-/

namespace A233018.P8793395552391122872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222444 (n + 1) + A006466 (A014105 n).toNat : ℚ) / 2

end

end A233018.P8793395552391122872

/-!
# A233019: Number of n X n 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, vertically, diagonally or antidiagonally, and top left element zero.

The programs for A233019, there is no canonical definition to state claims against.
-/

/-! ## A233019.P16061140397798018130

`A233026(∑[4*n]+1)`
-/

namespace A233019.P16061140397798018130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233026 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233019.P16061140397798018130

/-! ## A233019.P4946417717244649935

`or(1, A233026(A001844(n)))`
-/

namespace A233019.P4946417717244649935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A233026 (A001844 n).toNat)

end

end A233019.P4946417717244649935

/-! ## A233019.P7842864111808121148

`record[gcd(A114327(n), A233026(n+1))]`
-/

namespace A233019.P7842864111808121148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A233026 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233019.P7842864111808121148

/-! ## A233019.P14901234982302734103

`A233026(A001844(n))+A105517(n)`
-/

namespace A233019.P14901234982302734103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233026 (A001844 n).toNat + A105517 n

end

end A233019.P14901234982302734103

/-! ## A233019.P218437493388168008

`A233026(A001844(n))-A299905(n)`
-/

namespace A233019.P218437493388168008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233026 (A001844 n).toNat - A299905 n

end

end A233019.P218437493388168008

/-!
# A233020: Number of n X 2 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, vertically, diagonally or antidiagonally, and top left element zero.

The programs for A233020, the canonical program `A233020.P9075068120088020693` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233020 has offset 1).

The definition of A233020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233020.P1150201263364954477

`ogf(3/(1-5x-2x^2))`
-/

namespace A233020.P1150201263364954477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3] [1, -5, -2] n

end

end A233020.P1150201263364954477

namespace A233020

/-- `ogf(3/(1-5x-2x^2))` -/
def P1150201263364954477.Spec : Prop :=
  ∀ n, P1150201263364954477.a n = A233020 (n + 1)

end A233020

/-! ## A233020.P4914371495498903280

`5*a(n-1)+2*a(n-2)` with `a(0)=3, a(1)=15`
-/

namespace A233020.P4914371495498903280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 15] fun n a =>
  5 * a (n - 1) + 2 * a (n - 2)

end

end A233020.P4914371495498903280

namespace A233020

/-- `5*a(n-1)+2*a(n-2)` -/
def P4914371495498903280.Spec : Prop :=
  ∀ n, (P4914371495498903280.a n : ℤ) = A233020 (n + 1)

end A233020

/-! ## A233020.P9075068120088020693

`3*A015535(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A233020

/-- `3*A015535(n+1)` -/
def P9075068120088020693.Spec : Prop :=
  ∀ n, P9075068120088020693.a n = A233020 (n + 1)

theorem P9075068120088020693.correct : P9075068120088020693.Spec := by
  intro n
  simp only [A233020, Nat.add_sub_cancel]

end A233020

/-! ## A233020.P15311570741004985289

`A100638(4*n+3)`
-/

namespace A233020.P15311570741004985289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100638 (4 * n + 3)

end

end A233020.P15311570741004985289

namespace A233020

/-- `A100638(4*n+3)` -/
def P15311570741004985289.Spec : Prop :=
  ∀ n, P15311570741004985289.a n = A233020 (n + 1)

end A233020

/-! ## A233020.P11045329466015942988

`∑[3*Δ[A015535(n)]]`
-/

namespace A233020.P11045329466015942988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015535 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233020.P11045329466015942988

namespace A233020

/-- `∑[3*Δ[A015535(n)]]` -/
def P11045329466015942988.Spec : Prop :=
  ∀ n, P11045329466015942988.a n = A233020 (n + 1)

end A233020

/-! ## A233020.P5968054992258703398

`A124610(n)+2*A124610(n+1)`
-/

namespace A233020.P5968054992258703398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124610 n + 2 * A124610 (n + 1)

end

end A233020.P5968054992258703398

namespace A233020

/-- `A124610(n)+2*A124610(n+1)` -/
def P5968054992258703398.Spec : Prop :=
  ∀ n, P5968054992258703398.a n = A233020 (n + 1)

end A233020

/-! ## A233020.P8640000528556069673

`sqrt(3/11)*(((5+sqrt(33))/2)^(n+1)-((5-sqrt(33))/2)^(n+1))`
-/

namespace A233020.P8640000528556069673
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((3 : ℚ) / 11 : ℝ) * (((5 + Real.sqrt (33 : ℝ)) / 2) ^ (n + 1) - ((5 - Real.sqrt (33 : ℝ)) / 2) ^ (n + 1))

end

end A233020.P8640000528556069673

namespace A233020

/-- `sqrt(3/11)*(((5+sqrt(33))/2)^(n+1)-((5-sqrt(33))/2)^(n+1))` -/
def P8640000528556069673.Spec : Prop :=
  ∀ n, P8640000528556069673.a n = (A233020 (n + 1) : ℝ)

end A233020

/-! ## A233020.P18213109240474066671

`Δ[A124610(n+1)/2]`
-/

namespace A233020.P18213109240474066671
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124610 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A233020.P18213109240474066671

namespace A233020

/-- `Δ[A124610(n+1)/2]` -/
def P18213109240474066671.Spec : Prop :=
  ∀ n, P18213109240474066671.a n = (A233020 (n + 1) : ℚ)

end A233020

/-! ## A233020.P14300207201497165786

`Δ[A015535(n+1)]-A124610(n+1)`
-/

namespace A233020.P14300207201497165786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A124610 (n + 1)

end

end A233020.P14300207201497165786

namespace A233020

/-- `Δ[A015535(n+1)]-A124610(n+1)` -/
def P14300207201497165786.Spec : Prop :=
  ∀ n, P14300207201497165786.a n = A233020 (n + 1)

end A233020

/-! ## A233020.P110201167105769628

`A327765(n+1)-A124610(n+1)-A124610(n+1)`
-/

namespace A233020.P110201167105769628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327765 (n + 1) - A124610 (n + 1) - A124610 (n + 1)

end

end A233020.P110201167105769628

namespace A233020

/-- `A327765(n+1)-A124610(n+1)-A124610(n+1)` -/
def P110201167105769628.Spec : Prop :=
  ∀ n, P110201167105769628.a n = A233020 (n + 1)

end A233020

/-!
# A233021: Number of n X 3 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, vertically, diagonally or antidiagonally, and top left element zero.

The programs for A233021, there is no canonical definition to state claims against.
-/

/-! ## A233021.P527567286629034909

`A233026(∑[n+2]+4)`
-/

namespace A233021.P527567286629034909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233026 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233021.P527567286629034909

/-! ## A233021.P8998453194946568511

`lcm(3, A233026(A167614(n+1)))`
-/

namespace A233021.P8998453194946568511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A233026 (A167614 (n + 1)).toNat)

end

end A233021.P8998453194946568511

/-! ## A233021.P11023734107590251964

`A152847(n)*A233026(A167614(n+1))`
-/

namespace A233021.P11023734107590251964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152847 n * A233026 (A167614 (n + 1)).toNat

end

end A233021.P11023734107590251964

/-! ## A233021.P11094894321957978926

`or(A000035(n), A233026(A167614(n+1)))`
-/

namespace A233021.P11094894321957978926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A233026 (A167614 (n + 1)).toNat)

end

end A233021.P11094894321957978926

/-! ## A233021.P5034748360747108611

`or(A058348(n), A233026(A167614(n+1)))`
-/

namespace A233021.P5034748360747108611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A058348 n) (A233026 (A167614 (n + 1)).toNat)

end

end A233021.P5034748360747108611

/-!
# A233022: Number of nX4 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, vertically, diagonally or antidiagonally, and top left element zero.

The programs for A233022, there is no canonical definition to state claims against.
-/

/-! ## A233022.P7340381950731767914

`A233026(A374004(n+1))`
-/

namespace A233022.P7340381950731767914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233026 (A374004 (n + 1)).toNat

end

end A233022.P7340381950731767914

/-! ## A233022.P15412709098039519152

`A233026(A141214(n)+7)`
-/

namespace A233022.P15412709098039519152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233026 (A141214 n + 7).toNat

end

end A233022.P15412709098039519152

/-! ## A233022.P15686392784837491857

`A233026(A052905(n)+9)`
-/

namespace A233022.P15686392784837491857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233026 (A052905 n + 9).toNat

end

end A233022.P15686392784837491857

/-! ## A233022.P14505212009039758343

`A233026(A055999(n)+10)`
-/

namespace A233022.P14505212009039758343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233026 (A055999 n + 10).toNat

end

end A233022.P14505212009039758343

/-! ## A233022.P6404287463894146396

`A233026(A167614(n+2)+1)`
-/

namespace A233022.P6404287463894146396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233026 (A167614 (n + 2) + 1).toNat

end

end A233022.P6404287463894146396

/-!
# A233023: Number of nX5 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, vertically, diagonally or antidiagonally, and top left element zero.

The programs for A233023, there is no canonical definition to state claims against.
-/

/-! ## A233023.P16239149523362520040

`A233026(A374005(n+1))`
-/

namespace A233023.P16239149523362520040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233026 (A374005 (n + 1)).toNat

end

end A233023.P16239149523362520040

/-! ## A233023.P18165330763007927311

`A233026(A167499(n+3))`
-/

namespace A233023.P18165330763007927311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233026 (A167499 (n + 3)).toNat

end

end A233023.P18165330763007927311

/-! ## A233023.P11905724900613242245

`A233026(A155212(n)+13)`
-/

namespace A233023.P11905724900613242245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233026 (A155212 n + 13).toNat

end

end A233023.P11905724900613242245

/-! ## A233023.P3798638580452718360

`A233026(A056000(n)+15)`
-/

namespace A233023.P3798638580452718360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233026 (A056000 n + 15).toNat

end

end A233023.P3798638580452718360

/-! ## A233023.P18138151192683402511

`A233026(A000217(n+4)+5)`
-/

namespace A233023.P18138151192683402511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233026 (A000217 (n + 4) + 5).toNat

end

end A233023.P18138151192683402511

/-!
# A233024: Number of nX6 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, vertically, diagonally or antidiagonally, and top left element zero.

The programs for A233024, there is no canonical definition to state claims against.
-/

/-! ## A233024.P2999999552530784082

`A233026(∑[n+5]+16)`
-/

namespace A233024.P2999999552530784082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233026 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A233024.P2999999552530784082

/-! ## A233024.P7356994266632660016

`or(1, A233026(A052905(n+3)))`
-/

namespace A233024.P7356994266632660016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A233026 (A052905 (n + 3)).toNat)

end

end A233024.P7356994266632660016

/-! ## A233024.P7329107216269511528

`or(1, A233026(A046691(n+4)-1))`
-/

namespace A233024.P7329107216269511528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A233026 (A046691 (n + 4) - 1).toNat)

end

end A233024.P7329107216269511528

/-! ## A233024.P9309996567649311187

`A233026(A052905(n+3))+A020761(n+1)`
-/

namespace A233024.P9309996567649311187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233026 (A052905 (n + 3)).toNat + A020761 (n + 1)

end

end A233024.P9309996567649311187

/-! ## A233024.P17152497946211923610

`A233026(A052905(n+3))+A138364(2*n)`
-/

namespace A233024.P17152497946211923610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233026 (A052905 (n + 3)).toNat + A138364 (2 * n)

end

end A233024.P17152497946211923610

/-!
# A233025: Number of nX7 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, vertically, diagonally or antidiagonally, and top left element zero.

The programs for A233025, there is no canonical definition to state claims against.
-/

/-! ## A233025.P1985313352087453702

`A233026(A374008(n+1))`
-/

namespace A233025.P1985313352087453702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233026 (A374008 (n + 1)).toNat

end

end A233025.P1985313352087453702

/-! ## A233025.P13939806511871422306

`A233026(A056119(n)+28)`
-/

namespace A233025.P13939806511871422306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233026 (A056119 n + 28).toNat

end

end A233025.P13939806511871422306

/-! ## A233025.P9326713323766637338

`A233026(eq[8, A131818(n+1)])`
-/

namespace A233025.P9326713323766637338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233025.P9326713323766637338

/-! ## A233025.P16423957454190122100

`A233026(A055999(n+4))`
-/

namespace A233025.P16423957454190122100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233026 (A055999 (n + 4)).toNat

end

end A233025.P16423957454190122100

/-! ## A233025.P13406905669747074475

`A233026(eq[4, A219347(n)])`
-/

namespace A233025.P13406905669747074475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233025.P13406905669747074475

/-!
# A233026: T(n,k)=Number of nXk 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, vertically, diagonally or antidiagonally, and top left element zero.

The programs for A233026, there is no canonical definition to state claims against.
-/

/-! ## A233026.P16857522227262846251

`(A269194(n+1)-A269186(n+1))/4`
-/

namespace A233026.P16857522227262846251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269194 (n + 1) - A269186 (n + 1) : ℚ) / 4

end

end A233026.P16857522227262846251

/-! ## A233026.P16872102821637744271

`A000265(A269194(n+1)-A269186(n+1))`
-/

namespace A233026.P16872102821637744271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A269194 (n + 1) - A269186 (n + 1)).toNat

end

end A233026.P16872102821637744271

/-! ## A233026.P3366816615531184469

`A171435(A269194(n+1)-A269186(n+1))`
-/

namespace A233026.P3366816615531184469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A269194 (n + 1) - A269186 (n + 1)).toNat

end

end A233026.P3366816615531184469

/-! ## A233026.P1500902281315553024

`A060819(A269194(n+1)-A269186(n+1))`
-/

namespace A233026.P1500902281315553024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A269194 (n + 1) - A269186 (n + 1)).toNat

end

end A233026.P1500902281315553024

/-! ## A233026.P18270798935482125716

`A065883(A269194(n+1)-A269186(n+1))`
-/

namespace A233026.P18270798935482125716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (A269194 (n + 1) - A269186 (n + 1)).toNat

end

end A233026.P18270798935482125716

/-!
# A233027: a(n) is number of nonnegative integers not exceeding n which have no decimal digits occurring in n and respectively prime to n.

The programs for A233027, there is no canonical definition to state claims against.
-/

/-! ## A233027.P5591183322959233736

`A053737(and(A112851(n), A216688(n)))`
-/

namespace A233027.P5591183322959233736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (Int.land (A112851 n) (A216688 n)).toNat

end

end A233027.P5591183322959233736

/-! ## A233027.P9418187672922430412

`A001055(n+1)*A001221(A148273(n))`
-/

namespace A233027.P9418187672922430412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) * A001221 (A148273 n).toNat

end

end A233027.P9418187672922430412

/-! ## A233027.P2406375474578475016

`A001221(A148273(n))*A326334(n+1)`
-/

namespace A233027.P2406375474578475016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A148273 n).toNat * A326334 (n + 1)

end

end A233027.P2406375474578475016

/-! ## A233027.P8658746162014108545

`A214662(n+2)%A006530(A163087(n))`
-/

namespace A233027.P8658746162014108545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214662 (n + 2)) (A006530 (A163087 n).toNat)

end

end A233027.P8658746162014108545

/-! ## A233027.P6638412870676589467

`A001221(A000105(n+1))*A304465(n+1)`
-/

namespace A233027.P6638412870676589467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000105 (n + 1)).toNat * A304465 (n + 1)

end

end A233027.P6638412870676589467

/-!
# A233028: Number of (n+1)X(1+1) 0..3 arrays with row and column sums nondecreasing, and no adjacent elements equal.

The programs for A233028, there is no canonical definition to state claims against.
-/

/-! ## A233028.P5010800753405733185

`A233031(∑[n]+1)`
-/

namespace A233028.P5010800753405733185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233031 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233028.P5010800753405733185

/-! ## A233028.P4027926299081704181

`record[A233031(A114091(n+1))]`
-/

namespace A233028.P4027926299081704181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233031 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233028.P4027926299081704181

/-! ## A233028.P10180817079747529169

`A233031(A000124(n))+char[12]`
-/

namespace A233028.P10180817079747529169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233031 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A233028.P10180817079747529169

/-! ## A233028.P17035945256295874196

`record[A010054(n)*A233031(n+1)]`
-/

namespace A233028.P17035945256295874196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233028.P17035945256295874196

/-! ## A233028.P6923953008010506711

`record[A233031(n+1)/A009963(n)]`
-/

namespace A233028.P6923953008010506711
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233031 (n + 1) : ℚ) / (A009963 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233028.P6923953008010506711

/-!
# A233029: Number of (n+1)X(2+1) 0..3 arrays with row and column sums nondecreasing, and no adjacent elements equal.

The programs for A233029, there is no canonical definition to state claims against.
-/

/-! ## A233029.P10627451153485641453

`A233031(∑[n+1]+2)`
-/

namespace A233029.P10627451153485641453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233031 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233029.P10627451153485641453

/-! ## A233029.P2232275722466849935

`record[A233031(A114091(n+1)+1)]`
-/

namespace A233029.P2232275722466849935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233031 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233029.P2232275722466849935

/-! ## A233029.P8713200220608822960

`record[A010054(n)*A233031(n+2)]`
-/

namespace A233029.P8713200220608822960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233031 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233029.P8713200220608822960

/-! ## A233029.P9097850282268430216

`record[A233031(A133263(∏{e}[n+1, #]))]`
-/

namespace A233029.P9097850282268430216
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233031 (A133263 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233029.P9097850282268430216

/-! ## A233029.P10228315195203665578

`record[A233031(A133263(val(n+1, 2)+1))]`
-/

namespace A233029.P10228315195203665578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233031 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233029.P10228315195203665578

/-!
# A233030: Number of (n+1)X(3+1) 0..3 arrays with row and column sums nondecreasing, and no adjacent elements equal.

The programs for A233030, there is no canonical definition to state claims against.
-/

/-! ## A233030.P11379538886473865681

`A233031(∑[n+2]+4)`
-/

namespace A233030.P11379538886473865681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233031 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233030.P11379538886473865681

/-! ## A233030.P4179571824622965318

`lcm((-1)^n, A233031(A167614(n+1)))`
-/

namespace A233030.P4179571824622965318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A233031 (A167614 (n + 1)).toNat)

end

end A233030.P4179571824622965318

/-! ## A233030.P10288810014773793815

`A233031(A167614(n+1))+A025443(n)`
-/

namespace A233030.P10288810014773793815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233031 (A167614 (n + 1)).toNat + A025443 n

end

end A233030.P10288810014773793815

/-! ## A233030.P12648932149028339347

`A233031(A167614(n+1))+A033909(n)`
-/

namespace A233030.P12648932149028339347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233031 (A167614 (n + 1)).toNat + A033909 n

end

end A233030.P12648932149028339347

/-!
# A233032: Numbers k such that the equation x + (sum of digits of x) = 10^k has two solutions.

The programs for A233032, there is no canonical definition to state claims against.
-/

/-! ## A233032.P18224646083735967129

`∑[A317244((n+1)*(∏{digits}[n+1, floor(#/10)+10]-(n+1)))]+1`
-/

namespace A233032.P18224646083735967129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317244 ((n + 1 : ℤ) * (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 10⌋ + 10).prod - (n + 1 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A233032.P18224646083735967129

/-! ## A233032.P11838410001724575940

`A050140(eq[3, A194522(n+1)])`
-/

namespace A233032.P11838410001724575940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050140 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233032.P11838410001724575940

/-! ## A233032.P5113299287640178064

`∑[A138751(A005135(3*n)+6)]+1`
-/

namespace A233032.P5113299287640178064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138751 (A005135 (3 * n) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A233032.P5113299287640178064

/-! ## A233032.P5887135342468271940

`∑[A254046(A294500(∏{p}[n+1, #]))+10]`
-/

namespace A233032.P5887135342468271940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254046 (A294500 (∏ p ∈ Nat.primeFactors (f2 n), p)).toNat + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233032.P5887135342468271940

/-! ## A233032.P16384230822955381122

`∑[A091009(A323655(2*n)+1)+12]-n`
-/

namespace A233032.P16384230822955381122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091009 (A323655 (2 * n) + 1).toNat + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A233032.P16384230822955381122

/-!
# A233034: Expansion of (f(-x^2) / phi(-x^3))^2 in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A233034, there is no canonical definition to state claims against.
-/

/-! ## A233034.P3622911396481051026

`A092848(2*n)`
-/

namespace A233034.P3622911396481051026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092848 (2 * n)

end

end A233034.P3622911396481051026

/-! ## A233034.P10299822928156473444

`A128111(2*n)`
-/

namespace A233034.P10299822928156473444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128111 (2 * n)

end

end A233034.P10299822928156473444

/-! ## A233034.P6144004525865087974

`A182057(4*n)`
-/

namespace A233034.P6144004525865087974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182057 (4 * n)

end

end A233034.P6144004525865087974

/-! ## A233034.P1652108103220532886

`A062242(4*n+1)`
-/

namespace A233034.P1652108103220532886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062242 (4 * n + 1)

end

end A233034.P1652108103220532886

/-! ## A233034.P6377866681497177774

`A182056(4*n+1)`
-/

namespace A233034.P6377866681497177774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182056 (4 * n + 1)

end

end A233034.P6377866681497177774

/-! ## A233034.P14867816673013322527

`-A062244(4*n+1)`
-/

namespace A233034.P14867816673013322527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A062244 (4 * n + 1)

end

end A233034.P14867816673013322527

/-! ## A233034.P13200294317034723937

`A139032(6*n+1)`
-/

namespace A233034.P13200294317034723937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139032 (6 * n + 1)

end

end A233034.P13200294317034723937

/-! ## A233034.P13523479472931664920

`A164615(6*n+1)`
-/

namespace A233034.P13523479472931664920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164615 (6 * n + 1)

end

end A233034.P13523479472931664920

/-! ## A233034.P2610339178109402182

`A128143(12*n+2)`
-/

namespace A233034.P2610339178109402182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128143 (12 * n + 2)

end

end A233034.P2610339178109402182

/-! ## A233034.P15938037348631470569

`A128145(12*n+2)`
-/

namespace A233034.P15938037348631470569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128145 (12 * n + 2)

end

end A233034.P15938037348631470569

/-! ## A233034.P14503175292890194986

`A182036(3*n+1)`
-/

namespace A233034.P14503175292890194986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182036 (3 * n + 1)

end

end A233034.P14503175292890194986

/-!
# A233035: a(n) = n * floor(n/4).

The programs for A233035, the canonical program `A233035.P14288624045752954315` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233035 has offset 1).

The definition of A233035 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*floor((n+1)/4)` (program `A233035.P14288624045752954315`, by `A233035.P14288624045752954315.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A233035.P14288624045752954315

`(n+1)*floor((n+1)/4)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A233035

/-- `(n+1)*floor((n+1)/4)` -/
def P14288624045752954315.Spec : Prop :=
  ∀ n, P14288624045752954315.a n = A233035 (n + 1)

theorem P14288624045752954315.correct : P14288624045752954315.Spec := by
  intro n
  simp only [A233035, Nat.add_sub_cancel]

end A233035

/-! ## A233035.P17278961593701822414

`(n+1)*and(n+1, -4)/4`
-/

namespace A233035.P17278961593701822414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * Int.land (n + 1 : ℤ) (-4) : ℚ) / 4

end

end A233035.P17278961593701822414

namespace A233035

/-- `(n+1)*and(n+1, -4)/4` -/
def P17278961593701822414.Spec : Prop :=
  ∀ n, P17278961593701822414.a n = (A233035 (n + 1) : ℚ)

end A233035

/-! ## A233035.P14885680400619268748

`(n+1)*∑[and(2, n^3)]/2`
-/

namespace A233035.P14885680400619268748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n ^ 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / 2

end

end A233035.P14885680400619268748

namespace A233035

/-- `(n+1)*∑[and(2, n^3)]/2` -/
def P14885680400619268748.Spec : Prop :=
  ∀ n, P14885680400619268748.a n = (A233035 (n + 1) : ℚ)

end A233035

/-! ## A233035.P8603500187695102919

`floor(floor((n+1)/4)/acot(n+1))`
-/

namespace A233035.P8603500187695102919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n + 1 : ℚ) / 4⌋ : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ)⌋

end

end A233035.P8603500187695102919

namespace A233035

/-- `floor(floor((n+1)/4)/acot(n+1))` -/
def P8603500187695102919.Spec : Prop :=
  ∀ n, P8603500187695102919.a n = A233035 (n + 1)

end A233035

/-! ## A233035.P3709312799583133071

`(n+1)*(or(3, n+1)-3)/4`
-/

namespace A233035.P3709312799583133071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((Nat.lor 3 (n + 1) : ℤ) - 3) : ℚ) / 4

end

end A233035.P3709312799583133071

namespace A233035

/-- `(n+1)*(or(3, n+1)-3)/4` -/
def P3709312799583133071.Spec : Prop :=
  ∀ n, P3709312799583133071.a n = (A233035 (n + 1) : ℚ)

end A233035

/-! ## A233035.P10478856545570943563

`lcm(n+1, (n+1)*round((n-1)/4))`
-/

namespace A233035.P10478856545570943563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) ((n + 1 : ℤ) * SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 4))

end

end A233035.P10478856545570943563

namespace A233035

/-- `lcm(n+1, (n+1)*round((n-1)/4))` -/
def P10478856545570943563.Spec : Prop :=
  ∀ n, (P10478856545570943563.a n : ℤ) = A233035 (n + 1)

end A233035

/-! ## A233035.P5525429038482301590

`floor((n+1)*∑[a(n-4)²])` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A233035.P5525429038482301590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f1 =>
  f1 (n - 4) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233035.P5525429038482301590

namespace A233035

/-- `floor((n+1)*∑[a(n-4)²])` -/
def P5525429038482301590.Spec : Prop :=
  ∀ n, (P5525429038482301590.a n : ℤ) = A233035 (n + 1)

end A233035

/-! ## A233035.P7536081135685575500

`(n+1)*A122461(n+1)/2`
-/

namespace A233035.P7536081135685575500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A122461 (n + 1) : ℚ) / 2

end

end A233035.P7536081135685575500

namespace A233035

/-- `(n+1)*A122461(n+1)/2` -/
def P7536081135685575500.Spec : Prop :=
  ∀ n, P7536081135685575500.a n = (A233035 (n + 1) : ℚ)

theorem P7536081135685575500.correct : P7536081135685575500.Spec := by
  intro n
  simp only [A233035, Nat.add_sub_cancel, A233035.P7536081135685575500.a, A233035.P14288624045752954315.a, A122461, A122461.P3987586547876267003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A233035

/-! ## A233035.P2034731590605631339

`∑[Δ[n*(A002265(n)+1)]-1]`
-/

namespace A233035.P2034731590605631339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002265 n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233035.P2034731590605631339

namespace A233035

/-- `∑[Δ[n*(A002265(n)+1)]-1]` -/
def P2034731590605631339.Spec : Prop :=
  ∀ n, P2034731590605631339.a n = A233035 (n + 1)

end A233035

/-! ## A233035.P5198209505202190021

`(n+1)*(A002265(n+1)+1)-n-1`
-/

namespace A233035.P5198209505202190021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A002265 (n + 1) + 1) - (n : ℤ) - 1

end

end A233035.P5198209505202190021

namespace A233035

/-- `(n+1)*(A002265(n+1)+1)-n-1` -/
def P5198209505202190021.Spec : Prop :=
  ∀ n, P5198209505202190021.a n = A233035 (n + 1)

theorem P5198209505202190021.correct : P5198209505202190021.Spec := by
  intro n
  simp only [A233035, Nat.add_sub_cancel, A233035.P5198209505202190021.a, A233035.P14288624045752954315.a, A002265, A002265.P2157561802369677908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A233035

/-! ## A233035.P2366939878064638896

`(n+1)*A002265(n+5)-(n+1)`
-/

namespace A233035.P2366939878064638896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002265 (n + 5) - (n + 1 : ℤ)

end

end A233035.P2366939878064638896

namespace A233035

/-- `(n+1)*A002265(n+5)-(n+1)` -/
def P2366939878064638896.Spec : Prop :=
  ∀ n, P2366939878064638896.a n = A233035 (n + 1)

end A233035

/-! ## A233035.P17013718755943596096

`A118729(A047425(n+2))`
-/

namespace A233035.P17013718755943596096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118729 (A047425 (n + 2)).toNat

end

end A233035.P17013718755943596096

namespace A233035

/-- `A118729(A047425(n+2))` -/
def P17013718755943596096.Spec : Prop :=
  ∀ n, P17013718755943596096.a n = A233035 (n + 1)

end A233035

/-! ## A233035.P9949231908490165864

`A008736(A103127(n+1))`
-/

namespace A233035.P9949231908490165864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008736 (A103127 (n + 1)).toNat

end

end A233035.P9949231908490165864

namespace A233035

/-- `A008736(A103127(n+1))` -/
def P9949231908490165864.Spec : Prop :=
  ∀ n, P9949231908490165864.a n = A233035 (n + 1)

end A233035

/-! ## A233035.P15445651423643128190

`A029578(A002265(n+1)*2*(n+1))`
-/

namespace A233035.P15445651423643128190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A002265 (n + 1) * (2 * (n + 1) : ℤ)).toNat

end

end A233035.P15445651423643128190

namespace A233035

/-- `A029578(A002265(n+1)*2*(n+1))` -/
def P15445651423643128190.Spec : Prop :=
  ∀ n, P15445651423643128190.a n = A233035 (n + 1)

end A233035

/-! ## A233035.P1285835242528101483

`A095834(A082643(n+1))`
-/

namespace A233035.P1285835242528101483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095834 (A082643 (n + 1)).toNat

end

end A233035.P1285835242528101483

namespace A233035

/-- `A095834(A082643(n+1))` -/
def P1285835242528101483.Spec : Prop :=
  ∀ n, P1285835242528101483.a n = A233035 (n + 1)

end A233035

/-!
# A233036: The maximum number of I-tetrominoes that can be packed into an n X n array of squares when rotation is allowed.

The programs for A233036, the canonical program `A233036.P569561181648300758` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233036 has offset 1).

The definition of A233036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233036.P569561181648300758

`and(A182531(n+1)+1, A182531(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A233036

/-- `and(A182531(n+1)+1, A182531(n+1))` -/
def P569561181648300758.Spec : Prop :=
  ∀ n, P569561181648300758.a n = A233036 (n + 1)

theorem P569561181648300758.correct : P569561181648300758.Spec := by
  intro n
  simp only [A233036, Nat.add_sub_cancel]

end A233036

/-! ## A233036.P3002811496602085582

`A182568((n+3)%(2*n+1))`
-/

namespace A233036.P3002811496602085582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182568 ((n + 3) % (2 * n + 1))

end

end A233036.P3002811496602085582

namespace A233036

/-- `A182568((n+3)%(2*n+1))` -/
def P3002811496602085582.Spec : Prop :=
  ∀ n, P3002811496602085582.a n = A233036 (n + 1)

end A233036

/-! ## A233036.P11762459506342942075

`A182568(A326178(n)+2)`
-/

namespace A233036.P11762459506342942075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182568 (A326178 n + 2).toNat

end

end A233036.P11762459506342942075

namespace A233036

/-- `A182568(A326178(n)+2)` -/
def P11762459506342942075.Spec : Prop :=
  ∀ n, P11762459506342942075.a n = A233036 (n + 1)

end A233036

/-! ## A233036.P1269631444960066292

`A182568(floor(sqrt(A104675(n))))`
-/

namespace A233036.P1269631444960066292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182568 (Int.sqrt (A104675 n)).toNat

end

end A233036.P1269631444960066292

namespace A233036

/-- `A182568(floor(sqrt(A104675(n))))` -/
def P1269631444960066292.Spec : Prop :=
  ∀ n, P1269631444960066292.a n = A233036 (n + 1)

end A233036

/-! ## A233036.P1307855498014248486

`A182568(A008486(n)-A004274(n))`
-/

namespace A233036.P1307855498014248486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182568 (A008486 n - A004274 n).toNat

end

end A233036.P1307855498014248486

namespace A233036

/-- `A182568(A008486(n)-A004274(n))` -/
def P1307855498014248486.Spec : Prop :=
  ∀ n, P1307855498014248486.a n = A233036 (n + 1)

end A233036

/-! ## A233036.P11422820165557528090

`A008819(A005408(n))%A026007(n)`
-/

namespace A233036.P11422820165557528090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008819 (A005408 n).toNat) (A026007 n)

end

end A233036.P11422820165557528090

namespace A233036

/-- `A008819(A005408(n))%A026007(n)` -/
def P11422820165557528090.Spec : Prop :=
  ∀ n, P11422820165557528090.a n = A233036 (n + 1)

end A233036

/-! ## A233036.P11292953554401513614

`A182531(n+1)-A135481(A182531(n+1))`
-/

namespace A233036.P11292953554401513614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182531 (n + 1) - A135481 (A182531 (n + 1)).toNat

end

end A233036.P11292953554401513614

namespace A233036

/-- `A182531(n+1)-A135481(A182531(n+1))` -/
def P11292953554401513614.Spec : Prop :=
  ∀ n, P11292953554401513614.a n = A233036 (n + 1)

end A233036

/-! ## A233036.P3866266144583681245

`A073759(n+1)+A073759(A217123(n+1)-A073759(n+1))`
-/

namespace A233036.P3866266144583681245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073759 (n + 1) + A073759 (A217123 (n + 1) - A073759 (n + 1)).toNat

end

end A233036.P3866266144583681245

namespace A233036

/-- `A073759(n+1)+A073759(A217123(n+1)-A073759(n+1))` -/
def P3866266144583681245.Spec : Prop :=
  ∀ n, P3866266144583681245.a n = A233036 (n + 1)

end A233036

/-! ## A233036.P17910202669700986761

`filter[A182568(n+2), A267621(#)]`
-/

namespace A233036.P17910202669700986761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182568 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267621 (f1 j).toNat = 1) n)

end

end A233036.P17910202669700986761

namespace A233036

/-- `filter[A182568(n+2), A267621(#)]` -/
def P17910202669700986761.Spec : Prop :=
  ∀ n, P17910202669700986761.a n = A233036 (n + 1)

end A233036

/-! ## A233036.P11860505213918831635

`filter[A182568(n+2), A267919(#)]`
-/

namespace A233036.P11860505213918831635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182568 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267919 (f1 j).toNat = 1) n)

end

end A233036.P11860505213918831635

namespace A233036

/-- `filter[A182568(n+2), A267919(#)]` -/
def P11860505213918831635.Spec : Prop :=
  ∀ n, P11860505213918831635.a n = A233036 (n + 1)

end A233036

/-! ## A233036.P913093285921633332

`A073759(A217123(n+1))`
-/

namespace A233036.P913093285921633332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073759 (A217123 (n + 1)).toNat

end

end A233036.P913093285921633332

namespace A233036

/-- `A073759(A217123(n+1))` -/
def P913093285921633332.Spec : Prop :=
  ∀ n, P913093285921633332.a n = A233036 (n + 1)

end A233036

/-! ## A233036.P2607318312683105166

`A073759(∑[A092533(n+2)])`
-/

namespace A233036.P2607318312683105166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073759 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A233036.P2607318312683105166

namespace A233036

/-- `A073759(∑[A092533(n+2)])` -/
def P2607318312683105166.Spec : Prop :=
  ∀ n, P2607318312683105166.a n = A233036 (n + 1)

end A233036

/-! ## A233036.P10429359737291182987

`filter[A182568(n+2), A267043(#)]`
-/

namespace A233036.P10429359737291182987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182568 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A233036.P10429359737291182987

namespace A233036

/-- `filter[A182568(n+2), A267043(#)]` -/
def P10429359737291182987.Spec : Prop :=
  ∀ n, P10429359737291182987.a n = A233036 (n + 1)

end A233036

/-! ## A233036.P16929653484411825709

`A129760(A181385(n)+A008619(n))`
-/

namespace A233036.P16929653484411825709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A181385 n + A008619 n).toNat

end

end A233036.P16929653484411825709

namespace A233036

/-- `A129760(A181385(n)+A008619(n))` -/
def P16929653484411825709.Spec : Prop :=
  ∀ n, P16929653484411825709.a n = A233036 (n + 1)

end A233036

/-! ## A233036.P4141879204298359328

`A182568(n+3)%A000041(A182568(n+3))`
-/

namespace A233036.P4141879204298359328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182568 (n + 3)) (A000041 (A182568 (n + 3)).toNat)

end

end A233036.P4141879204298359328

namespace A233036

/-- `A182568(n+3)%A000041(A182568(n+3))` -/
def P4141879204298359328.Spec : Prop :=
  ∀ n, P4141879204298359328.a n = A233036 (n + 1)

end A233036

/-! ## A233036.P4021227369771043663

`A182568(n+3)%∑[A182530(n)]`
-/

namespace A233036.P4021227369771043663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182568 (n + 3)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233036.P4021227369771043663

namespace A233036

/-- `A182568(n+3)%∑[A182530(n)]` -/
def P4021227369771043663.Spec : Prop :=
  ∀ n, P4021227369771043663.a n = A233036 (n + 1)

end A233036

/-! ## A233036.P6725336972733466001

`A182568(A002024(A052905(n)))`
-/

namespace A233036.P6725336972733466001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182568 (A002024 (A052905 n).toNat).toNat

end

end A233036.P6725336972733466001

namespace A233036

/-- `A182568(A002024(A052905(n)))` -/
def P6725336972733466001.Spec : Prop :=
  ∀ n, P6725336972733466001.a n = A233036 (n + 1)

end A233036

/-!
# A233037: Expansion of 3 * q^(1/3) * phi(q) * psi(q^6) / c(q) in powers of x where phi(), psi() are Ramanujan theta functions and c() is a cubic AGM theta function.

The programs for A233037, there is no canonical definition to state claims against.
-/

/-! ## A233037.P13496505628356109984

`A132179(Δ[n²])`
-/

namespace A233037.P13496505628356109984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132179 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A233037.P13496505628356109984

/-! ## A233037.P6476665751175528922

`-A254525(2*n+1)`
-/

namespace A233037.P6476665751175528922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A254525 (2 * n + 1)

end

end A233037.P6476665751175528922

/-! ## A233037.P46020798828405502

`1-(A254525(2*n+1)+A033999(2*n))`
-/

namespace A233037.P46020798828405502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A254525 (2 * n + 1) + A033999 (2 * n))

end

end A233037.P46020798828405502

/-! ## A233037.P15735003079181798077

`A033999(2*n+1)*A254525(2*n+1)`
-/

namespace A233037.P15735003079181798077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A254525 (2 * n + 1)

end

end A233037.P15735003079181798077

/-! ## A233037.P1925774569631746309

`A062242(4*n+2)`
-/

namespace A233037.P1925774569631746309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062242 (4 * n + 2)

end

end A233037.P1925774569631746309

/-! ## A233037.P5891997350683791625

`A062244(4*n+2)`
-/

namespace A233037.P5891997350683791625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062244 (4 * n + 2)

end

end A233037.P5891997350683791625

/-! ## A233037.P953753933610730977

`A132301(4*n+2)`
-/

namespace A233037.P953753933610730977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132301 (4 * n + 2)

end

end A233037.P953753933610730977

/-! ## A233037.P6938990330325078022

`A263526(4*n+2)`
-/

namespace A233037.P6938990330325078022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263526 (4 * n + 2)

end

end A233037.P6938990330325078022

/-! ## A233037.P7523296802556865551

`A182057(4*(n+1)-3)`
-/

namespace A233037.P7523296802556865551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182057 (4 * (n + 1) - 3)

end

end A233037.P7523296802556865551

/-! ## A233037.P12406259881191817983

`A182036(6*n+3)`
-/

namespace A233037.P12406259881191817983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182036 (6 * n + 3)

end

end A233037.P12406259881191817983

/-! ## A233037.P11057359380672206261

`A132302(2*n)-(A254525(2*n+1)+A254346(2*n))`
-/

namespace A233037.P11057359380672206261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132302 (2 * n) - (A254525 (2 * n + 1) + A254346 (2 * n))

end

end A233037.P11057359380672206261

/-! ## A233037.P1294285492534293006

`A132302(2*n+1)/A254346(2*n+1)*A254525(2*n+1)`
-/

namespace A233037.P1294285492534293006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132302 (2 * n + 1) : ℚ) / (A254346 (2 * n + 1) : ℚ) * (A254525 (2 * n + 1) : ℚ)

end

end A233037.P1294285492534293006

/-!
# A233038: Primes p in prime septuplets (p, p+2, p+8, p+12, p+14, p+18, p+20) at the end of the maximal gaps in A201251.

The programs for A233038, there is no canonical definition to state claims against.
-/

/-! ## A233038.P16574377343420853406

`A201252(n+1)+A201251(n+1)`
-/

namespace A233038.P16574377343420853406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201252 (n + 1) + A201251 (n + 1)

end

end A233038.P16574377343420853406

/-! ## A233038.P3538157442478373510

`A201252(n+1)+record[Δ[A022010(n+1)]]`
-/

namespace A233038.P3538157442478373510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201252 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233038.P3538157442478373510

/-! ## A233038.P9008188443242321353

`A201252(n+1)+record[A022010(n+2)-A022010(n+1)]`
-/

namespace A233038.P9008188443242321353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022010 (n + 2) - A022010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201252 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233038.P9008188443242321353

/-!
# A233039: Larger member of primitive friendly pairs ordered by smallest maximal element.

The programs for A233039, there is no canonical definition to state claims against.
-/

/-! ## A233039.P11176725963849751654

`A050973(A263118(n+1))`
-/

namespace A233039.P11176725963849751654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050973 (A263118 (n + 1)).toNat

end

end A233039.P11176725963849751654

/-! ## A233039.P8617165314234307621

`A050973(eq[1, A263152(n+1)]+1)`
-/

namespace A233039.P8617165314234307621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050973 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A233039.P8617165314234307621

/-! ## A233039.P9833053854117846524

`A050973(record[(n+1)/A263152(n+1)])`
-/

namespace A233039.P9833053854117846524
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A263152 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050973 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A233039.P9833053854117846524

/-! ## A233039.P1166262385892040878

`A050973(record[A263118(C(comp[∑[n]]-n, 2)-n)])`
-/

namespace A233039.P1166262385892040878
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263118 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050973 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A233039.P1166262385892040878

/-!
# A233040: Prime(n), where n is such that (1 + Sum_{i=1..n} prime(i)^7) / n is an integer.

The programs for A233040, there is no canonical definition to state claims against.
-/

/-! ## A233040.P15034478776981055180

`A000040(A128171(n+1))`
-/

namespace A233040.P15034478776981055180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A128171 (n + 1)).toNat

end

end A233040.P15034478776981055180

/-! ## A233040.P13058384876939857712

`A008578(A128171(n+1)+1)`
-/

namespace A233040.P13058384876939857712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A128171 (n + 1) + 1).toNat

end

end A233040.P13058384876939857712

/-! ## A233040.P8916040565525407740

`A182986(A128171(n+1)+1)`
-/

namespace A233040.P8916040565525407740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A128171 (n + 1) + 1).toNat

end

end A233040.P8916040565525407740

/-! ## A233040.P12480363260970834573

`A158611(A128171(n+1)+2)`
-/

namespace A233040.P12480363260970834573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A128171 (n + 1) + 2).toNat

end

end A233040.P12480363260970834573

/-! ## A233040.P11728269718604058212

`∑{d}[A128171(n+1), A007444(#)]`
-/

namespace A233040.P11728269718604058212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A233040.P11728269718604058212

/-!
# A233041: Prime(n), where n is such that (1 + Sum_{i=1..n} prime(i)^6) / n is an integer.

The programs for A233041, there is no canonical definition to state claims against.
-/

/-! ## A233041.P18321335073114544927

`A000040(A128170(n+1))`
-/

namespace A233041.P18321335073114544927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A128170 (n + 1)).toNat

end

end A233041.P18321335073114544927

/-! ## A233041.P7785039425668578978

`A008578(A128170(n+1)+1)`
-/

namespace A233041.P7785039425668578978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A128170 (n + 1) + 1).toNat

end

end A233041.P7785039425668578978

/-! ## A233041.P3302832872003090295

`A158611(A128170(n+1)+2)`
-/

namespace A233041.P3302832872003090295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A128170 (n + 1) + 2).toNat

end

end A233041.P3302832872003090295

/-! ## A233041.P12599331287431262819

`∑{d}[A128170(n+1), A007444(#)]`
-/

namespace A233041.P12599331287431262819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A233041.P12599331287431262819

/-! ## A233041.P15222416344254445288

`A006005(A128170(n+1))+A000007(n)`
-/

namespace A233041.P15222416344254445288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A128170 (n + 1)).toNat + A000007 n

end

end A233041.P15222416344254445288

/-!
# A233042: Prime(k), where k is such that (1 + Sum_{j=1..k} prime(j)^9) / k is an integer.

The programs for A233042, there is no canonical definition to state claims against.
-/

/-! ## A233042.P15982402318483799537

`A000040(A232964(n+1))`
-/

namespace A233042.P15982402318483799537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A232964 (n + 1)).toNat

end

end A233042.P15982402318483799537

/-! ## A233042.P6755865223434923263

`A008578(A232964(n+1)+1)`
-/

namespace A233042.P6755865223434923263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A232964 (n + 1) + 1).toNat

end

end A233042.P6755865223434923263

/-! ## A233042.P10965964849661009494

`A182986(A232964(n+1)+1)`
-/

namespace A233042.P10965964849661009494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A232964 (n + 1) + 1).toNat

end

end A233042.P10965964849661009494

/-! ## A233042.P8382845844104168182

`A158611(A232964(n+1)+2)`
-/

namespace A233042.P8382845844104168182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A232964 (n + 1) + 2).toNat

end

end A233042.P8382845844104168182

/-! ## A233042.P9578263687268051371

`∑{d}[A232964(n+1), A007444(#)]`
-/

namespace A233042.P9578263687268051371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A233042.P9578263687268051371

/-!
# A233043: Prime(n), where n is such that (1+sum_{i=1..n} prime(i)^14) / n is an integer.

The programs for A233043, there is no canonical definition to state claims against.
-/

/-! ## A233043.P14404036693600894678

`A000040(A232966(n+1))`
-/

namespace A233043.P14404036693600894678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A232966 (n + 1)).toNat

end

end A233043.P14404036693600894678

/-! ## A233043.P14170294156419312874

`A008578(A232966(n+1)+1)`
-/

namespace A233043.P14170294156419312874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A232966 (n + 1) + 1).toNat

end

end A233043.P14170294156419312874

/-! ## A233043.P376943945756186381

`A182986(A232966(n+1)+1)`
-/

namespace A233043.P376943945756186381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A232966 (n + 1) + 1).toNat

end

end A233043.P376943945756186381

/-! ## A233043.P5759759325770380218

`A158611(A232966(n+1)+2)`
-/

namespace A233043.P5759759325770380218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A232966 (n + 1) + 2).toNat

end

end A233043.P5759759325770380218

/-! ## A233043.P2198406492473401587

`A207790(2*A232966(n+1))`
-/

namespace A233043.P2198406492473401587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A232966 (n + 1)).toNat

end

end A233043.P2198406492473401587

/-!
# A233046: Number of (n+1)X(1+1) 0..2 arrays x(i,j) with row sums sum{j*x(i,j), j=1..1+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A233046, there is no canonical definition to state claims against.
-/

/-! ## A233046.P11927249254467546002

`A233049(∑[n+1])`
-/

namespace A233046.P11927249254467546002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233049 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233046.P11927249254467546002

/-! ## A233046.P12740687371188291108

`record[A233049(A130270(n+1))]`
-/

namespace A233046.P12740687371188291108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233049 (A130270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233046.P12740687371188291108

/-! ## A233046.P4007460558096438574

`record[A233049(A359279(n+1))]`
-/

namespace A233046.P4007460558096438574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233049 (A359279 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233046.P4007460558096438574

/-! ## A233046.P6600379619509098136

`record[A023531(n)*A233049(n+1)]`
-/

namespace A233046.P6600379619509098136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A233049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233046.P6600379619509098136

/-!
# A233047: Number of (n+1)X(2+1) 0..2 arrays x(i,j) with row sums sum{j*x(i,j), j=1..2+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A233047, there is no canonical definition to state claims against.
-/

/-! ## A233047.P3884231594574126048

`A233049(∑[n+2])`
-/

namespace A233047.P3884231594574126048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233049 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233047.P3884231594574126048

/-! ## A233047.P8199980273629006418

`A233049(A000096(n+1))+A172535(n+1)`
-/

namespace A233047.P8199980273629006418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233049 (A000096 (n + 1)).toNat + A172535 (n + 1)

end

end A233047.P8199980273629006418

/-! ## A233047.P4558609634860124229

`A233049(A000096(n+1))+A014376(n+2)`
-/

namespace A233047.P4558609634860124229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233049 (A000096 (n + 1)).toNat + A014376 (n + 2)

end

end A233047.P4558609634860124229

/-!
# A233048: Number of (n+1)X(3+1) 0..2 arrays x(i,j) with row sums sum{j*x(i,j), j=1..3+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A233048, there is no canonical definition to state claims against.
-/

/-! ## A233048.P8541034984471002070

`A233049(∑[n+3]+1)`
-/

namespace A233048.P8541034984471002070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233049 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233048.P8541034984471002070

/-!
# A233050: Number of (1+1)X(n+1) 0..2 arrays x(i,j) with row sums sum{j*x(i,j), j=1..n+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..1+1} nondecreasing.

The programs for A233050, there is no canonical definition to state claims against.
-/

/-! ## A233050.P16202585076546962146

`A233049(∑[n]+1)`
-/

namespace A233050.P16202585076546962146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233049 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233050.P16202585076546962146

/-! ## A233050.P13423907468356610066

`or(char[5], A233049(A000124(n)))`
-/

namespace A233050.P13423907468356610066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A233049 (A000124 n).toNat)

end

end A233050.P13423907468356610066

/-! ## A233050.P878305605613605589

`record[A010054(n)*A233049(n+1)]`
-/

namespace A233050.P878305605613605589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233050.P878305605613605589

/-! ## A233050.P7716013580622266842

`A233049(A000124(n))+A025437(n)`
-/

namespace A233050.P7716013580622266842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233049 (A000124 n).toNat + A025437 n

end

end A233050.P7716013580622266842

/-! ## A233050.P10833510601568541893

`A233049(A000124(n))+A031346(n)`
-/

namespace A233050.P10833510601568541893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233049 (A000124 n).toNat + A031346 n

end

end A233050.P10833510601568541893

/-!
# A233051: Number of (2+1)X(n+1) 0..2 arrays x(i,j) with row sums sum{j*x(i,j), j=1..n+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..2+1} nondecreasing.

The programs for A233051, there is no canonical definition to state claims against.
-/

/-! ## A233051.P5115973345112051492

`A233049(∑[n+1]+2)`
-/

namespace A233051.P5115973345112051492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233049 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233051.P5115973345112051492

/-! ## A233051.P3564980407576524020

`record[A233049(n+3)/A114154(n)]`
-/

namespace A233051.P3564980407576524020
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233049 (n + 3) : ℚ) / (A114154 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233051.P3564980407576524020

/-!
# A233052: Number of (3+1) X (n+1) 0..2 arrays x(i,j) with row sums sum{j*x(i,j), j=1..n+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..3+1} nondecreasing.

The programs for A233052, there is no canonical definition to state claims against.
-/

/-! ## A233052.P13383016728898884761

`A233049(∑[n+2]+4)`
-/

namespace A233052.P13383016728898884761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233049 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233052.P13383016728898884761

/-! ## A233052.P10278565620187436160

`lcm((-1)^n, A233049(A167614(n+1)))`
-/

namespace A233052.P10278565620187436160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A233049 (A167614 (n + 1)).toNat)

end

end A233052.P10278565620187436160

/-! ## A233052.P4050696441389340828

`A233049(A167614(n+1))+A025437(n)`
-/

namespace A233052.P4050696441389340828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233049 (A167614 (n + 1)).toNat + A025437 n

end

end A233052.P4050696441389340828

/-!
# A233053: Number of (n+1)X(1+1) 0..3 arrays x(i,j) with row sums sum{j*x(i,j), j=1..1+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A233053, there is no canonical definition to state claims against.
-/

/-! ## A233053.P8378992149989023191

`A233055(∑[n+1])`
-/

namespace A233053.P8378992149989023191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233055 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233053.P8378992149989023191

/-! ## A233053.P11467728944609636480

`record[A233055(A106255(n+1))]`
-/

namespace A233053.P11467728944609636480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233055 (A106255 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233053.P11467728944609636480

/-! ## A233053.P11948915091125117918

`record[A233055(A115364(n+1))]`
-/

namespace A233053.P11948915091125117918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233055 (A115364 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233053.P11948915091125117918

/-!
# A233054: Number of (n+1)X(2+1) 0..3 arrays x(i,j) with row sums sum{j*x(i,j), j=1..2+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..n+1} nondecreasing.

The programs for A233054, there is no canonical definition to state claims against.
-/

/-! ## A233054.P1673661029992289957

`A233055(∑[n+2])`
-/

namespace A233054.P1673661029992289957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233055 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233054.P1673661029992289957

/-! ## A233054.P15302218624693425610

`A233055(A000096(n+1))+A088469(n+1)`
-/

namespace A233054.P15302218624693425610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233055 (A000096 (n + 1)).toNat + A088469 (n + 1)

end

end A233054.P15302218624693425610

/-!
# A233056: Number of (1+1)X(n+1) 0..3 arrays x(i,j) with row sums sum{j*x(i,j), j=1..n+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..1+1} nondecreasing.

The programs for A233056, there is no canonical definition to state claims against.
-/

/-! ## A233056.P1651502284129048145

`A233055(∑[n]+1)`
-/

namespace A233056.P1651502284129048145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233055 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233056.P1651502284129048145

/-! ## A233056.P6423419155350455765

`and(-1, A233055(A000124(n)))`
-/

namespace A233056.P6423419155350455765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A233055 (A000124 n).toNat)

end

end A233056.P6423419155350455765

/-! ## A233056.P6783373795474501847

`record[A233055(A114091(n+1))]`
-/

namespace A233056.P6783373795474501847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233055 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233056.P6783373795474501847

/-! ## A233056.P7671906026359264475

`record[A010054(n)*A233055(n+1)]`
-/

namespace A233056.P7671906026359264475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A233055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233056.P7671906026359264475

/-!
# A233057: Number of (2+1)X(n+1) 0..3 arrays x(i,j) with row sums sum{j*x(i,j), j=1..n+1} nondecreasing, and column sums sum{i^2*x(i,j), i=1..2+1} nondecreasing.

The programs for A233057, there is no canonical definition to state claims against.
-/

/-! ## A233057.P4375106862437219930

`A233055(∑[n+1]+2)`
-/

namespace A233057.P4375106862437219930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233055 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233057.P4375106862437219930

/-! ## A233057.P16474349516397184955

`or(char[1], A233055(A238531(n+2)))`
-/

namespace A233057.P16474349516397184955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A233055 (A238531 (n + 2)).toNat)

end

end A233057.P16474349516397184955

/-! ## A233057.P16796157383713463029

`A326473(n)+A233055(A238531(n+2))`
-/

namespace A233057.P16796157383713463029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326473 n + A233055 (A238531 (n + 2)).toNat

end

end A233057.P16796157383713463029

/-!
# A233058: Number of (n+1)X(1+1) 0..1 arrays x(i,j) with row sums sum{x(i,j), j=1..1+1} nondecreasing, and column sums sum{i*x(i,j), i=1..n+1} nondecreasing.

The programs for A233058, there is no canonical definition to state claims against.
-/

/-! ## A233058.P10945962461517994608

`A233062(∑[n+1])`
-/

namespace A233058.P10945962461517994608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233062 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233058.P10945962461517994608

/-! ## A233058.P9543047559677424563

`record[A233062(abs(A122432(n)))]`
-/

namespace A233058.P9543047559677424563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233062 |A122432 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233058.P9543047559677424563

/-! ## A233058.P15592256536596985328

`record[A233062(A127096(n+1))]`
-/

namespace A233058.P15592256536596985328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233062 (A127096 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233058.P15592256536596985328

/-! ## A233058.P8791791746615862163

`record[A233062(A130270(n+1))]`
-/

namespace A233058.P8791791746615862163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233062 (A130270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233058.P8791791746615862163

/-! ## A233058.P5450387572047254222

`record[A023531(n)*A233062(n+1)]`
-/

namespace A233058.P5450387572047254222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A233062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233058.P5450387572047254222

/-!
# A233059: Number of (n+1)X(2+1) 0..1 arrays x(i,j) with row sums sum{x(i,j), j=1..2+1} nondecreasing, and column sums sum{i*x(i,j), i=1..n+1} nondecreasing.

The programs for A233059, there is no canonical definition to state claims against.
-/

/-! ## A233059.P320757140663417180

`A233062(∑[n+2])`
-/

namespace A233059.P320757140663417180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233062 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233059.P320757140663417180

/-! ## A233059.P907346856979829331

`record[A233062(record[A127672(n)])]`
-/

namespace A233059.P907346856979829331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127672 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233062 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233059.P907346856979829331

/-!
# A233060: Number of (n+1)X(3+1) 0..1 arrays x(i,j) with row sums sum{x(i,j), j=1..3+1} nondecreasing, and column sums sum{i*x(i,j), i=1..n+1} nondecreasing.

The programs for A233060, there is no canonical definition to state claims against.
-/

/-! ## A233060.P11987252247559034698

`A233062(∑[n+3]+1)`
-/

namespace A233060.P11987252247559034698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233062 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233060.P11987252247559034698

/-! ## A233060.P10191319178146714438

`A233062(A034856(n+2))%A000670(n+4)`
-/

namespace A233060.P10191319178146714438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233062 (A034856 (n + 2)).toNat) (A000670 (n + 4))

end

end A233060.P10191319178146714438

/-!
# A233061: Number of (n+1)X(4+1) 0..1 arrays x(i,j) with row sums sum{x(i,j), j=1..4+1} nondecreasing, and column sums sum{i*x(i,j), i=1..n+1} nondecreasing.

The programs for A233061, there is no canonical definition to state claims against.
-/

/-! ## A233061.P15463216522248754387

`A233062(∑[n+4]+3)`
-/

namespace A233061.P15463216522248754387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233062 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A233061.P15463216522248754387

/-!
# A233063: Number of (2+1) X (n+1) 0..1 arrays x(i,j) with row sums sum{x(i,j), j=1..n+1} nondecreasing, and column sums sum{i*x(i,j), i=1..2+1} nondecreasing.

The programs for A233063, there is no canonical definition to state claims against.
-/

/-! ## A233063.P12075256288409071406

`A233062(∑[n+1]+2)`
-/

namespace A233063.P12075256288409071406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233062 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A233063.P12075256288409071406

/-! ## A233063.P12354719174246519605

`record[A023531(n)*A233062(n+3)]`
-/

namespace A233063.P12354719174246519605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A233062 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233063.P12354719174246519605

/-! ## A233063.P15888028327542733989

`record[A233062(n+3)/A270236(n+1)]`
-/

namespace A233063.P15888028327542733989
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233062 (n + 3) : ℚ) / (A270236 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A233063.P15888028327542733989

/-!
# A233064: Number of (3+1)X(n+1) 0..1 arrays x(i,j) with row sums sum{x(i,j), j=1..n+1} nondecreasing, and column sums sum{i*x(i,j), i=1..3+1} nondecreasing.

The programs for A233064, there is no canonical definition to state claims against.
-/

/-! ## A233064.P10512456645411791114

`A233062(∑[n+2]+4)`
-/

namespace A233064.P10512456645411791114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233062 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233064.P10512456645411791114

/-! ## A233064.P1610808891281236989

`A233062(A167614(n+1))+A067157(n)`
-/

namespace A233064.P1610808891281236989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233062 (A167614 (n + 1)).toNat + A067157 (n + 10)

end

end A233064.P1610808891281236989

/-! ## A233064.P12448121255261015737

`A233062(A167614(n+1))+A079694(n)`
-/

namespace A233064.P12448121255261015737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233062 (A167614 (n + 1)).toNat + A079694 n

end

end A233064.P12448121255261015737

/-! ## A233064.P10828984950681393722

`A233062(A167614(n+1))+A185037(n)`
-/

namespace A233064.P10828984950681393722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233062 (A167614 (n + 1)).toNat + A185037 n

end

end A233064.P10828984950681393722

/-! ## A233064.P2037265426643721685

`A233062(A167614(n+1))+A185284(n)`
-/

namespace A233064.P2037265426643721685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233062 (A167614 (n + 1)).toNat + A185284 n

end

end A233064.P2037265426643721685

/-!
# A233065: Number of (4+1)X(n+1) 0..1 arrays x(i,j) with row sums sum{x(i,j), j=1..n+1} nondecreasing, and column sums sum{i*x(i,j), i=1..4+1} nondecreasing.

The programs for A233065, there is no canonical definition to state claims against.
-/

/-! ## A233065.P9086638520434737199

`A233062(A141214(n)+7)`
-/

namespace A233065.P9086638520434737199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233062 (A141214 n + 7).toNat

end

end A233065.P9086638520434737199

/-! ## A233065.P13326589329505851056

`A233062(A052905(n)+9)`
-/

namespace A233065.P13326589329505851056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233062 (A052905 n + 9).toNat

end

end A233065.P13326589329505851056

/-! ## A233065.P3292705319408929636

`A233062(A055999(n)+10)`
-/

namespace A233065.P3292705319408929636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233062 (A055999 n + 10).toNat

end

end A233065.P3292705319408929636

/-! ## A233065.P4157129833294419378

`A233062(eq[5, A066657(n)])`
-/

namespace A233065.P4157129833294419378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233065.P4157129833294419378

/-! ## A233065.P4774168742374930277

`A233062(A167614(n+2)+1)`
-/

namespace A233065.P4774168742374930277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233062 (A167614 (n + 2) + 1).toNat

end

end A233065.P4774168742374930277

/-!
# A233066: Number of (5+1)X(n+1) 0..1 arrays x(i,j) with row sums sum{x(i,j), j=1..n+1} nondecreasing, and column sums sum{i*x(i,j), i=1..5+1} nondecreasing.

The programs for A233066, there is no canonical definition to state claims against.
-/

/-! ## A233066.P13380537217597195185

`A233062(∑[n+4]+11)`
-/

namespace A233066.P13380537217597195185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233062 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A233066.P13380537217597195185

/-! ## A233066.P152543165490746014

`A320742(n+1)+A233062(A155212(n)+13)`
-/

namespace A233066.P152543165490746014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320742 (n + 1) + A233062 (A155212 n + 13).toNat

end

end A233066.P152543165490746014

/-! ## A233066.P13705436440730848043

`A233062(A155212(n)+13)+A010872(3*n)`
-/

namespace A233066.P13705436440730848043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233062 (A155212 n + 13).toNat + A010872 (3 * n)

end

end A233066.P13705436440730848043

/-!
# A233067: Number of n X n 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233067, there is no canonical definition to state claims against.
-/

/-! ## A233067.P3405792021893767504

`ceil(A232942(n+1)/2)`
-/

namespace A233067.P3405792021893767504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A232942 (n + 1) : ℚ) / 2⌉

end

end A233067.P3405792021893767504

/-! ## A233067.P8740740538630367039

`A233073((n+1)²+n²)`
-/

namespace A233067.P8740740538630367039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233073 ((n + 1) ^ 2 + n ^ 2)

end

end A233067.P8740740538630367039

/-!
# A233068: Number of n X 3 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233068, there is no canonical definition to state claims against.
-/

/-! ## A233068.P12548594590999362624

`ceil(A232943(n+1)/2)`
-/

namespace A233068.P12548594590999362624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A232943 (n + 1) : ℚ) / 2⌉

end

end A233068.P12548594590999362624

/-! ## A233068.P9613348038187590577

`A233073(∑[n+2]+4)`
-/

namespace A233068.P9613348038187590577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233073 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233068.P9613348038187590577

/-! ## A233068.P12113114414314063058

`ceil(A232948(∑[n+2]+4)/2)`
-/

namespace A233068.P12113114414314063058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A232948 (∑ j ∈ Finset.range (n + 1), f1 j + 4) : ℚ) / 2⌉

end

end A233068.P12113114414314063058

/-! ## A233068.P11540767849610589113

`ceil(or(1, A232948(A167614(n+1)))/2)`
-/

namespace A233068.P11540767849610589113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor 1 (A232948 (A167614 (n + 1)).toNat) : ℚ) / 2⌉

end

end A233068.P11540767849610589113

/-! ## A233068.P1758101907971792552

`A233073(A167614(n+1))%A222335(n+1)`
-/

namespace A233068.P1758101907971792552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233073 (A167614 (n + 1)).toNat) (A222335 (n + 1))

end

end A233068.P1758101907971792552

/-!
# A233069: Number of nX4 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233069, there is no canonical definition to state claims against.
-/

/-! ## A233069.P17575024611649352511

`ceil(A232944(n+1)/2)`
-/

namespace A233069.P17575024611649352511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A232944 (n + 1) : ℚ) / 2⌉

end

end A233069.P17575024611649352511

/-! ## A233069.P2220260176131522398

`floor(A000108(C(2, 2*n))+A232944(n+1)/2)`
-/

namespace A233069.P2220260176131522398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000108 (Nat.choose 2 (2 * n)) : ℚ) + (A232944 (n + 1) : ℚ) / 2⌋

end

end A233069.P2220260176131522398

/-! ## A233069.P16737238342287971264

`A233073(A374004(n+1))`
-/

namespace A233069.P16737238342287971264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233073 (A374004 (n + 1)).toNat

end

end A233069.P16737238342287971264

/-! ## A233069.P9758986500883418086

`A233073(A141214(n)+7)`
-/

namespace A233069.P9758986500883418086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233073 (A141214 n + 7).toNat

end

end A233069.P9758986500883418086

/-! ## A233069.P4833379222464537729

`A233073(A055999(n)+10)`
-/

namespace A233069.P4833379222464537729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233073 (A055999 n + 10).toNat

end

end A233069.P4833379222464537729

/-!
# A233070: Number of nX5 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233070, there is no canonical definition to state claims against.
-/

/-! ## A233070.P3738385721026997953

`ceil(A232945(n+1)/2)`
-/

namespace A233070.P3738385721026997953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A232945 (n + 1) : ℚ) / 2⌉

end

end A233070.P3738385721026997953

/-! ## A233070.P5225666634442840221

`round(A232945(n+1)/ratio[A000079(n)])`
-/

namespace A233070.P5225666634442840221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A232945 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))

end

end A233070.P5225666634442840221

/-! ## A233070.P6919340797727366954

`A233073(A374005(n+1))`
-/

namespace A233070.P6919340797727366954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233073 (A374005 (n + 1)).toNat

end

end A233070.P6919340797727366954

/-! ## A233070.P12954108549831821844

`A233073(A167499(n+3))`
-/

namespace A233070.P12954108549831821844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233073 (A167499 (n + 3)).toNat

end

end A233070.P12954108549831821844

/-! ## A233070.P10372240901649273999

`A233073(A000217(n+4)+5)`
-/

namespace A233070.P10372240901649273999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233073 (A000217 (n + 4) + 5).toNat

end

end A233070.P10372240901649273999

/-!
# A233071: Number of nX6 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233071, there is no canonical definition to state claims against.
-/

/-! ## A233071.P10997315064449824454

`ceil(A232946(n+1)/2)`
-/

namespace A233071.P10997315064449824454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A232946 (n + 1) : ℚ) / 2⌉

end

end A233071.P10997315064449824454

/-! ## A233071.P1143175355121102458

`floor(A232946(n+1)/2)+A007318(∑[n])`
-/

namespace A233071.P1143175355121102458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A232946 (n + 1) : ℚ) / 2⌋ + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A233071.P1143175355121102458

/-! ## A233071.P680816911968513837

`A233073(A374007(n+1))`
-/

namespace A233071.P680816911968513837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233073 (A374007 (n + 1)).toNat

end

end A233071.P680816911968513837

/-! ## A233071.P7694090130355043069

`A233073(eq[7, A131818(n+1)])`
-/

namespace A233071.P7694090130355043069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233073 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233071.P7694090130355043069

/-! ## A233071.P3736632808189734549

`A233073(A000124(n+6)-(n+1))`
-/

namespace A233071.P3736632808189734549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233073 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A233071.P3736632808189734549

/-!
# A233072: Number of nX7 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233072, there is no canonical definition to state claims against.
-/

/-! ## A233072.P2617204874284817854

`ceil(A232947(n+1)/2)`
-/

namespace A233072.P2617204874284817854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A232947 (n + 1) : ℚ) / 2⌉

end

end A233072.P2617204874284817854

/-! ## A233072.P3063556646705079681

`A007814(A243458(n+1))+(A232947(n+1)+1)/2`
-/

namespace A233072.P3063556646705079681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007814 (A243458 (n + 1)).toNat : ℚ) + (A232947 (n + 1) + 1 : ℚ) / 2

end

end A233072.P3063556646705079681

/-! ## A233072.P4023821683700383059

`A007814(A243460(n+1))+(A232947(n+1)+1)/2`
-/

namespace A233072.P4023821683700383059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007814 (A243460 (n + 1)).toNat : ℚ) + (A232947 (n + 1) + 1 : ℚ) / 2

end

end A233072.P4023821683700383059

/-! ## A233072.P16844399229581510966

`A007814(A243471(n+1))+(A232947(n+1)+1)/2`
-/

namespace A233072.P16844399229581510966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007814 (A243471 (n + 1)).toNat : ℚ) + (A232947 (n + 1) + 1 : ℚ) / 2

end

end A233072.P16844399229581510966

/-! ## A233072.P10905352938021998660

`A007814(A243451(n+1))+(A232947(n+1)+1)/2`
-/

namespace A233072.P10905352938021998660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007814 (A243451 (n + 1)).toNat : ℚ) + (A232947 (n + 1) + 1 : ℚ) / 2

end

end A233072.P10905352938021998660

/-!
# A233073: T(n,k)=Number of nXk 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, antidiagonally or vertically, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233073, there is no canonical definition to state claims against.
-/

/-! ## A233073.P9793424158020574762

`ceil(A232948(n+1)/2)`
-/

namespace A233073.P9793424158020574762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A232948 (n + 1) : ℚ) / 2⌉

end

end A233073.P9793424158020574762

/-! ## A233073.P12482347330799918916

`(A232948(A254667(n)+1)+1)/2`
-/

namespace A233073.P12482347330799918916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232948 (A254667 n + 1).toNat + 1 : ℚ) / 2

end

end A233073.P12482347330799918916

/-! ## A233073.P7016644507849735126

`(A232948(n+1)+1)/A020639(2*(n+1))`
-/

namespace A233073.P7016644507849735126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232948 (n + 1) + 1 : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A233073.P7016644507849735126

/-! ## A233073.P12169083458781015418

`(A232948(n+1)+1)/A000040(A007318(gcd(n, n+1)))`
-/

namespace A233073.P12169083458781015418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232948 (n + 1) + 1 : ℚ) / (A000040 (A007318 (Nat.gcd n (n + 1))).toNat : ℚ)

end

end A233073.P12169083458781015418

/-! ## A233073.P12212440850192576794

`(A232948(A038722(n+1))+1)/2`
-/

namespace A233073.P12212440850192576794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232948 (A038722 (n + 1)).toNat + 1 : ℚ) / 2

end

end A233073.P12212440850192576794

/-! ## A233073.P4069771114448797117

`(A232948(n+1)+1)/A001222(A033476(2*n+1))`
-/

namespace A233073.P4069771114448797117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232948 (n + 1) + 1 : ℚ) / (A001222 (A033476 (2 * n + 1)).toNat : ℚ)

end

end A233073.P4069771114448797117

/-! ## A233073.P14771622670632795040

`floor(A007814(A069894(n))+A232948(n+1)/2)`
-/

namespace A233073.P14771622670632795040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007814 (A069894 n).toNat : ℚ) + (A232948 (n + 1) : ℚ) / 2⌋

end

end A233073.P14771622670632795040

/-!
# A233075: Numbers that are midway between the nearest square and the nearest cube.

The programs for A233075, there is no canonical definition to state claims against.
-/

/-! ## A233075.P6968755979811556890

`A075454(A100417(n+1)%A343973(n+4))`
-/

namespace A233075.P6968755979811556890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075454 (Int.tmod (A100417 (n + 1)) (A343973 (n + 4))).toNat

end

end A233075.P6968755979811556890

/-! ## A233075.P14974621287451667097

`A001221(A084730(n+2))*A075454(A100417(n+1))`
-/

namespace A233075.P14974621287451667097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A084730 (n + 2)).toNat * A075454 (A100417 (n + 1)).toNat

end

end A233075.P14974621287451667097

/-!
# A233076: Number of n X n 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233076, there is no canonical definition to state claims against.
-/

/-! ## A233076.P10847909131620738392

`ceil(A223327(n+1)/2)`
-/

namespace A233076.P10847909131620738392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A223327 (n + 1) : ℚ) / 2⌉

end

end A233076.P10847909131620738392

/-! ## A233076.P14644555389302193118

`A233082((n+1)²+n²)`
-/

namespace A233076.P14644555389302193118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233082 ((n + 1) ^ 2 + n ^ 2)

end

end A233076.P14644555389302193118

/-!
# A233077: Number of n X 3 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233077, there is no canonical definition to state claims against.
-/

/-! ## A233077.P6097030900261523231

`ogf((5-15x)/(1-22x+21x^2))`
-/

namespace A233077.P6097030900261523231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -15] [1, -22, 21] n

end

end A233077.P6097030900261523231

/-! ## A233077.P13136529586234146392

`21*a(n-1)-10` with `a(0)=5`
-/

namespace A233077.P13136529586234146392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  21 * a (n - 1) - 10

end

end A233077.P13136529586234146392

/-! ## A233077.P9682509149028423872

`lcm(21, a(n-1))-10` with `a(0)=5`
-/

namespace A233077.P9682509149028423872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (Int.lcm 21 (a (n - 1)) : ℤ) - 10

end

end A233077.P9682509149028423872

/-! ## A233077.P4201970570672447923

`∑[5*A285400(n)]`
-/

namespace A233077.P4201970570672447923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A285400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233077.P4201970570672447923

/-! ## A233077.P12750212297948710425

`ceil(A067422(n+1)/2)`
-/

namespace A233077.P12750212297948710425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A067422 (n + 1) : ℚ) / 2⌉

end

end A233077.P12750212297948710425

/-! ## A233077.P12092900631911811996

`ceil(A285400(n+1)/4)`
-/

namespace A233077.P12092900631911811996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A285400 (n + 1) : ℚ) / 4⌉

end

end A233077.P12092900631911811996

/-! ## A233077.P16598815927895892637

`round(A203872(n+1)/12)`
-/

namespace A233077.P16598815927895892637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A203872 (n + 1) : ℚ) / 12)

end

end A233077.P16598815927895892637

/-!
# A233078: Number of n X 4 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233078, there is no canonical definition to state claims against.
-/

/-! ## A233078.P15456213623484284070

`49*a(n-1)-24` with `a(0)=14`
-/

namespace A233078.P15456213623484284070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  49 * a (n - 1) - 24

end

end A233078.P15456213623484284070

/-! ## A233078.P7310638659155978058

`A233083(2*(n+1))`
-/

namespace A233078.P7310638659155978058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233083 (2 * (n + 1))

end

end A233078.P7310638659155978058

/-! ## A233078.P16225022633071158733

`A199417(2*n+1)+A169634(2*n)`
-/

namespace A233078.P16225022633071158733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199417 (2 * n + 1) + A169634 (2 * n)

end

end A233078.P16225022633071158733

/-! ## A233078.P14526048687242366604

`2*7*A000420(n)²-A120741(2*n)`
-/

namespace A233078.P14526048687242366604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (7 * A000420 n ^ 2) - A120741 (2 * n)

end

end A233078.P14526048687242366604

/-! ## A233078.P12829780860291399854

`A199421(2*n+1)-A270471(2*n+1)`
-/

namespace A233078.P12829780860291399854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199421 (2 * n + 1) - A270471 (2 * n + 1)

end

end A233078.P12829780860291399854

/-! ## A233078.P251996463982718724

`2*A000420(2*n+1)-A120741(2*n)`
-/

namespace A233078.P251996463982718724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000420 (2 * n + 1) - A120741 (2 * n)

end

end A233078.P251996463982718724

/-! ## A233078.P8238100048768932180

`2*(A108984(2*n+1)-A108984(2*n))`
-/

namespace A233078.P8238100048768932180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A108984 (2 * n + 1) - A108984 (2 * n))

end

end A233078.P8238100048768932180

/-! ## A233078.P15950009928888244415

`A034494(2*n+1)+2*A196661(2*n+1)`
-/

namespace A233078.P15950009928888244415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034494 (2 * n + 1) + 2 * A196661 (2 * n + 1)

end

end A233078.P15950009928888244415

/-! ## A233078.P17728428787619769755

`7*A000420(n)²+A270471(2*n+1)+A199421(2*n)`
-/

namespace A233078.P17728428787619769755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000420 n ^ 2 + (A270471 (2 * n + 1) + A199421 (2 * n))

end

end A233078.P17728428787619769755

/-! ## A233078.P9198865036935740225

`(49+27*49^(n+1))/98`
-/

namespace A233078.P9198865036935740225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (49 + 27 * 49 ^ (n + 1) : ℚ) / 98

end

end A233078.P9198865036935740225

/-!
# A233079: Number of n X 5 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233079, there is no canonical definition to state claims against.
-/

/-! ## A233079.P13561796833843708762

`ceil(A223328(n+1)/2)`
-/

namespace A233079.P13561796833843708762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A223328 (n + 1) : ℚ) / 2⌉

end

end A233079.P13561796833843708762

/-! ## A233079.P17603539066034575406

`A233082(Δ[A264443(n)])`
-/

namespace A233079.P17603539066034575406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233082 (f1 (n + 1) - f1 n).toNat

end

end A233079.P17603539066034575406

/-! ## A233079.P1653576767159045324

`A233082(eq[2, A092921(n)])`
-/

namespace A233079.P1653576767159045324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233082 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233079.P1653576767159045324

/-! ## A233079.P10062720348132743303

`A233082(eq[4, A193592(n)])`
-/

namespace A233079.P10062720348132743303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233082 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233079.P10062720348132743303

/-! ## A233079.P4392749611898701936

`A233082(Δ[A023545(n+1)])`
-/

namespace A233079.P4392749611898701936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233082 (f1 (n + 1) - f1 n).toNat

end

end A233079.P4392749611898701936

/-!
# A233080: Number of n X 6 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233080, there is no canonical definition to state claims against.
-/

/-! ## A233080.P12851327324609033907

`ceil(A223329(n+1)/2)`
-/

namespace A233080.P12851327324609033907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A223329 (n + 1) : ℚ) / 2⌉

end

end A233080.P12851327324609033907

/-! ## A233080.P4132528928859930538

`A233082(eq[5, A025581(n)]+1)`
-/

namespace A233080.P4132528928859930538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233082 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A233080.P4132528928859930538

/-!
# A233081: Number of nX7 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233081, there is no canonical definition to state claims against.
-/

/-! ## A233081.P13818499764903225119

`ceil(A223330(n+1)/2)`
-/

namespace A233081.P13818499764903225119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A223330 (n + 1) : ℚ) / 2⌉

end

end A233081.P13818499764903225119

/-!
# A233083: Number of 2 X n 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233083, the canonical program `A233083.P3154893985415064798` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233083 has offset 1).

The definition of A233083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233083.P4808357646289799230

`ogf((3-10x+4x^2)/(1-8x+7x^2))`
-/

namespace A233083.P4808357646289799230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -10, 4] [1, -8, 7] n

end

end A233083.P4808357646289799230

namespace A233083

/-- `ogf((3-10x+4x^2)/(1-8x+7x^2))` -/
def P4808357646289799230.Spec : Prop :=
  ∀ n, P4808357646289799230.a n = A233083 (n + 1)

end A233083

/-! ## A233083.P3154893985415064798

`7*a(n-1)-3` with `a(0)=3, a(1)=14`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A233083

/-- `7*a(n-1)-3` -/
def P3154893985415064798.Spec : Prop :=
  ∀ n, P3154893985415064798.a n = A233083 (n + 1)

theorem P3154893985415064798.correct : P3154893985415064798.Spec := by
  intro n
  simp only [A233083, Nat.add_sub_cancel]

end A233083

/-! ## A233083.P16330723916611771200

`ceil(A199417(n)+3*7^n/7)`
-/

namespace A233083.P16330723916611771200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199417 n : ℚ) + (3 * 7 ^ n : ℚ) / 7⌉

end

end A233083.P16330723916611771200

namespace A233083

/-- `ceil(A199417(n)+3*7^n/7)` -/
def P16330723916611771200.Spec : Prop :=
  ∀ n, P16330723916611771200.a n = A233083 (n + 1)

end A233083

/-! ## A233083.P12116241764667891661

`A034494(n)+2*A196661(n)`
-/

namespace A233083.P12116241764667891661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034494 n + 2 * A196661 n

end

end A233083.P12116241764667891661

namespace A233083

/-- `A034494(n)+2*A196661(n)` -/
def P12116241764667891661.Spec : Prop :=
  ∀ n, P12116241764667891661.a n = A233083 (n + 1)

end A233083

/-! ## A233083.P1257500323538701797

`A199421(n)-A270471(n)%A000420(n)`
-/

namespace A233083.P1257500323538701797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199421 n - Int.tmod (A270471 n) (A000420 n)

end

end A233083.P1257500323538701797

namespace A233083

/-- `A199421(n)-A270471(n)%A000420(n)` -/
def P1257500323538701797.Spec : Prop :=
  ∀ n, P1257500323538701797.a n = A233083 (n + 1)

end A233083

/-! ## A233083.P13077548917429162903

`A199421(n)-Δ[A270471(n)]%A196661(n)`
-/

namespace A233083.P13077548917429162903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199421 n - Int.tmod (f1 (n + 1) - f1 n) (A196661 n)

end

end A233083.P13077548917429162903

namespace A233083

/-- `A199421(n)-Δ[A270471(n)]%A196661(n)` -/
def P13077548917429162903.Spec : Prop :=
  ∀ n, P13077548917429162903.a n = A233083 (n + 1)

end A233083

/-!
# A233084: Number of 3 X n 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233084, there is no canonical definition to state claims against.
-/

/-! ## A233084.P169907237496899655

`A233082(∑[n+2]+4)`
-/

namespace A233084.P169907237496899655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233082 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A233084.P169907237496899655

/-! ## A233084.P8627657092861422134

`A233082(A167614(n+1))+A025443(n)`
-/

namespace A233084.P8627657092861422134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233082 (A167614 (n + 1)).toNat + A025443 n

end

end A233084.P8627657092861422134

/-! ## A233084.P11518055062336425869

`A233082(A167614(n+1))+A055967(n)`
-/

namespace A233084.P11518055062336425869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233082 (A167614 (n + 1)).toNat + A055967 n

end

end A233084.P11518055062336425869

/-! ## A233084.P15499998115977191111

`A233082(A167614(n+1))*A262681(n)`
-/

namespace A233084.P15499998115977191111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233082 (A167614 (n + 1)).toNat * A262681 n

end

end A233084.P15499998115977191111

/-! ## A233084.P5127477531303630131

`lcm(A033999(n), A233082(A167614(n+1)))`
-/

namespace A233084.P5127477531303630131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A233082 (A167614 (n + 1)).toNat)

end

end A233084.P5127477531303630131

/-!
# A233085: Number of 4Xn 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233085, there is no canonical definition to state claims against.
-/

/-! ## A233085.P309879832341423966

`A233082(A141214(n)+7)`
-/

namespace A233085.P309879832341423966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233082 (A141214 n + 7).toNat

end

end A233085.P309879832341423966

/-! ## A233085.P3983248739055596050

`A233082(A052905(n)+9)`
-/

namespace A233085.P3983248739055596050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233082 (A052905 n + 9).toNat

end

end A233085.P3983248739055596050

/-! ## A233085.P17902504724061574120

`A233082(A055999(n)+10)`
-/

namespace A233085.P17902504724061574120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233082 (A055999 n + 10).toNat

end

end A233085.P17902504724061574120

/-! ## A233085.P309986044478339831

`A233082(A167614(n+2)+1)`
-/

namespace A233085.P309986044478339831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233082 (A167614 (n + 2) + 1).toNat

end

end A233085.P309986044478339831

/-! ## A233085.P10735668269582842126

`A233082(eq[5, A131818(n+1)])`
-/

namespace A233085.P10735668269582842126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233082 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233085.P10735668269582842126

/-!
# A233086: Number of 5Xn 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233086, there is no canonical definition to state claims against.
-/

/-! ## A233086.P3674171382907186949

`A233082(∑[n+4]+11)`
-/

namespace A233086.P3674171382907186949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233082 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A233086.P3674171382907186949

/-! ## A233086.P18396138480092701146

`A020985(n)²*A233082(A167499(n+3))`
-/

namespace A233086.P18396138480092701146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A233082 (A167499 (n + 3)).toNat

end

end A233086.P18396138480092701146

/-! ## A233086.P4482641398838991580

`A233082(A167499(n+3))+A000007(n+2)`
-/

namespace A233086.P4482641398838991580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233082 (A167499 (n + 3)).toNat + A000007 (n + 2)

end

end A233086.P4482641398838991580

/-! ## A233086.P4742351427007012853

`A233082(A167614(n+3)+2)/A055396(2*(n+1))`
-/

namespace A233086.P4742351427007012853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233082 (A167614 (n + 3) + 2).toNat : ℚ) / (A055396 (2 * (n + 1)) : ℚ)

end

end A233086.P4742351427007012853

/-! ## A233086.P6841584062159567984

`A233082(A167614(n+3)+2)/A000120(A001316(n²))`
-/

namespace A233086.P6841584062159567984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233082 (A167614 (n + 3) + 2).toNat : ℚ) / (A000120 (A001316 (n ^ 2)).toNat : ℚ)

end

end A233086.P6841584062159567984

/-!
# A233087: Number of 6Xn 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233087, there is no canonical definition to state claims against.
-/

/-! ## A233087.P4063117633504849013

`A233082(eq[7, A131818(n+1)])`
-/

namespace A233087.P4063117633504849013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233082 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233087.P4063117633504849013

/-!
# A233088: Number of 7Xn 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally or antidiagonally, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233088, there is no canonical definition to state claims against.
-/

/-! ## A233088.P9938166628537078859

`A233082(A167487(n+5))`
-/

namespace A233088.P9938166628537078859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233082 (A167487 (n + 5)).toNat

end

end A233088.P9938166628537078859

/-! ## A233088.P2486900204889097659

`A233082(eq[8, A131818(n+1)])`
-/

namespace A233088.P2486900204889097659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233082 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233088.P2486900204889097659

/-!
# A233089: Numbers n such that 2n-1 and 2n+1 divide 2^n-1.

The programs for A233089, there is no canonical definition to state claims against.
-/

/-! ## A233089.P1387461425661505574

`floor(A337846(n+1)/2)`
-/

namespace A233089.P1387461425661505574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A337846 (n + 1) : ℚ) / 2⌋

end

end A233089.P1387461425661505574

/-! ## A233089.P5621703843755245189

`∩[A081856(n+1), A186293(n+1)]`
-/

namespace A233089.P5621703843755245189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A233089.P5621703843755245189

/-! ## A233089.P5936733565512516102

`A014682(A337846(n+1)-1)`
-/

namespace A233089.P5936733565512516102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A337846 (n + 1) - 1).toNat

end

end A233089.P5936733565512516102

/-! ## A233089.P10225702554937907539

`A297381(A337846(n+1))`
-/

namespace A233089.P10225702554937907539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297381 (A337846 (n + 1)).toNat

end

end A233089.P10225702554937907539

/-!
# A233092: Number of n X n 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233092, there is no canonical definition to state claims against.
-/

/-! ## A233092.P14948568657654625818

`ceil(A232949(n+1)/2)`
-/

namespace A233092.P14948568657654625818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A232949 (n + 1) : ℚ) / 2⌉

end

end A233092.P14948568657654625818

/-! ## A233092.P16305037474796313586

`A233098((n+1)²+n²)`
-/

namespace A233092.P16305037474796313586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 ((n + 1) ^ 2 + n ^ 2)

end

end A233092.P16305037474796313586

/-! ## A233092.P7813774218584393340

`round(A232955(∑[A008574(n)])/2)`
-/

namespace A233092.P7813774218584393340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A232955 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2)

end

end A233092.P7813774218584393340

/-!
# A233093: Number of n X 3 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233093, there is no canonical definition to state claims against.
-/

/-! ## A233093.P10064714836638443191

`16*a(n-1)-21*a(n-2)+6*a(n-3)` with `a(0)=5, a(1)=65, a(2)=941`
-/

namespace A233093.P10064714836638443191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 65, 941] fun n a =>
  16 * a (n - 1) - 21 * a (n - 2) + 6 * a (n - 3)

end

end A233093.P10064714836638443191

/-! ## A233093.P3592582279408911174

`ceil(A232950(n+1)/2)`
-/

namespace A233093.P3592582279408911174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A232950 (n + 1) : ℚ) / 2⌉

end

end A233093.P3592582279408911174

/-! ## A233093.P14117268388255875757

`(A264668(n)+A232950(n+1)+1)/2`
-/

namespace A233093.P14117268388255875757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264668 n + (A232950 (n + 1) + 1) : ℚ) / 2

end

end A233093.P14117268388255875757

/-! ## A233093.P729900947436365625

`A105700(A126148(n+1))/2+A232950(n+1)/2`
-/

namespace A233093.P729900947436365625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105700 (A126148 (n + 1)).toNat : ℚ) / 2 + (A232950 (n + 1) : ℚ) / 2

end

end A233093.P729900947436365625

/-! ## A233093.P16891708346433480420

`A233098(∑[n+3]+1)`
-/

namespace A233093.P16891708346433480420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A233093.P16891708346433480420

/-!
# A233094: Number of n X 4 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233094, there is no canonical definition to state claims against.
-/

/-! ## A233094.P5323879436491181406

`ceil(A232951(n+1)/2)`
-/

namespace A233094.P5323879436491181406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A232951 (n + 1) : ℚ) / 2⌉

end

end A233094.P5323879436491181406

/-! ## A233094.P14457612444224110645

`round(A232951(n+1)/2+A051881(n+1)/5)`
-/

namespace A233094.P14457612444224110645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A232951 (n + 1) : ℚ) / 2 + (A051881 (n + 1) : ℚ) / 5)

end

end A233094.P14457612444224110645

/-! ## A233094.P13654736538524897841

`A233098(A141214(n+1))`
-/

namespace A233094.P13654736538524897841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (A141214 (n + 1)).toNat

end

end A233094.P13654736538524897841

/-! ## A233094.P3089132946860266731

`A233098(eq[2, A152157(n)])`
-/

namespace A233094.P3089132946860266731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233094.P3089132946860266731

/-! ## A233094.P16833572978431825695

`A233098(eq[2, A220062(n)])`
-/

namespace A233094.P16833572978431825695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233094.P16833572978431825695

/-!
# A233095: Number of nX5 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233095, there is no canonical definition to state claims against.
-/

/-! ## A233095.P7677116048963803783

`ceil(A232952(n+1)/2)`
-/

namespace A233095.P7677116048963803783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A232952 (n + 1) : ℚ) / 2⌉

end

end A233095.P7677116048963803783

/-! ## A233095.P16461384563675531968

`(A304042(n)+A232952(n+1))/2`
-/

namespace A233095.P16461384563675531968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304042 n + A232952 (n + 1) : ℚ) / 2

end

end A233095.P16461384563675531968

/-! ## A233095.P4658669896284120494

`floor(A000010(-or(n, -2))+A232952(n+1)/2)`
-/

namespace A233095.P4658669896284120494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (-Int.lor (n : ℤ) (-2)).toNat : ℚ) + (A232952 (n + 1) : ℚ) / 2⌋

end

end A233095.P4658669896284120494

/-! ## A233095.P80090267575882098

`A233098(Δ[A264443(n)])`
-/

namespace A233095.P80090267575882098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (f1 (n + 1) - f1 n).toNat

end

end A233095.P80090267575882098

/-! ## A233095.P2347769571763520744

`A233098(A046691(n+3))`
-/

namespace A233095.P2347769571763520744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (A046691 (n + 3)).toNat

end

end A233095.P2347769571763520744

/-!
# A233096: Number of nX6 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233096, there is no canonical definition to state claims against.
-/

/-! ## A233096.P11500892614807272380

`ceil(A232953(n+1)/2)`
-/

namespace A233096.P11500892614807272380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A232953 (n + 1) : ℚ) / 2⌉

end

end A233096.P11500892614807272380

/-! ## A233096.P7117209749302458186

`A233098(A052905(n+3))`
-/

namespace A233096.P7117209749302458186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (A052905 (n + 3)).toNat

end

end A233096.P7117209749302458186

/-! ## A233096.P14443915687130045526

`A233098(eq[5, A193592(n)])`
-/

namespace A233096.P14443915687130045526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233096.P14443915687130045526

/-! ## A233096.P4620569712778319843

`A233098(eq[8, A185782(n+1)])`
-/

namespace A233096.P4620569712778319843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A233096.P4620569712778319843

/-! ## A233096.P15824929008673413466

`A233098(Δ[Δ[A006504(n+1)]])`
-/

namespace A233096.P15824929008673413466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233098 (f1 (n + 1) - f1 n).toNat

end

end A233096.P15824929008673413466

/-!
# A233097: Number of nX7 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233097, there is no canonical definition to state claims against.
-/

/-! ## A233097.P11649368653445825888

`ceil(A232954(n+1)/2)`
-/

namespace A233097.P11649368653445825888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A232954 (n + 1) : ℚ) / 2⌉

end

end A233097.P11649368653445825888

/-! ## A233097.P4311472802356204909

`ceil(A232955(eq[2, A219347(n)-2])/2)`
-/

namespace A233097.P4311472802356204909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A232955 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2⌉

end

end A233097.P4311472802356204909

/-!
# A233099: Number of 2 X n 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, diagonally or antidiagonally, top left element zero, and 1 appearing before 2 in row major order.

The programs for A233099, the canonical program `A233099.P1944040489221690890` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A233099 has offset 1).

The definition of A233099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A233099.P1944040489221690890

`6*a(n-1)+a(n-2)-6*a(n-3)` with `a(0)=3, a(1)=11, a(2)=65, a(3)=386`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A233099

/-- `6*a(n-1)+a(n-2)-6*a(n-3)` -/
def P1944040489221690890.Spec : Prop :=
  ∀ n, P1944040489221690890.a n = A233099 (n + 1)

theorem P1944040489221690890.correct : P1944040489221690890.Spec := by
  intro n
  simp only [A233099, Nat.add_sub_cancel]

end A233099

/-! ## A233099.P12609665383441354766

`6*a(n-1)-A000032(Δ[A042948(n)])` with `a(0)=3, a(1)=11`
-/

namespace A233099.P12609665383441354766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 11] fun n a =>
  6 * a (n - 1) - A000032 (f1 (n + 1) - f1 n).toNat

end

end A233099.P12609665383441354766

namespace A233099

/-- `6*a(n-1)-A000032(Δ[A042948(n)])` -/
def P12609665383441354766.Spec : Prop :=
  ∀ n, P12609665383441354766.a n = A233099 (n + 1)

end A233099

/-! ## A233099.P16726814570565613413

`ceil((A232956(n+1)+1)/2)`
-/

namespace A233099.P16726814570565613413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A232956 (n + 1) + 1 : ℚ) / 2⌉

end

end A233099.P16726814570565613413

namespace A233099

/-- `ceil((A232956(n+1)+1)/2)` -/
def P16726814570565613413.Spec : Prop :=
  ∀ n, P16726814570565613413.a n = A233099 (n + 1)

end A233099

/-! ## A233099.P14262582122315259989

`(A232956((n+1)%a(n-1))+1)/2` with `a(0)=3`
-/

namespace A233099.P14262582122315259989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (A232956 (Int.tmod (n + 1 : ℤ) (SequenceMachineLib.roundAway (a (n - 1)))).toNat + 1 : ℚ) / 2

end

end A233099.P14262582122315259989

namespace A233099

/-- `(A232956((n+1)%a(n-1))+1)/2` -/
def P14262582122315259989.Spec : Prop :=
  ∀ n, P14262582122315259989.a n = (A233099 (n + 1) : ℚ)

end A233099

/-! ## A233099.P1378666313781644607

`round((A232956(A004525(2*(n+1)))+1)/2)`
-/

namespace A233099.P1378666313781644607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A232956 (A004525 (2 * (n + 1))).toNat + 1 : ℚ) / 2)

end

end A233099.P1378666313781644607

namespace A233099

/-- `round((A232956(A004525(2*(n+1)))+1)/2)` -/
def P1378666313781644607.Spec : Prop :=
  ∀ n, P1378666313781644607.a n = A233099 (n + 1)

end A233099

/-! ## A233099.P13499270845909942154

`ceil(cosh(log(A232956(n+1))))`
-/

namespace A233099.P13499270845909942154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (A232956 (n + 1) : ℝ))⌉

end

end A233099.P13499270845909942154

namespace A233099

/-- `ceil(cosh(log(A232956(n+1))))` -/
def P13499270845909942154.Spec : Prop :=
  ∀ n, P13499270845909942154.a n = A233099 (n + 1)

end A233099

