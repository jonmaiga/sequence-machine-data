import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
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
# A395801: a(n) = Sum_{k=0..n} binomial(n+2*k,3*k) * (binomial(n+3*k,k) - binomial(n+3*k,k-1)).

The programs for A395801, there is no canonical definition to state claims against.
-/

/-! ## A395801.P15457928112060972211

`A378402(n)-A397384(n)`
-/

namespace A395801.P15457928112060972211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378402 n - A397384 n

end

end A395801.P15457928112060972211

/-!
# A395808: Number of factorizations of (p*q)^n into parts greater than 1 that contain at least one mixed factor (a part divisible by both p and q), where p and q are distinct primes.

The programs for A395808, there is no canonical definition to state claims against.
-/

/-! ## A395808.P1684007523922272637

`A002774(n)-A001255(n)`
-/

namespace A395808.P1684007523922272637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002774 n - A001255 n

end

end A395808.P1684007523922272637

/-! ## A395808.P7070672554694154017

`A331197(n)-A355390(n)`
-/

namespace A395808.P7070672554694154017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331197 n - A355390 n

end

end A395808.P7070672554694154017

/-! ## A395808.P12737210181781374351

`A002774(n)-A000041(n)²`
-/

namespace A395808.P12737210181781374351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002774 n - A000041 n ^ 2

end

end A395808.P12737210181781374351

/-!
# A395811: Number of Fibonacci divisors of n that are at most sqrt(n).

The programs for A395811, there is no canonical definition to state claims against.
-/

/-! ## A395811.P677463672066569691

`A063962(n+1)+A001221(A095103(n+1))`
-/

namespace A395811.P677463672066569691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (n + 1) + A001221 (A095103 (n + 1)).toNat

end

end A395811.P677463672066569691

/-! ## A395811.P16019475891248570675

`A063962(n+1)+A000035(A344527(n+1))`
-/

namespace A395811.P16019475891248570675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (n + 1) + A000035 (A344527 (n + 1)).toNat

end

end A395811.P16019475891248570675

/-! ## A395811.P2697331271454630738

`A093178(A005893(2*(n+2)))+A063962(n+1)`
-/

namespace A395811.P2697331271454630738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A005893 (2 * (n + 2))).toNat + A063962 (n + 1)

end

end A395811.P2697331271454630738

/-! ## A395811.P15429262639718293013

`A063962(n+1)+A050320(A132243(3*(n+1)))`
-/

namespace A395811.P15429262639718293013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (n + 1) + A050320 (A132243 (3 * (n + 1))).toNat

end

end A395811.P15429262639718293013

/-! ## A395811.P9667007046744576233

`A083399(A396079(n+1))`
-/

namespace A395811.P9667007046744576233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (A396079 (n + 1)).toNat

end

end A395811.P9667007046744576233

/-!
# A395812: Positions of records in A001822.

The programs for A395812, there is no canonical definition to state claims against.
-/

/-! ## A395812.P15972101233057974799

`A003963(A343135(n+1))`
-/

namespace A395812.P15972101233057974799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A343135 (n + 1)).toNat

end

end A395812.P15972101233057974799

/-!
# A395813: Number of perfect matchings in the complete 4-partite graph K_{n,n,n,n}.

The programs for A395813, there is no canonical definition to state claims against.
-/

/-! ## A395813.P15483364993228840716

`A000142(n)²*A002893(n)`
-/

namespace A395813.P15483364993228840716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n ^ 2 * A002893 n

end

end A395813.P15483364993228840716

/-!
# A395815: Number of perfect matchings in the complete tripartite graph K_{2n,2n,2n}.

The programs for A395815, the canonical program `A395815.P4122459993557326812` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395815 has offset 0).

The definition of A395815 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395815.P4122459993557326812

`((2*n)!/n!)^3`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A395815

/-- `((2*n)!/n!)^3` -/
def P4122459993557326812.Spec : Prop :=
  ∀ n, P4122459993557326812.a n = (A395815 n : ℚ)

end A395815

/-! ## A395815.P9488996797979548549

`(4*n-2)^3*a(n-1)` with `a(0)=1`
-/

namespace A395815.P9488996797979548549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((4 * n : ℤ) - 2) ^ 3 * a (n - 1)

end

end A395815.P9488996797979548549

namespace A395815

/-- `(4*n-2)^3*a(n-1)` -/
def P9488996797979548549.Spec : Prop :=
  ∀ n, P9488996797979548549.a n = A395815 n

end A395815

/-! ## A395815.P8414334703881044201

`A001813(n)^3`
-/

namespace A395815.P8414334703881044201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001813 n ^ 3

end

end A395815.P8414334703881044201

namespace A395815

/-- `A001813(n)^3` -/
def P8414334703881044201.Spec : Prop :=
  ∀ n, P8414334703881044201.a n = A395815 n

end A395815

/-! ## A395815.P3679489142567402571

`A048854(∑[n])^3`
-/

namespace A395815.P3679489142567402571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048854 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A395815.P3679489142567402571

namespace A395815

/-- `A048854(∑[n])^3` -/
def P3679489142567402571.Spec : Prop :=
  ∀ n, P3679489142567402571.a n = A395815 n

end A395815

/-! ## A395815.P15013239861215318452

`A081125(2*n)^3`
-/

namespace A395815.P15013239861215318452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081125 (2 * n) ^ 3

end

end A395815.P15013239861215318452

namespace A395815

/-- `A081125(2*n)^3` -/
def P15013239861215318452.Spec : Prop :=
  ∀ n, P15013239861215318452.a n = A395815 n

end A395815

/-!
# A395817: Strictly increasing minimal sequence where consecutive terms can be added digit-by-digit without carrying in base 10.

The programs for A395817, the canonical program `A395817.P11063103629399214891` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395817 has offset 1).

The definition of A395817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395817.P11063103629399214891

`A135210(n+1)+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A395817

/-- `A135210(n+1)+1` -/
def P11063103629399214891.Spec : Prop :=
  ∀ n, P11063103629399214891.a n = A395817 (n + 1)

theorem P11063103629399214891.correct : P11063103629399214891.Spec := by
  intro n
  simp only [A395817, Nat.add_sub_cancel]

end A395817

/-! ## A395817.P5411677894979908930

`A007092(A102677(A032917(n+1))+n+1)`
-/

namespace A395817.P5411677894979908930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A102677 (A032917 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A395817.P5411677894979908930

namespace A395817

/-- `A007092(A102677(A032917(n+1))+n+1)` -/
def P5411677894979908930.Spec : Prop :=
  ∀ n, P5411677894979908930.a n = A395817 (n + 1)

end A395817

/-! ## A395817.P6134812411581607516

`A007092(n+1)%A272115(A001106(n+4))`
-/

namespace A395817.P6134812411581607516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007092 (n + 1)) (A272115 (A001106 (n + 4)).toNat)

end

end A395817.P6134812411581607516

namespace A395817

/-- `A007092(n+1)%A272115(A001106(n+4))` -/
def P6134812411581607516.Spec : Prop :=
  ∀ n, P6134812411581607516.a n = A395817 (n + 1)

end A395817

/-!
# A395818: Consider the square spiral with its cells numbered starting at 0. Two players, Black and Red, take turns. When it is Black's turn, he places a knight at the smallest unoccupied cell not attacked by an existing Red knight, and when it is Red's turn, she places a knight at the smallest unoccupied cell not attacked by an existing Black knight. a(n) gives, among the first n pieces, the number of Black pieces with a record index when placed minus the number of Red pieces with a record index when placed.

The programs for A395818, there is no canonical definition to state claims against.
-/

/-! ## A395818.P9134924525280153477

`A340102(A077957(n))+A234309(n+1)`
-/

namespace A395818.P9134924525280153477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340102 (A077957 n).toNat + A234309 (n + 1)

end

end A395818.P9134924525280153477

/-!
# A395820: a(n) is the largest k such that k*(k+1)/2 | n^n.

The programs for A395820, there is no canonical definition to state claims against.
-/

/-! ## A395820.P12725444465317764913

`A083312(A061537(n+1))`
-/

namespace A395820.P12725444465317764913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083312 (A061537 (n + 1)).toNat

end

end A395820.P12725444465317764913

/-! ## A395820.P9374554150122106345

`A083312(A062509(n+1))`
-/

namespace A395820.P9374554150122106345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083312 (A062509 (n + 1)).toNat

end

end A395820.P9374554150122106345

/-! ## A395820.P15264162348517488166

`A083312(A078599(n+1))`
-/

namespace A395820.P15264162348517488166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083312 (A078599 (n + 1)).toNat

end

end A395820.P15264162348517488166

/-! ## A395820.P13290589460516804377

`A083312(A133900(n+1))`
-/

namespace A395820.P13290589460516804377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083312 (A133900 (n + 1)).toNat

end

end A395820.P13290589460516804377

/-! ## A395820.P7497265546091422852

`A083312(A144872(n+1))`
-/

namespace A395820.P7497265546091422852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083312 (A144872 (n + 1)).toNat

end

end A395820.P7497265546091422852

/-!
# A395827: a(n) is the number of possible outcomes having a run of 2 or more sixes when a die is rolled n times.

The programs for A395827, the canonical program `A395827.P16679499213790510204` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395827 has offset 0).

The definition of A395827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395827.P16679499213790510204

`6^n-A180033(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A395827

/-- `6^n-A180033(n)` -/
def P16679499213790510204.Spec : Prop :=
  ∀ n, P16679499213790510204.a n = A395827 n

theorem P16679499213790510204.correct : P16679499213790510204.Spec := by
  intro n
  simp only [A395827]

end A395827

/-!
# A395828: Number of septenary strings of length n that contain a specific string xx (where x is a single digit).

The programs for A395828, the canonical program `A395828.P2810719931447247323` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395828 has offset 0).

The definition of A395828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395828.P2810719931447247323

`7^n-A180167(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A395828

/-- `7^n-A180167(n)` -/
def P2810719931447247323.Spec : Prop :=
  ∀ n, P2810719931447247323.a n = A395828 n

theorem P2810719931447247323.correct : P2810719931447247323.Spec := by
  intro n
  simp only [A395828]

end A395828

/-!
# A395829: Number of octal strings of length n that contain a specific string xx (where x is a single digit).

The programs for A395829, the canonical program `A395829.P11120994273887423255` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395829 has offset 0).

The definition of A395829 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395831, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A395829.P11120994273887423255

`8^n-A395831(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A395829

/-- `8^n-A395831(n)` -/
def P11120994273887423255.Spec : Prop :=
  ∀ n, P11120994273887423255.a n = A395829 n

theorem P11120994273887423255.correct : P11120994273887423255.Spec := by
  intro n
  simp only [A395829]

end A395829

/-!
# A395830: Number of hexadecimal strings of length n that contain a specific string xx (where x is a single digit).

The programs for A395830, there is no canonical definition to state claims against.
-/

/-! ## A395830.P1699781659228115234

`16^n-A395832(n)`
-/

namespace A395830.P1699781659228115234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 ^ n : ℤ) - A395832 n

end

end A395830.P1699781659228115234

/-!
# A395831: Number of octal strings of length n that do not contain a specific string xx (where x is a single digit).

The programs for A395831, the canonical program `A395831.P4522594969490723447` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395831 has offset 0).

The definition of A395831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395831.P8969502115493771492

`8^n-A395829(n)`
-/

namespace A395831.P8969502115493771492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) - A395829 n

end

end A395831.P8969502115493771492

namespace A395831

/-- `8^n-A395829(n)` -/
def P8969502115493771492.Spec : Prop :=
  ∀ n, P8969502115493771492.a n = A395831 n

end A395831

/-! ## A395831.P5367024056611957966

`ogf((1+x)/(1-7x-7x^2))`
-/

namespace A395831.P5367024056611957966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -7, -7] n

end

end A395831.P5367024056611957966

namespace A395831

/-- `ogf((1+x)/(1-7x-7x^2))` -/
def P5367024056611957966.Spec : Prop :=
  ∀ n, P5367024056611957966.a n = A395831 n

end A395831

/-! ## A395831.P4522594969490723447

`7*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A395831

/-- `7*(a(n-1)+a(n-2))` -/
def P4522594969490723447.Spec : Prop :=
  ∀ n, (P4522594969490723447.a n : ℤ) = A395831 n

theorem P4522594969490723447.correct : P4522594969490723447.Spec := by
  intro n
  simp only [A395831]

end A395831

/-! ## A395831.P10598274016419348780

`A301402(n+1)/4`
-/

namespace A395831.P10598274016419348780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301402 (n + 1) : ℚ) / 4

end

end A395831.P10598274016419348780

namespace A395831

/-- `A301402(n+1)/4` -/
def P10598274016419348780.Spec : Prop :=
  ∀ n, P10598274016419348780.a n = (A395831 n : ℚ)

end A395831

/-! ## A395831.P417589406479396274

`A155130(n+1)/6`
-/

namespace A395831.P417589406479396274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155130 (n + 1) : ℚ) / 6

end

end A395831.P417589406479396274

namespace A395831

/-- `A155130(n+1)/6` -/
def P417589406479396274.Spec : Prop :=
  ∀ n, P417589406479396274.a n = (A395831 n : ℚ)

end A395831

/-! ## A395831.P15846430827198181888

`A057090(n+1)/7`
-/

namespace A395831.P15846430827198181888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057090 (n + 1) : ℚ) / 7

end

end A395831.P15846430827198181888

namespace A395831

/-- `A057090(n+1)/7` -/
def P15846430827198181888.Spec : Prop :=
  ∀ n, P15846430827198181888.a n = (A395831 n : ℚ)

end A395831

/-!
# A395832: Number of hexadecimal strings of length n that do not contain a specific string xx (where x is a single digit).

The programs for A395832, there is no canonical definition to state claims against.
-/

/-! ## A395832.P8340300793960384826

`16^n-A395830(n)`
-/

namespace A395832.P8340300793960384826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 ^ n : ℤ) - A395830 n

end

end A395832.P8340300793960384826

/-! ## A395832.P1538237766821388229

`ogf((1+x)/(1-15x-15x^2))`
-/

namespace A395832.P1538237766821388229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -15, -15] n

end

end A395832.P1538237766821388229

/-! ## A395832.P2270504092103478576

`15*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=16`
-/

namespace A395832.P2270504092103478576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n a =>
  15 * (a (n - 1) + a (n - 2))

end

end A395832.P2270504092103478576

/-!
# A395833: G.f. A(x) satisfies [x^n] A( x/A(x)^(2*n-1) ) = 0 for n > 1.

The programs for A395833, there is no canonical definition to state claims against.
-/

/-! ## A395833.P4958627833943251275

`A184242(A151090(n))`
-/

namespace A395833.P4958627833943251275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184242 (A151090 n).toNat

end

end A395833.P4958627833943251275

/-!
# A395835: Define F(n,x) as the power series in x satisfying F(n,x) = 1 + x*F(n,x)^2 - x^n*F(n,x)^(2*n), then for n >= 2, a(n) = M where x^M is the first power of x with a negative coefficient in F(n,x). Should no such M exist for some n, then there are no further terms and this sequence would be finite.

The programs for A395835, there is no canonical definition to state claims against.
-/

/-! ## A395835.P12055487906559602460

`∑[A395838(n+2)]`
-/

namespace A395835.P12055487906559602460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395838 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A395835.P12055487906559602460

/-! ## A395835.P6636711348822330952

`A391538(n+3)+A000757(A001156(n))`
-/

namespace A395835.P6636711348822330952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391538 (n + 3) + A000757 (A001156 n).toNat

end

end A395835.P6636711348822330952

/-! ## A395835.P8841882605537556423

`A003059(A134918(A003059(A341400(A134918(n+1)))))`
-/

namespace A395835.P8841882605537556423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A134918 (A003059 (A341400 (A134918 (n + 1)).toNat).toNat).toNat).toNat

end

end A395835.P8841882605537556423

/-! ## A395835.P9149195042381629882

`A243196(A025715(n))`
-/

namespace A395835.P9149195042381629882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243196 (A025715 n).toNat

end

end A395835.P9149195042381629882

/-! ## A395835.P19380437429688443

`A360924(A259577(n+2))`
-/

namespace A395835.P19380437429688443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360924 (A259577 (n + 2)).toNat

end

end A395835.P19380437429688443

/-!
# A395839: G.f. 10*C(x)^2 - C(x), where C(x) = 1 + x*C(x)^2 is the g.f. of the Catalan numbers (A000108).

The programs for A395839, there is no canonical definition to state claims against.
-/

/-! ## A395839.P1843793885287197026

`A212345(n+4)+A000245(n)`
-/

namespace A395839.P1843793885287197026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212345 (n + 4) + A000245 n

end

end A395839.P1843793885287197026

/-! ## A395839.P6056402320701049442

`A212344(n+4)+A212344(n+4)-A000108(n)`
-/

namespace A395839.P6056402320701049442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212344 (n + 4) + (A212344 (n + 4) - A000108 n)

end

end A395839.P6056402320701049442

/-!
# A395841: G.f. satisfies A(x) = sqrt( (1/x)*Series_Reversion( x/(1 + x*A(x)^3 + 2*x^2*A(x)^2*A'(x))^2 ) ).

The programs for A395841, there is no canonical definition to state claims against.
-/

/-! ## A395841.P7228612362143643145

`A332638(A256111(n))`
-/

namespace A395841.P7228612362143643145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332638 (A256111 n).toNat

end

end A395841.P7228612362143643145

/-!
# A395851: Divisors of the order of the Janko group J_4, |J_4| = 86775571046077562880.

The programs for A395851, there is no canonical definition to state claims against.
-/

/-! ## A395851.P15386313505680338125

`comp[lt[A280267(2*(n+1)), A162663(n)]]`
-/

namespace A395851.P15386313505680338125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280267 (2 * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A395851.P15386313505680338125

/-!
# A395852: Divisors of the order of the Tits group, |T| = 17971200.

The programs for A395852, there is no canonical definition to state claims against.
-/

/-! ## A395852.P819613487864988668

`A068095(n+1)%A002764(n)`
-/

namespace A395852.P819613487864988668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068095 (n + 1)) (A002764 n)

end

end A395852.P819613487864988668

/-! ## A395852.P1374048361765123121

`and(A068095(n+1), A359082(n+1))`
-/

namespace A395852.P1374048361765123121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068095 (n + 1)) (A359082 (n + 1))

end

end A395852.P1374048361765123121

/-! ## A395852.P4168641327400805168

`and(A068095(n+1), A117060(n+1))`
-/

namespace A395852.P4168641327400805168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068095 (n + 1)) (A117060 (n + 1))

end

end A395852.P4168641327400805168

/-! ## A395852.P8481040432578097143

`and(A068095(n+1), A145038(n+1))`
-/

namespace A395852.P8481040432578097143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068095 (n + 1)) (A145038 (n + 1))

end

end A395852.P8481040432578097143

/-! ## A395852.P2412672334315998453

`∩[A068095(n+1), A123068(n+1)]`
-/

namespace A395852.P2412672334315998453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395852.P2412672334315998453

/-!
# A395862: Triangle read by rows: T(n,k) = numerator(CF(n,k)), where CF(n,k) = (1/k!) * Sum_{j=0..k} (-1)^j * binomial(k,j) * (k/2-j)^n.

The programs for A395862, there is no canonical definition to state claims against.
-/

/-! ## A395862.P16804871889481074539

`A109375(A136630(n))`
-/

namespace A395862.P16804871889481074539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109375 (A136630 n).toNat

end

end A395862.P16804871889481074539

/-! ## A395862.P1971336524226482934

`A000120(A136630(n)^A002260(n+1))`
-/

namespace A395862.P1971336524226482934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A136630 n : ℚ) ^ (A002260 (n + 1) : ℤ))).toNat

end

end A395862.P1971336524226482934

/-! ## A395862.P7486699959424813492

`A000120(A136630(n)^A000120(3*n+4))`
-/

namespace A395862.P7486699959424813492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A136630 n : ℚ) ^ (A000120 (3 * n + 4) : ℤ))).toNat

end

end A395862.P7486699959424813492

/-! ## A395862.P6171471865912060609

`A109375(A111594(n))`
-/

namespace A395862.P6171471865912060609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109375 (A111594 n).toNat

end

end A395862.P6171471865912060609

/-! ## A395862.P6771523453932984276

`A096995(A272774(n))`
-/

namespace A395862.P6771523453932984276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096995 (A272774 n).toNat

end

end A395862.P6771523453932984276

/-!
# A395864: Number of not-necessarily-reduced pipe dreams that represent the identity permutation.

The programs for A395864, there is no canonical definition to state claims against.
-/

/-! ## A395864.P6281338494515450115

`A078295(A148454(n))`
-/

namespace A395864.P6281338494515450115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078295 (A148454 n).toNat

end

end A395864.P6281338494515450115

/-! ## A395864.P635177800989068799

`A025496(A330474(n)-1)`
-/

namespace A395864.P635177800989068799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025496 (A330474 n - 1).toNat

end

end A395864.P635177800989068799

/-!
# A395867: Number of oriented polyominoes in the {3,7} tessellation of the hyperbolic plane.

The programs for A395867, there is no canonical definition to state claims against.
-/

/-! ## A395867.P5628621103620388219

`A197460(n^A156080(n+1))`
-/

namespace A395867.P5628621103620388219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197460 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A156080 (n + 1) : ℤ))).toNat

end

end A395867.P5628621103620388219

/-!
# A395868: Number of oriented polyominoes in the {3,8} tessellation of the hyperbolic plane.

The programs for A395868, there is no canonical definition to state claims against.
-/

/-! ## A395868.P2381429617539036333

`filter[A001683(n+3), A137794(#)]`
-/

namespace A395868.P2381429617539036333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001683 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A395868.P2381429617539036333

/-! ## A395868.P4020395296692284531

`filter[A001683(n+3), A165211(#)]`
-/

namespace A395868.P4020395296692284531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001683 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165211 (f1 j).toNat = 1) n)

end

end A395868.P4020395296692284531

/-! ## A395868.P1246165869716501835

`filter[A001683(n+3), A178788(#)]`
-/

namespace A395868.P1246165869716501835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001683 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A395868.P1246165869716501835

/-! ## A395868.P4550066238079090690

`filter[A001683(n+3), A236862(#)]`
-/

namespace A395868.P4550066238079090690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001683 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A236862 (f1 j).toNat = 1) n)

end

end A395868.P4550066238079090690

/-!
# A395869: Number of oriented polyominoes in the {4,5} tessellation of the hyperbolic plane.

The programs for A395869, there is no canonical definition to state claims against.
-/

/-! ## A395869.P5246184489353651019

`A390194(n+1)+A119611(n+1)`
-/

namespace A395869.P5246184489353651019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390194 (n + 1) + A119611 (n + 1)

end

end A395869.P5246184489353651019

/-! ## A395869.P4287362114481839652

`A076885(A150359(n))`
-/

namespace A395869.P4287362114481839652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A150359 n).toNat

end

end A395869.P4287362114481839652

/-! ## A395869.P11623105513052983529

`A373712(A327808(n))+A351049(n)`
-/

namespace A395869.P11623105513052983529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373712 (A327808 n).toNat + A351049 n

end

end A395869.P11623105513052983529

/-!
# A395870: Number of oriented polyominoes in the {4,6} tessellation of the hyperbolic plane.

The programs for A395870, there is no canonical definition to state claims against.
-/

/-! ## A395870.P17744751505019483667

`A247781(A150806(n))`
-/

namespace A395870.P17744751505019483667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247781 (A150806 n).toNat

end

end A395870.P17744751505019483667

/-! ## A395870.P4181156536437096292

`A276798(A150945(n))`
-/

namespace A395870.P4181156536437096292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A150945 n).toNat

end

end A395870.P4181156536437096292

/-!
# A395871: Number of oriented polyominoes in the {4,7} tessellation of the hyperbolic plane.

The programs for A395871, there is no canonical definition to state claims against.
-/

/-! ## A395871.P1507256781965210921

`A005034(A037442(n+1))`
-/

namespace A395871.P1507256781965210921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005034 (A037442 (n + 1)).toNat

end

end A395871.P1507256781965210921

/-! ## A395871.P455162557142679483

`A005034(A065666(n+1))`
-/

namespace A395871.P455162557142679483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005034 (A065666 (n + 1)).toNat

end

end A395871.P455162557142679483

/-! ## A395871.P11544579865735684287

`A005034(A073789(n+1))`
-/

namespace A395871.P11544579865735684287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005034 (A073789 (n + 1)).toNat

end

end A395871.P11544579865735684287

/-!
# A395872: Number of oriented polyominoes in the {4,8} tessellation of the hyperbolic plane.

The programs for A395872, there is no canonical definition to state claims against.
-/

/-! ## A395872.P12259315531751827076

`A004151(A005034(n+1))`
-/

namespace A395872.P12259315531751827076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A005034 (n + 1)).toNat

end

end A395872.P12259315531751827076

/-! ## A395872.P6855308970328725279

`A005034(A037336(n+1))`
-/

namespace A395872.P6855308970328725279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005034 (A037336 (n + 1)).toNat

end

end A395872.P6855308970328725279

/-! ## A395872.P7285344861056261378

`A005034(A037443(n+1))`
-/

namespace A395872.P7285344861056261378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005034 (A037443 (n + 1)).toNat

end

end A395872.P7285344861056261378

/-! ## A395872.P7939546039604047364

`A005034(A073790(n+1))`
-/

namespace A395872.P7939546039604047364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005034 (A073790 (n + 1)).toNat

end

end A395872.P7939546039604047364

/-!
# A395874: Number of oriented polyominoes in the {5,5} tessellation of the hyperbolic plane.

The programs for A395874, there is no canonical definition to state claims against.
-/

/-! ## A395874.P3667199509314184319

`A100036(A330455(n))`
-/

namespace A395874.P3667199509314184319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100036 (A330455 n).toNat

end

end A395874.P3667199509314184319

/-!
# A395875: Number of oriented polyominoes in the {5,6} tessellation of the hyperbolic plane.

The programs for A395875, there is no canonical definition to state claims against.
-/

/-! ## A395875.P7598302488363253018

`A005038(n+1)-A334045(A371832(n))`
-/

namespace A395875.P7598302488363253018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005038 (n + 1) - A334045 (A371832 n).toNat

end

end A395875.P7598302488363253018

/-!
# A395878: Number of oriented polyominoes in the {6,4} tessellation of the hyperbolic plane.

The programs for A395878, there is no canonical definition to state claims against.
-/

/-! ## A395878.P8399265707132192934

`A107977(a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A395878.P8399265707132192934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A107977 (a (n - 1)).toNat

end

end A395878.P8399265707132192934

/-!
# A395879: Number of oriented polyominoes in the {6,5} tessellation of the hyperbolic plane.

The programs for A395879, there is no canonical definition to state claims against.
-/

/-! ## A395879.P13082810974693420798

`A215810(A148882(n))`
-/

namespace A395879.P13082810974693420798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215810 (A148882 n).toNat

end

end A395879.P13082810974693420798

/-!
# A395883: Number of oriented polyominoes in the {7,3} tessellation of the hyperbolic plane.

The programs for A395883, there is no canonical definition to state claims against.
-/

/-! ## A395883.P18152194710859573383

`A000261(n+1)+A000030(A000186(n))`
-/

namespace A395883.P18152194710859573383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000261 (n + 1) + A000030 (A000186 n).toNat

end

end A395883.P18152194710859573383

/-!
# A395884: Number of oriented polyominoes in the {7,4} tessellation of the hyperbolic plane.

The programs for A395884, there is no canonical definition to state claims against.
-/

/-! ## A395884.P17112586527415348009

`A127123(A045655(n))`
-/

namespace A395884.P17112586527415348009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127123 (A045655 n).toNat

end

end A395884.P17112586527415348009

/-!
# A395885: Number of oriented polyominoes in the {7,5} tessellation of the hyperbolic plane.

The programs for A395885, there is no canonical definition to state claims against.
-/

/-! ## A395885.P17850217484520574078

`∏{p}[(2*n)!, #]-∑{d}[n, #]`
-/

namespace A395885.P17850217484520574078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A395885.P17850217484520574078

/-!
# A395886: Number of oriented polyominoes in the {7,6} tessellation of the hyperbolic plane.

The programs for A395886, there is no canonical definition to state claims against.
-/

/-! ## A395886.P15071204967602100331

`filter[A389561(n+1), A022930(#)]`
-/

namespace A395886.P15071204967602100331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022930 (f1 j).toNat = 1) n)

end

end A395886.P15071204967602100331

/-! ## A395886.P7584151209343569797

`A389561(∑[A005072(n+1)+1])`
-/

namespace A395886.P7584151209343569797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005072 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389561 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A395886.P7584151209343569797

/-!
# A395887: Number of oriented polyominoes in the {7,7} tessellation of the hyperbolic plane.

The programs for A395887, there is no canonical definition to state claims against.
-/

/-! ## A395887.P775395592295474900

`filter[A389561(n+1), A011558(#)]`
-/

namespace A395887.P775395592295474900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A395887.P775395592295474900

/-! ## A395887.P11089542240442305075

`filter[A389561(n+1), A093521(#)]`
-/

namespace A395887.P11089542240442305075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093521 (f1 j).toNat = 1) n)

end

end A395887.P11089542240442305075

/-! ## A395887.P4519828464984510404

`filter[A389561(n+1), A097325(#)]`
-/

namespace A395887.P4519828464984510404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A395887.P4519828464984510404

/-!
# A395888: Number of oriented polyominoes in the {7,8} tessellation of the hyperbolic plane.

The programs for A395888, there is no canonical definition to state claims against.
-/

/-! ## A395888.P16457177368627266177

`A389561(A257814(n+1)-1)`
-/

namespace A395888.P16457177368627266177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389561 (A257814 (n + 1) - 1).toNat

end

end A395888.P16457177368627266177

/-! ## A395888.P7659577899622024203

`A389561(n+1)+A078771(A060905(n))`
-/

namespace A395888.P7659577899622024203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389561 (n + 1) + A078771 (A060905 n).toNat

end

end A395888.P7659577899622024203

/-! ## A395888.P7450067397673650970

`A389561(A389561(A295259(n+1))+n)`
-/

namespace A395888.P7450067397673650970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389561 (A389561 (A295259 (n + 1)).toNat + (n : ℤ)).toNat

end

end A395888.P7450067397673650970

/-! ## A395888.P3422786179026313562

`A003989(A000142(n))*A389561(n+1)`
-/

namespace A395888.P3422786179026313562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A000142 n).toNat * A389561 (n + 1)

end

end A395888.P3422786179026313562

/-!
# A395890: Number of oriented polyominoes in the {8,4} tessellation of the hyperbolic plane.

The programs for A395890, there is no canonical definition to state claims against.
-/

/-! ## A395890.P11084703974930122111

`A212295(A139597(n))`
-/

namespace A395890.P11084703974930122111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212295 (A139597 n).toNat

end

end A395890.P11084703974930122111

/-!
# A395891: Number of oriented polyominoes in the {8,5} tessellation of the hyperbolic plane.

The programs for A395891, there is no canonical definition to state claims against.
-/

/-! ## A395891.P842927816260764649

`A154618(a(n-1))-(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A395891.P842927816260764649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A154618 (a (n - 1)).toNat - (n + 1 : ℤ)

end

end A395891.P842927816260764649

/-!
# A395892: Number of oriented polyominoes in the {8,6} tessellation of the hyperbolic plane.

The programs for A395892, there is no canonical definition to state claims against.
-/

/-! ## A395892.P4793360129182740703

`A250244(A394862(n+1))`
-/

namespace A395892.P4793360129182740703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250244 (A394862 (n + 1)).toNat

end

end A395892.P4793360129182740703

/-! ## A395892.P5561927924892272483

`A394862(∑[A290300(n)²])`
-/

namespace A395892.P5561927924892272483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290300 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394862 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A395892.P5561927924892272483

/-!
# A395893: Number of oriented polyominoes in the {8,7} tessellation of the hyperbolic plane.

The programs for A395893, there is no canonical definition to state claims against.
-/

/-! ## A395893.P2275948832334937494

`A394862(A327111(n+1)-1)`
-/

namespace A395893.P2275948832334937494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394862 (A327111 (n + 1) - 1).toNat

end

end A395893.P2275948832334937494

/-! ## A395893.P10614622346260502531

`A394862(A360540(n+1)+n)`
-/

namespace A395893.P10614622346260502531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394862 (A360540 (n + 1) + (n : ℤ)).toNat

end

end A395893.P10614622346260502531

/-! ## A395893.P11442329075317419795

`filter[A389936(n+1), A005171(#)]`
-/

namespace A395893.P11442329075317419795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A395893.P11442329075317419795

/-!
# A395894: Number of oriented polyominoes in the {9,3} tessellation of the hyperbolic plane.

The programs for A395894, there is no canonical definition to state claims against.
-/

/-! ## A395894.P8699423691075691248

`floor(A319781(3*n)/7)+1`
-/

namespace A395894.P8699423691075691248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A319781 (3 * n) : ℚ) / 7⌋ + 1

end

end A395894.P8699423691075691248

/-!
# A395895: Number of nonperiodic autocorrelation functions of length n {-1,0,1} sequences.

The programs for A395895, there is no canonical definition to state claims against.
-/

/-! ## A395895.P9837035706866684970

`A007078(A024557(n))`
-/

namespace A395895.P9837035706866684970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007078 (A024557 n).toNat

end

end A395895.P9837035706866684970

/-! ## A395895.P11484727831009015467

`A375581(∑[∑[A124791(n)]])`
-/

namespace A395895.P11484727831009015467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124791 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375581 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A395895.P11484727831009015467

/-!
# A395896: Number of k < m^2 such that both rad(k) and rad(k+1) divide m, where rad = A007947 and m = A019565(n).

The programs for A395896, there is no canonical definition to state claims against.
-/

/-! ## A395896.P13567568258002671463

`A395754(A246353(n))`
-/

namespace A395896.P13567568258002671463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395754 (A246353 n).toNat

end

end A395896.P13567568258002671463

/-!
# A395897: a(n) = Sum_{1 <= i < j < k <= n} ( n!/(i*j*k) )^4.

The programs for A395897, there is no canonical definition to state claims against.
-/

/-! ## A395897.P2191129021435016854

`∑[n^4]^a(n-1)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A395897.P2191129021435016854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ a (n - 1)

end

end A395897.P2191129021435016854

/-!
# A395899: Sphenic numbers k = p*q*r, primes p < q < r, such that r < p^3.

The programs for A395899, there is no canonical definition to state claims against.
-/

/-! ## A395899.P9636306246489694182

`filter[A393644(n+1), A354926(#)]`
-/

namespace A395899.P9636306246489694182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A395899.P9636306246489694182

/-! ## A395899.P6613518139922478596

`filter[A393644(n+1), A358753(#)]`
-/

namespace A395899.P6613518139922478596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A395899.P6613518139922478596

/-! ## A395899.P2225441583350289477

`∩[A007304(n+1), A393644(n+1)]`
-/

namespace A395899.P2225441583350289477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P2225441583350289477

/-! ## A395899.P15205319800981169103

`∩[A345382(n+1), A393644(n+1)]`
-/

namespace A395899.P15205319800981169103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P15205319800981169103

/-! ## A395899.P9504681413488404200

`∩[A225228(n+1), A393644(n+1)]`
-/

namespace A395899.P9504681413488404200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P9504681413488404200

/-! ## A395899.P10709327539795181

`∩[A030626(n+1), A393644(n+1)]`
-/

namespace A395899.P10709327539795181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P10709327539795181

/-! ## A395899.P2544571661039136177

`∩[A111398(n+1), A393644(n+1)]`
-/

namespace A395899.P2544571661039136177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P2544571661039136177

/-! ## A395899.P951534779935296593

`∩[A014612(n+1), A393644(n+1)]`
-/

namespace A395899.P951534779935296593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P951534779935296593

/-! ## A395899.P11580591438357519671

`∩[A217856(n+1), A393644(n+1)]`
-/

namespace A395899.P11580591438357519671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P11580591438357519671

/-! ## A395899.P11735986006751203866

`∩[A358763(n+1), A393644(n+1)]`
-/

namespace A395899.P11735986006751203866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P11735986006751203866

/-! ## A395899.P11744673166446562483

`∩[A036456(n+1), A393644(n+1)]`
-/

namespace A395899.P11744673166446562483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P11744673166446562483

/-! ## A395899.P14823205274859045716

`∩[A182859(n+1), A393644(n+1)]`
-/

namespace A395899.P14823205274859045716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P14823205274859045716

/-! ## A395899.P13279752892727990382

`∩[A123193(n+1), A393644(n+1)]`
-/

namespace A395899.P13279752892727990382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P13279752892727990382

/-! ## A395899.P10938968390425056755

`∩[A298207(n+1), A393644(n+1)]`
-/

namespace A395899.P10938968390425056755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P10938968390425056755

/-! ## A395899.P17931168901186771373

`∩[A033992(n+1), A393644(n+1)]`
-/

namespace A395899.P17931168901186771373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P17931168901186771373

/-! ## A395899.P3177266436305931841

`∩[A214195(n+1), A393644(n+1)]`
-/

namespace A395899.P3177266436305931841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P3177266436305931841

/-! ## A395899.P1017661901179197001

`filter[A393644(n+1), A101605(#)]`
-/

namespace A395899.P1017661901179197001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A395899.P1017661901179197001

/-! ## A395899.P4571661767051669269

`filter[A393644(n+1), A122895(#)]`
-/

namespace A395899.P4571661767051669269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122895 (f1 j).toNat = 1) n)

end

end A395899.P4571661767051669269

/-! ## A395899.P2532389435312473200

`filter[A393644(n+1), A262683(#)]`
-/

namespace A395899.P2532389435312473200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262683 (f1 j).toNat = 1) n)

end

end A395899.P2532389435312473200

/-! ## A395899.P15951953888963065537

`∩[A139588(n+1), A393644(n+1)]`
-/

namespace A395899.P15951953888963065537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395899.P15951953888963065537

