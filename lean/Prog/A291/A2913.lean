import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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

/-!
# A291300: Signed domination number of Fibonacci cube Gamma_n.

The programs for A291300, there is no canonical definition to state claims against.
-/

/-! ## A291300.P1991515295326672337

`A005843(A347788(n))+A000045(n)`
-/

namespace A291300.P1991515295326672337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A347788 n).toNat + A000045 n

end

end A291300.P1991515295326672337

/-! ## A291300.P7968518189760998607

`A166085(A032742(n+1))+A000045(n)`
-/

namespace A291300.P7968518189760998607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166085 (A032742 (n + 1)).toNat + A000045 n

end

end A291300.P7968518189760998607

/-!
# A291301: a(n) = prime that is eventually reached when x -> sigma(x)-1 is repeatedly applied to the product of the first n primes, or -1 if no prime is ever reached.

The programs for A291301, there is no canonical definition to state claims against.
-/

/-! ## A291301.P7955185663578501753

`A039654(A002110(n+1))`
-/

namespace A291301.P7955185663578501753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039654 (A002110 (n + 1)).toNat

end

end A291301.P7955185663578501753

/-!
# A291304: The arithmetic function v_5(n,2).

The programs for A291304, the canonical program `A291304.P15527547624403321686` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291304 has offset 2).

The definition of A291304 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291304.P15527547624403321686

`(n+2+gcd(n+2, 10)-2*gcd(n+2, 5))/2`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291304

/-- `(n+2+gcd(n+2, 10)-2*gcd(n+2, 5))/2` -/
def P15527547624403321686.Spec : Prop :=
  ∀ n, P15527547624403321686.a n = (A291304 (n + 2) : ℚ)

end A291304

/-! ## A291304.P3168052902448209091

`A008619(n+1)-Δ[A047314(A008619(n))]`
-/

namespace A291304.P3168052902448209091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047314 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) - (f1 (n + 1) - f1 n)

end

end A291304.P3168052902448209091

namespace A291304

/-- `A008619(n+1)-Δ[A047314(A008619(n))]` -/
def P3168052902448209091.Spec : Prop :=
  ∀ n, P3168052902448209091.a n = A291304 (n + 2)

end A291304

/-! ## A291304.P11831398030103834832

`A142150(n+2-(n+2)/A060791(n+2))+A027656(n)`
-/

namespace A291304.P11831398030103834832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (SequenceMachineLib.roundAway ((n + 2 : ℚ) - (n + 2 : ℚ) / (A060791 (n + 2) : ℚ))).toNat + A027656 n

end

end A291304.P11831398030103834832

namespace A291304

/-- `A142150(n+2-(n+2)/A060791(n+2))+A027656(n)` -/
def P11831398030103834832.Spec : Prop :=
  ∀ n, P11831398030103834832.a n = A291304 (n + 2)

end A291304

/-! ## A291304.P6183826417829343332

`A004526(n)+Δ[A081599(n+6)]`
-/

namespace A291304.P6183826417829343332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081599 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (f1 (n + 1) - f1 n)

end

end A291304.P6183826417829343332

namespace A291304

/-- `A004526(n)+Δ[A081599(n+6)]` -/
def P6183826417829343332.Spec : Prop :=
  ∀ n, P6183826417829343332.a n = A291304 (n + 2)

end A291304

/-! ## A291304.P2221652411591894217

`A004526(n)-A158388(A083910(3*n+1))`
-/

namespace A291304.P2221652411591894217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A158388 (A083910 (3 * n + 1)).toNat

end

end A291304.P2221652411591894217

namespace A291304

/-- `A004526(n)-A158388(A083910(3*n+1))` -/
def P2221652411591894217.Spec : Prop :=
  ∀ n, P2221652411591894217.a n = A291304 (n + 2)

end A291304

/-! ## A291304.P3481232691250496205

`A028242(A109613(n)-A006466(A019431(n)))`
-/

namespace A291304.P3481232691250496205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A109613 n - A006466 (A019431 n).toNat).toNat

end

end A291304.P3481232691250496205

namespace A291304

/-- `A028242(A109613(n)-A006466(A019431(n)))` -/
def P3481232691250496205.Spec : Prop :=
  ∀ n, P3481232691250496205.a n = A291304 (n + 2)

end A291304

/-!
# A291305: The arithmetic function v_5(n,1).

The programs for A291305, the canonical program `A291305.P16910456210232867540` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291305 has offset 2).

The definition of A291305 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291305.P16910456210232867540

`n+2-gcd(n+2, 5)`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291305

/-- `n+2-gcd(n+2, 5)` -/
def P16910456210232867540.Spec : Prop :=
  ∀ n, P16910456210232867540.a n = A291305 (n + 2)

theorem P16910456210232867540.correct : P16910456210232867540.Spec := by
  intro n
  simp only [A291305, Nat.add_sub_cancel]

end A291305

/-! ## A291305.P15949113233015226476

`n+2-A109009(n+2)`
-/

namespace A291305.P15949113233015226476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A109009 (n + 2)

end

end A291305.P15949113233015226476

namespace A291305

/-- `n+2-A109009(n+2)` -/
def P15949113233015226476.Spec : Prop :=
  ∀ n, P15949113233015226476.a n = A291305 (n + 2)

end A291305

/-! ## A291305.P14662378119794081317

`Δ[lcm(5, n+1)]%4+n`
-/

namespace A291305.P14662378119794081317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 4 + (n : ℤ)

end

end A291305.P14662378119794081317

namespace A291305

/-- `Δ[lcm(5, n+1)]%4+n` -/
def P14662378119794081317.Spec : Prop :=
  ∀ n, P14662378119794081317.a n = A291305 (n + 2)

end A291305

/-! ## A291305.P15335849601322806821

`a(n-5)+5` with `a(0)=1, a(1)=2, a(2)=3, a(3)=0, a(4)=5`
-/

namespace A291305.P15335849601322806821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 0, 5] fun n a =>
  a (n - 5) + 5

end

end A291305.P15335849601322806821

namespace A291305

/-- `a(n-5)+5` -/
def P15335849601322806821.Spec : Prop :=
  ∀ n, (P15335849601322806821.a n : ℤ) = A291305 (n + 2)

end A291305

/-! ## A291305.P10176651277354971812

`n+1-and(4, (n+1)%5)`
-/

namespace A291305.P10176651277354971812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.land 4 ((n + 1) % 5) : ℤ)

end

end A291305.P10176651277354971812

namespace A291305

/-- `n+1-and(4, (n+1)%5)` -/
def P10176651277354971812.Spec : Prop :=
  ∀ n, P10176651277354971812.a n = A291305 (n + 2)

end A291305

/-! ## A291305.P8277275082126610776

`∑[floor(a(n-5))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=-3, a(4)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A291305.P8277275082126610776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, -3, 5] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291305.P8277275082126610776

namespace A291305

/-- `∑[floor(a(n-5))]` -/
def P8277275082126610776.Spec : Prop :=
  ∀ n, P8277275082126610776.a n = A291305 (n + 2)

end A291305

/-! ## A291305.P10729603793969597024

`or(3, A047584(n+1)%2-1)+n-2`
-/

namespace A291305.P10729603793969597024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (Int.tmod (A047584 (n + 1)) 2 - 1) + ((n : ℤ) - 2)

end

end A291305.P10729603793969597024

namespace A291305

/-- `or(3, A047584(n+1)%2-1)+n-2` -/
def P10729603793969597024.Spec : Prop :=
  ∀ n, P10729603793969597024.a n = A291305 (n + 2)

end A291305

/-! ## A291305.P6363356870751485075

`A291568(n+2)+n`
-/

namespace A291305.P6363356870751485075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291568 (n + 2) + (n : ℤ)

end

end A291305.P6363356870751485075

namespace A291305

/-- `A291568(n+2)+n` -/
def P6363356870751485075.Spec : Prop :=
  ∀ n, P6363356870751485075.a n = A291305 (n + 2)

end A291305

/-! ## A291305.P2998066683180247896

`n+2-(n+2)/A060791(n+2)`
-/

namespace A291305.P2998066683180247896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) - (n + 2 : ℚ) / (A060791 (n + 2) : ℚ)

end

end A291305.P2998066683180247896

namespace A291305

/-- `n+2-(n+2)/A060791(n+2)` -/
def P2998066683180247896.Spec : Prop :=
  ∀ n, P2998066683180247896.a n = (A291305 (n + 2) : ℚ)

end A291305

/-! ## A291305.P16385113221834879635

`A028861(Δ[A028841(n+1)])+n`
-/

namespace A291305.P16385113221834879635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028861 (f1 (n + 1) - f1 n).toNat + (n : ℤ)

end

end A291305.P16385113221834879635

namespace A291305

/-- `A028861(Δ[A028841(n+1)])+n` -/
def P16385113221834879635.Spec : Prop :=
  ∀ n, P16385113221834879635.a n = A291305 (n + 2)

end A291305

/-! ## A291305.P5931965519811134348

`n+2-A060904(A007947(n+2))`
-/

namespace A291305.P5931965519811134348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A060904 (A007947 (n + 2)).toNat

end

end A291305.P5931965519811134348

namespace A291305

/-- `n+2-A060904(A007947(n+2))` -/
def P5931965519811134348.Spec : Prop :=
  ∀ n, P5931965519811134348.a n = A291305 (n + 2)

end A291305

/-! ## A291305.P2775271639545375122

`n+2-A355582(A170825(n+2))`
-/

namespace A291305.P2775271639545375122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A355582 (A170825 (n + 2)).toNat

end

end A291305.P2775271639545375122

namespace A291305

/-- `n+2-A355582(A170825(n+2))` -/
def P2775271639545375122.Spec : Prop :=
  ∀ n, P2775271639545375122.a n = A291305 (n + 2)

end A291305

/-! ## A291305.P5310792422750073045

`Δ[A358012(n+1)]+n`
-/

namespace A291305.P5310792422750073045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A291305.P5310792422750073045

namespace A291305

/-- `Δ[A358012(n+1)]+n` -/
def P5310792422750073045.Spec : Prop :=
  ∀ n, P5310792422750073045.a n = A291305 (n + 2)

end A291305

/-! ## A291305.P585227754607061950

`n+1-Δ[A130496(n+1)]²`
-/

namespace A291305.P585227754607061950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f1 (n + 1) - f1 n) ^ 2

end

end A291305.P585227754607061950

namespace A291305

/-- `n+1-Δ[A130496(n+1)]²` -/
def P585227754607061950.Spec : Prop :=
  ∀ n, P585227754607061950.a n = A291305 (n + 2)

end A291305

/-! ## A291305.P17998243779896085864

`n+1-Δ[A130497(n+1)]²`
-/

namespace A291305.P17998243779896085864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f1 (n + 1) - f1 n) ^ 2

end

end A291305.P17998243779896085864

namespace A291305

/-- `n+1-Δ[A130497(n+1)]²` -/
def P17998243779896085864.Spec : Prop :=
  ∀ n, P17998243779896085864.a n = A291305 (n + 2)

end A291305

/-! ## A291305.P15385544402581426403

`n+3-A088667(2*(n+2))`
-/

namespace A291305.P15385544402581426403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A088667 (2 * (n + 2))

end

end A291305.P15385544402581426403

namespace A291305

/-- `n+3-A088667(2*(n+2))` -/
def P15385544402581426403.Spec : Prop :=
  ∀ n, P15385544402581426403.a n = A291305 (n + 2)

end A291305

/-! ## A291305.P15101523045732457500

`n+2-∏{p}[n+2, A014963(5*#)]`
-/

namespace A291305.P15101523045732457500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ∏ p ∈ Nat.primeFactors (f1 n), A014963 (5 * p)

end

end A291305.P15101523045732457500

namespace A291305

/-- `n+2-∏{p}[n+2, A014963(5*#)]` -/
def P15101523045732457500.Spec : Prop :=
  ∀ n, P15101523045732457500.a n = A291305 (n + 2)

end A291305

/-!
# A291306: The arithmetic function v_6(n,1).

The programs for A291306, the canonical program `A291306.P2030825225721977624` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291306 has offset 2).

The definition of A291306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291306.P2030825225721977624

`n+2-gcd(n+2, 6)`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291306

/-- `n+2-gcd(n+2, 6)` -/
def P2030825225721977624.Spec : Prop :=
  ∀ n, P2030825225721977624.a n = A291306 (n + 2)

theorem P2030825225721977624.correct : P2030825225721977624.Spec := by
  intro n
  simp only [A291306, Nat.add_sub_cancel]

end A291306

/-! ## A291306.P3390754133995630269

`n+2-A089128(n+2)`
-/

namespace A291306.P3390754133995630269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A089128 (n + 2)

end

end A291306.P3390754133995630269

namespace A291306

/-- `n+2-A089128(n+2)` -/
def P3390754133995630269.Spec : Prop :=
  ∀ n, P3390754133995630269.a n = A291306 (n + 2)

end A291306

/-! ## A291306.P1793075994203664747

`lcm(6, (n+2)²-1)%(n+2)`
-/

namespace A291306.P1793075994203664747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (((n + 2) ^ 2 : ℤ) - 1) % (n + 2)

end

end A291306.P1793075994203664747

namespace A291306

/-- `lcm(6, (n+2)²-1)%(n+2)` -/
def P1793075994203664747.Spec : Prop :=
  ∀ n, (P1793075994203664747.a n : ℤ) = A291306 (n + 2)

end A291306

/-! ## A291306.P11506558610616179903

`n+1-5%((n+1)%6+1)`
-/

namespace A291306.P11506558610616179903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((5 % ((n + 1) % 6 + 1) : ℕ) : ℤ)

end

end A291306.P11506558610616179903

namespace A291306

/-- `n+1-5%((n+1)%6+1)` -/
def P11506558610616179903.Spec : Prop :=
  ∀ n, P11506558610616179903.a n = A291306 (n + 2)

end A291306

/-! ## A291306.P9781914357591955582

`2-(gcd(2*(1-n), 3*n)-n)`
-/

namespace A291306.P9781914357591955582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Int.gcd (2 * (1 - (n : ℤ))) (3 * n : ℤ) : ℤ) - (n : ℤ))

end

end A291306.P9781914357591955582

namespace A291306

/-- `2-(gcd(2*(1-n), 3*n)-n)` -/
def P9781914357591955582.Spec : Prop :=
  ∀ n, P9781914357591955582.a n = A291306 (n + 2)

end A291306

/-! ## A291306.P12386978728177678568

`((n%2+n)*gcd(3, 2*n+1))%(n+2)`
-/

namespace A291306.P12386978728177678568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2 + n) * Nat.gcd 3 (2 * n + 1) % (n + 2)

end

end A291306.P12386978728177678568

namespace A291306

/-- `((n%2+n)*gcd(3, 2*n+1))%(n+2)` -/
def P12386978728177678568.Spec : Prop :=
  ∀ n, (P12386978728177678568.a n : ℤ) = A291306 (n + 2)

end A291306

/-! ## A291306.P89455424875953945

`2*A291307(n+2)`
-/

namespace A291306.P89455424875953945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A291307 (n + 2)

end

end A291306.P89455424875953945

namespace A291306

/-- `2*A291307(n+2)` -/
def P89455424875953945.Spec : Prop :=
  ∀ n, P89455424875953945.a n = A291306 (n + 2)

end A291306

/-! ## A291306.P193498443174591371

`A005843(A291307(n+2))`
-/

namespace A291306.P193498443174591371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A291307 (n + 2)).toNat

end

end A291306.P193498443174591371

namespace A291306

/-- `A005843(A291307(n+2))` -/
def P193498443174591371.Spec : Prop :=
  ∀ n, P193498443174591371.a n = A291306 (n + 2)

end A291306

/-! ## A291306.P17710417324017094727

`2*(A061800(n)-A291268(n+2))`
-/

namespace A291306.P17710417324017094727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A061800 n - A291268 (n + 2))

end

end A291306.P17710417324017094727

namespace A291306

/-- `2*(A061800(n)-A291268(n+2))` -/
def P17710417324017094727.Spec : Prop :=
  ∀ n, P17710417324017094727.a n = A291306 (n + 2)

end A291306

/-! ## A291306.P5960354671002526838

`A291574(n+2)+n`
-/

namespace A291306.P5960354671002526838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291574 (n + 2) + (n : ℤ)

end

end A291306.P5960354671002526838

namespace A291306

/-- `A291574(n+2)+n` -/
def P5960354671002526838.Spec : Prop :=
  ∀ n, P5960354671002526838.a n = A291306 (n + 2)

end A291306

/-! ## A291306.P14903621744764767215

`n+2-(n+2)/A060789(n+2)`
-/

namespace A291306.P14903621744764767215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) - (n + 2 : ℚ) / (A060789 (n + 2) : ℚ)

end

end A291306.P14903621744764767215

namespace A291306

/-- `n+2-(n+2)/A060789(n+2)` -/
def P14903621744764767215.Spec : Prop :=
  ∀ n, P14903621744764767215.a n = (A291306 (n + 2) : ℚ)

end A291306

/-! ## A291306.P7883791610535245000

`n+2-A065331(A007947(n+2))`
-/

namespace A291306.P7883791610535245000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A065331 (A007947 (n + 2)).toNat

end

end A291306.P7883791610535245000

namespace A291306

/-- `n+2-A065331(A007947(n+2))` -/
def P7883791610535245000.Spec : Prop :=
  ∀ n, P7883791610535245000.a n = A291306 (n + 2)

end A291306

/-! ## A291306.P15810531995503151156

`A052928(n+2-A178142(n+2))`
-/

namespace A291306.P15810531995503151156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 ((n + 2 : ℤ) - A178142 (n + 2)).toNat

end

end A291306.P15810531995503151156

namespace A291306

/-- `A052928(n+2-A178142(n+2))` -/
def P15810531995503151156.Spec : Prop :=
  ∀ n, P15810531995503151156.a n = A291306 (n + 2)

end A291306

/-! ## A291306.P4004902225861218376

`n+2-A370182(A370180(n+2))`
-/

namespace A291306.P4004902225861218376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A370182 (A370180 (n + 2)).toNat

end

end A291306.P4004902225861218376

namespace A291306

/-- `n+2-A370182(A370180(n+2))` -/
def P4004902225861218376.Spec : Prop :=
  ∀ n, P4004902225861218376.a n = A291306 (n + 2)

end A291306

/-! ## A291306.P9689276447765676371

`n+2-A089145(n+5)`
-/

namespace A291306.P9689276447765676371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A089145 (n + 5)

end

end A291306.P9689276447765676371

namespace A291306

/-- `n+2-A089145(n+5)` -/
def P9689276447765676371.Spec : Prop :=
  ∀ n, P9689276447765676371.a n = A291306 (n + 2)

end A291306

/-! ## A291306.P1888178199542930026

`2*(A047286(A047268(n+1))-A047239(n+1))`
-/

namespace A291306.P1888178199542930026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047286 (A047268 (n + 1)).toNat - A047239 (n + 1))

end

end A291306.P1888178199542930026

namespace A291306

/-- `2*(A047286(A047268(n+1))-A047239(n+1))` -/
def P1888178199542930026.Spec : Prop :=
  ∀ n, P1888178199542930026.a n = A291306 (n + 2)

end A291306

/-! ## A291306.P17420796453781629689

`n+2-A306764(2*(n+3))`
-/

namespace A291306.P17420796453781629689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A306764 (2 * (n + 3))

end

end A291306.P17420796453781629689

namespace A291306

/-- `n+2-A306764(2*(n+3))` -/
def P17420796453781629689.Spec : Prop :=
  ∀ n, P17420796453781629689.a n = A291306 (n + 2)

end A291306

/-!
# A291307: The arithmetic function v_6(n,2).

The programs for A291307, the canonical program `A291307.P15942804374896408033` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291307 has offset 2).

The definition of A291307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291307.P14612957047642048664

`(n+2-gcd(n+2, 6))/2`
-/

namespace A291307.P14612957047642048664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - (Nat.gcd (n + 2) 6 : ℤ) : ℚ) / 2

end

end A291307.P14612957047642048664

namespace A291307

/-- `(n+2-gcd(n+2, 6))/2` -/
def P14612957047642048664.Spec : Prop :=
  ∀ n, P14612957047642048664.a n = (A291307 (n + 2) : ℚ)

end A291307

/-! ## A291307.P15942804374896408033

`A291306(n+2)/2`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A291307

/-- `A291306(n+2)/2` -/
def P15942804374896408033.Spec : Prop :=
  ∀ n, P15942804374896408033.a n = (A291307 (n + 2) : ℚ)

end A291307

/-! ## A291307.P4508908310212109253

`n-(a(n-1)+gcd(n, ∑[n])%3)` with `a(0)=0`
-/

namespace A291307.P4508908310212109253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (a (n - 1) + ((Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℤ))

end

end A291307.P4508908310212109253

namespace A291307

/-- `n-(a(n-1)+gcd(n, ∑[n])%3)` -/
def P4508908310212109253.Spec : Prop :=
  ∀ n, P4508908310212109253.a n = A291307 (n + 2)

end A291307

/-! ## A291307.P12767985909834982145

`(((n+1)*(n+1))%((2*n+1)*gcd(3, 2*n+1)))%(n+1)`
-/

namespace A291307.P12767985909834982145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 1) % ((2 * n + 1) * Nat.gcd 3 (2 * n + 1)) % (n + 1)

end

end A291307.P12767985909834982145

namespace A291307

/-- `(((n+1)*(n+1))%((2*n+1)*gcd(3, 2*n+1)))%(n+1)` -/
def P12767985909834982145.Spec : Prop :=
  ∀ n, (P12767985909834982145.a n : ℤ) = A291307 (n + 2)

end A291307

/-! ## A291307.P8507342672949635365

`A004525(n+2-gcd(6, n+2))`
-/

namespace A291307.P8507342672949635365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (n + 2 - Nat.gcd 6 (n + 2))

end

end A291307.P8507342672949635365

namespace A291307

/-- `A004525(n+2-gcd(6, n+2))` -/
def P8507342672949635365.Spec : Prop :=
  ∀ n, P8507342672949635365.a n = A291307 (n + 2)

end A291307

/-! ## A291307.P13970492537564454749

`n-(A088689(n)+a(n-1))` with `a(0)=0`
-/

namespace A291307.P13970492537564454749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - (A088689 n + a (n - 1))

end

end A291307.P13970492537564454749

namespace A291307

/-- `n-(A088689(n)+a(n-1))` -/
def P13970492537564454749.Spec : Prop :=
  ∀ n, P13970492537564454749.a n = A291307 (n + 2)

end A291307

/-! ## A291307.P7101158163324240275

`A061800(n)-A291268(n+2)`
-/

namespace A291307.P7101158163324240275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 n - A291268 (n + 2)

end

end A291307.P7101158163324240275

namespace A291307

/-- `A061800(n)-A291268(n+2)` -/
def P7101158163324240275.Spec : Prop :=
  ∀ n, P7101158163324240275.a n = A291307 (n + 2)

end A291307

/-! ## A291307.P9949550040655417686

`(A291574(n+2)+n)/2`
-/

namespace A291307.P9949550040655417686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291574 (n + 2) + (n : ℤ) : ℚ) / 2

end

end A291307.P9949550040655417686

namespace A291307

/-- `(A291574(n+2)+n)/2` -/
def P9949550040655417686.Spec : Prop :=
  ∀ n, P9949550040655417686.a n = (A291307 (n + 2) : ℚ)

end A291307

/-! ## A291307.P17965426175975641367

`A001281(A291306(n+2))`
-/

namespace A291307.P17965426175975641367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A291306 (n + 2)).toNat

end

end A291307.P17965426175975641367

namespace A291307

/-- `A001281(A291306(n+2))` -/
def P17965426175975641367.Spec : Prop :=
  ∀ n, P17965426175975641367.a n = A291307 (n + 2)

end A291307

/-! ## A291307.P450274513112498521

`2*A174257(n+2)-A300068(n+1)`
-/

namespace A291307.P450274513112498521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174257 (n + 2) - A300068 (n + 1)

end

end A291307.P450274513112498521

namespace A291307

/-- `2*A174257(n+2)-A300068(n+1)` -/
def P450274513112498521.Spec : Prop :=
  ∀ n, P450274513112498521.a n = A291307 (n + 2)

end A291307

/-! ## A291307.P8830094207693778930

`A300069(n+1)+A174257(n+2)-A300067(n+1)`
-/

namespace A291307.P8830094207693778930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300069 (n + 1) + (A174257 (n + 2) - A300067 (n + 1))

end

end A291307.P8830094207693778930

namespace A291307

/-- `A300069(n+1)+A174257(n+2)-A300067(n+1)` -/
def P8830094207693778930.Spec : Prop :=
  ∀ n, P8830094207693778930.a n = A291307 (n + 2)

end A291307

/-! ## A291307.P8280946806795494972

`(n+2-A089128(n+2))/2`
-/

namespace A291307.P8280946806795494972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - A089128 (n + 2) : ℚ) / 2

end

end A291307.P8280946806795494972

namespace A291307

/-- `(n+2-A089128(n+2))/2` -/
def P8280946806795494972.Spec : Prop :=
  ∀ n, P8280946806795494972.a n = (A291307 (n + 2) : ℚ)

end A291307

/-! ## A291307.P5848422436200279791

`A001281(n+2-A089128(n+2))`
-/

namespace A291307.P5848422436200279791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 ((n + 2 : ℤ) - A089128 (n + 2)).toNat

end

end A291307.P5848422436200279791

namespace A291307

/-- `A001281(n+2-A089128(n+2))` -/
def P5848422436200279791.Spec : Prop :=
  ∀ n, P5848422436200279791.a n = A291307 (n + 2)

end A291307

/-! ## A291307.P6853316102518393188

`A004526(n+2-A089128(n+2))`
-/

namespace A291307.P6853316102518393188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n + 2 : ℤ) - A089128 (n + 2)).toNat

end

end A291307.P6853316102518393188

namespace A291307

/-- `A004526(n+2-A089128(n+2))` -/
def P6853316102518393188.Spec : Prop :=
  ∀ n, P6853316102518393188.a n = A291307 (n + 2)

end A291307

/-! ## A291307.P11376688155523211770

`A006370(n+2-A089128(n+2))`
-/

namespace A291307.P11376688155523211770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 ((n + 2 : ℤ) - A089128 (n + 2)).toNat

end

end A291307.P11376688155523211770

namespace A291307

/-- `A006370(n+2-A089128(n+2))` -/
def P11376688155523211770.Spec : Prop :=
  ∀ n, P11376688155523211770.a n = A291307 (n + 2)

end A291307

/-! ## A291307.P13098077186111127028

`A026741(n+2-A089128(n+2))`
-/

namespace A291307.P13098077186111127028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((n + 2 : ℤ) - A089128 (n + 2)).toNat

end

end A291307.P13098077186111127028

namespace A291307

/-- `A026741(n+2-A089128(n+2))` -/
def P13098077186111127028.Spec : Prop :=
  ∀ n, P13098077186111127028.a n = A291307 (n + 2)

end A291307

/-! ## A291307.P8510821195652914884

`A064680(n+2-A089128(n+2))`
-/

namespace A291307.P8510821195652914884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 ((n + 2 : ℤ) - A089128 (n + 2)).toNat

end

end A291307.P8510821195652914884

namespace A291307

/-- `A064680(n+2-A089128(n+2))` -/
def P8510821195652914884.Spec : Prop :=
  ∀ n, P8510821195652914884.a n = A291307 (n + 2)

end A291307

/-! ## A291307.P3441321122050100181

`A047286(A047268(n+1))-A047239(n+1)`
-/

namespace A291307.P3441321122050100181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047286 (A047268 (n + 1)).toNat - A047239 (n + 1)

end

end A291307.P3441321122050100181

namespace A291307

/-- `A047286(A047268(n+1))-A047239(n+1)` -/
def P3441321122050100181.Spec : Prop :=
  ∀ n, P3441321122050100181.a n = A291307 (n + 2)

end A291307

/-! ## A291307.P5085898707403433459

`A300068(n+1)-A300067(A174256(n+1))`
-/

namespace A291307.P5085898707403433459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300068 (n + 1) - A300067 (A174256 (n + 1)).toNat

end

end A291307.P5085898707403433459

namespace A291307

/-- `A300068(n+1)-A300067(A174256(n+1))` -/
def P5085898707403433459.Spec : Prop :=
  ∀ n, P5085898707403433459.a n = A291307 (n + 2)

end A291307

/-!
# A291308: The arithmetic function v_6(n,3).

The programs for A291308, there is no canonical definition to state claims against.
-/

/-! ## A291308.P2665538746243478279

`A060144(n+3)-A106276(A035959(n))`
-/

namespace A291308.P2665538746243478279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (n + 3) - A106276 (A035959 n).toNat

end

end A291308.P2665538746243478279

/-!
# A291309: The arithmetic function v_6(n,4).

The programs for A291309, there is no canonical definition to state claims against.
-/

/-! ## A291309.P5561464810337923937

`A065033(A300763(3*(n+1)))-A001826(A032575(n+1))`
-/

namespace A291309.P5561464810337923937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A300763 (3 * (n + 1))).toNat - A001826 (A032575 (n + 1)).toNat

end

end A291309.P5561464810337923937

/-!
# A291311: Expansion of (1-x^2)/((1-x-x^2)*(1-x-x^4)).

The programs for A291311, the canonical program `A291311.P14713520640465878024` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291311 has offset 0).

The definition of A291311 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-2x+x^3-x^4+x^5+x^6))` (program `A291311.P14713520640465878024`, by `A291311.P14713520640465878024.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A291311.P14713520640465878024

`ogf((1-x^2)/(1-2x+x^3-x^4+x^5+x^6))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291311

/-- `ogf((1-x^2)/(1-2x+x^3-x^4+x^5+x^6))` -/
def P14713520640465878024.Spec : Prop :=
  ∀ n, P14713520640465878024.a n = A291311 n

theorem P14713520640465878024.correct : P14713520640465878024.Spec := by
  intro n
  simp only [A291311]

end A291311

/-! ## A291311.P2804897331601804404

`A020695(n)-A003269(n+3)`
-/

namespace A291311.P2804897331601804404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - A003269 (n + 3)

end

end A291311.P2804897331601804404

namespace A291311

/-- `A020695(n)-A003269(n+3)` -/
def P2804897331601804404.Spec : Prop :=
  ∀ n, P2804897331601804404.a n = A291311 n

end A291311

/-! ## A291311.P2300308658046496528

`A020695(n)-A017898(n+6)`
-/

namespace A291311.P2300308658046496528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - A017898 (n + 6)

end

end A291311.P2300308658046496528

namespace A291311

/-- `A020695(n)-A017898(n+6)` -/
def P2300308658046496528.Spec : Prop :=
  ∀ n, P2300308658046496528.a n = A291311 n

end A291311

/-! ## A291311.P3796712730244299666

`record[A324969(n+1)-A003269(n)]`
-/

namespace A291311.P3796712730244299666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 1) - A003269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291311.P3796712730244299666

namespace A291311

/-- `record[A324969(n+1)-A003269(n)]` -/
def P3796712730244299666.Spec : Prop :=
  ∀ n, P3796712730244299666.a n = A291311 n

end A291311

/-! ## A291311.P1000011553565111262

`A001911(n)+2-A003269(n+3)`
-/

namespace A291311.P1000011553565111262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n + 2 - A003269 (n + 3)

end

end A291311.P1000011553565111262

namespace A291311

/-- `A001911(n)+2-A003269(n+3)` -/
def P1000011553565111262.Spec : Prop :=
  ∀ n, P1000011553565111262.a n = A291311 n

end A291311

/-! ## A291311.P4864938715277802393

`A000045(n+3)-A003269(n+3)`
-/

namespace A291311.P4864938715277802393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) - A003269 (n + 3)

end

end A291311.P4864938715277802393

namespace A291311

/-- `A000045(n+3)-A003269(n+3)` -/
def P4864938715277802393.Spec : Prop :=
  ∀ n, P4864938715277802393.a n = A291311 n

end A291311

/-! ## A291311.P5701842042357727157

`record[A000045(A028310(n))-A003269(n)]`
-/

namespace A291311.P5701842042357727157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A028310 n).toNat - A003269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291311.P5701842042357727157

namespace A291311

/-- `record[A000045(A028310(n))-A003269(n)]` -/
def P5701842042357727157.Spec : Prop :=
  ∀ n, P5701842042357727157.a n = A291311 n

end A291311

/-!
# A291312: Numbers that contain exactly one pair of identical digits x and a triple of identical digits y (x not equal y).

The programs for A291312, there is no canonical definition to state claims against.
-/

/-! ## A291312.P17811637876057501015

`A007088(eq[12, A136494(n)])`
-/

namespace A291312.P17811637876057501015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291312.P17811637876057501015

/-! ## A291312.P14113142648406325938

`A007088(eq[21, A164884(n)])`
-/

namespace A291312.P14113142648406325938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291312.P14113142648406325938

/-! ## A291312.P17359684203311044819

`A239236(A239218(n+2)+10)`
-/

namespace A291312.P17359684203311044819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239236 (A239218 (n + 2) + 10).toNat

end

end A291312.P17359684203311044819

/-! ## A291312.P6235784880186063137

`A239236(A113587(n+1)+1+n)`
-/

namespace A291312.P6235784880186063137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239236 (A113587 (n + 1) + 1 + (n : ℤ)).toNat

end

end A291312.P6235784880186063137

/-!
# A291313: G.f. A(x) satisfies: A(2*A(x)^2 - 16*A(x)^3) = 2*x^2.

The programs for A291313, there is no canonical definition to state claims against.
-/

/-! ## A291313.P5480687629075474240

`A000010(or(1, A174795(2*n+1)))`
-/

namespace A291313.P5480687629075474240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lor 1 (A174795 (2 * n + 1))).toNat

end

end A291313.P5480687629075474240

/-!
# A291314: G.f. A(x) satisfies: A( 2*A(x)^2 - 8*A(x)^3 ) = 2*x^2.

The programs for A291314, there is no canonical definition to state claims against.
-/

/-! ## A291314.P93282988931934719

`A006949(A249921(n)+1)`
-/

namespace A291314.P93282988931934719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 (A249921 n + 1).toNat

end

end A291314.P93282988931934719

/-! ## A291314.P7809593533930479802

`record[and(A280994(n+1)!, A330624(n))]`
-/

namespace A291314.P7809593533930479802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (A280994 (n + 1)).toNat : ℤ) (A330624 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291314.P7809593533930479802

/-!
# A291315: G.f. A(x) satisfies: A( 3*A(x)^3 - 27*A(x)^4 ) = 3*x^3.

The programs for A291315, there is no canonical definition to state claims against.
-/

/-! ## A291315.P944823335797766430

`A094511(A283298(n)+A000267(n))`
-/

namespace A291315.P944823335797766430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094511 (A283298 n + A000267 n).toNat

end

end A291315.P944823335797766430

/-!
# A291316: Expansion of x/(1-x) + x^4*(1-x)/(1-x^3) + x^7*(1-x)*(1-x^3)/(1-x^5) + ... in powers of x.

The programs for A291316, there is no canonical definition to state claims against.
-/

/-! ## A291316.P7034923414785825219

`A008443(n+1)-A290735(n+1)`
-/

namespace A291316.P7034923414785825219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008443 (n + 1) - A290735 (n + 1)

end

end A291316.P7034923414785825219

/-! ## A291316.P13972595814956858375

`A290737(n+1)-A143064(n+1)`
-/

namespace A291316.P13972595814956858375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290737 (n + 1) - A143064 (n + 1)

end

end A291316.P13972595814956858375

/-! ## A291316.P4137145482833560911

`∑[-Δ[A143064(n)-A290737(n)]]`
-/

namespace A291316.P4137145482833560911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143064 n - A290737 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291316.P4137145482833560911

/-! ## A291316.P7712694545661623147

`A290739(n+1)+A290737(n+1)`
-/

namespace A291316.P7712694545661623147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290739 (n + 1) + A290737 (n + 1)

end

end A291316.P7712694545661623147

/-! ## A291316.P8630443582275444416

`∑[A000035(2*n)-Δ[A143064(n)-A290737(n)]]`
-/

namespace A291316.P8630443582275444416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143064 n - A290737 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291316.P8630443582275444416

/-!
# A291317: A variation of the Josephus problem: a(n) is the surviving integer under the following elimination process. Arrange 1,2,3,...,n in a circle, increasing clockwise. Starting with i=1, at k-th stage, move k places clockwise and delete the current number.

The programs for A291317, there is no canonical definition to state claims against.
-/

/-! ## A291317.P7440578612199588865

`A007495(n+3)-1`
-/

namespace A291317.P7440578612199588865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007495 (n + 3) - 1

end

end A291317.P7440578612199588865

/-! ## A291317.P1982120827781292930

`A023443(A007495(n+3))`
-/

namespace A291317.P1982120827781292930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A007495 (n + 3)).toNat

end

end A291317.P1982120827781292930

/-! ## A291317.P11231701706933246661

`A000720(p?[A008578(A007495(n+1))])`
-/

namespace A291317.P11231701706933246661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A007495 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A291317.P11231701706933246661

/-! ## A291317.P7069845001718016045

`A033880(A006519(n+1))+A007495(n+3)`
-/

namespace A291317.P7069845001718016045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A006519 (n + 1)).toNat + A007495 (n + 3)

end

end A291317.P7069845001718016045

/-! ## A291317.P8684235416897344922

`A056239(p?[A008578(A007495(n+1))])`
-/

namespace A291317.P8684235416897344922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A007495 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A291317.P8684235416897344922

/-! ## A291317.P5223485744304190038

`A198789(∑[4*(n+1)])`
-/

namespace A291317.P5223485744304190038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198789 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291317.P5223485744304190038

/-! ## A291317.P653362510361099206

`A198788(A167614(2*n+1)+n)`
-/

namespace A291317.P653362510361099206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198788 (A167614 (2 * n + 1) + (n : ℤ)).toNat

end

end A291317.P653362510361099206

/-! ## A291317.P15517217456483475778

`A198788(2*(n+3)²)`
-/

namespace A291317.P15517217456483475778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198788 (2 * (n + 3) ^ 2)

end

end A291317.P15517217456483475778

/-!
# A291318: Semiprimes of the form p*q such that p+q-1 is prime.

The programs for A291318, there is no canonical definition to state claims against.
-/

/-! ## A291318.P2985443481782196220

`eq[2, A001222(n*a(A107463(n)-1))]` with `a(0)=1, a(1)=17, a(2)=3`
-/

namespace A291318.P2985443481782196220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 17, 3] fun n f2 =>
  A001222 ((n : ℤ) * f2 (A107463 n - 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291318.P2985443481782196220

/-! ## A291318.P8833638086073603147

`record[A001358(n+1)/A064918(A001358(n+1))]`
-/

namespace A291318.P8833638086073603147
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001358 (n + 1) : ℚ) / (A064918 (A001358 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291318.P8833638086073603147

/-! ## A291318.P6500924248353119279

`eq[2, A033273(n*a(A107463(n)-1))]` with `a(0)=1, a(1)=5`
-/

namespace A291318.P6500924248353119279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f2 =>
  A033273 ((n : ℤ) * f2 (A107463 n - 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291318.P6500924248353119279

/-! ## A291318.P445304485502639857

`record[A050530(n+1)/A347119(A005897(3*(n+1))+1)]`
-/

namespace A291318.P445304485502639857
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050530 (n + 1) : ℚ) / (A347119 (A005897 (3 * (n + 1)) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291318.P445304485502639857

/-! ## A291318.P4098677855361443702

`∩[A050530(n+1), A309066(n+1)]`
-/

namespace A291318.P4098677855361443702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291318.P4098677855361443702

/-!
# A291319: Squarefree triprimes of the form p*q*r such that p+q+r-1 is prime.

The programs for A291319, there is no canonical definition to state claims against.
-/

/-! ## A291319.P12049783007044512237

`2*A290435(n+1)`
-/

namespace A291319.P12049783007044512237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A290435 (n + 1)

end

end A291319.P12049783007044512237

/-! ## A291319.P11404100828591365532

`∑{e}[A290435(n+1), A290435(#+n)]`
-/

namespace A291319.P11404100828591365532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A290435 (Nat.factorization (f1 n).natAbs p + n)

end

end A291319.P11404100828591365532

/-! ## A291319.P16744865828125330249

`A290435(A000027(n+1))+A290435(n+1)`
-/

namespace A291319.P16744865828125330249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290435 (A000027 (n + 1)).toNat + A290435 (n + 1)

end

end A291319.P16744865828125330249

/-! ## A291319.P9985506386745598483

`A290435(n+1)+A290435((n+1)%A000040(n+1))`
-/

namespace A291319.P9985506386745598483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290435 (n + 1) + A290435 (Int.tmod (n + 1 : ℤ) (A000040 (n + 1))).toNat

end

end A291319.P9985506386745598483

/-! ## A291319.P10776777901103337554

`2*∩[A037020(n+1), A046388(n+1)]`
-/

namespace A291319.P10776777901103337554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291319.P10776777901103337554

/-! ## A291319.P4636874992150508585

`2*∩[A046388(n+1), A308150(n+1)]`
-/

namespace A291319.P4636874992150508585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291319.P4636874992150508585

/-! ## A291319.P9248487100922355305

`2*∩[A037020(n+1), A046315(n+1)]`
-/

namespace A291319.P9248487100922355305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291319.P9248487100922355305

/-! ## A291319.P4201115301201577414

`2*∩[A056913(n+1), A290434(n+1)]`
-/

namespace A291319.P4201115301201577414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291319.P4201115301201577414

/-! ## A291319.P6664805205580752730

`2*∩[A006881(n+1), A037020(n+1)]`
-/

namespace A291319.P6664805205580752730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291319.P6664805205580752730

/-! ## A291319.P12485015914418134705

`2*∩[A006881(n+1), A290434(n+1)]`
-/

namespace A291319.P12485015914418134705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291319.P12485015914418134705

/-! ## A291319.P143665002799409619

`2*∩[A006881(n+1), A308150(n+1)]`
-/

namespace A291319.P143665002799409619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291319.P143665002799409619

/-! ## A291319.P1386649338716734689

`2*∩[A037020(n+1), A068993(n+1)]`
-/

namespace A291319.P1386649338716734689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291319.P1386649338716734689

/-! ## A291319.P7306237319463741876

`2*∩[A007422(n+1), A290434(n+1)]`
-/

namespace A291319.P7306237319463741876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291319.P7306237319463741876

/-! ## A291319.P4689419486749079545

`2*∩[A030513(n+1), A290434(n+1)]`
-/

namespace A291319.P4689419486749079545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291319.P4689419486749079545

/-! ## A291319.P2238312888718241158

`2*∩[A068993(n+1), A290434(n+1)]`
-/

namespace A291319.P2238312888718241158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291319.P2238312888718241158

/-! ## A291319.P16852838077152545886

`2*∩[A290434(n+1), A325230(n+1)]`
-/

namespace A291319.P16852838077152545886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291319.P16852838077152545886

/-! ## A291319.P529483476974834489

`2*∩[A024556(n+1), A290434(n+1)]`
-/

namespace A291319.P529483476974834489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291319.P529483476974834489

/-! ## A291319.P11323152294539125754

`2*∩[A030229(n+1), A290434(n+1)]`
-/

namespace A291319.P11323152294539125754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291319.P11323152294539125754

/-! ## A291319.P8094759859422574069

`2*∩[A065985(n+1), A290434(n+1)]`
-/

namespace A291319.P8094759859422574069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291319.P8094759859422574069

/-! ## A291319.P6787356681847091877

`2*∩[A176525(n+1), A290434(n+1)]`
-/

namespace A291319.P6787356681847091877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291319.P6787356681847091877

/-!
# A291323: The arithmetic function v+-(n,4).

The programs for A291323, there is no canonical definition to state claims against.
-/

/-! ## A291323.P1804898987128188314

`A290988(n+2)-A112765(A007865(n))`
-/

namespace A291323.P1804898987128188314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290988 (n + 2) - A112765 (A007865 n).toNat

end

end A291323.P1804898987128188314

/-! ## A291323.P16169145957026451183

`A008611(A027656(n)-1+n)-A112765(A007865(n))`
-/

namespace A291323.P16169145957026451183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A027656 n - 1 + (n : ℤ)).toNat - A112765 (A007865 n).toNat

end

end A291323.P16169145957026451183

/-! ## A291323.P5805850230967154042

`A289439(n+2)+A122840(A006498(n))-A316866(n)`
-/

namespace A291323.P5805850230967154042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289439 (n + 2) + (A122840 (A006498 n).toNat - A316866 n)

end

end A291323.P5805850230967154042

/-! ## A291323.P6441660120578357873

`A242112(n)-(1-A093718(n))²-A112765(A007865(n))`
-/

namespace A291323.P6441660120578357873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 n - (1 - A093718 n) ^ 2 - A112765 (A007865 n).toNat

end

end A291323.P6441660120578357873

/-! ## A291323.P5128762027007952434

`A289439(n+2)+A122840(A006498(n))-A102683(n+4)`
-/

namespace A291323.P5128762027007952434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289439 (n + 2) + A122840 (A006498 n).toNat - A102683 (n + 4)

end

end A291323.P5128762027007952434

/-!
# A291324: The arithmetic function v+-(n,5).

The programs for A291324, there is no canonical definition to state claims against.
-/

/-! ## A291324.P13841561343601831398

`A289439(n+2)-(A316866(n)+A122840(A006498(n)))`
-/

namespace A291324.P13841561343601831398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289439 (n + 2) - (A316866 n + A122840 (A006498 n).toNat)

end

end A291324.P13841561343601831398

/-! ## A291324.P8812804958124898010

`lcm(A291326(n+2), A337006(A276466(n+1)))`
-/

namespace A291324.P8812804958124898010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A291326 (n + 2)) (A337006 (A276466 (n + 1)).toNat)

end

end A291324.P8812804958124898010

/-! ## A291324.P6709431074443216337

`or(A060654(n+2), A334107(A344592(n+1)))`
-/

namespace A291324.P6709431074443216337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060654 (n + 2)) (A334107 (A344592 (n + 1)).toNat)

end

end A291324.P6709431074443216337

/-! ## A291324.P10734027521049205911

`A291326(n+2)+A206499(A114512(n))`
-/

namespace A291324.P10734027521049205911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291326 (n + 2) + A206499 (A114512 n).toNat

end

end A291324.P10734027521049205911

/-! ## A291324.P10180280657241397723

`A193739(A059108(n))*A291326(n+2)`
-/

namespace A291324.P10180280657241397723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A059108 n).toNat * A291326 (n + 2)

end

end A291324.P10180280657241397723

/-!
# A291325: The arithmetic function v+-(n,6).

The programs for A291325, there is no canonical definition to state claims against.
-/

/-! ## A291325.P8197857654051377218

`A291326(n+2)+A345725(n+1)%A003643(n+1)`
-/

namespace A291325.P8197857654051377218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291326 (n + 2) + Int.tmod (A345725 (n + 1)) (A003643 (n + 1))

end

end A291325.P8197857654051377218

/-! ## A291325.P277083599736648210

`A291326(A097479(n)+2+n)`
-/

namespace A291325.P277083599736648210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291326 (A097479 n + 2 + (n : ℤ)).toNat

end

end A291325.P277083599736648210

/-! ## A291325.P1049830494320111822

`A291326(n+2)+A000007(A094024(n))`
-/

namespace A291325.P1049830494320111822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291326 (n + 2) + A000007 (A094024 n).toNat

end

end A291325.P1049830494320111822

/-! ## A291325.P17855315421119088594

`A291326(n+2)%A341212(A000041(n))`
-/

namespace A291325.P17855315421119088594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291326 (n + 2)) (A341212 (A000041 n).toNat)

end

end A291325.P17855315421119088594

/-! ## A291325.P12021479328835719749

`A291326(n+2)+A000007(A291350(n+1))`
-/

namespace A291325.P12021479328835719749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291326 (n + 2) + A000007 (A291350 (n + 1)).toNat

end

end A291325.P12021479328835719749

/-!
# A291326: The arithmetic function v+-(n,7).

The programs for A291326, there is no canonical definition to state claims against.
-/

/-! ## A291326.P15330632691687787218

`A291325(n+2)-A345725(n+1)%A003643(n+1)`
-/

namespace A291326.P15330632691687787218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291325 (n + 2) - Int.tmod (A345725 (n + 1)) (A003643 (n + 1))

end

end A291326.P15330632691687787218

/-!
# A291327: The arithmetic function v+-(n,8).

The programs for A291327, there is no canonical definition to state claims against.
-/

/-! ## A291327.P9379392519897093392

`or(A024362(A225900(n+1)), A291328(n+2))`
-/

namespace A291327.P9379392519897093392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024362 (A225900 (n + 1)).toNat) (A291328 (n + 2))

end

end A291327.P9379392519897093392

/-! ## A291327.P5487468851402706258

`or(A024362(A225900(n+1)), A291329(n+2))`
-/

namespace A291327.P5487468851402706258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024362 (A225900 (n + 1)).toNat) (A291329 (n + 2))

end

end A291327.P5487468851402706258

/-! ## A291327.P5679477248852540254

`or(A080843(A282481(n+1)), A291329(n+2))`
-/

namespace A291327.P5679477248852540254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080843 (A282481 (n + 1)).toNat) (A291329 (n + 2))

end

end A291327.P5679477248852540254

/-! ## A291327.P7529194086345916729

`or(A173920(A213272(n+1)), A291328(n+2))`
-/

namespace A291327.P7529194086345916729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A173920 (A213272 (n + 1)).toNat) (A291328 (n + 2))

end

end A291327.P7529194086345916729

/-! ## A291327.P14251240737646431730

`or(A173920(A213272(n+1)), A291329(n+2))`
-/

namespace A291327.P14251240737646431730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A173920 (A213272 (n + 1)).toNat) (A291329 (n + 2))

end

end A291327.P14251240737646431730

/-!
# A291328: The arithmetic function v+-(n,9).

The programs for A291328, there is no canonical definition to state claims against.
-/

/-! ## A291328.P17680186755050209388

`A291329(n+2)%A291360(n+1)`
-/

namespace A291328.P17680186755050209388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291329 (n + 2)) (A291360 (n + 1))

end

end A291328.P17680186755050209388

/-! ## A291328.P12352152264712080908

`A291329(n+2)+A101605(A289220(n+1))`
-/

namespace A291328.P12352152264712080908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291329 (n + 2) + A101605 (A289220 (n + 1)).toNat

end

end A291328.P12352152264712080908

/-! ## A291328.P6840795321892907002

`A291329(n+2)+A000007(A291345(n+3))`
-/

namespace A291328.P6840795321892907002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291329 (n + 2) + A000007 (A291345 (n + 3)).toNat

end

end A291328.P6840795321892907002

/-! ## A291328.P8981668242706004024

`A014963(A264354(n+2))*A291329(n+2)`
-/

namespace A291328.P8981668242706004024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A264354 (n + 2)).toNat * A291329 (n + 2)

end

end A291328.P8981668242706004024

/-! ## A291328.P6331138140854423367

`A255852(A291306(n+2))*A291329(n+2)`
-/

namespace A291328.P6331138140854423367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255852 (A291306 (n + 2)).toNat * A291329 (n + 2)

end

end A291328.P6331138140854423367

/-!
# A291330: The arithmetic function v_4(n,1).

The programs for A291330, the canonical program `A291330.P8581692806595276126` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291330 has offset 2).

The definition of A291330 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291330.P8581692806595276126

`n+2-gcd(n+2, 4)`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291330

/-- `n+2-gcd(n+2, 4)` -/
def P8581692806595276126.Spec : Prop :=
  ∀ n, P8581692806595276126.a n = A291330 (n + 2)

theorem P8581692806595276126.correct : P8581692806595276126.Spec := by
  intro n
  simp only [A291330, Nat.add_sub_cancel]

end A291330

/-! ## A291330.P1177284132027636435

`n+2-A109008(n+2)`
-/

namespace A291330.P1177284132027636435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A109008 (n + 2)

end

end A291330.P1177284132027636435

namespace A291330

/-- `n+2-A109008(n+2)` -/
def P1177284132027636435.Spec : Prop :=
  ∀ n, P1177284132027636435.a n = A291330 (n + 2)

end A291330

/-! ## A291330.P2021070099928658246

`and(n+1, -gcd(2, n)²)`
-/

namespace A291330.P2021070099928658246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(Nat.gcd 2 n ^ 2 : ℤ))

end

end A291330.P2021070099928658246

namespace A291330

/-- `and(n+1, -gcd(2, n)²)` -/
def P2021070099928658246.Spec : Prop :=
  ∀ n, P2021070099928658246.a n = A291330 (n + 2)

end A291330

/-! ## A291330.P12058543708595214470

`a(n-4)+4` with `a(0)=0, a(1)=2, a(2)=0, a(3)=4`
-/

namespace A291330.P12058543708595214470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 0, 4] fun n a =>
  a (n - 4) + 4

end

end A291330.P12058543708595214470

namespace A291330

/-- `a(n-4)+4` -/
def P12058543708595214470.Spec : Prop :=
  ∀ n, (P12058543708595214470.a n : ℤ) = A291330 (n + 2)

end A291330

/-! ## A291330.P16209467460068342397

`and(n+1, -(and(2, n)+2))`
-/

namespace A291330.P16209467460068342397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(Nat.land 2 n + 2 : ℤ))

end

end A291330.P16209467460068342397

namespace A291330

/-- `and(n+1, -(and(2, n)+2))` -/
def P16209467460068342397.Spec : Prop :=
  ∀ n, P16209467460068342397.a n = A291330 (n + 2)

end A291330

/-! ## A291330.P1805131560240571748

`xor(and(2, n+1), ∑[and(2, n)])`
-/

namespace A291330.P1805131560240571748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.land 2 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291330.P1805131560240571748

namespace A291330

/-- `xor(and(2, n+1), ∑[and(2, n)])` -/
def P1805131560240571748.Spec : Prop :=
  ∀ n, (P1805131560240571748.a n : ℤ) = A291330 (n + 2)

end A291330

/-! ## A291330.P777334303525955812

`n+1-and(3, Δ[∑[n]²])`
-/

namespace A291330.P777334303525955812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.land 3 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A291330.P777334303525955812

namespace A291330

/-- `n+1-and(3, Δ[∑[n]²])` -/
def P777334303525955812.Spec : Prop :=
  ∀ n, P777334303525955812.a n = A291330 (n + 2)

end A291330

/-! ## A291330.P7952775002812646462

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=2, a(2)=-2, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A291330.P7952775002812646462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, -2, 4] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291330.P7952775002812646462

namespace A291330

/-- `∑[floor(a(n-4))]` -/
def P7952775002812646462.Spec : Prop :=
  ∀ n, P7952775002812646462.a n = A291330 (n + 2)

end A291330

/-! ## A291330.P9784035961067388116

`n+1-((n+1)^3)%4`
-/

namespace A291330.P9784035961067388116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (((n + 1) ^ 3 % 4 : ℕ) : ℤ)

end

end A291330.P9784035961067388116

namespace A291330

/-- `n+1-((n+1)^3)%4` -/
def P9784035961067388116.Spec : Prop :=
  ∀ n, P9784035961067388116.a n = A291330 (n + 2)

end A291330

/-! ## A291330.P10954347905772350556

`and(n+1, (n+2)%4-4)`
-/

namespace A291330.P10954347905772350556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((((n + 2) % 4 : ℕ) : ℤ) - 4)

end

end A291330.P10954347905772350556

namespace A291330

/-- `and(n+1, (n+2)%4-4)` -/
def P10954347905772350556.Spec : Prop :=
  ∀ n, P10954347905772350556.a n = A291330 (n + 2)

end A291330

/-! ## A291330.P11712914960620060532

`and(n+1, 2*(and(1, n)-2))`
-/

namespace A291330.P11712914960620060532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (2 * ((Nat.land 1 n : ℤ) - 2))

end

end A291330.P11712914960620060532

namespace A291330

/-- `and(n+1, 2*(and(1, n)-2))` -/
def P11712914960620060532.Spec : Prop :=
  ∀ n, P11712914960620060532.a n = A291330 (n + 2)

end A291330

/-! ## A291330.P3876601095744123239

`and(n+1, and(2, n+2)-4)`
-/

namespace A291330.P3876601095744123239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((Nat.land 2 (n + 2) : ℤ) - 4)

end

end A291330.P3876601095744123239

namespace A291330

/-- `and(n+1, and(2, n+2)-4)` -/
def P3876601095744123239.Spec : Prop :=
  ∀ n, P3876601095744123239.a n = A291330 (n + 2)

end A291330

/-! ## A291330.P8469072521792284649

`xor(n+1, ((n+1)^5)%4)`
-/

namespace A291330.P8469072521792284649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) ((n + 1) ^ 5 % 4)

end

end A291330.P8469072521792284649

namespace A291330

/-- `xor(n+1, ((n+1)^5)%4)` -/
def P8469072521792284649.Spec : Prop :=
  ∀ n, (P8469072521792284649.a n : ℤ) = A291330 (n + 2)

end A291330

/-! ## A291330.P4113061574369484091

`lcm(2, n+1)%or(2, n+2)`
-/

namespace A291330.P4113061574369484091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1) % Nat.lor 2 (n + 2)

end

end A291330.P4113061574369484091

namespace A291330

/-- `lcm(2, n+1)%or(2, n+2)` -/
def P4113061574369484091.Spec : Prop :=
  ∀ n, (P4113061574369484091.a n : ℤ) = A291330 (n + 2)

end A291330

/-! ## A291330.P5613425975501234914

`xor(n+1, and(3, (n+1)^3))`
-/

namespace A291330.P5613425975501234914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (Nat.land 3 ((n + 1) ^ 3))

end

end A291330.P5613425975501234914

namespace A291330

/-- `xor(n+1, and(3, (n+1)^3))` -/
def P5613425975501234914.Spec : Prop :=
  ∀ n, (P5613425975501234914.a n : ℤ) = A291330 (n + 2)

end A291330

/-! ## A291330.P11173358646207858333

`2-(gcd(2-n, 2*n)-n)`
-/

namespace A291330.P11173358646207858333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Int.gcd (2 - (n : ℤ)) (2 * n : ℤ) : ℤ) - (n : ℤ))

end

end A291330.P11173358646207858333

namespace A291330

/-- `2-(gcd(2-n, 2*n)-n)` -/
def P11173358646207858333.Spec : Prop :=
  ∀ n, P11173358646207858333.a n = A291330 (n + 2)

end A291330

/-! ## A291330.P7721496748711046192

`∑[(-1)^∑[n]]+n-(-1)^n`
-/

namespace A291330.P7721496748711046192
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) - (-1) ^ n

end

end A291330.P7721496748711046192

namespace A291330

/-- `∑[(-1)^∑[n]]+n-(-1)^n` -/
def P7721496748711046192.Spec : Prop :=
  ∀ n, P7721496748711046192.a n = A291330 (n + 2)

end A291330

/-! ## A291330.P1453449142154447890

`∑[1-3/(1-a(n-2))]` with `a(0)=0, a(1)=2`
-/

namespace A291330.P1453449142154447890
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  1 - 3 / (1 - f1 (n - 2))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291330.P1453449142154447890

namespace A291330

/-- `∑[1-3/(1-a(n-2))]` -/
def P1453449142154447890.Spec : Prop :=
  ∀ n, P1453449142154447890.a n = (A291330 (n + 2) : ℚ)

end A291330

/-! ## A291330.P18288417451106550563

`2*A291271(n+2)`
-/

namespace A291330.P18288417451106550563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A291271 (n + 2)

end

end A291330.P18288417451106550563

namespace A291330

/-- `2*A291271(n+2)` -/
def P18288417451106550563.Spec : Prop :=
  ∀ n, P18288417451106550563.a n = A291330 (n + 2)

end A291330

/-! ## A291330.P4122376092207123182

`A201629(A080412(n))`
-/

namespace A291330.P4122376092207123182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 (A080412 n).toNat

end

end A291330.P4122376092207123182

namespace A291330

/-- `A201629(A080412(n))` -/
def P4122376092207123182.Spec : Prop :=
  ∀ n, P4122376092207123182.a n = A291330 (n + 2)

end A291330

/-!
# A291331: a(n) = [x^n] 1/(1 - 2^n*x/(1 - 4^n*x/(1 - 6^n*x/(1 - 8^n*x/(1 - 10^n*x/(1 - ...)))))), a continued fraction.

The programs for A291331, there is no canonical definition to state claims against.
-/

/-! ## A291331.P5103093125941230195

`A291260(C(n+n+1, 2)+n)`
-/

namespace A291331.P5103093125941230195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291260 (Nat.choose (n + n + 1) 2 + n)

end

end A291331.P5103093125941230195

/-!
# A291332: a(n) = [x^n] 1/(1 - x/(1 - 3^n*x/(1 - 5^n*x/(1 - 7^n*x/(1 - 9^n*x/(1 - ...)))))), a continued fraction.

The programs for A291332, there is no canonical definition to state claims against.
-/

/-! ## A291332.P6309602417433331023

`A291261(C(n+n+1, 2)+n)`
-/

namespace A291332.P6309602417433331023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291261 (Nat.choose (n + n + 1) 2 + n)

end

end A291332.P6309602417433331023

/-!
# A291333: a(n) = [x^n] 1/(1 - x/(1 - 2^n*x/(1 - 3^n*x/(1 - 4^n*x/(1 - 5^n*x/(1 - ...)))))), a continued fraction.

The programs for A291333, there is no canonical definition to state claims against.
-/

/-! ## A291333.P3645503076509231360

`A290569(C(n+n+1, 2)+n)`
-/

namespace A291333.P3645503076509231360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290569 (Nat.choose (n + n + 1) 2 + n)

end

end A291333.P3645503076509231360

/-! ## A291333.P9647814840540373399

`A291331(n)/2^n²`
-/

namespace A291333.P9647814840540373399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291331 n : ℚ) / (2 ^ n ^ 2 : ℚ)

end

end A291333.P9647814840540373399

/-!
# A291334: Numbers with two or more digits such that every two consecutive digits are a square.

The programs for A291334, there is no canonical definition to state claims against.
-/

/-! ## A291334.P13115603396807703874

`A181500(A061991(n))+(n+4)²`
-/

namespace A291334.P13115603396807703874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181500 (A061991 n).toNat + ((n + 4) ^ 2 : ℤ)

end

end A291334.P13115603396807703874

/-! ## A291334.P16113825825588157341

`A089458(A000040(n+3))+(n+4)²`
-/

namespace A291334.P16113825825588157341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089458 (A000040 (n + 3)).toNat + ((n + 4) ^ 2 : ℤ)

end

end A291334.P16113825825588157341

/-! ## A291334.P7938107408222780262

`record[A080160(n+4)%A080201(n+1)]`
-/

namespace A291334.P7938107408222780262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080160 (n + 4)) (A080201 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291334.P7938107408222780262

/-!
# A291335: a(n) = [x^n] 1/(1 + n*x/(1 + n*x^2/(1 + n*x^3/(1 + n*x^4/(1 + n*x^5/(1 - ...)))))), a continued fraction.

The programs for A291335, there is no canonical definition to state claims against.
-/

/-! ## A291335.P4536728952233052816

`A286932(C(n+n+1, 2)+n)`
-/

namespace A291335.P4536728952233052816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286932 (Nat.choose (n + n + 1) 2 + n)

end

end A291335.P4536728952233052816

/-! ## A291335.P2870305373141410863

`A286932(∑[4*n])`
-/

namespace A291335.P2870305373141410863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286932 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291335.P2870305373141410863

/-!
# A291336: Number F(n,h,t) of forests of t unlabeled rooted trees with n vertices such that h is the maximum of 0 and the tree heights; triangle of triangles F(n,h,t), n>=0, h=0..n, t=0..n-h, read by layers, then by rows.

The programs for A291336, there is no canonical definition to state claims against.
-/

/-! ## A291336.P11320823798363583920

`A354579(A291204(n)*A354598(2*(n+5)))`
-/

namespace A291336.P11320823798363583920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 (A291204 n * A354598 (2 * (n + 5))).toNat

end

end A291336.P11320823798363583920

/-! ## A291336.P5375067030851632148

`ceil(A291203(n)/(A210062(n)+A185284(n)))`
-/

namespace A291336.P5375067030851632148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A291203 n : ℚ) / (A210062 n + A185284 n : ℚ)⌉

end

end A291336.P5375067030851632148

/-! ## A291336.P385864694918244771

`and(A139351(A291204(n)), A356097(3*n+4))`
-/

namespace A291336.P385864694918244771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139351 (A291204 n).toNat) (A356097 (3 * n + 4))

end

end A291336.P385864694918244771

/-! ## A291336.P10400521310140054656

`A037834(2^A291203(n))`
-/

namespace A291336.P10400521310140054656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A291203 n : ℤ))).toNat

end

end A291336.P10400521310140054656

/-! ## A291336.P4134109294094143261

`and(1, A004249(A291204(n)))`
-/

namespace A291336.P4134109294094143261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A004249 (A291204 n).toNat)

end

end A291336.P4134109294094143261

/-!
# A291337: p-INVERT of (1,1,1,1,1,...), where p(S) = 1 - 2 S - 2 S^3.

The programs for A291337, the canonical program `A291337.P17875069435717143750` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291337 has offset 0).

The definition of A291337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291337.P10956966049436922579

`ogf((1-2x+2x^2)/(1-5x+7x^2-5x^3))`
-/

namespace A291337.P10956966049436922579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2] [1, -5, 7, -5] n

end

end A291337.P10956966049436922579

namespace A291337

/-- `ogf((1-2x+2x^2)/(1-5x+7x^2-5x^3))` -/
def P10956966049436922579.Spec : Prop :=
  ∀ n, P10956966049436922579.a n = A291337 n

end A291337

/-! ## A291337.P17875069435717143750

`5*a(n-1)-7*a(n-2)+5*a(n-3)` with `a(0)=1, a(1)=3, a(2)=10`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291337

/-- `5*a(n-1)-7*a(n-2)+5*a(n-3)` -/
def P17875069435717143750.Spec : Prop :=
  ∀ n, P17875069435717143750.a n = A291337 n

theorem P17875069435717143750.correct : P17875069435717143750.Spec := by
  intro n
  simp only [A291337]

end A291337

/-! ## A291337.P16043968622206330584

`1/2*A291005(n)`
-/

namespace A291337.P16043968622206330584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A291005 n : ℚ)

end

end A291337.P16043968622206330584

namespace A291337

/-- `1/2*A291005(n)` -/
def P16043968622206330584.Spec : Prop :=
  ∀ n, P16043968622206330584.a n = (A291337 n : ℚ)

end A291337

/-! ## A291337.P7426479994952353471

`∑{#}[n, C(n, #)*A239333(#)]`
-/

namespace A291337.P7426479994952353471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A239333 k

end

end A291337.P7426479994952353471

namespace A291337

/-- `∑{#}[n, C(n, #)*A239333(#)]` -/
def P7426479994952353471.Spec : Prop :=
  ∀ n, P7426479994952353471.a n = A291337 n

end A291337

/-! ## A291337.P3475486831858652223

`A291005(n)/2`
-/

namespace A291337.P3475486831858652223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291005 n : ℚ) / 2

end

end A291337.P3475486831858652223

namespace A291337

/-- `A291005(n)/2` -/
def P3475486831858652223.Spec : Prop :=
  ∀ n, P3475486831858652223.a n = (A291337 n : ℚ)

end A291337

/-!
# A291338: Number of n X n X n triangular binary arrays symmetric under rotations of 120 degrees.

The programs for A291338, the canonical program `A291338.P9364716681200115723` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291338 has offset 1).

The definition of A291338 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291338.P9364716681200115723

`2^ceil((n+1)*(n+2)/6)`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291338

/-- `2^ceil((n+1)*(n+2)/6)` -/
def P9364716681200115723.Spec : Prop :=
  ∀ n, P9364716681200115723.a n = (A291338 (n + 1) : ℚ)

end A291338

/-! ## A291338.P17948738129202037952

`∏[2^∑[(-1)^(n%3)]]`
-/

namespace A291338.P17948738129202037952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A291338.P17948738129202037952

namespace A291338

/-- `∏[2^∑[(-1)^(n%3)]]` -/
def P17948738129202037952.Spec : Prop :=
  ∀ n, P17948738129202037952.a n = (A291338 (n + 1) : ℚ)

end A291338

/-! ## A291338.P4880530457999550532

`∏[2*a(n-3)]` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A291338.P4880530457999550532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2] fun n f1 =>
  2 * f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A291338.P4880530457999550532

namespace A291338

/-- `∏[2*a(n-3)]` -/
def P4880530457999550532.Spec : Prop :=
  ∀ n, (P4880530457999550532.a n : ℤ) = A291338 (n + 1)

end A291338

/-! ## A291338.P3174201376430272298

`2^n*a(n-3)` with `a(0)=2, a(1)=2, a(2)=4`
-/

namespace A291338.P3174201376430272298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 4] fun n a =>
  2 ^ n * a (n - 3)

end

end A291338.P3174201376430272298

namespace A291338

/-- `2^n*a(n-3)` -/
def P3174201376430272298.Spec : Prop :=
  ∀ n, (P3174201376430272298.a n : ℤ) = A291338 (n + 1)

end A291338

/-! ## A291338.P14057825388954038353

`a(n-3)/(1/2)^n` with `a(0)=2, a(1)=2, a(2)=4`
-/

namespace A291338.P14057825388954038353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 2, 4] fun n a =>
  a (n - 3) / ((1 : ℚ) / 2) ^ n

end

end A291338.P14057825388954038353

namespace A291338

/-- `a(n-3)/(1/2)^n` -/
def P14057825388954038353.Spec : Prop :=
  ∀ n, P14057825388954038353.a n = (A291338 (n + 1) : ℚ)

end A291338

/-!
# A291339: Primes p such that p^3*q^3 + p^3 + q^3 is prime, where q is the next prime after p.

The programs for A291339, there is no canonical definition to state claims against.
-/

/-! ## A291339.P6605526320736139071

`p?[∑[A329617(A278403(n+2))]]`
-/

namespace A291339.P6605526320736139071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329617 (A278403 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291339.P6605526320736139071

/-!
# A291342: Number of labeled graphs on n vertices that are first-player-winning in the game of Col.

The programs for A291342, there is no canonical definition to state claims against.
-/

/-! ## A291342.P10887432216459287994

`C(∑{e}[(2*n)!, #], n)-n`
-/

namespace A291342.P10887432216459287994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) n : ℤ) - (n : ℤ)

end

end A291342.P10887432216459287994

/-!
# A291343: Numbers k such that k!4 + 2^3 is prime, where k!4 = k!!!! is the quadruple factorial number (A007662).

The programs for A291343, there is no canonical definition to state claims against.
-/

/-! ## A291343.P13717813703123166287

`record[A309424(n+1)/A026519(3*n)]`
-/

namespace A291343.P13717813703123166287
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309424 (n + 1) : ℚ) / (A026519 (3 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291343.P13717813703123166287

/-! ## A291343.P13588678956286403122

`eq[A329313(2*n+3), A329313(A309279(n))]`
-/

namespace A291343.P13588678956286403122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (A309279 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291343.P13588678956286403122

/-! ## A291343.P878907215630602550

`eq[A065718(n), A226156(n)]`
-/

namespace A291343.P878907215630602550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065718 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226156 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291343.P878907215630602550

/-! ## A291343.P18310509683467367050

`eq[A065718(n), A227570(n)]`
-/

namespace A291343.P18310509683467367050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065718 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291343.P18310509683467367050

/-! ## A291343.P13750765615870842586

`eq[A065718(n), A227573(n)]`
-/

namespace A291343.P13750765615870842586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065718 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291343.P13750765615870842586

/-!
# A291344: Numbers k such that k!4 + 2^4 is prime, where k!4 = k!!!! is the quadruple factorial number (A007662).

The programs for A291344, there is no canonical definition to state claims against.
-/

/-! ## A291344.P5689328017983802889

`eq[A353415(3*n+2), A353458(A353438(n+1))]`
-/

namespace A291344.P5689328017983802889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353415 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353458 (A353438 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291344.P5689328017983802889

/-! ## A291344.P9628271035715571698

`or(A108161(n), A168184(n²²))`
-/

namespace A291344.P9628271035715571698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A108161 n) (A168184 ((n ^ 2) ^ 2))

end

end A291344.P9628271035715571698

/-! ## A291344.P10788740880270669799

`lt[A237271(A007932(3*n+1)+n²), 2]`
-/

namespace A291344.P10788740880270669799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A007932 (3 * n + 1) + (n ^ 2 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A291344.P10788740880270669799

/-! ## A291344.P13891774604432710328

`or(A019428(A067648(n)), A108161(n))`
-/

namespace A291344.P13891774604432710328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A019428 (A067648 n).toNat) (A108161 n)

end

end A291344.P13891774604432710328

/-! ## A291344.P16179824090546902380

`or(A057078(A049606(n)), A108161(n))`
-/

namespace A291344.P16179824090546902380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057078 (A049606 n).toNat) (A108161 n)

end

end A291344.P16179824090546902380

/-!
# A291345: Numbers k such that k!4 + 2^5 is prime, where k!4 = k!!!! is the quadruple factorial number (A007662).

The programs for A291345, there is no canonical definition to state claims against.
-/

/-! ## A291345.P17181022484798863831

`2*∑{e}[4^n, val(#!, 2)]+5`
-/

namespace A291345.P17181022484798863831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2) + 5

end

end A291345.P17181022484798863831

/-! ## A291345.P15370168470748546132

`∏{e}[xor(n, -n)*a(n-1), #+1]+1` with `a(0)=6`
-/

namespace A291345.P15370168470748546132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  Int.xor (n : ℤ) (-(n : ℤ)) * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) + 1

end

end A291345.P15370168470748546132

/-! ## A291345.P8612168192883090629

`A001414(∏[gcd(2*n, 2^n)])+5`
-/

namespace A291345.P8612168192883090629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (∏ j ∈ Finset.range (n + 1), f1 j) + 5

end

end A291345.P8612168192883090629

/-! ## A291345.P6534208487883679817

`A001414(A046161(n))+5`
-/

namespace A291345.P6534208487883679817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A046161 n).toNat + 5

end

end A291345.P6534208487883679817

/-! ## A291345.P9775148324250199031

`A372713(A101926(n))+1`
-/

namespace A291345.P9775148324250199031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372713 (A101926 n).toNat + 1

end

end A291345.P9775148324250199031

/-!
# A291346: a(n) = numbers that contain exactly four digits: three identical digits and another different digit.

The programs for A291346, there is no canonical definition to state claims against.
-/

/-! ## A291346.P9835432556882317164

`eq[4, A047726(A028310(n))]`
-/

namespace A291346.P9835432556882317164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291346.P9835432556882317164

/-! ## A291346.P17359445026723570971

`eq[6, A007318(A332550(n))]`
-/

namespace A291346.P17359445026723570971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A332550 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291346.P17359445026723570971

/-! ## A291346.P1211329178591227774

`eq[10, A007953(A139337(n))]`
-/

namespace A291346.P1211329178591227774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291346.P1211329178591227774

/-! ## A291346.P13320885707201338861

`lt[dr(A139337(n)), A055642(n)]`
-/

namespace A291346.P13320885707201338861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A139337 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A291346.P13320885707201338861

/-! ## A291346.P14511693034558675216

`lt[dr(A139337(n)), A107846(n)]`
-/

namespace A291346.P14511693034558675216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A139337 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A291346.P14511693034558675216

/-! ## A291346.P8818621496942798647

`A020725(eq[4, A047726(n+1)])`
-/

namespace A291346.P8818621496942798647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291346.P8818621496942798647

/-! ## A291346.P3182503915183039168

`∩[A001637(n+1), A210666(n+1)]`
-/

namespace A291346.P3182503915183039168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291346.P3182503915183039168

/-! ## A291346.P2536562151824578325

`∩[A210666(n+1), A280824(n+1)]`
-/

namespace A291346.P2536562151824578325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291346.P2536562151824578325

/-! ## A291346.P3808041417025750489

`eq[A107846(n), A275420(A332550(n))]`
-/

namespace A291346.P3808041417025750489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275420 (A332550 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291346.P3808041417025750489

/-! ## A291346.P251279926546812234

`lt[A178788(n), A008683(A332550(n))]`
-/

namespace A291346.P251279926546812234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A332550 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A291346.P251279926546812234

/-!
# A291350: Numbers k such that k!4 + 2^9 is prime, where k!4 = k!!!! is the quadruple factorial number (A007662).

The programs for A291350, there is no canonical definition to state claims against.
-/

/-! ## A291350.P426571325715494136

`2*n+7+A123065(A123081(n))`
-/

namespace A291350.P426571325715494136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 7 : ℤ) + A123065 (A123081 n).toNat

end

end A291350.P426571325715494136

/-! ## A291350.P9856656230440127352

`A158289(A049606(n))+A005843(n+4)`
-/

namespace A291350.P9856656230440127352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158289 (A049606 n).toNat + A005843 (n + 4)

end

end A291350.P9856656230440127352

/-! ## A291350.P9106593224816876575

`A151999(n+5)+A010209(A000108(n))`
-/

namespace A291350.P9106593224816876575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151999 (n + 5) + A010209 (A000108 n).toNat

end

end A291350.P9106593224816876575

/-! ## A291350.P289308778296971966

`A333939(A217654(n))+A151999(n+5)`
-/

namespace A291350.P289308778296971966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333939 (A217654 n).toNat + A151999 (n + 5)

end

end A291350.P289308778296971966

/-! ## A291350.P6909454974723618097

`lt[A055773(A113321(n+1)), A048817(n)]`
-/

namespace A291350.P6909454974723618097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055773 (A113321 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048817 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A291350.P6909454974723618097

/-!
# A291356: a(n) is the smallest k such that usigma(k) = A002110(n), or 0 if no such k exists.

The programs for A291356, there is no canonical definition to state claims against.
-/

/-! ## A291356.P17365368948569035976

`A289126(n+1)-A000038(A032013(n))`
-/

namespace A291356.P17365368948569035976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289126 (n + 1) - A000038 (A032013 n).toNat

end

end A291356.P17365368948569035976

/-! ## A291356.P3548970164489684589

`A289126(n+1)%A023194(A007716(n))`
-/

namespace A291356.P3548970164489684589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289126 (n + 1)) (A023194 (A007716 n).toNat)

end

end A291356.P3548970164489684589

/-! ## A291356.P18046465134170112823

`lcm(A049347(A001998(n)), A289126(n+1))`
-/

namespace A291356.P18046465134170112823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049347 (A001998 n).toNat) (A289126 (n + 1))

end

end A291356.P18046465134170112823

/-! ## A291356.P4111168674618014296

`and(A057077(A036675(n)), A289126(n+1))`
-/

namespace A291356.P4111168674618014296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057077 (A036675 n).toNat) (A289126 (n + 1))

end

end A291356.P4111168674618014296

/-! ## A291356.P14008125977805477183

`and(A057077(A198275(n)), A289126(n+1))`
-/

namespace A291356.P14008125977805477183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057077 (A198275 n).toNat) (A289126 (n + 1))

end

end A291356.P14008125977805477183

/-!
# A291357: The arithmetic function u(n,2,3).

The programs for A291357, the canonical program `A291357.P9299246095128266017` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291357 has offset 1).

The definition of A291357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291357.P9299246095128266017

`a(n%(1-a(a(n-2))))` with `a(0)=4, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291357

/-- `a(n%(1-a(a(n-2))))` -/
def P9299246095128266017.Spec : Prop :=
  ∀ n, (P9299246095128266017.a n : ℤ) = A291357 (n + 1)

theorem P9299246095128266017.correct : P9299246095128266017.Spec := by
  intro n
  simp only [A291357, Nat.add_sub_cancel]

end A291357

/-!
# A291358: The arithmetic function u(n,2,4).

The programs for A291358, the canonical program `A291358.P17655551082604329661` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291358 has offset 1).

The definition of A291358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291358.P17655551082604329661

`gcd(4, n%6)+1`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291358

/-- `gcd(4, n%6)+1` -/
def P17655551082604329661.Spec : Prop :=
  ∀ n, (P17655551082604329661.a n : ℤ) = A291358 (n + 1)

theorem P17655551082604329661.correct : P17655551082604329661.Spec := by
  intro n
  simp only [A291358, Nat.add_sub_cancel]

end A291358

/-!
# A291359: The arithmetic function u(n,2,5).

The programs for A291359, there is no canonical definition to state claims against.
-/

/-! ## A291359.P16882289186313857120

`A101272(A055942(n))`
-/

namespace A291359.P16882289186313857120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101272 (A055942 n).toNat

end

end A291359.P16882289186313857120

/-!
# A291360: Prime divisors of 2^720 - 1.

The programs for A291360, there is no canonical definition to state claims against.
-/

/-! ## A291360.P15872733676237867802

`p?[(2*n+3)*A265404(A265398(n+1))]`
-/

namespace A291360.P15872733676237867802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A265404 (A265398 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291360.P15872733676237867802

/-! ## A291360.P14517211950291353838

`p?[A265404(A265398(n+1))*A317107(n+2)]`
-/

namespace A291360.P14517211950291353838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265404 (A265398 (n + 1)).toNat * A317107 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A291360.P14517211950291353838

/-! ## A291360.P6461862278026259472

`A269326(A187829(n+1))`
-/

namespace A291360.P6461862278026259472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269326 (A187829 (n + 1)).toNat

end

end A291360.P6461862278026259472

/-! ## A291360.P8322254129843018997

`A269326(n+1)%A075978(n)`
-/

namespace A291360.P8322254129843018997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269326 (n + 1)) (A075978 n)

end

end A291360.P8322254129843018997

/-! ## A291360.P17575284115165546275

`A006530((2*A269326(n+1))²)`
-/

namespace A291360.P17575284115165546275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((2 * A269326 (n + 1)) ^ 2).toNat

end

end A291360.P17575284115165546275

/-!
# A291362: The arithmetic function u(n,2,7).

The programs for A291362, there is no canonical definition to state claims against.
-/

/-! ## A291362.P1452472806691575257

`A277781(A020639(n+1))/A020639(n+1)`
-/

namespace A291362.P1452472806691575257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277781 (A020639 (n + 1)).toNat : ℚ) / (A020639 (n + 1) : ℚ)

end

end A291362.P1452472806691575257

/-!
# A291363: The arithmetic function u(n,2,8).

The programs for A291363, there is no canonical definition to state claims against.
-/

/-! ## A291363.P9879789204610410222

`A291362(n+1)+C(A291362(n+1), 8)`
-/

namespace A291363.P9879789204610410222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291362 (n + 1) + (Nat.choose (A291362 (n + 1)).toNat 8 : ℤ)

end

end A291363.P9879789204610410222

/-!
# A291364: The arithmetic function u(n,3,3).

The programs for A291364, there is no canonical definition to state claims against.
-/

/-! ## A291364.P11617155724264902243

`A291567(A291370(n+1))`
-/

namespace A291364.P11617155724264902243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291567 (A291370 (n + 1)).toNat

end

end A291364.P11617155724264902243

/-!
# A291365: Number of closed Sturmian words of length n.

The programs for A291365, there is no canonical definition to state claims against.
-/

/-! ## A291365.P16143099758637857877

`∑[∑[A319997(n+1)]]+1`
-/

namespace A291365.P16143099758637857877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319997 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A291365.P16143099758637857877

/-! ## A291365.P499233430121242883

`∑[∑[2*A349444(n+1)]]`
-/

namespace A291365.P499233430121242883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A349444 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291365.P499233430121242883

/-! ## A291365.P17180383838520628659

`A014681(∑[∑[A319997(n+1)]])`
-/

namespace A291365.P17180383838520628659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319997 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291365.P17180383838520628659

/-! ## A291365.P13916604435690641778

`A015906(∑[∑[A319997(n+1)]])`
-/

namespace A291365.P13916604435690641778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319997 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291365.P13916604435690641778

/-! ## A291365.P4730720852370373198

`A020725(∑[∑[A319997(n+1)]])`
-/

namespace A291365.P4730720852370373198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319997 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291365.P4730720852370373198

/-!
# A291366: The arithmetic function u(n,3,4).

The programs for A291366, there is no canonical definition to state claims against.
-/

/-! ## A291366.P2454248107669463441

`A257779(A291369(n+1))`
-/

namespace A291366.P2454248107669463441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257779 (A291369 (n + 1)).toNat

end

end A291366.P2454248107669463441

/-!
# A291367: The arithmetic function u(n,3,5).

The programs for A291367, there is no canonical definition to state claims against.
-/

/-! ## A291367.P17906806184087129764

`A261423(A291369(n+1))`
-/

namespace A291367.P17906806184087129764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (A291369 (n + 1)).toNat

end

end A291367.P17906806184087129764

/-!
# A291368: The arithmetic function u(n,3,6).

The programs for A291368, there is no canonical definition to state claims against.
-/

/-! ## A291368.P7157042034073377486

`A031218(A291369(n+1))`
-/

namespace A291368.P7157042034073377486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (A291369 (n + 1)).toNat

end

end A291368.P7157042034073377486

/-! ## A291368.P8095270490534309479

`A291041(A291370(n+1))`
-/

namespace A291368.P8095270490534309479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291041 (A291370 (n + 1)).toNat

end

end A291368.P8095270490534309479

/-! ## A291368.P18034037277201841724

`2*A291369(n+1)-A291370(n+1)`
-/

namespace A291368.P18034037277201841724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A291369 (n + 1) - A291370 (n + 1)

end

end A291368.P18034037277201841724

/-! ## A291368.P7301092420253870898

`A291369(A008595(n+1))`
-/

namespace A291368.P7301092420253870898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291369 (A008595 (n + 1)).toNat

end

end A291368.P7301092420253870898

/-! ## A291368.P12938558716490893220

`A292269(lcm(26, ∏{p}[n+1, gcd(n+1, #²)]))`
-/

namespace A291368.P12938558716490893220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (Nat.lcm 26 (∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 2)))

end

end A291368.P12938558716490893220

/-!
# A291369: The arithmetic function u(n,3,7).

The programs for A291369, there is no canonical definition to state claims against.
-/

/-! ## A291369.P3682889079225294290

`A357434(A291370(n+1))`
-/

namespace A291369.P3682889079225294290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357434 (A291370 (n + 1)).toNat

end

end A291369.P3682889079225294290

/-! ## A291369.P8143182526511904628

`A291041(A291370(n+1)-2)+2`
-/

namespace A291369.P8143182526511904628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291041 (A291370 (n + 1) - 2).toNat + 2

end

end A291369.P8143182526511904628

/-! ## A291369.P10290662072452039993

`(A291370(n+1)+A291368(n+1))/2`
-/

namespace A291369.P10290662072452039993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291370 (n + 1) + A291368 (n + 1) : ℚ) / 2

end

end A291369.P10290662072452039993

/-! ## A291369.P8310222423048152610

`A004525(A291370(n+1)+A291368(n+1))`
-/

namespace A291369.P8310222423048152610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A291370 (n + 1) + A291368 (n + 1)).toNat

end

end A291369.P8310222423048152610

/-! ## A291369.P9905636011759436937

`A004526(A291370(n+1)+A291368(n+1))`
-/

namespace A291369.P9905636011759436937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A291370 (n + 1) + A291368 (n + 1)).toNat

end

end A291369.P9905636011759436937

/-! ## A291369.P17035700768323743641

`A291304(A291370(n+1)+A291368(n+1))`
-/

namespace A291369.P17035700768323743641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291304 (A291370 (n + 1) + A291368 (n + 1)).toNat

end

end A291369.P17035700768323743641

/-! ## A291369.P17301750422113916515

`A291323(A291370(n+1)+A291368(n+1))`
-/

namespace A291369.P17301750422113916515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291323 (A291370 (n + 1) + A291368 (n + 1)).toNat

end

end A291369.P17301750422113916515

/-! ## A291369.P149150544552983345

`A291324(A291370(n+1)+A291368(n+1))`
-/

namespace A291369.P149150544552983345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291324 (A291370 (n + 1) + A291368 (n + 1)).toNat

end

end A291369.P149150544552983345

/-! ## A291369.P5280299014539109226

`A291325(A291370(n+1)+A291368(n+1))`
-/

namespace A291369.P5280299014539109226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291325 (A291370 (n + 1) + A291368 (n + 1)).toNat

end

end A291369.P5280299014539109226

/-! ## A291369.P6157856962895238006

`A291328(A291370(n+1)+A291368(n+1))`
-/

namespace A291369.P6157856962895238006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291328 (A291370 (n + 1) + A291368 (n + 1)).toNat

end

end A291369.P6157856962895238006

/-! ## A291369.P17459807221463916364

`A000194(A291368(n+1)*A291370(n+1))`
-/

namespace A291369.P17459807221463916364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A291368 (n + 1) * A291370 (n + 1)).toNat

end

end A291369.P17459807221463916364

/-! ## A291369.P1942655483558839003

`A291368(n+1)+A000194(A291370(n+1)-A291368(n+1))`
-/

namespace A291369.P1942655483558839003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291368 (n + 1) + A000194 (A291370 (n + 1) - A291368 (n + 1)).toNat

end

end A291369.P1942655483558839003

/-!
# A291370: The arithmetic function u(n,3,8).

The programs for A291370, there is no canonical definition to state claims against.
-/

/-! ## A291370.P3661563488936184136

`A032963(A291369(n+1))`
-/

namespace A291370.P3661563488936184136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032963 (A291369 (n + 1)).toNat

end

end A291370.P3661563488936184136

/-! ## A291370.P16422490591548192783

`A023782(A291369(n+1)+1)`
-/

namespace A291370.P16422490591548192783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023782 (A291369 (n + 1) + 1).toNat

end

end A291370.P16422490591548192783

/-! ## A291370.P7389553857580316406

`A283657(A291369(n+1)+1)`
-/

namespace A291370.P7389553857580316406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283657 (A291369 (n + 1) + 1).toNat

end

end A291370.P7389553857580316406

/-! ## A291370.P11916923115971438664

`A154125(A291369(n+1)-1)+1`
-/

namespace A291370.P11916923115971438664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154125 (A291369 (n + 1) - 1).toNat + 1

end

end A291370.P11916923115971438664

/-! ## A291370.P15265002446182175634

`2*A291369(n+1)-A291368(n+1)`
-/

namespace A291370.P15265002446182175634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A291369 (n + 1) - A291368 (n + 1)

end

end A291370.P15265002446182175634

/-! ## A291370.P2289219051225924266

`A039698(A291369(n+1)%(9*(n+2)))`
-/

namespace A291370.P2289219051225924266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039698 (Int.tmod (A291369 (n + 1)) (9 * (n + 2) : ℤ)).toNat

end

end A291370.P2289219051225924266

/-! ## A291370.P7329636281020284206

`A142150(A291369(n+1)+A154125(A291369(n+1)))`
-/

namespace A291370.P7329636281020284206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A291369 (n + 1) + A154125 (A291369 (n + 1)).toNat).toNat

end

end A291370.P7329636281020284206

/-!
# A291371: Number of maximal chord diagrams of genus g counted up to rotations and reflections.

The programs for A291371, there is no canonical definition to state claims against.
-/

/-! ## A291371.P9559658830800983270

`A379439((n+1)*(n+3))`
-/

namespace A291371.P9559658830800983270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379439 ((n + 1) * (n + 3))

end

end A291371.P9559658830800983270

/-!
# A291372: First differences of A291577.

The programs for A291372, there is no canonical definition to state claims against.
-/

/-! ## A291372.P289815158657389483

`A291577(n+1)-A291577(n)`
-/

namespace A291372.P289815158657389483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291577 (n + 1) - A291577 n

end

end A291372.P289815158657389483

/-! ## A291372.P16477183207611791863

`Δ[A291577(n)]`
-/

namespace A291372.P16477183207611791863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291372.P16477183207611791863

/-!
# A291373: a(n) is the smallest number k such that A001065(k) = A002110(n), or 0 if no such k exists.

The programs for A291373, there is no canonical definition to state claims against.
-/

/-! ## A291373.P4018253516090016499

`A070015(A002110(n))`
-/

namespace A291373.P4018253516090016499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070015 (A002110 n).toNat

end

end A291373.P4018253516090016499

/-! ## A291373.P10891247011106242448

`A070015(A335069(n+1))`
-/

namespace A291373.P10891247011106242448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070015 (A335069 (n + 1)).toNat

end

end A291373.P10891247011106242448

/-!
# A291375: Irregular triangle read by rows: number of maximal irredundant sets of size k in the n-path graph.

The programs for A291375, there is no canonical definition to state claims against.
-/

/-! ## A291375.P11842749819761308263

`A301636(∑{p}[A014125(n), #])`
-/

namespace A291375.P11842749819761308263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301636 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A291375.P11842749819761308263

/-! ## A291375.P15543970564122368945

`(or(n, n+1)-2)%A001222(A316753(n+1))`
-/

namespace A291375.P15543970564122368945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.lor n (n + 1) : ℤ) - 2) (A001222 (A316753 (n + 1)).toNat)

end

end A291375.P15543970564122368945

/-! ## A291375.P11850495764409144563

`A014125(n)%A001222(A316753(n+1))`
-/

namespace A291375.P11850495764409144563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014125 n) (A001222 (A316753 (n + 1)).toNat)

end

end A291375.P11850495764409144563

/-! ## A291375.P11467967568019640142

`A286868(n+1)%A001222(A316753(n+1))`
-/

namespace A291375.P11467967568019640142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286868 (n + 1)) (A001222 (A316753 (n + 1)).toNat)

end

end A291375.P11467967568019640142

/-! ## A291375.P17990020716198915428

`A085780(n+1)%A077648(A126646(n))`
-/

namespace A291375.P17990020716198915428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085780 (n + 1)) (A077648 (A126646 n).toNat)

end

end A291375.P17990020716198915428

/-!
# A291376: Expansion of the series reversion of x/(1 - 2*x/(1 - 3*x/(1 - 4*x/(1 - 5*x/(1 - ...))))), a continued fraction.

The programs for A291376, there is no canonical definition to state claims against.
-/

/-! ## A291376.P12261571272652310864

`1-A336551(A358958(n))`
-/

namespace A291376.P12261571272652310864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A336551 (A358958 n).toNat

end

end A291376.P12261571272652310864

/-!
# A291379: p-INVERT of (1,1,0,0,0,0,...), where p(S) = 1 - S^4.

The programs for A291379, the canonical program `A291379.P1165339561482278503` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291379 has offset 0).

The definition of A291379 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291379.P1165339561482278503

`a(n-4)+4*a(n-5)+6*a(n-6)+4*a(n-7)+a(n-8)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=4, a(5)=6, a(6)=4, a(7)=2`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291379

/-- `a(n-4)+4*a(n-5)+6*a(n-6)+4*a(n-7)+a(n-8)` -/
def P1165339561482278503.Spec : Prop :=
  ∀ n, (P1165339561482278503.a n : ℤ) = A291379 n

theorem P1165339561482278503.correct : P1165339561482278503.Spec := by
  intro n
  simp only [A291379]

end A291379

/-! ## A291379.P3431929299201283094

`ogf((x^3+4x^4+6x^5+4x^6+x^7)/(1-x^4-4x^5-6x^6-4x^7-x^8))`
-/

namespace A291379.P3431929299201283094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1, 4, 6, 4, 1] [1, 0, 0, 0, -1, -4, -6, -4, -1] n

end

end A291379.P3431929299201283094

namespace A291379

/-- `ogf((x^3+4x^4+6x^5+4x^6+x^7)/(1-x^4-4x^5-6x^6-4x^7-x^8))` -/
def P3431929299201283094.Spec : Prop :=
  ∀ n, P3431929299201283094.a n = A291379 n

end A291379

/-! ## A291379.P1262228170717638313

`∑{#}[n, (-1)^(n-#)*C(n, #)*A290892(#)]`
-/

namespace A291379.P1262228170717638313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A290892 k : ℚ)

end

end A291379.P1262228170717638313

namespace A291379

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A290892(#)]` -/
def P1262228170717638313.Spec : Prop :=
  ∀ n, P1262228170717638313.a n = (A291379 n : ℚ)

end A291379

/-!
# A291380: p-INVERT of (1,1,0,0,0,0,...), where p(S) = 1 - S^5.

The programs for A291380, the canonical program `A291380.P8044167149037208986` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291380 has offset 0).

The definition of A291380 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291380.P8044167149037208986

`ogf((x^4+5x^5+10x^6+10x^7+5x^8+x^9)/(1-x^5-5x^6-10x^7-10x^8-5x^9-x^10))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291380

/-- `ogf((x^4+5x^5+10x^6+10x^7+5x^8+x^9)/(1-x^5-5x^6-10x^7-10x^8-5x^9-x^10))` -/
def P8044167149037208986.Spec : Prop :=
  ∀ n, P8044167149037208986.a n = A291380 n

theorem P8044167149037208986.correct : P8044167149037208986.Spec := by
  intro n
  simp only [A291380]

end A291380

/-! ## A291380.P3128827383633766973

`∑{#}[n, (-1)^(n-#)*C(n, #)*A290893(#)]`
-/

namespace A291380.P3128827383633766973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A290893 k : ℚ)

end

end A291380.P3128827383633766973

namespace A291380

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A290893(#)]` -/
def P3128827383633766973.Spec : Prop :=
  ∀ n, P3128827383633766973.a n = (A291380 n : ℚ)

end A291380

/-!
# A291381: p-INVERT of (1,1,0,0,0,0,...), where p(S) = 1 - S^6.

The programs for A291381, the canonical program `A291381.P14208652084298668263` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291381 has offset 0).

The definition of A291381 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291381.P14208652084298668263

`ogf((x^5+6x^6+15x^7+20x^8+15x^9+6x^10+x^11)/(1-x^6-6x^7-15x^8-20x^9-15x^10-6x^11-x^12))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291381

/-- `ogf((x^5+6x^6+15x^7+20x^8+15x^9+6x^10+x^11)/(1-x^6-6x^7-15x^8-20x^9-15x^10-6x^11-x^12))` -/
def P14208652084298668263.Spec : Prop :=
  ∀ n, P14208652084298668263.a n = A291381 n

theorem P14208652084298668263.correct : P14208652084298668263.Spec := by
  intro n
  simp only [A291381]

end A291381

/-! ## A291381.P14227031549616090932

`∑{#}[n, (-1)^(n-#)*C(n, #)*A290894(#)]`
-/

namespace A291381.P14227031549616090932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A290894 k : ℚ)

end

end A291381.P14227031549616090932

namespace A291381

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A290894(#)]` -/
def P14227031549616090932.Spec : Prop :=
  ∀ n, P14227031549616090932.a n = (A291381 n : ℚ)

end A291381

/-!
# A291382: p-INVERT of (1,1,0,0,0,0,...), where p(S) = 1 - 2 S - S^2.

The programs for A291382, the canonical program `A291382.P15085075596678561437` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291382 has offset 0).

The definition of A291382 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291382.P16544335046705163946

`ogf((2+3x+2x^2+x^3)/(1-2x-3x^2-2x^3-x^4))`
-/

namespace A291382.P16544335046705163946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 2, 1] [1, -2, -3, -2, -1] n

end

end A291382.P16544335046705163946

namespace A291382

/-- `ogf((2+3x+2x^2+x^3)/(1-2x-3x^2-2x^3-x^4))` -/
def P16544335046705163946.Spec : Prop :=
  ∀ n, P16544335046705163946.a n = A291382 n

end A291382

/-! ## A291382.P15085075596678561437

`2*a(n-1)+3*a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=2, a(1)=7, a(2)=22, a(3)=70`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291382

/-- `2*a(n-1)+3*a(n-2)+2*a(n-3)+a(n-4)` -/
def P15085075596678561437.Spec : Prop :=
  ∀ n, (P15085075596678561437.a n : ℤ) = A291382 n

theorem P15085075596678561437.correct : P15085075596678561437.Spec := by
  intro n
  simp only [A291382]

end A291382

/-! ## A291382.P11636137453643160410

`Δ[ogf(1/(1-3x-x^2+x^3+x^4+x^5))]`
-/

namespace A291382.P11636137453643160410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, -1, 1, 1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291382.P11636137453643160410

namespace A291382

/-- `Δ[ogf(1/(1-3x-x^2+x^3+x^4+x^5))]` -/
def P11636137453643160410.Spec : Prop :=
  ∀ n, P11636137453643160410.a n = A291382 n

end A291382

/-! ## A291382.P11687557251594117059

`A003153(a(n-1)+a(n-2))` with `a(0)=2, a(1)=7`
-/

namespace A291382.P11687557251594117059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  A003153 (a (n - 1) + a (n - 2)).toNat

end

end A291382.P11687557251594117059

namespace A291382

/-- `A003153(a(n-1)+a(n-2))` -/
def P11687557251594117059.Spec : Prop :=
  ∀ n, P11687557251594117059.a n = A291382 n

end A291382

/-! ## A291382.P13055541262663709962

`A080652(a(n-1)+a(n-2))` with `a(0)=2, a(1)=7`
-/

namespace A291382.P13055541262663709962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  A080652 (a (n - 1) + a (n - 2)).toNat

end

end A291382.P13055541262663709962

namespace A291382

/-- `A080652(a(n-1)+a(n-2))` -/
def P13055541262663709962.Spec : Prop :=
  ∀ n, P13055541262663709962.a n = A291382 n

end A291382

/-!
# A291383: p-INVERT of (1,1,0,0,0,0,...), where p(S) = 1 - 2 S - 2 S^2.

The programs for A291383, the canonical program `A291383.P2425321459345622709` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291383 has offset 0).

The definition of A291383 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291383.P5303050107336502338

`ogf((2+4x+4x^2+2x^3)/(1-2x-4x^2-4x^3-2x^4))`
-/

namespace A291383.P5303050107336502338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, 4, 2] [1, -2, -4, -4, -2] n

end

end A291383.P5303050107336502338

namespace A291383

/-- `ogf((2+4x+4x^2+2x^3)/(1-2x-4x^2-4x^3-2x^4))` -/
def P5303050107336502338.Spec : Prop :=
  ∀ n, P5303050107336502338.a n = A291383 n

end A291383

/-! ## A291383.P2425321459345622709

`2*a(n-1)+4*a(n-2)+4*a(n-3)+2*a(n-4)` with `a(0)=2, a(1)=8, a(2)=28, a(3)=98`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291383

/-- `2*a(n-1)+4*a(n-2)+4*a(n-3)+2*a(n-4)` -/
def P2425321459345622709.Spec : Prop :=
  ∀ n, (P2425321459345622709.a n : ℤ) = A291383 n

theorem P2425321459345622709.correct : P2425321459345622709.Spec := by
  intro n
  simp only [A291383]

end A291383

/-! ## A291383.P288009458838831154

`Δ[ogf(1/(1-3x-2x^2+2x^4+2x^5))]`
-/

namespace A291383.P288009458838831154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, -2, 0, 2, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291383.P288009458838831154

namespace A291383

/-- `Δ[ogf(1/(1-3x-2x^2+2x^4+2x^5))]` -/
def P288009458838831154.Spec : Prop :=
  ∀ n, P288009458838831154.a n = A291383 n

end A291383

/-! ## A291383.P9054579435966166319

`2*A291384(n)`
-/

namespace A291383.P9054579435966166319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A291384 n

end

end A291383.P9054579435966166319

namespace A291383

/-- `2*A291384(n)` -/
def P9054579435966166319.Spec : Prop :=
  ∀ n, P9054579435966166319.a n = A291383 n

end A291383

/-! ## A291383.P13578238933942228747

`A291384(n)+record[A291384(A008615(n))]`
-/

namespace A291383.P13578238933942228747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291384 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291384 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291383.P13578238933942228747

namespace A291383

/-- `A291384(n)+record[A291384(A008615(n))]` -/
def P13578238933942228747.Spec : Prop :=
  ∀ n, P13578238933942228747.a n = A291383 n

end A291383

/-! ## A291383.P7748761724481888495

`A291384(n)+A291384(n%A291384(n))`
-/

namespace A291383.P7748761724481888495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291384 n + A291384 (Int.tmod (n : ℤ) (A291384 n)).toNat

end

end A291383.P7748761724481888495

namespace A291383

/-- `A291384(n)+A291384(n%A291384(n))` -/
def P7748761724481888495.Spec : Prop :=
  ∀ n, P7748761724481888495.a n = A291383 n

end A291383

/-! ## A291383.P10865835887407950684

`A291384(n)+or(A000007(n), A291384(n))`
-/

namespace A291383.P10865835887407950684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291384 n + Int.lor (A000007 n) (A291384 n)

end

end A291383.P10865835887407950684

namespace A291383

/-- `A291384(n)+or(A000007(n), A291384(n))` -/
def P10865835887407950684.Spec : Prop :=
  ∀ n, P10865835887407950684.a n = A291383 n

end A291383

/-! ## A291383.P11509958089475732070

`A291384(n)+lcm(A064284(n+1), A291384(n))`
-/

namespace A291383.P11509958089475732070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291384 n + (Int.lcm (A064284 (n + 1)) (A291384 n) : ℤ)

end

end A291383.P11509958089475732070

namespace A291383

/-- `A291384(n)+lcm(A064284(n+1), A291384(n))` -/
def P11509958089475732070.Spec : Prop :=
  ∀ n, P11509958089475732070.a n = A291383 n

end A291383

/-! ## A291383.P15975115213034788821

`∑{#}[n, (-1)^(n-#)*C(n, #)*A290923(#)]`
-/

namespace A291383.P15975115213034788821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A290923 k : ℚ)

end

end A291383.P15975115213034788821

namespace A291383

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A290923(#)]` -/
def P15975115213034788821.Spec : Prop :=
  ∀ n, P15975115213034788821.a n = (A291383 n : ℚ)

end A291383

/-! ## A291383.P14562485018608031429

`A291384(A118759(n))+A291384(n)`
-/

namespace A291383.P14562485018608031429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291384 (A118759 n).toNat + A291384 n

end

end A291383.P14562485018608031429

namespace A291383

/-- `A291384(A118759(n))+A291384(n)` -/
def P14562485018608031429.Spec : Prop :=
  ∀ n, P14562485018608031429.a n = A291383 n

end A291383

/-!
# A291384: a(n) = (1/2)*A291383(n).

The programs for A291384, the canonical program `A291384.P7876152616152133544` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291384 has offset 0).

The definition of A291384 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291384.P8690349605571093625

`ogf((1+2x+2x^2+x^3)/(1-2x-4x^2-4x^3-2x^4))`
-/

namespace A291384.P8690349605571093625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, 1] [1, -2, -4, -4, -2] n

end

end A291384.P8690349605571093625

namespace A291384

/-- `ogf((1+2x+2x^2+x^3)/(1-2x-4x^2-4x^3-2x^4))` -/
def P8690349605571093625.Spec : Prop :=
  ∀ n, P8690349605571093625.a n = A291384 n

end A291384

/-! ## A291384.P7876152616152133544

`2*a(n-1)+4*a(n-2)+4*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=4, a(2)=14, a(3)=49`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291384

/-- `2*a(n-1)+4*a(n-2)+4*a(n-3)+2*a(n-4)` -/
def P7876152616152133544.Spec : Prop :=
  ∀ n, (P7876152616152133544.a n : ℤ) = A291384 n

theorem P7876152616152133544.correct : P7876152616152133544.Spec := by
  intro n
  simp only [A291384]

end A291384

/-! ## A291384.P9661040663118240612

`1/2*A291383(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A291384.P9661040663118240612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A291383 n : ℚ)

end

end A291384.P9661040663118240612

namespace A291384

/-- `1/2*A291383(n)` -/
def P9661040663118240612.Spec : Prop :=
  ∀ n, P9661040663118240612.a n = (A291384 n : ℚ)

end A291384

/-! ## A291384.P7327319267767431272

`A291383(n)/2`
-/

namespace A291384.P7327319267767431272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291383 n : ℚ) / 2

end

end A291384.P7327319267767431272

namespace A291384

/-- `A291383(n)/2` -/
def P7327319267767431272.Spec : Prop :=
  ∀ n, P7327319267767431272.a n = (A291384 n : ℚ)

end A291384

/-! ## A291384.P9042309613897475593

`∑{#}[n, (-1)^(n-#)*C(n, #)*A290924(#)]`
-/

namespace A291384.P9042309613897475593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A290924 k : ℚ)

end

end A291384.P9042309613897475593

namespace A291384

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A290924(#)]` -/
def P9042309613897475593.Spec : Prop :=
  ∀ n, P9042309613897475593.a n = (A291384 n : ℚ)

end A291384

/-!
# A291385: a(n) = (1/4)*A073388(n+1).

The programs for A291385, the canonical program `A291385.P5437536221905050948` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291385 has offset 0).

The definition of A291385 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291385.P15700598756393489087

`ogf((1-2x^2-x^3)/(1-4x+8x^3+4x^4))`
-/

namespace A291385.P15700598756393489087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, -1] [1, -4, 0, 8, 4] n

end

end A291385.P15700598756393489087

namespace A291385

/-- `ogf((1-2x^2-x^3)/(1-4x+8x^3+4x^4))` -/
def P15700598756393489087.Spec : Prop :=
  ∀ n, P15700598756393489087.a n = A291385 n

end A291385

/-! ## A291385.P5437536221905050948

`1/4*A073388(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A291385

/-- `1/4*A073388(n+1)` -/
def P5437536221905050948.Spec : Prop :=
  ∀ n, P5437536221905050948.a n = (A291385 n : ℚ)

end A291385

/-! ## A291385.P6061005927895907104

`A292399(n)-A028859(n)`
-/

namespace A291385.P6061005927895907104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292399 n - A028859 n

end

end A291385.P6061005927895907104

namespace A291385

/-- `A292399(n)-A028859(n)` -/
def P6061005927895907104.Spec : Prop :=
  ∀ n, P6061005927895907104.a n = A291385 n

end A291385

/-! ## A291385.P1006755565387479733

`A292399(n)-A155020(n+1)`
-/

namespace A291385.P1006755565387479733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292399 n - A155020 (n + 1)

end

end A291385.P1006755565387479733

namespace A291385

/-- `A292399(n)-A155020(n+1)` -/
def P1006755565387479733.Spec : Prop :=
  ∀ n, P1006755565387479733.a n = A291385 n

end A291385

/-! ## A291385.P17955302171909498932

`A292399(n)+A155020(n+1)*A260196(n+2)`
-/

namespace A291385.P17955302171909498932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292399 n + A155020 (n + 1) * A260196 (n + 2)

end

end A291385.P17955302171909498932

namespace A291385

/-- `A292399(n)+A155020(n+1)*A260196(n+2)` -/
def P17955302171909498932.Spec : Prop :=
  ∀ n, P17955302171909498932.a n = A291385 n

end A291385

/-! ## A291385.P8655000158479402683

`A073388(n+1)/4`
-/

namespace A291385.P8655000158479402683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073388 (n + 1) : ℚ) / 4

end

end A291385.P8655000158479402683

namespace A291385

/-- `A073388(n+1)/4` -/
def P8655000158479402683.Spec : Prop :=
  ∀ n, P8655000158479402683.a n = (A291385 n : ℚ)

end A291385

/-! ## A291385.P7903036113952614600

`A109634(n+2)/4`
-/

namespace A291385.P7903036113952614600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109634 (n + 2) : ℚ) / 4

end

end A291385.P7903036113952614600

namespace A291385

/-- `A109634(n+2)/4` -/
def P7903036113952614600.Spec : Prop :=
  ∀ n, P7903036113952614600.a n = (A291385 n : ℚ)

end A291385

/-! ## A291385.P3600506310454798515

`A280279(n+4)/2`
-/

namespace A291385.P3600506310454798515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280279 (n + 4) : ℚ) / 2

end

end A291385.P3600506310454798515

namespace A291385

/-- `A280279(n+4)/2` -/
def P3600506310454798515.Spec : Prop :=
  ∀ n, P3600506310454798515.a n = (A291385 n : ℚ)

end A291385

/-! ## A291385.P14062702943388824611

`record[A073388(abs(1-n))/4]`
-/

namespace A291385.P14062702943388824611
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073388 |1 - (n : ℤ)|.toNat : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291385.P14062702943388824611

namespace A291385

/-- `record[A073388(abs(1-n))/4]` -/
def P14062702943388824611.Spec : Prop :=
  ∀ n, P14062702943388824611.a n = (A291385 n : ℚ)

end A291385

/-! ## A291385.P15024272696919795107

`Δ[∑[A073388(n)]/4]`
-/

namespace A291385.P15024272696919795107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073388 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291385.P15024272696919795107

namespace A291385

/-- `Δ[∑[A073388(n)]/4]` -/
def P15024272696919795107.Spec : Prop :=
  ∀ n, P15024272696919795107.a n = (A291385 n : ℚ)

end A291385

/-! ## A291385.P11749661941639482996

`Δ[A073389(n)]/(n+5)`
-/

namespace A291385.P11749661941639482996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073389 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 5 : ℚ)

end

end A291385.P11749661941639482996

namespace A291385

/-- `Δ[A073389(n)]/(n+5)` -/
def P11749661941639482996.Spec : Prop :=
  ∀ n, P11749661941639482996.a n = (A291385 n : ℚ)

end A291385

/-! ## A291385.P15477565367591942754

`A208759(A000096(n+2))/4`
-/

namespace A291385.P15477565367591942754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208759 (A000096 (n + 2)).toNat : ℚ) / 4

end

end A291385.P15477565367591942754

namespace A291385

/-- `A208759(A000096(n+2))/4` -/
def P15477565367591942754.Spec : Prop :=
  ∀ n, P15477565367591942754.a n = (A291385 n : ℚ)

end A291385

/-!
# A291386: a(n) = (1/3)*A099432(n+1).

The programs for A291386, the canonical program `A291386.P4140466714841564231` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291386 has offset 0).

The definition of A291386 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291386.P8595551458651096580

`ogf((2-x-6x^2-3x^3)/(1-6x+3x^2+18x^3+9x^4))`
-/

namespace A291386.P8595551458651096580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -6, -3] [1, -6, 3, 18, 9] n

end

end A291386.P8595551458651096580

namespace A291386

/-- `ogf((2-x-6x^2-3x^3)/(1-6x+3x^2+18x^3+9x^4))` -/
def P8595551458651096580.Spec : Prop :=
  ∀ n, P8595551458651096580.a n = A291386 n

end A291386

/-! ## A291386.P4140466714841564231

`6*a(n-1)-3*a(n-2)-18*a(n-3)-9*a(n-4)` with `a(0)=2, a(1)=11, a(2)=54, a(3)=252`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291386

/-- `6*a(n-1)-3*a(n-2)-18*a(n-3)-9*a(n-4)` -/
def P4140466714841564231.Spec : Prop :=
  ∀ n, P4140466714841564231.a n = A291386 n

theorem P4140466714841564231.correct : P4140466714841564231.Spec := by
  intro n
  simp only [A291386]

end A291386

/-! ## A291386.P8204364463533848195

`1/3*A099432(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A291386.P8204364463533848195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (A099432 (n + 1) : ℚ)

end

end A291386.P8204364463533848195

namespace A291386

/-- `1/3*A099432(n+1)` -/
def P8204364463533848195.Spec : Prop :=
  ∀ n, P8204364463533848195.a n = (A291386 n : ℚ)

end A291386

/-! ## A291386.P17237520194463117565

`A099432(n+1)/3`
-/

namespace A291386.P17237520194463117565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099432 (n + 1) : ℚ) / 3

end

end A291386.P17237520194463117565

namespace A291386

/-- `A099432(n+1)/3` -/
def P17237520194463117565.Spec : Prop :=
  ∀ n, P17237520194463117565.a n = (A291386 n : ℚ)

end A291386

/-! ## A291386.P9909123542445024812

`record[A099432(A324347(n))/3]`
-/

namespace A291386.P9909123542445024812
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099432 (A324347 n).toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291386.P9909123542445024812

namespace A291386

/-- `record[A099432(A324347(n))/3]` -/
def P9909123542445024812.Spec : Prop :=
  ∀ n, P9909123542445024812.a n = (A291386 n : ℚ)

end A291386

/-! ## A291386.P3398755017958958734

`floor(A099432(A005408(n)-n)/3)`
-/

namespace A291386.P3398755017958958734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A099432 (A005408 n - (n : ℤ)).toNat : ℚ) / 3⌋

end

end A291386.P3398755017958958734

namespace A291386

/-- `floor(A099432(A005408(n)-n)/3)` -/
def P3398755017958958734.Spec : Prop :=
  ∀ n, P3398755017958958734.a n = A291386 n

end A291386

/-! ## A291386.P7233457866904492890

`Δ[∑[A099432(n)]/3]`
-/

namespace A291386.P7233457866904492890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099432 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291386.P7233457866904492890

namespace A291386

/-- `Δ[∑[A099432(n)]/3]` -/
def P7233457866904492890.Spec : Prop :=
  ∀ n, P7233457866904492890.a n = (A291386 n : ℚ)

end A291386

/-! ## A291386.P283021548161746336

`A128235(A133263(n+2))/3`
-/

namespace A291386.P283021548161746336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128235 (A133263 (n + 2)).toNat : ℚ) / 3

end

end A291386.P283021548161746336

namespace A291386

/-- `A128235(A133263(n+2))/3` -/
def P283021548161746336.Spec : Prop :=
  ∀ n, P283021548161746336.a n = (A291386 n : ℚ)

end A291386

/-!
# A291387: p-INVERT of (1,1,0,0,0,0,...), where p(S) = (1 - 4 S)^2.

The programs for A291387, the canonical program `A291387.P14647830267784872686` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291387 has offset 0).

The definition of A291387 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291387.P14647830267784872686

`ogf((8-8x-32x^2-16x^3)/(1-8x+8x^2+32x^3+16x^4))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291387

/-- `ogf((8-8x-32x^2-16x^3)/(1-8x+8x^2+32x^3+16x^4))` -/
def P14647830267784872686.Spec : Prop :=
  ∀ n, P14647830267784872686.a n = A291387 n

theorem P14647830267784872686.correct : P14647830267784872686.Spec := by
  intro n
  simp only [A291387]

end A291387

/-! ## A291387.P9217993124761703692

`8*A291388(n)`
-/

namespace A291387.P9217993124761703692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A291388 n

end

end A291387.P9217993124761703692

namespace A291387

/-- `8*A291388(n)` -/
def P9217993124761703692.Spec : Prop :=
  ∀ n, P9217993124761703692.a n = A291387 n

end A291387

/-! ## A291387.P8227166805448936947

`2^(n+1)*A006645(n+3)`
-/

namespace A291387.P8227166805448936947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A006645 (n + 3)

end

end A291387.P8227166805448936947

namespace A291387

/-- `2^(n+1)*A006645(n+3)` -/
def P8227166805448936947.Spec : Prop :=
  ∀ n, P8227166805448936947.a n = A291387 n

end A291387

/-! ## A291387.P1100252684935282671

`A006645(n+3)*A131577(n+2)`
-/

namespace A291387.P1100252684935282671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (n + 3) * A131577 (n + 2)

end

end A291387.P1100252684935282671

namespace A291387

/-- `A006645(n+3)*A131577(n+2)` -/
def P1100252684935282671.Spec : Prop :=
  ∀ n, P1100252684935282671.a n = A291387 n

end A291387

/-! ## A291387.P14220998418394969462

`∑{#}[n+1, A057087(#)*A057087(n-#+1)]`
-/

namespace A291387.P14220998418394969462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A057087 k * A057087 ((n : ℤ) - (k : ℤ) + 1).toNat

end

end A291387.P14220998418394969462

namespace A291387

/-- `∑{#}[n+1, A057087(#)*A057087(n-#+1)]` -/
def P14220998418394969462.Spec : Prop :=
  ∀ n, P14220998418394969462.a n = A291387 n

end A291387

/-! ## A291387.P16406399843261619960

`8*abs(Δ[A000051(n+1)]*A006645(n+3)/8)`
-/

namespace A291387.P16406399843261619960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * |((f1 (n + 1) - f1 n) * A006645 (n + 3) : ℚ) / 8|

end

end A291387.P16406399843261619960

namespace A291387

/-- `8*abs(Δ[A000051(n+1)]*A006645(n+3)/8)` -/
def P16406399843261619960.Spec : Prop :=
  ∀ n, P16406399843261619960.a n = (A291387 n : ℚ)

end A291387

/-! ## A291387.P16723965990183941485

`8*abs(Δ[A000225(n+1)]*A006645(n+3)/8)`
-/

namespace A291387.P16723965990183941485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * |((f1 (n + 1) - f1 n) * A006645 (n + 3) : ℚ) / 8|

end

end A291387.P16723965990183941485

namespace A291387

/-- `8*abs(Δ[A000225(n+1)]*A006645(n+3)/8)` -/
def P16723965990183941485.Spec : Prop :=
  ∀ n, P16723965990183941485.a n = (A291387 n : ℚ)

end A291387

/-!
# A291388: a(n) = (1/8)*A291387(n).

The programs for A291388, the canonical program `A291388.P17240326373231166684` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291388 has offset 0).

The definition of A291388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291388.P588806384833518713

`ogf((1-x-4x^2-2x^3)/(1-8x+8x^2+32x^3+16x^4))`
-/

namespace A291388.P588806384833518713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -4, -2] [1, -8, 8, 32, 16] n

end

end A291388.P588806384833518713

namespace A291388

/-- `ogf((1-x-4x^2-2x^3)/(1-8x+8x^2+32x^3+16x^4))` -/
def P588806384833518713.Spec : Prop :=
  ∀ n, P588806384833518713.a n = A291388 n

end A291388

/-! ## A291388.P17240326373231166684

`8*a(n-1)-8*a(n-2)-32*a(n-3)-16*a(n-4)` with `a(0)=1, a(1)=7, a(2)=44, a(3)=262`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291388

/-- `8*a(n-1)-8*a(n-2)-32*a(n-3)-16*a(n-4)` -/
def P17240326373231166684.Spec : Prop :=
  ∀ n, P17240326373231166684.a n = A291388 n

theorem P17240326373231166684.correct : P17240326373231166684.Spec := by
  intro n
  simp only [A291388]

end A291388

/-! ## A291388.P8480542249335544278

`1/8*A291387(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A291388.P8480542249335544278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 8 * (A291387 n : ℚ)

end

end A291388.P8480542249335544278

namespace A291388

/-- `1/8*A291387(n)` -/
def P8480542249335544278.Spec : Prop :=
  ∀ n, P8480542249335544278.a n = (A291388 n : ℚ)

end A291388

/-! ## A291388.P11055317248910002411

`2^(n-2)*A006645(n+3)`
-/

namespace A291388.P11055317248910002411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A006645 (n + 3) : ℚ)

end

end A291388.P11055317248910002411

namespace A291388

/-- `2^(n-2)*A006645(n+3)` -/
def P11055317248910002411.Spec : Prop :=
  ∀ n, P11055317248910002411.a n = (A291388 n : ℚ)

end A291388

/-! ## A291388.P15768839883939219511

`A291387(n)/8`
-/

namespace A291388.P15768839883939219511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291387 n : ℚ) / 8

end

end A291388.P15768839883939219511

namespace A291388

/-- `A291387(n)/8` -/
def P15768839883939219511.Spec : Prop :=
  ∀ n, P15768839883939219511.a n = (A291388 n : ℚ)

end A291388

/-! ## A291388.P12934086621888298661

`A006645(n+3)*A131577(n+2)/8`
-/

namespace A291388.P12934086621888298661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006645 (n + 3) * A131577 (n + 2) : ℚ) / 8

end

end A291388.P12934086621888298661

namespace A291388

/-- `A006645(n+3)*A131577(n+2)/8` -/
def P12934086621888298661.Spec : Prop :=
  ∀ n, P12934086621888298661.a n = (A291388 n : ℚ)

end A291388

/-! ## A291388.P10468349760715351800

`Δ[A000051(n+1)]*A006645(n+3)/8`
-/

namespace A291388.P10468349760715351800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) * A006645 (n + 3) : ℚ) / 8

end

end A291388.P10468349760715351800

namespace A291388

/-- `Δ[A000051(n+1)]*A006645(n+3)/8` -/
def P10468349760715351800.Spec : Prop :=
  ∀ n, P10468349760715351800.a n = (A291388 n : ℚ)

end A291388

/-! ## A291388.P3896987323942211813

`Δ[A000225(n+1)]*A006645(n+3)/8`
-/

namespace A291388.P3896987323942211813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) * A006645 (n + 3) : ℚ) / 8

end

end A291388.P3896987323942211813

namespace A291388

/-- `Δ[A000225(n+1)]*A006645(n+3)/8` -/
def P3896987323942211813.Spec : Prop :=
  ∀ n, P3896987323942211813.a n = (A291388 n : ℚ)

end A291388

/-!
# A291389: p-INVERT of (1,1,0,0,0,0,...), where p(S) = (1 - 5 S)^2.

The programs for A291389, the canonical program `A291389.P143657795928970226` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291389 has offset 0).

The definition of A291389 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291389.P143657795928970226

`ogf((10-15x-50x^2-25x^3)/(1-10x+15x^2+50x^3+25x^4))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291389

/-- `ogf((10-15x-50x^2-25x^3)/(1-10x+15x^2+50x^3+25x^4))` -/
def P143657795928970226.Spec : Prop :=
  ∀ n, P143657795928970226.a n = A291389 n

theorem P143657795928970226.correct : P143657795928970226.Spec := by
  intro n
  simp only [A291389]

end A291389

/-! ## A291389.P3133749326830032153

`5*A291390(n)`
-/

namespace A291389.P3133749326830032153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A291390 n

end

end A291389.P3133749326830032153

namespace A291389

/-- `5*A291390(n)` -/
def P3133749326830032153.Spec : Prop :=
  ∀ n, P3133749326830032153.a n = A291389 n

end A291389

/-! ## A291389.P18026880536650721257

`∑{#}[n+1, A057088(#)*A057088(n-#+1)]`
-/

namespace A291389.P18026880536650721257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A057088 k * A057088 ((n : ℤ) - (k : ℤ) + 1).toNat

end

end A291389.P18026880536650721257

namespace A291389

/-- `∑{#}[n+1, A057088(#)*A057088(n-#+1)]` -/
def P18026880536650721257.Spec : Prop :=
  ∀ n, P18026880536650721257.a n = A291389 n

end A291389

/-!
# A291390: a(n) = (1/5)*A291389(n).

The programs for A291390, the canonical program `A291390.P16911616906238764526` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291390 has offset 0).

The definition of A291390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291390.P13520109820926158515

`ogf((2-3x-10x^2-5x^3)/(1-10x+15x^2+50x^3+25x^4))`
-/

namespace A291390.P13520109820926158515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, -10, -5] [1, -10, 15, 50, 25] n

end

end A291390.P13520109820926158515

namespace A291390

/-- `ogf((2-3x-10x^2-5x^3)/(1-10x+15x^2+50x^3+25x^4))` -/
def P13520109820926158515.Spec : Prop :=
  ∀ n, P13520109820926158515.a n = A291390 n

end A291390

/-! ## A291390.P16911616906238764526

`10*a(n-1)-15*a(n-2)-50*a(n-3)-25*a(n-4)` with `a(0)=2, a(1)=17, a(2)=130, a(3)=940`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291390

/-- `10*a(n-1)-15*a(n-2)-50*a(n-3)-25*a(n-4)` -/
def P16911616906238764526.Spec : Prop :=
  ∀ n, P16911616906238764526.a n = A291390 n

theorem P16911616906238764526.correct : P16911616906238764526.Spec := by
  intro n
  simp only [A291390]

end A291390

/-! ## A291390.P7837420796754540740

`1/5*A291389(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A291390.P7837420796754540740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 5 * (A291389 n : ℚ)

end

end A291390.P7837420796754540740

namespace A291390

/-- `1/5*A291389(n)` -/
def P7837420796754540740.Spec : Prop :=
  ∀ n, P7837420796754540740.a n = (A291390 n : ℚ)

end A291390

/-! ## A291390.P7434462067429234501

`A291389(n)/5`
-/

namespace A291390.P7434462067429234501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291389 n : ℚ) / 5

end

end A291390.P7434462067429234501

namespace A291390

/-- `A291389(n)/5` -/
def P7434462067429234501.Spec : Prop :=
  ∀ n, P7434462067429234501.a n = (A291390 n : ℚ)

end A291390

/-!
# A291391: p-INVERT of (1,1,0,0,0,0,...), where p(S) = (1 - 6 S)^2.

The programs for A291391, the canonical program `A291391.P2101756940600682582` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291391 has offset 0).

The definition of A291391 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291391.P2101756940600682582

`ogf((12-24x-72x^2-36x^3)/(1-12x+24x^2+72x^3+36x^4))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291391

/-- `ogf((12-24x-72x^2-36x^3)/(1-12x+24x^2+72x^3+36x^4))` -/
def P2101756940600682582.Spec : Prop :=
  ∀ n, P2101756940600682582.a n = A291391 n

theorem P2101756940600682582.correct : P2101756940600682582.Spec := by
  intro n
  simp only [A291391]

end A291391

/-! ## A291391.P15295743276940635889

`12*A291392(n)`
-/

namespace A291391.P15295743276940635889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A291392 n

end

end A291391.P15295743276940635889

namespace A291391

/-- `12*A291392(n)` -/
def P15295743276940635889.Spec : Prop :=
  ∀ n, P15295743276940635889.a n = A291391 n

end A291391

/-! ## A291391.P4465565989567986725

`∑{#}[n+1, A057089(#)*A057089(n-#+1)]`
-/

namespace A291391.P4465565989567986725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A057089 k * A057089 ((n : ℤ) - (k : ℤ) + 1).toNat

end

end A291391.P4465565989567986725

namespace A291391

/-- `∑{#}[n+1, A057089(#)*A057089(n-#+1)]` -/
def P4465565989567986725.Spec : Prop :=
  ∀ n, P4465565989567986725.a n = A291391 n

end A291391

/-!
# A291392: a(n) = (1/12)*A291391(n).

The programs for A291392, the canonical program `A291392.P16690222397738992522` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291392 has offset 0).

The definition of A291392 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291392.P9601977182813198257

`ogf((1-2x-6x^2-3x^3)/(1-12x+24x^2+72x^3+36x^4))`
-/

namespace A291392.P9601977182813198257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -6, -3] [1, -12, 24, 72, 36] n

end

end A291392.P9601977182813198257

namespace A291392

/-- `ogf((1-2x-6x^2-3x^3)/(1-12x+24x^2+72x^3+36x^4))` -/
def P9601977182813198257.Spec : Prop :=
  ∀ n, P9601977182813198257.a n = A291392 n

end A291392

/-! ## A291392.P16690222397738992522

`12*a(n-1)-24*a(n-2)-72*a(n-3)-36*a(n-4)` with `a(0)=1, a(1)=10, a(2)=90, a(3)=765`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291392

/-- `12*a(n-1)-24*a(n-2)-72*a(n-3)-36*a(n-4)` -/
def P16690222397738992522.Spec : Prop :=
  ∀ n, P16690222397738992522.a n = A291392 n

theorem P16690222397738992522.correct : P16690222397738992522.Spec := by
  intro n
  simp only [A291392]

end A291392

/-! ## A291392.P9747025358744604485

`1/12*A291391(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A291392.P9747025358744604485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 12 * (A291391 n : ℚ)

end

end A291392.P9747025358744604485

namespace A291392

/-- `1/12*A291391(n)` -/
def P9747025358744604485.Spec : Prop :=
  ∀ n, P9747025358744604485.a n = (A291392 n : ℚ)

end A291392

/-! ## A291392.P2855781836541725517

`A291391(n)/12`
-/

namespace A291392.P2855781836541725517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291391 n : ℚ) / 12

end

end A291392.P2855781836541725517

namespace A291392

/-- `A291391(n)/12` -/
def P2855781836541725517.Spec : Prop :=
  ∀ n, P2855781836541725517.a n = (A291392 n : ℚ)

end A291392

/-! ## A291392.P15582369638587697573

`record[ratio[A291391(A319514(n))]]`
-/

namespace A291392.P15582369638587697573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291391 (A319514 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291392.P15582369638587697573

namespace A291392

/-- `record[ratio[A291391(A319514(n))]]` -/
def P15582369638587697573.Spec : Prop :=
  ∀ n, P15582369638587697573.a n = (A291392 n : ℚ)

end A291392

/-!
# A291393: p-INVERT of (1,1,0,0,0,0,...), where p(S) = (1 - S)(1 - 2 S).

The programs for A291393, the canonical program `A291393.P649492870724853928` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291393 has offset 0).

The definition of A291393 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291393.P7508191348033177723

`ogf((3+x-4x^2-2x^3)/(1-3x-x^2+4x^3+2x^4))`
-/

namespace A291393.P7508191348033177723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, -4, -2] [1, -3, -1, 4, 2] n

end

end A291393.P7508191348033177723

namespace A291393

/-- `ogf((3+x-4x^2-2x^3)/(1-3x-x^2+4x^3+2x^4))` -/
def P7508191348033177723.Spec : Prop :=
  ∀ n, P7508191348033177723.a n = A291393 n

end A291393

/-! ## A291393.P649492870724853928

`3*a(n-1)+a(n-2)-4*a(n-3)-2*a(n-4)` with `a(0)=3, a(1)=10, a(2)=29, a(3)=83`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291393

/-- `3*a(n-1)+a(n-2)-4*a(n-3)-2*a(n-4)` -/
def P649492870724853928.Spec : Prop :=
  ∀ n, P649492870724853928.a n = A291393 n

theorem P649492870724853928.correct : P649492870724853928.Spec := by
  intro n
  simp only [A291393]

end A291393

/-! ## A291393.P16022813095150535072

`Δ[ogf(1/(1-4x+2x^2+5x^3-2x^4-2x^5))]`
-/

namespace A291393.P16022813095150535072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 2, 5, -2, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291393.P16022813095150535072

namespace A291393

/-- `Δ[ogf(1/(1-4x+2x^2+5x^3-2x^4-2x^5))]` -/
def P16022813095150535072.Spec : Prop :=
  ∀ n, P16022813095150535072.a n = A291393 n

end A291393

/-! ## A291393.P4924230070886023785

`A108898(n+2)-∑[A000045(n)]`
-/

namespace A291393.P4924230070886023785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108898 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291393.P4924230070886023785

namespace A291393

/-- `A108898(n+2)-∑[A000045(n)]` -/
def P4924230070886023785.Spec : Prop :=
  ∀ n, P4924230070886023785.a n = A291393 n

end A291393

/-! ## A291393.P5059703725837757581

`Δ[A052948(n+2)-A020695(n)]`
-/

namespace A291393.P5059703725837757581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052948 (n + 2) - A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291393.P5059703725837757581

namespace A291393

/-- `Δ[A052948(n+2)-A020695(n)]` -/
def P5059703725837757581.Spec : Prop :=
  ∀ n, P5059703725837757581.a n = A291393 n

end A291393

/-! ## A291393.P4363983803891541153

`A152035(n+2)-A000045(n+2)`
-/

namespace A291393.P4363983803891541153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152035 (n + 2) - A000045 (n + 2)

end

end A291393.P4363983803891541153

namespace A291393

/-- `A152035(n+2)-A000045(n+2)` -/
def P4363983803891541153.Spec : Prop :=
  ∀ n, P4363983803891541153.a n = A291393 n

end A291393

/-! ## A291393.P16361515452430721786

`A293007(n+3)-A000045(n+2)`
-/

namespace A291393.P16361515452430721786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293007 (n + 3) - A000045 (n + 2)

end

end A291393.P16361515452430721786

namespace A291393

/-- `A293007(n+3)-A000045(n+2)` -/
def P16361515452430721786.Spec : Prop :=
  ∀ n, P16361515452430721786.a n = A291393 n

end A291393

/-! ## A291393.P8493072087778700386

`A028860(n+4)-A000045(n+2)`
-/

namespace A291393.P8493072087778700386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028860 (n + 4) - A000045 (n + 2)

end

end A291393.P8493072087778700386

namespace A291393

/-- `A028860(n+4)-A000045(n+2)` -/
def P8493072087778700386.Spec : Prop :=
  ∀ n, P8493072087778700386.a n = A291393 n

end A291393

/-! ## A291393.P14234700294880826581

`A028860(n+4)-A212804(n+3)`
-/

namespace A291393.P14234700294880826581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028860 (n + 4) - A212804 (n + 3)

end

end A291393.P14234700294880826581

namespace A291393

/-- `A028860(n+4)-A212804(n+3)` -/
def P14234700294880826581.Spec : Prop :=
  ∀ n, P14234700294880826581.a n = A291393 n

end A291393

/-! ## A291393.P14577807518323514059

`2*A291394(n)-A291395(n)`
-/

namespace A291393.P14577807518323514059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A291394 n - A291395 n

end

end A291393.P14577807518323514059

namespace A291393

/-- `2*A291394(n)-A291395(n)` -/
def P14577807518323514059.Spec : Prop :=
  ∀ n, P14577807518323514059.a n = A291393 n

end A291393

/-! ## A291393.P9793614849789492331

`∑{#}[n, (-1)^(n-#)*C(n, #)*A291182(#)]`
-/

namespace A291393.P9793614849789492331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A291182 k : ℚ)

end

end A291393.P9793614849789492331

namespace A291393

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A291182(#)]` -/
def P9793614849789492331.Spec : Prop :=
  ∀ n, P9793614849789492331.a n = (A291393 n : ℚ)

end A291393

/-!
# A291394: p-INVERT of (1,1,0,0,0,0,...), where p(S) = (1 - S)(1 - 3 S).

The programs for A291394, the canonical program `A291394.P2884452363590912205` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291394 has offset 0).

The definition of A291394 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291394.P16325051625032825772

`ogf((4+x-6x^2-3x^3)/(1-4x-x^2+6x^3+3x^4))`
-/

namespace A291394.P16325051625032825772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1, -6, -3] [1, -4, -1, 6, 3] n

end

end A291394.P16325051625032825772

namespace A291394

/-- `ogf((4+x-6x^2-3x^3)/(1-4x-x^2+6x^3+3x^4))` -/
def P16325051625032825772.Spec : Prop :=
  ∀ n, P16325051625032825772.a n = A291394 n

end A291394

/-! ## A291394.P2884452363590912205

`4*a(n-1)+a(n-2)-6*a(n-3)-3*a(n-4)` with `a(0)=4, a(1)=17, a(2)=66, a(3)=254`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291394

/-- `4*a(n-1)+a(n-2)-6*a(n-3)-3*a(n-4)` -/
def P2884452363590912205.Spec : Prop :=
  ∀ n, P2884452363590912205.a n = A291394 n

theorem P2884452363590912205.correct : P2884452363590912205.Spec := by
  intro n
  simp only [A291394]

end A291394

/-! ## A291394.P3686343890881390259

`(A291395(n)+A291393(n))/2`
-/

namespace A291394.P3686343890881390259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291395 n + A291393 n : ℚ) / 2

end

end A291394.P3686343890881390259

namespace A291394

/-- `(A291395(n)+A291393(n))/2` -/
def P3686343890881390259.Spec : Prop :=
  ∀ n, P3686343890881390259.a n = (A291394 n : ℚ)

end A291394

/-! ## A291394.P6818431336632410078

`2*A030195(n+2)-A221454(n+3)`
-/

namespace A291394.P6818431336632410078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030195 (n + 2) - A221454 (n + 3)

end

end A291394.P6818431336632410078

namespace A291394

/-- `2*A030195(n+2)-A221454(n+3)` -/
def P6818431336632410078.Spec : Prop :=
  ∀ n, P6818431336632410078.a n = A291394 n

end A291394

/-! ## A291394.P12930410691394707085

`3*A155116(n+1)-A221454(n+3)`
-/

namespace A291394.P12930410691394707085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A155116 (n + 1) - A221454 (n + 3)

end

end A291394.P12930410691394707085

namespace A291394

/-- `3*A155116(n+1)-A221454(n+3)` -/
def P12930410691394707085.Spec : Prop :=
  ∀ n, P12930410691394707085.a n = A291394 n

end A291394

/-! ## A291394.P12505704516638952478

`A108306(n+1)+A106435(n)-A221454(n+3)`
-/

namespace A291394.P12505704516638952478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108306 (n + 1) + (A106435 n - A221454 (n + 3))

end

end A291394.P12505704516638952478

namespace A291394

/-- `A108306(n+1)+A106435(n)-A221454(n+3)` -/
def P12505704516638952478.Spec : Prop :=
  ∀ n, P12505704516638952478.a n = A291394 n

end A291394

/-! ## A291394.P11321823672352915723

`A123620(n+1)+A155116(n+1)-A221454(n+3)`
-/

namespace A291394.P11321823672352915723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123620 (n + 1) + (A155116 (n + 1) - A221454 (n + 3))

end

end A291394.P11321823672352915723

namespace A291394

/-- `A123620(n+1)+A155116(n+1)-A221454(n+3)` -/
def P11321823672352915723.Spec : Prop :=
  ∀ n, P11321823672352915723.a n = A291394 n

end A291394

/-! ## A291394.P7774281742500835047

`A106435(n+2)-(A221454(n+3)+A030195(n+2))`
-/

namespace A291394.P7774281742500835047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106435 (n + 2) - (A221454 (n + 3) + A030195 (n + 2))

end

end A291394.P7774281742500835047

namespace A291394

/-- `A106435(n+2)-(A221454(n+3)+A030195(n+2))` -/
def P7774281742500835047.Spec : Prop :=
  ∀ n, P7774281742500835047.a n = A291394 n

end A291394

/-! ## A291394.P17333650738276691831

`2*A291395(n)-A291396(n)`
-/

namespace A291394.P17333650738276691831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A291395 n - A291396 n

end

end A291394.P17333650738276691831

namespace A291394

/-- `2*A291395(n)-A291396(n)` -/
def P17333650738276691831.Spec : Prop :=
  ∀ n, P17333650738276691831.a n = A291394 n

end A291394

/-! ## A291394.P15449424906489856768

`A291393(n)+A291396(n)-A291395(n)`
-/

namespace A291394.P15449424906489856768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291393 n + (A291396 n - A291395 n)

end

end A291394.P15449424906489856768

namespace A291394

/-- `A291393(n)+A291396(n)-A291395(n)` -/
def P15449424906489856768.Spec : Prop :=
  ∀ n, P15449424906489856768.a n = A291394 n

end A291394

/-! ## A291394.P10891540428583493362

`∑{#}[n, (-1)^(n-#)*C(n, #)*A291184(#)]`
-/

namespace A291394.P10891540428583493362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A291184 k : ℚ)

end

end A291394.P10891540428583493362

namespace A291394

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A291184(#)]` -/
def P10891540428583493362.Spec : Prop :=
  ∀ n, P10891540428583493362.a n = (A291394 n : ℚ)

end A291394

/-!
# A291395: p-INVERT of (1,1,0,0,0,0,...), where p(S) = (1 - 2 S)(1 - 3 S).

The programs for A291395, the canonical program `A291395.P9900462658340151089` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291395 has offset 0).

The definition of A291395 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291395.P10652432626695149959

`ogf((5-x-12x^2-6x^3)/(1-5x+x^2+12x^3+6x^4))`
-/

namespace A291395.P10652432626695149959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -1, -12, -6] [1, -5, 1, 12, 6] n

end

end A291395.P10652432626695149959

namespace A291395

/-- `ogf((5-x-12x^2-6x^3)/(1-5x+x^2+12x^3+6x^4))` -/
def P10652432626695149959.Spec : Prop :=
  ∀ n, P10652432626695149959.a n = A291395 n

end A291395

/-! ## A291395.P9900462658340151089

`5*a(n-1)-a(n-2)-12*a(n-3)-6*a(n-4)` with `a(0)=5, a(1)=24, a(2)=103, a(3)=425`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291395

/-- `5*a(n-1)-a(n-2)-12*a(n-3)-6*a(n-4)` -/
def P9900462658340151089.Spec : Prop :=
  ∀ n, P9900462658340151089.a n = A291395 n

theorem P9900462658340151089.correct : P9900462658340151089.Spec := by
  intro n
  simp only [A291395]

end A291395

/-! ## A291395.P12262878201454817920

`2*A291394(n)-A291393(n)`
-/

namespace A291395.P12262878201454817920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A291394 n - A291393 n

end

end A291395.P12262878201454817920

namespace A291395

/-- `2*A291394(n)-A291393(n)` -/
def P12262878201454817920.Spec : Prop :=
  ∀ n, P12262878201454817920.a n = A291395 n

end A291395

/-! ## A291395.P17085855400752445831

`A106435(n+2)-A293007(n+3)`
-/

namespace A291395.P17085855400752445831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106435 (n + 2) - A293007 (n + 3)

end

end A291395.P17085855400752445831

namespace A291395

/-- `A106435(n+2)-A293007(n+3)` -/
def P17085855400752445831.Spec : Prop :=
  ∀ n, P17085855400752445831.a n = A291395 n

end A291395

/-! ## A291395.P17887968561645914770

`A106435(n+2)-A028860(n+4)`
-/

namespace A291395.P17887968561645914770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106435 (n + 2) - A028860 (n + 4)

end

end A291395.P17887968561645914770

namespace A291395

/-- `A106435(n+2)-A028860(n+4)` -/
def P17887968561645914770.Spec : Prop :=
  ∀ n, P17887968561645914770.a n = A291395 n

end A291395

/-! ## A291395.P1704704875887230432

`(A291396(n)+A291394(n))/2`
-/

namespace A291395.P1704704875887230432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291396 n + A291394 n : ℚ) / 2

end

end A291395.P1704704875887230432

namespace A291395

/-- `(A291396(n)+A291394(n))/2` -/
def P1704704875887230432.Spec : Prop :=
  ∀ n, P1704704875887230432.a n = (A291395 n : ℚ)

end A291395

/-! ## A291395.P9435581444599361243

`A291393(n)+A291396(n)-A291394(n)`
-/

namespace A291395.P9435581444599361243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291393 n + (A291396 n - A291394 n)

end

end A291395.P9435581444599361243

namespace A291395

/-- `A291393(n)+A291396(n)-A291394(n)` -/
def P9435581444599361243.Spec : Prop :=
  ∀ n, P9435581444599361243.a n = A291395 n

end A291395

/-!
# A291396: p-INVERT of (1,1,0,0,0,0,...), where p(S) = (1 - S)(1 - 2 S)(1 - 3 S).

The programs for A291396, the canonical program `A291396.P6173022887286780243` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291396 has offset 0).

The definition of A291396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291396.P6173022887286780243

`ogf((6-5x-16x^2+7x^3+18x^4+6x^5)/(1-6x+5x^2+16x^3-7x^4-18x^5-6x^6))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291396

/-- `ogf((6-5x-16x^2+7x^3+18x^4+6x^5)/(1-6x+5x^2+16x^3-7x^4-18x^5-6x^6))` -/
def P6173022887286780243.Spec : Prop :=
  ∀ n, P6173022887286780243.a n = A291396 n

theorem P6173022887286780243.correct : P6173022887286780243.Spec := by
  intro n
  simp only [A291396]

end A291396

/-! ## A291396.P12241741448704826286

`2*A291395(n)-A291394(n)`
-/

namespace A291396.P12241741448704826286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A291395 n - A291394 n

end

end A291396.P12241741448704826286

namespace A291396

/-- `2*A291395(n)-A291394(n)` -/
def P12241741448704826286.Spec : Prop :=
  ∀ n, P12241741448704826286.a n = A291396 n

end A291396

/-! ## A291396.P6751158321756854174

`A291394(n)+A291395(n)-A291393(n)`
-/

namespace A291396.P6751158321756854174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291394 n + (A291395 n - A291393 n)

end

end A291396.P6751158321756854174

namespace A291396

/-- `A291394(n)+A291395(n)-A291393(n)` -/
def P6751158321756854174.Spec : Prop :=
  ∀ n, P6751158321756854174.a n = A291396 n

end A291396

/-!
# A291397: p-INVERT of (1,1,0,0,0,0,...), where p(S) = 1 - S - S^3.

The programs for A291397, the canonical program `A291397.P18280641896273261869` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291397 has offset 0).

The definition of A291397 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291397.P18280641896273261869

`ogf((1+x+x^2+3x^3+3x^4+x^5)/(1-x-x^2-x^3-3x^4-3x^5-x^6))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291397

/-- `ogf((1+x+x^2+3x^3+3x^4+x^5)/(1-x-x^2-x^3-3x^4-3x^5-x^6))` -/
def P18280641896273261869.Spec : Prop :=
  ∀ n, P18280641896273261869.a n = A291397 n

theorem P18280641896273261869.correct : P18280641896273261869.Spec := by
  intro n
  simp only [A291397]

end A291397

/-! ## A291397.P5686173049583431346

`∑{#}[n, (-1)^(n-#)*C(n, #)*A290897(#)]`
-/

namespace A291397.P5686173049583431346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A290897 k : ℚ)

end

end A291397.P5686173049583431346

namespace A291397

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A290897(#)]` -/
def P5686173049583431346.Spec : Prop :=
  ∀ n, P5686173049583431346.a n = (A291397 n : ℚ)

end A291397

/-! ## A291397.P10925489256487048086

`A339695(A369836(n))`
-/

namespace A291397.P10925489256487048086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339695 (A369836 n).toNat

end

end A291397.P10925489256487048086

namespace A291397

/-- `A339695(A369836(n))` -/
def P10925489256487048086.Spec : Prop :=
  ∀ n, P10925489256487048086.a n = A291397 n

end A291397

/-! ## A291397.P444012133869472202

`A339695(A003520(5*n))`
-/

namespace A291397.P444012133869472202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339695 (A003520 (5 * n)).toNat

end

end A291397.P444012133869472202

namespace A291397

/-- `A339695(A003520(5*n))` -/
def P444012133869472202.Spec : Prop :=
  ∀ n, P444012133869472202.a n = A291397 n

end A291397

/-!
# A291398: p-INVERT of (1,1,0,0,0,0,...), where p(S) = 1 - S^2 - S^3.

The programs for A291398, the canonical program `A291398.P16768848916502876308` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291398 has offset 0).

The definition of A291398 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291398.P16768848916502876308

`a(n-2)+3*a(n-3)+4*a(n-4)+3*a(n-5)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5, a(4)=9, a(5)=19`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291398

/-- `a(n-2)+3*a(n-3)+4*a(n-4)+3*a(n-5)+a(n-6)` -/
def P16768848916502876308.Spec : Prop :=
  ∀ n, (P16768848916502876308.a n : ℤ) = A291398 n

theorem P16768848916502876308.correct : P16768848916502876308.Spec := by
  intro n
  simp only [A291398]

end A291398

/-! ## A291398.P8267733284303689625

`ogf((x+3x^2+4x^3+3x^4+x^5)/(1-x^2-3x^3-4x^4-3x^5-x^6))`
-/

namespace A291398.P8267733284303689625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3, 4, 3, 1] [1, 0, -1, -3, -4, -3, -1] n

end

end A291398.P8267733284303689625

namespace A291398

/-- `ogf((x+3x^2+4x^3+3x^4+x^5)/(1-x^2-3x^3-4x^4-3x^5-x^6))` -/
def P8267733284303689625.Spec : Prop :=
  ∀ n, P8267733284303689625.a n = A291398 n

end A291398

/-! ## A291398.P6118525468273760055

`∑{#}[n, (-1)^(n-#)*C(n, #)*A290900(#)]`
-/

namespace A291398.P6118525468273760055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A290900 k : ℚ)

end

end A291398.P6118525468273760055

namespace A291398

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A290900(#)]` -/
def P6118525468273760055.Spec : Prop :=
  ∀ n, P6118525468273760055.a n = (A291398 n : ℚ)

end A291398

/-!
# A291399: p-INVERT of (1,1,0,0,0,0,...), where p(S) = 1 - S - S^2 - S^3 - S^4.

The programs for A291399, the canonical program `A291399.P16333713568382212859` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291399 has offset 0).

The definition of A291399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291399.P16333713568382212859

`ogf((1+2x+3x^2+5x^3+7x^4+7x^5+4x^6+x^7)/(1-x-2x^2-3x^3-5x^4-7x^5-7x^6-4x^7-x^8))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A291399

/-- `ogf((1+2x+3x^2+5x^3+7x^4+7x^5+4x^6+x^7)/(1-x-2x^2-3x^3-5x^4-7x^5-7x^6-4x^7-x^8))` -/
def P16333713568382212859.Spec : Prop :=
  ∀ n, P16333713568382212859.a n = A291399 n

theorem P16333713568382212859.correct : P16333713568382212859.Spec := by
  intro n
  simp only [A291399]

end A291399

/-! ## A291399.P9369794103970640044

`∑{#}[n, (-1)^(n-#)*C(n, #)*A291030(#)]`
-/

namespace A291399.P9369794103970640044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A291030 k : ℚ)

end

end A291399.P9369794103970640044

namespace A291399

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A291030(#)]` -/
def P9369794103970640044.Spec : Prop :=
  ∀ n, P9369794103970640044.a n = (A291399 n : ℚ)

end A291399

/-! ## A291399.P8117157714280962176

`A276798(A001924(2*(n+1))+A000587(n+1))`
-/

namespace A291399.P8117157714280962176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A001924 (2 * (n + 1)) + A000587 (n + 1)).toNat

end

end A291399.P8117157714280962176

namespace A291399

/-- `A276798(A001924(2*(n+1))+A000587(n+1))` -/
def P8117157714280962176.Spec : Prop :=
  ∀ n, P8117157714280962176.a n = A291399 n

end A291399

