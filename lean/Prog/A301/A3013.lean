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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A301300: Partial sums of A301299.

The programs for A301300, the canonical program `A301300.P2291985338386002746` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301300 has offset 0).

The definition of A301300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2590 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A301300.P2291985338386002746

`∑[A301299(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A301300

/-- `∑[A301299(n)]` -/
def P2291985338386002746.Spec : Prop :=
  ∀ n, P2291985338386002746.a n = A301300 n

theorem P2291985338386002746.correct : P2291985338386002746.Spec := by
  intro n
  simp only [A301300]

end A301300

/-! ## A301300.P6687491230649963260

`A301299(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A301300.P6687491230649963260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301299 n + a (A023443 n).toNat

end

end A301300.P6687491230649963260

namespace A301300

/-- `A301299(n)+a(A023443(n))` -/
def P6687491230649963260.Spec : Prop :=
  ∀ n, P6687491230649963260.a n = A301300 n

end A301300

/-! ## A301300.P3007692682793081850

`a(n-1)+A301299(n)+A000007(n)` with `a(0)=1`
-/

namespace A301300.P3007692682793081850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A301299 n + A000007 n)

end

end A301300.P3007692682793081850

namespace A301300

/-- `a(n-1)+A301299(n)+A000007(n)` -/
def P3007692682793081850.Spec : Prop :=
  ∀ n, P3007692682793081850.a n = A301300 n

end A301300

/-! ## A301300.P9401070047776004917

`a(n-1)+A057427(n)*A301299(n)` with `a(0)=1`
-/

namespace A301300.P9401070047776004917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A301299 n

end

end A301300.P9401070047776004917

namespace A301300

/-- `a(n-1)+A057427(n)*A301299(n)` -/
def P9401070047776004917.Spec : Prop :=
  ∀ n, P9401070047776004917.a n = A301300 n

end A301300

/-! ## A301300.P4539558345630951270

`∑[A265227(n+1)+A004525(A315213(n))]`
-/

namespace A301300.P4539558345630951270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + A004525 (A315213 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301300.P4539558345630951270

namespace A301300

/-- `∑[A265227(n+1)+A004525(A315213(n))]` -/
def P4539558345630951270.Spec : Prop :=
  ∀ n, P4539558345630951270.a n = A301300 n

end A301300

/-! ## A301300.P18206166411019750539

`∑[A265227(n+1)+A004525(A315373(n))]`
-/

namespace A301300.P18206166411019750539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + A004525 (A315373 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301300.P18206166411019750539

namespace A301300

/-- `∑[A265227(n+1)+A004525(A315373(n))]` -/
def P18206166411019750539.Spec : Prop :=
  ∀ n, P18206166411019750539.a n = A301300 n

end A301300

/-!
# A301301: Coordination sequence for node of type V2 in "krq" 2-D tiling (or net).

The programs for A301301, there is no canonical definition to state claims against.
-/

/-! ## A301301.P1633559776334132708

`A311202(n)-A185284(A016777(n))`
-/

namespace A301301.P1633559776334132708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311202 n - A185284 (A016777 n).toNat

end

end A301301.P1633559776334132708

/-! ## A301301.P2371953042190532535

`xor(A311445(n), A328979(A246747(n)))`
-/

namespace A301301.P2371953042190532535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A311445 n) (A328979 (A246747 n).toNat)

end

end A301301.P2371953042190532535

/-! ## A301301.P6306107721302144046

`A311198(n)+A179801(A000124(n+1))`
-/

namespace A301301.P6306107721302144046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311198 n + A179801 (A000124 (n + 1)).toNat

end

end A301301.P6306107721302144046

/-! ## A301301.P12032703456633323471

`A311202(n)+A178798(A006307(n+1))`
-/

namespace A301301.P12032703456633323471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311202 n + A178798 (A006307 (n + 1)).toNat

end

end A301301.P12032703456633323471

/-! ## A301301.P7117331689299472495

`A311202(n)-A011734(A146040(n+2))`
-/

namespace A301301.P7117331689299472495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311202 n - A011734 (A146040 (n + 2)).toNat

end

end A301301.P7117331689299472495

/-!
# A301302: Partial sums of A301301.

The programs for A301302, there is no canonical definition to state claims against.
-/

/-! ## A301302.P10133337055879874976

`∑[A301301(n)]`
-/

namespace A301302.P10133337055879874976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301302.P10133337055879874976

/-! ## A301302.P1372461777393049250

`A301301(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A301302.P1372461777393049250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301301 n + a (A023443 n).toNat

end

end A301302.P1372461777393049250

/-! ## A301302.P17706629240797357383

`A301301(n)+a(n-A057979(2*n))` with `a(0)=1`
-/

namespace A301302.P17706629240797357383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A301301 n + a ((n : ℤ) - A057979 (2 * n)).toNat

end

end A301302.P17706629240797357383

/-! ## A301302.P17623399885319950184

`a(n-1)-A057428(A085099(n+1))*A301301(n)` with `a(0)=1, a(1)=5`
-/

namespace A301302.P17623399885319950184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) - A057428 (A085099 (n + 1)).toNat * A301301 n

end

end A301302.P17623399885319950184

/-! ## A301302.P2948866914078983111

`a(n-1)+A014963(A016825(n))*A301301(n)` with `a(0)=1, a(1)=5`
-/

namespace A301302.P2948866914078983111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + A014963 (A016825 n).toNat * A301301 n

end

end A301302.P2948866914078983111

/-!
# A301304: Number of ways to write n as x^2 + y^2 + z^2 + w^2 with x >= y >= 0 <= z <= w such that x^2 + 7*y^2 = 2^k*m for some k = 0,1,2 and m = 1,2,3,....

The programs for A301304, there is no canonical definition to state claims against.
-/

/-! ## A301304.P16949325130477310650

`A073810(A332726(n)+A271320(n+2))`
-/

namespace A301304.P16949325130477310650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073810 (A332726 n + A271320 (n + 2)).toNat

end

end A301304.P16949325130477310650

/-! ## A301304.P6495265196751293938

`A050600(A103517(n)*A185417(n+1))`
-/

namespace A301304.P6495265196751293938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 (A103517 n * A185417 (n + 1)).toNat

end

end A301304.P6495265196751293938

/-! ## A301304.P11403276497940184214

`A001221(A350152(n+3)+A000129(n))`
-/

namespace A301304.P11403276497940184214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A350152 (n + 3) + A000129 n).toNat

end

end A301304.P11403276497940184214

/-! ## A301304.P9075078371639994474

`A324825(A202875(n+1)+A069246(2*n+1))`
-/

namespace A301304.P9075078371639994474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324825 (A202875 (n + 1) + A069246 (2 * n + 1)).toNat

end

end A301304.P9075078371639994474

/-! ## A301304.P16018001845098651213

`gcd(A001221(A100140(2*(n+2))), A362289(2*n+1))`
-/

namespace A301304.P16018001845098651213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A100140 (2 * (n + 2))).toNat) (A362289 (2 * n + 1))

end

end A301304.P16018001845098651213

/-!
# A301306: G.f.: Sum_{n>=0} (1 + (1+x)^n)^n * x^n.

The programs for A301306, there is no canonical definition to state claims against.
-/

/-! ## A301306.P9123803094889567993

`round(sqrt(A261750(n+1)+A248668(n+1)))`
-/

namespace A301306.P9123803094889567993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A261750 (n + 1) + A248668 (n + 1) : ℝ))

end

end A301306.P9123803094889567993

/-! ## A301306.P15306477749350912487

`A210692(a(n-1))+a(n-1)-floor(n/6)` with `a(0)=1`
-/

namespace A301306.P15306477749350912487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A210692 (a (n - 1)).toNat + a (n - 1) - ⌊(n : ℚ) / 6⌋

end

end A301306.P15306477749350912487

/-!
# A301313: a(n) = Sum_{p in P} binomial(H(2,p),2), where P is the set of partitions of n, and H(2,p) = number of hooks of size 2 in p.

The programs for A301313, there is no canonical definition to state claims against.
-/

/-! ## A301313.P8888875794049822518

`A302348(n)-∑[A182712(n)]`
-/

namespace A301313.P8888875794049822518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302348 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301313.P8888875794049822518

/-! ## A301313.P5222264664590509365

`A302348(n)-A024786(A028310(n))`
-/

namespace A301313.P5222264664590509365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302348 n - A024786 (A028310 n).toNat

end

end A301313.P5222264664590509365

/-! ## A301313.P14023942570819013043

`A096541(n)+A302348(n)-A194452(n)`
-/

namespace A301313.P14023942570819013043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 n + (A302348 n - A194452 n)

end

end A301313.P14023942570819013043

/-! ## A301313.P4943112272159468682

`A000041(n)+A302348(n)-A024786(n+2)`
-/

namespace A301313.P4943112272159468682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A302348 n - A024786 (n + 2))

end

end A301313.P4943112272159468682

/-! ## A301313.P1999216392169217657

`∑[A002865(n)]+A302348(n)-A024786(n+2)`
-/

namespace A301313.P1999216392169217657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A302348 n - A024786 (n + 2))

end

end A301313.P1999216392169217657

/-! ## A301313.P11936129214252091083

`A182712(n+1)+A302348(n)-A024786(n+1)`
-/

namespace A301313.P11936129214252091083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 (n + 1) + (A302348 n - A024786 (n + 1))

end

end A301313.P11936129214252091083

/-! ## A301313.P17990667024649915524

`A238343(A000217(n))+A302348(n)-A024786(n+2)`
-/

namespace A301313.P17990667024649915524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A000217 n).toNat + (A302348 n - A024786 (n + 2))

end

end A301313.P17990667024649915524

/-!
# A301314: Number of ways to write n as x^2 + y^2 + z^2 + w^2, where w is a positive integer and x,y,z are nonnegative integers such that x + 3*y + 9*z = 2^k*m^3 for some k,m = 0,1,2,....

The programs for A301314, there is no canonical definition to state claims against.
-/

/-! ## A301314.P15182857632267640522

`A134024(A110766(n+1)^A002264(n))`
-/

namespace A301314.P15182857632267640522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 (SequenceMachineLib.roundAway ((A110766 (n + 1) : ℚ) ^ (A002264 n : ℤ))).toNat

end

end A301314.P15182857632267640522

/-! ## A301314.P8116971953026526051

`A001511(A001826(n+1)+A001227(A248904(n+3)))`
-/

namespace A301314.P8116971953026526051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001826 (n + 1) + A001227 (A248904 (n + 3)).toNat).toNat

end

end A301314.P8116971953026526051

/-! ## A301314.P16344678810154793963

`A318434(A001826(n+1)^A008620(n))`
-/

namespace A301314.P16344678810154793963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318434 (SequenceMachineLib.roundAway ((A001826 (n + 1) : ℚ) ^ (A008620 n : ℤ))).toNat

end

end A301314.P16344678810154793963

/-! ## A301314.P15381826869080520140

`A322794(A001826(n+1)^A008620(n))`
-/

namespace A301314.P15381826869080520140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322794 (SequenceMachineLib.roundAway ((A001826 (n + 1) : ℚ) ^ (A008620 n : ℤ))).toNat

end

end A301314.P15381826869080520140

/-! ## A301314.P11914084281504236795

`A136480(A119584(n+1)*A151509(n))`
-/

namespace A301314.P11914084281504236795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A119584 (n + 1) * A151509 n).toNat

end

end A301314.P11914084281504236795

/-!
# A301315: Multiplicative with a(p^e) = prime(p) ^ a(e) (where prime(k) denotes the k-th prime number).

The programs for A301315, there is no canonical definition to state claims against.
-/

/-! ## A301315.P15394213477600633279

`A215456(A141566(n+1))`
-/

namespace A301315.P15394213477600633279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215456 (A141566 (n + 1)).toNat

end

end A301315.P15394213477600633279

/-! ## A301315.P12040545572200375232

`A051724(6*A141566(n+1))`
-/

namespace A301315.P12040545572200375232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (6 * A141566 (n + 1)).toNat

end

end A301315.P12040545572200375232

/-! ## A301315.P1214850192362184854

`A072963(8*A141566(n+1))`
-/

namespace A301315.P1214850192362184854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (8 * A141566 (n + 1)).toNat

end

end A301315.P1214850192362184854

/-! ## A301315.P1780497556430008054

`A139391(8*A141566(n+1))`
-/

namespace A301315.P1780497556430008054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139391 (8 * A141566 (n + 1)).toNat

end

end A301315.P1780497556430008054

/-! ## A301315.P10338949196889609028

`A064988(((n+1)²/∏{p}[n+1, #])^A066787(n+4))`
-/

namespace A301315.P10338949196889609028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (SequenceMachineLib.roundAway ((((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ (A066787 (n + 4) : ℤ))).toNat

end

end A301315.P10338949196889609028

/-!
# A301316: a(n) = ((n-1)! + 1) mod n^2.

The programs for A301316, the canonical program `A301316.P13176395556774522812` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301316 has offset 1).

The definition of A301316 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301316.P13176395556774522812

`(n!+1)%(n+1)²`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301316

/-- `(n!+1)%(n+1)²` -/
def P13176395556774522812.Spec : Prop :=
  ∀ n, (P13176395556774522812.a n : ℤ) = A301316 (n + 1)

theorem P13176395556774522812.correct : P13176395556774522812.Spec := by
  intro n
  simp only [A301316, Nat.add_sub_cancel]

end A301316

/-! ## A301316.P11586261997041870730

`A301317(n+1)%(n+1)²`
-/

namespace A301316.P11586261997041870730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301317 (n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A301316.P11586261997041870730

namespace A301316

/-- `A301317(n+1)%(n+1)²` -/
def P11586261997041870730.Spec : Prop :=
  ∀ n, P11586261997041870730.a n = A301316 (n + 1)

end A301316

/-! ## A301316.P6194977214563843088

`(A301317(n+1)+A000290(n+1))%A000290(n+1)`
-/

namespace A301316.P6194977214563843088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301317 (n + 1) + A000290 (n + 1)) (A000290 (n + 1))

end

end A301316.P6194977214563843088

namespace A301316

/-- `(A301317(n+1)+A000290(n+1))%A000290(n+1)` -/
def P6194977214563843088.Spec : Prop :=
  ∀ n, P6194977214563843088.a n = A301316 (n + 1)

end A301316

/-! ## A301316.P15121230854559701024

`(∏[ceil(abs(γ-n))]+1)%(n+1)²`
-/

namespace A301316.P15121230854559701024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j + 1) ((n + 1) ^ 2 : ℤ)

end

end A301316.P15121230854559701024

namespace A301316

/-- `(∏[ceil(abs(γ-n))]+1)%(n+1)²` -/
def P15121230854559701024.Spec : Prop :=
  ∀ n, P15121230854559701024.a n = A301316 (n + 1)

end A301316

/-! ## A301316.P2067564689462057448

`abs((A000142(n)-log2(1/2))%(n+1)²)`
-/

namespace A301316.P2067564689462057448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (SequenceMachineLib.roundAway ((A000142 n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))) ((n + 1) ^ 2 : ℤ)|

end

end A301316.P2067564689462057448

namespace A301316

/-- `abs((A000142(n)-log2(1/2))%(n+1)²)` -/
def P2067564689462057448.Spec : Prop :=
  ∀ n, P2067564689462057448.a n = A301316 (n + 1)

end A301316

/-!
# A301317: a(n) = (n-1)! + 1 mod n^3.

The programs for A301317, the canonical program `A301317.P11984798882409133037` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301317 has offset 1).

The definition of A301317 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301317.P11984798882409133037

`(n!+1)%((n+1)^3)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301317

/-- `(n!+1)%((n+1)^3)` -/
def P11984798882409133037.Spec : Prop :=
  ∀ n, (P11984798882409133037.a n : ℤ) = A301317 (n + 1)

theorem P11984798882409133037.correct : P11984798882409133037.Spec := by
  intro n
  simp only [A301317, Nat.add_sub_cancel]

end A301317

/-! ## A301317.P2019645768700077331

`(A000142(n)+1)%((n+1)^3)`
-/

namespace A301317.P2019645768700077331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 n + 1) ((n + 1) ^ 3 : ℤ)

end

end A301317.P2019645768700077331

namespace A301317

/-- `(A000142(n)+1)%((n+1)^3)` -/
def P2019645768700077331.Spec : Prop :=
  ∀ n, P2019645768700077331.a n = A301317 (n + 1)

end A301317

/-! ## A301317.P2618426231052759882

`A038507(n)%((n+1)*(n+1)²)`
-/

namespace A301317.P2618426231052759882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038507 n) ((n + 1) * (n + 1) ^ 2 : ℤ)

end

end A301317.P2618426231052759882

namespace A301317

/-- `A038507(n)%((n+1)*(n+1)²)` -/
def P2618426231052759882.Spec : Prop :=
  ∀ n, P2618426231052759882.a n = A301317 (n + 1)

end A301317

/-! ## A301317.P17747712462590191751

`A066847(C(n, 2))%Δ[A000537(n)]`
-/

namespace A301317.P17747712462590191751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066847 (Nat.choose n 2)) (f1 (n + 1) - f1 n)

end

end A301317.P17747712462590191751

namespace A301317

/-- `A066847(C(n, 2))%Δ[A000537(n)]` -/
def P17747712462590191751.Spec : Prop :=
  ∀ n, P17747712462590191751.a n = A301317 (n + 1)

end A301317

/-! ## A301317.P4137587429257278154

`A155755(A161680(n))%A184628(n+1)`
-/

namespace A301317.P4137587429257278154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155755 (A161680 n).toNat) (A184628 (n + 1))

end

end A301317.P4137587429257278154

namespace A301317

/-- `A155755(A161680(n))%A184628(n+1)` -/
def P4137587429257278154.Spec : Prop :=
  ∀ n, P4137587429257278154.a n = A301317 (n + 1)

end A301317

/-!
# A301318: a(n) = sqrt(A299921(n)).

The programs for A301318, there is no canonical definition to state claims against.
-/

/-! ## A301318.P1020164487141748712

`sqrt(A299921(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A301318.P1020164487141748712
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A299921 (n + 1) : ℝ)

end

end A301318.P1020164487141748712

/-! ## A301318.P6887330003290315591

`round(sqrt(A182334(n+1)))`
-/

namespace A301318.P6887330003290315591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A182334 (n + 1) : ℝ))

end

end A301318.P6887330003290315591

/-! ## A301318.P6574695211214542702

`A299921(n+1)^((n+1)/A103517(n))`
-/

namespace A301318.P6574695211214542702
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A299921 (n + 1) : ℝ) ^ ((n + 1 : ℚ) / (A103517 n : ℚ) : ℝ)

end

end A301318.P6574695211214542702

/-! ## A301318.P6561230057612803147

`floor(sqrt(A182334(n+1)+A087279(n+1)))`
-/

namespace A301318.P6561230057612803147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A182334 (n + 1) + A087279 (n + 1))

end

end A301318.P6561230057612803147

/-! ## A301318.P5554905489797705020

`floor(sqrt(A182334(n+1)+A118759(n)))`
-/

namespace A301318.P5554905489797705020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A182334 (n + 1) + A118759 n)

end

end A301318.P5554905489797705020

/-!
# A301319: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301319, there is no canonical definition to state claims against.
-/

/-! ## A301319.P16582601406314715020

`A301323(∑[4*n]+1)`
-/

namespace A301319.P16582601406314715020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301319.P16582601406314715020

/-! ## A301319.P6808826973971310717

`record[A301323(Δ[A235355(n)])]`
-/

namespace A301319.P6808826973971310717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301319.P6808826973971310717

/-! ## A301319.P8927223948988126797

`A301323(A001844(n))+char[20]`
-/

namespace A301319.P8927223948988126797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A301319.P8927223948988126797

/-! ## A301319.P17201843384448950623

`A014998(n)*A301323(A001844(n))`
-/

namespace A301319.P17201843384448950623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014998 n * A301323 (A001844 n).toNat

end

end A301319.P17201843384448950623

/-! ## A301319.P14877159727411131005

`gcd(A010894(n), A301323(A001844(n)))`
-/

namespace A301319.P14877159727411131005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010894 (n + 21)) (A301323 (A001844 n).toNat)

end

end A301319.P14877159727411131005

/-!
# A301320: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301320, there is no canonical definition to state claims against.
-/

/-! ## A301320.P5968635034069201481

`A280601(n+1)+A002620(A289207(n))`
-/

namespace A301320.P5968635034069201481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280601 (n + 1) + A002620 (A289207 n).toNat

end

end A301320.P5968635034069201481

/-! ## A301320.P9977635547701169507

`A301323(A374005(n+1))`
-/

namespace A301320.P9977635547701169507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (A374005 (n + 1)).toNat

end

end A301320.P9977635547701169507

/-! ## A301320.P14622017792754809321

`A301323(A155212(n)+13)`
-/

namespace A301320.P14622017792754809321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (A155212 n + 13).toNat

end

end A301320.P14622017792754809321

/-! ## A301320.P1480999534729628512

`A301323(A056000(n)+15)`
-/

namespace A301320.P1480999534729628512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (A056000 n + 15).toNat

end

end A301320.P1480999534729628512

/-! ## A301320.P9776791369852596649

`A301323(A167614(n+3)+2)`
-/

namespace A301320.P9776791369852596649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (A167614 (n + 3) + 2).toNat

end

end A301320.P9776791369852596649

/-!
# A301321: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301321, there is no canonical definition to state claims against.
-/

/-! ## A301321.P12008993851122426555

`A301323(∑[n+5]+16)`
-/

namespace A301321.P12008993851122426555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A301321.P12008993851122426555

/-!
# A301322: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301322, there is no canonical definition to state claims against.
-/

/-! ## A301322.P5787486127346132300

`A301323(A374008(n+1))`
-/

namespace A301322.P5787486127346132300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (A374008 (n + 1)).toNat

end

end A301322.P5787486127346132300

/-! ## A301322.P4049402211337318600

`A301323(A056119(n)+28)`
-/

namespace A301322.P4049402211337318600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (A056119 n + 28).toNat

end

end A301322.P4049402211337318600

/-! ## A301322.P3852882920229983677

`A301323(A167499(n+5)+2)`
-/

namespace A301322.P3852882920229983677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (A167499 (n + 5) + 2).toNat

end

end A301322.P3852882920229983677

/-! ## A301322.P15104912075773720068

`A301323(A167614(n+5)+4)`
-/

namespace A301322.P15104912075773720068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (A167614 (n + 5) + 4).toNat

end

end A301322.P15104912075773720068

/-! ## A301322.P14185416446057293036

`A301323(A133263(n+6)+5)`
-/

namespace A301322.P14185416446057293036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (A133263 (n + 6) + 5).toNat

end

end A301322.P14185416446057293036

/-!
# A301323: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301323, there is no canonical definition to state claims against.
-/

/-! ## A301323.P6613303254820574548

`A280604(n+1)+A262693(A197529(n+1))`
-/

namespace A301323.P6613303254820574548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280604 (n + 1) + A262693 (A197529 (n + 1)).toNat

end

end A301323.P6613303254820574548

/-! ## A301323.P3983500463780638907

`or(A010894(A106619(n)), A280604(n+1))`
-/

namespace A301323.P3983500463780638907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 ((A106619 n).toNat + 21)) (A280604 (n + 1))

end

end A301323.P3983500463780638907

/-! ## A301323.P1432773031581206511

`A280604(n+1)+C(A010894(n), 10)`
-/

namespace A301323.P1432773031581206511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280604 (n + 1) + (Nat.choose (A010894 (n + 21)).toNat 10 : ℤ)

end

end A301323.P1432773031581206511

/-! ## A301323.P447635131880977078

`A280604(n+1)+A035042(A010894(n))`
-/

namespace A301323.P447635131880977078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280604 (n + 1) + A035042 (A010894 (n + 21)).toNat

end

end A301323.P447635131880977078

/-! ## A301323.P4401122380244341105

`A280604(n+1)+A102683(A034502(n+1))`
-/

namespace A301323.P4401122380244341105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280604 (n + 1) + A102683 (A034502 (n + 1)).toNat

end

end A301323.P4401122380244341105

/-!
# A301324: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301324, there is no canonical definition to state claims against.
-/

/-! ## A301324.P4591009234735564817

`A301330(∑[4*n]+1)`
-/

namespace A301324.P4591009234735564817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301330 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301324.P4591009234735564817

/-! ## A301324.P14478276458426992224

`record[A301330(∑[A266981(n)])]`
-/

namespace A301324.P14478276458426992224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301330 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301324.P14478276458426992224

/-! ## A301324.P14267024992591769135

`record[A301330(Δ[A235355(n)])]`
-/

namespace A301324.P14267024992591769135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301330 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301324.P14267024992591769135

/-! ## A301324.P11147790145845518639

`record[A301330(A272267(n+1))]`
-/

namespace A301324.P11147790145845518639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301330 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301324.P11147790145845518639

/-! ## A301324.P7849389446679412328

`A301330(A001844(n))+char[10]`
-/

namespace A301324.P7849389446679412328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301330 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A301324.P7849389446679412328

/-!
# A301325: Number of nX3 0..1 arrays with every element equal to 0, 2, 3, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301325, there is no canonical definition to state claims against.
-/

/-! ## A301325.P18015626780665296581

`A300600(n+1)+A142150(n)`
-/

namespace A301325.P18015626780665296581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300600 (n + 1) + A142150 n

end

end A301325.P18015626780665296581

/-! ## A301325.P15231113826198480081

`A300600(n+1)+n-A026741(n)`
-/

namespace A301325.P15231113826198480081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300600 (n + 1) + ((n : ℤ) - A026741 n)

end

end A301325.P15231113826198480081

/-! ## A301325.P14349880620743265689

`A300600(n+1)+A053615(A002620(n))`
-/

namespace A301325.P14349880620743265689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300600 (n + 1) + A053615 (A002620 n).toNat

end

end A301325.P14349880620743265689

/-! ## A301325.P17047348236751060159

`A300600(n+1)+A101164(A101881(n))`
-/

namespace A301325.P17047348236751060159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300600 (n + 1) + A101164 (A101881 n).toNat

end

end A301325.P17047348236751060159

/-!
# A301326: Number of nX4 0..1 arrays with every element equal to 0, 2, 3, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301326, there is no canonical definition to state claims against.
-/

/-! ## A301326.P9909765126270968719

`A301330(∑[n+3]+7)`
-/

namespace A301326.P9909765126270968719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301330 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A301326.P9909765126270968719

/-! ## A301326.P8082861871675095107

`record[A301330(A019304(n))]`
-/

namespace A301326.P8082861871675095107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301330 (A019304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301326.P8082861871675095107

/-! ## A301326.P4906759803958857014

`A301330(A027379(n+2))+char[22]`
-/

namespace A301326.P4906759803958857014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301330 (A027379 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A301326.P4906759803958857014

/-! ## A301326.P7983971079259188538

`record[A301330(n+1)/A301364(n+5)]`
-/

namespace A301326.P7983971079259188538
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301330 (n + 1) : ℚ) / (A301364 (n + 5) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301326.P7983971079259188538

/-! ## A301326.P7426520698779019748

`A301330(A027379(n+2))%A000108(n+4)`
-/

namespace A301326.P7426520698779019748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301330 (A027379 (n + 2)).toNat) (A000108 (n + 4))

end

end A301326.P7426520698779019748

/-!
# A301327: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301327, there is no canonical definition to state claims against.
-/

/-! ## A301327.P11636327582083506962

`A301330(∑[n+4]+11)`
-/

namespace A301327.P11636327582083506962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301330 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A301327.P11636327582083506962

/-! ## A301327.P9137169539050430769

`record[A301330(A019304(2*n+1)-n)]`
-/

namespace A301327.P9137169539050430769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301330 (A019304 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301327.P9137169539050430769

/-!
# A301328: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301328, there is no canonical definition to state claims against.
-/

/-! ## A301328.P14647479893897020581

`A301330(A374007(n+1))`
-/

namespace A301328.P14647479893897020581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301330 (A374007 (n + 1)).toNat

end

end A301328.P14647479893897020581

/-! ## A301328.P5607001861510761697

`A301330(eq[6, A256910(n)])`
-/

namespace A301328.P5607001861510761697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301330 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301328.P5607001861510761697

/-! ## A301328.P4011834788761656935

`A301330(∑[A020710(n)]+16)`
-/

namespace A301328.P4011834788761656935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301330 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A301328.P4011834788761656935

/-! ## A301328.P11538335270717350991

`A301330(A167499(n+4)+1)`
-/

namespace A301328.P11538335270717350991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301330 (A167499 (n + 4) + 1).toNat

end

end A301328.P11538335270717350991

/-! ## A301328.P11452310914791886371

`A301330(A167487(n+4)-1)`
-/

namespace A301328.P11452310914791886371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301330 (A167487 (n + 4) - 1).toNat

end

end A301328.P11452310914791886371

/-!
# A301329: Number of nX7 0..1 arrays with every element equal to 0, 2, 3, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301329, there is no canonical definition to state claims against.
-/

/-! ## A301329.P401809298007284370

`A301330(A374008(n+1))`
-/

namespace A301329.P401809298007284370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301330 (A374008 (n + 1)).toNat

end

end A301329.P401809298007284370

/-! ## A301329.P623664923855197958

`A301330(A167487(n+5))`
-/

namespace A301329.P623664923855197958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301330 (A167487 (n + 5)).toNat

end

end A301329.P623664923855197958

/-! ## A301329.P3950972492394075325

`A301330(A056119(n)+28)`
-/

namespace A301329.P3950972492394075325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301330 (A056119 n + 28).toNat

end

end A301329.P3950972492394075325

/-! ## A301329.P9020206170662707106

`A301330(eq[11, A066657(n)])`
-/

namespace A301329.P9020206170662707106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301330 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301329.P9020206170662707106

/-! ## A301329.P1948777439770721923

`A301330(A167499(n+5)+2)`
-/

namespace A301329.P1948777439770721923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301330 (A167499 (n + 5) + 2).toNat

end

end A301329.P1948777439770721923

/-!
# A301330: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301330, there is no canonical definition to state claims against.
-/

/-! ## A301330.P15539653394539589916

`A300605(n+1)+A102683(A008300(n))`
-/

namespace A301330.P15539653394539589916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300605 (n + 1) + A102683 (A008300 n).toNat

end

end A301330.P15539653394539589916

/-! ## A301330.P13452101110121004863

`A300605(n+1)+A025469(A296548(n))`
-/

namespace A301330.P13452101110121004863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300605 (n + 1) + A025469 (A296548 n).toNat

end

end A301330.P13452101110121004863

/-! ## A301330.P1611551400200726801

`or(A093709(A004695(n)), A300605(n+1))`
-/

namespace A301330.P1611551400200726801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A093709 (A004695 n).toNat) (A300605 (n + 1))

end

end A301330.P1611551400200726801

/-! ## A301330.P1191207121200711732

`or(A000035(A317054(n)), A300605(n+1))`
-/

namespace A301330.P1191207121200711732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A317054 n).toNat) (A300605 (n + 1))

end

end A301330.P1191207121200711732

/-! ## A301330.P11722678564887020198

`A300605(n+1)+A025469(A000043(n+1))`
-/

namespace A301330.P11722678564887020198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300605 (n + 1) + A025469 (A000043 (n + 1)).toNat

end

end A301330.P11722678564887020198

/-!
# A301331: Number of compositions (ordered partitions) of n into parts having the same number of divisors as n.

The programs for A301331, there is no canonical definition to state claims against.
-/

/-! ## A301331.P8758530691184360555

`gcd(A007920(n), A301333(A008554(n+1)))`
-/

namespace A301331.P8758530691184360555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007920 n) (A301333 (A008554 (n + 1)).toNat)

end

end A301331.P8758530691184360555

/-! ## A301331.P9923441568962762356

`A037452(A300977(n)%(A160758(n+4)+1))`
-/

namespace A301331.P9923441568962762356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037452 (Int.tmod (A300977 n) (A160758 (n + 4) + 1)).toNat

end

end A301331.P9923441568962762356

/-! ## A301331.P4817927227541583150

`A301333(C(n, A141459(n)))`
-/

namespace A301331.P4817927227541583150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301333 (Nat.choose n (A141459 n).toNat)

end

end A301331.P4817927227541583150

/-! ## A301331.P2844349140467343144

`A301333(∏{d}[A057637(n+1), #])`
-/

namespace A301331.P2844349140467343144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301333 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A301331.P2844349140467343144

/-!
# A301332: Number of compositions (ordered partitions) of n into parts having the same number of distinct prime divisors as n.

The programs for A301332, there is no canonical definition to state claims against.
-/

/-! ## A301332.P3930453678540933469

`gcd(A280195(n), A347742(A284463(n)))`
-/

namespace A301332.P3930453678540933469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A280195 n) (A347742 (A284463 n).toNat)

end

end A301332.P3930453678540933469

/-! ## A301332.P7460359027823458034

`gcd(A001057(A063699(n)), A286224(n))`
-/

namespace A301332.P7460359027823458034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001057 (A063699 n).toNat) (A286224 n)

end

end A301332.P7460359027823458034

/-! ## A301332.P4155867703213512049

`A286224(n*A063699(A284463(n)))`
-/

namespace A301332.P4155867703213512049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286224 ((n : ℤ) * A063699 (A284463 n).toNat).toNat

end

end A301332.P4155867703213512049

/-! ## A301332.P429135449373663711

`A280195(n)^A000311(A291684(n))`
-/

namespace A301332.P429135449373663711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280195 n : ℚ) ^ (A000311 (A291684 n).toNat : ℤ)

end

end A301332.P429135449373663711

/-! ## A301332.P16503619593934388580

`A286224(n)^A063699(A284463(n))`
-/

namespace A301332.P16503619593934388580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286224 n : ℚ) ^ (A063699 (A284463 n).toNat : ℤ)

end

end A301332.P16503619593934388580

/-!
# A301333: Number of compositions (ordered partitions) of n into parts having the same number of prime divisors (counted with multiplicity) as n.

The programs for A301333, there is no canonical definition to state claims against.
-/

/-! ## A301333.P12345655882164248859

`∏{p}[A008554(n+1), A301331(#)]`
-/

namespace A301333.P12345655882164248859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A301331 p

end

end A301333.P12345655882164248859

/-! ## A301333.P4937938645646883696

`∏{p}[A167913(n+1), A301331(#)]`
-/

namespace A301333.P4937938645646883696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A301331 p

end

end A301333.P4937938645646883696

/-! ## A301333.P10593657683675899837

`A301331(A051724(n)%A255207(2*(n+1)))`
-/

namespace A301333.P10593657683675899837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301331 (Int.tmod (A051724 n) (A255207 (2 * (n + 1)))).toNat

end

end A301333.P10593657683675899837

/-! ## A301333.P10647570072313698216

`∏{p}[A049610(n), A023360(#)]`
-/

namespace A301333.P10647570072313698216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A023360 p

end

end A301333.P10647570072313698216

/-! ## A301333.P16681294034103546002

`∏{p}[A094543(n), A023360(#)]`
-/

namespace A301333.P16681294034103546002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A023360 p

end

end A301333.P16681294034103546002

/-!
# A301334: a(n) = [x^n] 1/(1 + n*(1 - theta_2(sqrt(x))/(2*x^(1/8)))), where theta_2() is the Jacobi theta function.

The programs for A301334, there is no canonical definition to state claims against.
-/

/-! ## A301334.P7996514526916893537

`A230374(A381469(n+1))`
-/

namespace A301334.P7996514526916893537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230374 (A381469 (n + 1)).toNat

end

end A301334.P7996514526916893537

/-! ## A301334.P8164736507348591495

`A001281(2*A368893(n))`
-/

namespace A301334.P8164736507348591495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * A368893 n).toNat

end

end A301334.P8164736507348591495

/-!
# A301335: a(n) = [x^n] 1/(1 + (1/2)*n*(1 - theta_3(x))), where theta_3() is the Jacobi theta function.

The programs for A301335, there is no canonical definition to state claims against.
-/

/-! ## A301335.P18009130962769152178

`A007094(floor(sqrt(A020095(2*n))))`
-/

namespace A301335.P18009130962769152178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (Int.sqrt (A020095 (2 * n))).toNat

end

end A301335.P18009130962769152178

/-! ## A301335.P14897413998981346917

`A168201(A240958(n))+n^n`
-/

namespace A301335.P14897413998981346917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A240958 n).toNat + (n ^ n : ℤ)

end

end A301335.P14897413998981346917

/-!
# A301336: a(n) = total number of 1's minus total number of 0's in binary expansions of 0, ..., n.

The programs for A301336, the canonical program `A301336.P12381687914768118623` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301336 has offset 0).

The definition of A301336 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A301336.P12381687914768118623

`A268289(n)-1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A301336

/-- `A268289(n)-1` -/
def P12381687914768118623.Spec : Prop :=
  ∀ n, P12381687914768118623.a n = A301336 n

theorem P12381687914768118623.correct : P12381687914768118623.Spec := by
  intro n
  simp only [A301336]

end A301336

/-! ## A301336.P4185551427828657735

`A000788(n)-A059015(n)`
-/

namespace A301336.P4185551427828657735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n - A059015 n

end

end A301336.P4185551427828657735

namespace A301336

/-- `A000788(n)-A059015(n)` -/
def P4185551427828657735.Spec : Prop :=
  ∀ n, P4185551427828657735.a n = A301336 n

end A301336

/-! ## A301336.P747160259334087916

`∑[a(floor(n/2))-(-1)^n]` with `a(0)=-1, a(1)=1`
-/

namespace A301336.P747160259334087916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301336.P747160259334087916

namespace A301336

/-- `∑[a(floor(n/2))-(-1)^n]` -/
def P747160259334087916.Spec : Prop :=
  ∀ n, P747160259334087916.a n = A301336 n

end A301336

/-! ## A301336.P16553924565126834743

`∑[-A037861(n)]`
-/

namespace A301336.P16553924565126834743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A037861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301336.P16553924565126834743

namespace A301336

/-- `∑[-A037861(n)]` -/
def P16553924565126834743.Spec : Prop :=
  ∀ n, P16553924565126834743.a n = A301336 n

end A301336

/-! ## A301336.P9210090266392402452

`∑[A145037(n)]-1`
-/

namespace A301336.P9210090266392402452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A301336.P9210090266392402452

namespace A301336

/-- `∑[A145037(n)]-1` -/
def P9210090266392402452.Spec : Prop :=
  ∀ n, P9210090266392402452.a n = A301336 n

end A301336

/-! ## A301336.P852674068775319239

`n-(A296062(n)+1)`
-/

namespace A301336.P852674068775319239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A296062 n + 1)

end

end A301336.P852674068775319239

namespace A301336

/-- `n-(A296062(n)+1)` -/
def P852674068775319239.Spec : Prop :=
  ∀ n, P852674068775319239.a n = A301336 n

theorem P852674068775319239.correct : P852674068775319239.Spec := by
  intro n
  simp only [A301336, Nat.add_sub_cancel, A301336.P852674068775319239.a, A301336.P12381687914768118623.a, A268289, A268289.P17910930367041413554.a, A296062, A296062.P5761383797540387978.a, A037861, A037861.P603769739827553154.a, A000120, A000120.P2816527436160941581.a, A023416, A023416.P8124303482289229133.a, A005187, A005187.P3874015513960485494.a, A070939, A070939.P14677302147902843740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A301336

/-! ## A301336.P5327966889054788299

`∑[∑[A269735(n)]]-1`
-/

namespace A301336.P5327966889054788299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269735 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A301336.P5327966889054788299

namespace A301336

/-- `∑[∑[A269735(n)]]-1` -/
def P5327966889054788299.Spec : Prop :=
  ∀ n, P5327966889054788299.a n = A301336 n

end A301336

/-! ## A301336.P13395284064160579534

`∑[∑{digits}[A169965(n+1), #-1]]`
-/

namespace A301336.P13395284064160579534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169965 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => (x : ℤ) - 1).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301336.P13395284064160579534

namespace A301336

/-- `∑[∑{digits}[A169965(n+1), #-1]]` -/
def P13395284064160579534.Spec : Prop :=
  ∀ n, P13395284064160579534.a n = A301336 n

end A301336

/-! ## A301336.P1343191717298821820

`A023443(A268289(n))`
-/

namespace A301336.P1343191717298821820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A268289 n).toNat

end

end A301336.P1343191717298821820

namespace A301336

/-- `A023443(A268289(n))` -/
def P1343191717298821820.Spec : Prop :=
  ∀ n, P1343191717298821820.a n = A301336 n

end A301336

/-! ## A301336.P3321529717770797186

`A023443(n-A296062(n))`
-/

namespace A301336.P3321529717770797186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((n : ℤ) - A296062 n).toNat

end

end A301336.P3321529717770797186

namespace A301336

/-- `A023443(n-A296062(n))` -/
def P3321529717770797186.Spec : Prop :=
  ∀ n, P3321529717770797186.a n = A301336 n

end A301336

/-! ## A301336.P7051249975940645883

`∑[A124754(A003188(n))]-1`
-/

namespace A301336.P7051249975940645883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (A003188 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A301336.P7051249975940645883

namespace A301336

/-- `∑[A124754(A003188(n))]-1` -/
def P7051249975940645883.Spec : Prop :=
  ∀ n, P7051249975940645883.a n = A301336 n

end A301336

/-! ## A301336.P8853624434986441526

`∑[A000120(n)-A023416(n)]`
-/

namespace A301336.P8853624434986441526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301336.P8853624434986441526

namespace A301336

/-- `∑[A000120(n)-A023416(n)]` -/
def P8853624434986441526.Spec : Prop :=
  ∀ n, P8853624434986441526.a n = A301336 n

end A301336

/-! ## A301336.P8998660516583858085

`A000788(n)-∑[A023416(n)]`
-/

namespace A301336.P8998660516583858085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301336.P8998660516583858085

namespace A301336

/-- `A000788(n)-∑[A023416(n)]` -/
def P8998660516583858085.Spec : Prop :=
  ∀ n, P8998660516583858085.a n = A301336 n

end A301336

/-! ## A301336.P9102371249005450620

`∑[A000120(n)]-A059015(n)`
-/

namespace A301336.P9102371249005450620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A059015 n

end

end A301336.P9102371249005450620

namespace A301336

/-- `∑[A000120(n)]-A059015(n)` -/
def P9102371249005450620.Spec : Prop :=
  ∀ n, P9102371249005450620.a n = A301336 n

end A301336

/-! ## A301336.P5073519054105523013

`A000788(n)-(A181132(n)+1)`
-/

namespace A301336.P5073519054105523013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n - (A181132 n + 1)

end

end A301336.P5073519054105523013

namespace A301336

/-- `A000788(n)-(A181132(n)+1)` -/
def P5073519054105523013.Spec : Prop :=
  ∀ n, P5073519054105523013.a n = A301336 n

end A301336

/-! ## A301336.P8044157149485599638

`2*A000788(n)-A083652(n)`
-/

namespace A301336.P8044157149485599638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000788 n - A083652 n

end

end A301336.P8044157149485599638

namespace A301336

/-- `2*A000788(n)-A083652(n)` -/
def P8044157149485599638.Spec : Prop :=
  ∀ n, P8044157149485599638.a n = A301336 n

end A301336

/-! ## A301336.P18151064189495012387

`A083652(n)-2*A059015(n)`
-/

namespace A301336.P18151064189495012387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083652 n - 2 * A059015 n

end

end A301336.P18151064189495012387

namespace A301336

/-- `A083652(n)-2*A059015(n)` -/
def P18151064189495012387.Spec : Prop :=
  ∀ n, P18151064189495012387.a n = A301336 n

end A301336

/-! ## A301336.P3230279044071652804

`∑[log2(A001316(n))-A023416(n)]`
-/

namespace A301336.P3230279044071652804
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) - (A023416 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301336.P3230279044071652804

namespace A301336

/-- `∑[log2(A001316(n))-A023416(n)]` -/
def P3230279044071652804.Spec : Prop :=
  ∀ n, P3230279044071652804.a n = (A301336 n : ℝ)

end A301336

/-! ## A301336.P9080651618206489217

`∑[log2(A001316(n))]-A059015(n)`
-/

namespace A301336.P9080651618206489217
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A059015 n : ℝ)

end

end A301336.P9080651618206489217

namespace A301336

/-- `∑[log2(A001316(n))]-A059015(n)` -/
def P9080651618206489217.Spec : Prop :=
  ∀ n, P9080651618206489217.a n = (A301336 n : ℝ)

end A301336

/-! ## A301336.P10736414167523055608

`∑[∑[A088705(n)]-A023416(n)]`
-/

namespace A301336.P10736414167523055608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301336.P10736414167523055608

namespace A301336

/-- `∑[∑[A088705(n)]-A023416(n)]` -/
def P10736414167523055608.Spec : Prop :=
  ∀ n, P10736414167523055608.a n = A301336 n

end A301336

/-!
# A301337: Number of steps required in the worst case for two knights to find the princess in a castle with n rooms arranged in a line (Castle and princess puzzle).

The programs for A301337, there is no canonical definition to state claims against.
-/

/-! ## A301337.P1317220680052129404

`n-floor((a(n-1)+and(2, a(n-2)))/2)` with `a(0)=1, a(1)=1`
-/

namespace A301337.P1317220680052129404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) - ⌊(a (n - 1) + Int.land 2 (a (n - 2)) : ℚ) / 2⌋

end

end A301337.P1317220680052129404

/-! ## A301337.P14811174890443611273

`∑[(a(n-2)+1)%(3-a(n-1))]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=0, a(5)=1`
-/

namespace A301337.P14811174890443611273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 0, 1] fun n f1 =>
  Int.tmod (f1 (n - 2) + 1) (3 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301337.P14811174890443611273

/-! ## A301337.P8902048331747813292

`A173633(n+2-floor(sqrt(n)))`
-/

namespace A301337.P8902048331747813292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173633 (n + 2 - Nat.sqrt n)

end

end A301337.P8902048331747813292

/-! ## A301337.P2605618543148952589

`round(A001032(2*n+5)/30)`
-/

namespace A301337.P2605618543148952589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001032 (2 * n + 5) : ℚ) / 30)

end

end A301337.P2605618543148952589

/-! ## A301337.P2475360893704943125

`A062298(n+2-∑[n]%3)`
-/

namespace A301337.P2475360893704943125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 2 - (∑ j ∈ Finset.range (n + 1), f1 j) % 3)

end

end A301337.P2475360893704943125

/-!
# A301342: Regular triangle where T(n,k) is the number of rooted identity trees with n nodes and k leaves.

The programs for A301342, there is no canonical definition to state claims against.
-/

/-! ## A301342.P16573901786192286291

`floor(sqrt(A238121(n)))^A058710(n)`
-/

namespace A301342.P16573901786192286291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.sqrt (A238121 n) : ℚ) ^ (A058710 n : ℤ)

end

end A301342.P16573901786192286291

/-! ## A301342.P10748762115550087628

`A363845(A123549(A363845(n))+n)`
-/

namespace A301342.P10748762115550087628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363845 (A123549 (A363845 n).toNat + (n : ℤ)).toNat

end

end A301342.P10748762115550087628

/-! ## A301342.P8975432685889249493

`A007895(C(A131198(n), A247507(n)))`
-/

namespace A301342.P8975432685889249493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (Nat.choose (A131198 n).toNat (A247507 n).toNat)

end

end A301342.P8975432685889249493

/-! ## A301342.P7815639485768105057

`C(A225541(A206389(n+1)), A049600(n))`
-/

namespace A301342.P7815639485768105057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A225541 (A206389 (n + 1)).toNat).toNat (A049600 n).toNat

end

end A301342.P7815639485768105057

/-! ## A301342.P13067627873324944661

`A305932(C(A055363(n+1), A333893(n)))`
-/

namespace A301342.P13067627873324944661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305932 (Nat.choose (A055363 (n + 1)).toNat (A333893 n).toNat)

end

end A301342.P13067627873324944661

/-!
# A301343: Regular triangle where T(n,k) is the number of planted achiral (or generalized Bethe) trees with n nodes and k leaves.

The programs for A301343, there is no canonical definition to state claims against.
-/

/-! ## A301343.P15840492766333209573

`ceil(A071919(n)/A122953(A208747(n+1)))`
-/

namespace A301343.P15840492766333209573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A071919 n : ℚ) / (A122953 (A208747 (n + 1)).toNat : ℚ)⌉

end

end A301343.P15840492766333209573

/-! ## A301343.P8286385206818191262

`A120885(n*a(n-1)+1)-A331958(a(n-1))` with `a(0)=1`
-/

namespace A301343.P8286385206818191262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120885 ((n : ℤ) * a (n - 1) + 1).toNat - A331958 (a (n - 1)).toNat

end

end A301343.P8286385206818191262

/-! ## A301343.P4866354026412727067

`A294204(A292506(n)%A219760(n+1))`
-/

namespace A301343.P4866354026412727067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294204 (Int.tmod (A292506 n) (A219760 (n + 1))).toNat

end

end A301343.P4866354026412727067

/-! ## A301343.P11347588552949018023

`gcd(A001221(A294082(n+1)), A338859(n))`
-/

namespace A301343.P11347588552949018023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A294082 (n + 1)).toNat) (A338859 n)

end

end A301343.P11347588552949018023

/-! ## A301343.P493830672803012934

`gcd(A001221(A028338(n)), A055277(n+1))`
-/

namespace A301343.P493830672803012934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A028338 n).toNat) (A055277 (n + 1))

end

end A301343.P493830672803012934

/-!
# A301344: Regular triangle where T(n,k) is the number of semi-binary rooted trees with n nodes and k leaves.

The programs for A301344, there is no canonical definition to state claims against.
-/

/-! ## A301344.P2645210471244720780

`A001877(6^A052553(n))`
-/

namespace A301344.P2645210471244720780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A052553 n : ℤ))).toNat

end

end A301344.P2645210471244720780

/-! ## A301344.P14785482967384263319

`A001878(6^A052553(n))`
-/

namespace A301344.P14785482967384263319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A052553 n : ℤ))).toNat

end

end A301344.P14785482967384263319

/-! ## A301344.P2289964828608021172

`A001877(6^A290054(n))`
-/

namespace A301344.P2289964828608021172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A290054 n : ℤ))).toNat

end

end A301344.P2289964828608021172

/-! ## A301344.P8605174824244592579

`A001878(6^A290054(n))`
-/

namespace A301344.P8605174824244592579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A290054 n : ℤ))).toNat

end

end A301344.P8605174824244592579

/-! ## A301344.P3232065117049664766

`A001877(6^A290430(n))`
-/

namespace A301344.P3232065117049664766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A290430 n : ℤ))).toNat

end

end A301344.P3232065117049664766

/-!
# A301345: Regular triangle where T(n,k) is the number of transitive rooted trees with n nodes and k leaves.

The programs for A301345, there is no canonical definition to state claims against.
-/

/-! ## A301345.P3952607405091204999

`A259095(∑[A019425(A337506(n))])`
-/

namespace A301345.P3952607405091204999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A337506 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259095 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A301345.P3952607405091204999

/-! ## A301345.P17973619201227938052

`A259095(∑[A115199(A103524(n+1))])`
-/

namespace A301345.P17973619201227938052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115199 (A103524 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259095 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A301345.P17973619201227938052

/-! ## A301345.P2285775413177492208

`A339884(lt[A001399(n), A327371(n)])`
-/

namespace A301345.P2285775413177492208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339884 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A301345.P2285775413177492208

/-! ## A301345.P9880982136132131248

`A339884(lt[A235111(n+1), A304222(n)])`
-/

namespace A301345.P9880982136132131248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339884 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A301345.P9880982136132131248

/-! ## A301345.P9374422776190244720

`A047998(n+1)^A067558(n+1)²`
-/

namespace A301345.P9374422776190244720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047998 (n + 1) : ℚ) ^ (A067558 (n + 1) ^ 2 : ℤ)

end

end A301345.P9374422776190244720

/-!
# A301346: Largest prime factor of A020549(n) = (n!)^2 + 1.

The programs for A301346, there is no canonical definition to state claims against.
-/

/-! ## A301346.P8353140762033511287

`A014442(n!)`
-/

namespace A301346.P8353140762033511287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (Nat.factorial n)

end

end A301346.P8353140762033511287

/-! ## A301346.P18273758093027864714

`A259036(n!)`
-/

namespace A301346.P18273758093027864714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 (Nat.factorial n)

end

end A301346.P18273758093027864714

/-! ## A301346.P3243610137839449434

`A281793(n!)`
-/

namespace A301346.P3243610137839449434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281793 (Nat.factorial n)

end

end A301346.P3243610137839449434

/-! ## A301346.P16000190231570738914

`A250069(n!)+1`
-/

namespace A301346.P16000190231570738914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (Nat.factorial n) + 1

end

end A301346.P16000190231570738914

/-!
# A301347: a(n) = n^(n-1) + (n-1)!.

The programs for A301347, the canonical program `A301347.P4929723400227650451` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301347 has offset 1).

The definition of A301347 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^n+n!` (program `A301347.P4929723400227650451`, by `A301347.P4929723400227650451.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A301347.P4929723400227650451

`(n+1)^n+n!`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301347

/-- `(n+1)^n+n!` -/
def P4929723400227650451.Spec : Prop :=
  ∀ n, (P4929723400227650451.a n : ℤ) = A301347 (n + 1)

theorem P4929723400227650451.correct : P4929723400227650451.Spec := by
  intro n
  simp only [A301347, Nat.add_sub_cancel]

end A301347

/-! ## A301347.P9164465871106709229

`A000169(n+1)+A000142(n)`
-/

namespace A301347.P9164465871106709229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 1) + A000142 n

end

end A301347.P9164465871106709229

namespace A301347

/-- `A000169(n+1)+A000142(n)` -/
def P9164465871106709229.Spec : Prop :=
  ∀ n, P9164465871106709229.a n = A301347 (n + 1)

theorem P9164465871106709229.correct : P9164465871106709229.Spec := by
  intro n
  simp only [A301347, Nat.add_sub_cancel, A301347.P9164465871106709229.a, A301347.P4929723400227650451.a, A000142, A000142.P3272619076580183195.a, A000169, A000169.P4048163930515893600.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A301347

/-! ## A301347.P7809895870329534209

`A053042(n+1)/(n+1)`
-/

namespace A301347.P7809895870329534209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053042 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A301347.P7809895870329534209

namespace A301347

/-- `A053042(n+1)/(n+1)` -/
def P7809895870329534209.Spec : Prop :=
  ∀ n, P7809895870329534209.a n = (A301347 (n + 1) : ℚ)

end A301347

/-! ## A301347.P7895023744343549743

`∏[round(1/acot(n))]+(n+1)^n`
-/

namespace A301347.P7895023744343549743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ n : ℤ)

end

end A301347.P7895023744343549743

namespace A301347

/-- `∏[round(1/acot(n))]+(n+1)^n` -/
def P7895023744343549743.Spec : Prop :=
  ∀ n, P7895023744343549743.a n = A301347 (n + 1)

end A301347

/-! ## A301347.P1272855378806834721

`∏[ceil(abs(γ-n))]+(n+1)^n`
-/

namespace A301347.P1272855378806834721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ n : ℤ)

end

end A301347.P1272855378806834721

namespace A301347

/-- `∏[ceil(abs(γ-n))]+(n+1)^n` -/
def P1272855378806834721.Spec : Prop :=
  ∀ n, P1272855378806834721.a n = A301347 (n + 1)

end A301347

/-! ## A301347.P11772975053961758017

`record[A201685(n+1)+A182062(n)]`
-/

namespace A301347.P11772975053961758017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201685 (n + 1) + A182062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301347.P11772975053961758017

namespace A301347

/-- `record[A201685(n+1)+A182062(n)]` -/
def P11772975053961758017.Spec : Prop :=
  ∀ n, P11772975053961758017.a n = A301347 (n + 1)

end A301347

/-! ## A301347.P16093995900260681711

`record[A247500(n)+A201685(n+1)]`
-/

namespace A301347.P16093995900260681711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247500 n + A201685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301347.P16093995900260681711

namespace A301347

/-- `record[A247500(n)+A201685(n+1)]` -/
def P16093995900260681711.Spec : Prop :=
  ∀ n, P16093995900260681711.a n = A301347 (n + 1)

end A301347

/-! ## A301347.P5450433510168523435

`record[A201685(n+1)+A188881(n+1)]`
-/

namespace A301347.P5450433510168523435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201685 (n + 1) + A188881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301347.P5450433510168523435

namespace A301347

/-- `record[A201685(n+1)+A188881(n+1)]` -/
def P5450433510168523435.Spec : Prop :=
  ∀ n, P5450433510168523435.a n = A301347 (n + 1)

end A301347

/-! ## A301347.P2648994015000147384

`(A095996(n+1)+A036505(n))*A062763(n+1)`
-/

namespace A301347.P2648994015000147384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A095996 (n + 1) + A036505 n) * A062763 (n + 1)

end

end A301347.P2648994015000147384

namespace A301347

/-- `(A095996(n+1)+A036505(n))*A062763(n+1)` -/
def P2648994015000147384.Spec : Prop :=
  ∀ n, P2648994015000147384.a n = A301347 (n + 1)

end A301347

/-! ## A301347.P1619113877673031448

`(A119619(n+1)+A056916(n+1))*A051190(n+1)`
-/

namespace A301347.P1619113877673031448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A119619 (n + 1) + A056916 (n + 1)) * A051190 (n + 1)

end

end A301347.P1619113877673031448

namespace A301347

/-- `(A119619(n+1)+A056916(n+1))*A051190(n+1)` -/
def P1619113877673031448.Spec : Prop :=
  ∀ n, P1619113877673031448.a n = A301347 (n + 1)

end A301347

/-!
# A301348: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301348, there is no canonical definition to state claims against.
-/

/-! ## A301348.P7860481729109322176

`A301354(∑[4*n]+1)`
-/

namespace A301348.P7860481729109322176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301348.P7860481729109322176

/-! ## A301348.P13305417885406199857

`record[A003982(n)*A301354(n+1)]`
-/

namespace A301348.P13305417885406199857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A301354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301348.P13305417885406199857

/-! ## A301348.P14938877148117630304

`gcd(5, A007318(n))*A301354(A001844(n))`
-/

namespace A301348.P14938877148117630304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 5 (A007318 n) : ℤ) * A301354 (A001844 n).toNat

end

end A301348.P14938877148117630304

/-! ## A301348.P11456086590968174227

`A007318(C(2, n+2))*A301354(A001844(n))`
-/

namespace A301348.P11456086590968174227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A301354 (A001844 n).toNat

end

end A301348.P11456086590968174227

/-! ## A301348.P8958261067081185813

`A007318(A001222(n+1))*A301354(A001844(n))`
-/

namespace A301348.P8958261067081185813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A001222 (n + 1)).toNat * A301354 (A001844 n).toNat

end

end A301348.P8958261067081185813

/-!
# A301349: Number of nX3 0..1 arrays with every element equal to 1, 2, 3, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301349, there is no canonical definition to state claims against.
-/

/-! ## A301349.P18398360637709931128

`A301354(∑[n+2]+4)`
-/

namespace A301349.P18398360637709931128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A301349.P18398360637709931128

/-! ## A301349.P10356966367572102234

`lcm((-1)^n, A301354(A167614(n+1)))`
-/

namespace A301349.P10356966367572102234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A301354 (A167614 (n + 1)).toNat)

end

end A301349.P10356966367572102234

/-! ## A301349.P3934058715525299728

`A301354(A167614(n+1))+A011738(n)`
-/

namespace A301349.P3934058715525299728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (A167614 (n + 1)).toNat + A011738 n

end

end A301349.P3934058715525299728

/-! ## A301349.P5444126475686197511

`A301354(A167614(n+1))+A011744(n)`
-/

namespace A301349.P5444126475686197511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (A167614 (n + 1)).toNat + A011744 n

end

end A301349.P5444126475686197511

/-! ## A301349.P14799548295014161588

`A301354(A167614(n+1))+A185284(n)`
-/

namespace A301349.P14799548295014161588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (A167614 (n + 1)).toNat + A185284 n

end

end A301349.P14799548295014161588

/-!
# A301350: Number of nX4 0..1 arrays with every element equal to 1, 2, 3, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301350, there is no canonical definition to state claims against.
-/

/-! ## A301350.P12438476823567054203

`A301354(A141214(n)+7)`
-/

namespace A301350.P12438476823567054203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (A141214 n + 7).toNat

end

end A301350.P12438476823567054203

/-! ## A301350.P3615347544169285501

`A301354(A052905(n)+9)`
-/

namespace A301350.P3615347544169285501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (A052905 n + 9).toNat

end

end A301350.P3615347544169285501

/-! ## A301350.P14002489148065236074

`A301354(A055999(n)+10)`
-/

namespace A301350.P14002489148065236074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (A055999 n + 10).toNat

end

end A301350.P14002489148065236074

/-! ## A301350.P9251370737926784897

`A301354(A167614(n+2)+1)`
-/

namespace A301350.P9251370737926784897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (A167614 (n + 2) + 1).toNat

end

end A301350.P9251370737926784897

/-! ## A301350.P7255385891642781980

`A301354(eq[5, A131818(n+1)])`
-/

namespace A301350.P7255385891642781980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301350.P7255385891642781980

/-!
# A301351: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301351, there is no canonical definition to state claims against.
-/

/-! ## A301351.P5134725872019408637

`A301354(A167499(n+3))`
-/

namespace A301351.P5134725872019408637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (A167499 (n + 3)).toNat

end

end A301351.P5134725872019408637

/-! ## A301351.P13624366260770877943

`A301354(A056000(n)+15)`
-/

namespace A301351.P13624366260770877943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (A056000 n + 15).toNat

end

end A301351.P13624366260770877943

/-! ## A301351.P495322778141666366

`A301354(eq[6, A131818(n+1)])`
-/

namespace A301351.P495322778141666366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301351.P495322778141666366

/-! ## A301351.P5314957074051254188

`A301354(A374005(n+1))`
-/

namespace A301351.P5314957074051254188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (A374005 (n + 1)).toNat

end

end A301351.P5314957074051254188

/-! ## A301351.P4375967088528010000

`A301354(A046691(n+3))`
-/

namespace A301351.P4375967088528010000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (A046691 (n + 3)).toNat

end

end A301351.P4375967088528010000

/-!
# A301352: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301352, there is no canonical definition to state claims against.
-/

/-! ## A301352.P12975864248870993539

`A301354(eq[7, A131818(n+1)])`
-/

namespace A301352.P12975864248870993539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301352.P12975864248870993539

/-! ## A301352.P12603724518368085814

`A301354(Δ[A023545(n+1)]+10)`
-/

namespace A301352.P12603724518368085814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (f1 (n + 1) - f1 n + 10).toNat

end

end A301352.P12603724518368085814

/-! ## A301352.P11208777982220986220

`A301354(A374007(n+1))`
-/

namespace A301352.P11208777982220986220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (A374007 (n + 1)).toNat

end

end A301352.P11208777982220986220

/-! ## A301352.P2134651672237252628

`A301354(A052905(n+3))`
-/

namespace A301352.P2134651672237252628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (A052905 (n + 3)).toNat

end

end A301352.P2134651672237252628

/-! ## A301352.P7906226736908028121

`A301354(eq[5, A193592(n)])`
-/

namespace A301352.P7906226736908028121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301352.P7906226736908028121

/-!
# A301353: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301353, there is no canonical definition to state claims against.
-/

/-! ## A301353.P15141516045160850443

`A301354(A167487(n+5))`
-/

namespace A301353.P15141516045160850443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (A167487 (n + 5)).toNat

end

end A301353.P15141516045160850443

/-! ## A301353.P10360296022861690926

`A301354(eq[8, A131818(n+1)])`
-/

namespace A301353.P10360296022861690926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301353.P10360296022861690926

/-! ## A301353.P9809363813754376630

`A301354(A374008(n+1))`
-/

namespace A301353.P9809363813754376630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (A374008 (n + 1)).toNat

end

end A301353.P9809363813754376630

/-! ## A301353.P16326967925819441547

`A301354(A055999(n+4))`
-/

namespace A301353.P16326967925819441547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (A055999 (n + 4)).toNat

end

end A301353.P16326967925819441547

/-! ## A301353.P10629100082372441049

`A301354(eq[6, A193592(n)])`
-/

namespace A301353.P10629100082372441049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301353.P10629100082372441049

/-!
# A301354: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 3, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301354, there is no canonical definition to state claims against.
-/

/-! ## A301354.P13775010121506985405

`A300612(n+1)+A010894(A009766(n))`
-/

namespace A301354.P13775010121506985405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (n + 1) + A010894 ((A009766 n).toNat + 21)

end

end A301354.P13775010121506985405

/-! ## A301354.P15830535854384051661

`A300612(n+1)+A014954(A053802(n))`
-/

namespace A301354.P15830535854384051661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (n + 1) + A014954 (A053802 n).toNat

end

end A301354.P15830535854384051661

/-! ## A301354.P6924468297568086395

`A300612(n+1)+A067898(A174127(n))`
-/

namespace A301354.P6924468297568086395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (n + 1) + A067898 (A174127 n).toNat

end

end A301354.P6924468297568086395

/-! ## A301354.P10099042143241275602

`A300612(n+1)+A185284(A135966(n))`
-/

namespace A301354.P10099042143241275602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (n + 1) + A185284 (A135966 n).toNat

end

end A301354.P10099042143241275602

/-!
# A301355: Number of n X n 0..1 arrays with every element equal to 1, 2, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301355, there is no canonical definition to state claims against.
-/

/-! ## A301355.P16220720945755834395

`A301361(∑[4*n]+1)`
-/

namespace A301355.P16220720945755834395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301355.P16220720945755834395

/-! ## A301355.P9350148072070990764

`record[A301361(Δ[A235355(n)])]`
-/

namespace A301355.P9350148072070990764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301355.P9350148072070990764

/-! ## A301355.P3766079496726108182

`A301361(A001844(n))+char[19]`
-/

namespace A301355.P3766079496726108182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A301355.P3766079496726108182

/-! ## A301355.P6402145661194085518

`record[A003982(n)*A301361(n+1)]`
-/

namespace A301355.P6402145661194085518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A301361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301355.P6402145661194085518

/-! ## A301355.P8592011436831515715

`record[A214505(n)*A301361(n+1)]`
-/

namespace A301355.P8592011436831515715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A301361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301355.P8592011436831515715

/-!
# A301356: Number of nX3 0..1 arrays with every element equal to 1, 2, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301356, there is no canonical definition to state claims against.
-/

/-! ## A301356.P607101560439488036

`A301361(∑[n+2]+4)`
-/

namespace A301356.P607101560439488036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A301356.P607101560439488036

/-! ## A301356.P462071512203839354

`or(char[2], A301361(A167614(n+1)))`
-/

namespace A301356.P462071512203839354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A301361 (A167614 (n + 1)).toNat)

end

end A301356.P462071512203839354

/-! ## A301356.P9546800185449309937

`A301361(A000124(n+2)+2)+char[34]`
-/

namespace A301356.P9546800185449309937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (A000124 (n + 2) + 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A301356.P9546800185449309937

/-! ## A301356.P365980283724633210

`record[A301361(n+4)/A287376(n+1)]`
-/

namespace A301356.P365980283724633210
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301361 (n + 4) : ℚ) / (A287376 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301356.P365980283724633210

/-! ## A301356.P6924539782396045849

`A301361(A167614(n+1))+A025443(n)`
-/

namespace A301356.P6924539782396045849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (A167614 (n + 1)).toNat + A025443 n

end

end A301356.P6924539782396045849

/-!
# A301357: Number of nX4 0..1 arrays with every element equal to 1, 2, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301357, there is no canonical definition to state claims against.
-/

/-! ## A301357.P478415808833761325

`A301361(C(n+4, 2)+4)`
-/

namespace A301357.P478415808833761325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (Nat.choose (n + 4) 2 + 4)

end

end A301357.P478415808833761325

/-! ## A301357.P14907943024404789812

`A301361(A374004(n+1))`
-/

namespace A301357.P14907943024404789812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (A374004 (n + 1)).toNat

end

end A301357.P14907943024404789812

/-! ## A301357.P7950484224853326222

`A301361(A141214(n)+7)`
-/

namespace A301357.P7950484224853326222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (A141214 n + 7).toNat

end

end A301357.P7950484224853326222

/-! ## A301357.P17731530624884282514

`A301361(A052905(n)+9)`
-/

namespace A301357.P17731530624884282514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (A052905 n + 9).toNat

end

end A301357.P17731530624884282514

/-! ## A301357.P11106051988928685824

`A301361(A055999(n)+10)`
-/

namespace A301357.P11106051988928685824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (A055999 n + 10).toNat

end

end A301357.P11106051988928685824

/-!
# A301358: Number of nX5 0..1 arrays with every element equal to 1, 2, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301358, there is no canonical definition to state claims against.
-/

/-! ## A301358.P9004124737134689412

`A301361(A374005(n+1))`
-/

namespace A301358.P9004124737134689412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (A374005 (n + 1)).toNat

end

end A301358.P9004124737134689412

/-! ## A301358.P907344961679805184

`A301361(A167499(n+3))`
-/

namespace A301358.P907344961679805184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (A167499 (n + 3)).toNat

end

end A301358.P907344961679805184

/-! ## A301358.P15881623812351038077

`A301361(A155212(n)+13)`
-/

namespace A301358.P15881623812351038077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (A155212 n + 13).toNat

end

end A301358.P15881623812351038077

/-! ## A301358.P15542388316609090197

`A301361(A056000(n)+15)`
-/

namespace A301358.P15542388316609090197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (A056000 n + 15).toNat

end

end A301358.P15542388316609090197

/-! ## A301358.P2367272198365508581

`A301361(eq[7, A066657(n)])`
-/

namespace A301358.P2367272198365508581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301358.P2367272198365508581

/-!
# A301359: Number of nX6 0..1 arrays with every element equal to 1, 2, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301359, there is no canonical definition to state claims against.
-/

/-! ## A301359.P15777330171216839364

`A301361(A374007(n+1))`
-/

namespace A301359.P15777330171216839364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (A374007 (n + 1)).toNat

end

end A301359.P15777330171216839364

/-! ## A301359.P13509797711605415904

`A301361(A166136(n+4))`
-/

namespace A301359.P13509797711605415904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (A166136 (n + 4)).toNat

end

end A301359.P13509797711605415904

/-! ## A301359.P12598728404628056803

`A301361(A056115(n)+21)`
-/

namespace A301359.P12598728404628056803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (A056115 n + 21).toNat

end

end A301359.P12598728404628056803

/-! ## A301359.P4264554362879992921

`A301361(∑[A020710(n)]+16)`
-/

namespace A301359.P4264554362879992921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A301359.P4264554362879992921

/-! ## A301359.P12940028305542164812

`A301361(A167499(n+4)+1)`
-/

namespace A301359.P12940028305542164812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (A167499 (n + 4) + 1).toNat

end

end A301359.P12940028305542164812

/-!
# A301360: Number of nX7 0..1 arrays with every element equal to 1, 2, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301360, there is no canonical definition to state claims against.
-/

/-! ## A301360.P10731750291594602686

`A301361(A374008(n+1))`
-/

namespace A301360.P10731750291594602686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (A374008 (n + 1)).toNat

end

end A301360.P10731750291594602686

/-! ## A301360.P15066465597283403759

`A301361(A167487(n+5))`
-/

namespace A301360.P15066465597283403759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (A167487 (n + 5)).toNat

end

end A301360.P15066465597283403759

/-! ## A301360.P4845239822882450740

`A301361(A056119(n)+28)`
-/

namespace A301360.P4845239822882450740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (A056119 n + 28).toNat

end

end A301360.P4845239822882450740

/-! ## A301360.P3707053009597866272

`A301361(eq[11, A066657(n)])`
-/

namespace A301360.P3707053009597866272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301360.P3707053009597866272

/-! ## A301360.P14564679650986791231

`A301361(A166136(n+5)+1)`
-/

namespace A301360.P14564679650986791231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (A166136 (n + 5) + 1).toNat

end

end A301360.P14564679650986791231

/-!
# A301361: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301361, there is no canonical definition to state claims against.
-/

/-! ## A301361.P13594807859568768669

`A300639(n+1)+A011697(A058343(n))`
-/

namespace A301361.P13594807859568768669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (n + 1) + A011697 (A058343 n).toNat

end

end A301361.P13594807859568768669

/-! ## A301361.P17825444386705218539

`A300639(n+1)+A098841(A007318(n))`
-/

namespace A301361.P17825444386705218539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (n + 1) + A098841 (A007318 n).toNat

end

end A301361.P17825444386705218539

/-! ## A301361.P3024313925989764918

`A300639(n+1)+A185284(A061897(n))`
-/

namespace A301361.P3024313925989764918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (n + 1) + A185284 (A061897 n).toNat

end

end A301361.P3024313925989764918

/-! ## A301361.P6628079364953329695

`A300639(n+1)-A088194(A131067(n))`
-/

namespace A301361.P6628079364953329695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (n + 1) - A088194 (A131067 n).toNat

end

end A301361.P6628079364953329695

/-!
# A301363: G.f. A(x) satisfies: A(x) = 1/(1 - x*A(x)/(1 - 2*x*A(x)/(1 - 3*x*A(x)/(1 - 4*x*A(x)/(1 - ...))))), a continued fraction.

The programs for A301363, there is no canonical definition to state claims against.
-/

/-! ## A301363.P2476632000780137673

`A038502(A052865(n)+A007889(n))`
-/

namespace A301363.P2476632000780137673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A052865 n + A007889 n).toNat

end

end A301363.P2476632000780137673

/-! ## A301363.P7680819932122938306

`A088159(n)+A088157(A193660(n))`
-/

namespace A301363.P7680819932122938306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088159 n + A088157 (A193660 n).toNat

end

end A301363.P7680819932122938306

/-!
# A301364: Regular triangle where T(n,k) is the number of enriched p-trees of weight n with k leaves.

The programs for A301364, there is no canonical definition to state claims against.
-/

/-! ## A301364.P11871498419169920419

`A060384(A038738(n+1))^(A187829(n+1)-n)`
-/

namespace A301364.P11871498419169920419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060384 (A038738 (n + 1)).toNat : ℚ) ^ (A187829 (n + 1) - (n : ℤ) : ℤ)

end

end A301364.P11871498419169920419

/-! ## A301364.P15722730652227443012

`A060384(A038738(n+1))%A280180(A055999(n)+10)`
-/

namespace A301364.P15722730652227443012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060384 (A038738 (n + 1)).toNat) (A280180 (A055999 n + 10).toNat)

end

end A301364.P15722730652227443012

/-! ## A301364.P13200335534547188010

`A060384(A038738(n+1))%A137627(n+1)`
-/

namespace A301364.P13200335534547188010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060384 (A038738 (n + 1)).toNat) (A137627 (n + 1))

end

end A301364.P13200335534547188010

/-! ## A301364.P16927757169801331429

`A060384((A187829(n+1)-n)*A038738(n+1))`
-/

namespace A301364.P16927757169801331429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 ((A187829 (n + 1) - (n : ℤ)) * A038738 (n + 1)).toNat

end

end A301364.P16927757169801331429

/-! ## A301364.P17222391044114761715

`A196169(A100075(n))`
-/

namespace A301364.P17222391044114761715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196169 (A100075 n).toNat

end

end A301364.P17222391044114761715

/-!
# A301365: Regular triangle where T(n,k) is the number of strict trees of weight n with k leaves.

The programs for A301365, there is no canonical definition to state claims against.
-/

/-! ## A301365.P16330362922402736131

`A029922(A214075(n)%A258694(n))`
-/

namespace A301365.P16330362922402736131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029922 (Int.tmod (A214075 n) (A258694 n)).toNat

end

end A301365.P16330362922402736131

/-! ## A301365.P935428047906464856

`A029922(A214075(n))^A014963(A096231(n))`
-/

namespace A301365.P935428047906464856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029922 (A214075 n).toNat : ℚ) ^ (A014963 (A096231 n).toNat : ℤ)

end

end A301365.P935428047906464856

/-! ## A301365.P4667350493805570216

`A048766(lcm(A008616(3*n+2), A343097(n)))`
-/

namespace A301365.P4667350493805570216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.lcm (A008616 (3 * n + 2)) (A343097 n))

end

end A301365.P4667350493805570216

/-! ## A301365.P16672525449364425665

`A287272(A163940(n)+1)`
-/

namespace A301365.P16672525449364425665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A163940 n + 1).toNat

end

end A301365.P16672525449364425665

/-! ## A301365.P15764609372107937566

`A350127(A277504(n)%A240768(2*(n+1)))`
-/

namespace A301365.P15764609372107937566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350127 (Int.tmod (A277504 n) (A240768 (2 * (n + 1)))).toNat

end

end A301365.P15764609372107937566

/-!
# A301370: Maximum determinant of an n X n (0,1)-matrix that has exactly 2*n ones.

The programs for A301370, there is no canonical definition to state claims against.
-/

/-! ## A301370.P3764896861391163292

`floor(record[A078840(A018837(n))/2])`
-/

namespace A301370.P3764896861391163292
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078840 (A018837 n).toNat : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A301370.P3764896861391163292

/-! ## A301370.P11658946689764085251

`floor(record[A091538(A036496(n))/2])`
-/

namespace A301370.P11658946689764085251
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091538 (A036496 n).toNat : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A301370.P11658946689764085251

/-! ## A301370.P9100111503331404320

`floor(record[A091538(A131209(n))/2])`
-/

namespace A301370.P9100111503331404320
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091538 (A131209 n).toNat : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A301370.P9100111503331404320

/-! ## A301370.P11594024697095100822

`A004526(record[A078840(A018837(n))])`
-/

namespace A301370.P11594024697095100822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078840 (A018837 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A301370.P11594024697095100822

/-! ## A301370.P1820578960114319917

`A004526(record[A091538(A131209(n))])`
-/

namespace A301370.P1820578960114319917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091538 (A131209 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A301370.P1820578960114319917

/-!
# A301371: Maximum determinant of an n X n matrix with n copies of the numbers 1 .. n.

The programs for A301371, there is no canonical definition to state claims against.
-/

/-! ## A301371.P891893836193700589

`A309985(comp[or(8, n)])`
-/

namespace A301371.P891893836193700589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 8 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309985 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A301371.P891893836193700589

/-! ## A301371.P8696336035473639934

`A328030(comp[or(8, n)])`
-/

namespace A301371.P8696336035473639934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 8 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328030 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A301371.P8696336035473639934

/-!
# A301374: Values of A023900 which occur only at indices which are powers of a prime.

The programs for A301374, there is no canonical definition to state claims against.
-/

/-! ## A301374.P14382629564590708028

`1-A301590(n+1)`
-/

namespace A301374.P14382629564590708028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A301590 (n + 1)

end

end A301374.P14382629564590708028

/-! ## A301374.P10069945299355494651

`A023900(A301590(n+1))`
-/

namespace A301374.P10069945299355494651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A301590 (n + 1)).toNat

end

end A301374.P10069945299355494651

/-! ## A301374.P6888385415600452155

`A024000(p?[A301590(n+1)])`
-/

namespace A301374.P6888385415600452155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A301374.P6888385415600452155

/-! ## A301374.P15004195456193789674

`A033880(p?[A301590(n+1)])`
-/

namespace A301374.P15004195456193789674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A301374.P15004195456193789674

/-! ## A301374.P15562765047563979396

`A061020(p?[A301590(n+1)])`
-/

namespace A301374.P15562765047563979396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A301374.P15562765047563979396

/-!
# A301375: Number of ways to write n as x^2 + y^2 + z^2 + w^2 with x,y,z nonnegative integers and w a positive integer such that x*(y+3*z) is a cube or half a cube and y <= z <= w if x = 0.

The programs for A301375, there is no canonical definition to state claims against.
-/

/-! ## A301375.P57768676893613218

`A001222(or(A102954(n+1), A326154(n+2)))`
-/

namespace A301375.P57768676893613218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A102954 (n + 1)) (A326154 (n + 2))).toNat

end

end A301375.P57768676893613218

/-!
# A301378: a(n) = 10*A007605(n) - 9*A007652(n).

The programs for A301378, the canonical program `A301378.P6745929020986933071` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301378 has offset 1).

The definition of A301378 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A301378.P6745929020986933071

`10*A007605(n+1)-9*A007652(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A301378

/-- `10*A007605(n+1)-9*A007652(n+1)` -/
def P6745929020986933071.Spec : Prop :=
  ∀ n, P6745929020986933071.a n = A301378 (n + 1)

theorem P6745929020986933071.correct : P6745929020986933071.Spec := by
  intro n
  simp only [A301378, Nat.add_sub_cancel]

end A301378

/-! ## A301378.P1940164280634468347

`A000040(n+1)-A184955(A188666(n+1))`
-/

namespace A301378.P1940164280634468347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A184955 (A188666 (n + 1)).toNat

end

end A301378.P1940164280634468347

namespace A301378

/-- `A000040(n+1)-A184955(A188666(n+1))` -/
def P1940164280634468347.Spec : Prop :=
  ∀ n, P1940164280634468347.a n = A301378 (n + 1)

end A301378

/-!
# A301380: Number of tied close American football games: number of ways for the game to have n scoring plays, never be separated by more than one score after each play, and be tied at the end.

The programs for A301380, there is no canonical definition to state claims against.
-/

/-! ## A301380.P13700995844957459928

`A194220(A129149(n+7)+2)`
-/

namespace A301380.P13700995844957459928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194220 (A129149 (n + 7) + 2).toNat

end

end A301380.P13700995844957459928

/-!
# A301381: Number of tied close American football games: number of ways for the game to end at the score of n to n and never be separated by more than one score after each play.

The programs for A301381, there is no canonical definition to state claims against.
-/

/-! ## A301381.P8772486502913645685

`A208333(eq[A299602(n+1), A328081(n)])`
-/

namespace A301381.P8772486502913645685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208333 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A301381.P8772486502913645685

/-! ## A301381.P13913250833711612242

`A279861(3*n+2)*A329344(A098544(n)+1)`
-/

namespace A301381.P13913250833711612242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279861 (3 * n + 2) * A329344 (A098544 n + 1).toNat

end

end A301381.P13913250833711612242

/-!
# A301383: Expansion of (1 + 3*x - 2*x^2)/(1 - 7*x + 7*x^2 - x^3).

The programs for A301383, the canonical program `A301383.P969688340560558127` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A301383 has offset 0).

The definition of A301383 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x-2x^2)/(1-7x+7x^2-x^3))` (program `A301383.P969688340560558127`, by `A301383.P969688340560558127.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A301383.P969688340560558127

`ogf((1+3x-2x^2)/(1-7x+7x^2-x^3))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A301383

/-- `ogf((1+3x-2x^2)/(1-7x+7x^2-x^3))` -/
def P969688340560558127.Spec : Prop :=
  ∀ n, P969688340560558127.a n = A301383 n

theorem P969688340560558127.correct : P969688340560558127.Spec := by
  intro n
  simp only [A301383]

end A301383

/-! ## A301383.P16248866612014595827

`6*a(n-1)-a(n-2)+2` with `a(0)=1, a(1)=10`
-/

namespace A301383.P16248866612014595827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  6 * a (n - 1) - a (n - 2) + 2

end

end A301383.P16248866612014595827

namespace A301383

/-- `6*a(n-1)-a(n-2)+2` -/
def P16248866612014595827.Spec : Prop :=
  ∀ n, P16248866612014595827.a n = A301383 n

end A301383

/-! ## A301383.P16534773111496457640

`A241976(n+1)+1`
-/

namespace A301383.P16534773111496457640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241976 (n + 1) + 1

end

end A301383.P16534773111496457640

namespace A301383

/-- `A241976(n+1)+1` -/
def P16534773111496457640.Spec : Prop :=
  ∀ n, P16534773111496457640.a n = A301383 n

end A301383

/-! ## A301383.P15949635313635555145

`3*A001652(n)+1`
-/

namespace A301383.P15949635313635555145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001652 n + 1

end

end A301383.P15949635313635555145

namespace A301383

/-- `3*A001652(n)+1` -/
def P15949635313635555145.Spec : Prop :=
  ∀ n, P15949635313635555145.a n = A301383 n

end A301383

/-! ## A301383.P9167867694401567772

`A033539(2*n+2)`
-/

namespace A301383.P9167867694401567772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033539 (2 * n + 2)

end

end A301383.P9167867694401567772

namespace A301383

/-- `A033539(2*n+2)` -/
def P9167867694401567772.Spec : Prop :=
  ∀ n, P9167867694401567772.a n = A301383 n

end A301383

/-! ## A301383.P9509485746093967142

`3*A046090(n)-2`
-/

namespace A301383.P9509485746093967142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A046090 n - 2

end

end A301383.P9509485746093967142

namespace A301383

/-- `3*A046090(n)-2` -/
def P9509485746093967142.Spec : Prop :=
  ∀ n, P9509485746093967142.a n = A301383 n

end A301383

/-! ## A301383.P7735342843709136546

`floor(a(n-1)/(3-sqrt(8)))+3` with `a(0)=1, a(1)=10`
-/

namespace A301383.P7735342843709136546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋ + 3

end

end A301383.P7735342843709136546

namespace A301383

/-- `floor(a(n-1)/(3-sqrt(8)))+3` -/
def P7735342843709136546.Spec : Prop :=
  ∀ n, P7735342843709136546.a n = A301383 n

end A301383

/-! ## A301383.P5052496589423244805

`2-(a(n-2)-6*a(n-1))` with `a(0)=1, a(1)=10`
-/

namespace A301383.P5052496589423244805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  2 - (a (n - 2) - 6 * a (n - 1))

end

end A301383.P5052496589423244805

namespace A301383

/-- `2-(a(n-2)-6*a(n-1))` -/
def P5052496589423244805.Spec : Prop :=
  ∀ n, P5052496589423244805.a n = A301383 n

end A301383

/-! ## A301383.P13740531452835705443

`3*ceil(ceil(∑[((sqrt(2)+1)^n)²])/2)-2`
-/

namespace A301383.P13740531452835705443
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (2 : ℝ) + 1) ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈(⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ : ℚ) / 2⌉ - 2

end

end A301383.P13740531452835705443

namespace A301383

/-- `3*ceil(ceil(∑[((sqrt(2)+1)^n)²])/2)-2` -/
def P13740531452835705443.Spec : Prop :=
  ∀ n, P13740531452835705443.a n = A301383 n

end A301383

/-! ## A301383.P16285292724543167273

`floor(3/2*A002315(n))`
-/

namespace A301383.P16285292724543167273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (A002315 n : ℚ)⌋

end

end A301383.P16285292724543167273

namespace A301383

/-- `floor(3/2*A002315(n))` -/
def P16285292724543167273.Spec : Prop :=
  ∀ n, P16285292724543167273.a n = A301383 n

end A301383

/-! ## A301383.P9816261792362960016

`record[A033539(A014681(n))]`
-/

namespace A301383.P9816261792362960016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033539 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301383.P9816261792362960016

namespace A301383

/-- `record[A033539(A014681(n))]` -/
def P9816261792362960016.Spec : Prop :=
  ∀ n, P9816261792362960016.a n = A301383 n

end A301383

/-! ## A301383.P6042212182840218814

`record[A033539(n)*A033999(n)]`
-/

namespace A301383.P6042212182840218814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033539 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301383.P6042212182840218814

namespace A301383

/-- `record[A033539(n)*A033999(n)]` -/
def P6042212182840218814.Spec : Prop :=
  ∀ n, P6042212182840218814.a n = A301383 n

end A301383

/-! ## A301383.P9064689756906038855

`record[A033539(n)/A009001(n)²]`
-/

namespace A301383.P9064689756906038855
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033539 n : ℚ) / (A009001 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301383.P9064689756906038855

namespace A301383

/-- `record[A033539(n)/A009001(n)²]` -/
def P9064689756906038855.Spec : Prop :=
  ∀ n, P9064689756906038855.a n = (A301383 n : ℚ)

end A301383

/-! ## A301383.P16475151689045432855

`abs(A077444(n+1)-A046090(n))`
-/

namespace A301383.P16475151689045432855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077444 (n + 1) - A046090 n|

end

end A301383.P16475151689045432855

namespace A301383

/-- `abs(A077444(n+1)-A046090(n))` -/
def P16475151689045432855.Spec : Prop :=
  ∀ n, P16475151689045432855.a n = A301383 n

end A301383

/-! ## A301383.P4121411827207802282

`record[A009001(2*n)*A033539(n)]`
-/

namespace A301383.P4121411827207802282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A033539 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A301383.P4121411827207802282

namespace A301383

/-- `record[A009001(2*n)*A033539(n)]` -/
def P4121411827207802282.Spec : Prop :=
  ∀ n, P4121411827207802282.a n = A301383 n

end A301383

/-! ## A301383.P2536299049837132190

`∑[A106329(n+1)%A075870(n+1)]`
-/

namespace A301383.P2536299049837132190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106329 (n + 1)) (A075870 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301383.P2536299049837132190

namespace A301383

/-- `∑[A106329(n+1)%A075870(n+1)]` -/
def P2536299049837132190.Spec : Prop :=
  ∀ n, P2536299049837132190.a n = A301383 n

end A301383

/-! ## A301383.P7064186453147684703

`(Δ[A072221(n)]-1)/2`
-/

namespace A301383.P7064186453147684703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072221 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 1 : ℚ) / 2

end

end A301383.P7064186453147684703

namespace A301383

/-- `(Δ[A072221(n)]-1)/2` -/
def P7064186453147684703.Spec : Prop :=
  ∀ n, P7064186453147684703.a n = (A301383 n : ℚ)

end A301383

/-! ## A301383.P1144642454023978519

`Δ[A089950(n)-A182189(n)]`
-/

namespace A301383.P1144642454023978519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089950 n - A182189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A301383.P1144642454023978519

namespace A301383

/-- `Δ[A089950(n)-A182189(n)]` -/
def P1144642454023978519.Spec : Prop :=
  ∀ n, P1144642454023978519.a n = A301383 n

end A301383

/-! ## A301383.P5126730658242374535

`(A065113(n+1)-A077445(n+1))/2`
-/

namespace A301383.P5126730658242374535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065113 (n + 1) - A077445 (n + 1) : ℚ) / 2

end

end A301383.P5126730658242374535

namespace A301383

/-- `(A065113(n+1)-A077445(n+1))/2` -/
def P5126730658242374535.Spec : Prop :=
  ∀ n, P5126730658242374535.a n = (A301383 n : ℚ)

end A301383

/-!
# A301384: Number of integer-sided triangles of area A188158(n).

The programs for A301384, there is no canonical definition to state claims against.
-/

/-! ## A301384.P597725836299945573

`A051585(A188158(n+1)/6)`
-/

namespace A301384.P597725836299945573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051585 (SequenceMachineLib.roundAway ((A188158 (n + 1) : ℚ) / 6)).toNat

end

end A301384.P597725836299945573

/-! ## A301384.P9144043889974710992

`Δ[record[A051584(n)+a(n-2)]]` with `a(0)=1, a(1)=1`
-/

namespace A301384.P9144043889974710992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A051584 n + f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A301384.P9144043889974710992

/-! ## A301384.P13592632608590867676

`A051584(A188158(n+1))`
-/

namespace A301384.P13592632608590867676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051584 (A188158 (n + 1)).toNat

end

end A301384.P13592632608590867676

/-! ## A301384.P808850395420745843

`A051584(lt[0, A051584(n+1)]+1)`
-/

namespace A301384.P808850395420745843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051584 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A301384.P808850395420745843

/-! ## A301384.P9406331518466271122

`A007875(A328818(n)+A077812(n+1))`
-/

namespace A301384.P9406331518466271122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (A328818 n + A077812 (n + 1)).toNat

end

end A301384.P9406331518466271122

/-!
# A301385: O.g.f. A(x) satisfies: A(x) = x * (1 + 3*x*A'(x)) / (1 + x*A'(x)).

The programs for A301385, there is no canonical definition to state claims against.
-/

/-! ## A301385.P17110650297046608296

`A116538(n*a(n-1))+n` with `a(0)=1`
-/

namespace A301385.P17110650297046608296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A116538 ((n : ℤ) * a (n - 1)).toNat + (n : ℤ)

end

end A301385.P17110650297046608296

/-! ## A301385.P5477175089258992857

`∑[A278083(A003161(n))]`
-/

namespace A301385.P5477175089258992857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278083 (A003161 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301385.P5477175089258992857

/-!
# A301386: E.g.f. A(x) satisfies: [x^n] A(x)^(-n) = (2*n - 3) * [x^(n-1)] A(x)^(-n) for n>=1.

The programs for A301386, there is no canonical definition to state claims against.
-/

/-! ## A301386.P15966156119437437551

`A266117(∏[or(1, n²)])`
-/

namespace A301386.P15966156119437437551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266117 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A301386.P15966156119437437551

/-!
# A301387: E.g.f. A(x) satisfies: [x^n] A(x)^n = (2*n - 1) * [x^(n-1)] A(x)^n for n>=1.

The programs for A301387, there is no canonical definition to state claims against.
-/

/-! ## A301387.P7559936131007911977

`A244988(A080599(n)²)`
-/

namespace A301387.P7559936131007911977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244988 (A080599 n ^ 2).toNat

end

end A301387.P7559936131007911977

/-!
# A301388: G.f. A(x) satisfies: A(x) = x * (1 + x*A'(x)) / (1 - x*A'(x)).

The programs for A301388, there is no canonical definition to state claims against.
-/

/-! ## A301388.P15326376697567028603

`A285758(∏[comp[ceil(ϕ*n)]])`
-/

namespace A301388.P15326376697567028603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285758 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A301388.P15326376697567028603

/-!
# A301391: Number of ways to write n^2 as x^2 + y^2 + z^2 + w^2 with x,y,z,w nonnegative integers and y even such that x^2 - (6*y)^2 = 4^k for some k = 0,1,2,....

The programs for A301391, there is no canonical definition to state claims against.
-/

/-! ## A301391.P17654843619980787569

`A161789(∑[∑[A112987(n)]])`
-/

namespace A301391.P17654843619980787569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112987 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161789 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A301391.P17654843619980787569

/-! ## A301391.P8506667991297399857

`A126304(lcm(5, A161825(n+1)))`
-/

namespace A301391.P8506667991297399857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126304 (Int.lcm 5 (A161825 (n + 1)))

end

end A301391.P8506667991297399857

/-! ## A301391.P17493890135775982310

`A294882(A181543(∑{d}[n+1, #*#%2])+2)`
-/

namespace A301391.P17493890135775982310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294882 (A181543 (∑ d ∈ Nat.divisors (f1 n), d * (d % 2)) + 2).toNat

end

end A301391.P17493890135775982310

/-! ## A301391.P11037959412252253653

`gcd(A299200(n+1), A326178(A000032(n)))`
-/

namespace A301391.P11037959412252253653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A299200 (n + 1)) (A326178 (A000032 n).toNat)

end

end A301391.P11037959412252253653

/-! ## A301391.P10710041829441918683

`A358120(A178757(n+1))%A139199(n+1)`
-/

namespace A301391.P10710041829441918683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358120 (A178757 (n + 1)).toNat) (A139199 (n + 1))

end

end A301391.P10710041829441918683

/-!
# A301392: a(n) = Product_{k=1..L} hypergeom([-n, -n], [1], k) with L = 3.

The programs for A301392, there is no canonical definition to state claims against.
-/

/-! ## A301392.P17396116393441156113

`A069835(n)*A268555(n)`
-/

namespace A301392.P17396116393441156113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069835 n * A268555 n

end

end A301392.P17396116393441156113

/-! ## A301392.P4660114075561516387

`A000984(n)*A001850(n)*A069835(n)`
-/

namespace A301392.P4660114075561516387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A001850 n * A069835 n

end

end A301392.P4660114075561516387

/-! ## A301392.P10192908802645767505

`A301393(n)/A084771(n)`
-/

namespace A301392.P10192908802645767505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301393 n : ℚ) / (A084771 n : ℚ)

end

end A301392.P10192908802645767505

/-! ## A301392.P6112303989400068294

`A301393(n)/sqrt(A246923(n))`
-/

namespace A301392.P6112303989400068294
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A301393 n : ℝ) / Real.sqrt (A246923 n : ℝ)

end

end A301392.P6112303989400068294

/-! ## A301392.P14825487485086508182

`A301393(n)/∑[A085363(n)]`
-/

namespace A301392.P14825487485086508182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301393 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A301392.P14825487485086508182

/-!
# A301393: a(n) = Product_{k=1..L} hypergeom([-n, -n], [1], k) with L = 4.

The programs for A301393, there is no canonical definition to state claims against.
-/

/-! ## A301393.P7783255187563560593

`A084771(n)*A301392(n)`
-/

namespace A301393.P7783255187563560593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084771 n * A301392 n

end

end A301393.P7783255187563560593

/-!
# A301394: Number of n X n 0..1 arrays with every element equal to 2, 3, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301394, there is no canonical definition to state claims against.
-/

/-! ## A301394.P15437775569389077733

`A301400(∑[4*n]+1)`
-/

namespace A301394.P15437775569389077733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301400 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A301394.P15437775569389077733

/-! ## A301394.P8862758653979883810

`A057427(n)*A301400(A001844(n))`
-/

namespace A301394.P8862758653979883810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A301400 (A001844 n).toNat

end

end A301394.P8862758653979883810

/-! ## A301394.P3175828590566772719

`A301400(A001844(n))*A339876(n+1)`
-/

namespace A301394.P3175828590566772719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301400 (A001844 n).toNat * A339876 (n + 1)

end

end A301394.P3175828590566772719

/-! ## A301394.P6834242717236544467

`A007318(C(3, n))*A301400(A001844(n))`
-/

namespace A301394.P6834242717236544467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A301400 (A001844 n).toNat

end

end A301394.P6834242717236544467

/-! ## A301394.P12339380672179974070

`A000040(n+2)%2*A301400(A001844(n))`
-/

namespace A301394.P12339380672179974070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A301400 (A001844 n).toNat

end

end A301394.P12339380672179974070

/-!
# A301395: Number of nX3 0..1 arrays with every element equal to 2, 3, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301395, there is no canonical definition to state claims against.
-/

/-! ## A301395.P2356184441658731616

`A301400(∑[n+2]+4)`
-/

namespace A301395.P2356184441658731616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301400 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A301395.P2356184441658731616

/-! ## A301395.P3589644238273811399

`A301400(A167614(n+1))%A034474(n)`
-/

namespace A301395.P3589644238273811399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301400 (A167614 (n + 1)).toNat) (A034474 n)

end

end A301395.P3589644238273811399

/-! ## A301395.P14441078946276518485

`A301400(A167614(n+1))+A034449(n+1)`
-/

namespace A301395.P14441078946276518485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301400 (A167614 (n + 1)).toNat + A034449 (n + 1)

end

end A301395.P14441078946276518485

/-! ## A301395.P9788655695940875662

`A301400(A167614(n+1))+A034452(n+1)`
-/

namespace A301395.P9788655695940875662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301400 (A167614 (n + 1)).toNat + A034452 (n + 1)

end

end A301395.P9788655695940875662

/-! ## A301395.P17343737682933985337

`A301400(A167614(n+1))+A034453(n+1)`
-/

namespace A301395.P17343737682933985337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301400 (A167614 (n + 1)).toNat + A034453 (n + 1)

end

end A301395.P17343737682933985337

/-!
# A301396: Number of nX4 0..1 arrays with every element equal to 2, 3, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301396, there is no canonical definition to state claims against.
-/

/-! ## A301396.P17983857602218078458

`A301400(A374004(n+1))`
-/

namespace A301396.P17983857602218078458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301400 (A374004 (n + 1)).toNat

end

end A301396.P17983857602218078458

/-! ## A301396.P5004697666083786916

`A301400(A052905(n)+9)`
-/

namespace A301396.P5004697666083786916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301400 (A052905 n + 9).toNat

end

end A301396.P5004697666083786916

/-! ## A301396.P13451951787876373520

`A301400(A055999(n)+10)`
-/

namespace A301396.P13451951787876373520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301400 (A055999 n + 10).toNat

end

end A301396.P13451951787876373520

/-! ## A301396.P3204833757069023228

`A301400(A167614(n+2)+1)`
-/

namespace A301396.P3204833757069023228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301400 (A167614 (n + 2) + 1).toNat

end

end A301396.P3204833757069023228

/-! ## A301396.P10773337674504259163

`A301400(A166136(n+2)-2)`
-/

namespace A301396.P10773337674504259163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301400 (A166136 (n + 2) - 2).toNat

end

end A301396.P10773337674504259163

/-!
# A301397: Number of nX5 0..1 arrays with every element equal to 2, 3, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301397, there is no canonical definition to state claims against.
-/

/-! ## A301397.P1342019121207921704

`A301400(A374005(n+1))`
-/

namespace A301397.P1342019121207921704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301400 (A374005 (n + 1)).toNat

end

end A301397.P1342019121207921704

/-! ## A301397.P10238856153552912519

`A301400(A056000(n)+15)`
-/

namespace A301397.P10238856153552912519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301400 (A056000 n + 15).toNat

end

end A301397.P10238856153552912519

/-! ## A301397.P7460843668863707667

`A301400(eq[6, A131818(n+1)])`
-/

namespace A301397.P7460843668863707667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301400 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301397.P7460843668863707667

/-! ## A301397.P4444502452760452161

`A301400(A056115(n)+11)`
-/

namespace A301397.P4444502452760452161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301400 (A056115 n + 11).toNat

end

end A301397.P4444502452760452161

/-! ## A301397.P17663836693696258678

`A301400(eq[4, A193592(n)])`
-/

namespace A301397.P17663836693696258678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301400 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301397.P17663836693696258678

/-!
# A301398: Number of nX6 0..1 arrays with every element equal to 2, 3, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301398, there is no canonical definition to state claims against.
-/

/-! ## A301398.P12142337556324829170

`A301400(A374007(n+1))`
-/

namespace A301398.P12142337556324829170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301400 (A374007 (n + 1)).toNat

end

end A301398.P12142337556324829170

/-! ## A301398.P7477183795462550832

`A301400(A056115(n)+21)`
-/

namespace A301398.P7477183795462550832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301400 (A056115 n + 21).toNat

end

end A301398.P7477183795462550832

/-! ## A301398.P17405099165594852386

`A301400(eq[7, A131818(n+1)])`
-/

namespace A301398.P17405099165594852386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301400 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301398.P17405099165594852386

/-! ## A301398.P7825515068936367130

`A301400(A056119(n)+16)`
-/

namespace A301398.P7825515068936367130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301400 (A056119 n + 16).toNat

end

end A301398.P7825515068936367130

/-! ## A301398.P3194639647945712614

`A301400(eq[5, A193592(n)])`
-/

namespace A301398.P3194639647945712614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301400 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301398.P3194639647945712614

/-!
# A301399: Number of nX7 0..1 arrays with every element equal to 2, 3, 4, 5 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A301399, there is no canonical definition to state claims against.
-/

/-! ## A301399.P14450857817147853224

`A301400(A374008(n+1))`
-/

namespace A301399.P14450857817147853224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301400 (A374008 (n + 1)).toNat

end

end A301399.P14450857817147853224

/-! ## A301399.P8352738679168362265

`A301400(eq[8, A131818(n+1)])`
-/

namespace A301399.P8352738679168362265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301400 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301399.P8352738679168362265

/-! ## A301399.P14595181850961375678

`A301400(eq[6, A144328(n+1)]+1)`
-/

namespace A301399.P14595181850961375678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301400 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A301399.P14595181850961375678

/-! ## A301399.P9622243204276317312

`A301400(eq[6, A193592(n)])`
-/

namespace A301399.P9622243204276317312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301400 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301399.P9622243204276317312

/-! ## A301399.P12935022307673137987

`A301400(eq[7, A200370(n+1)])`
-/

namespace A301399.P12935022307673137987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301400 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A301399.P12935022307673137987

