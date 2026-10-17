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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
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
# A129900: Primes p such that 10*p + q is a prime, where q is the smallest prime > p.

The programs for A129900, there is no canonical definition to state claims against.
-/

/-! ## A129900.P15719060759334752628

`A112681(2*n+1)%A022264(A118896(n))`
-/

namespace A129900.P15719060759334752628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112681 (2 * n + 1)) (A022264 (A118896 n).toNat)

end

end A129900.P15719060759334752628

/-! ## A129900.P14208120685159801002

`A000027(A112681(2*n+1))%A365302(3*(n+1))`
-/

namespace A129900.P14208120685159801002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A112681 (2 * n + 1)).toNat) (A365302 (3 * (n + 1)))

end

end A129900.P14208120685159801002

/-!
# A129901: For two consecutive primes p and q the difference 10*q - p is prime. The first of the pair of primes is listed.

The programs for A129901, there is no canonical definition to state claims against.
-/

/-! ## A129901.P14705052962292533691

`p?[lt[A055076(A005250(n+4)), 3]]`
-/

namespace A129901.P14705052962292533691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (A005250 (n + 4)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A129901.P14705052962292533691

/-! ## A129901.P8359970292693761348

`p?[∑[A046693(A095884(n+1))]]`
-/

namespace A129901.P8359970292693761348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046693 (A095884 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129901.P8359970292693761348

/-! ## A129901.P3197606998992211828

`A329191(A266986(n+1)+A010057(n))`
-/

namespace A129901.P3197606998992211828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329191 (A266986 (n + 1) + A010057 n).toNat

end

end A129901.P3197606998992211828

/-! ## A129901.P14578826387299027943

`A008578(lt[A018243(n+1), A210615(n+1)])`
-/

namespace A129901.P14578826387299027943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A129901.P14578826387299027943

/-! ## A129901.P13076429699888490821

`A154363(A323521(n+1)-2)`
-/

namespace A129901.P13076429699888490821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154363 (A323521 (n + 1) - 2).toNat

end

end A129901.P13076429699888490821

/-!
# A129902: Smallest multiple of n having exactly twice as many divisors as n.

The programs for A129902, there is no canonical definition to state claims against.
-/

/-! ## A129902.P248068673541868164

`(n+1)*A337686(n+1)`
-/

namespace A129902.P248068673541868164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A337686 (n + 1)

end

end A129902.P248068673541868164

/-! ## A129902.P3069081723981738784

`(n+1)*(A055881(∑[or(1, n)])+1)`
-/

namespace A129902.P3069081723981738784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A055881 (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A129902.P3069081723981738784

/-! ## A129902.P4519043667119960038

`(n+1)*(A055881(A000982(n+1))+1)`
-/

namespace A129902.P4519043667119960038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A055881 (A000982 (n + 1)).toNat + 1)

end

end A129902.P4519043667119960038

/-! ## A129902.P557720928158715589

`(A055881(A008811(2*(n+1))/2)+1)*(n+1)`
-/

namespace A129902.P557720928158715589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055881 (SequenceMachineLib.roundAway ((A008811 (2 * (n + 1)) : ℚ) / 2)).toNat + 1) * (n + 1 : ℤ)

end

end A129902.P557720928158715589

/-! ## A129902.P1745633706170621052

`(A055881((n+1)*∏{p}[n+1, #])+1)*(n+1)`
-/

namespace A129902.P1745633706170621052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055881 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p)) + 1) * (n + 1 : ℤ)

end

end A129902.P1745633706170621052

/-! ## A129902.P14118259341578057810

`(n+1)*(A055881((n+1)²/A003557(n+1))+1)`
-/

namespace A129902.P14118259341578057810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A055881 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A003557 (n + 1) : ℚ))).toNat + 1)

end

end A129902.P14118259341578057810

/-! ## A129902.P2266478345406975710

`A056926(((n+1)*A007978(n+1))²)`
-/

namespace A129902.P2266478345406975710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (((n + 1 : ℤ) * A007978 (n + 1)) ^ 2).toNat

end

end A129902.P2266478345406975710

/-! ## A129902.P7334593084667056880

`(A151933(A000203(n+1)-n)!+n)*A007978(n+1)`
-/

namespace A129902.P7334593084667056880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151933 (A000203 (n + 1) - (n : ℤ)).toNat).toNat + n : ℤ) * A007978 (n + 1)

end

end A129902.P7334593084667056880

/-! ## A129902.P14656767625976058631

`A007978(n+1)*A195199(n+1)/A351126(n+1)`
-/

namespace A129902.P14656767625976058631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007978 (n + 1) * A195199 (n + 1) : ℚ) / (A351126 (n + 1) : ℚ)

end

end A129902.P14656767625976058631

/-!
# A129903: Expansion of 1/(1+x^2-x^3+x^4).

The programs for A129903, the canonical program `A129903.P15399926854643451506` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129903 has offset 0).

The definition of A129903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1036 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129903.P15399926854643451506

`a(n-3)-(a(n-2)+a(n-4))` with `a(0)=1, a(1)=0, a(2)=-1, a(3)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129903

/-- `a(n-3)-(a(n-2)+a(n-4))` -/
def P15399926854643451506.Spec : Prop :=
  ∀ n, P15399926854643451506.a n = A129903 n

theorem P15399926854643451506.correct : P15399926854643451506.Spec := by
  intro n
  simp only [A129903]

end A129903

/-! ## A129903.P5312126917528133340

`a(n-3)-a(n-2)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=-1, a(3)=1`
-/

namespace A129903.P5312126917528133340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1, 1] fun n a =>
  a (n - 3) - a (n - 2) - a (n - 4)

end

end A129903.P5312126917528133340

namespace A129903

/-- `a(n-3)-a(n-2)-a(n-4)` -/
def P5312126917528133340.Spec : Prop :=
  ∀ n, P5312126917528133340.a n = A129903 n

theorem P5312126917528133340.correct : P5312126917528133340.Spec := by
  intro n
  simp only [A129903, Nat.add_sub_cancel, A129903.P5312126917528133340.a, A129903.P15399926854643451506.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A129903

/-!
# A129904: Find the first two terms in A003215, say A003215(i) and A003215(j), that are divisible by a number in A016921 not 1, say by k = A016921(m). Then i + j + 1 = k and k is added to the sequence.

The programs for A129904, the canonical program `A129904.P381992296892197459` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129904 has offset 1).

The definition of A129904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129904.P381992296892197459

`A004611(n+2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A129904

/-- `A004611(n+2)` -/
def P381992296892197459.Spec : Prop :=
  ∀ n, P381992296892197459.a n = A129904 (n + 1)

theorem P381992296892197459.correct : P381992296892197459.Spec := by
  intro n
  simp only [A129904, Nat.add_sub_cancel]

end A129904

/-! ## A129904.P16549595159696793132

`filter[A034017(n+3), A014578(#)]`
-/

namespace A129904.P16549595159696793132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A129904.P16549595159696793132

namespace A129904

/-- `filter[A034017(n+3), A014578(#)]` -/
def P16549595159696793132.Spec : Prop :=
  ∀ n, P16549595159696793132.a n = A129904 (n + 1)

end A129904

/-! ## A129904.P2712259526397627833

`filter[A034017(n+3), A187074(#)]`
-/

namespace A129904.P2712259526397627833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A129904.P2712259526397627833

namespace A129904

/-- `filter[A034017(n+3), A187074(#)]` -/
def P2712259526397627833.Spec : Prop :=
  ∀ n, P2712259526397627833.a n = A129904 (n + 1)

end A129904

/-! ## A129904.P4944645237571448912

`filter[A034017(n+3), A359374(#)]`
-/

namespace A129904.P4944645237571448912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A129904.P4944645237571448912

namespace A129904

/-- `filter[A034017(n+3), A359374(#)]` -/
def P4944645237571448912.Spec : Prop :=
  ∀ n, P4944645237571448912.a n = A129904 (n + 1)

end A129904

/-! ## A129904.P16550270129003412020

`filter[A034017(n+3), A372573(#)]`
-/

namespace A129904.P16550270129003412020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A129904.P16550270129003412020

namespace A129904

/-- `filter[A034017(n+3), A372573(#)]` -/
def P16550270129003412020.Spec : Prop :=
  ∀ n, P16550270129003412020.a n = A129904 (n + 1)

end A129904

/-! ## A129904.P13059754280278687184

`filter[A034017(n+3), A372574(#)]`
-/

namespace A129904.P13059754280278687184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A129904.P13059754280278687184

namespace A129904

/-- `filter[A034017(n+3), A372574(#)]` -/
def P13059754280278687184.Spec : Prop :=
  ∀ n, P13059754280278687184.a n = A129904 (n + 1)

end A129904

/-! ## A129904.P15702248673601348278

`filter[A034017(n+3), A373136(#)]`
-/

namespace A129904.P15702248673601348278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j).toNat = 1) n)

end

end A129904.P15702248673601348278

namespace A129904

/-- `filter[A034017(n+3), A373136(#)]` -/
def P15702248673601348278.Spec : Prop :=
  ∀ n, P15702248673601348278.a n = A129904 (n + 1)

end A129904

/-! ## A129904.P1938067790962883599

`filter[A364614(n+2), A187074(#)]`
-/

namespace A129904.P1938067790962883599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A129904.P1938067790962883599

namespace A129904

/-- `filter[A364614(n+2), A187074(#)]` -/
def P1938067790962883599.Spec : Prop :=
  ∀ n, P1938067790962883599.a n = A129904 (n + 1)

end A129904

/-! ## A129904.P12167770284144213435

`filter[A364614(n+2), A359374(#)]`
-/

namespace A129904.P12167770284144213435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A129904.P12167770284144213435

namespace A129904

/-- `filter[A364614(n+2), A359374(#)]` -/
def P12167770284144213435.Spec : Prop :=
  ∀ n, P12167770284144213435.a n = A129904 (n + 1)

end A129904

/-! ## A129904.P6389750509829954829

`filter[A364614(n+2), A373155(#)]`
-/

namespace A129904.P6389750509829954829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A129904.P6389750509829954829

namespace A129904

/-- `filter[A364614(n+2), A373155(#)]` -/
def P6389750509829954829.Spec : Prop :=
  ∀ n, P6389750509829954829.a n = A129904 (n + 1)

end A129904

/-! ## A129904.P9524447838277456001

`filter[A364614(n+2), A373156(#)]`
-/

namespace A129904.P9524447838277456001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A129904.P9524447838277456001

namespace A129904

/-- `filter[A364614(n+2), A373156(#)]` -/
def P9524447838277456001.Spec : Prop :=
  ∀ n, P9524447838277456001.a n = A129904 (n + 1)

end A129904

/-! ## A129904.P15285099446221366221

`filter[A364614(n+2), A374043(#)]`
-/

namespace A129904.P15285099446221366221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A129904.P15285099446221366221

namespace A129904

/-- `filter[A364614(n+2), A374043(#)]` -/
def P15285099446221366221.Spec : Prop :=
  ∀ n, P15285099446221366221.a n = A129904 (n + 1)

end A129904

/-! ## A129904.P2799000658648531417

`filter[A202822(n+2), A319691(#)]`
-/

namespace A129904.P2799000658648531417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202822 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319691 (f1 j).toNat = 1) n)

end

end A129904.P2799000658648531417

namespace A129904

/-- `filter[A202822(n+2), A319691(#)]` -/
def P2799000658648531417.Spec : Prop :=
  ∀ n, P2799000658648531417.a n = A129904 (n + 1)

end A129904

/-! ## A129904.P3587900781108994296

`filter[A364614(n+2), A162289(#)]`
-/

namespace A129904.P3587900781108994296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A129904.P3587900781108994296

namespace A129904

/-- `filter[A364614(n+2), A162289(#)]` -/
def P3587900781108994296.Spec : Prop :=
  ∀ n, P3587900781108994296.a n = A129904 (n + 1)

end A129904

/-! ## A129904.P5571629621654272833

`filter[A260682(n+2), A319691(#)]`
-/

namespace A129904.P5571629621654272833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260682 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319691 (f1 j).toNat = 1) n)

end

end A129904.P5571629621654272833

namespace A129904

/-- `filter[A260682(n+2), A319691(#)]` -/
def P5571629621654272833.Spec : Prop :=
  ∀ n, P5571629621654272833.a n = A129904 (n + 1)

end A129904

/-! ## A129904.P4993995785011974208

`filter[A266836(n+2), A319691(#)]`
-/

namespace A129904.P4993995785011974208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266836 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319691 (f1 j).toNat = 1) n)

end

end A129904.P4993995785011974208

namespace A129904

/-- `filter[A266836(n+2), A319691(#)]` -/
def P4993995785011974208.Spec : Prop :=
  ∀ n, P4993995785011974208.a n = A129904 (n + 1)

end A129904

/-! ## A129904.P15070115061586002309

`filter[A364614(n+2), A319691(#)]`
-/

namespace A129904.P15070115061586002309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319691 (f1 j).toNat = 1) n)

end

end A129904.P15070115061586002309

namespace A129904

/-- `filter[A364614(n+2), A319691(#)]` -/
def P15070115061586002309.Spec : Prop :=
  ∀ n, P15070115061586002309.a n = A129904 (n + 1)

end A129904

/-! ## A129904.P659065369761583759

`filter[A364614(n+2), A320106(#)]`
-/

namespace A129904.P659065369761583759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A129904.P659065369761583759

namespace A129904

/-- `filter[A364614(n+2), A320106(#)]` -/
def P659065369761583759.Spec : Prop :=
  ∀ n, P659065369761583759.a n = A129904 (n + 1)

end A129904

/-! ## A129904.P14082526019267390435

`filter[A364614(n+2), A354354(#)]`
-/

namespace A129904.P14082526019267390435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364614 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A129904.P14082526019267390435

namespace A129904

/-- `filter[A364614(n+2), A354354(#)]` -/
def P14082526019267390435.Spec : Prop :=
  ∀ n, P14082526019267390435.a n = A129904 (n + 1)

end A129904

/-! ## A129904.P3947324585888585161

`filter[A034017(n+3), A162289(#)]`
-/

namespace A129904.P3947324585888585161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A129904.P3947324585888585161

namespace A129904

/-- `filter[A034017(n+3), A162289(#)]` -/
def P3947324585888585161.Spec : Prop :=
  ∀ n, P3947324585888585161.a n = A129904 (n + 1)

end A129904

/-!
# A129905: Expansion of g.f.: (1-x)*(1+2*x)/((1+x)*(1-3*x+x^2)).

The programs for A129905, the canonical program `A129905.P482095014513334369` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129905 has offset 0).

The definition of A129905 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129905.P482095014513334369

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=6`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129905

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P482095014513334369.Spec : Prop :=
  ∀ n, P482095014513334369.a n = A129905 n

theorem P482095014513334369.correct : P482095014513334369.Spec := by
  intro n
  simp only [A129905]

end A129905

/-! ## A129905.P9927691134379781525

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A129905.P9927691134379781525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A129905.P9927691134379781525

namespace A129905

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P9927691134379781525.Spec : Prop :=
  ∀ n, P9927691134379781525.a n = A129905 n

theorem P9927691134379781525.correct : P9927691134379781525.Spec := by
  intro n
  simp only [A129905, Nat.add_sub_cancel, A129905.P9927691134379781525.a, A129905.P482095014513334369.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A129905

/-! ## A129905.P18362154961965264808

`A295684(2*(n+1))`
-/

namespace A129905.P18362154961965264808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295684 (2 * (n + 1))

end

end A129905.P18362154961965264808

namespace A129905

/-- `A295684(2*(n+1))` -/
def P18362154961965264808.Spec : Prop :=
  ∀ n, P18362154961965264808.a n = A129905 n

end A129905

/-! ## A129905.P16350087075855475425

`∑[abs(A111572(2*n))]`
-/

namespace A129905.P16350087075855475425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111572 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129905.P16350087075855475425

namespace A129905

/-- `∑[abs(A111572(2*n))]` -/
def P16350087075855475425.Spec : Prop :=
  ∀ n, P16350087075855475425.a n = A129905 n

end A129905

/-! ## A129905.P16561100813557929741

`∑[A088305(n)]+round(ϕ^n/sqrt(5))²`
-/

namespace A129905.P16561100813557929741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 2

end

end A129905.P16561100813557929741

namespace A129905

/-- `∑[A088305(n)]+round(ϕ^n/sqrt(5))²` -/
def P16561100813557929741.Spec : Prop :=
  ∀ n, P16561100813557929741.a n = A129905 n

end A129905

/-! ## A129905.P9146815572482646486

`A000045(2*n+1)+round(ϕ^n/sqrt(5))²`
-/

namespace A129905.P9146815572482646486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) + SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 2

end

end A129905.P9146815572482646486

namespace A129905

/-- `A000045(2*n+1)+round(ϕ^n/sqrt(5))²` -/
def P9146815572482646486.Spec : Prop :=
  ∀ n, P9146815572482646486.a n = A129905 n

end A129905

/-! ## A129905.P12681918283668328989

`A099016(n)+A001654(n)`
-/

namespace A129905.P12681918283668328989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099016 n + A001654 n

end

end A129905.P12681918283668328989

namespace A129905

/-- `A099016(n)+A001654(n)` -/
def P12681918283668328989.Spec : Prop :=
  ∀ n, P12681918283668328989.a n = A129905 n

end A129905

/-! ## A129905.P13476783436163705292

`A122367(n)+A007598(n)`
-/

namespace A129905.P13476783436163705292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n + A007598 n

end

end A129905.P13476783436163705292

namespace A129905

/-- `A122367(n)+A007598(n)` -/
def P13476783436163705292.Spec : Prop :=
  ∀ n, P13476783436163705292.a n = A129905 n

end A129905

/-! ## A129905.P2960798831375867249

`A245306(n)+A027941(n)`
-/

namespace A129905.P2960798831375867249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245306 n + A027941 n

end

end A129905.P2960798831375867249

namespace A129905

/-- `A245306(n)+A027941(n)` -/
def P2960798831375867249.Spec : Prop :=
  ∀ n, P2960798831375867249.a n = A129905 n

end A129905

/-! ## A129905.P14876824830391558227

`A236428(n)+A128534(n)`
-/

namespace A129905.P14876824830391558227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236428 n + A128534 n

end

end A129905.P14876824830391558227

namespace A129905

/-- `A236428(n)+A128534(n)` -/
def P14876824830391558227.Spec : Prop :=
  ∀ n, P14876824830391558227.a n = A129905 n

end A129905

/-! ## A129905.P7232724933533041066

`A192921(n)+A192879(n)`
-/

namespace A129905.P7232724933533041066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192921 n + A192879 n

end

end A129905.P7232724933533041066

namespace A129905

/-- `A192921(n)+A192879(n)` -/
def P7232724933533041066.Spec : Prop :=
  ∀ n, P7232724933533041066.a n = A129905 n

end A129905

/-! ## A129905.P1352165504686083474

`A122367(n)+A000045(n)²`
-/

namespace A129905.P1352165504686083474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n + A000045 n ^ 2

end

end A129905.P1352165504686083474

namespace A129905

/-- `A122367(n)+A000045(n)²` -/
def P1352165504686083474.Spec : Prop :=
  ∀ n, P1352165504686083474.a n = A129905 n

end A129905

/-! ## A129905.P15566513977108258519

`A007598(n)+A001519(n+1)`
-/

namespace A129905.P15566513977108258519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n + A001519 (n + 1)

end

end A129905.P15566513977108258519

namespace A129905

/-- `A007598(n)+A001519(n+1)` -/
def P15566513977108258519.Spec : Prop :=
  ∀ n, P15566513977108258519.a n = A129905 n

end A129905

/-! ## A129905.P7566227878799367397

`A079472(n+1)+A001519(n)`
-/

namespace A129905.P7566227878799367397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079472 (n + 1) + A001519 n

end

end A129905.P7566227878799367397

namespace A129905

/-- `A079472(n+1)+A001519(n)` -/
def P7566227878799367397.Spec : Prop :=
  ∀ n, P7566227878799367397.a n = A129905 n

end A129905

/-! ## A129905.P8797033823269681740

`A175395(n)+A007598(n+1)`
-/

namespace A129905.P8797033823269681740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 n + A007598 (n + 1)

end

end A129905.P8797033823269681740

namespace A129905

/-- `A175395(n)+A007598(n+1)` -/
def P8797033823269681740.Spec : Prop :=
  ∀ n, P8797033823269681740.a n = A129905 n

end A129905

/-! ## A129905.P5876497473912962427

`A192068(n+1)+A110034(n)`
-/

namespace A129905.P5876497473912962427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192068 (n + 1) + A110034 n

end

end A129905.P5876497473912962427

namespace A129905

/-- `A192068(n+1)+A110034(n)` -/
def P5876497473912962427.Spec : Prop :=
  ∀ n, P5876497473912962427.a n = A129905 n

end A129905

/-! ## A129905.P3832524795721733855

`A192873(n)+A166516(n+1)`
-/

namespace A129905.P3832524795721733855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192873 n + A166516 (n + 1)

end

end A129905.P3832524795721733855

namespace A129905

/-- `A192873(n)+A166516(n+1)` -/
def P3832524795721733855.Spec : Prop :=
  ∀ n, P3832524795721733855.a n = A129905 n

end A129905

/-! ## A129905.P8001973708670556350

`A001519(n)+2*A001654(n)`
-/

namespace A129905.P8001973708670556350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n + 2 * A001654 n

end

end A129905.P8001973708670556350

namespace A129905

/-- `A001519(n)+2*A001654(n)` -/
def P8001973708670556350.Spec : Prop :=
  ∀ n, P8001973708670556350.a n = A129905 n

end A129905

/-!
# A129906: n!/(n^2) when an integer.

The programs for A129906, there is no canonical definition to state claims against.
-/

/-! ## A129906.P4184754124776835397

`record[A055637(n+1)]`
-/

namespace A129906.P4184754124776835397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129906.P4184754124776835397

/-! ## A129906.P14342802498230316498

`A226198(A002808(n+1))`
-/

namespace A129906.P14342802498230316498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226198 (A002808 (n + 1)).toNat

end

end A129906.P14342802498230316498

/-! ## A129906.P2851254125086932234

`A226198(A056653(n+1))`
-/

namespace A129906.P2851254125086932234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226198 (A056653 (n + 1)).toNat

end

end A129906.P2851254125086932234

/-! ## A129906.P17764437163859212460

`A226198(A018252(n+2))`
-/

namespace A129906.P17764437163859212460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226198 (A018252 (n + 2)).toNat

end

end A129906.P17764437163859212460

/-! ## A129906.P4053421636966187667

`A226198(A065090(n+3))`
-/

namespace A129906.P4053421636966187667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226198 (A065090 (n + 3)).toNat

end

end A129906.P4053421636966187667

/-! ## A129906.P6764358048221715029

`A226198(A141468(n+3))`
-/

namespace A129906.P6764358048221715029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226198 (A141468 (n + 3)).toNat

end

end A129906.P6764358048221715029

/-! ## A129906.P7323170141370355094

`floor(A072668(n+1)!/A002808(n+1))`
-/

namespace A129906.P7323170141370355094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (A072668 (n + 1)).toNat : ℚ) / (A002808 (n + 1) : ℚ)⌋

end

end A129906.P7323170141370355094

/-!
# A129907: a(n) is the greatest prime factor of A072446(n).

The programs for A129907, there is no canonical definition to state claims against.
-/

/-! ## A129907.P13573684637067774436

`∑[A144287(n!)²]`
-/

namespace A129907.P13573684637067774436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144287 (Nat.factorial n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129907.P13573684637067774436

/-!
# A129908: Quotient of the decimal representation of concatenated twin primes divided by 3.

The programs for A129908, there is no canonical definition to state claims against.
-/

/-! ## A129908.P10902798578212809650

`floor(A095958(n+1)/3)`
-/

namespace A129908.P10902798578212809650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095958 (n + 1) : ℚ) / 3⌋

end

end A129908.P10902798578212809650

/-! ## A129908.P10720470707242503199

`floor(A045533(A029707(n+1))/3)`
-/

namespace A129908.P10720470707242503199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045533 (A029707 (n + 1)).toNat : ℚ) / 3⌋

end

end A129908.P10720470707242503199

/-! ## A129908.P9702254467668525673

`(A095958(n+1)-A000038(n))/3`
-/

namespace A129908.P9702254467668525673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095958 (n + 1) - A000038 n : ℚ) / 3

end

end A129908.P9702254467668525673

/-! ## A129908.P14531089102312662996

`ceil(A095958(n+1)/3-A000007(n))`
-/

namespace A129908.P14531089102312662996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A095958 (n + 1) : ℚ) / 3 - (A000007 n : ℚ)⌉

end

end A129908.P14531089102312662996

/-! ## A129908.P16571564982355941020

`round(A127421(A006512(n+1)-1)/3)`
-/

namespace A129908.P16571564982355941020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A127421 (A006512 (n + 1) - 1).toNat : ℚ) / 3)

end

end A129908.P16571564982355941020

/-!
# A129909: Primes that are the quotient of the decimal representation of concatenated twin primes divided by 3.

The programs for A129909, there is no canonical definition to state claims against.
-/

/-! ## A129909.P8435399673885819212

`p?[A129908(n+1)]`
-/

namespace A129909.P8435399673885819212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129909.P8435399673885819212

/-! ## A129909.P7976692216830375852

`p?[floor(A095958(n+1)/3)]`
-/

namespace A129909.P7976692216830375852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095958 (n + 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129909.P7976692216830375852

/-! ## A129909.P6037571609132014597

`p?[record[A129908(A028920(n))]]`
-/

namespace A129909.P6037571609132014597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129908 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129909.P6037571609132014597

/-! ## A129909.P15185102033585060990

`p?[record[A129908(A051340(n))]]`
-/

namespace A129909.P15185102033585060990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129908 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129909.P15185102033585060990

/-! ## A129909.P1522474149416209826

`record[p?[A129908(A052938(n))]]`
-/

namespace A129909.P1522474149416209826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129908 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129909.P1522474149416209826

/-!
# A129910: Quotient of the decimal representation of concatenated twin primes in reverse divided by 3.

The programs for A129910, the canonical program `A129910.P2665300731369713795` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129910 has offset 1).

The definition of A129910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129910.P2665300731369713795

`floor(A107309(n)/3)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A129910

/-- `floor(A107309(n)/3)` -/
def P2665300731369713795.Spec : Prop :=
  ∀ n, P2665300731369713795.a n = A129910 (n + 1)

theorem P2665300731369713795.correct : P2665300731369713795.Spec := by
  intro n
  simp only [A129910, Nat.add_sub_cancel]

end A129910

/-! ## A129910.P9253403017373967037

`ceil(A107309(n)/3-A000007(n))`
-/

namespace A129910.P9253403017373967037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A107309 n : ℚ) / 3 - (A000007 n : ℚ)⌉

end

end A129910.P9253403017373967037

namespace A129910

/-- `ceil(A107309(n)/3-A000007(n))` -/
def P9253403017373967037.Spec : Prop :=
  ∀ n, P9253403017373967037.a n = A129910 (n + 1)

end A129910

/-! ## A129910.P17864546972223190277

`floor((A001704(A006512(n+1))-3)/3)`
-/

namespace A129910.P17864546972223190277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001704 (A006512 (n + 1)).toNat - 3 : ℚ) / 3⌋

end

end A129910.P17864546972223190277

namespace A129910

/-- `floor((A001704(A006512(n+1))-3)/3)` -/
def P17864546972223190277.Spec : Prop :=
  ∀ n, P17864546972223190277.a n = A129910 (n + 1)

end A129910

/-! ## A129910.P5812840934393337687

`A000027(round(A107309(n)/3-A000007(n)))`
-/

namespace A129910.P5812840934393337687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A107309 n : ℚ) / 3 - (A000007 n : ℚ))).toNat

end

end A129910.P5812840934393337687

namespace A129910

/-- `A000027(round(A107309(n)/3-A000007(n)))` -/
def P5812840934393337687.Spec : Prop :=
  ∀ n, P5812840934393337687.a n = A129910 (n + 1)

end A129910

/-!
# A129911: Primes in A129910.

The programs for A129911, there is no canonical definition to state claims against.
-/

/-! ## A129911.P4271639428742255182

`p?[A129910(n+1)]`
-/

namespace A129911.P4271639428742255182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129911.P4271639428742255182

/-! ## A129911.P81314859807871812

`p?[floor(A107309(n)/3)]`
-/

namespace A129911.P81314859807871812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A107309 n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129911.P81314859807871812

/-! ## A129911.P11638797305428854491

`p?[record[A129910(A051340(n))]]`
-/

namespace A129911.P11638797305428854491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129910 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129911.P11638797305428854491

/-! ## A129911.P11894992088686252461

`p?[record[A129910(A052938(n))]]`
-/

namespace A129911.P11894992088686252461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129910 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129911.P11894992088686252461

/-! ## A129911.P11606712795352501525

`p?[record[A129910(A152271(n))]]`
-/

namespace A129911.P11606712795352501525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129910 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129911.P11606712795352501525

/-!
# A129912: Numbers that are products of distinct primorial numbers (see A002110).

The programs for A129912, there is no canonical definition to state claims against.
-/

/-! ## A129912.P7148303770748655345

`A283477(A361376(n+1))`
-/

namespace A129912.P7148303770748655345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283477 (A361376 (n + 1)).toNat

end

end A129912.P7148303770748655345

/-! ## A129912.P1870975730216880238

`A025487(A363457(n+1))`
-/

namespace A129912.P1870975730216880238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A363457 (n + 1)).toNat

end

end A129912.P1870975730216880238

/-! ## A129912.P4378794249730559565

`record[A025487(n+1)*A341629(A181820(n+1))]`
-/

namespace A129912.P4378794249730559565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1) * A341629 (A181820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129912.P4378794249730559565

/-! ## A129912.P14870251427713936858

`eq[1, A328481(n)]`
-/

namespace A129912.P14870251427713936858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A129912.P14870251427713936858

/-! ## A129912.P3357085537935644205

`lt[n*A328480(n), n]`
-/

namespace A129912.P3357085537935644205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A328480 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A129912.P3357085537935644205

/-!
# A129914: Irregular square reversible numbers. Numbers which when squared and written backwards give a square again, but don't satisfy reverse(n^2) = reverse(n)^2.

The programs for A129914, there is no canonical definition to state claims against.
-/

/-! ## A129914.P4286371479801231497

`∩[A102859(n+1), A123977(n+1)]`
-/

namespace A129914.P4286371479801231497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129914.P4286371479801231497

/-!
# A129916: Numbers k such that adding the product of the digits of k to the product of k and the sum of its digits yields a prime.

The programs for A129916, there is no canonical definition to state claims against.
-/

/-! ## A129916.P5168148224002829181

`eq[A000035(n), A024939(A238618(n+1))]`
-/

namespace A129916.P5168148224002829181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024939 (A238618 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129916.P5168148224002829181

/-! ## A129916.P5580589141907875421

`eq[A024939(A238618(n+1)), A038189(n²+5)]`
-/

namespace A129916.P5580589141907875421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024939 (A238618 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (n ^ 2 + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A129916.P5580589141907875421

/-!
# A129919: a(n) is the smallest prime of the form b*prime(n+1) + prime(n) with b > 0.

The programs for A129919, there is no canonical definition to state claims against.
-/

/-! ## A129919.P18085030742439028435

`record[A348744(A332212(n+1)+1)]`
-/

namespace A129919.P18085030742439028435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348744 (A332212 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129919.P18085030742439028435

/-! ## A129919.P11925845009174289199

`A059168(A122875(2*n+1)+3)`
-/

namespace A129919.P11925845009174289199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059168 (A122875 (2 * n + 1) + 3).toNat

end

end A129919.P11925845009174289199

/-! ## A129919.P6560668310645136190

`p?[record[A230854(n+1)-A230860(n+1)]]`
-/

namespace A129919.P6560668310645136190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230854 (n + 1) - A230860 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129919.P6560668310645136190

/-!
# A129921: Number of generalized compositions of n: words b_1^{i_1}b_2^{i_2}...b_k^{i_k} such that b_j's and j_i's are positive integers and sum b_j*i_j = n.

The programs for A129921, there is no canonical definition to state claims against.
-/

/-! ## A129921.P618009543690793983

`∑{d}[round(sqrt(n²+1)), A280782(#)]`
-/

namespace A129921.P618009543690793983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A280782 d

end

end A129921.P618009543690793983

/-! ## A129921.P10171616102259375689

`A026819(or(n, A150378(n)))`
-/

namespace A129921.P10171616102259375689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (Int.lor (n : ℤ) (A150378 n)).toNat

end

end A129921.P10171616102259375689

/-! ## A129921.P1183349848803767207

`A046155(or(n, A150378(n)))`
-/

namespace A129921.P1183349848803767207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (Int.lor (n : ℤ) (A150378 n)).toNat

end

end A129921.P1183349848803767207

/-! ## A129921.P16205459646691866155

`filter[A365274(2*n), A137794(#)]`
-/

namespace A129921.P16205459646691866155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365274 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A129921.P16205459646691866155

/-!
# A129922: Number of 3-Carlitz compositions of n (or, more generally p-Carlitz compositions, p > 1), i.e., words b_1^{i_1}b_2^{i_2}...b_k^{i_k} such that the b_j's and i_j's are positive integers for which Sum_{j=1..k} i_j * b_j = n and, for all j, i_j < p and if b_j = b_(j+1) then i_j + i_(j+1) is not equal to p.

The programs for A129922, there is no canonical definition to state claims against.
-/

/-! ## A129922.P1409094134821440011

`A364914(n)+A030373(A000142(n))`
-/

namespace A129922.P1409094134821440011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364914 n + A030373 (A000142 n).toNat

end

end A129922.P1409094134821440011

/-! ## A129922.P13603810740212070040

`A165137(n)+A001221(A272755(n))`
-/

namespace A129922.P13603810740212070040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165137 n + A001221 (A272755 n).toNat

end

end A129922.P13603810740212070040

/-! ## A129922.P16223600494861186203

`A131322(n)-A055641(A071101(n))`
-/

namespace A129922.P16223600494861186203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131322 n - A055641 (A071101 n).toNat

end

end A129922.P16223600494861186203

/-! ## A129922.P1506315267916421732

`A172471(A134760(n))-A206919(n)`
-/

namespace A129922.P1506315267916421732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A134760 n).toNat - A206919 n

end

end A129922.P1506315267916421732

/-!
# A129923: a(n) = (n+5)! / 5.

The programs for A129923, the canonical program `A129923.P6380343442039840714` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129923 has offset 0).

The definition of A129923 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129923.P6380343442039840714

`(n+5)!/5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129923

/-- `(n+5)!/5` -/
def P6380343442039840714.Spec : Prop :=
  ∀ n, P6380343442039840714.a n = (A129923 n : ℚ)

end A129923

/-! ## A129923.P16862899523836225722

`24*∏[n+5]/5`
-/

namespace A129923.P16862899523836225722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  24 * (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5)

end

end A129923.P16862899523836225722

namespace A129923

/-- `24*∏[n+5]/5` -/
def P16862899523836225722.Spec : Prop :=
  ∀ n, P16862899523836225722.a n = (A129923 n : ℚ)

end A129923

/-! ## A129923.P17512409604196015481

`∏[a(n-1)+1]` with `a(0)=24, a(1)=6`
-/

namespace A129923.P17512409604196015481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [24, 6] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A129923.P17512409604196015481

namespace A129923

/-- `∏[a(n-1)+1]` -/
def P17512409604196015481.Spec : Prop :=
  ∀ n, (P17512409604196015481.a n : ℤ) = A129923 n

end A129923

/-! ## A129923.P10501875049360489518

`abs((n+5)*a(n-1))` with `a(0)=24`
-/

namespace A129923.P10501875049360489518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [24] fun n a =>
  (n + 5) * a (n - 1)

end

end A129923.P10501875049360489518

namespace A129923

/-- `abs((n+5)*a(n-1))` -/
def P10501875049360489518.Spec : Prop :=
  ∀ n, (P10501875049360489518.a n : ℤ) = A129923 n

end A129923

/-! ## A129923.P4702557588806783316

`floor((n+5)*a(n-1))` with `a(0)=24`

`floor` is left out, it is the identity on integers.
-/

namespace A129923.P4702557588806783316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [24] fun n a =>
  (n + 5) * a (n - 1)

end

end A129923.P4702557588806783316

namespace A129923

/-- `floor((n+5)*a(n-1))` -/
def P4702557588806783316.Spec : Prop :=
  ∀ n, (P4702557588806783316.a n : ℤ) = A129923 n

end A129923

/-! ## A129923.P12332991277202501457

`ceil((n+5)*a(n-1))` with `a(0)=24`

`ceil` is left out, it is the identity on integers.
-/

namespace A129923.P12332991277202501457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [24] fun n a =>
  (n + 5) * a (n - 1)

end

end A129923.P12332991277202501457

namespace A129923

/-- `ceil((n+5)*a(n-1))` -/
def P12332991277202501457.Spec : Prop :=
  ∀ n, (P12332991277202501457.a n : ℤ) = A129923 n

end A129923

/-! ## A129923.P8479619231480801536

`(n+6)*a(n-1)-a(n-1)` with `a(0)=24`
-/

namespace A129923.P8479619231480801536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [24] fun n a =>
  (n + 6 : ℤ) * a (n - 1) - a (n - 1)

end

end A129923.P8479619231480801536

namespace A129923

/-- `(n+6)*a(n-1)-a(n-1)` -/
def P8479619231480801536.Spec : Prop :=
  ∀ n, P8479619231480801536.a n = A129923 n

end A129923

/-! ## A129923.P3107789096553752768

`A139175(n+5)+1`
-/

namespace A129923.P3107789096553752768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139175 (n + 5) + 1

end

end A129923.P3107789096553752768

namespace A129923

/-- `A139175(n+5)+1` -/
def P3107789096553752768.Spec : Prop :=
  ∀ n, P3107789096553752768.a n = A129923 n

end A129923

/-! ## A129923.P4107039013843684954

`A139152(n+5)-1`
-/

namespace A129923.P4107039013843684954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139152 (n + 5) - 1

end

end A129923.P4107039013843684954

namespace A129923

/-- `A139152(n+5)-1` -/
def P4107039013843684954.Spec : Prop :=
  ∀ n, P4107039013843684954.a n = A129923 n

end A129923

/-! ## A129923.P14032366027573778627

`A034893((n+3)²-∑[n])`
-/

namespace A129923.P14032366027573778627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034893 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129923.P14032366027573778627

namespace A129923

/-- `A034893((n+3)²-∑[n])` -/
def P14032366027573778627.Spec : Prop :=
  ∀ n, P14032366027573778627.a n = A129923 n

end A129923

/-!
# A129926: Semiprimes s such that 3*s - 2 is a prime.

The programs for A129926, there is no canonical definition to state claims against.
-/

/-! ## A129926.P13987372551539446774

`(A129928(n+1)+2)/3`
-/

namespace A129926.P13987372551539446774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129928 (n + 1) + 2 : ℚ) / 3

end

end A129926.P13987372551539446774

/-! ## A129926.P2482203850285031816

`filter[A114606(n+1), A358680(#)]`
-/

namespace A129926.P2482203850285031816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A129926.P2482203850285031816

/-! ## A129926.P9254129863187740228

`filter[A114606(n+1), A359370(#)]`
-/

namespace A129926.P9254129863187740228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359370 (f1 j).toNat = 1) n)

end

end A129926.P9254129863187740228

/-! ## A129926.P5603585695478335268

`filter[A114606(n+1), A359595(#)]`
-/

namespace A129926.P5603585695478335268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359595 (f1 j).toNat = 1) n)

end

end A129926.P5603585695478335268

/-! ## A129926.P6675809284830886026

`filter[A114606(n+1), A359764(#)]`
-/

namespace A129926.P6675809284830886026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A129926.P6675809284830886026

/-! ## A129926.P14731566705475510588

`filter[A114606(n+1), A359781(#)]`
-/

namespace A129926.P14731566705475510588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359781 (f1 j).toNat = 1) n)

end

end A129926.P14731566705475510588

/-! ## A129926.P5407284251273939046

`filter[A114606(n+1), A359787(#)]`
-/

namespace A129926.P5407284251273939046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359787 (f1 j).toNat = 1) n)

end

end A129926.P5407284251273939046

/-! ## A129926.P15697995643114663759

`filter[A114606(n+1), A359828(#)]`
-/

namespace A129926.P15697995643114663759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A129926.P15697995643114663759

/-! ## A129926.P5980817622029920482

`filter[A153183(n+1), A359828(#)]`
-/

namespace A129926.P5980817622029920482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A129926.P5980817622029920482

/-! ## A129926.P36224410985662946

`∩[A114606(n+1), A153183(n+1)]`
-/

namespace A129926.P36224410985662946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129926.P36224410985662946

/-! ## A129926.P1492797093069569793

`filter[A114606(n+1), A005171(#)]`
-/

namespace A129926.P1492797093069569793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A129926.P1492797093069569793

/-! ## A129926.P8045761872899688063

`filter[A114606(n+1), A064911(#)]`
-/

namespace A129926.P8045761872899688063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A129926.P8045761872899688063

/-! ## A129926.P10863402655924776352

`filter[A114606(n+1), A065043(#)]`
-/

namespace A129926.P10863402655924776352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A129926.P10863402655924776352

/-! ## A129926.P15297707039090456028

`filter[A114606(n+1), A066247(#)]`
-/

namespace A129926.P15297707039090456028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A129926.P15297707039090456028

/-! ## A129926.P592876354770755751

`filter[A153183(n+1), A064911(#)]`
-/

namespace A129926.P592876354770755751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A129926.P592876354770755751

/-! ## A129926.P19261041273919770

`filter[A114606(n+1), A202238(#)]`
-/

namespace A129926.P19261041273919770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A129926.P19261041273919770

/-! ## A129926.P2850256723842878428

`filter[A114606(n+1), A292438(#)]`
-/

namespace A129926.P2850256723842878428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A129926.P2850256723842878428

/-! ## A129926.P10752859078429614442

`filter[A114606(n+1), A323162(#)]`
-/

namespace A129926.P10752859078429614442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A129926.P10752859078429614442

/-! ## A129926.P11912377639196736111

`filter[A114606(n+1), A353374(#)]`
-/

namespace A129926.P11912377639196736111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353374 (f1 j).toNat = 1) n)

end

end A129926.P11912377639196736111

/-! ## A129926.P16683421694911130785

`filter[A114606(n+1), A353480(#)]`
-/

namespace A129926.P16683421694911130785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A129926.P16683421694911130785

/-!
# A129927: 3-almost prime octagonal numbers.

The programs for A129927, there is no canonical definition to state claims against.
-/

/-! ## A129927.P8574734940648604378

`A000567(A114606(n+1))`
-/

namespace A129927.P8574734940648604378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (A114606 (n + 1)).toNat

end

end A129927.P8574734940648604378

/-! ## A129927.P986761412004604925

`A001082(2*A114606(n+1))`
-/

namespace A129927.P986761412004604925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (2 * A114606 (n + 1)).toNat

end

end A129927.P986761412004604925

/-! ## A129927.P9985951674364060363

`A319128(2*A114606(n+1))`
-/

namespace A129927.P9985951674364060363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319128 (2 * A114606 (n + 1)).toNat

end

end A129927.P9985951674364060363

/-! ## A129927.P8441576699737300927

`A174709(6*A114606(n+1))`
-/

namespace A129927.P8441576699737300927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174709 (6 * A114606 (n + 1)).toNat

end

end A129927.P8441576699737300927

/-! ## A129927.P6219363791579189395

`A000567(eq[3, ∑{e}[A000567(n), #]])`
-/

namespace A129927.P6219363791579189395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A129927.P6219363791579189395

/-!
# A129928: Primes equal to 3*Sp - 2, where Sp is a semiprime.

The programs for A129928, there is no canonical definition to state claims against.
-/

/-! ## A129928.P18267679237381747265

`3*A129926(n+1)-2`
-/

namespace A129928.P18267679237381747265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A129926 (n + 1) - 2

end

end A129928.P18267679237381747265

/-! ## A129928.P9760397037982548361

`p?[3*A001358(n+1)-2]`
-/

namespace A129928.P9760397037982548361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001358 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129928.P9760397037982548361

/-! ## A129928.P17130663611372902458

`∩[A002476(n+1), A063641(n+1)]`
-/

namespace A129928.P17130663611372902458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129928.P17130663611372902458

/-! ## A129928.P13802620774296492152

`∩[A007645(n+1), A063641(n+1)]`
-/

namespace A129928.P13802620774296492152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129928.P13802620774296492152

/-! ## A129928.P10723764349505100053

`∩[A045331(n+1), A063641(n+1)]`
-/

namespace A129928.P10723764349505100053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129928.P10723764349505100053

/-! ## A129928.P8712540839102591764

`∩[A045375(n+1), A063641(n+1)]`
-/

namespace A129928.P8712540839102591764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129928.P8712540839102591764

/-! ## A129928.P17468186285958807271

`∩[A063641(n+1), A123365(n+1)]`
-/

namespace A129928.P17468186285958807271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129928.P17468186285958807271

/-! ## A129928.P7776717272101526305

`∩[A063641(n+1), A279815(n+1)]`
-/

namespace A129928.P7776717272101526305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129928.P7776717272101526305

/-! ## A129928.P4680556717814403633

`∩[A055664(n+1), A063641(n+1)]`
-/

namespace A129928.P4680556717814403633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129928.P4680556717814403633

/-! ## A129928.P15430651438148721223

`∩[A063641(n+1), A133290(n+1)]`
-/

namespace A129928.P15430651438148721223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129928.P15430651438148721223

/-! ## A129928.P11349357758239156019

`∩[A063641(n+1), A137827(n+1)]`
-/

namespace A129928.P11349357758239156019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129928.P11349357758239156019

/-! ## A129928.P5798492506195770297

`filter[A063641(n+1), A070563(#)]`
-/

namespace A129928.P5798492506195770297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A129928.P5798492506195770297

/-! ## A129928.P2991289083591650879

`p?[3*A186621(n+1)+1]`
-/

namespace A129928.P2991289083591650879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A186621 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129928.P2991289083591650879

/-! ## A129928.P1699614987825792580

`p?[3*eq[2, A001222(n+1)]+1]`
-/

namespace A129928.P1699614987825792580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A129928.P1699614987825792580

/-! ## A129928.P8202840768261980081

`∩[A063641(n+1), A107925(n+1)]`
-/

namespace A129928.P8202840768261980081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129928.P8202840768261980081

/-! ## A129928.P10466935491860383998

`∩[A004611(n+1), A063641(n+1)]`
-/

namespace A129928.P10466935491860383998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129928.P10466935491860383998

/-! ## A129928.P11878252642464015785

`∩[A063641(n+1), A129904(n+1)]`
-/

namespace A129928.P11878252642464015785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129928.P11878252642464015785

/-! ## A129928.P10191139761864589393

`∩[A063641(n+1), A348932(n+1)]`
-/

namespace A129928.P10191139761864589393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129928.P10191139761864589393

/-! ## A129928.P11887269989005048378

`∩[A063641(n+1), A260682(n+1)]`
-/

namespace A129928.P11887269989005048378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129928.P11887269989005048378

/-! ## A129928.P3839190400951533237

`filter[A063641(n+1), A353815(#)]`
-/

namespace A129928.P3839190400951533237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A129928.P3839190400951533237

/-!
# A129929: Binomial transform of the periodic sequence with periodic pattern 1,1,1,0,0.

The programs for A129929, the canonical program `A129929.P16773512358274300600` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129929 has offset 0).

The definition of A129929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129929.P4657481090306696918

`2^n-∑[A139748(n)]`
-/

namespace A129929.P4657481090306696918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129929.P4657481090306696918

namespace A129929

/-- `2^n-∑[A139748(n)]` -/
def P4657481090306696918.Spec : Prop :=
  ∀ n, P4657481090306696918.a n = A129929 n

end A129929

/-! ## A129929.P12016024683485048007

`2^n-A139761(n+1)`
-/

namespace A129929.P12016024683485048007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A139761 (n + 1)

end

end A129929.P12016024683485048007

namespace A129929

/-- `2^n-A139761(n+1)` -/
def P12016024683485048007.Spec : Prop :=
  ∀ n, P12016024683485048007.a n = A129929 n

end A129929

/-! ## A129929.P16773512358274300600

`abs(A138112(n)-2*a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A129929

/-- `abs(A138112(n)-2*a(n-1))` -/
def P16773512358274300600.Spec : Prop :=
  ∀ n, P16773512358274300600.a n = A129929 n

theorem P16773512358274300600.correct : P16773512358274300600.Spec := by
  intro n
  simp only [A129929]

end A129929

/-! ## A129929.P10442327293781957290

`A139398(n)+∑[A133476(n)]`
-/

namespace A129929.P10442327293781957290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129929.P10442327293781957290

namespace A129929

/-- `A139398(n)+∑[A133476(n)]` -/
def P10442327293781957290.Spec : Prop :=
  ∀ n, P10442327293781957290.a n = A129929 n

end A129929

/-! ## A129929.P3725734924116687418

`A139714(n)+A133476(n+1)`
-/

namespace A129929.P3725734924116687418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 n + A133476 (n + 1)

end

end A129929.P3725734924116687418

namespace A129929

/-- `A139714(n)+A133476(n+1)` -/
def P3725734924116687418.Spec : Prop :=
  ∀ n, P3725734924116687418.a n = A129929 n

end A129929

/-! ## A129929.P3598337210772403040

`A139714(n+1)+A139398(n)`
-/

namespace A129929.P3598337210772403040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 (n + 1) + A139398 n

end

end A129929.P3598337210772403040

namespace A129929

/-- `A139714(n+1)+A139398(n)` -/
def P3598337210772403040.Spec : Prop :=
  ∀ n, P3598337210772403040.a n = A129929 n

end A129929

/-! ## A129929.P15860609388643933420

`∑[A133476(n+1)]-A133476(n)`
-/

namespace A129929.P15860609388643933420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A133476 n

end

end A129929.P15860609388643933420

namespace A129929

/-- `∑[A133476(n+1)]-A133476(n)` -/
def P15860609388643933420.Spec : Prop :=
  ∀ n, P15860609388643933420.a n = A129929 n

end A129929

/-! ## A129929.P7946232896402921223

`A133476(n+1)+Δ[A139748(n)]`
-/

namespace A129929.P7946232896402921223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 (n + 1) + (f1 (n + 1) - f1 n)

end

end A129929.P7946232896402921223

namespace A129929

/-- `A133476(n+1)+Δ[A139748(n)]` -/
def P7946232896402921223.Spec : Prop :=
  ∀ n, P7946232896402921223.a n = A129929 n

end A129929

/-! ## A129929.P4638462948485807674

`A139398(n)+Δ[A139748(n+1)]`
-/

namespace A129929.P4638462948485807674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 n + (f1 (n + 1) - f1 n)

end

end A129929.P4638462948485807674

namespace A129929

/-- `A139398(n)+Δ[A139748(n+1)]` -/
def P4638462948485807674.Spec : Prop :=
  ∀ n, P4638462948485807674.a n = A129929 n

end A129929

/-! ## A129929.P4953945109244862448

`A139714(n)+Δ[A139714(n+1)]`
-/

namespace A129929.P4953945109244862448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 n + (f1 (n + 1) - f1 n)

end

end A129929.P4953945109244862448

namespace A129929

/-- `A139714(n)+Δ[A139714(n+1)]` -/
def P4953945109244862448.Spec : Prop :=
  ∀ n, P4953945109244862448.a n = A129929 n

end A129929

/-! ## A129929.P70012529379318483

`A139761(n+1)+A139714(n)+A138003(n)`
-/

namespace A129929.P70012529379318483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139761 (n + 1) + (A139714 n + A138003 n)

end

end A129929.P70012529379318483

namespace A129929

/-- `A139761(n+1)+A139714(n)+A138003(n)` -/
def P70012529379318483.Spec : Prop :=
  ∀ n, P70012529379318483.a n = A129929 n

end A129929

/-! ## A129929.P9010046622360762084

`A000079(n)+A138003(n)-A133476(n+1)`
-/

namespace A129929.P9010046622360762084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A138003 n - A133476 (n + 1))

end

end A129929.P9010046622360762084

namespace A129929

/-- `A000079(n)+A138003(n)-A133476(n+1)` -/
def P9010046622360762084.Spec : Prop :=
  ∀ n, P9010046622360762084.a n = A129929 n

end A129929

/-! ## A129929.P11757523995950180604

`A133476(n+1)+A133476(n)-A103311(n)`
-/

namespace A129929.P11757523995950180604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 (n + 1) + (A133476 n - A103311 n)

end

end A129929.P11757523995950180604

namespace A129929

/-- `A133476(n+1)+A133476(n)-A103311(n)` -/
def P11757523995950180604.Spec : Prop :=
  ∀ n, P11757523995950180604.a n = A129929 n

end A129929

/-! ## A129929.P1616647145246002985

`A133476(n+1)+A139748(n+1)-A139748(n)`
-/

namespace A129929.P1616647145246002985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 (n + 1) + (A139748 (n + 1) - A139748 n)

end

end A129929.P1616647145246002985

namespace A129929

/-- `A133476(n+1)+A139748(n+1)-A139748(n)` -/
def P1616647145246002985.Spec : Prop :=
  ∀ n, P1616647145246002985.a n = A129929 n

end A129929

/-! ## A129929.P12804509486070517928

`Δ[2^n-A139398(n+1)]`
-/

namespace A129929.P12804509486070517928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A139398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129929.P12804509486070517928

namespace A129929

/-- `Δ[2^n-A139398(n+1)]` -/
def P12804509486070517928.Spec : Prop :=
  ∀ n, P12804509486070517928.a n = A129929 n

end A129929

/-!
# A129930: Numbers n such that 1077*2^n - 1 is prime.

The programs for A129930, there is no canonical definition to state claims against.
-/

/-! ## A129930.P3182583349115874299

`A246085(A018252(n+1)%A094143(3*n+1))`
-/

namespace A129930.P3182583349115874299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246085 (Int.tmod (A018252 (n + 1)) (A094143 (3 * n + 1))).toNat

end

end A129930.P3182583349115874299

/-!
# A129933: a(n) = (n*(n+1)/2+1)!/n!.

The programs for A129933, the canonical program `A129933.P2459614050833603950` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129933 has offset 0).

The definition of A129933 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129933.P2459614050833603950

`(n*(n+1)/2+1)!/n!`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129933

/-- `(n*(n+1)/2+1)!/n!` -/
def P2459614050833603950.Spec : Prop :=
  ∀ n, P2459614050833603950.a n = (A129933 n : ℚ)

end A129933

/-! ## A129933.P15164294142366377808

`A000124(n)!/∏[round(1/acot(n))]`
-/

namespace A129933.P15164294142366377808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000124 n).toNat : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A129933.P15164294142366377808

namespace A129933

/-- `A000124(n)!/∏[round(1/acot(n))]` -/
def P15164294142366377808.Spec : Prop :=
  ∀ n, P15164294142366377808.a n = (A129933 n : ℚ)

end A129933

/-! ## A129933.P12183891052518683871

`A094587(A037255(n+1))`
-/

namespace A129933.P12183891052518683871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A037255 (n + 1)).toNat

end

end A129933.P12183891052518683871

namespace A129933

/-- `A094587(A037255(n+1))` -/
def P12183891052518683871.Spec : Prop :=
  ∀ n, P12183891052518683871.a n = A129933 n

end A129933

/-! ## A129933.P1632100458725866232

`A000124(n)!/A000142(n)`
-/

namespace A129933.P1632100458725866232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000124 n).toNat : ℚ) / (A000142 n : ℚ)

end

end A129933.P1632100458725866232

namespace A129933

/-- `A000124(n)!/A000142(n)` -/
def P1632100458725866232.Spec : Prop :=
  ∀ n, P1632100458725866232.a n = (A129933 n : ℚ)

end A129933

/-! ## A129933.P8515246224631679414

`A052624(A000217(n))/n!`
-/

namespace A129933.P8515246224631679414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052624 (A000217 n).toNat : ℚ) / (Nat.factorial n : ℚ)

end

end A129933.P8515246224631679414

namespace A129933

/-- `A052624(A000217(n))/n!` -/
def P8515246224631679414.Spec : Prop :=
  ∀ n, P8515246224631679414.a n = (A129933 n : ℚ)

end A129933

/-!
# A129936: a(n) = (n-2)*(n+3)*(n+2)/6.

The programs for A129936, the canonical program `A129936.P3570258602507597015` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129936 has offset 0).

The definition of A129936 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129936.P14871034563343282655

`(n-2)*(n+3)*(n+2)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129936.P14871034563343282655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) * ((n + 3 : ℚ) * ((n + 2 : ℚ) / 6))

end

end A129936.P14871034563343282655

namespace A129936

/-- `(n-2)*(n+3)*(n+2)/6` -/
def P14871034563343282655.Spec : Prop :=
  ∀ n, P14871034563343282655.a n = (A129936 n : ℚ)

end A129936

/-! ## A129936.P3570258602507597015

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=-2, a(1)=-2, a(2)=0, a(3)=5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129936

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P3570258602507597015.Spec : Prop :=
  ∀ n, P3570258602507597015.a n = A129936 n

theorem P3570258602507597015.correct : P3570258602507597015.Spec := by
  intro n
  simp only [A129936]

end A129936

/-! ## A129936.P7970903973338302090

`A023444(n)*A002378(n+2)/6`
-/

namespace A129936.P7970903973338302090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023444 n * A002378 (n + 2) : ℚ) / 6

end

end A129936.P7970903973338302090

namespace A129936

/-- `A023444(n)*A002378(n+2)/6` -/
def P7970903973338302090.Spec : Prop :=
  ∀ n, P7970903973338302090.a n = (A129936 n : ℚ)

end A129936

/-! ## A129936.P14459249741653213313

`-(2-C(n+2, 3)+n)`
-/

namespace A129936.P14459249741653213313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 - (Nat.choose (n + 2) 3 : ℤ) + (n : ℤ))

end

end A129936.P14459249741653213313

namespace A129936

/-- `-(2-C(n+2, 3)+n)` -/
def P14459249741653213313.Spec : Prop :=
  ∀ n, P14459249741653213313.a n = A129936 n

end A129936

/-! ## A129936.P3691513464153247835

`floor(C(n+2, 3)-(n+ϕ))`
-/

namespace A129936.P3691513464153247835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 2) 3 : ℝ) - ((n : ℝ) + Real.goldenRatio)⌋

end

end A129936.P3691513464153247835

namespace A129936

/-- `floor(C(n+2, 3)-(n+ϕ))` -/
def P3691513464153247835.Spec : Prop :=
  ∀ n, P3691513464153247835.a n = A129936 n

end A129936

/-! ## A129936.P715453071685818666

`round(C(n+2, 3)-(n+ϕ))`
-/

namespace A129936.P715453071685818666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 2) 3 : ℝ) - ((n : ℝ) + Real.goldenRatio))

end

end A129936.P715453071685818666

namespace A129936

/-- `round(C(n+2, 3)-(n+ϕ))` -/
def P715453071685818666.Spec : Prop :=
  ∀ n, P715453071685818666.a n = A129936 n

end A129936

/-! ## A129936.P13030441393690566172

`a(n-2)+n²-2` with `a(0)=-2, a(1)=-2`
-/

namespace A129936.P13030441393690566172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2, -2] fun n a =>
  a (n - 2) + ((n ^ 2 : ℤ) - 2)

end

end A129936.P13030441393690566172

namespace A129936

/-- `a(n-2)+n²-2` -/
def P13030441393690566172.Spec : Prop :=
  ∀ n, P13030441393690566172.a n = A129936 n

end A129936

/-! ## A129936.P6364068854468694260

`n²-(2-a(n-2))` with `a(0)=-2, a(1)=-2`
-/

namespace A129936.P6364068854468694260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2, -2] fun n a =>
  (n ^ 2 : ℤ) - (2 - a (n - 2))

end

end A129936.P6364068854468694260

namespace A129936

/-- `n²-(2-a(n-2))` -/
def P6364068854468694260.Spec : Prop :=
  ∀ n, P6364068854468694260.a n = A129936 n

end A129936

/-! ## A129936.P11770218492106452402

`ceil(C(n+2, 3)-(n+1+ϕ))`
-/

namespace A129936.P11770218492106452402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 2) 3 : ℝ) - ((n + 1 : ℝ) + Real.goldenRatio)⌉

end

end A129936.P11770218492106452402

namespace A129936

/-- `ceil(C(n+2, 3)-(n+1+ϕ))` -/
def P11770218492106452402.Spec : Prop :=
  ∀ n, P11770218492106452402.a n = A129936 n

end A129936

/-! ## A129936.P9672862071932986100

`-(Δ[-C(n+2, 4)]+n+2)`
-/

namespace A129936.P9672862071932986100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose (n + 2) 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n + (n + 2 : ℤ))

end

end A129936.P9672862071932986100

namespace A129936

/-- `-(Δ[-C(n+2, 4)]+n+2)` -/
def P9672862071932986100.Spec : Prop :=
  ∀ n, P9672862071932986100.a n = A129936 n

end A129936

/-! ## A129936.P5592800416131057391

`2*a(n-1)-a(n-2)+n` with `a(0)=-2, a(1)=-2`
-/

namespace A129936.P5592800416131057391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2, -2] fun n a =>
  2 * a (n - 1) - a (n - 2) + (n : ℤ)

end

end A129936.P5592800416131057391

namespace A129936

/-- `2*a(n-1)-a(n-2)+n` -/
def P5592800416131057391.Spec : Prop :=
  ∀ n, P5592800416131057391.a n = A129936 n

end A129936

/-! ## A129936.P11451555051985110139

`2*a(n-1)-(a(n-2)-n)` with `a(0)=-2, a(1)=-2`
-/

namespace A129936.P11451555051985110139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2, -2] fun n a =>
  2 * a (n - 1) - (a (n - 2) - (n : ℤ))

end

end A129936.P11451555051985110139

namespace A129936

/-- `2*a(n-1)-(a(n-2)-n)` -/
def P11451555051985110139.Spec : Prop :=
  ∀ n, P11451555051985110139.a n = A129936 n

end A129936

/-! ## A129936.P15279686386979357282

`a(n-1)+a(n-1)-a(n-2)+n` with `a(0)=-2, a(1)=-2`
-/

namespace A129936.P15279686386979357282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2, -2] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 2)) + (n : ℤ)

end

end A129936.P15279686386979357282

namespace A129936

/-- `a(n-1)+a(n-1)-a(n-2)+n` -/
def P15279686386979357282.Spec : Prop :=
  ∀ n, P15279686386979357282.a n = A129936 n

end A129936

/-! ## A129936.P15398239922265096287

`A005581(n)-2`
-/

namespace A129936.P15398239922265096287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n - 2

end

end A129936.P15398239922265096287

namespace A129936

/-- `A005581(n)-2` -/
def P15398239922265096287.Spec : Prop :=
  ∀ n, P15398239922265096287.a n = A129936 n

end A129936

/-! ## A129936.P13314229939138920863

`A349417(n)-4`
-/

namespace A129936.P13314229939138920863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349417 n - 4

end

end A129936.P13314229939138920863

namespace A129936

/-- `A349417(n)-4` -/
def P13314229939138920863.Spec : Prop :=
  ∀ n, P13314229939138920863.a n = A129936 n

end A129936

/-! ## A129936.P5294859005513225827

`∑[A133263(n)-3]`
-/

namespace A129936.P5294859005513225827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129936.P5294859005513225827

namespace A129936

/-- `∑[A133263(n)-3]` -/
def P5294859005513225827.Spec : Prop :=
  ∀ n, P5294859005513225827.a n = A129936 n

end A129936

/-! ## A129936.P11549525205706452910

`A105163(n+1)-3`
-/

namespace A129936.P11549525205706452910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105163 (n + 1) - 3

end

end A129936.P11549525205706452910

namespace A129936

/-- `A105163(n+1)-3` -/
def P11549525205706452910.Spec : Prop :=
  ∀ n, P11549525205706452910.a n = A129936 n

end A129936

/-! ## A129936.P1000465632711192314

`A000292(n)-(n+2)`
-/

namespace A129936.P1000465632711192314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n - (n + 2 : ℤ)

end

end A129936.P1000465632711192314

namespace A129936

/-- `A000292(n)-(n+2)` -/
def P1000465632711192314.Spec : Prop :=
  ∀ n, P1000465632711192314.a n = A129936 n

end A129936

/-! ## A129936.P14799943339407035027

`∑[∑[A254667(n)]-2]`
-/

namespace A129936.P14799943339407035027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129936.P14799943339407035027

namespace A129936

/-- `∑[∑[A254667(n)]-2]` -/
def P14799943339407035027.Spec : Prop :=
  ∀ n, P14799943339407035027.a n = A129936 n

end A129936

/-! ## A129936.P13985467659566831813

`∑[∑[n]-A054977(n)]`
-/

namespace A129936.P13985467659566831813
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129936.P13985467659566831813

namespace A129936

/-- `∑[∑[n]-A054977(n)]` -/
def P13985467659566831813.Spec : Prop :=
  ∀ n, P13985467659566831813.a n = A129936 n

end A129936

/-!
# A129937: a(n) = binomial(n, floor(n/2)) - n*(n - 1)/2.

The programs for A129937, the canonical program `A129937.P653720881572111068` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129937 has offset 1).

The definition of A129937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129937.P8362423767524213491

`1-∑[Δ[n*a(n-1)/∑[n%2]]+n]` with `a(0)=-1`
-/

namespace A129937.P8362423767524213491
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℚ := SequenceMachineLib.rec [-1] fun n f2 =>
  (n : ℚ) * (f2 (n - 1) / ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129937.P8362423767524213491

namespace A129937

/-- `1-∑[Δ[n*a(n-1)/∑[n%2]]+n]` -/
def P8362423767524213491.Spec : Prop :=
  ∀ n, P8362423767524213491.a n = (A129937 (n + 1) : ℚ)

end A129937

/-! ## A129937.P653720881572111068

`A001405(n+1)-∑[n]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A129937

/-- `A001405(n+1)-∑[n]` -/
def P653720881572111068.Spec : Prop :=
  ∀ n, P653720881572111068.a n = A129937 (n + 1)

theorem P653720881572111068.correct : P653720881572111068.Spec := by
  intro n
  simp only [A129937, Nat.add_sub_cancel]

end A129937

/-! ## A129937.P12584116739734232330

`∑[Δ[(∏[2*or(1, n)/(n+1)]-2)/2]-n]+1`
-/

namespace A129937.P12584116739734232330
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f3 j - 2) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129937.P12584116739734232330

namespace A129937

/-- `∑[Δ[(∏[2*or(1, n)/(n+1)]-2)/2]-n]+1` -/
def P12584116739734232330.Spec : Prop :=
  ∀ n, P12584116739734232330.a n = (A129937 (n + 1) : ℚ)

end A129937

/-! ## A129937.P17091925131910475556

`Δ[A036256(n)]-∑[n]`
-/

namespace A129937.P17091925131910475556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036256 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A129937.P17091925131910475556

namespace A129937

/-- `Δ[A036256(n)]-∑[n]` -/
def P17091925131910475556.Spec : Prop :=
  ∀ n, P17091925131910475556.a n = A129937 (n + 1)

end A129937

/-! ## A129937.P14090300293838969051

`A014833(n)-A093387(n+1)`
-/

namespace A129937.P14090300293838969051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014833 n - A093387 (n + 1)

end

end A129937.P14090300293838969051

namespace A129937

/-- `A014833(n)-A093387(n+1)` -/
def P14090300293838969051.Spec : Prop :=
  ∀ n, P14090300293838969051.a n = A129937 (n + 1)

end A129937

/-! ## A129937.P1225575506813718091

`∑[C(n, ∑[1-a(n-1)])-n]+1` with `a(0)=1`
-/

namespace A129937.P1225575506813718091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (∑ j ∈ Finset.range (n + 1), f2 j).toNat : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129937.P1225575506813718091

namespace A129937

/-- `∑[C(n, ∑[1-a(n-1)])-n]+1` -/
def P1225575506813718091.Spec : Prop :=
  ∀ n, P1225575506813718091.a n = A129937 (n + 1)

end A129937

/-! ## A129937.P12926651199508404281

`C(n+1, ceil(n/2))-∑[n]`
-/

namespace A129937.P12926651199508404281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) ⌈(n : ℚ) / 2⌉.toNat : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A129937.P12926651199508404281

namespace A129937

/-- `C(n+1, ceil(n/2))-∑[n]` -/
def P12926651199508404281.Spec : Prop :=
  ∀ n, P12926651199508404281.a n = A129937 (n + 1)

end A129937

/-! ## A129937.P3358426990994844385

`∑[Δ[C(n, floor(n/2))]-n]+1`
-/

namespace A129937.P3358426990994844385
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ⌊(n : ℚ) / 2⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A129937.P3358426990994844385

namespace A129937

/-- `∑[Δ[C(n, floor(n/2))]-n]+1` -/
def P3358426990994844385.Spec : Prop :=
  ∀ n, P3358426990994844385.a n = A129937 (n + 1)

end A129937

/-! ## A129937.P15617308638331692546

`A107230(A000217(n+1))-A000217(n)`
-/

namespace A129937.P15617308638331692546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107230 (A000217 (n + 1)).toNat - A000217 n

end

end A129937.P15617308638331692546

namespace A129937

/-- `A107230(A000217(n+1))-A000217(n)` -/
def P15617308638331692546.Spec : Prop :=
  ∀ n, P15617308638331692546.a n = A129937 (n + 1)

end A129937

/-! ## A129937.P11686120165947349453

`A000142(n+1)/A010551(n+1)-A161680(n+1)`
-/

namespace A129937.P11686120165947349453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A010551 (n + 1) : ℚ) - (A161680 (n + 1) : ℚ)

end

end A129937.P11686120165947349453

namespace A129937

/-- `A000142(n+1)/A010551(n+1)-A161680(n+1)` -/
def P11686120165947349453.Spec : Prop :=
  ∀ n, P11686120165947349453.a n = (A129937 (n + 1) : ℚ)

end A129937

/-!
# A129940: Left truncatable primes in base 4 (written in decimal form).

The programs for A129940, there is no canonical definition to state claims against.
-/

/-! ## A129940.P725470771284682717

`A068505(A024779(n+1))`
-/

namespace A129940.P725470771284682717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A024779 (n + 1)).toNat

end

end A129940.P725470771284682717

/-! ## A129940.P15374693504088979428

`∩[A181172(n+1), A278699(n+1)]`
-/

namespace A129940.P15374693504088979428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129940.P15374693504088979428

/-! ## A129940.P16225711652355746796

`p?[A053438(record[A180198(n)])]`
-/

namespace A129940.P16225711652355746796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180198 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129940.P16225711652355746796

/-! ## A129940.P10947665618226619116

`p?[∑[A080100(A124973(n))]]`
-/

namespace A129940.P10947665618226619116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (A124973 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129940.P10947665618226619116

/-!
# A129941: Left truncatable primes in base 5 (written in decimal form).

The programs for A129941, there is no canonical definition to state claims against.
-/

/-! ## A129941.P3343545937870220964

`∩[A023721(n+1), A278697(n+1)]`
-/

namespace A129941.P3343545937870220964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129941.P3343545937870220964

/-! ## A129941.P10560987865419876896

`∩[A181173(n+1), A278697(n+1)]`
-/

namespace A129941.P10560987865419876896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129941.P10560987865419876896

/-! ## A129941.P6757661740364826522

`∩[A171829(n+1), A278697(n+1)]`
-/

namespace A129941.P6757661740364826522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129941.P6757661740364826522

/-! ## A129941.P9770690464205934430

`∩[A278697(n+1), A279367(n+1)]`
-/

namespace A129941.P9770690464205934430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129941.P9770690464205934430

/-! ## A129941.P11825475556512847716

`∩[A278697(n+1), A363287(n+1)]`
-/

namespace A129941.P11825475556512847716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129941.P11825475556512847716

/-!
# A129942: Left truncatable primes in base 6 (written in decimal form).

The programs for A129942, there is no canonical definition to state claims against.
-/

/-! ## A129942.P11080677162835169759

`A028901(A024781(n+1))`
-/

namespace A129942.P11080677162835169759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (A024781 (n + 1)).toNat

end

end A129942.P11080677162835169759

/-! ## A129942.P1258586432944421930

`A068505(root(A024781(n+1), 2)²)`
-/

namespace A129942.P1258586432944421930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (SequenceMachineLib.roundAway (((A024781 (n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A129942.P1258586432944421930

/-! ## A129942.P2951234189365621444

`∑{d}[A068505(A024781(n+1)), A000010(#)]`
-/

namespace A129942.P2951234189365621444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A024781 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A129942.P2951234189365621444

/-! ## A129942.P3142383578432091252

`∏{d}[A068505(A024781(n+1)), A020639(#)]`
-/

namespace A129942.P3142383578432091252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A024781 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A020639 d

end

end A129942.P3142383578432091252

/-! ## A129942.P8691753750434808746

`∑{p}[A068505(A024781(n+1)), A006530(#)]`
-/

namespace A129942.P8691753750434808746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A024781 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 p

end

end A129942.P8691753750434808746

/-!
# A129943: Left truncatable primes in base 7 (written in decimal form).

The programs for A129943, there is no canonical definition to state claims against.
-/

/-! ## A129943.P13383737678480235013

`A028902(A024782(n+1))`
-/

namespace A129943.P13383737678480235013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A024782 (n + 1)).toNat

end

end A129943.P13383737678480235013

/-!
# A129944: Left truncatable primes in base 8 (written in decimal form).

The programs for A129944, there is no canonical definition to state claims against.
-/

/-! ## A129944.P2469366360384344985

`A028903(A024783(n+1))`
-/

namespace A129944.P2469366360384344985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A024783 (n + 1)).toNat

end

end A129944.P2469366360384344985

/-! ## A129944.P13536628355193138096

`A000040(lt[A320320(n), A093088(n+1)])`
-/

namespace A129944.P13536628355193138096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320320 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A129944.P13536628355193138096

/-!
# A129945: Left truncatable primes in base 9 (written in decimal form).

The programs for A129945, there is no canonical definition to state claims against.
-/

/-! ## A129945.P5907781462826937581

`A028904(A024784(n+1))`
-/

namespace A129945.P5907781462826937581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A024784 (n + 1)).toNat

end

end A129945.P5907781462826937581

/-!
# A129946: A self-describing sequence. Underline all a(n)th digits of the sequence (first, second, third, fourth, fifth, sixth, seventh, eighth, ninth, eleventh digit, etc.) The non-underlined digits form the sequence itself.

The programs for A129946, there is no canonical definition to state claims against.
-/

/-! ## A129946.P7651241190230724598

`record[A027750(A003056(A001097(n+1)))]`
-/

namespace A129946.P7651241190230724598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A003056 (A001097 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129946.P7651241190230724598

/-! ## A129946.P8561159846873284041

`record[A027750(A003056(A014574(n+1)))]`
-/

namespace A129946.P8561159846873284041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A003056 (A014574 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129946.P8561159846873284041

/-! ## A129946.P17126412879546602638

`lt[A329623(n), A061395(A060630(n+1))]`
-/

namespace A129946.P17126412879546602638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329623 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A060630 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129946.P17126412879546602638

/-! ## A129946.P8204944085126048479

`lt[A057428(A375027(n+1)), A010815(n+2)]`
-/

namespace A129946.P8204944085126048479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A375027 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129946.P8204944085126048479

/-! ## A129946.P7118939024757375444

`lt[A081403(3*n+2), A093501(A175522(n+1))]`
-/

namespace A129946.P7118939024757375444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081403 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093501 (A175522 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129946.P7118939024757375444

/-!
# A129947: Smallest possible side length for a simple perfect squared square of order n; or 0 if no such square exists.

The programs for A129947, there is no canonical definition to state claims against.
-/

/-! ## A129947.P17616653584227472982

`A217148(A090110(n+1))`
-/

namespace A129947.P17616653584227472982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217148 (A090110 (n + 1)).toNat

end

end A129947.P17616653584227472982

/-! ## A129947.P8272128838569959243

`A217148(A379874(n+1))`
-/

namespace A129947.P8272128838569959243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217148 (A379874 (n + 1)).toNat

end

end A129947.P8272128838569959243

/-! ## A129947.P13367193555874680604

`A217148(∑[A065744(n)!])`
-/

namespace A129947.P13367193555874680604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A065744 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217148 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A129947.P13367193555874680604

/-! ## A129947.P10232654471579739835

`A217148(A065744(n)!+n)`
-/

namespace A129947.P10232654471579739835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217148 (Nat.factorial (A065744 n).toNat + n)

end

end A129947.P10232654471579739835

/-! ## A129947.P15130920784630208555

`A217148(A273881(n+1)+1)`
-/

namespace A129947.P15130920784630208555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217148 (A273881 (n + 1) + 1).toNat

end

end A129947.P15130920784630208555

/-!
# A129949: a(n) = n! - binomial(n,3).

The programs for A129949, there is no canonical definition to state claims against.
-/

/-! ## A129949.P17654805797786041610

`n!-C(n, 3)`
-/

namespace A129949.P17654805797786041610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - (Nat.choose n 3 : ℤ)

end

end A129949.P17654805797786041610

/-! ## A129949.P17446790843891927811

`Δ[-C(n, 4)]+n!`
-/

namespace A129949.P17446790843891927811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose n 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.factorial n : ℤ)

end

end A129949.P17446790843891927811

/-! ## A129949.P15896726648868943548

`n²+n!-∑[∑[n]]`
-/

namespace A129949.P15896726648868943548
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + ((Nat.factorial n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A129949.P15896726648868943548

/-! ## A129949.P5183764044703485247

`n²-(∑[∑[n]]-n!)`
-/

namespace A129949.P5183764044703485247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.factorial n : ℤ))

end

end A129949.P5183764044703485247

/-! ## A129949.P1634424217895595919

`∏[round(1/acot(n))]-C(n, 3)`
-/

namespace A129949.P1634424217895595919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (Nat.choose n 3 : ℤ)

end

end A129949.P1634424217895595919

/-! ## A129949.P14914167136792922617

`A000142(n)-∑[∑[A289207(n)]]`
-/

namespace A129949.P14914167136792922617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129949.P14914167136792922617

/-! ## A129949.P16737750845887145256

`A000142(n)+A000332(n)-A000332(n+1)`
-/

namespace A129949.P16737750845887145256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + (A000332 n - A000332 (n + 1))

end

end A129949.P16737750845887145256

/-! ## A129949.P14644637697195414769

`∏[n+1]/(n+1)-C(n, 3)`
-/

namespace A129949.P14644637697195414769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) - (Nat.choose n 3 : ℚ)

end

end A129949.P14644637697195414769

/-!
# A129950: Indicator function of twin primes: 1 if n is a twin prime member, 0 if not prime, -1 else (isolated prime or 2).

The programs for A129950, the canonical program `A129950.P15295767996041627134` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129950 has offset 1).

The definition of A129950 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A164292, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A129950.P15295767996041627134

`2*A164292(n+1)-A010051(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A129950

/-- `2*A164292(n+1)-A010051(n+1)` -/
def P15295767996041627134.Spec : Prop :=
  ∀ n, P15295767996041627134.a n = A129950 (n + 1)

theorem P15295767996041627134.correct : P15295767996041627134.Spec := by
  intro n
  simp only [A129950, Nat.add_sub_cancel]

end A129950

/-! ## A129950.P5859841367267384717

`(2^A175682(n+1)-3)%2`
-/

namespace A129950.P5859841367267384717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A175682 (n + 1) : ℤ) - 3)) 2

end

end A129950.P5859841367267384717

namespace A129950

/-- `(2^A175682(n+1)-3)%2` -/
def P5859841367267384717.Spec : Prop :=
  ∀ n, P5859841367267384717.a n = A129950 (n + 1)

end A129950

/-! ## A129950.P15342250239753384526

`A125202(A072963(n+1))%A089026(n+1)`
-/

namespace A129950.P15342250239753384526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125202 (A072963 (n + 1)).toNat) (A089026 (n + 1))

end

end A129950.P15342250239753384526

namespace A129950

/-- `A125202(A072963(n+1))%A089026(n+1)` -/
def P15342250239753384526.Spec : Prop :=
  ∀ n, P15342250239753384526.a n = A129950 (n + 1)

end A129950

/-! ## A129950.P3121576843573571630

`A164292(n+1)-char[A000010(A007510(n+1))]`
-/

namespace A129950.P3121576843573571630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007510 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A129950.P3121576843573571630

namespace A129950

/-- `A164292(n+1)-char[A000010(A007510(n+1))]` -/
def P3121576843573571630.Spec : Prop :=
  ∀ n, P3121576843573571630.a n = A129950 (n + 1)

end A129950

/-! ## A129950.P3438447589683968391

`A164292(n+1)-A010051(A164292(n+1)+n+1)`
-/

namespace A129950.P3438447589683968391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (n + 1) - A010051 (A164292 (n + 1) + (n : ℤ) + 1).toNat

end

end A129950.P3438447589683968391

namespace A129950

/-- `A164292(n+1)-A010051(A164292(n+1)+n+1)` -/
def P3438447589683968391.Spec : Prop :=
  ∀ n, P3438447589683968391.a n = A129950 (n + 1)

end A129950

/-! ## A129950.P1992012918741149203

`A284203(n+1)-xor(A010051(n+1), A284203(n+1))`
-/

namespace A129950.P1992012918741149203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284203 (n + 1) - Int.xor (A010051 (n + 1)) (A284203 (n + 1))

end

end A129950.P1992012918741149203

namespace A129950

/-- `A284203(n+1)-xor(A010051(n+1), A284203(n+1))` -/
def P1992012918741149203.Spec : Prop :=
  ∀ n, P1992012918741149203.a n = A129950 (n + 1)

end A129950

/-! ## A129950.P4282627727020721860

`A187886(n+1)-xor(A010051(n+1), A187886(n+1))`
-/

namespace A129950.P4282627727020721860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187886 (n + 1) - Int.xor (A010051 (n + 1)) (A187886 (n + 1))

end

end A129950.P4282627727020721860

namespace A129950

/-- `A187886(n+1)-xor(A010051(n+1), A187886(n+1))` -/
def P4282627727020721860.Spec : Prop :=
  ∀ n, P4282627727020721860.a n = A129950 (n + 1)

end A129950

/-!
# A129951: Sum of characteristic function of twin primes < 10^n.

The programs for A129951, there is no canonical definition to state claims against.
-/

/-! ## A129951.P16649524800896228585

`A167874(A166508(n+1))-A129542(n+1)`
-/

namespace A129951.P16649524800896228585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167874 (A166508 (n + 1)).toNat - A129542 (n + 1)

end

end A129951.P16649524800896228585

/-!
# A129952: Binomial transform of A124625.

The programs for A129952, the canonical program `A129952.P2409925324620898391` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129952 has offset 0).

The definition of A129952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129952.P5655294234645302238

`n*2^((n-2)%a(n-1))` with `a(0)=1`
-/

namespace A129952.P5655294234645302238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (2 : ℚ) ^ (Int.tmod ((n : ℤ) - 2) (SequenceMachineLib.roundAway (a (n - 1))) : ℤ)

end

end A129952.P5655294234645302238

namespace A129952

/-- `n*2^((n-2)%a(n-1))` -/
def P5655294234645302238.Spec : Prop :=
  ∀ n, P5655294234645302238.a n = (A129952 n : ℚ)

end A129952

/-! ## A129952.P5681010354441870195

`n*gcd(2, a(n-1))^(n-2)` with `a(0)=1`
-/

namespace A129952.P5681010354441870195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (Int.gcd 2 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A129952.P5681010354441870195

namespace A129952

/-- `n*gcd(2, a(n-1))^(n-2)` -/
def P5681010354441870195.Spec : Prop :=
  ∀ n, P5681010354441870195.a n = (A129952 n : ℚ)

end A129952

/-! ## A129952.P17511062057930760692

`(2/(n-1)+2)*a(n-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A129952.P17511062057930760692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (2 / ((n : ℤ) - 1 : ℚ) + 2) * a (n - 1)

end

end A129952.P17511062057930760692

namespace A129952

/-- `(2/(n-1)+2)*a(n-1)` -/
def P17511062057930760692.Spec : Prop :=
  ∀ n, P17511062057930760692.a n = (A129952 n : ℚ)

end A129952

/-! ## A129952.P4354606099688509495

`2*a(n-1)/(1-1/n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A129952.P4354606099688509495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  2 * (a (n - 1) / (1 - 1 / (n : ℚ)))

end

end A129952.P4354606099688509495

namespace A129952

/-- `2*a(n-1)/(1-1/n)` -/
def P4354606099688509495.Spec : Prop :=
  ∀ n, P4354606099688509495.a n = (A129952 n : ℚ)

end A129952

/-! ## A129952.P2409925324620898391

`4*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129952

/-- `4*(a(n-1)-a(n-2))` -/
def P2409925324620898391.Spec : Prop :=
  ∀ n, P2409925324620898391.a n = A129952 n

theorem P2409925324620898391.correct : P2409925324620898391.Spec := by
  intro n
  simp only [A129952]

end A129952

/-! ## A129952.P8104294515173657343

`(a(n-1)+floor(a(n-1)))/(1-1/n)` with `a(0)=1, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A129952.P8104294515173657343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (a (n - 1) + (⌊a (n - 1)⌋ : ℚ)) / (1 - 1 / (n : ℚ))

end

end A129952.P8104294515173657343

namespace A129952

/-- `(a(n-1)+floor(a(n-1)))/(1-1/n)` -/
def P8104294515173657343.Spec : Prop :=
  ∀ n, P8104294515173657343.a n = (A129952 n : ℚ)

end A129952

/-! ## A129952.P13865090623069262540

`A227978(n)-n`
-/

namespace A129952.P13865090623069262540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227978 n - (n : ℤ)

end

end A129952.P13865090623069262540

namespace A129952

/-- `A227978(n)-n` -/
def P13865090623069262540.Spec : Prop :=
  ∀ n, P13865090623069262540.a n = A129952 n

end A129952

/-! ## A129952.P6606286840403916878

`∑[A129953(abs(1-n))]`
-/

namespace A129952.P6606286840403916878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129953 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129952.P6606286840403916878

namespace A129952

/-- `∑[A129953(abs(1-n))]` -/
def P6606286840403916878.Spec : Prop :=
  ∀ n, P6606286840403916878.a n = A129952 n

end A129952

/-! ## A129952.P6748578154047956188

`A129953(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A129952.P6748578154047956188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A129953 (n - 1) + a (n - 1)

end

end A129952.P6748578154047956188

namespace A129952

/-- `A129953(n-1)+a(n-1)` -/
def P6748578154047956188.Spec : Prop :=
  ∀ n, P6748578154047956188.a n = A129952 n

end A129952

/-! ## A129952.P2072578594547269529

`A087447(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A129952.P2072578594547269529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A087447 (n - 1) + a (n - 1)

end

end A129952.P2072578594547269529

namespace A129952

/-- `A087447(n-1)+a(n-1)` -/
def P2072578594547269529.Spec : Prop :=
  ∀ n, P2072578594547269529.a n = A129952 n

end A129952

/-! ## A129952.P10170503973283592059

`A057711(A028310(n))`
-/

namespace A129952.P10170503973283592059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (A028310 n).toNat

end

end A129952.P10170503973283592059

namespace A129952

/-- `A057711(A028310(n))` -/
def P10170503973283592059.Spec : Prop :=
  ∀ n, P10170503973283592059.a n = A129952 n

end A129952

/-! ## A129952.P4088761201072956460

`A057711(A065033(2*n))`
-/

namespace A129952.P4088761201072956460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (A065033 (2 * n)).toNat

end

end A129952.P4088761201072956460

namespace A129952

/-- `A057711(A065033(2*n))` -/
def P4088761201072956460.Spec : Prop :=
  ∀ n, P4088761201072956460.a n = A129952 n

end A129952

/-! ## A129952.P5039125708222077959

`A057711(A000007(n)+n)`
-/

namespace A129952.P5039125708222077959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (A000007 n + (n : ℤ)).toNat

end

end A129952.P5039125708222077959

namespace A129952

/-- `A057711(A000007(n)+n)` -/
def P5039125708222077959.Spec : Prop :=
  ∀ n, P5039125708222077959.a n = A129952 n

end A129952

/-! ## A129952.P6412673213074640753

`A166444(n)+A097067(n)`
-/

namespace A129952.P6412673213074640753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n + A097067 n

end

end A129952.P6412673213074640753

namespace A129952

/-- `A166444(n)+A097067(n)` -/
def P6412673213074640753.Spec : Prop :=
  ∀ n, P6412673213074640753.a n = A129952 n

end A129952

/-! ## A129952.P8692885823744720209

`A057711(A004277(n)-n)`
-/

namespace A129952.P8692885823744720209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (A004277 n - (n : ℤ)).toNat

end

end A129952.P8692885823744720209

namespace A129952

/-- `A057711(A004277(n)-n)` -/
def P8692885823744720209.Spec : Prop :=
  ∀ n, P8692885823744720209.a n = A129952 n

end A129952

/-! ## A129952.P14077338078887494783

`A129954(n)-A155559(n)`
-/

namespace A129952.P14077338078887494783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129954 n - A155559 n

end

end A129952.P14077338078887494783

namespace A129952

/-- `A129954(n)-A155559(n)` -/
def P14077338078887494783.Spec : Prop :=
  ∀ n, P14077338078887494783.a n = A129952 n

end A129952

/-! ## A129952.P5520200988924528254

`A057711(gcd(n, A022144(n)))`
-/

namespace A129952.P5520200988924528254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (Int.gcd (n : ℤ) (A022144 n))

end

end A129952.P5520200988924528254

namespace A129952

/-- `A057711(gcd(n, A022144(n)))` -/
def P5520200988924528254.Spec : Prop :=
  ∀ n, P5520200988924528254.a n = A129952 n

end A129952

/-! ## A129952.P5516414504006434752

`A057711(xor(n, A000007(n)))`
-/

namespace A129952.P5516414504006434752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (Int.xor (n : ℤ) (A000007 n)).toNat

end

end A129952.P5516414504006434752

namespace A129952

/-- `A057711(xor(n, A000007(n)))` -/
def P5516414504006434752.Spec : Prop :=
  ∀ n, P5516414504006434752.a n = A129952 n

end A129952

/-! ## A129952.P18025897914595535009

`A057711(A101279(2*n+1))`
-/

namespace A129952.P18025897914595535009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (A101279 (2 * n + 1)).toNat

end

end A129952.P18025897914595535009

namespace A129952

/-- `A057711(A101279(2*n+1))` -/
def P18025897914595535009.Spec : Prop :=
  ∀ n, P18025897914595535009.a n = A129952 n

end A129952

/-!
# A129953: First differences of A129952.

The programs for A129953, the canonical program `A129953.P2036751280986642059` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129953 has offset 0).

The definition of A129953 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129952, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A129953.P2036751280986642059

`A129952(n+1)-A129952(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A129953

/-- `A129952(n+1)-A129952(n)` -/
def P2036751280986642059.Spec : Prop :=
  ∀ n, P2036751280986642059.a n = A129953 n

theorem P2036751280986642059.correct : P2036751280986642059.Spec := by
  intro n
  simp only [A129953]

end A129953

/-! ## A129953.P2562132445821992307

`floor((n+2)*2^(n-2))`
-/

namespace A129953.P2562132445821992307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

end

end A129953.P2562132445821992307

namespace A129953

/-- `floor((n+2)*2^(n-2))` -/
def P2562132445821992307.Spec : Prop :=
  ∀ n, P2562132445821992307.a n = A129953 n

end A129953

/-! ## A129953.P17927103829031102979

`(2/(n+1)+2)*a(n-1)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A129953.P17927103829031102979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  (2 / (n + 1 : ℚ) + 2) * a (n - 1)

end

end A129953.P17927103829031102979

namespace A129953

/-- `(2/(n+1)+2)*a(n-1)` -/
def P17927103829031102979.Spec : Prop :=
  ∀ n, P17927103829031102979.a n = (A129953 n : ℚ)

end A129953

/-! ## A129953.P510840839538214125

`A087447(n)-A000007(n)`
-/

namespace A129953.P510840839538214125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087447 n - A000007 n

end

end A129953.P510840839538214125

namespace A129953

/-- `A087447(n)-A000007(n)` -/
def P510840839538214125.Spec : Prop :=
  ∀ n, P510840839538214125.a n = A129953 n

end A129953

/-! ## A129953.P6083009890854100917

`A131352(n)-A011782(n)`
-/

namespace A129953.P6083009890854100917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131352 n - A011782 n

end

end A129953.P6083009890854100917

namespace A129953

/-- `A131352(n)-A011782(n)` -/
def P6083009890854100917.Spec : Prop :=
  ∀ n, P6083009890854100917.a n = A129953 n

end A129953

/-! ## A129953.P15395345892612495832

`A057427(n)*A087447(n)`
-/

namespace A129953.P15395345892612495832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A087447 n

end

end A129953.P15395345892612495832

namespace A129953

/-- `A057427(n)*A087447(n)` -/
def P15395345892612495832.Spec : Prop :=
  ∀ n, P15395345892612495832.a n = A129953 n

end A129953

/-! ## A129953.P17697472978956230083

`A087447(n)%A045623(n)`
-/

namespace A129953.P17697472978956230083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087447 n) (A045623 n)

end

end A129953.P17697472978956230083

namespace A129953

/-- `A087447(n)%A045623(n)` -/
def P17697472978956230083.Spec : Prop :=
  ∀ n, P17697472978956230083.a n = A129953 n

end A129953

/-! ## A129953.P5333193522842460136

`and(A057428(n), A087447(n))`
-/

namespace A129953.P5333193522842460136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A087447 n)

end

end A129953.P5333193522842460136

namespace A129953

/-- `and(A057428(n), A087447(n))` -/
def P5333193522842460136.Spec : Prop :=
  ∀ n, P5333193522842460136.a n = A129953 n

end A129953

/-! ## A129953.P1652817006432675142

`and(A087447(n), A134824(n))`
-/

namespace A129953.P1652817006432675142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087447 n) (A134824 n)

end

end A129953.P1652817006432675142

namespace A129953

/-- `and(A087447(n), A134824(n))` -/
def P1652817006432675142.Spec : Prop :=
  ∀ n, P1652817006432675142.a n = A129953 n

end A129953

/-! ## A129953.P11505348175431142245

`A360951(n)+A184985(n+1)`
-/

namespace A129953.P11505348175431142245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360951 n + A184985 (n + 1)

end

end A129953.P11505348175431142245

namespace A129953

/-- `A360951(n)+A184985(n+1)` -/
def P11505348175431142245.Spec : Prop :=
  ∀ n, P11505348175431142245.a n = A129953 n

end A129953

/-! ## A129953.P3155803054410652944

`A129954(n)-A090129(n+1)`
-/

namespace A129953.P3155803054410652944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129954 n - A090129 (n + 1)

end

end A129953.P3155803054410652944

namespace A129953

/-- `A129954(n)-A090129(n+1)` -/
def P3155803054410652944.Spec : Prop :=
  ∀ n, P3155803054410652944.a n = A129953 n

end A129953

/-! ## A129953.P1003039322871107800

`A125176(n+1)-A172160(n)`
-/

namespace A129953.P1003039322871107800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125176 (n + 1) - A172160 n

end

end A129953.P1003039322871107800

namespace A129953

/-- `A125176(n+1)-A172160(n)` -/
def P1003039322871107800.Spec : Prop :=
  ∀ n, P1003039322871107800.a n = A129953 n

end A129953

/-! ## A129953.P5908783800523599005

`A129955(n)-2*A011782(n)`
-/

namespace A129953.P5908783800523599005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129955 n - 2 * A011782 n

end

end A129953.P5908783800523599005

namespace A129953

/-- `A129955(n)-2*A011782(n)` -/
def P5908783800523599005.Spec : Prop :=
  ∀ n, P5908783800523599005.a n = A129953 n

end A129953

/-! ## A129953.P12912742425932740460

`and(A068237(n+1), A087447(n))`
-/

namespace A129953.P12912742425932740460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068237 (n + 1)) (A087447 n)

end

end A129953.P12912742425932740460

namespace A129953

/-- `and(A068237(n+1), A087447(n))` -/
def P12912742425932740460.Spec : Prop :=
  ∀ n, P12912742425932740460.a n = A129953 n

end A129953

/-! ## A129953.P14086172591646632139

`A131577(n)+n*A034008(n)`
-/

namespace A129953.P14086172591646632139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + (n : ℤ) * A034008 n

end

end A129953.P14086172591646632139

namespace A129953

/-- `A131577(n)+n*A034008(n)` -/
def P14086172591646632139.Spec : Prop :=
  ∀ n, P14086172591646632139.a n = A129953 n

end A129953

/-! ## A129953.P731058720949592619

`A034008(n+1)+n*A034008(n)`
-/

namespace A129953.P731058720949592619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (n + 1) + (n : ℤ) * A034008 n

end

end A129953.P731058720949592619

namespace A129953

/-- `A034008(n+1)+n*A034008(n)` -/
def P731058720949592619.Spec : Prop :=
  ∀ n, P731058720949592619.a n = A129953 n

end A129953

/-! ## A129953.P8211605121003423380

`A045623(n)-A011782(log2(A011782(n)))`
-/

namespace A129953.P8211605121003423380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n - A011782 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A129953.P8211605121003423380

namespace A129953

/-- `A045623(n)-A011782(log2(A011782(n)))` -/
def P8211605121003423380.Spec : Prop :=
  ∀ n, P8211605121003423380.a n = A129953 n

end A129953

/-! ## A129953.P2783008221240669460

`A131352(n)+A131352(n)-A129955(n)`
-/

namespace A129953.P2783008221240669460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131352 n + (A131352 n - A129955 n)

end

end A129953.P2783008221240669460

namespace A129953

/-- `A131352(n)+A131352(n)-A129955(n)` -/
def P2783008221240669460.Spec : Prop :=
  ∀ n, P2783008221240669460.a n = A129953 n

end A129953

/-! ## A129953.P11794058186129343209

`A049610(n+1)+A049610(n+1)-A057711(n)`
-/

namespace A129953.P11794058186129343209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (n + 1) + (A049610 (n + 1) - A057711 n)

end

end A129953.P11794058186129343209

namespace A129953

/-- `A049610(n+1)+A049610(n+1)-A057711(n)` -/
def P11794058186129343209.Spec : Prop :=
  ∀ n, P11794058186129343209.a n = A129953 n

end A129953

/-!
# A129954: Second differences of A129952.

The programs for A129954, the canonical program `A129954.P4888551981017945267` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129954 has offset 0).

The definition of A129954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129954.P4888551981017945267

`ceil((n+4)*2^(n-2))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129954

/-- `ceil((n+4)*2^(n-2))` -/
def P4888551981017945267.Spec : Prop :=
  ∀ n, P4888551981017945267.a n = A129954 n

theorem P4888551981017945267.correct : P4888551981017945267.Spec := by
  intro n
  simp only [A129954]

end A129954

/-! ## A129954.P10737361263305859059

`A131352(n)+char[1]`
-/

namespace A129954.P10737361263305859059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131352 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A129954.P10737361263305859059

namespace A129954

/-- `A131352(n)+char[1]` -/
def P10737361263305859059.Spec : Prop :=
  ∀ n, P10737361263305859059.a n = A129954 n

end A129954

/-! ## A129954.P16818955400616751975

`A057711(n)+2^n`
-/

namespace A129954.P16818955400616751975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 n + (2 ^ n : ℤ)

end

end A129954.P16818955400616751975

namespace A129954

/-- `A057711(n)+2^n` -/
def P16818955400616751975.Spec : Prop :=
  ∀ n, P16818955400616751975.a n = A129954 n

end A129954

/-! ## A129954.P9476039324561979505

`A129955(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A129954.P9476039324561979505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A129955 (n - 1) + a (n - 1)

end

end A129954.P9476039324561979505

namespace A129954

/-- `A129955(n-1)+a(n-1)` -/
def P9476039324561979505.Spec : Prop :=
  ∀ n, P9476039324561979505.a n = A129954 n

end A129954

/-! ## A129954.P18356136105825944062

`2^n+n*A011782(abs(1-n))`
-/

namespace A129954.P18356136105825944062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (n : ℤ) * A011782 |1 - (n : ℤ)|.toNat

end

end A129954.P18356136105825944062

namespace A129954

/-- `2^n+n*A011782(abs(1-n))` -/
def P18356136105825944062.Spec : Prop :=
  ∀ n, P18356136105825944062.a n = A129954 n

end A129954

/-! ## A129954.P3367681069575244686

`A166444(n)+A045623(n)`
-/

namespace A129954.P3367681069575244686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n + A045623 n

end

end A129954.P3367681069575244686

namespace A129954

/-- `A166444(n)+A045623(n)` -/
def P3367681069575244686.Spec : Prop :=
  ∀ n, P3367681069575244686.a n = A129954 n

end A129954

/-! ## A129954.P11545139889446615016

`A155559(n)+A129952(n)`
-/

namespace A129954.P11545139889446615016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + A129952 n

end

end A129954.P11545139889446615016

namespace A129954

/-- `A155559(n)+A129952(n)` -/
def P11545139889446615016.Spec : Prop :=
  ∀ n, P11545139889446615016.a n = A129954 n

end A129954

/-! ## A129954.P2900734488844396896

`A106472(n)-A049610(n)`
-/

namespace A129954.P2900734488844396896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106472 n - A049610 n

end

end A129954.P2900734488844396896

namespace A129954

/-- `A106472(n)-A049610(n)` -/
def P2900734488844396896.Spec : Prop :=
  ∀ n, P2900734488844396896.a n = A129954 n

end A129954

/-! ## A129954.P373191780970348663

`xor(A063524(n), A131352(n))`
-/

namespace A129954.P373191780970348663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A131352 n)

end

end A129954.P373191780970348663

namespace A129954

/-- `xor(A063524(n), A131352(n))` -/
def P373191780970348663.Spec : Prop :=
  ∀ n, P373191780970348663.a n = A129954 n

end A129954

/-! ## A129954.P7448394451449603968

`A131577(n+1)+A057711(n)`
-/

namespace A129954.P7448394451449603968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) + A057711 n

end

end A129954.P7448394451449603968

namespace A129954

/-- `A131577(n+1)+A057711(n)` -/
def P7448394451449603968.Spec : Prop :=
  ∀ n, P7448394451449603968.a n = A129954 n

end A129954

/-! ## A129954.P7051001577523324988

`A129953(n)+A090129(n+1)`
-/

namespace A129954.P7051001577523324988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129953 n + A090129 (n + 1)

end

end A129954.P7051001577523324988

namespace A129954

/-- `A129953(n)+A090129(n+1)` -/
def P7051001577523324988.Spec : Prop :=
  ∀ n, P7051001577523324988.a n = A129954 n

end A129954

/-! ## A129954.P18239259034489979002

`A166444(n+2)+A057711(n)`
-/

namespace A129954.P18239259034489979002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 2) + A057711 n

end

end A129954.P18239259034489979002

namespace A129954

/-- `A166444(n+2)+A057711(n)` -/
def P18239259034489979002.Spec : Prop :=
  ∀ n, P18239259034489979002.a n = A129954 n

end A129954

/-! ## A129954.P13739561649435151804

`A045891(n)*A104435(n+1)`
-/

namespace A129954.P13739561649435151804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 n * A104435 (n + 1)

end

end A129954.P13739561649435151804

namespace A129954

/-- `A045891(n)*A104435(n+1)` -/
def P13739561649435151804.Spec : Prop :=
  ∀ n, P13739561649435151804.a n = A129954 n

end A129954

/-! ## A129954.P11036747752177804256

`A077957(2*n)+A057711(n)`
-/

namespace A129954.P11036747752177804256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (2 * n) + A057711 n

end

end A129954.P11036747752177804256

namespace A129954

/-- `A077957(2*n)+A057711(n)` -/
def P11036747752177804256.Spec : Prop :=
  ∀ n, P11036747752177804256.a n = A129954 n

end A129954

/-! ## A129954.P718706544379793061

`A087447(n)+2*A166444(n)`
-/

namespace A129954.P718706544379793061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087447 n + 2 * A166444 n

end

end A129954.P718706544379793061

namespace A129954

/-- `A087447(n)+2*A166444(n)` -/
def P718706544379793061.Spec : Prop :=
  ∀ n, P718706544379793061.a n = A129954 n

end A129954

/-! ## A129954.P6601817578732978078

`2*A109975(n)-A011782(n)`
-/

namespace A129954.P6601817578732978078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109975 n - A011782 n

end

end A129954.P6601817578732978078

namespace A129954

/-- `2*A109975(n)-A011782(n)` -/
def P6601817578732978078.Spec : Prop :=
  ∀ n, P6601817578732978078.a n = A129954 n

end A129954

/-! ## A129954.P12294554718084554591

`A000079(n)+n*A166444(n)`
-/

namespace A129954.P12294554718084554591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (n : ℤ) * A166444 n

end

end A129954.P12294554718084554591

namespace A129954

/-- `A000079(n)+n*A166444(n)` -/
def P12294554718084554591.Spec : Prop :=
  ∀ n, P12294554718084554591.a n = A129954 n

end A129954

/-! ## A129954.P1780113874281103118

`∑[A011782(n)]+n*A166444(n)`
-/

namespace A129954.P1780113874281103118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) * A166444 n

end

end A129954.P1780113874281103118

namespace A129954

/-- `∑[A011782(n)]+n*A166444(n)` -/
def P1780113874281103118.Spec : Prop :=
  ∀ n, P1780113874281103118.a n = A129954 n

end A129954

/-! ## A129954.P2909239592025644242

`A016116(2*n)+n*A076736(2*n+1)`
-/

namespace A129954.P2909239592025644242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) + (n : ℤ) * A076736 (2 * n + 1)

end

end A129954.P2909239592025644242

namespace A129954

/-- `A016116(2*n)+n*A076736(2*n+1)` -/
def P2909239592025644242.Spec : Prop :=
  ∀ n, P2909239592025644242.a n = A129954 n

end A129954

/-!
# A129955: Third differences of A129952.

The programs for A129955, the canonical program `A129955.P16073970261024358546` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129955 has offset 0).

The definition of A129955 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129954, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A129955.P16073970261024358546

`A129954(n+1)-A129954(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A129955

/-- `A129954(n+1)-A129954(n)` -/
def P16073970261024358546.Spec : Prop :=
  ∀ n, P16073970261024358546.a n = A129955 n

theorem P16073970261024358546.correct : P16073970261024358546.Spec := by
  intro n
  simp only [A129955]

end A129955

/-! ## A129955.P12571701657312421069

`A087447(n)+2^n`
-/

namespace A129955.P12571701657312421069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087447 n + (2 ^ n : ℤ)

end

end A129955.P12571701657312421069

namespace A129955

/-- `A087447(n)+2^n` -/
def P12571701657312421069.Spec : Prop :=
  ∀ n, P12571701657312421069.a n = A129955 n

end A129955

/-! ## A129955.P12482467738820479519

`A131352(n)+A011782(n)`
-/

namespace A129955.P12482467738820479519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131352 n + A011782 n

end

end A129955.P12482467738820479519

namespace A129955

/-- `A131352(n)+A011782(n)` -/
def P12482467738820479519.Spec : Prop :=
  ∀ n, P12482467738820479519.a n = A129955 n

end A129955

/-! ## A129955.P965642856849352836

`A111297(n)+A045891(n)`
-/

namespace A129955.P965642856849352836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111297 n + A045891 n

end

end A129955.P965642856849352836

namespace A129955

/-- `A111297(n)+A045891(n)` -/
def P965642856849352836.Spec : Prop :=
  ∀ n, P965642856849352836.a n = A129955 n

end A129955

/-! ## A129955.P1258892607518368137

`A045891(n)+Δ[A109975(n)]`
-/

namespace A129955.P1258892607518368137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 n + (f1 (n + 1) - f1 n)

end

end A129955.P1258892607518368137

namespace A129955

/-- `A045891(n)+Δ[A109975(n)]` -/
def P1258892607518368137.Spec : Prop :=
  ∀ n, P1258892607518368137.a n = A129955 n

end A129955

/-! ## A129955.P3336828212152216052

`A045891(n+1)+A034008(n)`
-/

namespace A129955.P3336828212152216052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (n + 1) + A034008 n

end

end A129955.P3336828212152216052

namespace A129955

/-- `A045891(n+1)+A034008(n)` -/
def P3336828212152216052.Spec : Prop :=
  ∀ n, P3336828212152216052.a n = A129955 n

end A129955

/-! ## A129955.P6602390324623043670

`A131577(n+1)+A087447(n)`
-/

namespace A129955.P6602390324623043670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) + A087447 n

end

end A129955.P6602390324623043670

namespace A129955

/-- `A131577(n+1)+A087447(n)` -/
def P6602390324623043670.Spec : Prop :=
  ∀ n, P6602390324623043670.a n = A129955 n

end A129955

/-! ## A129955.P15307108678423532612

`A125176(n+1)+A097067(n)`
-/

namespace A129955.P15307108678423532612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125176 (n + 1) + A097067 n

end

end A129955.P15307108678423532612

namespace A129955

/-- `A125176(n+1)+A097067(n)` -/
def P15307108678423532612.Spec : Prop :=
  ∀ n, P15307108678423532612.a n = A129955 n

end A129955

/-! ## A129955.P8313013000532153507

`A129952(n)+A111286(n+1)`
-/

namespace A129955.P8313013000532153507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129952 n + A111286 (n + 1)

end

end A129955.P8313013000532153507

namespace A129955

/-- `A129952(n)+A111286(n+1)` -/
def P8313013000532153507.Spec : Prop :=
  ∀ n, P8313013000532153507.a n = A129955 n

end A129955

/-! ## A129955.P840692033455291436

`A129953(n)+A090129(n+2)`
-/

namespace A129955.P840692033455291436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129953 n + A090129 (n + 2)

end

end A129955.P840692033455291436

namespace A129955

/-- `A129953(n)+A090129(n+2)` -/
def P840692033455291436.Spec : Prop :=
  ∀ n, P840692033455291436.a n = A129955 n

end A129955

/-! ## A129955.P16061358115592812484

`A166444(n+2)+A087447(n)`
-/

namespace A129955.P16061358115592812484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 2) + A087447 n

end

end A129955.P16061358115592812484

namespace A129955

/-- `A166444(n+2)+A087447(n)` -/
def P16061358115592812484.Spec : Prop :=
  ∀ n, P16061358115592812484.a n = A129955 n

end A129955

/-! ## A129955.P3786487410929213957

`A109975(n+1)-A166444(n)`
-/

namespace A129955.P3786487410929213957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109975 (n + 1) - A166444 n

end

end A129955.P3786487410929213957

namespace A129955

/-- `A109975(n+1)-A166444(n)` -/
def P3786487410929213957.Spec : Prop :=
  ∀ n, P3786487410929213957.a n = A129955 n

end A129955

/-! ## A129955.P4330404227160975821

`A129953(n)+2*A011782(n)`
-/

namespace A129955.P4330404227160975821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129953 n + 2 * A011782 n

end

end A129955.P4330404227160975821

namespace A129955

/-- `A129953(n)+2*A011782(n)` -/
def P4330404227160975821.Spec : Prop :=
  ∀ n, P4330404227160975821.a n = A129955 n

end A129955

/-! ## A129955.P16559435612210147806

`A131577(n)+2*A045891(n)`
-/

namespace A129955.P16559435612210147806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + 2 * A045891 n

end

end A129955.P16559435612210147806

namespace A129955

/-- `A131577(n)+2*A045891(n)` -/
def P16559435612210147806.Spec : Prop :=
  ∀ n, P16559435612210147806.a n = A129955 n

end A129955

/-! ## A129955.P359362604164613495

`2*A111297(n)-A131577(n)`
-/

namespace A129955.P359362604164613495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111297 n - A131577 n

end

end A129955.P359362604164613495

namespace A129955

/-- `2*A111297(n)-A131577(n)` -/
def P359362604164613495.Spec : Prop :=
  ∀ n, P359362604164613495.a n = A129955 n

end A129955

/-! ## A129955.P916422723992987590

`A042950(n)+n*A034008(n)`
-/

namespace A129955.P916422723992987590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n + (n : ℤ) * A034008 n

end

end A129955.P916422723992987590

namespace A129955

/-- `A042950(n)+n*A034008(n)` -/
def P916422723992987590.Spec : Prop :=
  ∀ n, P916422723992987590.a n = A129955 n

end A129955

/-! ## A129955.P8063534304811143123

`A131577(n)+∑[2*A034007(n)]`
-/

namespace A129955.P8063534304811143123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129955.P8063534304811143123

namespace A129955

/-- `A131577(n)+∑[2*A034007(n)]` -/
def P8063534304811143123.Spec : Prop :=
  ∀ n, P8063534304811143123.a n = A129955 n

end A129955

/-! ## A129955.P4132350836023489197

`Δ[A011782(n)]+2*A045891(n)`
-/

namespace A129955.P4132350836023489197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A045891 n

end

end A129955.P4132350836023489197

namespace A129955

/-- `Δ[A011782(n)]+2*A045891(n)` -/
def P4132350836023489197.Spec : Prop :=
  ∀ n, P4132350836023489197.a n = A129955 n

end A129955

/-! ## A129955.P6143696489520574526

`A045623(n)+A045623(n)-A057711(n)`
-/

namespace A129955.P6143696489520574526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n + (A045623 n - A057711 n)

end

end A129955.P6143696489520574526

namespace A129955

/-- `A045623(n)+A045623(n)-A057711(n)` -/
def P6143696489520574526.Spec : Prop :=
  ∀ n, P6143696489520574526.a n = A129955 n

end A129955

/-!
# A129957: a(n) = n^3 if n is odd, n^3 + 1 otherwise.

The programs for A129957, the canonical program `A129957.P15564779407709411644` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129957 has offset 0).

The definition of A129957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129957.P15564779407709411644

`or(1, n^3)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129957

/-- `or(1, n^3)` -/
def P15564779407709411644.Spec : Prop :=
  ∀ n, (P15564779407709411644.a n : ℤ) = A129957 n

theorem P15564779407709411644.correct : P15564779407709411644.Spec := by
  intro n
  simp only [A129957]

end A129957

/-! ## A129957.P12102950129369061637

`and(-2, n^3)+1`
-/

namespace A129957.P12102950129369061637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (n ^ 3 : ℤ) + 1

end

end A129957.P12102950129369061637

namespace A129957

/-- `and(-2, n^3)+1` -/
def P12102950129369061637.Spec : Prop :=
  ∀ n, P12102950129369061637.a n = A129957 n

end A129957

/-! ## A129957.P13315451468921428362

`xor(1, and(-2, n^3))`
-/

namespace A129957.P13315451468921428362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.land (-2) (n ^ 3 : ℤ))

end

end A129957.P13315451468921428362

namespace A129957

/-- `xor(1, and(-2, n^3))` -/
def P13315451468921428362.Spec : Prop :=
  ∀ n, P13315451468921428362.a n = A129957 n

end A129957

/-! ## A129957.P8751397909010122328

`log2(gcd(2, n))+n^3`
-/

namespace A129957.P8751397909010122328
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) + (n ^ 3 : ℝ)

end

end A129957.P8751397909010122328

namespace A129957

/-- `log2(gcd(2, n))+n^3` -/
def P8751397909010122328.Spec : Prop :=
  ∀ n, P8751397909010122328.a n = (A129957 n : ℝ)

end A129957

/-! ## A129957.P5066543262667586415

`char[2*n]+n^3`
-/

namespace A129957.P5066543262667586415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + n ^ 3

end

end A129957.P5066543262667586415

namespace A129957

/-- `char[2*n]+n^3` -/
def P5066543262667586415.Spec : Prop :=
  ∀ n, (P5066543262667586415.a n : ℤ) = A129957 n

end A129957

/-! ## A129957.P8400019144831877537

`xor(n^3, char[2*n])`
-/

namespace A129957.P8400019144831877537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n ^ 3) (if ∃ j, f1 j = n then 1 else 0)

end

end A129957.P8400019144831877537

namespace A129957

/-- `xor(n^3, char[2*n])` -/
def P8400019144831877537.Spec : Prop :=
  ∀ n, (P8400019144831877537.a n : ℤ) = A129957 n

end A129957

/-! ## A129957.P3101128083386791157

`or(2, 2*n*n²)/2`
-/

namespace A129957.P3101128083386791157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (2 * (n * n ^ 2)) : ℚ) / 2

end

end A129957.P3101128083386791157

namespace A129957

/-- `or(2, 2*n*n²)/2` -/
def P3101128083386791157.Spec : Prop :=
  ∀ n, P3101128083386791157.a n = (A129957 n : ℚ)

end A129957

/-! ## A129957.P16965593855292304825

`Δ[Δ[A004116(n+1)]+A161680(n)²]`
-/

namespace A129957.P16965593855292304825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004116 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + A161680 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129957.P16965593855292304825

namespace A129957

/-- `Δ[Δ[A004116(n+1)]+A161680(n)²]` -/
def P16965593855292304825.Spec : Prop :=
  ∀ n, P16965593855292304825.a n = A129957 n

end A129957

/-! ## A129957.P15928621427420721412

`abs(A176895(2*n)-n^3-2)`
-/

namespace A129957.P15928621427420721412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176895 (2 * n) - (n ^ 3 : ℤ) - 2|

end

end A129957.P15928621427420721412

namespace A129957

/-- `abs(A176895(2*n)-n^3-2)` -/
def P15928621427420721412.Spec : Prop :=
  ∀ n, P15928621427420721412.a n = A129957 n

end A129957

/-! ## A129957.P6271259106300681427

`A105125(A084263(n))`
-/

namespace A129957.P6271259106300681427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105125 (A084263 n).toNat

end

end A129957.P6271259106300681427

namespace A129957

/-- `A105125(A084263(n))` -/
def P6271259106300681427.Spec : Prop :=
  ∀ n, P6271259106300681427.a n = A129957 n

end A129957

/-!
# A129958: First differences of A129957.

The programs for A129958, the canonical program `A129958.P2794336831813404645` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129958 has offset 0).

The definition of A129958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129958.P2794336831813404645

`Δ[or(1, n^3)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129958

/-- `Δ[or(1, n^3)]` -/
def P2794336831813404645.Spec : Prop :=
  ∀ n, P2794336831813404645.a n = A129958 n

theorem P2794336831813404645.correct : P2794336831813404645.Spec := by
  intro n
  simp only [A129958]

end A129958

/-! ## A129958.P4096319498031653388

`Δ[and(n^3, -2)]`
-/

namespace A129958.P4096319498031653388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n ^ 3 : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129958.P4096319498031653388

namespace A129958

/-- `Δ[and(n^3, -2)]` -/
def P4096319498031653388.Spec : Prop :=
  ∀ n, P4096319498031653388.a n = A129958 n

end A129958

/-! ## A129958.P2484387502921281057

`Δ[gcd(2, n)+n^3]`
-/

namespace A129958.P2484387502921281057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A129958.P2484387502921281057

namespace A129958

/-- `Δ[gcd(2, n)+n^3]` -/
def P2484387502921281057.Spec : Prop :=
  ∀ n, P2484387502921281057.a n = A129958 n

end A129958

/-! ## A129958.P3300709523427934091

`Δ[n^3-n%2]`
-/

namespace A129958.P3300709523427934091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129958.P3300709523427934091

namespace A129958

/-- `Δ[n^3-n%2]` -/
def P3300709523427934091.Spec : Prop :=
  ∀ n, P3300709523427934091.a n = A129958 n

end A129958

/-! ## A129958.P4715342916642267951

`Δ[n^3]-(-1)^n`
-/

namespace A129958.P4715342916642267951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (-1) ^ n

end

end A129958.P4715342916642267951

namespace A129958

/-- `Δ[n^3]-(-1)^n` -/
def P4715342916642267951.Spec : Prop :=
  ∀ n, P4715342916642267951.a n = A129958 n

end A129958

/-! ## A129958.P16803104671877797172

`∑[a(n-2)+12]` with `a(0)=0, a(1)=8, a(2)=10`
-/

namespace A129958.P16803104671877797172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 8, 10] fun n f1 =>
  f1 (n - 2) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129958.P16803104671877797172

namespace A129958

/-- `∑[a(n-2)+12]` -/
def P16803104671877797172.Spec : Prop :=
  ∀ n, (P16803104671877797172.a n : ℤ) = A129958 n

end A129958

/-! ## A129958.P10498949116223384571

`Δ[(n+1)%2+n^3]`
-/

namespace A129958.P10498949116223384571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 + n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A129958.P10498949116223384571

namespace A129958

/-- `Δ[(n+1)%2+n^3]` -/
def P10498949116223384571.Spec : Prop :=
  ∀ n, P10498949116223384571.a n = A129958 n

end A129958

/-! ## A129958.P12989416927259626884

`∑[∑[floor(a(n-2))]]` with `a(0)=0, a(1)=8, a(2)=2, a(3)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A129958.P12989416927259626884
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 8, 2, 10] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129958.P12989416927259626884

namespace A129958

/-- `∑[∑[floor(a(n-2))]]` -/
def P12989416927259626884.Spec : Prop :=
  ∀ n, (P12989416927259626884.a n : ℤ) = A129958 n

end A129958

/-! ## A129958.P17222346631782125005

`∑[2*∑[5/a(n-1)]]` with `a(0)=0, a(1)=4, a(2)=1`
-/

namespace A129958.P17222346631782125005
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0, 4, 1] fun n f2 =>
  5 / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129958.P17222346631782125005

namespace A129958

/-- `∑[2*∑[5/a(n-1)]]` -/
def P17222346631782125005.Spec : Prop :=
  ∀ n, P17222346631782125005.a n = (A129958 n : ℚ)

end A129958

/-! ## A129958.P251591309536621471

`Δ[2*A036487(n)]`
-/

namespace A129958.P251591309536621471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129958.P251591309536621471

namespace A129958

/-- `Δ[2*A036487(n)]` -/
def P251591309536621471.Spec : Prop :=
  ∀ n, P251591309536621471.a n = A129958 n

end A129958

/-! ## A129958.P13414928718193382411

`2*(A014601(n)+A000326(n))`
-/

namespace A129958.P13414928718193382411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A014601 n + A000326 n)

end

end A129958.P13414928718193382411

namespace A129958

/-- `2*(A014601(n)+A000326(n))` -/
def P13414928718193382411.Spec : Prop :=
  ∀ n, P13414928718193382411.a n = A129958 n

end A129958

/-! ## A129958.P5888648732822157822

`2*(A005448(n+1)-A059841(n))`
-/

namespace A129958.P5888648732822157822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005448 (n + 1) - A059841 n)

end

end A129958.P5888648732822157822

namespace A129958

/-- `2*(A005448(n+1)-A059841(n))` -/
def P5888648732822157822.Spec : Prop :=
  ∀ n, P5888648732822157822.a n = A129958 n

end A129958

/-! ## A129958.P14930769818286395122

`Δ[A129957(n)]`
-/

namespace A129958.P14930769818286395122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129958.P14930769818286395122

namespace A129958

/-- `Δ[A129957(n)]` -/
def P14930769818286395122.Spec : Prop :=
  ∀ n, P14930769818286395122.a n = A129958 n

end A129958

/-! ## A129958.P1007836549134550328

`Δ[2*A274324(n)]`
-/

namespace A129958.P1007836549134550328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A274324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129958.P1007836549134550328

namespace A129958

/-- `Δ[2*A274324(n)]` -/
def P1007836549134550328.Spec : Prop :=
  ∀ n, P1007836549134550328.a n = A129958 n

end A129958

/-! ## A129958.P3660986234888307333

`Δ[A000578(n)-Δ[A004526(n)]]`
-/

namespace A129958.P3660986234888307333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129958.P3660986234888307333

namespace A129958

/-- `Δ[A000578(n)-Δ[A004526(n)]]` -/
def P3660986234888307333.Spec : Prop :=
  ∀ n, P3660986234888307333.a n = A129958 n

end A129958

/-! ## A129958.P12664243318345877467

`A047238(A080335(n)-n)`
-/

namespace A129958.P12664243318345877467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047238 (A080335 n - (n : ℤ)).toNat

end

end A129958.P12664243318345877467

namespace A129958

/-- `A047238(A080335(n)-n)` -/
def P12664243318345877467.Spec : Prop :=
  ∀ n, P12664243318345877467.a n = A129958 n

end A129958

/-!
# A129959: A129957(n) - n*(n-1)/2.

The programs for A129959, the canonical program `A129959.P17924395695968065893` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129959 has offset 0).

The definition of A129959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129959.P17924395695968065893

`(1+(-1)^n+n-n²+2*n^3)/2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129959

/-- `(1+(-1)^n+n-n²+2*n^3)/2` -/
def P17924395695968065893.Spec : Prop :=
  ∀ n, P17924395695968065893.a n = (A129959 n : ℚ)

end A129959

/-! ## A129959.P4485577976872660370

`A129957(n)-n*(n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129959.P4485577976872660370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129957 n : ℚ) - (n : ℚ) * (((n : ℤ) - 1 : ℚ) / 2)

end

end A129959.P4485577976872660370

namespace A129959

/-- `A129957(n)-n*(n-1)/2` -/
def P4485577976872660370.Spec : Prop :=
  ∀ n, P4485577976872660370.a n = (A129959 n : ℚ)

end A129959

/-! ## A129959.P15650014088386239171

`or(1, n^3)-C(n, 2)`
-/

namespace A129959.P15650014088386239171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n ^ 3) : ℤ) - (Nat.choose n 2 : ℤ)

end

end A129959.P15650014088386239171

namespace A129959

/-- `or(1, n^3)-C(n, 2)` -/
def P15650014088386239171.Spec : Prop :=
  ∀ n, P15650014088386239171.a n = A129959 n

end A129959

/-! ## A129959.P10844325788517428843

`or(1, n^3)+n-∑[n]`
-/

namespace A129959.P10844325788517428843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n ^ 3) : ℤ) + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A129959.P10844325788517428843

namespace A129959

/-- `or(1, n^3)+n-∑[n]` -/
def P10844325788517428843.Spec : Prop :=
  ∀ n, P10844325788517428843.a n = A129959 n

end A129959

/-! ## A129959.P7491293757529796040

`∑[1-n]+and(-2, n^3)`
-/

namespace A129959.P7491293757529796040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.land (-2) (n ^ 3 : ℤ)

end

end A129959.P7491293757529796040

namespace A129959

/-- `∑[1-n]+and(-2, n^3)` -/
def P7491293757529796040.Spec : Prop :=
  ∀ n, P7491293757529796040.a n = A129959 n

end A129959

/-! ## A129959.P8950671266026380047

`n^3-(C(n, 2)-char[2*n])`
-/

namespace A129959.P8950671266026380047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - ((Nat.choose n 2 : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A129959.P8950671266026380047

namespace A129959

/-- `n^3-(C(n, 2)-char[2*n])` -/
def P8950671266026380047.Spec : Prop :=
  ∀ n, P8950671266026380047.a n = A129959 n

end A129959

/-! ## A129959.P6472805244034483955

`A160378(n)+or(1, n)`
-/

namespace A129959.P6472805244034483955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 n + (Nat.lor 1 n : ℤ)

end

end A129959.P6472805244034483955

namespace A129959

/-- `A160378(n)+or(1, n)` -/
def P6472805244034483955.Spec : Prop :=
  ∀ n, P6472805244034483955.a n = A129959 n

end A129959

/-! ## A129959.P5884008776906739823

`A109613(n)+(2*n+1)*C(n, 2)`
-/

namespace A129959.P5884008776906739823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + ((2 * n + 1) * Nat.choose n 2 : ℤ)

end

end A129959.P5884008776906739823

namespace A129959

/-- `A109613(n)+(2*n+1)*C(n, 2)` -/
def P5884008776906739823.Spec : Prop :=
  ∀ n, P5884008776906739823.a n = A129959 n

end A129959

/-! ## A129959.P17252068276815926483

`A084263(n)+A045991(n)`
-/

namespace A129959.P17252068276815926483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084263 n + A045991 n

end

end A129959.P17252068276815926483

namespace A129959

/-- `A084263(n)+A045991(n)` -/
def P17252068276815926483.Spec : Prop :=
  ∀ n, P17252068276815926483.a n = A129959 n

end A129959

/-! ## A129959.P2332266977292130730

`A081441(n)+A052928(n)`
-/

namespace A129959.P2332266977292130730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081441 n + A052928 n

end

end A129959.P2332266977292130730

namespace A129959

/-- `A081441(n)+A052928(n)` -/
def P2332266977292130730.Spec : Prop :=
  ∀ n, P2332266977292130730.a n = A129959 n

end A129959

/-! ## A129959.P10982090349024995685

`A152015(n)+A084265(n)`
-/

namespace A129959.P10982090349024995685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152015 n + A084265 n

end

end A129959.P10982090349024995685

namespace A129959

/-- `A152015(n)+A084265(n)` -/
def P10982090349024995685.Spec : Prop :=
  ∀ n, P10982090349024995685.a n = A129959 n

end A129959

/-! ## A129959.P3186490349704665427

`A160378(n)+A109613(n)`
-/

namespace A129959.P3186490349704665427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 n + A109613 n

end

end A129959.P3186490349704665427

namespace A129959

/-- `A160378(n)+A109613(n)` -/
def P3186490349704665427.Spec : Prop :=
  ∀ n, P3186490349704665427.a n = A129959 n

end A129959

/-! ## A129959.P99988259964102602

`A270867(n)-A195016(n)`
-/

namespace A129959.P99988259964102602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270867 n - A195016 n

end

end A129959.P99988259964102602

namespace A129959

/-- `A270867(n)-A195016(n)` -/
def P99988259964102602.Spec : Prop :=
  ∀ n, P99988259964102602.a n = A129959 n

end A129959

/-! ## A129959.P283877885168990003

`A135859(n+1)-A176222(n+3)`
-/

namespace A129959.P283877885168990003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135859 (n + 1) - A176222 (n + 3)

end

end A129959.P283877885168990003

namespace A129959

/-- `A135859(n+1)-A176222(n+3)` -/
def P283877885168990003.Spec : Prop :=
  ∀ n, P283877885168990003.a n = A129959 n

end A129959

/-!
# A129960: a(n) = floor(sqrt(2*n!)).

The programs for A129960, the canonical program `A129960.P15869147491998411434` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129960 has offset 0).

The definition of A129960 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(2*n!))` (program `A129960.P15869147491998411434`, by `A129960.P15869147491998411434.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A129960.P15869147491998411434

`floor(sqrt(2*n!))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129960

/-- `floor(sqrt(2*n!))` -/
def P15869147491998411434.Spec : Prop :=
  ∀ n, (P15869147491998411434.a n : ℤ) = A129960 n

theorem P15869147491998411434.correct : P15869147491998411434.Spec := by
  intro n
  simp only [A129960]

end A129960

/-! ## A129960.P8284671161339162343

`floor(∏[sqrt(abs(1-n)+1)])`
-/

namespace A129960.P8284671161339162343
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (|1 - (n : ℤ)| + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A129960.P8284671161339162343

namespace A129960

/-- `floor(∏[sqrt(abs(1-n)+1)])` -/
def P8284671161339162343.Spec : Prop :=
  ∀ n, P8284671161339162343.a n = A129960 n

end A129960

/-! ## A129960.P13551652736904760896

`ceil(sqrt(2*n!+1))-1`
-/

namespace A129960.P13551652736904760896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * Nat.factorial n + 1 : ℝ)⌉ - 1

end

end A129960.P13551652736904760896

namespace A129960

/-- `ceil(sqrt(2*n!+1))-1` -/
def P13551652736904760896.Spec : Prop :=
  ∀ n, P13551652736904760896.a n = A129960 n

end A129960

/-! ## A129960.P11418622455640806904

`ceil(sqrt(A098558(n)+1))-1`
-/

namespace A129960.P11418622455640806904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A098558 n + 1 : ℝ)⌉ - 1

end

end A129960.P11418622455640806904

namespace A129960

/-- `ceil(sqrt(A098558(n)+1))-1` -/
def P11418622455640806904.Spec : Prop :=
  ∀ n, P11418622455640806904.a n = A129960 n

end A129960

/-! ## A129960.P17289638127180152478

`ceil(sqrt(2*A000142(n)+1))-1`
-/

namespace A129960.P17289638127180152478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A000142 n + 1 : ℝ)⌉ - 1

end

end A129960.P17289638127180152478

namespace A129960

/-- `ceil(sqrt(2*A000142(n)+1))-1` -/
def P17289638127180152478.Spec : Prop :=
  ∀ n, P17289638127180152478.a n = A129960 n

end A129960

/-!
# A129961: Main diagonal of triangular array T: T(j,1) = 1 for ((j-1) mod 8) < 4, else 0; T(j,k) = T(j-1,k-1)+T(j,k-1) for 2 <= k <= j.

The programs for A129961, the canonical program `A129961.P17236613230446454300` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129961 has offset 1).

The definition of A129961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129961.P12194566485132309773

`A131075(n)+a(n-1)` with `a(0)=1`
-/

namespace A129961.P12194566485132309773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A131075 n + a (n - 1)

end

end A129961.P12194566485132309773

namespace A129961

/-- `A131075(n)+a(n-1)` -/
def P12194566485132309773.Spec : Prop :=
  ∀ n, P12194566485132309773.a n = A129961 (n + 1)

end A129961

/-! ## A129961.P3132290263035877219

`∑[A131075(A028310(n))]`
-/

namespace A129961.P3132290263035877219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131075 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129961.P3132290263035877219

namespace A129961

/-- `∑[A131075(A028310(n))]` -/
def P3132290263035877219.Spec : Prop :=
  ∀ n, P3132290263035877219.a n = A129961 (n + 1)

end A129961

/-! ## A129961.P14621249023553200427

`∑[A131075(sqrt(A253909(n)))]`
-/

namespace A129961.P14621249023553200427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131075 (SequenceMachineLib.roundAway (Real.sqrt (A253909 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129961.P14621249023553200427

namespace A129961

/-- `∑[A131075(sqrt(A253909(n)))]` -/
def P14621249023553200427.Spec : Prop :=
  ∀ n, P14621249023553200427.a n = A129961 (n + 1)

end A129961

/-! ## A129961.P5163077946190899578

`∑[A131075(A065033(2*n))]`
-/

namespace A129961.P5163077946190899578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131075 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129961.P5163077946190899578

namespace A129961

/-- `∑[A131075(A065033(2*n))]` -/
def P5163077946190899578.Spec : Prop :=
  ∀ n, P5163077946190899578.a n = A129961 (n + 1)

end A129961

/-! ## A129961.P4392312409106074742

`∑[A131075(A123108(2*n))]`
-/

namespace A129961.P4392312409106074742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131075 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129961.P4392312409106074742

namespace A129961

/-- `∑[A131075(A123108(2*n))]` -/
def P4392312409106074742.Spec : Prop :=
  ∀ n, P4392312409106074742.a n = A129961 (n + 1)

end A129961

/-! ## A129961.P3996031113186687884

`∑[A131075(A000007(n)+n)]`
-/

namespace A129961.P3996031113186687884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131075 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129961.P3996031113186687884

namespace A129961

/-- `∑[A131075(A000007(n)+n)]` -/
def P3996031113186687884.Spec : Prop :=
  ∀ n, P3996031113186687884.a n = A129961 (n + 1)

end A129961

/-! ## A129961.P6225333931035786854

`A131075(n+1)+A099589(n)`
-/

namespace A129961.P6225333931035786854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131075 (n + 1) + A099589 n

end

end A129961.P6225333931035786854

namespace A129961

/-- `A131075(n+1)+A099589(n)` -/
def P6225333931035786854.Spec : Prop :=
  ∀ n, P6225333931035786854.a n = A129961 (n + 1)

end A129961

/-! ## A129961.P18171909536921352427

`A131076(n+1)+A131078(n+2)-A131075(n+1)`
-/

namespace A129961.P18171909536921352427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131076 (n + 1) + (A131078 (n + 2) - A131075 (n + 1))

end

end A129961.P18171909536921352427

namespace A129961

/-- `A131076(n+1)+A131078(n+2)-A131075(n+1)` -/
def P18171909536921352427.Spec : Prop :=
  ∀ n, P18171909536921352427.a n = A129961 (n + 1)

end A129961

/-! ## A129961.P17236613230446454300

`6*a(n-1)-14*a(n-2)+16*a(n-3)-10*a(n-4)+4*a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=15`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129961

/-- `6*a(n-1)-14*a(n-2)+16*a(n-3)-10*a(n-4)+4*a(n-5)` -/
def P17236613230446454300.Spec : Prop :=
  ∀ n, P17236613230446454300.a n = A129961 (n + 1)

theorem P17236613230446454300.correct : P17236613230446454300.Spec := by
  intro n
  simp only [A129961, Nat.add_sub_cancel]

end A129961

/-! ## A129961.P1906399869777697634

`∑[A131075(A007318(A000124(n)))]`
-/

namespace A129961.P1906399869777697634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131075 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129961.P1906399869777697634

namespace A129961

/-- `∑[A131075(A007318(A000124(n)))]` -/
def P1906399869777697634.Spec : Prop :=
  ∀ n, P1906399869777697634.a n = A129961 (n + 1)

end A129961

/-!
# A129962: Primes of the form 2^k + k.

The programs for A129962, there is no canonical definition to state claims against.
-/

/-! ## A129962.P14079990645473911558

`A006127(A052007(n+1))`
-/

namespace A129962.P14079990645473911558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 (A052007 (n + 1)).toNat

end

end A129962.P14079990645473911558

/-! ## A129962.P11329808616660852202

`∩[A069358(n+1), A006127(n)]`
-/

namespace A129962.P11329808616660852202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129962.P11329808616660852202

/-! ## A129962.P10038214547184240117

`∩[A069358(n+1), A188917(n)]`
-/

namespace A129962.P10038214547184240117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188917 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129962.P10038214547184240117

/-!
# A129963: 

The programs for A129963, there is no canonical definition to state claims against.
-/

/-! ## A129963.P8519955734198100711

`A158879(A057909(n+1))`
-/

namespace A129963.P8519955734198100711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158879 (A057909 (n + 1)).toNat

end

end A129963.P8519955734198100711

/-!
# A129965: Triangular numbers that are the difference of nonnegative cubes.

The programs for A129965, there is no canonical definition to state claims against.
-/

/-! ## A129965.P8827519512832666036

`∩[A152043(n+1), A000217(n)]`
-/

namespace A129965.P8827519512832666036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129965.P8827519512832666036

/-! ## A129965.P4756553039195346327

`∩[∪[A038593(n+1), n^3], A000217(n)]`
-/

namespace A129965.P4756553039195346327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A129965.P4756553039195346327

/-!
# A129966: Triangular numbers which are differences of squares.

The programs for A129966, the canonical program `A129966.P17854025744578487545` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129966 has offset 1).

The definition of A129966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129966.P7007643027214614637

`A000217(comp[or(6, n)-3])`
-/

namespace A129966.P7007643027214614637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 6 n : ℤ) - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A129966.P7007643027214614637

namespace A129966

/-- `A000217(comp[or(6, n)-3])` -/
def P7007643027214614637.Spec : Prop :=
  ∀ n, P7007643027214614637.a n = A129966 (n + 1)

end A129966

/-! ## A129966.P17854025744578487545

`C(A162699(n+1)-n, 2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A129966

/-- `C(A162699(n+1)-n, 2)` -/
def P17854025744578487545.Spec : Prop :=
  ∀ n, (P17854025744578487545.a n : ℤ) = A129966 (n + 1)

theorem P17854025744578487545.correct : P17854025744578487545.Spec := by
  intro n
  simp only [A129966, Nat.add_sub_cancel]

end A129966

/-! ## A129966.P4015646925554556902

`C(∑[gcd(n+3, A109613(n))], 2)`
-/

namespace A129966.P4015646925554556902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (A109613 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A129966.P4015646925554556902

namespace A129966

/-- `C(∑[gcd(n+3, A109613(n))], 2)` -/
def P4015646925554556902.Spec : Prop :=
  ∀ n, (P4015646925554556902.a n : ℤ) = A129966 (n + 1)

end A129966

/-! ## A129966.P1389118978002283972

`C(comp[A166466(char[2*n]+n)+n]+1, 2)`
-/

namespace A129966.P1389118978002283972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166466 ((if ∃ j, f2 j = n then 1 else 0) + n) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) 2

end

end A129966.P1389118978002283972

namespace A129966

/-- `C(comp[A166466(char[2*n]+n)+n]+1, 2)` -/
def P1389118978002283972.Spec : Prop :=
  ∀ n, (P1389118978002283972.a n : ℤ) = A129966 (n + 1)

end A129966

/-! ## A129966.P6081788761447447681

`A000217(A047581(n+1))`
-/

namespace A129966.P6081788761447447681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A047581 (n + 1)).toNat

end

end A129966.P6081788761447447681

namespace A129966

/-- `A000217(A047581(n+1))` -/
def P6081788761447447681.Spec : Prop :=
  ∀ n, P6081788761447447681.a n = A129966 (n + 1)

end A129966

/-! ## A129966.P1722798560949321834

`A000217(comp[A047457(n+1)])`
-/

namespace A129966.P1722798560949321834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047457 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A129966.P1722798560949321834

namespace A129966

/-- `A000217(comp[A047457(n+1)])` -/
def P1722798560949321834.Spec : Prop :=
  ∀ n, P1722798560949321834.a n = A129966 (n + 1)

end A129966

/-! ## A129966.P5240744799765995446

`A000217(Δ[2*A008724(n)]+n)`
-/

namespace A129966.P5240744799765995446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A129966.P5240744799765995446

namespace A129966

/-- `A000217(Δ[2*A008724(n)]+n)` -/
def P5240744799765995446.Spec : Prop :=
  ∀ n, P5240744799765995446.a n = A129966 (n + 1)

end A129966

/-! ## A129966.P13270778322603652316

`A000217(A162699(n+1)-(n+1))`
-/

namespace A129966.P13270778322603652316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A162699 (n + 1) - (n + 1 : ℤ)).toNat

end

end A129966.P13270778322603652316

namespace A129966

/-- `A000217(A162699(n+1)-(n+1))` -/
def P13270778322603652316.Spec : Prop :=
  ∀ n, P13270778322603652316.a n = A129966 (n + 1)

end A129966

/-! ## A129966.P7292797631477776338

`A000217(or(and(1, n), A047513(n+1)))`
-/

namespace A129966.P7292797631477776338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.lor (Nat.land 1 n : ℤ) (A047513 (n + 1))).toNat

end

end A129966.P7292797631477776338

namespace A129966

/-- `A000217(or(and(1, n), A047513(n+1)))` -/
def P7292797631477776338.Spec : Prop :=
  ∀ n, P7292797631477776338.a n = A129966 (n + 1)

end A129966

/-! ## A129966.P14019369308660523999

`C(A047505(n+2), 2)`
-/

namespace A129966.P14019369308660523999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A047505 (n + 2)).toNat 2

end

end A129966.P14019369308660523999

namespace A129966

/-- `C(A047505(n+2), 2)` -/
def P14019369308660523999.Spec : Prop :=
  ∀ n, (P14019369308660523999.a n : ℤ) = A129966 (n + 1)

end A129966

/-! ## A129966.P10409352383133231701

`A000217(A047505(n+2)-1)`
-/

namespace A129966.P10409352383133231701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A047505 (n + 2) - 1).toNat

end

end A129966.P10409352383133231701

namespace A129966

/-- `A000217(A047505(n+2)-1)` -/
def P10409352383133231701.Spec : Prop :=
  ∀ n, P10409352383133231701.a n = A129966 (n + 1)

end A129966

/-! ## A129966.P18416136294959368749

`A000217(record[and(2, A110654(n))+n])`
-/

namespace A129966.P18416136294959368749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A110654 n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A129966.P18416136294959368749

namespace A129966

/-- `A000217(record[and(2, A110654(n))+n])` -/
def P18416136294959368749.Spec : Prop :=
  ∀ n, P18416136294959368749.a n = A129966 (n + 1)

end A129966

/-! ## A129966.P6833523287184865049

`A161680(A047505(n+2))`
-/

namespace A129966.P6833523287184865049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A047505 (n + 2)).toNat

end

end A129966.P6833523287184865049

namespace A129966

/-- `A161680(A047505(n+2))` -/
def P6833523287184865049.Spec : Prop :=
  ∀ n, P6833523287184865049.a n = A129966 (n + 1)

end A129966

/-! ## A129966.P5704843726798593046

`C(lt[A130507(A130482(n)), 1/2]+1, 2)`
-/

namespace A129966.P5704843726798593046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130507 (A130482 n).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1) 2

end

end A129966.P5704843726798593046

namespace A129966

/-- `C(lt[A130507(A130482(n)), 1/2]+1, 2)` -/
def P5704843726798593046.Spec : Prop :=
  ∀ n, (P5704843726798593046.a n : ℤ) = A129966 (n + 1)

end A129966

/-! ## A129966.P5082368652128146899

`filter[A000217(n), A152822(#)]`
-/

namespace A129966.P5082368652128146899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A129966.P5082368652128146899

namespace A129966

/-- `filter[A000217(n), A152822(#)]` -/
def P5082368652128146899.Spec : Prop :=
  ∀ n, P5082368652128146899.a n = A129966 (n + 1)

end A129966

/-! ## A129966.P5927472285304968612

`filter[A161680(n+1), A152822(#)]`
-/

namespace A129966.P5927472285304968612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A129966.P5927472285304968612

namespace A129966

/-- `filter[A161680(n+1), A152822(#)]` -/
def P5927472285304968612.Spec : Prop :=
  ∀ n, P5927472285304968612.a n = A129966 (n + 1)

end A129966

/-! ## A129966.P10204756709935364462

`filter[A075303(2*n), A152822(#)]`
-/

namespace A129966.P10204756709935364462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075303 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A129966.P10204756709935364462

namespace A129966

/-- `filter[A075303(2*n), A152822(#)]` -/
def P10204756709935364462.Spec : Prop :=
  ∀ n, P10204756709935364462.a n = A129966 (n + 1)

end A129966

/-! ## A129966.P15493232893259939320

`filter[A124093(2*n), A152822(#)]`
-/

namespace A129966.P15493232893259939320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A129966.P15493232893259939320

namespace A129966

/-- `filter[A124093(2*n), A152822(#)]` -/
def P15493232893259939320.Spec : Prop :=
  ∀ n, P15493232893259939320.a n = A129966 (n + 1)

end A129966

/-! ## A129966.P11348324535692033400

`filter[A131259(2*n), A152822(#)]`
-/

namespace A129966.P11348324535692033400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131259 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A129966.P11348324535692033400

namespace A129966

/-- `filter[A131259(2*n), A152822(#)]` -/
def P11348324535692033400.Spec : Prop :=
  ∀ n, P11348324535692033400.a n = A129966 (n + 1)

end A129966

/-! ## A129966.P7792604361227524709

`filter[A160791(2*n), A152822(#)]`
-/

namespace A129966.P7792604361227524709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160791 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A129966.P7792604361227524709

namespace A129966

/-- `filter[A160791(2*n), A152822(#)]` -/
def P7792604361227524709.Spec : Prop :=
  ∀ n, P7792604361227524709.a n = A129966 (n + 1)

end A129966

/-!
# A129967: a(n) = A061909(n)^2.

The programs for A129967, there is no canonical definition to state claims against.
-/

/-! ## A129967.P10090495112299929446

`A061909(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129967.P10090495112299929446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (n + 1) ^ 2

end

end A129967.P10090495112299929446

/-! ## A129967.P15178234589954040311

`A061909(n+1)^A092505(2*n+1)`
-/

namespace A129967.P15178234589954040311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061909 (n + 1) : ℚ) ^ (A092505 (2 * n + 1) : ℤ)

end

end A129967.P15178234589954040311

/-! ## A129967.P12638752372717415280

`A061909(1-A001489(n))*A061909(n+1)`
-/

namespace A129967.P12638752372717415280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (1 - A001489 n).toNat * A061909 (n + 1)

end

end A129967.P12638752372717415280

/-! ## A129967.P15351042340728175602

`(A061909(n+1)+A000007(n))*A061909(n+1)`
-/

namespace A129967.P15351042340728175602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061909 (n + 1) + A000007 n) * A061909 (n + 1)

end

end A129967.P15351042340728175602

/-! ## A129967.P16499203078021063536

`A061909(n+1)^A000005(record[A000010(n+1)+1])`
-/

namespace A129967.P16499203078021063536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061909 (n + 1) : ℚ) ^ (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A129967.P16499203078021063536

/-! ## A129967.P5138943580435675198

`A061909(n+1)^A000005(eq[2, A000005(n+1)]+1)`
-/

namespace A129967.P5138943580435675198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061909 (n + 1) : ℚ) ^ (A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℤ)

end

end A129967.P5138943580435675198

/-! ## A129967.P8634426267294800302

`A061909(n+1)^A000005(lt[A000005(n+2), 3]+2)`
-/

namespace A129967.P8634426267294800302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061909 (n + 1) : ℚ) ^ (A000005 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2) : ℤ)

end

end A129967.P8634426267294800302

/-! ## A129967.P16953561077206248250

`A061909(n+1)*A092505(A092505(n+1))*A061909(n+1)`
-/

namespace A129967.P16953561077206248250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (n + 1) * A092505 (A092505 (n + 1)).toNat * A061909 (n + 1)

end

end A129967.P16953561077206248250

/-! ## A129967.P1778140430327443924

`A061909(n+1)^A000005(record[A014963(n+2)])`
-/

namespace A129967.P1778140430327443924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061909 (n + 1) : ℚ) ^ (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A129967.P1778140430327443924

/-! ## A129967.P2388145970472378059

`A061909(n+1)*A061909((n+1)%A153747(n+1))`
-/

namespace A129967.P2388145970472378059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (n + 1) * A061909 (Int.tmod (n + 1 : ℤ) (A153747 (n + 1))).toNat

end

end A129967.P2388145970472378059

/-! ## A129967.P2538463478458174271

`A061909(n+1)%A153750(n+1)*A061909(n+1)`
-/

namespace A129967.P2538463478458174271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061909 (n + 1)) (A153750 (n + 1)) * A061909 (n + 1)

end

end A129967.P2538463478458174271

/-! ## A129967.P17650800715847967245

`A061909(n+1)^A000005(A079652(n+1))`
-/

namespace A129967.P17650800715847967245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061909 (n + 1) : ℚ) ^ (A000005 (A079652 (n + 1)).toNat : ℤ)

end

end A129967.P17650800715847967245

/-! ## A129967.P10990699406354694316

`A061909(n+1)^(A014963(∑[n+1])+1)`
-/

namespace A129967.P10990699406354694316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061909 (n + 1) : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℤ)

end

end A129967.P10990699406354694316

/-! ## A129967.P11031094757660954366

`eq[0, A067552(n)]²`
-/

namespace A129967.P11031094757660954366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A129967.P11031094757660954366

/-! ## A129967.P12814827747621477979

`eq[0, A069912(n)]²`
-/

namespace A129967.P12814827747621477979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069912 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A129967.P12814827747621477979

/-! ## A129967.P8095110110085641182

`eq[A004159(n), A118881(n)]²`
-/

namespace A129967.P8095110110085641182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A129967.P8095110110085641182

/-! ## A129967.P10032760395142357415

`eq[A007953(n)², A004159(n)]²`
-/

namespace A129967.P10032760395142357415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A129967.P10032760395142357415

/-! ## A129967.P6474028036238939815

`eq[n², A059729(n)]²`
-/

namespace A129967.P6474028036238939815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A129967.P6474028036238939815

/-! ## A129967.P2894558495660499551

`lt[A069912(n), char[A007094(n)]]²`
-/

namespace A129967.P2894558495660499551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069912 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A129967.P2894558495660499551

/-! ## A129967.P5359397927582285071

`∩[A053057(n+1), A169889(n+1)]`
-/

namespace A129967.P5359397927582285071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129967.P5359397927582285071

/-!
# A129968: a(n) = sum of digits of A061909(n).

The programs for A129968, there is no canonical definition to state claims against.
-/

/-! ## A129968.P11209299658548167923

`sqrt(A129971(n+1))`
-/

namespace A129968.P11209299658548167923
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A129971 (n + 1) : ℝ)

end

end A129968.P11209299658548167923

/-! ## A129968.P1135519754838440883

`dr(A129969(n+1))`
-/

namespace A129968.P1135519754838440883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A129969 (n + 1))

end

end A129968.P1135519754838440883

/-! ## A129968.P5188415320857816811

`dr(A061909(n+2))`
-/

namespace A129968.P5188415320857816811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A061909 (n + 2))

end

end A129968.P5188415320857816811

/-! ## A129968.P12134077726533097083

`dr(sqrt(A129970(n+1)))`
-/

namespace A129968.P12134077726533097083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (Real.sqrt (A129970 (n + 1) : ℝ)))

end

end A129968.P12134077726533097083

/-! ## A129968.P688655932734537547

`dr(sqrt(A129967(n+2)))`
-/

namespace A129968.P688655932734537547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (Real.sqrt (A129967 (n + 2) : ℝ)))

end

end A129968.P688655932734537547

/-! ## A129968.P4321508286258891286

`dr(root(A129970(n+1), A001316(A001316(n))))`
-/

namespace A129968.P4321508286258891286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((A129970 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))))

end

end A129968.P4321508286258891286

/-! ## A129968.P9347838969574412609

`dr(lt[A067552(n), dr(n)])`
-/

namespace A129968.P9347838969574412609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A129968.P9347838969574412609

/-! ## A129968.P16685418140027845230

`A007953(sqrt(A129970(n+1)))`
-/

namespace A129968.P16685418140027845230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway (Real.sqrt (A129970 (n + 1) : ℝ))).toNat

end

end A129968.P16685418140027845230

/-! ## A129968.P14977027227628161493

`A007953(sqrt(A129967(n+2)))`
-/

namespace A129968.P14977027227628161493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway (Real.sqrt (A129967 (n + 2) : ℝ))).toNat

end

end A129968.P14977027227628161493

/-! ## A129968.P339922526353291992

`A007953(lt[n*A067552(n), n])`
-/

namespace A129968.P339922526353291992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A067552 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A129968.P339922526353291992

/-! ## A129968.P14041360249735708905

`A007953(lt[A067552(n)²², n])`
-/

namespace A129968.P14041360249735708905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A067552 n ^ 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A129968.P14041360249735708905

/-! ## A129968.P3962221589500449507

`A007953(lt[A067552(n), A007953(n)])`
-/

namespace A129968.P3962221589500449507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A129968.P3962221589500449507

/-!
# A129969: a(n) = A061909(n) with digits reversed.

The programs for A129969, there is no canonical definition to state claims against.
-/

/-! ## A129969.P11638443562510945403

`sqrt(A129970(n+1))`
-/

namespace A129969.P11638443562510945403
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A129970 (n + 1) : ℝ)

end

end A129969.P11638443562510945403

/-! ## A129969.P8022550586642316814

`root(A129970(n+1), A020639(2*(n+1)))`
-/

namespace A129969.P8022550586642316814
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A129970 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A129969.P8022550586642316814

/-! ## A129969.P12926342133568223469

`root(A129970(n+1), A001316(A001316(n)))`
-/

namespace A129969.P12926342133568223469
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A129970 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A129969.P12926342133568223469

/-! ## A129969.P11844152965450834056

`A004086(A061909(n+2))`
-/

namespace A129969.P11844152965450834056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A061909 (n + 2)).toNat

end

end A129969.P11844152965450834056

/-! ## A129969.P13502317508922981257

`A004086(sqrt(A129967(n+2)))`
-/

namespace A129969.P13502317508922981257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway (Real.sqrt (A129967 (n + 2) : ℝ))).toNat

end

end A129969.P13502317508922981257

/-! ## A129969.P14263760268348197753

`A028310(root(A129970(n+1), 2))`
-/

namespace A129969.P14263760268348197753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A129970 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A129969.P14263760268348197753

/-! ## A129969.P11294609640190715011

`A004086(eq[A000007(n), A067552(n)])`
-/

namespace A129969.P11294609640190715011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A129969.P11294609640190715011

/-! ## A129969.P15347946498485099388

`A004086(eq[A000007(n), A069912(n)])`
-/

namespace A129969.P15347946498485099388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A129969.P15347946498485099388

/-!
# A129970: a(n) = A129967(n) with digits reversed.

The programs for A129970, there is no canonical definition to state claims against.
-/

/-! ## A129970.P14369041308876208539

`A129969(n+1)²`
-/

namespace A129970.P14369041308876208539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129969 (n + 1) ^ 2

end

end A129970.P14369041308876208539

/-! ## A129970.P13256386461128412463

`A129969(2*(n+1)-(n+1))^2`
-/

namespace A129970.P13256386461128412463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129969 (2 * (n + 1) - (n + 1)) ^ 2

end

end A129970.P13256386461128412463

/-! ## A129970.P16973457404795432017

`A129969(A000027(n+1))*A129969(n+1)`
-/

namespace A129970.P16973457404795432017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129969 (A000027 (n + 1)).toNat * A129969 (n + 1)

end

end A129970.P16973457404795432017

/-! ## A129970.P12494418241407312668

`A004086(A061909(n+2))²`
-/

namespace A129970.P12494418241407312668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A061909 (n + 2)).toNat ^ 2

end

end A129970.P12494418241407312668

/-! ## A129970.P8599566653025661293

`A004086(sqrt(A129967(n+2)))²`
-/

namespace A129970.P8599566653025661293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway (Real.sqrt (A129967 (n + 2) : ℝ))).toNat ^ 2

end

end A129970.P8599566653025661293

/-! ## A129970.P7818331856826244413

`A004086(A061909(n+2))^A014963(A001316(n))`
-/

namespace A129970.P7818331856826244413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004086 (A061909 (n + 2)).toNat : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A129970.P7818331856826244413

/-! ## A129970.P1343741260198529115

`A004086(A061909(n+2))^A286378(A053644(n))`
-/

namespace A129970.P1343741260198529115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004086 (A061909 (n + 2)).toNat : ℚ) ^ (A286378 (A053644 n).toNat : ℤ)

end

end A129970.P1343741260198529115

/-! ## A129970.P6982608524657791728

`A002942(A061909(n+2))`
-/

namespace A129970.P6982608524657791728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 (A061909 (n + 2)).toNat

end

end A129970.P6982608524657791728

/-! ## A129970.P17009719199642887408

`A000290(A129969(n+1)%A043042(n+1))`
-/

namespace A129970.P17009719199642887408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A129969 (n + 1)) (A043042 (n + 1))).toNat

end

end A129970.P17009719199642887408

/-!
# A129971: a(n) = A129968(n)^2.

The programs for A129971, there is no canonical definition to state claims against.
-/

/-! ## A129971.P18228263920441180730

`A129968(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A129971.P18228263920441180730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129968 (n + 1) ^ 2

end

end A129971.P18228263920441180730

/-! ## A129971.P4310045756698255940

`dr(A129969(n+1))²`
-/

namespace A129971.P4310045756698255940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A129969 (n + 1)) ^ 2

end

end A129971.P4310045756698255940

/-! ## A129971.P6514818866627127324

`dr(A061909(n+2))²`
-/

namespace A129971.P6514818866627127324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A061909 (n + 2)) ^ 2

end

end A129971.P6514818866627127324

/-! ## A129971.P1573054066735143227

`∑{digits}[A129970(n+1), #]`
-/

namespace A129971.P1573054066735143227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129970 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A129971.P1573054066735143227

/-! ## A129971.P16261011735460321639

`∑{digits}[A129967(n+2), #]`
-/

namespace A129971.P16261011735460321639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129967 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A129971.P16261011735460321639

/-! ## A129971.P7276447049566511657

`A129968(n+1)^(2%A004277(n+1))`
-/

namespace A129971.P7276447049566511657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129968 (n + 1) : ℚ) ^ (Int.tmod 2 (A004277 (n + 1)) : ℤ)

end

end A129971.P7276447049566511657

/-! ## A129971.P11788616689023743141

`A129968(n+1)^(4*n/A004277(n))`
-/

namespace A129971.P11788616689023743141
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A129968 (n + 1) : ℝ) ^ (4 * ((n : ℚ) / (A004277 n : ℚ)) : ℝ)

end

end A129971.P11788616689023743141

/-! ## A129971.P4463591746059938445

`dr(root(A129970(n+1), A001316(A001316(n))))²`
-/

namespace A129971.P4463591746059938445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((A129970 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ)))) ^ 2

end

end A129971.P4463591746059938445

/-! ## A129971.P15976957630844680062

`A129968(n+1)^(A061006(2*(n+2))+2)`
-/

namespace A129971.P15976957630844680062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129968 (n + 1) : ℚ) ^ (A061006 (2 * (n + 2)) + 2 : ℤ)

end

end A129971.P15976957630844680062

/-! ## A129971.P17698710679239664423

`A129968(n+1)^A129977(A129982(2*n))`
-/

namespace A129971.P17698710679239664423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129968 (n + 1) : ℚ) ^ (A129977 (A129982 (2 * n)).toNat : ℤ)

end

end A129971.P17698710679239664423

/-! ## A129971.P6783558981700073730

`dr(lt[A067552(n), dr(n)])²`
-/

namespace A129971.P6783558981700073730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) ^ 2

end

end A129971.P6783558981700073730

/-! ## A129971.P15153388791721123708

`A004159(A129969(n+1))`
-/

namespace A129971.P15153388791721123708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (A129969 (n + 1)).toNat

end

end A129971.P15153388791721123708

/-! ## A129971.P3655316214260960

`A004159(A061909(n+2))`
-/

namespace A129971.P3655316214260960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (A061909 (n + 2)).toNat

end

end A129971.P3655316214260960

/-! ## A129971.P4915465775927821036

`A004159(lt[A067552(n), dr(n)])`
-/

namespace A129971.P4915465775927821036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A129971.P4915465775927821036

/-! ## A129971.P3091666100236022910

`A007953(sqrt(A129970(n+1)))²`
-/

namespace A129971.P3091666100236022910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway (Real.sqrt (A129970 (n + 1) : ℝ))).toNat ^ 2

end

end A129971.P3091666100236022910

/-! ## A129971.P8922427537014027225

`A007953(sqrt(A129967(n+2)))²`
-/

namespace A129971.P8922427537014027225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway (Real.sqrt (A129967 (n + 2) : ℝ))).toNat ^ 2

end

end A129971.P8922427537014027225

/-! ## A129971.P10753044710035784437

`A004159(lt[n*A067552(n), n])`
-/

namespace A129971.P10753044710035784437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A067552 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A129971.P10753044710035784437

/-! ## A129971.P6619590165857007362

`A118881(lt[n*A067552(n), n])`
-/

namespace A129971.P6619590165857007362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A067552 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A129971.P6619590165857007362

/-! ## A129971.P16837897161897729400

`A004159(lt[A067552(n)²², n])`
-/

namespace A129971.P16837897161897729400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A067552 n ^ 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A129971.P16837897161897729400

/-! ## A129971.P2794179561051106470

`A007953(lt[A067552(n), A007953(n)])²`
-/

namespace A129971.P2794179561051106470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) ^ 2

end

end A129971.P2794179561051106470

/-!
# A129972: a(n) = 2*floor(log_2(n)) + 1.

The programs for A129972, the canonical program `A129972.P8439996461440869393` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129972 has offset 1).

The definition of A129972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129972.P8439996461440869393

`or(1, floor(log2((n+1)²)))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129972

/-- `or(1, floor(log2((n+1)²)))` -/
def P8439996461440869393.Spec : Prop :=
  ∀ n, (P8439996461440869393.a n : ℤ) = A129972 (n + 1)

theorem P8439996461440869393.correct : P8439996461440869393.Spec := by
  intro n
  simp only [A129972, Nat.add_sub_cancel]

end A129972

/-! ## A129972.P15508717529206746015

`2*floor(log2(n+1))+1`
-/

namespace A129972.P15508717529206746015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.log 2 (n + 1) + 1

end

end A129972.P15508717529206746015

namespace A129972

/-- `2*floor(log2(n+1))+1` -/
def P15508717529206746015.Spec : Prop :=
  ∀ n, (P15508717529206746015.a n : ℤ) = A129972 (n + 1)

end A129972

/-! ## A129972.P17727830383513594394

`∑[∏{p}[n+1, val(#², 2)]]`
-/

namespace A129972.P17727830383513594394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation (p ^ 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129972.P17727830383513594394

namespace A129972

/-- `∑[∏{p}[n+1, val(#², 2)]]` -/
def P17727830383513594394.Spec : Prop :=
  ∀ n, (P17727830383513594394.a n : ℤ) = A129972 (n + 1)

end A129972

/-! ## A129972.P9159506110678698004

`∑[∏{p}[n+1, 2-2%#]]`
-/

namespace A129972.P9159506110678698004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (2 - ((2 % p : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129972.P9159506110678698004

namespace A129972

/-- `∑[∏{p}[n+1, 2-2%#]]` -/
def P9159506110678698004.Spec : Prop :=
  ∀ n, P9159506110678698004.a n = A129972 (n + 1)

end A129972

/-! ## A129972.P12401491980983552844

`∑[∏{p}[n+1, 2*C(2, #)]]`
-/

namespace A129972.P12401491980983552844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), 2 * Nat.choose 2 p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129972.P12401491980983552844

namespace A129972

/-- `∑[∏{p}[n+1, 2*C(2, #)]]` -/
def P12401491980983552844.Spec : Prop :=
  ∀ n, (P12401491980983552844.a n : ℤ) = A129972 (n + 1)

end A129972

/-! ## A129972.P7090795277997087656

`∑[C(2, ∑{p}[n+1, C(#, 2)])]`
-/

namespace A129972.P7090795277997087656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129972.P7090795277997087656

namespace A129972

/-- `∑[C(2, ∑{p}[n+1, C(#, 2)])]` -/
def P7090795277997087656.Spec : Prop :=
  ∀ n, (P7090795277997087656.a n : ℤ) = A129972 (n + 1)

end A129972

/-! ## A129972.P10852647455729525317

`∑[C(2, C(∏{p}[n+1, #], 2))]`
-/

namespace A129972.P10852647455729525317
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), p) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129972.P10852647455729525317

namespace A129972

/-- `∑[C(2, C(∏{p}[n+1, #], 2))]` -/
def P10852647455729525317.Spec : Prop :=
  ∀ n, (P10852647455729525317.a n : ℤ) = A129972 (n + 1)

end A129972

/-! ## A129972.P11336897712259733691

`∑[C(2, (and(n, 2*n)-n)²)]`
-/

namespace A129972.P11336897712259733691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (((Nat.land n (2 * n) : ℤ) - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129972.P11336897712259733691

namespace A129972

/-- `∑[C(2, (and(n, 2*n)-n)²)]` -/
def P11336897712259733691.Spec : Prop :=
  ∀ n, (P11336897712259733691.a n : ℤ) = A129972 (n + 1)

end A129972

/-! ## A129972.P1266206977987881152

`∑[C(2, n+2-and(n+1, 2*n))]`
-/

namespace A129972.P1266206977987881152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((n + 2 : ℤ) - (Nat.land (n + 1) (2 * n) : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129972.P1266206977987881152

namespace A129972

/-- `∑[C(2, n+2-and(n+1, 2*n))]` -/
def P1266206977987881152.Spec : Prop :=
  ∀ n, (P1266206977987881152.a n : ℤ) = A129972 (n + 1)

end A129972

/-! ## A129972.P8259585025989361815

`∑[floor(2/(n+2-and(n+1, 2*n)))]`
-/

namespace A129972.P8259585025989361815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / ((n + 2 : ℤ) - (Nat.land (n + 1) (2 * n) : ℤ) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129972.P8259585025989361815

namespace A129972

/-- `∑[floor(2/(n+2-and(n+1, 2*n)))]` -/
def P8259585025989361815.Spec : Prop :=
  ∀ n, P8259585025989361815.a n = A129972 (n + 1)

end A129972

/-! ## A129972.P18199983617147535533

`∑[A069517(n+1)]`
-/

namespace A129972.P18199983617147535533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129972.P18199983617147535533

namespace A129972

/-- `∑[A069517(n+1)]` -/
def P18199983617147535533.Spec : Prop :=
  ∀ n, P18199983617147535533.a n = A129972 (n + 1)

end A129972

/-! ## A129972.P3418358947929575100

`floor(log2(A001196(n+1)))`
-/

namespace A129972.P3418358947929575100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A001196 (n + 1)).toNat

end

end A129972.P3418358947929575100

namespace A129972

/-- `floor(log2(A001196(n+1)))` -/
def P3418358947929575100.Spec : Prop :=
  ∀ n, (P3418358947929575100.a n : ℤ) = A129972 (n + 1)

end A129972

/-! ## A129972.P723784523606462127

`floor(log2(A020330(n+1)))`
-/

namespace A129972.P723784523606462127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A020330 (n + 1)).toNat

end

end A129972.P723784523606462127

namespace A129972

/-- `floor(log2(A020330(n+1)))` -/
def P723784523606462127.Spec : Prop :=
  ∀ n, (P723784523606462127.a n : ℤ) = A129972 (n + 1)

end A129972

/-! ## A129972.P35830225540219509

`floor(log2(A035928(n+1)))`
-/

namespace A129972.P35830225540219509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A035928 (n + 1)).toNat

end

end A129972.P35830225540219509

namespace A129972

/-- `floor(log2(A035928(n+1)))` -/
def P35830225540219509.Spec : Prop :=
  ∀ n, (P35830225540219509.a n : ℤ) = A129972 (n + 1)

end A129972

/-! ## A129972.P17739505585552156015

`floor(log2(A062880(n+1)))`
-/

namespace A129972.P17739505585552156015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A062880 (n + 1)).toNat

end

end A129972.P17739505585552156015

namespace A129972

/-- `floor(log2(A062880(n+1)))` -/
def P17739505585552156015.Spec : Prop :=
  ∀ n, (P17739505585552156015.a n : ℤ) = A129972 (n + 1)

end A129972

/-! ## A129972.P15527923417770893992

`floor(log2(A071162(n+1)))`
-/

namespace A129972.P15527923417770893992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A071162 (n + 1)).toNat

end

end A129972.P15527923417770893992

namespace A129972

/-- `floor(log2(A071162(n+1)))` -/
def P15527923417770893992.Spec : Prop :=
  ∀ n, (P15527923417770893992.a n : ℤ) = A129972 (n + 1)

end A129972

/-! ## A129972.P13558856263589736288

`floor(log2(A179888(n+1)))`
-/

namespace A129972.P13558856263589736288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A179888 (n + 1)).toNat

end

end A129972.P13558856263589736288

namespace A129972

/-- `floor(log2(A179888(n+1)))` -/
def P13558856263589736288.Spec : Prop :=
  ∀ n, (P13558856263589736288.a n : ℤ) = A129972 (n + 1)

end A129972

/-! ## A129972.P16570081048685566094

`floor(log2(A209641(n+1)))`
-/

namespace A129972.P16570081048685566094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A209641 (n + 1)).toNat

end

end A129972.P16570081048685566094

namespace A129972

/-- `floor(log2(A209641(n+1)))` -/
def P16570081048685566094.Spec : Prop :=
  ∀ n, (P16570081048685566094.a n : ℤ) = A129972 (n + 1)

end A129972

/-! ## A129972.P2500930718258802622

`floor(log2(A209642(n+1)))`
-/

namespace A129972.P2500930718258802622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A209642 (n + 1)).toNat

end

end A129972.P2500930718258802622

namespace A129972

/-- `floor(log2(A209642(n+1)))` -/
def P2500930718258802622.Spec : Prop :=
  ∀ n, (P2500930718258802622.a n : ℤ) = A129972 (n + 1)

end A129972

/-! ## A129972.P12949097345167353765

`floor(log2(A253608(n+1)))`
-/

namespace A129972.P12949097345167353765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A253608 (n + 1)).toNat

end

end A129972.P12949097345167353765

namespace A129972

/-- `floor(log2(A253608(n+1)))` -/
def P12949097345167353765.Spec : Prop :=
  ∀ n, (P12949097345167353765.a n : ℤ) = A129972 (n + 1)

end A129972

/-!
# A129973: a(n) = A000045(n) - A000931(n).

The programs for A129973, the canonical program `A129973.P8635410807224556544` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129973 has offset 1).

The definition of A129973 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129973.P8635410807224556544

`a(n-1)+2*a(n-2)-2*a(n-4)-a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129973

/-- `a(n-1)+2*a(n-2)-2*a(n-4)-a(n-5)` -/
def P8635410807224556544.Spec : Prop :=
  ∀ n, P8635410807224556544.a n = A129973 (n + 1)

theorem P8635410807224556544.correct : P8635410807224556544.Spec := by
  intro n
  simp only [A129973, Nat.add_sub_cancel]

end A129973

/-! ## A129973.P12894025661324094180

`a(n-2)+A000045(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A129973.P12894025661324094180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  a (n - 2) + (A000045 (n - 2) + a (n - 3))

end

end A129973.P12894025661324094180

namespace A129973

/-- `a(n-2)+A000045(n-2)+a(n-3)` -/
def P12894025661324094180.Spec : Prop :=
  ∀ n, P12894025661324094180.a n = A129973 (n + 1)

end A129973

/-! ## A129973.P4072889644253766950

`A001611(n)-A052954(n+1)`
-/

namespace A129973.P4072889644253766950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - A052954 (n + 1)

end

end A129973.P4072889644253766950

namespace A129973

/-- `A001611(n)-A052954(n+1)` -/
def P4072889644253766950.Spec : Prop :=
  ∀ n, P4072889644253766950.a n = A129973 (n + 1)

end A129973

/-! ## A129973.P18436209936856411216

`A000045(n)-A182097(n+1)`
-/

namespace A129973.P18436209936856411216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A182097 (n + 1)

end

end A129973.P18436209936856411216

namespace A129973

/-- `A000045(n)-A182097(n+1)` -/
def P18436209936856411216.Spec : Prop :=
  ∀ n, P18436209936856411216.a n = A129973 (n + 1)

end A129973

/-! ## A129973.P8625008813090856836

`A000045(n)-A000931(n+4)`
-/

namespace A129973.P8625008813090856836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A000931 (n + 4)

end

end A129973.P8625008813090856836

namespace A129973

/-- `A000045(n)-A000931(n+4)` -/
def P8625008813090856836.Spec : Prop :=
  ∀ n, P8625008813090856836.a n = A129973 (n + 1)

end A129973

/-! ## A129973.P2723034547445379821

`A000045(n)-A078027(n+6)`
-/

namespace A129973.P2723034547445379821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A078027 (n + 6)

end

end A129973.P2723034547445379821

namespace A129973

/-- `A000045(n)-A078027(n+6)` -/
def P2723034547445379821.Spec : Prop :=
  ∀ n, P2723034547445379821.a n = A129973 (n + 1)

end A129973

/-! ## A129973.P12987702901948704226

`A000045(n)-Δ[A023434(n+1)]`
-/

namespace A129973.P12987702901948704226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (f1 (n + 1) - f1 n)

end

end A129973.P12987702901948704226

namespace A129973

/-- `A000045(n)-Δ[A023434(n+1)]` -/
def P12987702901948704226.Spec : Prop :=
  ∀ n, P12987702901948704226.a n = A129973 (n + 1)

end A129973

/-! ## A129973.P14944828290005738399

`A000045(n)-Δ[A134816(n+4)]`
-/

namespace A129973.P14944828290005738399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (f1 (n + 1) - f1 n)

end

end A129973.P14944828290005738399

namespace A129973

/-- `A000045(n)-Δ[A134816(n+4)]` -/
def P14944828290005738399.Spec : Prop :=
  ∀ n, P14944828290005738399.a n = A129973 (n + 1)

end A129973

/-! ## A129973.P3580198996883928343

`A000045(n)-A127682(2*n+1)`
-/

namespace A129973.P3580198996883928343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A127682 (2 * n + 1)

end

end A129973.P3580198996883928343

namespace A129973

/-- `A000045(n)-A127682(2*n+1)` -/
def P3580198996883928343.Spec : Prop :=
  ∀ n, P3580198996883928343.a n = A129973 (n + 1)

end A129973

/-! ## A129973.P2278074205102610207

`A302126(2*n)-A127682(2*n+1)`
-/

namespace A129973.P2278074205102610207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * n) - A127682 (2 * n + 1)

end

end A129973.P2278074205102610207

namespace A129973

/-- `A302126(2*n)-A127682(2*n+1)` -/
def P2278074205102610207.Spec : Prop :=
  ∀ n, P2278074205102610207.a n = A129973 (n + 1)

end A129973

/-! ## A129973.P6792854711346053582

`A131298(n)-A000045(n+1)`
-/

namespace A129973.P6792854711346053582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131298 n - A000045 (n + 1)

end

end A129973.P6792854711346053582

namespace A129973

/-- `A131298(n)-A000045(n+1)` -/
def P6792854711346053582.Spec : Prop :=
  ∀ n, P6792854711346053582.a n = A129973 (n + 1)

end A129973

/-! ## A129973.P13782562204414774532

`A008466(n+1)+A131298(n)-A027934(n+1)`
-/

namespace A129973.P13782562204414774532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008466 (n + 1) + (A131298 n - A027934 (n + 1))

end

end A129973.P13782562204414774532

namespace A129973

/-- `A008466(n+1)+A131298(n)-A027934(n+1)` -/
def P13782562204414774532.Spec : Prop :=
  ∀ n, P13782562204414774532.a n = A129973 (n + 1)

end A129973

/-!
# A129976: Numbers k such that the numerator of Sum_{j=0..k} k^j/j! is a prime number.

The programs for A129976, there is no canonical definition to state claims against.
-/

/-! ## A129976.P11983218686306211912

`∑[A292027(A292060(n))]`
-/

namespace A129976.P11983218686306211912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292027 (A292060 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129976.P11983218686306211912

/-! ## A129976.P17394655730856241834

`A373810(A000579(n)+∑[n+1])`
-/

namespace A129976.P17394655730856241834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373810 (A000579 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A129976.P17394655730856241834

/-! ## A129976.P8034814646579594934

`∑[ceil(A318099(n)/A001359(n+1))]`
-/

namespace A129976.P8034814646579594934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A318099 n : ℚ) / (A001359 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129976.P8034814646579594934

/-! ## A129976.P1689112492858219339

`A156261(A196119(n+1)+A000045(n))`
-/

namespace A129976.P1689112492858219339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156261 (A196119 (n + 1) + A000045 n).toNat

end

end A129976.P1689112492858219339

/-!
# A129979: a(n) = 2-mu(n), where mu=A008683 is the Moebius function.

The programs for A129979, the canonical program `A129979.P5213750874207387056` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129979 has offset 1).

The definition of A129979 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A129979.P5213750874207387056

`2-A008683(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A129979

/-- `2-A008683(n+1)` -/
def P5213750874207387056.Spec : Prop :=
  ∀ n, P5213750874207387056.a n = A129979 (n + 1)

theorem P5213750874207387056.correct : P5213750874207387056.Spec := by
  intro n
  simp only [A129979, Nat.add_sub_cancel]

end A129979

/-! ## A129979.P5526033641289342134

`2-∏{e}[n+1, floor(log(atan(#)))]`
-/

namespace A129979.P5526033641289342134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∏ p ∈ Nat.primeFactors (f1 n), ⌊Real.log (Real.arctan (Nat.factorization (f1 n) p : ℝ))⌋

end

end A129979.P5526033641289342134

namespace A129979

/-- `2-∏{e}[n+1, floor(log(atan(#)))]` -/
def P5526033641289342134.Spec : Prop :=
  ∀ n, P5526033641289342134.a n = A129979 (n + 1)

end A129979

/-! ## A129979.P13205902738310044942

`2-round(acot(∏{e}[n+1, -#]))`
-/

namespace A129979.P13205902738310044942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ)) : ℤ) : ℝ))

end

end A129979.P13205902738310044942

namespace A129979

/-- `2-round(acot(∏{e}[n+1, -#]))` -/
def P13205902738310044942.Spec : Prop :=
  ∀ n, P13205902738310044942.a n = A129979 (n + 1)

end A129979

/-! ## A129979.P15471063887331710484

`2-∏{e}[n+1, floor(log2(atan(#)))]`
-/

namespace A129979.P15471063887331710484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∏ p ∈ Nat.primeFactors (f1 n), ⌊Real.logb 2 (Real.arctan (Nat.factorization (f1 n) p : ℝ))⌋

end

end A129979.P15471063887331710484

namespace A129979

/-- `2-∏{e}[n+1, floor(log2(atan(#)))]` -/
def P15471063887331710484.Spec : Prop :=
  ∀ n, P15471063887331710484.a n = A129979 (n + 1)

end A129979

/-! ## A129979.P13490118543008110363

`2-∏{e}[n+1, -floor(1/#)]`
-/

namespace A129979.P13490118543008110363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋)

end

end A129979.P13490118543008110363

namespace A129979

/-- `2-∏{e}[n+1, -floor(1/#)]` -/
def P13490118543008110363.Spec : Prop :=
  ∀ n, P13490118543008110363.a n = A129979 (n + 1)

end A129979

/-! ## A129979.P8973725382461410116

`2-∏{e}[n+1, -#!]%2`
-/

namespace A129979.P8973725382461410116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorial (Nat.factorization (f1 n) p) : ℤ))) 2

end

end A129979.P8973725382461410116

namespace A129979

/-- `2-∏{e}[n+1, -#!]%2` -/
def P8973725382461410116.Spec : Prop :=
  ∀ n, P8973725382461410116.a n = A129979 (n + 1)

end A129979

/-! ## A129979.P3696708078963732017

`2-round(1/∏{e}[n+1, -#²])`
-/

namespace A129979.P3696708078963732017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p ^ 2 : ℤ)) : ℤ) : ℚ))

end

end A129979.P3696708078963732017

namespace A129979

/-- `2-round(1/∏{e}[n+1, -#²])` -/
def P3696708078963732017.Spec : Prop :=
  ∀ n, P3696708078963732017.a n = A129979 (n + 1)

end A129979

/-! ## A129979.P15696492865563583727

`2-round(∏{e}[n+1, -#^-2])`
-/

namespace A129979.P15696492865563583727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (-((Nat.factorization (f1 n) p : ℚ) ^ (-2 : ℤ))))

end

end A129979.P15696492865563583727

namespace A129979

/-- `2-round(∏{e}[n+1, -#^-2])` -/
def P15696492865563583727.Spec : Prop :=
  ∀ n, P15696492865563583727.a n = A129979 (n + 1)

end A129979

/-! ## A129979.P2574427627923587993

`8%(∏{e}[n+1, floor(log(atan(#)))]+6)`
-/

namespace A129979.P2574427627923587993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 8 (∏ p ∈ Nat.primeFactors (f1 n), ⌊Real.log (Real.arctan (Nat.factorization (f1 n) p : ℝ))⌋ + 6)

end

end A129979.P2574427627923587993

namespace A129979

/-- `8%(∏{e}[n+1, floor(log(atan(#)))]+6)` -/
def P2574427627923587993.Spec : Prop :=
  ∀ n, P2574427627923587993.a n = A129979 (n + 1)

end A129979

/-! ## A129979.P754023071099354273

`2-round(∏{p}[n+1, -#]/(n+2))`
-/

namespace A129979.P754023071099354273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / (n + 2 : ℚ))

end

end A129979.P754023071099354273

namespace A129979

/-- `2-round(∏{p}[n+1, -#]/(n+2))` -/
def P754023071099354273.Spec : Prop :=
  ∀ n, P754023071099354273.a n = A129979 (n + 1)

end A129979

/-! ## A129979.P16136517599667970443

`2-∏{e}[n+1, (-2)^#/2]%2`
-/

namespace A129979.P16136517599667970443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), ((-2) ^ Nat.factorization (f1 n) p : ℚ) / 2)) 2

end

end A129979.P16136517599667970443

namespace A129979

/-- `2-∏{e}[n+1, (-2)^#/2]%2` -/
def P16136517599667970443.Spec : Prop :=
  ∀ n, P16136517599667970443.a n = A129979 (n + 1)

end A129979

/-! ## A129979.P16428022146858024632

`3-A007423(n+1)`
-/

namespace A129979.P16428022146858024632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A007423 (n + 1)

end

end A129979.P16428022146858024632

namespace A129979

/-- `3-A007423(n+1)` -/
def P16428022146858024632.Spec : Prop :=
  ∀ n, P16428022146858024632.a n = A129979 (n + 1)

end A129979

/-! ## A129979.P3344160592134816379

`4-A080847(n+1)`
-/

namespace A129979.P3344160592134816379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A080847 (n + 1)

end

end A129979.P3344160592134816379

namespace A129979

/-- `4-A080847(n+1)` -/
def P3344160592134816379.Spec : Prop :=
  ∀ n, P3344160592134816379.a n = A129979 (n + 1)

end A129979

/-! ## A129979.P17400953260153887231

`5-A231821(n+1)`
-/

namespace A129979.P17400953260153887231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A231821 (n + 1)

end

end A129979.P17400953260153887231

namespace A129979

/-- `5-A231821(n+1)` -/
def P17400953260153887231.Spec : Prop :=
  ∀ n, P17400953260153887231.a n = A129979 (n + 1)

end A129979

/-! ## A129979.P3271357582342254378

`(3-A133695(n+1))/2`
-/

namespace A129979.P3271357582342254378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - A133695 (n + 1) : ℚ) / 2

end

end A129979.P3271357582342254378

namespace A129979

/-- `(3-A133695(n+1))/2` -/
def P3271357582342254378.Spec : Prop :=
  ∀ n, P3271357582342254378.a n = (A129979 (n + 1) : ℚ)

end A129979

/-! ## A129979.P16063288609960190469

`3-A076369(n+1)+n`
-/

namespace A129979.P16063288609960190469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A076369 (n + 1) + (n : ℤ)

end

end A129979.P16063288609960190469

namespace A129979

/-- `3-A076369(n+1)+n` -/
def P16063288609960190469.Spec : Prop :=
  ∀ n, P16063288609960190469.a n = A129979 (n + 1)

end A129979

/-! ## A129979.P17512552735093608693

`2-round(acot(A162512(n+1)))`
-/

namespace A129979.P17512552735093608693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - SequenceMachineLib.roundAway (SequenceMachineLib.acot (A162512 (n + 1) : ℝ))

end

end A129979.P17512552735093608693

namespace A129979

/-- `2-round(acot(A162512(n+1)))` -/
def P17512552735093608693.Spec : Prop :=
  ∀ n, P17512552735093608693.a n = A129979 (n + 1)

end A129979

/-! ## A129979.P10897226302640725176

`2-A055615(n+1)/(n+1)`
-/

namespace A129979.P10897226302640725176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (A055615 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A129979.P10897226302640725176

namespace A129979

/-- `2-A055615(n+1)/(n+1)` -/
def P10897226302640725176.Spec : Prop :=
  ∀ n, P10897226302640725176.a n = (A129979 (n + 1) : ℚ)

end A129979

/-! ## A129979.P8647342290165826004

`3-A061669(n+1)/(n+1)`
-/

namespace A129979.P8647342290165826004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 - (A061669 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A129979.P8647342290165826004

namespace A129979

/-- `3-A061669(n+1)/(n+1)` -/
def P8647342290165826004.Spec : Prop :=
  ∀ n, P8647342290165826004.a n = (A129979 (n + 1) : ℚ)

end A129979

/-! ## A129979.P823862532289373251

`4-A080848(n+1)/(n+1)`
-/

namespace A129979.P823862532289373251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - (A080848 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A129979.P823862532289373251

namespace A129979

/-- `4-A080848(n+1)/(n+1)` -/
def P823862532289373251.Spec : Prop :=
  ∀ n, P823862532289373251.a n = (A129979 (n + 1) : ℚ)

end A129979

/-!
# A129980: Sum of the digits of the sum of n!!, with n>=0.

The programs for A129980, there is no canonical definition to state claims against.
-/

/-! ## A129980.P16203997320016862515

`∑{digits}[∑[n*a(n-2)], #]` with `a(0)=1, a(1)=1`
-/

namespace A129980.P16203997320016862515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  n * f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A129980.P16203997320016862515

/-! ## A129980.P7875052281296113307

`∑{digits}[∑[n!/a(n-1)], #]` with `a(0)=1`
-/

namespace A129980.P7875052281296113307
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (Nat.factorial n : ℚ) / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A129980.P7875052281296113307

/-! ## A129980.P7792130350919226835

`∑{digits}[∑[∏[n/a(n-1)]], #]` with `a(0)=1`
-/

namespace A129980.P7792130350919226835
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f3 =>
  (n : ℚ) / f3 (n - 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A129980.P7792130350919226835

/-! ## A129980.P6056962629212121937

`∑{digits}[A129981(n), #]`
-/

namespace A129980.P6056962629212121937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129981 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A129980.P6056962629212121937

/-! ## A129980.P7769588937094303348

`∑{digits}[∑[A006882(n)], #]`
-/

namespace A129980.P7769588937094303348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A129980.P7769588937094303348

/-! ## A129980.P5450452145444097815

`∑{digits}[∑[A230698(∑[n])], #]`
-/

namespace A129980.P5450452145444097815
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230698 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A129980.P5450452145444097815

/-! ## A129980.P11091884474910555481

`∑{digits}[∑[A128882(n)+1], #]`
-/

namespace A129980.P11091884474910555481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128882 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A129980.P11091884474910555481

/-! ## A129980.P17856972939155408073

`∑{digits}[∑[A172089(∑[n]+1)], #]`
-/

namespace A129980.P17856972939155408073
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172089 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A129980.P17856972939155408073

/-! ## A129980.P14222911485577598299

`∑{digits}[∑[gcd(n!, A127111(n))], #]`
-/

namespace A129980.P14222911485577598299
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial n : ℤ) (A127111 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A129980.P14222911485577598299

/-! ## A129980.P5884903430119529072

`∑{digits}[∑[A000142(n+1)-A127111(n)], #]`
-/

namespace A129980.P5884903430119529072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A127111 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A129980.P5884903430119529072

/-!
# A129981: Sum of n!!, with n>=0.

The programs for A129981, the canonical program `A129981.P12834735457111218825` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129981 has offset 0).

The definition of A129981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129981.P12834735457111218825

`∑[n*a(n-2)]` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129981

/-- `∑[n*a(n-2)]` -/
def P12834735457111218825.Spec : Prop :=
  ∀ n, (P12834735457111218825.a n : ℤ) = A129981 n

theorem P12834735457111218825.correct : P12834735457111218825.Spec := by
  intro n
  simp only [A129981]

end A129981

/-! ## A129981.P12703598969372574123

`∑[∏[n/a(n-1)]]` with `a(0)=1`
-/

namespace A129981.P12703598969372574123
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℚ) / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129981.P12703598969372574123

namespace A129981

/-- `∑[∏[n/a(n-1)]]` -/
def P12703598969372574123.Spec : Prop :=
  ∀ n, P12703598969372574123.a n = (A129981 n : ℚ)

end A129981

/-! ## A129981.P15844253501557753800

`∑[a(n-2)/tan(acot(n))]` with `a(0)=1, a(1)=1`
-/

namespace A129981.P15844253501557753800
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) / Real.tan (SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129981.P15844253501557753800

namespace A129981

/-- `∑[a(n-2)/tan(acot(n))]` -/
def P15844253501557753800.Spec : Prop :=
  ∀ n, P15844253501557753800.a n = (A129981 n : ℝ)

end A129981

/-! ## A129981.P6984231149523227749

`∑[a(n-2)/cot(atan(n))]` with `a(0)=1, a(1)=1`
-/

namespace A129981.P6984231149523227749
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) / Real.cot (Real.arctan (n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129981.P6984231149523227749

namespace A129981

/-- `∑[a(n-2)/cot(atan(n))]` -/
def P6984231149523227749.Spec : Prop :=
  ∀ n, P6984231149523227749.a n = (A129981 n : ℝ)

end A129981

/-! ## A129981.P8226853103613830492

`∑[a(n-2)/n^(-1)]` with `a(0)=1, a(1)=1`
-/

namespace A129981.P8226853103613830492
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) / (n : ℚ) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129981.P8226853103613830492

namespace A129981

/-- `∑[a(n-2)/n^(-1)]` -/
def P8226853103613830492.Spec : Prop :=
  ∀ n, P8226853103613830492.a n = (A129981 n : ℚ)

end A129981

/-! ## A129981.P14958808783640078296

`∏[n/a(n-1)]+a(n-1)` with `a(0)=1`
-/

namespace A129981.P14958808783640078296
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A129981.P14958808783640078296

namespace A129981

/-- `∏[n/a(n-1)]+a(n-1)` -/
def P14958808783640078296.Spec : Prop :=
  ∀ n, P14958808783640078296.a n = (A129981 n : ℚ)

end A129981

/-! ## A129981.P15010994240990648674

`∑[floor(n*a(floor(n/(2/n+1))))]` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A129981.P15010994240990648674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n * f1 ⌊(n : ℚ) / (2 / (n : ℚ) + 1)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129981.P15010994240990648674

namespace A129981

/-- `∑[floor(n*a(floor(n/(2/n+1))))]` -/
def P15010994240990648674.Spec : Prop :=
  ∀ n, (P15010994240990648674.a n : ℤ) = A129981 n

end A129981

/-! ## A129981.P7738998731334247891

`a(n-1)+n*(a(n-2)-a(n-3))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A129981.P7738998731334247891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) + (n : ℤ) * (a (n - 2) - a (n - 3))

end

end A129981.P7738998731334247891

namespace A129981

/-- `a(n-1)+n*(a(n-2)-a(n-3))` -/
def P7738998731334247891.Spec : Prop :=
  ∀ n, P7738998731334247891.a n = A129981 n

end A129981

/-! ## A129981.P9502982738335496128

`∑[A006882(n)]`
-/

namespace A129981.P9502982738335496128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129981.P9502982738335496128

namespace A129981

/-- `∑[A006882(n)]` -/
def P9502982738335496128.Spec : Prop :=
  ∀ n, P9502982738335496128.a n = A129981 n

end A129981

/-! ## A129981.P17583753051152534942

`∑[A128882(n)+1]`
-/

namespace A129981.P17583753051152534942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128882 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129981.P17583753051152534942

namespace A129981

/-- `∑[A128882(n)+1]` -/
def P17583753051152534942.Spec : Prop :=
  ∀ n, P17583753051152534942.a n = A129981 n

end A129981

/-! ## A129981.P15619140813540882522

`A006882(abs(n-2*n))+a(n-1)` with `a(0)=1`
-/

namespace A129981.P15619140813540882522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006882 |(n : ℤ) - (2 * n : ℤ)|.toNat + a (n - 1)

end

end A129981.P15619140813540882522

namespace A129981

/-- `A006882(abs(n-2*n))+a(n-1)` -/
def P15619140813540882522.Spec : Prop :=
  ∀ n, P15619140813540882522.a n = A129981 n

end A129981

/-! ## A129981.P4969884002895410263

`∑[A172089(∑[n]+1)]`
-/

namespace A129981.P4969884002895410263
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172089 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129981.P4969884002895410263

namespace A129981

/-- `∑[A172089(∑[n]+1)]` -/
def P4969884002895410263.Spec : Prop :=
  ∀ n, P4969884002895410263.a n = A129981 n

end A129981

/-! ## A129981.P9347351028027101968

`∑[A248809(∑[n]-n)]`
-/

namespace A129981.P9347351028027101968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248809 (∑ j ∈ Finset.range (n + 1), f2 j - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129981.P9347351028027101968

namespace A129981

/-- `∑[A248809(∑[n]-n)]` -/
def P9347351028027101968.Spec : Prop :=
  ∀ n, P9347351028027101968.a n = A129981 n

end A129981

/-! ## A129981.P3964394067303767416

`∑[A230698(∑[n])]`
-/

namespace A129981.P3964394067303767416
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230698 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129981.P3964394067303767416

namespace A129981

/-- `∑[A230698(∑[n])]` -/
def P3964394067303767416.Spec : Prop :=
  ∀ n, P3964394067303767416.a n = A129981 n

end A129981

/-!
# A129982: Fibonacci numbers sandwiched between 1's.

The programs for A129982, the canonical program `A129982.P11777888967401634433` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129982 has offset 0).

The definition of A129982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A129982.P11777888967401634433

`2*a(n-2)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A129982

/-- `2*a(n-2)-a(n-6)` -/
def P11777888967401634433.Spec : Prop :=
  ∀ n, P11777888967401634433.a n = A129982 n

theorem P11777888967401634433.correct : P11777888967401634433.Spec := by
  intro n
  simp only [A129982]

end A129982

/-! ## A129982.P3335682858950331111

`A212804(∑[n]%(n+1))`
-/

namespace A129982.P3335682858950331111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A129982.P3335682858950331111

namespace A129982

/-- `A212804(∑[n]%(n+1))` -/
def P3335682858950331111.Spec : Prop :=
  ∀ n, P3335682858950331111.a n = A129982 n

end A129982

/-! ## A129982.P4473245762835707774

`A000045(gcd(C(n, 2), xor(1, n)))`
-/

namespace A129982.P4473245762835707774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd (Nat.choose n 2) (Nat.xor 1 n))

end

end A129982.P4473245762835707774

namespace A129982

/-- `A000045(gcd(C(n, 2), xor(1, n)))` -/
def P4473245762835707774.Spec : Prop :=
  ∀ n, P4473245762835707774.a n = A129982 n

end A129982

/-! ## A129982.P295702297420834528

`A000045(gcd(1-n, floor(n/2)))`
-/

namespace A129982.P295702297420834528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋)

end

end A129982.P295702297420834528

namespace A129982

/-- `A000045(gcd(1-n, floor(n/2)))` -/
def P295702297420834528.Spec : Prop :=
  ∀ n, P295702297420834528.a n = A129982 n

end A129982

/-! ## A129982.P13532165202616241586

`A000045(floor((n/2)^(n%2)))`
-/

namespace A129982.P13532165202616241586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊((n : ℚ) / 2) ^ (n % 2)⌋.toNat

end

end A129982.P13532165202616241586

namespace A129982

/-- `A000045(floor((n/2)^(n%2)))` -/
def P13532165202616241586.Spec : Prop :=
  ∀ n, P13532165202616241586.a n = A129982 n

end A129982

/-! ## A129982.P8279335640103047881

`A000045(floor((n/2)^and(1, n)))`
-/

namespace A129982.P8279335640103047881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊((n : ℚ) / 2) ^ Nat.land 1 n⌋.toNat

end

end A129982.P8279335640103047881

namespace A129982

/-- `A000045(floor((n/2)^and(1, n)))` -/
def P8279335640103047881.Spec : Prop :=
  ∀ n, P8279335640103047881.a n = A129982 n

end A129982

/-! ## A129982.P13360800997656350179

`A000045(((n-1)/2)^and(1, n))`
-/

namespace A129982.P13360800997656350179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((((n : ℤ) - 1 : ℚ) / 2) ^ Nat.land 1 n)).toNat

end

end A129982.P13360800997656350179

namespace A129982

/-- `A000045(((n-1)/2)^and(1, n))` -/
def P13360800997656350179.Spec : Prop :=
  ∀ n, P13360800997656350179.a n = A129982 n

end A129982

/-! ## A129982.P14219058150882037445

`A000045(abs(gcd(n+1, ∑[n])-n))`
-/

namespace A129982.P14219058150882037445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |(Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - (n : ℤ)|.toNat

end

end A129982.P14219058150882037445

namespace A129982

/-- `A000045(abs(gcd(n+1, ∑[n])-n))` -/
def P14219058150882037445.Spec : Prop :=
  ∀ n, P14219058150882037445.a n = A129982 n

end A129982

/-! ## A129982.P16442149297091533744

`A000045(lcm(2, lcm(2, n)-(n+1))/2)`
-/

namespace A129982.P16442149297091533744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((Int.lcm 2 ((Nat.lcm 2 n : ℤ) - (n + 1 : ℤ)) : ℚ) / 2)).toNat

end

end A129982.P16442149297091533744

namespace A129982

/-- `A000045(lcm(2, lcm(2, n)-(n+1))/2)` -/
def P16442149297091533744.Spec : Prop :=
  ∀ n, P16442149297091533744.a n = A129982 n

end A129982

/-! ## A129982.P3993658340072920130

`A000045(lcm(n+1, xor(1, n))/(n+1))`
-/

namespace A129982.P3993658340072920130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((Nat.lcm (n + 1) (Nat.xor 1 n) : ℚ) / (n + 1 : ℚ))).toNat

end

end A129982.P3993658340072920130

namespace A129982

/-- `A000045(lcm(n+1, xor(1, n))/(n+1))` -/
def P3993658340072920130.Spec : Prop :=
  ∀ n, P3993658340072920130.a n = A129982 n

end A129982

/-! ## A129982.P14723723048159186218

`A000045(n-2-(n-3)/(and(1, n)+1))`
-/

namespace A129982.P14723723048159186218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℚ) - ((n : ℤ) - 3 : ℚ) / (Nat.land 1 n + 1 : ℚ))).toNat

end

end A129982.P14723723048159186218

namespace A129982

/-- `A000045(n-2-(n-3)/(and(1, n)+1))` -/
def P14723723048159186218.Spec : Prop :=
  ∀ n, P14723723048159186218.a n = A129982 n

end A129982

/-! ## A129982.P10015695533853286182

`A212804(∑[char[2*n+1]-a(n-1)])` with `a(0)=0`
-/

namespace A129982.P10015695533853286182
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A129982.P10015695533853286182

namespace A129982

/-- `A212804(∑[char[2*n+1]-a(n-1)])` -/
def P10015695533853286182.Spec : Prop :=
  ∀ n, P10015695533853286182.a n = A129982 n

end A129982

/-! ## A129982.P628496566049140710

`A000045(A057979(n))`
-/

namespace A129982.P628496566049140710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A057979 n).toNat

end

end A129982.P628496566049140710

namespace A129982

/-- `A000045(A057979(n))` -/
def P628496566049140710.Spec : Prop :=
  ∀ n, P628496566049140710.a n = A129982 n

end A129982

/-! ## A129982.P1499800824345059004

`A212804(∑[A001057(n)])`
-/

namespace A129982.P1499800824345059004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A129982.P1499800824345059004

namespace A129982

/-- `A212804(∑[A001057(n)])` -/
def P1499800824345059004.Spec : Prop :=
  ∀ n, P1499800824345059004.a n = A129982 n

end A129982

/-! ## A129982.P10132350651822785542

`A212804(A142150(n+1))`
-/

namespace A129982.P10132350651822785542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A142150 (n + 1)).toNat

end

end A129982.P10132350651822785542

namespace A129982

/-- `A212804(A142150(n+1))` -/
def P10132350651822785542.Spec : Prop :=
  ∀ n, P10132350651822785542.a n = A129982 n

end A129982

/-! ## A129982.P3157985200365571630

`A000045(abs(A174007(n+1)))`
-/

namespace A129982.P3157985200365571630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |A174007 (n + 1)|.toNat

end

end A129982.P3157985200365571630

namespace A129982

/-- `A000045(abs(A174007(n+1)))` -/
def P3157985200365571630.Spec : Prop :=
  ∀ n, P3157985200365571630.a n = A129982 n

end A129982

/-! ## A129982.P9457345299466624824

`A000045(Δ[A114220(n+1)])`
-/

namespace A129982.P9457345299466624824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat

end

end A129982.P9457345299466624824

namespace A129982

/-- `A000045(Δ[A114220(n+1)])` -/
def P9457345299466624824.Spec : Prop :=
  ∀ n, P9457345299466624824.a n = A129982 n

end A129982

/-! ## A129982.P18435087217430460305

`A212804(A158416(n+1)-1)`
-/

namespace A129982.P18435087217430460305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A158416 (n + 1) - 1).toNat

end

end A129982.P18435087217430460305

namespace A129982

/-- `A212804(A158416(n+1)-1)` -/
def P18435087217430460305.Spec : Prop :=
  ∀ n, P18435087217430460305.a n = A129982 n

end A129982

/-! ## A129982.P5150059067056300373

`A000045(abs(2-A133622(n+1)))`
-/

namespace A129982.P5150059067056300373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |2 - A133622 (n + 1)|.toNat

end

end A129982.P5150059067056300373

namespace A129982

/-- `A000045(abs(2-A133622(n+1)))` -/
def P5150059067056300373.Spec : Prop :=
  ∀ n, P5150059067056300373.a n = A129982 n

end A129982

/-! ## A129982.P6127991682649837599

`A000045(n-2-(n-3)/A000032(and(1, n-1)))`
-/

namespace A129982.P6127991682649837599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℚ) - ((n : ℤ) - 3 : ℚ) / (A000032 (Int.land 1 ((n : ℤ) - 1)).toNat : ℚ))).toNat

end

end A129982.P6127991682649837599

namespace A129982

/-- `A000045(n-2-(n-3)/A000032(and(1, n-1)))` -/
def P6127991682649837599.Spec : Prop :=
  ∀ n, P6127991682649837599.a n = A129982 n

end A129982

/-!
# A129983: Binomial transform of A129982.

The programs for A129983, the canonical program `A129983.P17535563486194149249` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129983 has offset 0).

The definition of A129983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129983.P17535563486194149249

`∑[A129984(abs(1-n))]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A129983

/-- `∑[A129984(abs(1-n))]` -/
def P17535563486194149249.Spec : Prop :=
  ∀ n, P17535563486194149249.a n = A129983 n

theorem P17535563486194149249.correct : P17535563486194149249.Spec := by
  intro n
  simp only [A129983]

end A129983

/-! ## A129983.P5409431634951859755

`A129984(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A129983.P5409431634951859755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A129984 (n - 1) + a (n - 1)

end

end A129983.P5409431634951859755

namespace A129983

/-- `A129984(n-1)+a(n-1)` -/
def P5409431634951859755.Spec : Prop :=
  ∀ n, P5409431634951859755.a n = A129983 n

end A129983

/-! ## A129983.P9152312819732690212

`A129988(n)-Δ[A101890(n)]`
-/

namespace A129983.P9152312819732690212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 n - (f1 (n + 1) - f1 n)

end

end A129983.P9152312819732690212

namespace A129983

/-- `A129988(n)-Δ[A101890(n)]` -/
def P9152312819732690212.Spec : Prop :=
  ∀ n, P9152312819732690212.a n = A129983 n

end A129983

/-! ## A129983.P11790421603335503630

`∑[A129984(n)]+1-A129984(n)`
-/

namespace A129983.P11790421603335503630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A129984 n)

end

end A129983.P11790421603335503630

namespace A129983

/-- `∑[A129984(n)]+1-A129984(n)` -/
def P11790421603335503630.Spec : Prop :=
  ∀ n, P11790421603335503630.a n = A129983 n

end A129983

/-! ## A129983.P2923499413054527089

`A101891(n)+A129988(n)-A114199(n)`
-/

namespace A129983.P2923499413054527089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101891 n + (A129988 n - A114199 n)

end

end A129983.P2923499413054527089

namespace A129983

/-- `A101891(n)+A129988(n)-A114199(n)` -/
def P2923499413054527089.Spec : Prop :=
  ∀ n, P2923499413054527089.a n = A129983 n

end A129983

/-! ## A129983.P17704956194985457651

`Δ[A129987(n)-A101890(n)]`
-/

namespace A129983.P17704956194985457651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129987 n - A101890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129983.P17704956194985457651

namespace A129983

/-- `Δ[A129987(n)-A101890(n)]` -/
def P17704956194985457651.Spec : Prop :=
  ∀ n, P17704956194985457651.a n = A129983 n

end A129983

/-! ## A129983.P5438835046966620592

`A011782(n)+Δ[A114199(n)]-A114199(n)`
-/

namespace A129983.P5438835046966620592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (f1 (n + 1) - f1 n - A114199 n)

end

end A129983.P5438835046966620592

namespace A129983

/-- `A011782(n)+Δ[A114199(n)]-A114199(n)` -/
def P5438835046966620592.Spec : Prop :=
  ∀ n, P5438835046966620592.a n = A129983 n

end A129983

/-! ## A129983.P9294730229020556098

`Δ[A114199(n)+A056469(n)]-A114199(n)`
-/

namespace A129983.P9294730229020556098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114199 n + A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A114199 n

end

end A129983.P9294730229020556098

namespace A129983

/-- `Δ[A114199(n)+A056469(n)]-A114199(n)` -/
def P9294730229020556098.Spec : Prop :=
  ∀ n, P9294730229020556098.a n = A129983 n

end A129983

/-! ## A129983.P10090655635234597218

`Δ[A056469(n)]+A114199(n+1)%A114199(n)`
-/

namespace A129983.P10090655635234597218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A114199 (n + 1)) (A114199 n)

end

end A129983.P10090655635234597218

namespace A129983

/-- `Δ[A056469(n)]+A114199(n+1)%A114199(n)` -/
def P10090655635234597218.Spec : Prop :=
  ∀ n, P10090655635234597218.a n = A129983 n

end A129983

/-!
# A129984: First differences of A129983.

The programs for A129984, the canonical program `A129984.P17242023915517901134` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129984 has offset 0).

The definition of A129984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129984.P17242023915517901134

`A131577(n)+A101890(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A129984

/-- `A131577(n)+A101890(n)` -/
def P17242023915517901134.Spec : Prop :=
  ∀ n, P17242023915517901134.a n = A129984 n

theorem P17242023915517901134.correct : P17242023915517901134.Spec := by
  intro n
  simp only [A129984]

end A129984

/-! ## A129984.P9799362341719416852

`A101890(n)+Δ[A011782(n)]`
-/

namespace A129984.P9799362341719416852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101890 n + (f1 (n + 1) - f1 n)

end

end A129984.P9799362341719416852

namespace A129984

/-- `A101890(n)+Δ[A011782(n)]` -/
def P9799362341719416852.Spec : Prop :=
  ∀ n, P9799362341719416852.a n = A129984 n

end A129984

/-! ## A129984.P5036744701741491924

`Δ[A129983(n)]`
-/

namespace A129984.P5036744701741491924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129984.P5036744701741491924

namespace A129984

/-- `Δ[A129983(n)]` -/
def P5036744701741491924.Spec : Prop :=
  ∀ n, P5036744701741491924.a n = A129984 n

end A129984

/-! ## A129984.P13717278452392966803

`∑[A129986(n)]-A129986(n)`
-/

namespace A129984.P13717278452392966803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A129986 n

end

end A129984.P13717278452392966803

namespace A129984

/-- `∑[A129986(n)]-A129986(n)` -/
def P13717278452392966803.Spec : Prop :=
  ∀ n, P13717278452392966803.a n = A129984 n

end A129984

/-! ## A129984.P11455233828955528333

`A129983(n+1)-A129983(n)`
-/

namespace A129984.P11455233828955528333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129983 (n + 1) - A129983 n

end

end A129984.P11455233828955528333

namespace A129984

/-- `A129983(n+1)-A129983(n)` -/
def P11455233828955528333.Spec : Prop :=
  ∀ n, P11455233828955528333.a n = A129984 n

end A129984

/-! ## A129984.P1164302724365744415

`Δ[A129988(n)]-A101891(n)`
-/

namespace A129984.P1164302724365744415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A101891 n

end

end A129984.P1164302724365744415

namespace A129984

/-- `Δ[A129988(n)]-A101891(n)` -/
def P1164302724365744415.Spec : Prop :=
  ∀ n, P1164302724365744415.a n = A129984 n

end A129984

/-! ## A129984.P17311120019758326524

`Δ[A129988(n)-Δ[A101890(n)]]`
-/

namespace A129984.P17311120019758326524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101890 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129984.P17311120019758326524

namespace A129984

/-- `Δ[A129988(n)-Δ[A101890(n)]]` -/
def P17311120019758326524.Spec : Prop :=
  ∀ n, P17311120019758326524.a n = A129984 n

end A129984

/-! ## A129984.P12956404554201604957

`Δ[Δ[A129987(n)-A101890(n)]]`
-/

namespace A129984.P12956404554201604957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129987 n - A101890 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129984.P12956404554201604957

namespace A129984

/-- `Δ[Δ[A129987(n)-A101890(n)]]` -/
def P12956404554201604957.Spec : Prop :=
  ∀ n, P12956404554201604957.a n = A129984 n

end A129984

/-! ## A129984.P2117017897658793547

`Δ[A011782(n)+A114199(n+1)%A114199(n)]`
-/

namespace A129984.P2117017897658793547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + Int.tmod (A114199 (n + 1)) (A114199 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129984.P2117017897658793547

namespace A129984

/-- `Δ[A011782(n)+A114199(n+1)%A114199(n)]` -/
def P2117017897658793547.Spec : Prop :=
  ∀ n, P2117017897658793547.a n = A129984 n

end A129984

/-!
# A129985: Multiplicative persistence of the prime numbers.

The programs for A129985, the canonical program `A129985.P8901878146702470410` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129985 has offset 1).

The definition of A129985 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A031346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A129985.P8901878146702470410

`A031346(A000040(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A129985

/-- `A031346(A000040(n+1))` -/
def P8901878146702470410.Spec : Prop :=
  ∀ n, P8901878146702470410.a n = A129985 (n + 1)

theorem P8901878146702470410.correct : P8901878146702470410.Spec := by
  intro n
  simp only [A129985, Nat.add_sub_cancel]

end A129985

/-! ## A129985.P574814357916010225

`A031346(p?[xor(1, n)])`
-/

namespace A129985.P574814357916010225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A129985.P574814357916010225

namespace A129985

/-- `A031346(p?[xor(1, n)])` -/
def P574814357916010225.Spec : Prop :=
  ∀ n, P574814357916010225.a n = A129985 (n + 1)

end A129985

/-! ## A129985.P17444480206605808058

`A031346(p?[n%3+n])`
-/

namespace A129985.P17444480206605808058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A129985.P17444480206605808058

namespace A129985

/-- `A031346(p?[n%3+n])` -/
def P17444480206605808058.Spec : Prop :=
  ∀ n, P17444480206605808058.a n = A129985 (n + 1)

end A129985

/-! ## A129985.P6150473602340616051

`A031346(p?[n-(-1)^n])`
-/

namespace A129985.P6150473602340616051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A129985.P6150473602340616051

namespace A129985

/-- `A031346(p?[n-(-1)^n])` -/
def P6150473602340616051.Spec : Prop :=
  ∀ n, P6150473602340616051.a n = A129985 (n + 1)

end A129985

/-! ## A129985.P7975689781039497721

`A031346(p?[round(8*n/7)]²^(2/4))`
-/

namespace A129985.P7975689781039497721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 : ℝ) ^ ((2 : ℚ) / 4 : ℝ))).toNat

end

end A129985.P7975689781039497721

namespace A129985

/-- `A031346(p?[round(8*n/7)]²^(2/4))` -/
def P7975689781039497721.Spec : Prop :=
  ∀ n, P7975689781039497721.a n = A129985 (n + 1)

end A129985

/-! ## A129985.P10993405446261621262

`A031346(Δ[A007504(n)])`
-/

namespace A129985.P10993405446261621262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (f1 (n + 1) - f1 n).toNat

end

end A129985.P10993405446261621262

namespace A129985

/-- `A031346(Δ[A007504(n)])` -/
def P10993405446261621262.Spec : Prop :=
  ∀ n, P10993405446261621262.a n = A129985 (n + 1)

end A129985

/-! ## A129985.P9566130278418757688

`A031346(record[A051698(n)])`
-/

namespace A129985.P9566130278418757688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A129985.P9566130278418757688

namespace A129985

/-- `A031346(record[A051698(n)])` -/
def P9566130278418757688.Spec : Prop :=
  ∀ n, P9566130278418757688.a n = A129985 (n + 1)

end A129985

/-! ## A129985.P4306211242864412476

`A031346(A004087(n+1))`
-/

namespace A129985.P4306211242864412476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A004087 (n + 1)).toNat

end

end A129985.P4306211242864412476

namespace A129985

/-- `A031346(A004087(n+1))` -/
def P4306211242864412476.Spec : Prop :=
  ∀ n, P4306211242864412476.a n = A129985 (n + 1)

end A129985

/-! ## A129985.P6280403456881815404

`A031346(A006005(n+1))`
-/

namespace A129985.P6280403456881815404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A006005 (n + 1)).toNat

end

end A129985.P6280403456881815404

namespace A129985

/-- `A031346(A006005(n+1))` -/
def P6280403456881815404.Spec : Prop :=
  ∀ n, P6280403456881815404.a n = A129985 (n + 1)

end A129985

/-! ## A129985.P3570582082724246586

`A031346(A028906(n+1))`
-/

namespace A129985.P3570582082724246586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A028906 (n + 1)).toNat

end

end A129985.P3570582082724246586

namespace A129985

/-- `A031346(A028906(n+1))` -/
def P3570582082724246586.Spec : Prop :=
  ∀ n, P3570582082724246586.a n = A129985 (n + 1)

end A129985

/-! ## A129985.P17047425050168462166

`A031346(A161847(n+1))`
-/

namespace A129985.P17047425050168462166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A161847 (n + 1)).toNat

end

end A129985.P17047425050168462166

namespace A129985

/-- `A031346(A161847(n+1))` -/
def P17047425050168462166.Spec : Prop :=
  ∀ n, P17047425050168462166.a n = A129985 (n + 1)

end A129985

/-! ## A129985.P11488266948965094322

`A031346(A171577(n+1))`
-/

namespace A129985.P11488266948965094322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A171577 (n + 1)).toNat

end

end A129985.P11488266948965094322

namespace A129985

/-- `A031346(A171577(n+1))` -/
def P11488266948965094322.Spec : Prop :=
  ∀ n, P11488266948965094322.a n = A129985 (n + 1)

end A129985

/-! ## A129985.P17178453888101652488

`A031346(A008578(n+2))`
-/

namespace A129985.P17178453888101652488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A008578 (n + 2)).toNat

end

end A129985.P17178453888101652488

namespace A129985

/-- `A031346(A008578(n+2))` -/
def P17178453888101652488.Spec : Prop :=
  ∀ n, P17178453888101652488.a n = A129985 (n + 1)

end A129985

/-! ## A129985.P725310300974018295

`A031346(eq[1, A003415(n)])`
-/

namespace A129985.P725310300974018295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129985.P725310300974018295

namespace A129985

/-- `A031346(eq[1, A003415(n)])` -/
def P725310300974018295.Spec : Prop :=
  ∀ n, P725310300974018295.a n = A129985 (n + 1)

end A129985

/-! ## A129985.P13894402801366692127

`A031346(lt[0, A055671(n)])`
-/

namespace A129985.P13894402801366692127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A129985.P13894402801366692127

namespace A129985

/-- `A031346(lt[0, A055671(n)])` -/
def P13894402801366692127.Spec : Prop :=
  ∀ n, P13894402801366692127.a n = A129985 (n + 1)

end A129985

/-! ## A129985.P6293834395611492256

`A031346(eq[2, A092976(n)])`
-/

namespace A129985.P6293834395611492256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129985.P6293834395611492256

namespace A129985

/-- `A031346(eq[2, A092976(n)])` -/
def P6293834395611492256.Spec : Prop :=
  ∀ n, P6293834395611492256.a n = A129985 (n + 1)

end A129985

/-! ## A129985.P6594709397910164735

`A031346(eq[2, A225244(n)])`
-/

namespace A129985.P6594709397910164735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129985.P6594709397910164735

namespace A129985

/-- `A031346(eq[2, A225244(n)])` -/
def P6594709397910164735.Spec : Prop :=
  ∀ n, P6594709397910164735.a n = A129985 (n + 1)

end A129985

/-! ## A129985.P16055605732417765390

`A031346(A101989(n+1))`
-/

namespace A129985.P16055605732417765390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A101989 (n + 1)).toNat

end

end A129985.P16055605732417765390

namespace A129985

/-- `A031346(A101989(n+1))` -/
def P16055605732417765390.Spec : Prop :=
  ∀ n, P16055605732417765390.a n = A129985 (n + 1)

end A129985

/-! ## A129985.P12575422910854945588

`A031346(eq[2, A326486(n)])`
-/

namespace A129985.P12575422910854945588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A129985.P12575422910854945588

namespace A129985

/-- `A031346(eq[2, A326486(n)])` -/
def P12575422910854945588.Spec : Prop :=
  ∀ n, P12575422910854945588.a n = A129985 (n + 1)

end A129985

/-! ## A129985.P9455910107846839242

`A031346(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A129985.P9455910107846839242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A129985.P9455910107846839242

namespace A129985

/-- `A031346(∑{p}[p?[round(8*n/7)]², #])` -/
def P9455910107846839242.Spec : Prop :=
  ∀ n, P9455910107846839242.a n = A129985 (n + 1)

end A129985

/-!
# A129986: Second differences of A129983.

The programs for A129986, the canonical program `A129986.P6583462632365360205` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129986 has offset 0).

The definition of A129986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129986.P6583462632365360205

`A129987(n-1)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A129986

/-- `A129987(n-1)+a(n-1)` -/
def P6583462632365360205.Spec : Prop :=
  ∀ n, P6583462632365360205.a n = A129986 n

theorem P6583462632365360205.correct : P6583462632365360205.Spec := by
  intro n
  simp only [A129986]

end A129986

/-! ## A129986.P2291037492854277360

`∑[A129987(A140106(2*n+1))]`
-/

namespace A129986.P2291037492854277360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129987 (A140106 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129986.P2291037492854277360

namespace A129986

/-- `∑[A129987(A140106(2*n+1))]` -/
def P2291037492854277360.Spec : Prop :=
  ∀ n, P2291037492854277360.a n = A129986 n

end A129986

/-! ## A129986.P5868875445809910163

`Δ[A129984(n)]`
-/

namespace A129986.P5868875445809910163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129986.P5868875445809910163

namespace A129986

/-- `Δ[A129984(n)]` -/
def P5868875445809910163.Spec : Prop :=
  ∀ n, P5868875445809910163.a n = A129986 n

end A129986

/-! ## A129986.P17555325906797396088

`A011782(n)+Δ[A101890(n)]`
-/

namespace A129986.P17555325906797396088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (f1 (n + 1) - f1 n)

end

end A129986.P17555325906797396088

namespace A129986

/-- `A011782(n)+Δ[A101890(n)]` -/
def P17555325906797396088.Spec : Prop :=
  ∀ n, P17555325906797396088.a n = A129986 n

end A129986

/-! ## A129986.P13066557241978748863

`Δ[A131577(n)+A101890(n)]`
-/

namespace A129986.P13066557241978748863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A101890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129986.P13066557241978748863

namespace A129986

/-- `Δ[A131577(n)+A101890(n)]` -/
def P13066557241978748863.Spec : Prop :=
  ∀ n, P13066557241978748863.a n = A129986 n

end A129986

/-! ## A129986.P589598114733916855

`A129984(n+1)-A129984(n)`
-/

namespace A129986.P589598114733916855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129984 (n + 1) - A129984 n

end

end A129986.P589598114733916855

namespace A129986

/-- `A129984(n+1)-A129984(n)` -/
def P589598114733916855.Spec : Prop :=
  ∀ n, P589598114733916855.a n = A129986 n

end A129986

/-! ## A129986.P13517241317908008350

`∑[A129987(n)]+1-A129987(n)`
-/

namespace A129986.P13517241317908008350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A129987 n)

end

end A129986.P13517241317908008350

namespace A129986

/-- `∑[A129987(n)]+1-A129987(n)` -/
def P13517241317908008350.Spec : Prop :=
  ∀ n, P13517241317908008350.a n = A129986 n

end A129986

/-! ## A129986.P2888973866189286856

`ceil(2^(n-1))+A129988(n)-A129983(n)`
-/

namespace A129986.P2888973866189286856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + (A129988 n - A129983 n)

end

end A129986.P2888973866189286856

namespace A129986

/-- `ceil(2^(n-1))+A129988(n)-A129983(n)` -/
def P2888973866189286856.Spec : Prop :=
  ∀ n, P2888973866189286856.a n = A129986 n

end A129986

/-! ## A129986.P1425654551666428728

`Δ[Δ[A129983(n)]]`
-/

namespace A129986.P1425654551666428728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129983 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129986.P1425654551666428728

namespace A129986

/-- `Δ[Δ[A129983(n)]]` -/
def P1425654551666428728.Spec : Prop :=
  ∀ n, P1425654551666428728.a n = A129986 n

end A129986

/-! ## A129986.P7764170048133383280

`Δ[Δ[A129988(n)]-A101891(n)]`
-/

namespace A129986.P7764170048133383280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A101891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129986.P7764170048133383280

namespace A129986

/-- `Δ[Δ[A129988(n)]-A101891(n)]` -/
def P7764170048133383280.Spec : Prop :=
  ∀ n, P7764170048133383280.a n = A129986 n

end A129986

/-!
# A129987: Third differences of A129983.

The programs for A129987, the canonical program `A129987.P1378896886703514554` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129987 has offset 0).

The definition of A129987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129987.P2543782438824751379

`Δ[A129986(n)]`
-/

namespace A129987.P2543782438824751379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129987.P2543782438824751379

namespace A129987

/-- `Δ[A129986(n)]` -/
def P2543782438824751379.Spec : Prop :=
  ∀ n, P2543782438824751379.a n = A129987 n

end A129987

/-! ## A129987.P4607525598785742167

`A129988(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A129987.P4607525598785742167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A129988 (n - 1) + a (n - 1)

end

end A129987.P4607525598785742167

namespace A129987

/-- `A129988(n-1)+a(n-1)` -/
def P4607525598785742167.Spec : Prop :=
  ∀ n, P4607525598785742167.a n = A129987 n

end A129987

/-! ## A129987.P1378896886703514554

`A131577(n)+A101891(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A129987

/-- `A131577(n)+A101891(n)` -/
def P1378896886703514554.Spec : Prop :=
  ∀ n, P1378896886703514554.a n = A129987 n

theorem P1378896886703514554.correct : P1378896886703514554.Spec := by
  intro n
  simp only [A129987]

end A129987

/-! ## A129987.P16665514612350294991

`∑[A129988(log2(A011782(n)))]`
-/

namespace A129987.P16665514612350294991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129987.P16665514612350294991

namespace A129987

/-- `∑[A129988(log2(A011782(n)))]` -/
def P16665514612350294991.Spec : Prop :=
  ∀ n, P16665514612350294991.a n = A129987 n

end A129987

/-! ## A129987.P17485258334848382623

`∑[A129988(A028310(n)-1)]`
-/

namespace A129987.P17485258334848382623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129987.P17485258334848382623

namespace A129987

/-- `∑[A129988(A028310(n)-1)]` -/
def P17485258334848382623.Spec : Prop :=
  ∀ n, P17485258334848382623.a n = A129987 n

end A129987

/-! ## A129987.P17664219228318525533

`∑[A129988(A004273(n)-n)]`
-/

namespace A129987.P17664219228318525533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129987.P17664219228318525533

namespace A129987

/-- `∑[A129988(A004273(n)-n)]` -/
def P17664219228318525533.Spec : Prop :=
  ∀ n, P17664219228318525533.a n = A129987 n

end A129987

/-! ## A129987.P15020704705715708663

`A129986(n+1)-A129986(n)`
-/

namespace A129987.P15020704705715708663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129986 (n + 1) - A129986 n

end

end A129987.P15020704705715708663

namespace A129987

/-- `A129986(n+1)-A129986(n)` -/
def P15020704705715708663.Spec : Prop :=
  ∀ n, P15020704705715708663.a n = A129987 n

end A129987

/-! ## A129987.P5703998048807064094

`∑[A129988(A004524(A004273(n)))]`
-/

namespace A129987.P5703998048807064094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 (A004524 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129987.P5703998048807064094

namespace A129987

/-- `∑[A129988(A004524(A004273(n)))]` -/
def P5703998048807064094.Spec : Prop :=
  ∀ n, P5703998048807064094.a n = A129987 n

end A129987

/-! ## A129987.P9909750371298534895

`∑[A129988(A004526(A004275(n)))]`
-/

namespace A129987.P9909750371298534895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 (A004526 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129987.P9909750371298534895

namespace A129987

/-- `∑[A129988(A004526(A004275(n)))]` -/
def P9909750371298534895.Spec : Prop :=
  ∀ n, P9909750371298534895.a n = A129987 n

end A129987

/-! ## A129987.P3253009499979055664

`Δ[Δ[A129984(n)]]`
-/

namespace A129987.P3253009499979055664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129984 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129987.P3253009499979055664

namespace A129987

/-- `Δ[Δ[A129984(n)]]` -/
def P3253009499979055664.Spec : Prop :=
  ∀ n, P3253009499979055664.a n = A129987 n

end A129987

/-! ## A129987.P17302566860511901624

`Δ[A129988(n)]-A101890(n)`
-/

namespace A129987.P17302566860511901624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A101890 n

end

end A129987.P17302566860511901624

namespace A129987

/-- `Δ[A129988(n)]-A101890(n)` -/
def P17302566860511901624.Spec : Prop :=
  ∀ n, P17302566860511901624.a n = A129987 n

end A129987

/-! ## A129987.P9044428648005195503

`Δ[A011782(n)+Δ[A101890(n)]]`
-/

namespace A129987.P9044428648005195503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101890 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129987.P9044428648005195503

namespace A129987

/-- `Δ[A011782(n)+Δ[A101890(n)]]` -/
def P9044428648005195503.Spec : Prop :=
  ∀ n, P9044428648005195503.a n = A129987 n

end A129987

/-! ## A129987.P8900832790925646857

`Δ[Δ[A131577(n)+A101890(n)]]`
-/

namespace A129987.P8900832790925646857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A101890 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129987.P8900832790925646857

namespace A129987

/-- `Δ[Δ[A131577(n)+A101890(n)]]` -/
def P8900832790925646857.Spec : Prop :=
  ∀ n, P8900832790925646857.a n = A129987 n

end A129987

/-! ## A129987.P8016950380702982301

`Δ[Δ[Δ[A129983(n)]]]`
-/

namespace A129987.P8016950380702982301
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129983 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129987.P8016950380702982301

namespace A129987

/-- `Δ[Δ[Δ[A129983(n)]]]` -/
def P8016950380702982301.Spec : Prop :=
  ∀ n, P8016950380702982301.a n = A129987 n

end A129987

/-! ## A129987.P3731670080062842599

`∑[A129988(A049615(∑[n]))]`
-/

namespace A129987.P3731670080062842599
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 (A049615 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129987.P3731670080062842599

namespace A129987

/-- `∑[A129988(A049615(∑[n]))]` -/
def P3731670080062842599.Spec : Prop :=
  ∀ n, P3731670080062842599.a n = A129987 n

end A129987

/-! ## A129987.P14750104188056118775

`∑[A129988(A259361(n²))]`
-/

namespace A129987.P14750104188056118775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129987.P14750104188056118775

namespace A129987

/-- `∑[A129988(A259361(n²))]` -/
def P14750104188056118775.Spec : Prop :=
  ∀ n, P14750104188056118775.a n = A129987 n

end A129987

/-!
# A129988: Fourth differences of A129983.

The programs for A129988, the canonical program `A129988.P17125705088209517440` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129988 has offset 0).

The definition of A129988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129988.P17125705088209517440

`A290990(n)+A011782(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A129988

/-- `A290990(n)+A011782(n)` -/
def P17125705088209517440.Spec : Prop :=
  ∀ n, P17125705088209517440.a n = A129988 n

theorem P17125705088209517440.correct : P17125705088209517440.Spec := by
  intro n
  simp only [A129988]

end A129988

/-! ## A129988.P12617254470646269493

`A290990(n)+∑[A034008(n)]`
-/

namespace A129988.P12617254470646269493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290990 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129988.P12617254470646269493

namespace A129988

/-- `A290990(n)+∑[A034008(n)]` -/
def P12617254470646269493.Spec : Prop :=
  ∀ n, P12617254470646269493.a n = A129988 n

end A129988

/-! ## A129988.P17671376317175394555

`A290990(n)+Δ[A056469(n)]`
-/

namespace A129988.P17671376317175394555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290990 n + (f1 (n + 1) - f1 n)

end

end A129988.P17671376317175394555

namespace A129988

/-- `A290990(n)+Δ[A056469(n)]` -/
def P17671376317175394555.Spec : Prop :=
  ∀ n, P17671376317175394555.a n = A129988 n

end A129988

/-! ## A129988.P6378949519705996960

`A129987(n)+A101890((2*n)%(n+1))`
-/

namespace A129988.P6378949519705996960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129987 n + A101890 (2 * n % (n + 1))

end

end A129988.P6378949519705996960

namespace A129988

/-- `A129987(n)+A101890((2*n)%(n+1))` -/
def P6378949519705996960.Spec : Prop :=
  ∀ n, P6378949519705996960.a n = A129988 n

end A129988

/-! ## A129988.P11449047390279338484

`Δ[A129987(n)]`
-/

namespace A129988.P11449047390279338484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129988.P11449047390279338484

namespace A129988

/-- `Δ[A129987(n)]` -/
def P11449047390279338484.Spec : Prop :=
  ∀ n, P11449047390279338484.a n = A129988 n

end A129988

/-! ## A129988.P10531303625045545879

`Δ[Δ[A129986(n)]]`
-/

namespace A129988.P10531303625045545879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129986 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129988.P10531303625045545879

namespace A129988

/-- `Δ[Δ[A129986(n)]]` -/
def P10531303625045545879.Spec : Prop :=
  ∀ n, P10531303625045545879.a n = A129988 n

end A129988

/-! ## A129988.P4181466192985765912

`A129987(n+1)-A129987(n)`
-/

namespace A129988.P4181466192985765912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129987 (n + 1) - A129987 n

end

end A129988.P4181466192985765912

namespace A129988

/-- `A129987(n+1)-A129987(n)` -/
def P4181466192985765912.Spec : Prop :=
  ∀ n, P4181466192985765912.a n = A129988 n

end A129988

/-! ## A129988.P10779772168159210419

`Δ[Δ[Δ[A129984(n)]]]`
-/

namespace A129988.P10779772168159210419
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129984 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129988.P10779772168159210419

namespace A129988

/-- `Δ[Δ[Δ[A129984(n)]]]` -/
def P10779772168159210419.Spec : Prop :=
  ∀ n, P10779772168159210419.a n = A129988 n

end A129988

/-!
# A129989: a(1)=1. a(n) = smallest integer > a(n-1) that is coprime to the n-th Fibonacci number.

The programs for A129989, there is no canonical definition to state claims against.
-/

/-! ## A129989.P2083560539097465697

`record[A162618(A194272(A325424(n+1)))]`
-/

namespace A129989.P2083560539097465697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162618 (A194272 (A325424 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129989.P2083560539097465697

/-! ## A129989.P1192438480424804262

`∑[A001826(A201635(3*n+1))]`
-/

namespace A129989.P1192438480424804262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (A201635 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A129989.P1192438480424804262

/-! ## A129989.P4756822083876102347

`A123108(2*a(n-1))+A001826(A201635(3*n+1))` with `a(0)=1`
-/

namespace A129989.P4756822083876102347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A123108 (2 * a (n - 1)).toNat + A001826 (A201635 (3 * n + 1)).toNat

end

end A129989.P4756822083876102347

/-! ## A129989.P18067170889189237990

`lt[A069177(n+1), A069177(A069190(n+1))]`
-/

namespace A129989.P18067170889189237990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069177 (A069190 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129989.P18067170889189237990

/-! ## A129989.P15483484099129434018

`lt[A128434(n+2), A339743(A030545(n))]`
-/

namespace A129989.P15483484099129434018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128434 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339743 (A030545 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A129989.P15483484099129434018

/-!
# A129990: Primes p such that the smallest integer whose sum of decimal digits is p is prime.

The programs for A129990, there is no canonical definition to state claims against.
-/

/-! ## A129990.P2191043648103739488

`A000040(A055019(n+1))`
-/

namespace A129990.P2191043648103739488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A055019 (n + 1)).toNat

end

end A129990.P2191043648103739488

/-! ## A129990.P14724400541530796786

`A008578(A055019(n+1)+1)`
-/

namespace A129990.P14724400541530796786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A055019 (n + 1) + 1).toNat

end

end A129990.P14724400541530796786

/-! ## A129990.P17953482627610147400

`A182986(A055019(n+1)+1)`
-/

namespace A129990.P17953482627610147400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A055019 (n + 1) + 1).toNat

end

end A129990.P17953482627610147400

/-! ## A129990.P10056206473152150594

`A011655(3*n+1)+A006093(A055019(n+1))`
-/

namespace A129990.P10056206473152150594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (3 * n + 1) + A006093 (A055019 (n + 1)).toNat

end

end A129990.P10056206473152150594

/-! ## A129990.P3660303352289394848

`A040976(A055019(n+1))+A010700(2*(n+2))`
-/

namespace A129990.P3660303352289394848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A055019 (n + 1)).toNat + A010700 (2 * (n + 2))

end

end A129990.P3660303352289394848

/-!
# A129992: Nonnegative values x of solutions (x, y) to the Diophantine equation x^2 + (x+127)^2 = y^2.

The programs for A129992, there is no canonical definition to state claims against.
-/

/-! ## A129992.P9746715285375175971

`A130609(n+1)+A118673(n)-A130608(n+1)`
-/

namespace A129992.P9746715285375175971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130609 (n + 1) + (A118673 n - A130608 (n + 1))

end

end A129992.P9746715285375175971

/-!
# A129994: Triangle read by rows: 2*A007318 - I.

The programs for A129994, the canonical program `A129994.P8909343354360901903` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129994 has offset 0).

The definition of A129994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A129994.P13284698087891297918

`ceil(A131112(n)/2)`
-/

namespace A129994.P13284698087891297918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131112 n : ℚ) / 2⌉

end

end A129994.P13284698087891297918

namespace A129994

/-- `ceil(A131112(n)/2)` -/
def P13284698087891297918.Spec : Prop :=
  ∀ n, P13284698087891297918.a n = A129994 n

end A129994

/-! ## A129994.P14954063844221187350

`ceil(A131114(n)/3)`
-/

namespace A129994.P14954063844221187350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131114 n : ℚ) / 3⌉

end

end A129994.P14954063844221187350

namespace A129994

/-- `ceil(A131114(n)/3)` -/
def P14954063844221187350.Spec : Prop :=
  ∀ n, P14954063844221187350.a n = A129994 n

end A129994

/-! ## A129994.P12382656225565431685

`ceil(2*A131113(n)/5)`
-/

namespace A129994.P12382656225565431685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * A131113 n : ℚ) / 5⌉

end

end A129994.P12382656225565431685

namespace A129994

/-- `ceil(2*A131113(n)/5)` -/
def P12382656225565431685.Spec : Prop :=
  ∀ n, P12382656225565431685.a n = A129994 n

end A129994

/-! ## A129994.P8585254592339853878

`A132046(n)+char[∑[n+1]]`
-/

namespace A129994.P8585254592339853878
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132046 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A129994.P8585254592339853878

namespace A129994

/-- `A132046(n)+char[∑[n+1]]` -/
def P8585254592339853878.Spec : Prop :=
  ∀ n, P8585254592339853878.a n = A129994 n

end A129994

/-! ## A129994.P8557460859367958184

`A028326(n)-char[∑[n-1]]`
-/

namespace A129994.P8557460859367958184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A129994.P8557460859367958184

namespace A129994

/-- `A028326(n)-char[∑[n-1]]` -/
def P8557460859367958184.Spec : Prop :=
  ∀ n, P8557460859367958184.a n = A129994 n

end A129994

/-! ## A129994.P8579500082936961321

`A131108(n)+char[∑[n]-2]`
-/

namespace A129994.P8579500082936961321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131108 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A129994.P8579500082936961321

namespace A129994

/-- `A131108(n)+char[∑[n]-2]` -/
def P8579500082936961321.Spec : Prop :=
  ∀ n, P8579500082936961321.a n = A129994 n

end A129994

/-! ## A129994.P17034655689577680121

`A109128(n)+char[comp[∑[n-1]]]`
-/

namespace A129994.P17034655689577680121
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A129994.P17034655689577680121

namespace A129994

/-- `A109128(n)+char[comp[∑[n-1]]]` -/
def P17034655689577680121.Spec : Prop :=
  ∀ n, P17034655689577680121.a n = A129994 n

end A129994

/-! ## A129994.P4965924774861607931

`A124927(∑[2*n]%comp[∑[n]])`
-/

namespace A129994.P4965924774861607931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A129994.P4965924774861607931

namespace A129994

/-- `A124927(∑[2*n]%comp[∑[n]])` -/
def P4965924774861607931.Spec : Prop :=
  ∀ n, P4965924774861607931.a n = A129994 n

end A129994

/-! ## A129994.P18035625267102016328

`(2-char[∑[n-1]])*A007318(n)`
-/

namespace A129994.P18035625267102016328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) * A007318 n

end

end A129994.P18035625267102016328

namespace A129994

/-- `(2-char[∑[n-1]])*A007318(n)` -/
def P18035625267102016328.Spec : Prop :=
  ∀ n, P18035625267102016328.a n = A129994 n

end A129994

/-! ## A129994.P3866387567511432245

`A124927(∑[char[∑[n]]]²-n-1)`
-/

namespace A129994.P3866387567511432245
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A129994.P3866387567511432245

namespace A129994

/-- `A124927(∑[char[∑[n]]]²-n-1)` -/
def P3866387567511432245.Spec : Prop :=
  ∀ n, P3866387567511432245.a n = A129994 n

end A129994

/-! ## A129994.P8909343354360901903

`A104795(n)+A014473(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A129994

/-- `A104795(n)+A014473(n)` -/
def P8909343354360901903.Spec : Prop :=
  ∀ n, P8909343354360901903.a n = A129994 n

theorem P8909343354360901903.correct : P8909343354360901903.Spec := by
  intro n
  simp only [A129994]

end A129994

/-! ## A129994.P2840989500356119828

`A135278(n)-A259525(n)`
-/

namespace A129994.P2840989500356119828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n - A259525 n

end

end A129994.P2840989500356119828

namespace A129994

/-- `A135278(n)-A259525(n)` -/
def P2840989500356119828.Spec : Prop :=
  ∀ n, P2840989500356119828.a n = A129994 n

end A129994

/-! ## A129994.P10613867003708767910

`A132749(n)*A154325(n)`
-/

namespace A129994.P10613867003708767910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 n * A154325 n

end

end A129994.P10613867003708767910

namespace A129994

/-- `A132749(n)*A154325(n)` -/
def P10613867003708767910.Spec : Prop :=
  ∀ n, P10613867003708767910.a n = A129994 n

end A129994

/-! ## A129994.P14508913686115527914

`A117852(n)/A106268(n)`
-/

namespace A129994.P14508913686115527914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117852 n : ℚ) / (A106268 n : ℚ)

end

end A129994.P14508913686115527914

namespace A129994

/-- `A117852(n)/A106268(n)` -/
def P14508913686115527914.Spec : Prop :=
  ∀ n, P14508913686115527914.a n = (A129994 n : ℚ)

end A129994

/-! ## A129994.P6050498082432267867

`gcd(A013620(n), A028326(n))`
-/

namespace A129994.P6050498082432267867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013620 n) (A028326 n)

end

end A129994.P6050498082432267867

namespace A129994

/-- `gcd(A013620(n), A028326(n))` -/
def P6050498082432267867.Spec : Prop :=
  ∀ n, (P6050498082432267867.a n : ℤ) = A129994 n

end A129994

/-! ## A129994.P14064801965384723580

`gcd(A038207(n), A131114(n))`
-/

namespace A129994.P14064801965384723580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038207 n) (A131114 n)

end

end A129994.P14064801965384723580

namespace A129994

/-- `gcd(A038207(n), A131114(n))` -/
def P14064801965384723580.Spec : Prop :=
  ∀ n, (P14064801965384723580.a n : ℤ) = A129994 n

end A129994

/-! ## A129994.P4093883899546004504

`gcd(A038231(n), A134058(n))`
-/

namespace A129994.P4093883899546004504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038231 n) (A134058 n)

end

end A129994.P4093883899546004504

namespace A129994

/-- `gcd(A038231(n), A134058(n))` -/
def P4093883899546004504.Spec : Prop :=
  ∀ n, (P4093883899546004504.a n : ℤ) = A129994 n

end A129994

/-! ## A129994.P4375997750413409531

`lcm(A114284(n), A132046(n))`
-/

namespace A129994.P4375997750413409531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A114284 n) (A132046 n)

end

end A129994.P4375997750413409531

namespace A129994

/-- `lcm(A114284(n), A132046(n))` -/
def P4375997750413409531.Spec : Prop :=
  ∀ n, (P4375997750413409531.a n : ℤ) = A129994 n

end A129994

/-! ## A129994.P14147764572730666259

`and(A114284(n), A131127(n))`
-/

namespace A129994.P14147764572730666259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114284 n) (A131127 n)

end

end A129994.P14147764572730666259

namespace A129994

/-- `and(A114284(n), A131127(n))` -/
def P14147764572730666259.Spec : Prop :=
  ∀ n, P14147764572730666259.a n = A129994 n

end A129994

/-! ## A129994.P660681626435701835

`A198321(n+1)+A007318(n)`
-/

namespace A129994.P660681626435701835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 (n + 1) + A007318 n

end

end A129994.P660681626435701835

namespace A129994

/-- `A198321(n+1)+A007318(n)` -/
def P660681626435701835.Spec : Prop :=
  ∀ n, P660681626435701835.a n = A129994 n

end A129994

/-!
# A129996: a(n) = (-1)^[(n+1)/2] A000108([n/2]+1).

The programs for A129996, the canonical program `A129996.P8436117696571961404` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A129996 has offset 0).

The definition of A129996 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129110, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A129996.P8436117696571961404

`A129110(n+1)-A129110(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A129996

/-- `A129110(n+1)-A129110(n)` -/
def P8436117696571961404.Spec : Prop :=
  ∀ n, P8436117696571961404.a n = A129996 n

theorem P8436117696571961404.correct : P8436117696571961404.Spec := by
  intro n
  simp only [A129996]

end A129996

/-! ## A129996.P17063658044320455141

`Δ[A129110(n)]`
-/

namespace A129996.P17063658044320455141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129996.P17063658044320455141

namespace A129996

/-- `Δ[A129110(n)]` -/
def P17063658044320455141.Spec : Prop :=
  ∀ n, P17063658044320455141.a n = A129996 n

theorem P17063658044320455141.correct : P17063658044320455141.Spec := by
  intro n
  simp only [A129996, Nat.add_sub_cancel, A129996.P17063658044320455141.f1, A129996.P17063658044320455141.a, A129996.P8436117696571961404.a, SequenceMachineLib.memo_apply]

end A129996

/-! ## A129996.P13886814835876220277

`Δ[A105523(n+2)]`
-/

namespace A129996.P13886814835876220277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129996.P13886814835876220277

namespace A129996

/-- `Δ[A105523(n+2)]` -/
def P13886814835876220277.Spec : Prop :=
  ∀ n, P13886814835876220277.a n = A129996 n

end A129996

/-! ## A129996.P11929941732988048776

`Δ[-A090192(n+2)]`
-/

namespace A129996.P11929941732988048776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A090192 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129996.P11929941732988048776

namespace A129996

/-- `Δ[-A090192(n+2)]` -/
def P11929941732988048776.Spec : Prop :=
  ∀ n, P11929941732988048776.a n = A129996 n

end A129996

/-! ## A129996.P13437232386714113607

`(-1)^∑[n]*A208355(n+1)`
-/

namespace A129996.P13437232386714113607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) * A208355 (n + 1)

end

end A129996.P13437232386714113607

namespace A129996

/-- `(-1)^∑[n]*A208355(n+1)` -/
def P13437232386714113607.Spec : Prop :=
  ∀ n, P13437232386714113607.a n = A129996 n

end A129996

/-! ## A129996.P15212036166258995435

`A099363(A080412(n+1))`
-/

namespace A129996.P15212036166258995435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099363 (A080412 (n + 1)).toNat

end

end A129996.P15212036166258995435

namespace A129996

/-- `A099363(A080412(n+1))` -/
def P15212036166258995435.Spec : Prop :=
  ∀ n, P15212036166258995435.a n = A129996 n

end A129996

/-! ## A129996.P1423063728896975183

`A106181(n+1)*A208355(n+1)/A208355(n)`
-/

namespace A129996.P1423063728896975183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106181 (n + 1) * A208355 (n + 1) : ℚ) / (A208355 n : ℚ)

end

end A129996.P1423063728896975183

namespace A129996

/-- `A106181(n+1)*A208355(n+1)/A208355(n)` -/
def P1423063728896975183.Spec : Prop :=
  ∀ n, P1423063728896975183.a n = (A129996 n : ℚ)

end A129996

/-! ## A129996.P3287518351648365176

`A112466(A178218(n+2))`
-/

namespace A129996.P3287518351648365176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112466 (A178218 (n + 2)).toNat

end

end A129996.P3287518351648365176

namespace A129996

/-- `A112466(A178218(n+2))` -/
def P3287518351648365176.Spec : Prop :=
  ∀ n, P3287518351648365176.a n = A129996 n

end A129996

/-! ## A129996.P2070071985246885008

`A097808(∑[∑[(-1)^n+1]])`
-/

namespace A129996.P2070071985246885008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097808 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A129996.P2070071985246885008

namespace A129996

/-- `A097808(∑[∑[(-1)^n+1]])` -/
def P2070071985246885008.Spec : Prop :=
  ∀ n, P2070071985246885008.a n = A129996 n

end A129996

/-! ## A129996.P13936940696088196750

`A106180(A316671(n+2))`
-/

namespace A129996.P13936940696088196750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106180 (A316671 (n + 2)).toNat

end

end A129996.P13936940696088196750

namespace A129996

/-- `A106180(A316671(n+2))` -/
def P13936940696088196750.Spec : Prop :=
  ∀ n, P13936940696088196750.a n = A129996 n

end A129996

/-!
# A129997: a(n) = 4*a(n-1) + (n-6)*a(n-2).

The programs for A129997, there is no canonical definition to state claims against.
-/

/-! ## A129997.P16310970661754521615

`A059995(A123347(n)+A049452(n))`
-/

namespace A129997.P16310970661754521615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A123347 n + A049452 n).toNat

end

end A129997.P16310970661754521615

/-! ## A129997.P3672702783696826873

`A002266(xor(A052927(n), A052949(n)))`
-/

namespace A129997.P3672702783696826873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (Int.xor (A052927 n) (A052949 n)).toNat

end

end A129997.P3672702783696826873

/-! ## A129997.P2084438231220165010

`A059995(A049452(n)-(A059995(n)-A123347(n)))`
-/

namespace A129997.P2084438231220165010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A049452 n - (A059995 n - A123347 n)).toNat

end

end A129997.P2084438231220165010

/-!
# A129998: Let p < q be consecutive primes. Then p is in the sequence if p+q+p*q is a composite number and if there is a prime number r such that p+q+r is a divisor of p+q+p*q.

The programs for A129998, there is no canonical definition to state claims against.
-/

/-! ## A129998.P15494271174322985618

`p?[Δ[A070098(A080856(n))]]`
-/

namespace A129998.P15494271174322985618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070098 (A080856 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129998.P15494271174322985618

/-! ## A129998.P6084556582131731086

`filter[A059500(n+3), A248392(#)]`
-/

namespace A129998.P6084556582131731086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059500 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A248392 (f1 j).toNat = 1) n)

end

end A129998.P6084556582131731086

/-! ## A129998.P6275221703809903792

`p?[A184427(A184420(n+1))-4]`
-/

namespace A129998.P6275221703809903792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184427 (A184420 (n + 1)).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A129998.P6275221703809903792

