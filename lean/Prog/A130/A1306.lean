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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A130602: A shell geometric model of the atomic nucleus.

The programs for A130602, there is no canonical definition to state claims against.
-/

/-! ## A130602.P1378856770379917054

`or(1, A130598(n+1))`
-/

namespace A130602.P1378856770379917054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A130598 (n + 1))

end

end A130602.P1378856770379917054

/-! ## A130602.P11997355912267775943

`A000042(A162630(n+1))`
-/

namespace A130602.P11997355912267775943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A162630 (n + 1)).toNat

end

end A130602.P11997355912267775943

/-! ## A130602.P3963568435731764883

`A099814(A130517(n+1))`
-/

namespace A130602.P3963568435731764883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099814 (A130517 (n + 1)).toNat

end

end A130602.P3963568435731764883

/-! ## A130602.P5783781730566634932

`A287196(A162630(n+1)+1)`
-/

namespace A130602.P5783781730566634932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287196 (A162630 (n + 1) + 1).toNat

end

end A130602.P5783781730566634932

/-! ## A130602.P6905711519449046365

`A281418(A162630(n+1)-1)`
-/

namespace A130602.P6905711519449046365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281418 (A162630 (n + 1) - 1).toNat

end

end A130602.P6905711519449046365

/-!
# A130604: Numbers whose base-10 and base-7 representations are permutations of the same multiset of digits.

The programs for A130604, there is no canonical definition to state claims against.
-/

/-! ## A130604.P2266453579156903379

`eq[A004186(n), A004186(A007093(n))]`
-/

namespace A130604.P2266453579156903379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A130604.P2266453579156903379

/-! ## A130604.P12622671548825971063

`eq[A047842(A007093(n)), A047842(n)]`
-/

namespace A130604.P12622671548825971063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (A007093 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A130604.P12622671548825971063

/-! ## A130604.P17405990944988614835

`eq[A306958(A007093(n)), A306958(n)]`
-/

namespace A130604.P17405990944988614835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306958 (A007093 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306958 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A130604.P17405990944988614835

/-! ## A130604.P11674036585953612442

`A037440(A028310(n))%A309159(2*n)`
-/

namespace A130604.P11674036585953612442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037440 (A028310 n).toNat) (A309159 (2 * n))

end

end A130604.P11674036585953612442

/-! ## A130604.P17760198901599764452

`eq[n, A333659(A007093(n))]`
-/

namespace A130604.P17760198901599764452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A130604.P17760198901599764452

/-!
# A130606: a(n) = prime(n+1)^n - prime(n)^n where prime(n) is the n-th prime number.

The programs for A130606, there is no canonical definition to state claims against.
-/

/-! ## A130606.P6833711962856817975

`A093360(n+2)-A062457(n+1)`
-/

namespace A130606.P6833711962856817975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093360 (n + 2) - A062457 (n + 1)

end

end A130606.P6833711962856817975

/-! ## A130606.P9436981676346275450

`Δ[A135485(n+1)]-A062457(n+1)`
-/

namespace A130606.P9436981676346275450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A062457 (n + 1)

end

end A130606.P9436981676346275450

/-! ## A130606.P2445136323390077774

`Δ[A135485(n+1)]-A000040(n+1)^(n+1)`
-/

namespace A130606.P2445136323390077774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000040 (n + 1) ^ (n + 1)

end

end A130606.P2445136323390077774

/-! ## A130606.P11777913662582211919

`Δ[A135485(n+1)]-record[A006530(n+2)]^(n+1)`
-/

namespace A130606.P11777913662582211919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) ^ (n + 1)

end

end A130606.P11777913662582211919

/-! ## A130606.P12781701305129397055

`Δ[A135485(n+1)]-record[A014963(n+2)]^(n+1)`
-/

namespace A130606.P12781701305129397055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) ^ (n + 1)

end

end A130606.P12781701305129397055

/-!
# A130607: a(n) = prime(n+1)^n + prime(n)^n.

The programs for A130607, there is no canonical definition to state claims against.
-/

/-! ## A130607.P17151473005401790146

`A062457(n+1)+A093360(n+2)`
-/

namespace A130607.P17151473005401790146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062457 (n + 1) + A093360 (n + 2)

end

end A130607.P17151473005401790146

/-! ## A130607.P15700061775389291691

`A062457(n+1)+Δ[A135485(n+1)]`
-/

namespace A130607.P15700061775389291691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062457 (n + 1) + (f1 (n + 1) - f1 n)

end

end A130607.P15700061775389291691

/-! ## A130607.P958346004231781204

`A130606(n+1)+2*A062457(n+1)`
-/

namespace A130607.P958346004231781204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130606 (n + 1) + 2 * A062457 (n + 1)

end

end A130607.P958346004231781204

/-! ## A130607.P3020699391423053539

`A062457(n+1)+A000040(n+2)^(n+1)`
-/

namespace A130607.P3020699391423053539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062457 (n + 1) + A000040 (n + 2) ^ (n + 1)

end

end A130607.P3020699391423053539

/-! ## A130607.P17571566711988541642

`A062457(n+1)+A062457(n+2)/A000040(n+2)`
-/

namespace A130607.P17571566711988541642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062457 (n + 1) : ℚ) + (A062457 (n + 2) : ℚ) / (A000040 (n + 2) : ℚ)

end

end A130607.P17571566711988541642

/-!
# A130608: Nonnegative values x of solutions (x, y) to the Diophantine equation x^2+(x+167)^2 = y^2.

The programs for A130608, there is no canonical definition to state claims against.
-/

/-! ## A130608.P5418605141257776007

`A130609(n+1)+A118673(n)-A129992(n+1)`
-/

namespace A130608.P5418605141257776007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130609 (n + 1) + (A118673 n - A129992 (n + 1))

end

end A130608.P5418605141257776007

/-!
# A130609: Nonnegative values x of solutions (x, y) to the Diophantine equation x^2+(x+223)^2 = y^2.

The programs for A130609, there is no canonical definition to state claims against.
-/

/-! ## A130609.P13923621391944092650

`A129992(n+1)+A130608(n+1)-A118673(n)`
-/

namespace A130609.P13923621391944092650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129992 (n + 1) + (A130608 (n + 1) - A118673 n)

end

end A130609.P13923621391944092650

/-!
# A130610: Nonnegative values x of solutions (x, y) to the Diophantine equation x^2+(x+359)^2 = y^2.

The programs for A130610, there is no canonical definition to state claims against.
-/

/-! ## A130610.P3418869111262700504

`A101152(n+1)+A157119(n+1)-A129640(n+1)`
-/

namespace A130610.P3418869111262700504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101152 (n + 1) + (A157119 (n + 1) - A129640 (n + 1))

end

end A130610.P3418869111262700504

/-! ## A130610.P6499596776814879465

`A108707(A159844(n+2))`
-/

namespace A130610.P6499596776814879465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108707 (A159844 (n + 2)).toNat

end

end A130610.P6499596776814879465

/-!
# A130611: Tribonacci numbers A000073 which can be the hypotenuse of a Pythagorean triple.

The programs for A130611, there is no canonical definition to state claims against.
-/

/-! ## A130611.P14089638496246262099

`record[A007913(A000073(n+7))]`
-/

namespace A130611.P14089638496246262099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000073 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130611.P14089638496246262099

/-!
# A130612: Sum of the first 10^n squares.

The programs for A130612, the canonical program `A130612.P14557088500992157833` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130612 has offset 0).

The definition of A130612 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130612.P14557088500992157833

`(2*10^(3*n)+3*10^(2*n)+10^n)/6`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A130612

/-- `(2*10^(3*n)+3*10^(2*n)+10^n)/6` -/
def P14557088500992157833.Spec : Prop :=
  ∀ n, P14557088500992157833.a n = (A130612 n : ℚ)

end A130612

/-!
# A130613: Number of ways of placing non-attacking knights on an n X n chessboard symmetric about main diagonal.

The programs for A130613, there is no canonical definition to state claims against.
-/

/-! ## A130613.P11271261769866718607

`A075254(A136221(n))+n`
-/

namespace A130613.P11271261769866718607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (A136221 n).toNat + (n : ℤ)

end

end A130613.P11271261769866718607

/-!
# A130614: a(n) = p^(p-2), where p = prime(n).

The programs for A130614, there is no canonical definition to state claims against.
-/

/-! ## A130614.P3009004380509955053

`A000272(A000040(n+1))`
-/

namespace A130614.P3009004380509955053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 (A000040 (n + 1)).toNat

end

end A130614.P3009004380509955053

/-! ## A130614.P1467651428513532372

`record[n^∑{p}[n, #-2]]`
-/

namespace A130614.P1467651428513532372
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130614.P1467651428513532372

/-! ## A130614.P2724041161338025429

`record[∏{p}[n, n^(#-2)]]`
-/

namespace A130614.P2724041161338025429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (n : ℚ) ^ ((p : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130614.P2724041161338025429

/-! ## A130614.P711248907613716745

`record[A020639(n+1)^n/(n+1)]`
-/

namespace A130614.P711248907613716745
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) ^ n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130614.P711248907613716745

/-! ## A130614.P11499419804775244092

`A033842(A008837(n+1))`
-/

namespace A130614.P11499419804775244092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033842 (A008837 (n + 1)).toNat

end

end A130614.P11499419804775244092

/-!
# A130616: Number of triangular polyominoes (or polyiamonds) with perimeter at most n.

The programs for A130616, there is no canonical definition to state claims against.
-/

/-! ## A130616.P10892902656717882594

`∑[A057729(n+1)]`
-/

namespace A130616.P10892902656717882594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130616.P10892902656717882594

/-! ## A130616.P12228538797304133043

`∑[A284869(n+1)]`
-/

namespace A130616.P12228538797304133043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130616.P12228538797304133043

/-! ## A130616.P8093683369919976059

`A284869(A000027(n+1))+a(n-1)` with `a(0)=0`
-/

namespace A130616.P8093683369919976059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A284869 (A000027 (n + 1)).toNat + a (n - 1)

end

end A130616.P8093683369919976059

/-! ## A130616.P12659068227429534693

`A000931(∑[∑{e}[A128941(n)+1, #]])`
-/

namespace A130616.P12659068227429534693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128941 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130616.P12659068227429534693

/-! ## A130616.P6396345600223075881

`A100719(A001433(n+1)+n)-1`
-/

namespace A130616.P6396345600223075881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100719 (A001433 (n + 1) + (n : ℤ)).toNat - 1

end

end A130616.P6396345600223075881

/-!
# A130619: Let M(n) = {{n, 0, 1}, {1, 0, 0}, {0, 1, 0}}, then a(n) is the upper-right term of M(n)*M(n-1)*...*M(1).

The programs for A130619, the canonical program `A130619.P9595050797563076945` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130619 has offset 0).

The definition of A130619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130619.P9595050797563076945

`n*a(n-1)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A130619

/-- `n*a(n-1)+a(n-3)` -/
def P9595050797563076945.Spec : Prop :=
  ∀ n, (P9595050797563076945.a n : ℤ) = A130619 n

theorem P9595050797563076945.correct : P9595050797563076945.Spec := by
  intro n
  simp only [A130619]

end A130619

/-! ## A130619.P5350076656666156070

`n*a(n-1)-ceil(-a(n-3))` with `a(0)=0, a(1)=1, a(2)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A130619.P5350076656666156070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  (n : ℤ) * a (n - 1) - (-a (n - 3))

end

end A130619.P5350076656666156070

namespace A130619

/-- `n*a(n-1)-ceil(-a(n-3))` -/
def P5350076656666156070.Spec : Prop :=
  ∀ n, P5350076656666156070.a n = A130619 n

end A130619

/-! ## A130619.P11418939603487987869

`a(n-3)+a(n-1)/n^(-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A130619.P11418939603487987869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 3) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A130619.P11418939603487987869

namespace A130619

/-- `a(n-3)+a(n-1)/n^(-1)` -/
def P11418939603487987869.Spec : Prop :=
  ∀ n, P11418939603487987869.a n = (A130619 n : ℚ)

end A130619

/-! ## A130619.P15573348461459406384

`a(n-3)-a(n-1)*A001489(n)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A130619.P15573348461459406384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 3) - a (n - 1) * A001489 n

end

end A130619.P15573348461459406384

namespace A130619

/-- `a(n-3)-a(n-1)*A001489(n)` -/
def P15573348461459406384.Spec : Prop :=
  ∀ n, P15573348461459406384.a n = A130619 n

end A130619

/-!
# A130620: Defined in comments.

The programs for A130620, there is no canonical definition to state claims against.
-/

/-! ## A130620.P18156537991753541025

`A375438(n+1)+A020892(A000225(n+1)*A000225(n+1))`
-/

namespace A130620.P18156537991753541025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375438 (n + 1) + A020892 (A000225 (n + 1) * A000225 (n + 1)).toNat

end

end A130620.P18156537991753541025

/-!
# A130621: List the first term of each triple of consecutive primes with the property that their sum is the square of a prime.

The programs for A130621, there is no canonical definition to state claims against.
-/

/-! ## A130621.P14143320808112108475

`p?[A001222(A076304(n+1))*A206279(n+1)]`
-/

namespace A130621.P14143320808112108475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A076304 (n + 1)).toNat * A206279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130621.P14143320808112108475

/-! ## A130621.P15697639048344999618

`p?[A001221(A080665(n+1))*A206279(n+1)]`
-/

namespace A130621.P15697639048344999618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A080665 (n + 1)).toNat * A206279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A130621.P15697639048344999618

/-!
# A130622: Number of polyominoes with perimeter at most 2n.

The programs for A130622, there is no canonical definition to state claims against.
-/

/-! ## A130622.P15247206996588920023

`∑[A057730(n+1)]`
-/

namespace A130622.P15247206996588920023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130622.P15247206996588920023

/-! ## A130622.P17852717510946489016

`A057730(n+1)+a(A023443(n))` with `a(0)=0`
-/

namespace A130622.P17852717510946489016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A057730 (n + 1) + a (A023443 n).toNat

end

end A130622.P17852717510946489016

/-! ## A130622.P17522377030245173721

`∑[A266549(n+1)+A025426(A002057(n))]`
-/

namespace A130622.P17522377030245173721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266549 (n + 1) + A025426 (A002057 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130622.P17522377030245173721

/-! ## A130622.P11915903651700204466

`∑[A266549(n+1)+A137579(A027558(n))]`
-/

namespace A130622.P11915903651700204466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266549 (n + 1) + A137579 (A027558 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130622.P11915903651700204466

/-!
# A130623: Number of polyhexes with perimeter at most 2n.

The programs for A130623, there is no canonical definition to state claims against.
-/

/-! ## A130623.P13861449398423062323

`∑[A057779(n+1)]`
-/

namespace A130623.P13861449398423062323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130623.P13861449398423062323

/-! ## A130623.P13491645421453864458

`char[11]+∑[A258019(n+1)]`
-/

namespace A130623.P13491645421453864458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258019 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A130623.P13491645421453864458

/-! ## A130623.P4798791269580373963

`char[11]+∑[A258206(n+1)]`
-/

namespace A130623.P4798791269580373963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258206 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A130623.P4798791269580373963

/-! ## A130623.P10759295711773155408

`∑[A222252(A258019(n+1))]`
-/

namespace A130623.P10759295711773155408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A258019 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130623.P10759295711773155408

/-! ## A130623.P6669912233187091038

`∑[A222252(A258206(n+1))]`
-/

namespace A130623.P6669912233187091038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A258206 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130623.P6669912233187091038

/-!
# A130624: Binomial transform of A101000.

The programs for A130624, the canonical program `A130624.P4682208545825227580` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130624 has offset 0).

The definition of A130624 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130624.P4682208545825227580

`2^n+a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A130624

/-- `2^n+a(n-1)-a(n-2)` -/
def P4682208545825227580.Spec : Prop :=
  ∀ n, P4682208545825227580.a n = A130624 n

theorem P4682208545825227580.correct : P4682208545825227580.Spec := by
  intro n
  simp only [A130624]

end A130624

/-! ## A130624.P3031327849537079961

`3*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A130624.P3031327849537079961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 2 * a (n - 3)

end

end A130624.P3031327849537079961

namespace A130624

/-- `3*a(n-1)-3*a(n-2)+2*a(n-3)` -/
def P3031327849537079961.Spec : Prop :=
  ∀ n, P3031327849537079961.a n = A130624 n

end A130624

/-! ## A130624.P4471095664466189647

`ogf((x+2x^2)/(1-3x+3x^2-2x^3))`
-/

namespace A130624.P4471095664466189647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, -3, 3, -2] n

end

end A130624.P4471095664466189647

namespace A130624

/-- `ogf((x+2x^2)/(1-3x+3x^2-2x^3))` -/
def P4471095664466189647.Spec : Prop :=
  ∀ n, P4471095664466189647.a n = A130624 n

end A130624

/-! ## A130624.P7399451680176704385

`a(n-1)-(a(n-2)-2^n)` with `a(0)=0, a(1)=1`
-/

namespace A130624.P7399451680176704385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (a (n - 2) - (2 ^ n : ℤ))

end

end A130624.P7399451680176704385

namespace A130624

/-- `a(n-1)-(a(n-2)-2^n)` -/
def P7399451680176704385.Spec : Prop :=
  ∀ n, P7399451680176704385.a n = A130624 n

theorem P7399451680176704385.correct : P7399451680176704385.Spec := by
  intro n
  simp only [A130624, Nat.add_sub_cancel, A130624.P7399451680176704385.a, A130624.P4682208545825227580.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A130624

/-! ## A130624.P9967491079477850678

`A135446(n)+A130707(n)`
-/

namespace A130624.P9967491079477850678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135446 n + A130707 n

end

end A130624.P9967491079477850678

namespace A130624

/-- `A135446(n)+A130707(n)` -/
def P9967491079477850678.Spec : Prop :=
  ∀ n, P9967491079477850678.a n = A130624 n

end A130624

/-! ## A130624.P1562029503987880112

`A174737(n+1)+A130625(n)`
-/

namespace A130624.P1562029503987880112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174737 (n + 1) + A130625 n

end

end A130624.P1562029503987880112

namespace A130624

/-- `A174737(n+1)+A130625(n)` -/
def P1562029503987880112.Spec : Prop :=
  ∀ n, P1562029503987880112.a n = A130624 n

end A130624

/-! ## A130624.P1266080656680973121

`A130781(n+1)-A010892(n)`
-/

namespace A130624.P1266080656680973121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130781 (n + 1) - A010892 n

end

end A130624.P1266080656680973121

namespace A130624

/-- `A130781(n+1)-A010892(n)` -/
def P1266080656680973121.Spec : Prop :=
  ∀ n, P1266080656680973121.a n = A130624 n

end A130624

/-! ## A130624.P16821963984448597174

`A130750(n)-A024494(n+1)`
-/

namespace A130624.P16821963984448597174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130750 n - A024494 (n + 1)

end

end A130624.P16821963984448597174

namespace A130624

/-- `A130750(n)-A024494(n+1)` -/
def P16821963984448597174.Spec : Prop :=
  ∀ n, P16821963984448597174.a n = A130624 n

end A130624

/-! ## A130624.P5447109498328742597

`A083322(n+1)-A130151(n)`
-/

namespace A130624.P5447109498328742597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083322 (n + 1) - A130151 n

end

end A130624.P5447109498328742597

namespace A130624

/-- `A083322(n+1)-A130151(n)` -/
def P5447109498328742597.Spec : Prop :=
  ∀ n, P5447109498328742597.a n = A130624 n

end A130624

/-! ## A130624.P9464611568512179555

`A130625(n)-A119910(n+1)`
-/

namespace A130624.P9464611568512179555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130625 n - A119910 (n + 1)

end

end A130624.P9464611568512179555

namespace A130624

/-- `A130625(n)-A119910(n+1)` -/
def P9464611568512179555.Spec : Prop :=
  ∀ n, P9464611568512179555.a n = A130624 n

end A130624

/-! ## A130624.P172509999742660029

`A130750(n)-A131708(n+1)`
-/

namespace A130624.P172509999742660029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130750 n - A131708 (n + 1)

end

end A130624.P172509999742660029

namespace A130624

/-- `A130750(n)-A131708(n+1)` -/
def P172509999742660029.Spec : Prop :=
  ∀ n, P172509999742660029.a n = A130624 n

end A130624

/-! ## A130624.P447443554140171881

`A130625(n)-A138034(n+1)`
-/

namespace A130624.P447443554140171881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130625 n - A138034 (n + 1)

end

end A130624.P447443554140171881

namespace A130624

/-- `A130625(n)-A138034(n+1)` -/
def P447443554140171881.Spec : Prop :=
  ∀ n, P447443554140171881.a n = A130624 n

end A130624

/-! ## A130624.P11045372973695092170

`A174737(n+2)+A130626(n)`
-/

namespace A130624.P11045372973695092170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174737 (n + 2) + A130626 n

end

end A130624.P11045372973695092170

namespace A130624

/-- `A174737(n+2)+A130626(n)` -/
def P11045372973695092170.Spec : Prop :=
  ∀ n, P11045372973695092170.a n = A130624 n

end A130624

/-! ## A130624.P14297108845020006064

`A024493(n+2)-A010892(n)`
-/

namespace A130624.P14297108845020006064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 (n + 2) - A010892 n

end

end A130624.P14297108845020006064

namespace A130624

/-- `A024493(n+2)-A010892(n)` -/
def P14297108845020006064.Spec : Prop :=
  ∀ n, P14297108845020006064.a n = A130624 n

end A130624

/-! ## A130624.P1715018719010059994

`A024495(n+2)-A057079(n)`
-/

namespace A130624.P1715018719010059994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (n + 2) - A057079 n

end

end A130624.P1715018719010059994

namespace A130624

/-- `A024495(n+2)-A057079(n)` -/
def P1715018719010059994.Spec : Prop :=
  ∀ n, P1715018719010059994.a n = A130624 n

end A130624

/-! ## A130624.P14832900211480940761

`A086953(n+2)-A128834(n)`
-/

namespace A130624.P14832900211480940761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086953 (n + 2) - A128834 n

end

end A130624.P14832900211480940761

namespace A130624

/-- `A086953(n+2)-A128834(n)` -/
def P14832900211480940761.Spec : Prop :=
  ∀ n, P14832900211480940761.a n = A130624 n

end A130624

/-! ## A130624.P2377142065604575050

`A130707(n+2)-A087204(n)`
-/

namespace A130624.P2377142065604575050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130707 (n + 2) - A087204 n

end

end A130624.P2377142065604575050

namespace A130624

/-- `A130707(n+2)-A087204(n)` -/
def P2377142065604575050.Spec : Prop :=
  ∀ n, P2377142065604575050.a n = A130624 n

end A130624

/-! ## A130624.P7710597019681785867

`A130626(n)-A119910(n+2)`
-/

namespace A130624.P7710597019681785867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130626 n - A119910 (n + 2)

end

end A130624.P7710597019681785867

namespace A130624

/-- `A130626(n)-A119910(n+2)` -/
def P7710597019681785867.Spec : Prop :=
  ∀ n, P7710597019681785867.a n = A130624 n

end A130624

/-! ## A130624.P10490183519876058798

`2*A130781(n)-A087204(n)`
-/

namespace A130624.P10490183519876058798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130781 n - A087204 n

end

end A130624.P10490183519876058798

namespace A130624

/-- `2*A130781(n)-A087204(n)` -/
def P10490183519876058798.Spec : Prop :=
  ∀ n, P10490183519876058798.a n = A130624 n

end A130624

/-! ## A130624.P6704138228609767678

`∑[A131708(n)]+2*A024495(n)`
-/

namespace A130624.P6704138228609767678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A024495 n

end

end A130624.P6704138228609767678

namespace A130624

/-- `∑[A131708(n)]+2*A024495(n)` -/
def P6704138228609767678.Spec : Prop :=
  ∀ n, P6704138228609767678.a n = A130624 n

end A130624

/-!
# A130625: First differences of A130624.

The programs for A130625, the canonical program `A130625.P9044612254891729744` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130625 has offset 0).

The definition of A130625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130625.P9044612254891729744

`3*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=4, a(2)=7`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A130625

/-- `3*a(n-1)-3*a(n-2)+2*a(n-3)` -/
def P9044612254891729744.Spec : Prop :=
  ∀ n, P9044612254891729744.a n = A130625 n

theorem P9044612254891729744.correct : P9044612254891729744.Spec := by
  intro n
  simp only [A130625]

end A130625

/-! ## A130625.P18363037822428983867

`ogf((1+x-2x^2)/(1-3x+3x^2-2x^3))`
-/

namespace A130625.P18363037822428983867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2] [1, -3, 3, -2] n

end

end A130625.P18363037822428983867

namespace A130625

/-- `ogf((1+x-2x^2)/(1-3x+3x^2-2x^3))` -/
def P18363037822428983867.Spec : Prop :=
  ∀ n, P18363037822428983867.a n = A130625 n

end A130625

/-! ## A130625.P2838732405306745768

`2^n+a(n-1)-a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A130625.P2838732405306745768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (2 ^ n : ℤ) + (a (n - 1) - a (n - 2))

end

end A130625.P2838732405306745768

namespace A130625

/-- `2^n+a(n-1)-a(n-2)` -/
def P2838732405306745768.Spec : Prop :=
  ∀ n, P2838732405306745768.a n = A130625 n

end A130625

/-! ## A130625.P4210249899398178126

`a(n-1)-(a(n-2)-2^n)` with `a(0)=1, a(1)=4`
-/

namespace A130625.P4210249899398178126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) - (a (n - 2) - (2 ^ n : ℤ))

end

end A130625.P4210249899398178126

namespace A130625

/-- `a(n-1)-(a(n-2)-2^n)` -/
def P4210249899398178126.Spec : Prop :=
  ∀ n, P4210249899398178126.a n = A130625 n

end A130625

/-! ## A130625.P7070253194619733023

`A130626(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A130625.P7070253194619733023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A130626 (n - 1) + a (n - 1)

end

end A130625.P7070253194619733023

namespace A130625

/-- `A130626(n-1)+a(n-1)` -/
def P7070253194619733023.Spec : Prop :=
  ∀ n, P7070253194619733023.a n = A130625 n

end A130625

/-! ## A130625.P8656252751604857852

`A141775(n)+A131708(n)`
-/

namespace A130625.P8656252751604857852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141775 n + A131708 n

end

end A130625.P8656252751604857852

namespace A130625

/-- `A141775(n)+A131708(n)` -/
def P8656252751604857852.Spec : Prop :=
  ∀ n, P8656252751604857852.a n = A130625 n

end A130625

/-! ## A130625.P18202409862043420366

`A130752(n)-A130781(n)`
-/

namespace A130625.P18202409862043420366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130752 n - A130781 n

end

end A130625.P18202409862043420366

namespace A130625

/-- `A130752(n)-A130781(n)` -/
def P18202409862043420366.Spec : Prop :=
  ∀ n, P18202409862043420366.a n = A130625 n

end A130625

/-! ## A130625.P5708242801028526705

`A130626(n)-A174737(n)`
-/

namespace A130625.P5708242801028526705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130626 n - A174737 n

end

end A130625.P5708242801028526705

namespace A130625

/-- `A130626(n)-A174737(n)` -/
def P5708242801028526705.Spec : Prop :=
  ∀ n, P5708242801028526705.a n = A130625 n

end A130625

/-! ## A130625.P3186024609129248672

`A132798(n)+A083322(n+1)`
-/

namespace A130625.P3186024609129248672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132798 n + A083322 (n + 1)

end

end A130625.P3186024609129248672

namespace A130625

/-- `A132798(n)+A083322(n+1)` -/
def P3186024609129248672.Spec : Prop :=
  ∀ n, P3186024609129248672.a n = A130625 n

end A130625

/-! ## A130625.P3290415456281809568

`A130624(n)+A119910(n+1)`
-/

namespace A130625.P3290415456281809568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130624 n + A119910 (n + 1)

end

end A130625.P3290415456281809568

namespace A130625

/-- `A130624(n)+A119910(n+1)` -/
def P3290415456281809568.Spec : Prop :=
  ∀ n, P3290415456281809568.a n = A130625 n

end A130625

/-! ## A130625.P3348659816951537621

`A138034(n+1)+A130624(n)`
-/

namespace A130625.P3348659816951537621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138034 (n + 1) + A130624 n

end

end A130625.P3348659816951537621

namespace A130625

/-- `A138034(n+1)+A130624(n)` -/
def P3348659816951537621.Spec : Prop :=
  ∀ n, P3348659816951537621.a n = A130625 n

end A130625

/-! ## A130625.P7501488999498136137

`A086953(n+2)+A057079(n)`
-/

namespace A130625.P7501488999498136137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086953 (n + 2) + A057079 n

end

end A130625.P7501488999498136137

namespace A130625

/-- `A086953(n+2)+A057079(n)` -/
def P7501488999498136137.Spec : Prop :=
  ∀ n, P7501488999498136137.a n = A130625 n

end A130625

/-! ## A130625.P3514639607818776894

`A128834(n)+A024495(n+2)`
-/

namespace A130625.P3514639607818776894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + A024495 (n + 2)

end

end A130625.P3514639607818776894

namespace A130625

/-- `A128834(n)+A024495(n+2)` -/
def P3514639607818776894.Spec : Prop :=
  ∀ n, P3514639607818776894.a n = A130625 n

end A130625

/-! ## A130625.P10066974014010629245

`A130752(n)-A024493(n+1)`
-/

namespace A130625.P10066974014010629245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130752 n - A024493 (n + 1)

end

end A130625.P10066974014010629245

namespace A130625

/-- `A130752(n)-A024493(n+1)` -/
def P10066974014010629245.Spec : Prop :=
  ∀ n, P10066974014010629245.a n = A130625 n

end A130625

/-! ## A130625.P18382811588666977308

`A130626(n)-A119910(n+3)`
-/

namespace A130625.P18382811588666977308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130626 n - A119910 (n + 3)

end

end A130625.P18382811588666977308

namespace A130625

/-- `A130626(n)-A119910(n+3)` -/
def P18382811588666977308.Spec : Prop :=
  ∀ n, P18382811588666977308.a n = A130625 n

end A130625

/-! ## A130625.P3397493698184584783

`A130626(n)-A138034(n+3)`
-/

namespace A130625.P3397493698184584783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130626 n - A138034 (n + 3)

end

end A130625.P3397493698184584783

namespace A130625

/-- `A130626(n)-A138034(n+3)` -/
def P3397493698184584783.Spec : Prop :=
  ∀ n, P3397493698184584783.a n = A130625 n

end A130625

/-! ## A130625.P11497636042372638934

`A130785(n)-2*A024495(n)`
-/

namespace A130625.P11497636042372638934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130785 n - 2 * A024495 n

end

end A130625.P11497636042372638934

namespace A130625

/-- `A130785(n)-2*A024495(n)` -/
def P11497636042372638934.Spec : Prop :=
  ∀ n, P11497636042372638934.a n = A130625 n

end A130625

/-! ## A130625.P7341652302828113201

`A130752(n)-Δ[A024494(n+1)]`
-/

namespace A130625.P7341652302828113201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130752 n - (f1 (n + 1) - f1 n)

end

end A130625.P7341652302828113201

namespace A130625

/-- `A130752(n)-Δ[A024494(n+1)]` -/
def P7341652302828113201.Spec : Prop :=
  ∀ n, P7341652302828113201.a n = A130625 n

end A130625

/-! ## A130625.P992748831750745303

`A122876(n+1)+A086953(n+2)`
-/

namespace A130625.P992748831750745303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122876 (n + 1) + A086953 (n + 2)

end

end A130625.P992748831750745303

namespace A130625

/-- `A122876(n+1)+A086953(n+2)` -/
def P992748831750745303.Spec : Prop :=
  ∀ n, P992748831750745303.a n = A130625 n

end A130625

/-! ## A130625.P5892289045777017864

`A024494(n+2)-A087204(n+1)`
-/

namespace A130625.P5892289045777017864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024494 (n + 2) - A087204 (n + 1)

end

end A130625.P5892289045777017864

namespace A130625

/-- `A024494(n+2)-A087204(n+1)` -/
def P5892289045777017864.Spec : Prop :=
  ∀ n, P5892289045777017864.a n = A130625 n

end A130625

/-!
# A130626: Second differences of A130624.

The programs for A130626, the canonical program `A130626.P5762368918731110640` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130626 has offset 0).

The definition of A130626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130626.P5762368918731110640

`3*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=3, a(1)=3, a(2)=4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A130626

/-- `3*a(n-1)-3*a(n-2)+2*a(n-3)` -/
def P5762368918731110640.Spec : Prop :=
  ∀ n, P5762368918731110640.a n = A130626 n

theorem P5762368918731110640.correct : P5762368918731110640.Spec := by
  intro n
  simp only [A130626]

end A130626

/-! ## A130626.P4476912710270815949

`ogf((3-6x+4x^2)/(1-3x+3x^2-2x^3))`
-/

namespace A130626.P4476912710270815949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -6, 4] [1, -3, 3, -2] n

end

end A130626.P4476912710270815949

namespace A130626

/-- `ogf((3-6x+4x^2)/(1-3x+3x^2-2x^3))` -/
def P4476912710270815949.Spec : Prop :=
  ∀ n, P4476912710270815949.a n = A130626 n

end A130626

/-! ## A130626.P2159955267817719869

`2^n+a(n-1)-a(n-2)` with `a(0)=3, a(1)=3`
-/

namespace A130626.P2159955267817719869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  (2 ^ n : ℤ) + (a (n - 1) - a (n - 2))

end

end A130626.P2159955267817719869

namespace A130626

/-- `2^n+a(n-1)-a(n-2)` -/
def P2159955267817719869.Spec : Prop :=
  ∀ n, P2159955267817719869.a n = A130626 n

end A130626

/-! ## A130626.P11695560868708578642

`a(n-1)-(a(n-2)-2^n)` with `a(0)=3, a(1)=3`
-/

namespace A130626.P11695560868708578642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  a (n - 1) - (a (n - 2) - (2 ^ n : ℤ))

end

end A130626.P11695560868708578642

namespace A130626

/-- `a(n-1)-(a(n-2)-2^n)` -/
def P11695560868708578642.Spec : Prop :=
  ∀ n, P11695560868708578642.a n = A130626 n

end A130626

/-! ## A130626.P18332789289396189914

`a(n-1)-or(xor(2, 1-or(2, a(n-1))), a(n-2))` with `a(0)=3, a(1)=3`
-/

namespace A130626.P18332789289396189914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  a (n - 1) - Int.lor (Int.xor 2 (1 - Int.lor 2 (a (n - 1)))) (a (n - 2))

end

end A130626.P18332789289396189914

namespace A130626

/-- `a(n-1)-or(xor(2, 1-or(2, a(n-1))), a(n-2))` -/
def P18332789289396189914.Spec : Prop :=
  ∀ n, P18332789289396189914.a n = A130626 n

end A130626

/-! ## A130626.P11275005574233511464

`and(1-a(n-2), or(a(n-1), a(n-2)))+a(n-1)-1` with `a(0)=3, a(1)=3`
-/

namespace A130626.P11275005574233511464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  Int.land (1 - a (n - 2)) (Int.lor (a (n - 1)) (a (n - 2))) + (a (n - 1) - 1)

end

end A130626.P11275005574233511464

namespace A130626

/-- `and(1-a(n-2), or(a(n-1), a(n-2)))+a(n-1)-1` -/
def P11275005574233511464.Spec : Prop :=
  ∀ n, P11275005574233511464.a n = A130626 n

end A130626

/-! ## A130626.P1511332323995472140

`1-a(n-2)+a(n-1)+or(2, or(a(n-1), a(n-2)))` with `a(0)=3, a(1)=3`
-/

namespace A130626.P1511332323995472140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  1 - a (n - 2) + (a (n - 1) + Int.lor 2 (Int.lor (a (n - 1)) (a (n - 2))))

end

end A130626.P1511332323995472140

namespace A130626

/-- `1-a(n-2)+a(n-1)+or(2, or(a(n-1), a(n-2)))` -/
def P1511332323995472140.Spec : Prop :=
  ∀ n, P1511332323995472140.a n = A130626 n

end A130626

/-! ## A130626.P16558359130587775607

`A130624(n-1)+a(n-1)` with `a(0)=3`
-/

namespace A130626.P16558359130587775607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A130624 (n - 1) + a (n - 1)

end

end A130626.P16558359130587775607

namespace A130626

/-- `A130624(n-1)+a(n-1)` -/
def P16558359130587775607.Spec : Prop :=
  ∀ n, P16558359130587775607.a n = A130626 n

end A130626

/-! ## A130626.P7477665243846008664

`A174737(n)+A130625(n)`
-/

namespace A130626.P7477665243846008664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174737 n + A130625 n

end

end A130626.P7477665243846008664

namespace A130626

/-- `A174737(n)+A130625(n)` -/
def P7477665243846008664.Spec : Prop :=
  ∀ n, P7477665243846008664.a n = A130626 n

end A130626

/-! ## A130626.P2866322780888025410

`A130781(n)+Δ[A130759(n)]`
-/

namespace A130626.P2866322780888025410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130781 n + (f1 (n + 1) - f1 n)

end

end A130626.P2866322780888025410

namespace A130626

/-- `A130781(n)+Δ[A130759(n)]` -/
def P2866322780888025410.Spec : Prop :=
  ∀ n, P2866322780888025410.a n = A130626 n

end A130626

/-! ## A130626.P9244277384472220570

`A130755(n)-Δ[A130781(n)]`
-/

namespace A130626.P9244277384472220570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130781 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130755 n - (f1 (n + 1) - f1 n)

end

end A130626.P9244277384472220570

namespace A130626

/-- `A130755(n)-Δ[A130781(n)]` -/
def P9244277384472220570.Spec : Prop :=
  ∀ n, P9244277384472220570.a n = A130626 n

end A130626

/-! ## A130626.P4227999636465657813

`A130781(n+1)+A087204(n)`
-/

namespace A130626.P4227999636465657813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130781 (n + 1) + A087204 n

end

end A130626.P4227999636465657813

namespace A130626

/-- `A130781(n+1)+A087204(n)` -/
def P4227999636465657813.Spec : Prop :=
  ∀ n, P4227999636465657813.a n = A130626 n

end A130626

/-! ## A130626.P14478798744620549584

`A087204(n)+A024493(n+2)`
-/

namespace A130626.P14478798744620549584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087204 n + A024493 (n + 2)

end

end A130626.P14478798744620549584

namespace A130626

/-- `A087204(n)+A024493(n+2)` -/
def P14478798744620549584.Spec : Prop :=
  ∀ n, P14478798744620549584.a n = A130626 n

end A130626

/-! ## A130626.P17950855103215824811

`A130707(n+2)+A010892(n)`
-/

namespace A130626.P17950855103215824811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130707 (n + 2) + A010892 n

end

end A130626.P17950855103215824811

namespace A130626

/-- `A130707(n+2)+A010892(n)` -/
def P17950855103215824811.Spec : Prop :=
  ∀ n, P17950855103215824811.a n = A130626 n

end A130626

/-! ## A130626.P5319242289204957346

`A130624(n)+A119910(n+2)`
-/

namespace A130626.P5319242289204957346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130624 n + A119910 (n + 2)

end

end A130626.P5319242289204957346

namespace A130626

/-- `A130624(n)+A119910(n+2)` -/
def P5319242289204957346.Spec : Prop :=
  ∀ n, P5319242289204957346.a n = A130626 n

end A130626

/-! ## A130626.P8673953903680038908

`A138034(n+2)+A130624(n)`
-/

namespace A130626.P8673953903680038908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138034 (n + 2) + A130624 n

end

end A130626.P8673953903680038908

namespace A130626

/-- `A138034(n+2)+A130624(n)` -/
def P8673953903680038908.Spec : Prop :=
  ∀ n, P8673953903680038908.a n = A130626 n

end A130626

/-! ## A130626.P14957131602481811773

`A130625(n)+A119910(n+3)`
-/

namespace A130626.P14957131602481811773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130625 n + A119910 (n + 3)

end

end A130626.P14957131602481811773

namespace A130626

/-- `A130625(n)+A119910(n+3)` -/
def P14957131602481811773.Spec : Prop :=
  ∀ n, P14957131602481811773.a n = A130626 n

end A130626

/-! ## A130626.P6100199858165131676

`A138034(n+3)+A130625(n)`
-/

namespace A130626.P6100199858165131676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138034 (n + 3) + A130625 n

end

end A130626.P6100199858165131676

namespace A130626

/-- `A138034(n+3)+A130625(n)` -/
def P6100199858165131676.Spec : Prop :=
  ∀ n, P6100199858165131676.a n = A130626 n

end A130626

/-! ## A130626.P8305541693780363903

`A010892(n)+2*A130781(n)`
-/

namespace A130626.P8305541693780363903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n + 2 * A130781 n

end

end A130626.P8305541693780363903

namespace A130626

/-- `A010892(n)+2*A130781(n)` -/
def P8305541693780363903.Spec : Prop :=
  ∀ n, P8305541693780363903.a n = A130626 n

end A130626

/-! ## A130626.P15741057559073593919

`A130781(n)+2*A024493(n)`
-/

namespace A130626.P15741057559073593919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130781 n + 2 * A024493 n

end

end A130626.P15741057559073593919

namespace A130626

/-- `A130781(n)+2*A024493(n)` -/
def P15741057559073593919.Spec : Prop :=
  ∀ n, P15741057559073593919.a n = A130626 n

end A130626

/-!
# A130628: Related to the minimal number of periodic orbits of periods guaranteed by Sharkovskii's theorem.

The programs for A130628, there is no canonical definition to state claims against.
-/

/-! ## A130628.P9329974863154781775

`A208092(A004442(n+2)%A208097(n+1))`
-/

namespace A130628.P9329974863154781775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208092 (Int.tmod (A004442 (n + 2)) (A208097 (n + 1))).toNat

end

end A130628.P9329974863154781775

/-! ## A130628.P7071880668116699567

`A208092(n+1)+A105165(A230625(3*n+5))`
-/

namespace A130628.P7071880668116699567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208092 (n + 1) + A105165 (A230625 (3 * n + 5)).toNat

end

end A130628.P7071880668116699567

/-! ## A130628.P190323879066431902

`A208092(A390761(n+1))`
-/

namespace A130628.P190323879066431902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208092 (A390761 (n + 1)).toNat

end

end A130628.P190323879066431902

/-! ## A130628.P3648576282837397375

`floor(A278243(n)/A247397(n+1))`
-/

namespace A130628.P3648576282837397375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A278243 n : ℚ) / (A247397 (n + 1) : ℚ)⌋

end

end A130628.P3648576282837397375

/-! ## A130628.P12181191970391458351

`A107846(n+1)+and((-1)^n, A319642(floor(n/(n%2+1))))`
-/

namespace A130628.P12181191970391458351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (n + 1) + Int.land ((-1) ^ n) (A319642 ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋.toNat)

end

end A130628.P12181191970391458351

/-!
# A130629: Number of virtual knots of crossing number n, counting only classical crossings. Mirror images and inverses are not distinguished.

The programs for A130629, there is no canonical definition to state claims against.
-/

/-! ## A130629.P11741189557453150665

`A047252(A001499(n)+1)`
-/

namespace A130629.P11741189557453150665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047252 (A001499 n + 1).toNat

end

end A130629.P11741189557453150665

/-! ## A130629.P6221852600205040429

`A047263(A001499(n)+1)`
-/

namespace A130629.P6221852600205040429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A001499 n + 1).toNat

end

end A130629.P6221852600205040429

/-!
# A130630: Periodic sequence with period 1 1 1 1 1 0 0 0 0.

The programs for A130630, the canonical program `A130630.P9226578181455937483` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130630 has offset 0).

The definition of A130630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130630.P9226578181455937483

`dr(Δ[n²])%2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A130630

/-- `dr(Δ[n²])%2` -/
def P9226578181455937483.Spec : Prop :=
  ∀ n, (P9226578181455937483.a n : ℤ) = A130630 n

theorem P9226578181455937483.correct : P9226578181455937483.Spec := by
  intro n
  simp only [A130630]

end A130630

/-!
# A130631: Multiplicative persistence of Fibonacci numbers.

The programs for A130631, the canonical program `A130631.P1421686005410955082` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130631 has offset 0).

The definition of A130631 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031346, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A130631.P1421686005410955082

`A031346(A000045(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130631

/-- `A031346(A000045(n))` -/
def P1421686005410955082.Spec : Prop :=
  ∀ n, P1421686005410955082.a n = A130631 n

theorem P1421686005410955082.correct : P1421686005410955082.Spec := by
  intro n
  simp only [A130631]

end A130631

/-!
# A130632: Number of natural numbers between d(n) and d(n+1), where d(n) denotes the number of divisors of n.

The programs for A130632, the canonical program `A130632.P9883400220475376543` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130632 has offset 1).

The definition of A130632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130632.P12492661964731089378

`floor(log(cosh(Δ[A000005(n+1)])))`
-/

namespace A130632.P12492661964731089378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.cosh (f1 (n + 1) - f1 n : ℝ))⌋

end

end A130632.P12492661964731089378

namespace A130632

/-- `floor(log(cosh(Δ[A000005(n+1)])))` -/
def P12492661964731089378.Spec : Prop :=
  ∀ n, P12492661964731089378.a n = A130632 (n + 1)

end A130632

/-! ## A130632.P16661805469022359539

`A259361(Δ[A000005(n+1)]²)`
-/

namespace A130632.P16661805469022359539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A130632.P16661805469022359539

namespace A130632

/-- `A259361(Δ[A000005(n+1)]²)` -/
def P16661805469022359539.Spec : Prop :=
  ∀ n, P16661805469022359539.a n = A130632 (n + 1)

end A130632

/-! ## A130632.P10542500748313671259

`A025581(2*Δ[A000005(n+1)]²)`
-/

namespace A130632.P10542500748313671259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * (f1 (n + 1) - f1 n) ^ 2).toNat

end

end A130632.P10542500748313671259

namespace A130632

/-- `A025581(2*Δ[A000005(n+1)]²)` -/
def P10542500748313671259.Spec : Prop :=
  ∀ n, P10542500748313671259.a n = A130632 (n + 1)

end A130632

/-! ## A130632.P4887812495806926629

`A003056(floor(Δ[A000005(n+1)]²/2))`
-/

namespace A130632.P4887812495806926629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ⌊((f1 (n + 1) - f1 n) ^ 2 : ℚ) / 2⌋.toNat

end

end A130632.P4887812495806926629

namespace A130632

/-- `A003056(floor(Δ[A000005(n+1)]²/2))` -/
def P4887812495806926629.Spec : Prop :=
  ∀ n, P4887812495806926629.a n = A130632 (n + 1)

end A130632

/-! ## A130632.P9883400220475376543

`(A051950(n+2)-A182394(n+2))*A182394(n+2)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A130632

/-- `(A051950(n+2)-A182394(n+2))*A182394(n+2)` -/
def P9883400220475376543.Spec : Prop :=
  ∀ n, P9883400220475376543.a n = A130632 (n + 1)

theorem P9883400220475376543.correct : P9883400220475376543.Spec := by
  intro n
  simp only [A130632, Nat.add_sub_cancel]

end A130632

/-! ## A130632.P11923285890375134913

`A259361(Δ[∏{e}[n+1, #+1]]²)`
-/

namespace A130632.P11923285890375134913
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A130632.P11923285890375134913

namespace A130632

/-- `A259361(Δ[∏{e}[n+1, #+1]]²)` -/
def P11923285890375134913.Spec : Prop :=
  ∀ n, P11923285890375134913.a n = A130632 (n + 1)

end A130632

/-! ## A130632.P8247997330212529402

`A339186(Δ[∏{e}[n+1, #+1]]²)`
-/

namespace A130632.P8247997330212529402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339186 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A130632.P8247997330212529402

namespace A130632

/-- `A339186(Δ[∏{e}[n+1, #+1]]²)` -/
def P8247997330212529402.Spec : Prop :=
  ∀ n, P8247997330212529402.a n = A130632 (n + 1)

end A130632

/-! ## A130632.P18212001301396554700

`(A341062(n+2)-A182394(n+2))*A182394(n+2)`
-/

namespace A130632.P18212001301396554700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A341062 (n + 2) - A182394 (n + 2)) * A182394 (n + 2)

end

end A130632.P18212001301396554700

namespace A130632

/-- `(A341062(n+2)-A182394(n+2))*A182394(n+2)` -/
def P18212001301396554700.Spec : Prop :=
  ∀ n, P18212001301396554700.a n = A130632 (n + 1)

end A130632

/-! ## A130632.P18255357595217045321

`A086520(Δ[A000005(n+1)]²)`
-/

namespace A130632.P18255357595217045321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A130632.P18255357595217045321

namespace A130632

/-- `A086520(Δ[A000005(n+1)]²)` -/
def P18255357595217045321.Spec : Prop :=
  ∀ n, P18255357595217045321.a n = A130632 (n + 1)

end A130632

/-!
# A130633: Additive persistence of Fibonacci numbers.

The programs for A130633, there is no canonical definition to state claims against.
-/

/-! ## A130633.P12965219005439803027

`A031286(A000045(n)%A067374(n+1))`
-/

namespace A130633.P12965219005439803027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (Int.tmod (A000045 n) (A067374 (n + 1))).toNat

end

end A130633.P12965219005439803027

/-! ## A130633.P18366293382230320829

`A031286(abs(A236191(n)%A067374(n+1)))`
-/

namespace A130633.P18366293382230320829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 |Int.tmod (A236191 n) (A067374 (n + 1))|.toNat

end

end A130633.P18366293382230320829

/-! ## A130633.P3124020356796738381

`A031286(A212804(n+1)%A067374(n+1))`
-/

namespace A130633.P3124020356796738381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (Int.tmod (A212804 (n + 1)) (A067374 (n + 1))).toNat

end

end A130633.P3124020356796738381

/-! ## A130633.P7284283112984279802

`A031286((A001611(n)-1)%A067374(n+1))`
-/

namespace A130633.P7284283112984279802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (Int.tmod (A001611 n - 1) (A067374 (n + 1))).toNat

end

end A130633.P7284283112984279802

/-!
# A130634: Additive persistence of double factorials.

The programs for A130634, there is no canonical definition to state claims against.
-/

/-! ## A130634.P16288626839408092738

`ceil(atan(log2(A347796(n))))`
-/

namespace A130634.P16288626839408092738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (Real.logb 2 (A347796 n : ℝ))⌉

end

end A130634.P16288626839408092738

/-! ## A130634.P12074723310143694704

`val(A162919(abs(1-n)), 40)`
-/

namespace A130634.P12074723310143694704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A162919 |1 - (n : ℤ)|.toNat).toNat 40

end

end A130634.P12074723310143694704

/-! ## A130634.P4670525881613613332

`ceil(atan(∑[A177351(n)-1]+1))`
-/

namespace A130634.P4670525881613613332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177351 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℝ)⌉

end

end A130634.P4670525881613613332

/-! ## A130634.P15127194909590852943

`ceil(atan(xor(n+1, A298538(n+1))))`
-/

namespace A130634.P15127194909590852943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (Int.xor (n + 1 : ℤ) (A298538 (n + 1)) : ℝ)⌉

end

end A130634.P15127194909590852943

/-! ## A130634.P14444251286595477132

`ceil(atan(xor(n+1, A331913(n+1))))`
-/

namespace A130634.P14444251286595477132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (Int.xor (n + 1 : ℤ) (A331913 (n + 1)) : ℝ)⌉

end

end A130634.P14444251286595477132

/-! ## A130634.P6163048557512093764

`A046698(A347796(n)-1)`
-/

namespace A130634.P6163048557512093764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A347796 n - 1).toNat

end

end A130634.P6163048557512093764

/-! ## A130634.P16366565317153494107

`A130130(A347796(n)-1)`
-/

namespace A130634.P16366565317153494107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (A347796 n - 1).toNat

end

end A130634.P16366565317153494107

/-! ## A130634.P7287236835518584653

`A130130(ceil(log(A347796(n))))`
-/

namespace A130634.P7287236835518584653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 ⌈Real.log (A347796 n : ℝ)⌉.toNat

end

end A130634.P7287236835518584653

/-! ## A130634.P10109695133419681643

`A046698(xor(n+1, A289342(n+1)))`
-/

namespace A130634.P10109695133419681643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (Int.xor (n + 1 : ℤ) (A289342 (n + 1))).toNat

end

end A130634.P10109695133419681643

/-! ## A130634.P1584663225814632166

`A130130(xor(n+1, A329366(n+1)))`
-/

namespace A130634.P1584663225814632166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (Int.xor (n + 1 : ℤ) (A329366 (n + 1))).toNat

end

end A130634.P1584663225814632166

/-!
# A130635: Additive persistence of factorial numbers.

The programs for A130635, there is no canonical definition to state claims against.
-/

/-! ## A130635.P10286801704402841000

`A001221(A253852(n)*A327791(n+1))`
-/

namespace A130635.P10286801704402841000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A253852 n * A327791 (n + 1)).toNat

end

end A130635.P10286801704402841000

/-! ## A130635.P7283044070477046696

`A072491(A248333(n)*A322856(n))`
-/

namespace A130635.P7283044070477046696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A248333 n * A322856 n).toNat

end

end A130635.P7283044070477046696

/-! ## A130635.P10573562119133900242

`-∑[A014034(∑[A085811(n+3)])]`
-/

namespace A130635.P10573562119133900242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014034 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130635.P10573562119133900242

/-! ## A130635.P11072776701765365825

`A325273(A017904(2*(n+1))+1)`
-/

namespace A130635.P11072776701765365825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325273 (A017904 (2 * (n + 1)) + 1).toNat

end

end A130635.P11072776701765365825

/-!
# A130636: a(n) = n*a(n-3) + a(n-4) for n >= 4.

The programs for A130636, the canonical program `A130636.P14973458470516648686` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130636 has offset 0).

The definition of A130636 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-3)+a(n-4)` (program `A130636.P14973458470516648686`, by `A130636.P14973458470516648686.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A130636.P14973458470516648686

`n*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A130636

/-- `n*a(n-3)+a(n-4)` -/
def P14973458470516648686.Spec : Prop :=
  ∀ n, (P14973458470516648686.a n : ℤ) = A130636 n

theorem P14973458470516648686.correct : P14973458470516648686.Spec := by
  intro n
  simp only [A130636]

end A130636

/-!
# A130637: a(n) = n*a(n-2) + a(n-5) for n >= 5 and with a(0)=0, a(1)=1, a(2)=0, a(3)=3, a(4)=0.

The programs for A130637, the canonical program `A130637.P5016383355642274653` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130637 has offset 0).

The definition of A130637 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-2)+a(n-5)` (program `A130637.P5016383355642274653`, by `A130637.P5016383355642274653.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A130637.P5016383355642274653

`n*a(n-2)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=3, a(4)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A130637

/-- `n*a(n-2)+a(n-5)` -/
def P5016383355642274653.Spec : Prop :=
  ∀ n, (P5016383355642274653.a n : ℤ) = A130637 n

theorem P5016383355642274653.correct : P5016383355642274653.Spec := by
  intro n
  simp only [A130637]

end A130637

/-! ## A130637.P12475486931420805978

`A365419(A037336(n+1))`
-/

namespace A130637.P12475486931420805978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365419 (A037336 (n + 1)).toNat

end

end A130637.P12475486931420805978

namespace A130637

/-- `A365419(A037336(n+1))` -/
def P12475486931420805978.Spec : Prop :=
  ∀ n, P12475486931420805978.a n = A130637 n

end A130637

/-! ## A130637.P18137747950652818943

`A365419(A037443(n+1))`
-/

namespace A130637.P18137747950652818943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365419 (A037443 (n + 1)).toNat

end

end A130637.P18137747950652818943

namespace A130637

/-- `A365419(A037443(n+1))` -/
def P18137747950652818943.Spec : Prop :=
  ∀ n, P18137747950652818943.a n = A130637 n

end A130637

/-! ## A130637.P8839107280325415114

`A365419(A073790(n+1))`
-/

namespace A130637.P8839107280325415114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365419 (A073790 (n + 1)).toNat

end

end A130637.P8839107280325415114

namespace A130637

/-- `A365419(A073790(n+1))` -/
def P8839107280325415114.Spec : Prop :=
  ∀ n, P8839107280325415114.a n = A130637 n

end A130637

/-!
# A130638: a(n) = 1 iff d(n) = d(n+1), otherwise a(n)=0, where d(n) is the number of divisors of n, A000005.

The programs for A130638, the canonical program `A130638.P11945976620762067139` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130638 has offset 1).

The definition of A130638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130638.P14506094690453142981

`floor(cos(A182394(n+2)))`
-/

namespace A130638.P14506094690453142981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (A182394 (n + 2) : ℝ)⌋

end

end A130638.P14506094690453142981

namespace A130638

/-- `floor(cos(A182394(n+2)))` -/
def P14506094690453142981.Spec : Prop :=
  ∀ n, P14506094690453142981.a n = A130638 (n + 1)

end A130638

/-! ## A130638.P9657999029625199361

`char[A005237(n+1)-1]`
-/

namespace A130638.P9657999029625199361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A130638.P9657999029625199361

namespace A130638

/-- `char[A005237(n+1)-1]` -/
def P9657999029625199361.Spec : Prop :=
  ∀ n, (P9657999029625199361.a n : ℤ) = A130638 (n + 1)

end A130638

/-! ## A130638.P18066279545806098205

`char[eq[0, A051950(n+2)]]`
-/

namespace A130638.P18066279545806098205
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A130638.P18066279545806098205

namespace A130638

/-- `char[eq[0, A051950(n+2)]]` -/
def P18066279545806098205.Spec : Prop :=
  ∀ n, (P18066279545806098205.a n : ℤ) = A130638 (n + 1)

end A130638

/-! ## A130638.P1164570517576006198

`val(A079427(n+1), n+2)`
-/

namespace A130638.P1164570517576006198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A079427 (n + 1)).toNat (n + 2)

end

end A130638.P1164570517576006198

namespace A130638

/-- `val(A079427(n+1), n+2)` -/
def P1164570517576006198.Spec : Prop :=
  ∀ n, (P1164570517576006198.a n : ℤ) = A130638 (n + 1)

end A130638

/-! ## A130638.P9089746009075740952

`C(2, Δ[A000005(2*n+1-n)²]²)`
-/

namespace A130638.P9089746009075740952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1 - n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A130638.P9089746009075740952

namespace A130638

/-- `C(2, Δ[A000005(2*n+1-n)²]²)` -/
def P9089746009075740952.Spec : Prop :=
  ∀ n, (P9089746009075740952.a n : ℤ) = A130638 (n + 1)

end A130638

/-! ## A130638.P11945976620762067139

`A000007(A051950(n+2)²)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A130638

/-- `A000007(A051950(n+2)²)` -/
def P11945976620762067139.Spec : Prop :=
  ∀ n, P11945976620762067139.a n = A130638 (n + 1)

theorem P11945976620762067139.correct : P11945976620762067139.Spec := by
  intro n
  simp only [A130638, Nat.add_sub_cancel]

end A130638

/-! ## A130638.P14570547886240838275

`A075438(A051950(n+2)²)`
-/

namespace A130638.P14570547886240838275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075438 (A051950 (n + 2) ^ 2).toNat

end

end A130638.P14570547886240838275

namespace A130638

/-- `A075438(A051950(n+2)²)` -/
def P14570547886240838275.Spec : Prop :=
  ∀ n, P14570547886240838275.a n = A130638 (n + 1)

end A130638

/-! ## A130638.P12017248781081688572

`1-A182394(A112275(n+1))`
-/

namespace A130638.P12017248781081688572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A182394 (A112275 (n + 1)).toNat

end

end A130638.P12017248781081688572

namespace A130638

/-- `1-A182394(A112275(n+1))` -/
def P12017248781081688572.Spec : Prop :=
  ∀ n, P12017248781081688572.a n = A130638 (n + 1)

end A130638

/-! ## A130638.P17496191300860246171

`A000007(abs(Δ[A000005(n+1)]))`
-/

namespace A130638.P17496191300860246171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 |f1 (n + 1) - f1 n|.toNat

end

end A130638.P17496191300860246171

namespace A130638

/-- `A000007(abs(Δ[A000005(n+1)]))` -/
def P17496191300860246171.Spec : Prop :=
  ∀ n, P17496191300860246171.a n = A130638 (n + 1)

end A130638

/-! ## A130638.P14475797201372454940

`A000007(Δ[A000005(n+1)]²)`
-/

namespace A130638.P14475797201372454940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A130638.P14475797201372454940

namespace A130638

/-- `A000007(Δ[A000005(n+1)]²)` -/
def P14475797201372454940.Spec : Prop :=
  ∀ n, P14475797201372454940.a n = A130638 (n + 1)

end A130638

/-! ## A130638.P646903917308279259

`∏{d}[Δ[A000005(n+1)], A001221(#)]`
-/

namespace A130638.P646903917308279259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A130638.P646903917308279259

namespace A130638

/-- `∏{d}[Δ[A000005(n+1)], A001221(#)]` -/
def P646903917308279259.Spec : Prop :=
  ∀ n, P646903917308279259.a n = A130638 (n + 1)

end A130638

/-! ## A130638.P14381856665613030581

`∏{d}[Δ[A000005(n+1)], A001222(#)]`
-/

namespace A130638.P14381856665613030581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001222 d

end

end A130638.P14381856665613030581

namespace A130638

/-- `∏{d}[Δ[A000005(n+1)], A001222(#)]` -/
def P14381856665613030581.Spec : Prop :=
  ∀ n, P14381856665613030581.a n = A130638 (n + 1)

end A130638

/-! ## A130638.P16762869796619116279

`val(A112276(n+1), A112275(n+1))`
-/

namespace A130638.P16762869796619116279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A112276 (n + 1)).toNat (A112275 (n + 1)).toNat

end

end A130638.P16762869796619116279

namespace A130638

/-- `val(A112276(n+1), A112275(n+1))` -/
def P16762869796619116279.Spec : Prop :=
  ∀ n, (P16762869796619116279.a n : ℤ) = A130638 (n + 1)

end A130638

/-! ## A130638.P34257755146608968

`A075802(Δ[A000005(n+1)]²+1)`
-/

namespace A130638.P34257755146608968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 ((f1 (n + 1) - f1 n) ^ 2 + 1).toNat

end

end A130638.P34257755146608968

namespace A130638

/-- `A075802(Δ[A000005(n+1)]²+1)` -/
def P34257755146608968.Spec : Prop :=
  ∀ n, P34257755146608968.a n = A130638 (n + 1)

end A130638

/-! ## A130638.P16756630667696164619

`1-A057427(Δ[A000005(n+1)]²)`
-/

namespace A130638.P16756630667696164619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A130638.P16756630667696164619

namespace A130638

/-- `1-A057427(Δ[A000005(n+1)]²)` -/
def P16756630667696164619.Spec : Prop :=
  ∀ n, P16756630667696164619.a n = A130638 (n + 1)

end A130638

/-! ## A130638.P13831983638967208832

`char[eq[A000005(n+1), A000005(n+2)]]`
-/

namespace A130638.P13831983638967208832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A130638.P13831983638967208832

namespace A130638

/-- `char[eq[A000005(n+1), A000005(n+2)]]` -/
def P13831983638967208832.Spec : Prop :=
  ∀ n, (P13831983638967208832.a n : ℤ) = A130638 (n + 1)

end A130638

/-! ## A130638.P9237990609286017374

`A000217(A182394(n+2)^n+1)%3`
-/

namespace A130638.P9237990609286017374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A182394 (n + 2) ^ n + 1).toNat) 3

end

end A130638.P9237990609286017374

namespace A130638

/-- `A000217(A182394(n+2)^n+1)%3` -/
def P9237990609286017374.Spec : Prop :=
  ∀ n, P9237990609286017374.a n = A130638 (n + 1)

end A130638

/-! ## A130638.P9166940179829710692

`and(1, -(A182394(n+2)+3^A000120(n)))`
-/

namespace A130638.P9166940179829710692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (SequenceMachineLib.roundAway (-((A182394 (n + 2) : ℚ) + (3 : ℚ) ^ (A000120 n : ℤ))))

end

end A130638.P9166940179829710692

namespace A130638

/-- `and(1, -(A182394(n+2)+3^A000120(n)))` -/
def P9166940179829710692.Spec : Prop :=
  ∀ n, P9166940179829710692.a n = A130638 (n + 1)

end A130638

/-! ## A130638.P4508812816292492992

`val(A128261(n+2), n+2)`
-/

namespace A130638.P4508812816292492992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A128261 (n + 2)).toNat (n + 2)

end

end A130638.P4508812816292492992

namespace A130638

/-- `val(A128261(n+2), n+2)` -/
def P4508812816292492992.Spec : Prop :=
  ∀ n, (P4508812816292492992.a n : ℤ) = A130638 (n + 1)

end A130638

/-! ## A130638.P4588043067222536769

`1-Δ[A175150(n+1)]²`
-/

namespace A130638.P4588043067222536769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) ^ 2

end

end A130638.P4588043067222536769

namespace A130638

/-- `1-Δ[A175150(n+1)]²` -/
def P4588043067222536769.Spec : Prop :=
  ∀ n, P4588043067222536769.a n = A130638 (n + 1)

end A130638

/-!
# A130639: Number of degree-2n permutations without even cycles and such that number of cycles of size 2k-1 is even (or zero) for every k.

The programs for A130639, there is no canonical definition to state claims against.
-/

/-! ## A130639.P9378858448971844842

`A255651(C(∑[C(n, 2)], 2))`
-/

namespace A130639.P9378858448971844842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255651 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A130639.P9378858448971844842

/-!
# A130640: Numbers k such that either 2^k + prime(k) or 2^k - prime(k) is prime.

The programs for A130640, there is no canonical definition to state claims against.
-/

/-! ## A130640.P17803533870955948613

`A003963(∪[A078686(n+1), A242944(n+1)])`
-/

namespace A130640.P17803533870955948613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242944 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A130640.P17803533870955948613

/-! ## A130640.P10144864274964436404

`A056239(∪[A078686(n+1), A242944(n+1)])`
-/

namespace A130640.P10144864274964436404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242944 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A130640.P10144864274964436404

/-! ## A130640.P6912799295894777754

`A258851(∪[A078686(n+1), A242944(n+1)])`
-/

namespace A130640.P6912799295894777754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242944 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A130640.P6912799295894777754

/-! ## A130640.P16063879181755124152

`∪[A077375(n+1), A078583(n+1)]%A078583(n+1)`
-/

namespace A130640.P16063879181755124152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078583 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A078583 (n + 1))

end

end A130640.P16063879181755124152

/-!
# A130641: The first entry of the vector v[n]=M[n]v[n-1], where M[n] is a 7 X 7 matrix M[n] = [[n, 0, 0, 0, 0, 0, 1], [1, 0, 0, 0, 0, 0, 0], [0, 1, 0, 0, 0, 0, 0], [0, 0, 1, 0, 0, 0, 0], [0, 0, 0, 1, 0, 0, 0], [0, 0, 0, 0, 1, 0, 0], [0, 0, 0, 0, 0, 1, 0]] and v[0] is the column vector [0, 0, 0, 0, 0, 0, 1].

The programs for A130641, there is no canonical definition to state claims against.
-/

/-! ## A130641.P7909720632841612102

`∑{e}[5^n, #!]+char[8]`
-/

namespace A130641.P7909720632841612102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) + (if ∃ j, f2 j = n then 1 else 0)

end

end A130641.P7909720632841612102

/-! ## A130641.P12322952873649894507

`or(char[8], ∑{e}[5^n, #!])`
-/

namespace A130641.P12322952873649894507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f1 j = n then 1 else 0) (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p))

end

end A130641.P12322952873649894507

/-! ## A130641.P11017763466599710721

`xor(char[8], ∑{e}[5^n, #!])`
-/

namespace A130641.P11017763466599710721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (if ∃ j, f1 j = n then 1 else 0) (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p))

end

end A130641.P11017763466599710721

/-! ## A130641.P18132654460158070757

`xor(n!, C(floor(n^4/8), n^3))`
-/

namespace A130641.P18132654460158070757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.factorial n) (Nat.choose ⌊(n ^ 4 : ℚ) / 8⌋.toNat (n ^ 3))

end

end A130641.P18132654460158070757

/-! ## A130641.P7614025262160792948

`A089802(A052544(n))+n!`
-/

namespace A130641.P7614025262160792948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089802 (A052544 n).toNat + (Nat.factorial n : ℤ)

end

end A130641.P7614025262160792948

/-!
# A130642: Numbers n such that 1 + Sum{k=1..n/2} A001223(2k-1)*(-1)^k = 0.

The programs for A130642, there is no canonical definition to state claims against.
-/

/-! ## A130642.P6194058900733988717

`eq[-1, A233809(n+1)]+1`
-/

namespace A130642.P6194058900733988717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233809 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A130642.P6194058900733988717

/-! ## A130642.P4368310780345546295

`eq[1, A233809(A028310(n))+2]`
-/

namespace A130642.P4368310780345546295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233809 (A028310 n).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A130642.P4368310780345546295

/-! ## A130642.P3319792073153256039

`eq[A275017(n+1), A275017(n+2)]`
-/

namespace A130642.P3319792073153256039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275017 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A130642.P3319792073153256039

/-! ## A130642.P14396190241448674877

`eq[A103781(n+1), A103781(n+3)]`
-/

namespace A130642.P14396190241448674877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103781 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A130642.P14396190241448674877

/-! ## A130642.P1707409839527484010

`eq[A005843(A103781(n+1)), A036467(n)]`
-/

namespace A130642.P1707409839527484010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A103781 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036467 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A130642.P1707409839527484010

/-!
# A130643: Numbers n such that 1 - Sum{k=1..n/2} A001223(2k-1)*(-1)^k = 0.

The programs for A130643, there is no canonical definition to state claims against.
-/

/-! ## A130643.P4703246348652690874

`eq[1, A233809(A028310(n))]`
-/

namespace A130643.P4703246348652690874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233809 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A130643.P4703246348652690874

/-! ## A130643.P8503328263972152127

`eq[1, A233809(A233583(n+1))]`
-/

namespace A130643.P8503328263972152127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233809 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A130643.P8503328263972152127

/-!
# A130644: Number of degree-2n permutations without odd cycles and such that number of cycles of size 2k is odd (or zero) for every k.

The programs for A130644, there is no canonical definition to state claims against.
-/

/-! ## A130644.P5989212840884532054

`A326979(A327003(n))+A087639(n)`
-/

namespace A130644.P5989212840884532054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326979 (A327003 n).toNat + A087639 n

end

end A130644.P5989212840884532054

/-!
# A130646: Nonnegative values x of solutions (x, y) to the Diophantine equation x^2+(x+727)^2 = y^2.

The programs for A130646, there is no canonical definition to state claims against.
-/

/-! ## A130646.P16180041957866718134

`A130005(n+1)+A130608(n+1)-A118120(n)`
-/

namespace A130646.P16180041957866718134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130005 (n + 1) + (A130608 (n + 1) - A118120 n)

end

end A130646.P16180041957866718134

/-!
# A130648: Number of degree-n permutations without even cycles and such that number of cycles of size 2k-1 is odd (or zero) for every k.

The programs for A130648, there is no canonical definition to state claims against.
-/

/-! ## A130648.P1196725094300121011

`A335372(A102356(n))+∑{d}[n+1, #]-Δ[n²]`
-/

namespace A130648.P1196725094300121011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335372 (A102356 n).toNat + (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ)))

end

end A130648.P1196725094300121011

/-! ## A130648.P15258937237711925580

`A214849(n)+A102681(A045890(n))`
-/

namespace A130648.P15258937237711925580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214849 n + A102681 (A045890 n).toNat

end

end A130648.P15258937237711925580

/-! ## A130648.P2977437242068472758

`A214851(A001470(n))+A214849(n)`
-/

namespace A130648.P2977437242068472758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214851 (A001470 n).toNat + A214849 n

end

end A130648.P2977437242068472758

/-!
# A130649: Generalized ballot transform of generalized Catalan numbers C(2;n)=A064062(n).

The programs for A130649, there is no canonical definition to state claims against.
-/

/-! ## A130649.P6930958250741650685

`A054993(n)-A004016(A042279(n+3))`
-/

namespace A130649.P6930958250741650685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054993 n - A004016 (A042279 (n + 3)).toNat

end

end A130649.P6930958250741650685

/-! ## A130649.P15255928949557313105

`A054993(n)-A005926(A157156(2*(n+2)))`
-/

namespace A130649.P15255928949557313105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054993 n - A005926 (A157156 (2 * (n + 2))).toNat

end

end A130649.P15255928949557313105

/-!
# A130650: a(n) = smallest k such that A014612(n+1) = A014612(n) + (A014612(n) mod k), or 0 if no such k exists.

The programs for A130650, there is no canonical definition to state claims against.
-/

/-! ## A130650.P15146448700660444229

`A184752(n+1)/A028310(A184753(n+1))`
-/

namespace A130650.P15146448700660444229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184752 (n + 1) : ℚ) / (A028310 (A184753 (n + 1)).toNat : ℚ)

end

end A130650.P15146448700660444229

/-!
# A130651: 1/16 the number of permutations of 0..n having exactly 3 maxima.

The programs for A130651, the canonical program `A130651.P13909082746268978980` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130651 has offset 0).

The definition of A130651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130651.P13909082746268978980

`2^(n-8)*(3^(n+1)-2^(n+2)*n+2*n²-3)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A130651

/-- `2^(n-8)*(3^(n+1)-2^(n+2)*n+2*n²-3)` -/
def P13909082746268978980.Spec : Prop :=
  ∀ n, P13909082746268978980.a n = (A130651 n : ℚ)

end A130651

/-! ## A130651.P16373974262028082051

`A025443(∏[p?[floor(n/2)]])`
-/

namespace A130651.P16373974262028082051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130651.P16373974262028082051

namespace A130651

/-- `A025443(∏[p?[floor(n/2)]])` -/
def P16373974262028082051.Spec : Prop :=
  ∀ n, P16373974262028082051.a n = A130651 n

end A130651

/-! ## A130651.P56346061531419687

`A025443(abs(∏[a(n-1)-2]))` with `a(0)=20, a(1)=3`
-/

namespace A130651.P56346061531419687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [20, 3] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 |∏ j ∈ Finset.range (n + 1), f1 j|.toNat

end

end A130651.P56346061531419687

namespace A130651

/-- `A025443(abs(∏[a(n-1)-2]))` -/
def P56346061531419687.Spec : Prop :=
  ∀ n, P56346061531419687.a n = A130651 n

end A130651

/-!
# A130652: a(n) = 11^n - 2.

The programs for A130652, the canonical program `A130652.P12752678624551607068` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130652 has offset 1).

The definition of A130652 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^(n+1)-2` (program `A130652.P12752678624551607068`, by `A130652.P12752678624551607068.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A130652.P12752678624551607068

`11^(n+1)-2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A130652

/-- `11^(n+1)-2` -/
def P12752678624551607068.Spec : Prop :=
  ∀ n, P12752678624551607068.a n = A130652 (n + 1)

theorem P12752678624551607068.correct : P12752678624551607068.Spec := by
  intro n
  simp only [A130652, Nat.add_sub_cancel]

end A130652

/-! ## A130652.P15256001476388979976

`ogf((9+11x)/(1-12x+11x^2))`
-/

namespace A130652.P15256001476388979976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 11] [1, -12, 11] n

end

end A130652.P15256001476388979976

namespace A130652

/-- `ogf((9+11x)/(1-12x+11x^2))` -/
def P15256001476388979976.Spec : Prop :=
  ∀ n, P15256001476388979976.a n = A130652 (n + 1)

end A130652

/-! ## A130652.P2079466208563434421

`abs(2-A001020(n+1))`
-/

namespace A130652.P2079466208563434421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A001020 (n + 1)|

end

end A130652.P2079466208563434421

namespace A130652

/-- `abs(2-A001020(n+1))` -/
def P2079466208563434421.Spec : Prop :=
  ∀ n, P2079466208563434421.a n = A130652 (n + 1)

end A130652

/-! ## A130652.P16140023567902661856

`abs(3-A034524(n+1))`
-/

namespace A130652.P16140023567902661856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A034524 (n + 1)|

end

end A130652.P16140023567902661856

namespace A130652

/-- `abs(3-A034524(n+1))` -/
def P16140023567902661856.Spec : Prop :=
  ∀ n, P16140023567902661856.a n = A130652 (n + 1)

end A130652

/-! ## A130652.P16059378251764650019

`record[11^A291769(n)-2]`
-/

namespace A130652.P16059378251764650019
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A291769 n : ℤ) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130652.P16059378251764650019

namespace A130652

/-- `record[11^A291769(n)-2]` -/
def P16059378251764650019.Spec : Prop :=
  ∀ n, P16059378251764650019.a n = (A130652 (n + 1) : ℚ)

end A130652

/-! ## A130652.P7182155616794453880

`∑[Δ[11^n]-A000007(n)]`
-/

namespace A130652.P7182155616794453880
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130652.P7182155616794453880

namespace A130652

/-- `∑[Δ[11^n]-A000007(n)]` -/
def P7182155616794453880.Spec : Prop :=
  ∀ n, P7182155616794453880.a n = A130652 (n + 1)

end A130652

/-! ## A130652.P11299589392204093826

`record[A024127(gcd(1-n, floor(n/2)))-1]`
-/

namespace A130652.P11299589392204093826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024127 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130652.P11299589392204093826

namespace A130652

/-- `record[A024127(gcd(1-n, floor(n/2)))-1]` -/
def P11299589392204093826.Spec : Prop :=
  ∀ n, P11299589392204093826.a n = A130652 (n + 1)

end A130652

/-! ## A130652.P7287762996075823717

`record[A034524(A008611(n))-3]`
-/

namespace A130652.P7287762996075823717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034524 (A008611 n).toNat - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130652.P7287762996075823717

namespace A130652

/-- `record[A034524(A008611(n))-3]` -/
def P7287762996075823717.Spec : Prop :=
  ∀ n, P7287762996075823717.a n = A130652 (n + 1)

end A130652

/-! ## A130652.P6721371123500530685

`∑[A199030(n)+A057427(n)]`
-/

namespace A130652.P6721371123500530685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199030 n + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130652.P6721371123500530685

namespace A130652

/-- `∑[A199030(n)+A057427(n)]` -/
def P6721371123500530685.Spec : Prop :=
  ∀ n, P6721371123500530685.a n = A130652 (n + 1)

end A130652

/-!
# A130653: 

The programs for A130653, there is no canonical definition to state claims against.
-/

/-! ## A130653.P11455686969989752609

`A002425(2^n)`
-/

namespace A130653.P11455686969989752609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002425 (2 ^ n)

end

end A130653.P11455686969989752609

/-!
# A130654: Exponent m such that 2^m = A092505(n) = A002430(n) / A046990(n).

The programs for A130654, the canonical program `A130654.P16019514325048993052` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130654 has offset 1).

The definition of A130654 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092505, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A130654.P16019514325048993052

`A007814(A092505(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A130654

/-- `A007814(A092505(n+1))` -/
def P16019514325048993052.Spec : Prop :=
  ∀ n, P16019514325048993052.a n = A130654 (n + 1)

theorem P16019514325048993052.correct : P16019514325048993052.Spec := by
  intro n
  simp only [A130654, Nat.add_sub_cancel]

end A130654

/-! ## A130654.P6439564872288454064

`A001222(A092505(ϕ²-ϕ+n))`
-/

namespace A130654.P6439564872288454064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A092505 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - Real.goldenRatio + (n : ℝ))).toNat).toNat

end

end A130654.P6439564872288454064

namespace A130654

/-- `A001222(A092505(ϕ²-ϕ+n))` -/
def P6439564872288454064.Spec : Prop :=
  ∀ n, P6439564872288454064.a n = A130654 (n + 1)

end A130654

/-! ## A130654.P14011452860235780458

`A001222(A092505(n+1)+2-4/2)`
-/

namespace A130654.P14011452860235780458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A092505 (n + 1) : ℚ) + (2 - (4 : ℚ) / 2))).toNat

end

end A130654.P14011452860235780458

namespace A130654

/-- `A001222(A092505(n+1)+2-4/2)` -/
def P14011452860235780458.Spec : Prop :=
  ∀ n, P14011452860235780458.a n = A130654 (n + 1)

end A130654

/-! ## A130654.P1385608829788912589

`A001222(A092505(n+1)*A126116(C(2, n)))`
-/

namespace A130654.P1385608829788912589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A092505 (n + 1) * A126116 (Nat.choose 2 n)).toNat

end

end A130654.P1385608829788912589

namespace A130654

/-- `A001222(A092505(n+1)*A126116(C(2, n)))` -/
def P1385608829788912589.Spec : Prop :=
  ∀ n, P1385608829788912589.a n = A130654 (n + 1)

end A130654

/-! ## A130654.P12363125633269372810

`A037870(A361145(n+1))`
-/

namespace A130654.P12363125633269372810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037870 (A361145 (n + 1)).toNat

end

end A130654.P12363125633269372810

namespace A130654

/-- `A037870(A361145(n+1))` -/
def P12363125633269372810.Spec : Prop :=
  ∀ n, P12363125633269372810.a n = A130654 (n + 1)

end A130654

/-! ## A130654.P450316976760420017

`val(A333461(2*(n+1)), 2)`
-/

namespace A130654.P450316976760420017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A333461 (2 * (n + 1))).toNat 2

end

end A130654.P450316976760420017

namespace A130654

/-- `val(A333461(2*(n+1)), 2)` -/
def P450316976760420017.Spec : Prop :=
  ∀ n, (P450316976760420017.a n : ℤ) = A130654 (n + 1)

end A130654

/-! ## A130654.P9531205454565499462

`A001511(2*(n+1))-A001511(A201059(2*(n+1)))`
-/

namespace A130654.P9531205454565499462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * (n + 1)) - A001511 (A201059 (2 * (n + 1))).toNat

end

end A130654.P9531205454565499462

namespace A130654

/-- `A001511(2*(n+1))-A001511(A201059(2*(n+1)))` -/
def P9531205454565499462.Spec : Prop :=
  ∀ n, P9531205454565499462.a n = A130654 (n + 1)

end A130654

/-! ## A130654.P7969099757645098708

`val(and(Δ[n²], A014495(n))+1, 2)`
-/

namespace A130654.P7969099757645098708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.land ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A014495 n) + 1).toNat 2

end

end A130654.P7969099757645098708

namespace A130654

/-- `val(and(Δ[n²], A014495(n))+1, 2)` -/
def P7969099757645098708.Spec : Prop :=
  ∀ n, (P7969099757645098708.a n : ℤ) = A130654 (n + 1)

end A130654

/-! ## A130654.P7554688557556542212

`val(gcd(2*(n+1), A000108(n)), 2)`
-/

namespace A130654.P7554688557556542212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.gcd (2 * (n + 1) : ℤ) (A000108 n)) 2

end

end A130654.P7554688557556542212

namespace A130654

/-- `val(gcd(2*(n+1), A000108(n)), 2)` -/
def P7554688557556542212.Spec : Prop :=
  ∀ n, (P7554688557556542212.a n : ℤ) = A130654 (n + 1)

end A130654

/-!
# A130655: Catalan transform of Catalan numbers C(n+1).

The programs for A130655, there is no canonical definition to state claims against.
-/

/-! ## A130655.P11255328155861304408

`A127632(n+1)+A000108(n)-A129442(n)`
-/

namespace A130655.P11255328155861304408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127632 (n + 1) + (A000108 n - A129442 n)

end

end A130655.P11255328155861304408

/-! ## A130655.P11085672660001598439

`A127632(n+1)+A000108(n)-A121988(n+1)`
-/

namespace A130655.P11085672660001598439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127632 (n + 1) + (A000108 n - A121988 (n + 1))

end

end A130655.P11085672660001598439

/-! ## A130655.P775134421387027235

`A127632(n+1)-A127631(A000217(n+1)+2)`
-/

namespace A130655.P775134421387027235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127632 (n + 1) - A127631 (A000217 (n + 1) + 2).toNat

end

end A130655.P775134421387027235

/-!
# A130656: Interlacing n^3/2 and n^2(n + 1)/2.

The programs for A130656, the canonical program `A130656.P15212179604303003658` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130656 has offset 1).

The definition of A130656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130656.P15212179604303003658

`(n+1)²*floor((n+2)/2)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A130656

/-- `(n+1)²*floor((n+2)/2)` -/
def P15212179604303003658.Spec : Prop :=
  ∀ n, P15212179604303003658.a n = A130656 (n + 1)

theorem P15212179604303003658.correct : P15212179604303003658.Spec := by
  intro n
  simp only [A130656, Nat.add_sub_cancel]

end A130656

/-! ## A130656.P5714751548111931519

`(or(1, n)+1)*(n+1)²/2`
-/

namespace A130656.P5714751548111931519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 n + 1) * (n + 1) ^ 2 : ℚ) / 2

end

end A130656.P5714751548111931519

namespace A130656

/-- `(or(1, n)+1)*(n+1)²/2` -/
def P5714751548111931519.Spec : Prop :=
  ∀ n, P5714751548111931519.a n = (A130656 (n + 1) : ℚ)

end A130656

/-! ## A130656.P2586190731935565781

`abs((n+1)²*∑[1-n%2])`
-/

namespace A130656.P2586190731935565781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 1) ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A130656.P2586190731935565781

namespace A130656

/-- `abs((n+1)²*∑[1-n%2])` -/
def P2586190731935565781.Spec : Prop :=
  ∀ n, P2586190731935565781.a n = A130656 (n + 1)

end A130656

/-! ## A130656.P10186133850713177697

`abs((n+1)²*∑[1-and(1, n)])`
-/

namespace A130656.P10186133850713177697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 1) ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A130656.P10186133850713177697

namespace A130656

/-- `abs((n+1)²*∑[1-and(1, n)])` -/
def P10186133850713177697.Spec : Prop :=
  ∀ n, P10186133850713177697.a n = A130656 (n + 1)

end A130656

/-! ## A130656.P1363254113532730139

`∑[lcm(2, (n+1)²)]/ratio[n+1]`
-/

namespace A130656.P1363254113532730139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((n + 1) ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

end

end A130656.P1363254113532730139

namespace A130656

/-- `∑[lcm(2, (n+1)²)]/ratio[n+1]` -/
def P1363254113532730139.Spec : Prop :=
  ∀ n, P1363254113532730139.a n = (A130656 (n + 1) : ℚ)

end A130656

/-! ## A130656.P15494968857557468849

`∑[and(1, n+1)]/(1/(n+1))²`
-/

namespace A130656.P15494968857557468849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (1 / (n + 1 : ℚ)) ^ 2

end

end A130656.P15494968857557468849

namespace A130656

/-- `∑[and(1, n+1)]/(1/(n+1))²` -/
def P15494968857557468849.Spec : Prop :=
  ∀ n, P15494968857557468849.a n = (A130656 (n + 1) : ℚ)

end A130656

/-! ## A130656.P2243309835911027653

`floor((n+1)²*∑[1-a(n-1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A130656.P2243309835911027653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A130656.P2243309835911027653

namespace A130656

/-- `floor((n+1)²*∑[1-a(n-1)])` -/
def P2243309835911027653.Spec : Prop :=
  ∀ n, P2243309835911027653.a n = A130656 (n + 1)

end A130656

/-! ## A130656.P649408225797650390

`∑[1-a(n-1)]/(n+1)^(-2)` with `a(0)=1`
-/

namespace A130656.P649408225797650390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ) ^ (-2 : ℤ)

end

end A130656.P649408225797650390

namespace A130656

/-- `∑[1-a(n-1)]/(n+1)^(-2)` -/
def P649408225797650390.Spec : Prop :=
  ∀ n, P649408225797650390.a n = (A130656 (n + 1) : ℚ)

end A130656

/-! ## A130656.P15144243657487243715

`(n+1)²*∑[2-a(n-1)]/2` with `a(0)=2`
-/

namespace A130656.P15144243657487243715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n + 1) ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ) / 2

end

end A130656.P15144243657487243715

namespace A130656

/-- `(n+1)²*∑[2-a(n-1)]/2` -/
def P15144243657487243715.Spec : Prop :=
  ∀ n, P15144243657487243715.a n = (A130656 (n + 1) : ℚ)

end A130656

/-! ## A130656.P12628041174654708658

`∑[a(n-2)²]/(1/(n+1))²` with `a(0)=1, a(1)=0`
-/

namespace A130656.P12628041174654708658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (1 / (n + 1 : ℚ)) ^ 2

end

end A130656.P12628041174654708658

namespace A130656

/-- `∑[a(n-2)²]/(1/(n+1))²` -/
def P12628041174654708658.Spec : Prop :=
  ∀ n, P12628041174654708658.a n = (A130656 (n + 1) : ℚ)

end A130656

/-! ## A130656.P7294317317629692884

`floor((n+1)*(n+1)*∑[1-a(n-1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A130656.P7294317317629692884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A130656.P7294317317629692884

namespace A130656

/-- `floor((n+1)*(n+1)*∑[1-a(n-1)])` -/
def P7294317317629692884.Spec : Prop :=
  ∀ n, P7294317317629692884.a n = A130656 (n + 1)

end A130656

/-! ## A130656.P3316460119371044716

`A024598(n+1)+∑[∑[n]]`
-/

namespace A130656.P3316460119371044716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024598 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A130656.P3316460119371044716

namespace A130656

/-- `A024598(n+1)+∑[∑[n]]` -/
def P3316460119371044716.Spec : Prop :=
  ∀ n, P3316460119371044716.a n = A130656 (n + 1)

end A130656

/-! ## A130656.P16391733958985816385

`A303692(n+1)+(n+1)²`
-/

namespace A130656.P16391733958985816385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303692 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A130656.P16391733958985816385

namespace A130656

/-- `A303692(n+1)+(n+1)²` -/
def P16391733958985816385.Spec : Prop :=
  ∀ n, P16391733958985816385.a n = A130656 (n + 1)

end A130656

/-! ## A130656.P12253609469108099370

`(n+1)²+(n+1)²*A028242(or(1, n))`
-/

namespace A130656.P12253609469108099370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + ((n + 1) ^ 2 : ℤ) * A028242 (Nat.lor 1 n)

end

end A130656.P12253609469108099370

namespace A130656

/-- `(n+1)²+(n+1)²*A028242(or(1, n))` -/
def P12253609469108099370.Spec : Prop :=
  ∀ n, P12253609469108099370.a n = A130656 (n + 1)

end A130656

/-! ## A130656.P18236374687736424739

`A083392(n)+A055232(n)`
-/

namespace A130656.P18236374687736424739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083392 n + A055232 n

end

end A130656.P18236374687736424739

namespace A130656

/-- `A083392(n)+A055232(n)` -/
def P18236374687736424739.Spec : Prop :=
  ∀ n, P18236374687736424739.a n = A130656 (n + 1)

end A130656

/-! ## A130656.P11104204156733373690

`A131805(n)+A083364(n)`
-/

namespace A130656.P11104204156733373690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131805 n + A083364 n

end

end A130656.P11104204156733373690

namespace A130656

/-- `A131805(n)+A083364(n)` -/
def P11104204156733373690.Spec : Prop :=
  ∀ n, P11104204156733373690.a n = A130656 (n + 1)

end A130656

/-! ## A130656.P16238922127642211633

`A265645(n)+A213399(n)`
-/

namespace A130656.P16238922127642211633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265645 n + A213399 n

end

end A130656.P16238922127642211633

namespace A130656

/-- `A265645(n)+A213399(n)` -/
def P16238922127642211633.Spec : Prop :=
  ∀ n, P16238922127642211633.a n = A130656 (n + 1)

end A130656

/-! ## A130656.P15791795316450867100

`A210378(n)-A092364(n+1)`
-/

namespace A130656.P15791795316450867100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210378 n - A092364 (n + 1)

end

end A130656.P15791795316450867100

namespace A130656

/-- `A210378(n)-A092364(n+1)` -/
def P15791795316450867100.Spec : Prop :=
  ∀ n, P15791795316450867100.a n = A130656 (n + 1)

end A130656

/-! ## A130656.P8114048002518951913

`A092365(n+1)-A177755(n+1)`
-/

namespace A130656.P8114048002518951913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092365 (n + 1) - A177755 (n + 1)

end

end A130656.P8114048002518951913

namespace A130656

/-- `A092365(n+1)-A177755(n+1)` -/
def P8114048002518951913.Spec : Prop :=
  ∀ n, P8114048002518951913.a n = A130656 (n + 1)

end A130656

/-! ## A130656.P7650521780068343138

`A100177(n+1)-A172517(n+1)`
-/

namespace A130656.P7650521780068343138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100177 (n + 1) - A172517 (n + 1)

end

end A130656.P7650521780068343138

namespace A130656

/-- `A100177(n+1)-A172517(n+1)` -/
def P7650521780068343138.Spec : Prop :=
  ∀ n, P7650521780068343138.a n = A130656 (n + 1)

end A130656

/-!
# A130657: Period 7: repeat 1,1,1,1,0,0,0.

The programs for A130657, the canonical program `A130657.P13971751574570286090` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130657 has offset 0).

The definition of A130657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130657.P13971751574570286090

`round(sqrt(acot(n%7)))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A130657

/-- `round(sqrt(acot(n%7)))` -/
def P13971751574570286090.Spec : Prop :=
  ∀ n, P13971751574570286090.a n = A130657 n

theorem P13971751574570286090.correct : P13971751574570286090.Spec := by
  intro n
  simp only [A130657]

end A130657

/-!
# A130658: Period 4: repeat [1, 1, 2, 2].

The programs for A130658, the canonical program `A130658.P17554939015796868672` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130658 has offset 0).

The definition of A130658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130658.P17554939015796868672

`a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A130658

/-- `a(n-4)` -/
def P17554939015796868672.Spec : Prop :=
  ∀ n, (P17554939015796868672.a n : ℤ) = A130658 n

theorem P17554939015796868672.correct : P17554939015796868672.Spec := by
  intro n
  simp only [A130658]

end A130658

/-!
# A130659: Period 4: repeat [0, 1, 2, 4].

The programs for A130659, the canonical program `A130659.P9513506422310936001` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130659 has offset 0).

The definition of A130659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130659.P9513506422310936001

`floor(log2(exp(n%4)))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A130659

/-- `floor(log2(exp(n%4)))` -/
def P9513506422310936001.Spec : Prop :=
  ∀ n, P9513506422310936001.a n = A130659 n

theorem P9513506422310936001.correct : P9513506422310936001.Spec := by
  intro n
  simp only [A130659]

end A130659

/-!
# A130660: 1/16 the number of permutations of 0..n having exactly 4 maxima.

The programs for A130660, there is no canonical definition to state claims against.
-/

/-! ## A130660.P3728756794616912760

`A130366(C(2*n, 11))`
-/

namespace A130660.P3728756794616912760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130366 (Nat.choose (2 * n) 11)

end

end A130660.P3728756794616912760

/-! ## A130660.P8612120294781021194

`A130369(C(2*n, 11))`
-/

namespace A130660.P8612120294781021194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130369 (Nat.choose (2 * n) 11)

end

end A130660.P8612120294781021194

/-! ## A130660.P18430311080926431438

`A131166(C(2*n, 11))`
-/

namespace A130660.P18430311080926431438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131166 (Nat.choose (2 * n) 11)

end

end A130660.P18430311080926431438

/-! ## A130660.P8838735171390906006

`A342121(A150078(n))`
-/

namespace A130660.P8838735171390906006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342121 (A150078 n).toNat

end

end A130660.P8838735171390906006

/-!
# A130661: 1/256 the number of permutations of 0..n having exactly 5 maxima.

The programs for A130661, there is no canonical definition to state claims against.
-/

/-! ## A130661.P10405122824992752585

`A370120(C(round((n-2)*(n+3)*(2*n+1)/114), n))`
-/

namespace A130661.P10405122824992752585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370120 (Nat.choose (SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℚ) * ((n + 3 : ℚ) * ((2 * n + 1 : ℚ) / 114)))).toNat n)

end

end A130661.P10405122824992752585

/-! ## A130661.P9819803916922583254

`A303158(∏[A268292(n)!])`
-/

namespace A130661.P9819803916922583254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A268292 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303158 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A130661.P9819803916922583254

/-! ## A130661.P8917340597261681318

`floor(A243251(n+1)/A062343(n+1))`
-/

namespace A130661.P8917340597261681318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A243251 (n + 1) : ℚ) / (A062343 (n + 1) : ℚ)⌋

end

end A130661.P8917340597261681318

/-! ## A130661.P7522459418570473905

`A194024(∑[n+3]+n+4)%A271270(A078672(n+6))`
-/

namespace A130661.P7522459418570473905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194024 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))) (A271270 (A078672 (n + 6)).toNat)

end

end A130661.P7522459418570473905

/-!
# A130662: 1/512 the number of permutations of 0..n with exactly 6 maxima.

The programs for A130662, there is no canonical definition to state claims against.
-/

/-! ## A130662.P9545676722043997105

`A012393(A047181(n+1))/A000302(n)`
-/

namespace A130662.P9545676722043997105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012393 (A047181 (n + 1)).toNat : ℚ) / (A000302 n : ℚ)

end

end A130662.P9545676722043997105

/-! ## A130662.P5950065810275789497

`A012393(A047181(n+1))/A155543(n)`
-/

namespace A130662.P5950065810275789497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012393 (A047181 (n + 1)).toNat : ℚ) / (A155543 n : ℚ)

end

end A130662.P5950065810275789497

/-!
# A130665: a(n) = Sum_{k=0..n} 3^wt(k), where wt() = A000120().

The programs for A130665, the canonical program `A130665.P10276629478371461790` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130665 has offset 0).

The definition of A130665 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160410, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A130665.P17546109592906093433

`(A147562(n+1)-1)*3/4+1`
-/

namespace A130665.P17546109592906093433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A147562 (n + 1) - 1) * 3 : ℚ) / 4 + 1

end

end A130665.P17546109592906093433

namespace A130665

/-- `(A147562(n+1)-1)*3/4+1` -/
def P17546109592906093433.Spec : Prop :=
  ∀ n, P17546109592906093433.a n = (A130665 n : ℚ)

end A130665

/-! ## A130665.P10276629478371461790

`A160410(n+1)/4`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A130665

/-- `A160410(n+1)/4` -/
def P10276629478371461790.Spec : Prop :=
  ∀ n, P10276629478371461790.a n = (A130665 n : ℚ)

end A130665

/-! ## A130665.P1444637733356423455

`∑[3*a(and(n, n-1))]` with `a(0)=1`
-/

namespace A130665.P1444637733356423455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130665.P1444637733356423455

namespace A130665

/-- `∑[3*a(and(n, n-1))]` -/
def P1444637733356423455.Spec : Prop :=
  ∀ n, (P1444637733356423455.a n : ℤ) = A130665 n

end A130665

/-! ## A130665.P3587396319004524443

`∑[a(floor(n/2))*a(n%2)]` with `a(0)=1, a(1)=3`
-/

namespace A130665.P3587396319004524443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat * f1 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130665.P3587396319004524443

namespace A130665

/-- `∑[a(floor(n/2))*a(n%2)]` -/
def P3587396319004524443.Spec : Prop :=
  ∀ n, (P3587396319004524443.a n : ℤ) = A130665 n

end A130665

/-! ## A130665.P11175607027089313256

`∑[3*a(xor(n, -n)/2+n)]` with `a(0)=1`
-/

namespace A130665.P11175607027089313256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (SequenceMachineLib.roundAway ((Int.xor (n : ℤ) (-(n : ℤ)) : ℚ) / 2 + (n : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130665.P11175607027089313256

namespace A130665

/-- `∑[3*a(xor(n, -n)/2+n)]` -/
def P11175607027089313256.Spec : Prop :=
  ∀ n, (P11175607027089313256.a n : ℤ) = A130665 n

end A130665

/-! ## A130665.P1316819728838214636

`∑[3^(val(n+1, 2)+n-∑[val(n+1, 2)])]`
-/

namespace A130665.P1316819728838214636
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((SequenceMachineLib.valuation (n + 1) 2 : ℤ) + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130665.P1316819728838214636

namespace A130665

/-- `∑[3^(val(n+1, 2)+n-∑[val(n+1, 2)])]` -/
def P1316819728838214636.Spec : Prop :=
  ∀ n, P1316819728838214636.a n = (A130665 n : ℚ)

end A130665

/-! ## A130665.P17852524132164583795

`a(ceil((n+1)/2)-1)+3*a(floor((n+1)/2)-1)` with `a(0)=1`
-/

namespace A130665.P17852524132164583795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (⌈(n + 1 : ℚ) / 2⌉ - 1).toNat + 3 * a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat

end

end A130665.P17852524132164583795

namespace A130665

/-- `a(ceil((n+1)/2)-1)+3*a(floor((n+1)/2)-1)` -/
def P17852524132164583795.Spec : Prop :=
  ∀ n, (P17852524132164583795.a n : ℤ) = A130665 n

end A130665

/-! ## A130665.P10201717325339073182

`∑[A048883(n)]`
-/

namespace A130665.P10201717325339073182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130665.P10201717325339073182

namespace A130665

/-- `∑[A048883(n)]` -/
def P10201717325339073182.Spec : Prop :=
  ∀ n, P10201717325339073182.a n = A130665 n

end A130665

/-! ## A130665.P17336902536651649433

`∑[A151712(n)-1]`
-/

namespace A130665.P17336902536651649433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151712 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130665.P17336902536651649433

namespace A130665

/-- `∑[A151712(n)-1]` -/
def P17336902536651649433.Spec : Prop :=
  ∀ n, P17336902536651649433.a n = A130665 n

end A130665

/-! ## A130665.P9430686589176968366

`∑[3^A000120(n)]`
-/

namespace A130665.P9430686589176968366
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A000120 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130665.P9430686589176968366

namespace A130665

/-- `∑[3^A000120(n)]` -/
def P9430686589176968366.Spec : Prop :=
  ∀ n, P9430686589176968366.a n = (A130665 n : ℚ)

end A130665

/-! ## A130665.P1303154553194748684

`A151923(n)-(n+2)`
-/

namespace A130665.P1303154553194748684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151923 n - (n + 2 : ℤ)

end

end A130665.P1303154553194748684

namespace A130665

/-- `A151923(n)-(n+2)` -/
def P1303154553194748684.Spec : Prop :=
  ∀ n, P1303154553194748684.a n = A130665 n

end A130665

/-! ## A130665.P15982896360941415666

`∑[3^log2(A001316(n))]`
-/

namespace A130665.P15982896360941415666
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ (Real.logb 2 (A001316 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130665.P15982896360941415666

namespace A130665

/-- `∑[3^log2(A001316(n))]` -/
def P15982896360941415666.Spec : Prop :=
  ∀ n, P15982896360941415666.a n = (A130665 n : ℝ)

end A130665

/-! ## A130665.P10075561842332529057

`∑[A162349(n+1)/3]`
-/

namespace A130665.P10075561842332529057
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162349 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130665.P10075561842332529057

namespace A130665

/-- `∑[A162349(n+1)/3]` -/
def P10075561842332529057.Spec : Prop :=
  ∀ n, P10075561842332529057.a n = (A130665 n : ℚ)

end A130665

/-! ## A130665.P10601928437432740106

`∑[A161411(n+1)/4]`
-/

namespace A130665.P10601928437432740106
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161411 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130665.P10601928437432740106

namespace A130665

/-- `∑[A161411(n+1)/4]` -/
def P10601928437432740106.Spec : Prop :=
  ∀ n, P10601928437432740106.a n = (A130665 n : ℚ)

end A130665

/-! ## A130665.P5912063577892699152

`∑[3^val(A160713(n), 2)]`
-/

namespace A130665.P5912063577892699152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (A160713 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130665.P5912063577892699152

namespace A130665

/-- `∑[3^val(A160713(n), 2)]` -/
def P5912063577892699152.Spec : Prop :=
  ∀ n, (P5912063577892699152.a n : ℤ) = A130665 n

end A130665

/-! ## A130665.P3955238216207795820

`∑[3^(2*n-A005187(n))]`
-/

namespace A130665.P3955238216207795820
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((2 * n : ℤ) - A005187 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130665.P3955238216207795820

namespace A130665

/-- `∑[3^(2*n-A005187(n))]` -/
def P3955238216207795820.Spec : Prop :=
  ∀ n, P3955238216207795820.a n = (A130665 n : ℚ)

end A130665

/-! ## A130665.P6133360987182859627

`∑[A000244(A000120(n))]`
-/

namespace A130665.P6133360987182859627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A000120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130665.P6133360987182859627

namespace A130665

/-- `∑[A000244(A000120(n))]` -/
def P6133360987182859627.Spec : Prop :=
  ∀ n, P6133360987182859627.a n = A130665 n

end A130665

/-! ## A130665.P3111537715228961002

`∑[A003959(A001316(n))]`
-/

namespace A130665.P3111537715228961002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130665.P3111537715228961002

namespace A130665

/-- `∑[A003959(A001316(n))]` -/
def P3111537715228961002.Spec : Prop :=
  ∀ n, P3111537715228961002.a n = A130665 n

end A130665

/-! ## A130665.P11278672009205864912

`∑[A006046(Δ[A006046(n)])]`
-/

namespace A130665.P11278672009205864912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130665.P11278672009205864912

namespace A130665

/-- `∑[A006046(Δ[A006046(n)])]` -/
def P11278672009205864912.Spec : Prop :=
  ∀ n, P11278672009205864912.a n = A130665 n

end A130665

/-! ## A130665.P16584163640357271517

`∑[A005836(A001316(n)+1)]`
-/

namespace A130665.P16584163640357271517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A001316 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130665.P16584163640357271517

namespace A130665

/-- `∑[A005836(A001316(n)+1)]` -/
def P16584163640357271517.Spec : Prop :=
  ∀ n, P16584163640357271517.a n = A130665 n

end A130665

/-!
# A130667: a(1) = 1; a(n) = max{ 5*a(k) + a(n-k) | 1 <= k <= n/2 } for n > 1.

The programs for A130667, the canonical program `A130667.P11430083261870020375` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130667 has offset 1).

The definition of A130667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130667.P11430083261870020375

`∑[5*a(and(n, n-1))]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A130667

/-- `∑[5*a(and(n, n-1))]` -/
def P11430083261870020375.Spec : Prop :=
  ∀ n, (P11430083261870020375.a n : ℤ) = A130667 (n + 1)

theorem P11430083261870020375.correct : P11430083261870020375.Spec := by
  intro n
  simp only [A130667, Nat.add_sub_cancel]

end A130667

/-! ## A130667.P7256510948603551630

`∑[a(floor(n/2))*a(n%2)]` with `a(0)=1, a(1)=5`
-/

namespace A130667.P7256510948603551630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat * f1 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130667.P7256510948603551630

namespace A130667

/-- `∑[a(floor(n/2))*a(n%2)]` -/
def P7256510948603551630.Spec : Prop :=
  ∀ n, (P7256510948603551630.a n : ℤ) = A130667 (n + 1)

end A130667

/-! ## A130667.P6525532479077249192

`∑[A256135(n)]`
-/

namespace A130667.P6525532479077249192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130667.P6525532479077249192

namespace A130667

/-- `∑[A256135(n)]` -/
def P6525532479077249192.Spec : Prop :=
  ∀ n, P6525532479077249192.a n = A130667 (n + 1)

end A130667

/-! ## A130667.P4161432832621442727

`∑[5^A000120(n)]`
-/

namespace A130667.P4161432832621442727
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A000120 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130667.P4161432832621442727

namespace A130667

/-- `∑[5^A000120(n)]` -/
def P4161432832621442727.Spec : Prop :=
  ∀ n, P4161432832621442727.a n = (A130667 (n + 1) : ℚ)

end A130667

/-! ## A130667.P16693203216458887597

`∑[5^log2(A001316(n))]`
-/

namespace A130667.P16693203216458887597
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 : ℝ) ^ (Real.logb 2 (A001316 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130667.P16693203216458887597

namespace A130667

/-- `∑[5^log2(A001316(n))]` -/
def P16693203216458887597.Spec : Prop :=
  ∀ n, P16693203216458887597.a n = (A130667 (n + 1) : ℝ)

end A130667

/-! ## A130667.P6328879307882655493

`∑[5^val(A102377(n), 2)]`
-/

namespace A130667.P6328879307882655493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ SequenceMachineLib.valuation (A102377 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130667.P6328879307882655493

namespace A130667

/-- `∑[5^val(A102377(n), 2)]` -/
def P6328879307882655493.Spec : Prop :=
  ∀ n, (P6328879307882655493.a n : ℤ) = A130667 (n + 1)

end A130667

/-! ## A130667.P15312534676350772576

`∑[5^val(A160713(n), 2)]`
-/

namespace A130667.P15312534676350772576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ SequenceMachineLib.valuation (A160713 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130667.P15312534676350772576

namespace A130667

/-- `∑[5^val(A160713(n), 2)]` -/
def P15312534676350772576.Spec : Prop :=
  ∀ n, (P15312534676350772576.a n : ℤ) = A130667 (n + 1)

end A130667

/-! ## A130667.P2224214639678130160

`∑[5^val(A048883(n), 3)]`
-/

namespace A130667.P2224214639678130160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ SequenceMachineLib.valuation (A048883 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130667.P2224214639678130160

namespace A130667

/-- `∑[5^val(A048883(n), 3)]` -/
def P2224214639678130160.Spec : Prop :=
  ∀ n, (P2224214639678130160.a n : ℤ) = A130667 (n + 1)

end A130667

/-! ## A130667.P6660251391966835592

`∑[5^(2*n-A005187(n))]`
-/

namespace A130667.P6660251391966835592
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ ((2 * n : ℤ) - A005187 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130667.P6660251391966835592

namespace A130667

/-- `∑[5^(2*n-A005187(n))]` -/
def P6660251391966835592.Spec : Prop :=
  ∀ n, P6660251391966835592.a n = (A130667 (n + 1) : ℚ)

end A130667

/-! ## A130667.P14676085405962056903

`∑[A000351(A000120(n))]`
-/

namespace A130667.P14676085405962056903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A000120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130667.P14676085405962056903

namespace A130667

/-- `∑[A000351(A000120(n))]` -/
def P14676085405962056903.Spec : Prop :=
  ∀ n, P14676085405962056903.a n = A130667 (n + 1)

end A130667

/-! ## A130667.P12603966458952744039

`∑[A032532(A001316(n))]`
-/

namespace A130667.P12603966458952744039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032532 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130667.P12603966458952744039

namespace A130667

/-- `∑[A032532(A001316(n))]` -/
def P12603966458952744039.Spec : Prop :=
  ∀ n, P12603966458952744039.a n = A130667 (n + 1)

end A130667

/-! ## A130667.P15709134908145580896

`∑[A165826(A268444(n))]`
-/

namespace A130667.P15709134908145580896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (A268444 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130667.P15709134908145580896

namespace A130667

/-- `∑[A165826(A268444(n))]` -/
def P15709134908145580896.Spec : Prop :=
  ∀ n, P15709134908145580896.a n = A130667 (n + 1)

end A130667

/-! ## A130667.P13010595721053695373

`∑[5^(n-(∑[A007814(n+1)]-A007814(n+1)))]`
-/

namespace A130667.P13010595721053695373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ ((n : ℤ) - (∑ j ∈ Finset.range (n + 1), f2 j - A007814 (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130667.P13010595721053695373

namespace A130667

/-- `∑[5^(n-(∑[A007814(n+1)]-A007814(n+1)))]` -/
def P13010595721053695373.Spec : Prop :=
  ∀ n, P13010595721053695373.a n = (A130667 (n + 1) : ℚ)

end A130667

/-! ## A130667.P6717050777862262137

`∑[A017988(A324467(n))]`
-/

namespace A130667.P6717050777862262137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017988 (A324467 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130667.P6717050777862262137

namespace A130667

/-- `∑[A017988(A324467(n))]` -/
def P6717050777862262137.Spec : Prop :=
  ∀ n, P6717050777862262137.a n = A130667 (n + 1)

end A130667

/-! ## A130667.P14730223163457696117

`∑[5^A005811(A006068(n))]`
-/

namespace A130667.P14730223163457696117
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A005811 (A006068 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130667.P14730223163457696117

namespace A130667

/-- `∑[5^A005811(A006068(n))]` -/
def P14730223163457696117.Spec : Prop :=
  ∀ n, P14730223163457696117.a n = (A130667 (n + 1) : ℚ)

end A130667

/-! ## A130667.P3687801622505485712

`∑[5^A005811(A341916(n))]`
-/

namespace A130667.P3687801622505485712
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A005811 (A341916 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130667.P3687801622505485712

namespace A130667

/-- `∑[5^A005811(A341916(n))]` -/
def P3687801622505485712.Spec : Prop :=
  ∀ n, P3687801622505485712.a n = (A130667 (n + 1) : ℚ)

end A130667

/-! ## A130667.P4137677405431844162

`∑[A165826(A071044(n))]`
-/

namespace A130667.P4137677405431844162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165826 (A071044 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130667.P4137677405431844162

namespace A130667

/-- `∑[A165826(A071044(n))]` -/
def P4137677405431844162.Spec : Prop :=
  ∀ n, P4137677405431844162.a n = A130667 (n + 1)

end A130667

/-! ## A130667.P9278593283236263214

`∑[5^A001222(A278222(n))]`
-/

namespace A130667.P9278593283236263214
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A001222 (A278222 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130667.P9278593283236263214

namespace A130667

/-- `∑[5^A001222(A278222(n))]` -/
def P9278593283236263214.Spec : Prop :=
  ∀ n, P9278593283236263214.a n = (A130667 (n + 1) : ℚ)

end A130667

/-! ## A130667.P18098140383633020965

`∑[A033042(A048896(2*n))]`
-/

namespace A130667.P18098140383633020965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (A048896 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130667.P18098140383633020965

namespace A130667

/-- `∑[A033042(A048896(2*n))]` -/
def P18098140383633020965.Spec : Prop :=
  ∀ n, P18098140383633020965.a n = A130667 (n + 1)

end A130667

/-! ## A130667.P6832427396440190582

`∑[A151780(2*n+1)]`
-/

namespace A130667.P6832427396440190582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151780 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130667.P6832427396440190582

namespace A130667

/-- `∑[A151780(2*n+1)]` -/
def P6832427396440190582.Spec : Prop :=
  ∀ n, P6832427396440190582.a n = A130667 (n + 1)

end A130667

/-!
# A130669: Smallest k such that phi(x) = k has exactly n odd solutions.

The programs for A130669, there is no canonical definition to state claims against.
-/

/-! ## A130669.P5696344638558596980

`∏{e}[∑[n²]*∏[n+4], #+1]`
-/

namespace A130669.P5696344638558596980
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * (∏ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A130669.P5696344638558596980

/-!
# A130671: Triangular sequence based on Pascal's triangle: t(n,m) = 2*binomial(m, n) - (1 + n*(m - n)).

The programs for A130671, there is no canonical definition to state claims against.
-/

/-! ## A130671.P12954336329497092933

`A028326(n)-A077028(n)`
-/

namespace A130671.P12954336329497092933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A077028 n

end

end A130671.P12954336329497092933

/-! ## A130671.P18142848379514385439

`A109128(n)-A004247(n)`
-/

namespace A130671.P18142848379514385439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n - A004247 n

end

end A130671.P18142848379514385439

/-! ## A130671.P16149775218930570644

`A028326(n)-sqrt(A082043(n))`
-/

namespace A130671.P16149775218930570644
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℝ) - Real.sqrt (A082043 n : ℝ)

end

end A130671.P16149775218930570644

/-! ## A130671.P9510345031469788828

`A109128(n)-log2(A117401(n))`
-/

namespace A130671.P9510345031469788828
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A109128 n : ℝ) - Real.logb 2 (A117401 n : ℝ)

end

end A130671.P9510345031469788828

/-! ## A130671.P15087766659475846224

`A028326(n)-(A004247(n)+1)`
-/

namespace A130671.P15087766659475846224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - (A004247 n + 1)

end

end A130671.P15087766659475846224

/-! ## A130671.P5846205389301738561

`2*A007318(n)-A077028(n)`
-/

namespace A130671.P5846205389301738561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A077028 n

end

end A130671.P5846205389301738561

/-! ## A130671.P12632670272917656320

`2*A007318(n)-sqrt(A082043(n))`
-/

namespace A130671.P12632670272917656320
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A007318 n : ℝ) - Real.sqrt (A082043 n : ℝ)

end

end A130671.P12632670272917656320

/-! ## A130671.P6967597438935526532

`2*A007318(n)-(A004247(n)+1)`
-/

namespace A130671.P6967597438935526532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - (A004247 n + 1)

end

end A130671.P6967597438935526532

/-! ## A130671.P11596569967227543407

`2*A007318(n)-round(sqrt(A082046(n)))`
-/

namespace A130671.P11596569967227543407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - SequenceMachineLib.roundAway (Real.sqrt (A082046 n : ℝ))

end

end A130671.P11596569967227543407

/-! ## A130671.P12402709891270188782

`A004273(A007318(n))-A004247(n)`
-/

namespace A130671.P12402709891270188782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A007318 n).toNat - A004247 n

end

end A130671.P12402709891270188782

/-!
# A130673: Smallest m > 1 such that log m + psi(n/m) is negative, where psi(x) is the digamma function.

The programs for A130673, there is no canonical definition to state claims against.
-/

/-! ## A130673.P11348804409331935776

`record[abs(3-A348960(3*(n+1)))]`
-/

namespace A130673.P11348804409331935776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A348960 (3 * (n + 1))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130673.P11348804409331935776

/-! ## A130673.P5589630695841811186

`A130262(A130260(A001519(n)))+n+1`
-/

namespace A130673.P5589630695841811186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130262 (A130260 (A001519 n).toNat).toNat + (n + 1 : ℤ)

end

end A130673.P5589630695841811186

/-! ## A130673.P11065415948260488529

`A130262(A130259(2*A001519(n)))+n+1`
-/

namespace A130673.P11065415948260488529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130262 (A130259 (2 * A001519 n).toNat).toNat + (n + 1 : ℤ)

end

end A130673.P11065415948260488529

/-! ## A130673.P16483170775217160831

`A082527((n²+n+1)²)`
-/

namespace A130673.P16483170775217160831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082527 ((n ^ 2 + (n + 1)) ^ 2)

end

end A130673.P16483170775217160831

/-! ## A130673.P5850480596909828933

`A380573(A190772(n+1))`
-/

namespace A130673.P5850480596909828933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380573 (A190772 (n + 1)).toNat

end

end A130673.P5850480596909828933

/-!
# A130674: a(n) = d(n)!, where d denotes the number of divisors of n.

The programs for A130674, the canonical program `A130674.P7213842865960201756` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130674 has offset 1).

The definition of A130674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A130674.P7213842865960201756

`∏{e}[n+1, #+1]!`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A130674

/-- `∏{e}[n+1, #+1]!` -/
def P7213842865960201756.Spec : Prop :=
  ∀ n, (P7213842865960201756.a n : ℤ) = A130674 (n + 1)

theorem P7213842865960201756.correct : P7213842865960201756.Spec := by
  intro n
  simp only [A130674, Nat.add_sub_cancel]

end A130674

/-! ## A130674.P4056804176322444091

`∑{d}[n+1, gcd(n, #)]!`
-/

namespace A130674.P4056804176322444091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d)

end

end A130674.P4056804176322444091

namespace A130674

/-- `∑{d}[n+1, gcd(n, #)]!` -/
def P4056804176322444091.Spec : Prop :=
  ∀ n, (P4056804176322444091.a n : ℤ) = A130674 (n + 1)

end A130674

/-! ## A130674.P14374251023180156809

`∑{d}[n+1, ceil(acot(#))]!`
-/

namespace A130674.P14374251023180156809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉).toNat

end

end A130674.P14374251023180156809

namespace A130674

/-- `∑{d}[n+1, ceil(acot(#))]!` -/
def P14374251023180156809.Spec : Prop :=
  ∀ n, (P14374251023180156809.a n : ℤ) = A130674 (n + 1)

end A130674

/-! ## A130674.P11042854473603940296

`∑{d}[n+1, ceil(1/#)]!`
-/

namespace A130674.P11042854473603940296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉).toNat

end

end A130674.P11042854473603940296

namespace A130674

/-- `∑{d}[n+1, ceil(1/#)]!` -/
def P11042854473603940296.Spec : Prop :=
  ∀ n, (P11042854473603940296.a n : ℤ) = A130674 (n + 1)

end A130674

/-! ## A130674.P3393416256067326886

`-∑{d}[n+1, or(#, -1)]!`
-/

namespace A130674.P3393416256067326886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (-(∑ d ∈ Nat.divisors (f1 n), Int.lor (d : ℤ) (-1))).toNat

end

end A130674.P3393416256067326886

namespace A130674

/-- `-∑{d}[n+1, or(#, -1)]!` -/
def P3393416256067326886.Spec : Prop :=
  ∀ n, (P3393416256067326886.a n : ℤ) = A130674 (n + 1)

end A130674

/-! ## A130674.P15543803039777135192

`∏{p}[n+1, val(n+1, #)+1]!`
-/

namespace A130674.P15543803039777135192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (n + 1) p + 1))

end

end A130674.P15543803039777135192

namespace A130674

/-- `∏{p}[n+1, val(n+1, #)+1]!` -/
def P15543803039777135192.Spec : Prop :=
  ∀ n, (P15543803039777135192.a n : ℤ) = A130674 (n + 1)

end A130674

/-! ## A130674.P4676774175883662012

`(∑{d}[n+1, lcm(#, n+1)]/(n+1))!`
-/

namespace A130674.P4676774175883662012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1) : ℕ) : ℚ) / (n + 1 : ℚ))).toNat

end

end A130674.P4676774175883662012

namespace A130674

/-- `(∑{d}[n+1, lcm(#, n+1)]/(n+1))!` -/
def P4676774175883662012.Spec : Prop :=
  ∀ n, (P4676774175883662012.a n : ℤ) = A130674 (n + 1)

end A130674

/-! ## A130674.P924954086288065179

`Δ[A006218(n)]!`
-/

namespace A130674.P924954086288065179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (n + 1) - f1 n).toNat

end

end A130674.P924954086288065179

namespace A130674

/-- `Δ[A006218(n)]!` -/
def P924954086288065179.Spec : Prop :=
  ∀ n, (P924954086288065179.a n : ℤ) = A130674 (n + 1)

end A130674

/-! ## A130674.P3297268874697713232

`Δ[A054519(n)]!`
-/

namespace A130674.P3297268874697713232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (n + 1) - f1 n).toNat

end

end A130674.P3297268874697713232

namespace A130674

/-- `Δ[A054519(n)]!` -/
def P3297268874697713232.Spec : Prop :=
  ∀ n, (P3297268874697713232.a n : ℤ) = A130674 (n + 1)

end A130674

/-! ## A130674.P4376846856211628411

`A000005(n+1)!`
-/

namespace A130674.P4376846856211628411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000005 (n + 1)).toNat

end

end A130674.P4376846856211628411

namespace A130674

/-- `A000005(n+1)!` -/
def P4376846856211628411.Spec : Prop :=
  ∀ n, (P4376846856211628411.a n : ℤ) = A130674 (n + 1)

end A130674

/-! ## A130674.P10185053309573208365

`abs(A329484(n+1))!`
-/

namespace A130674.P10185053309573208365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |A329484 (n + 1)|.toNat

end

end A130674.P10185053309573208365

namespace A130674

/-- `abs(A329484(n+1))!` -/
def P10185053309573208365.Spec : Prop :=
  ∀ n, (P10185053309573208365.a n : ℤ) = A130674 (n + 1)

end A130674

/-! ## A130674.P1840379713624713413

`sqrt(A035116(n+1))!`
-/

namespace A130674.P1840379713624713413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (A035116 (n + 1) : ℝ))).toNat

end

end A130674.P1840379713624713413

namespace A130674

/-- `sqrt(A035116(n+1))!` -/
def P1840379713624713413.Spec : Prop :=
  ∀ n, (P1840379713624713413.a n : ℤ) = A130674 (n + 1)

end A130674

/-! ## A130674.P842350675119008344

`log2(A338506(n+1))!`
-/

namespace A130674.P842350675119008344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (A338506 (n + 1) : ℝ))).toNat

end

end A130674.P842350675119008344

namespace A130674

/-- `log2(A338506(n+1))!` -/
def P842350675119008344.Spec : Prop :=
  ∀ n, (P842350675119008344.a n : ℤ) = A130674 (n + 1)

end A130674

/-! ## A130674.P1091870809263257420

`∑[A341062(n+1)]!`
-/

namespace A130674.P1091870809263257420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A130674.P1091870809263257420

namespace A130674

/-- `∑[A341062(n+1)]!` -/
def P1091870809263257420.Spec : Prop :=
  ∀ n, (P1091870809263257420.a n : ℤ) = A130674 (n + 1)

end A130674

/-! ## A130674.P4968713770006925321

`-∑{d}[n+1, A008683(#)-1]!`
-/

namespace A130674.P4968713770006925321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (-(∑ d ∈ Nat.divisors (f1 n), (A008683 d - 1))).toNat

end

end A130674.P4968713770006925321

namespace A130674

/-- `-∑{d}[n+1, A008683(#)-1]!` -/
def P4968713770006925321.Spec : Prop :=
  ∀ n, (P4968713770006925321.a n : ℤ) = A130674 (n + 1)

end A130674

/-! ## A130674.P17333278743305281244

`A000142(Δ[A006218(n)])`
-/

namespace A130674.P17333278743305281244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (f1 (n + 1) - f1 n).toNat

end

end A130674.P17333278743305281244

namespace A130674

/-- `A000142(Δ[A006218(n)])` -/
def P17333278743305281244.Spec : Prop :=
  ∀ n, P17333278743305281244.a n = A130674 (n + 1)

end A130674

/-! ## A130674.P9503610393881505763

`A132369(A105555(n+1))`
-/

namespace A130674.P9503610393881505763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132369 (A105555 (n + 1)).toNat

end

end A130674.P9503610393881505763

namespace A130674

/-- `A132369(A105555(n+1))` -/
def P9503610393881505763.Spec : Prop :=
  ∀ n, P9503610393881505763.a n = A130674 (n + 1)

end A130674

/-! ## A130674.P14977401898083865497

`A187741(A114003(n+1))`
-/

namespace A130674.P14977401898083865497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187741 (A114003 (n + 1)).toNat

end

end A130674.P14977401898083865497

namespace A130674

/-- `A187741(A114003(n+1))` -/
def P14977401898083865497.Spec : Prop :=
  ∀ n, P14977401898083865497.a n = A130674 (n + 1)

end A130674

/-! ## A130674.P8762053746408892844

`A084950(A337174(n+1))`
-/

namespace A130674.P8762053746408892844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084950 (A337174 (n + 1)).toNat

end

end A130674.P8762053746408892844

namespace A130674

/-- `A084950(A337174(n+1))` -/
def P8762053746408892844.Spec : Prop :=
  ∀ n, P8762053746408892844.a n = A130674 (n + 1)

end A130674

/-! ## A130674.P3705235663338355150

`A130493(A337362(n+1))`
-/

namespace A130674.P3705235663338355150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130493 (A337362 (n + 1)).toNat

end

end A130674.P3705235663338355150

namespace A130674

/-- `A130493(A337362(n+1))` -/
def P3705235663338355150.Spec : Prop :=
  ∀ n, P3705235663338355150.a n = A130674 (n + 1)

end A130674

/-!
# A130675: Factorial of bigomega(n).

The programs for A130675, the canonical program `A130675.P6318381519193550684` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130675 has offset 1).

The definition of A130675 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A130675.P6318381519193550684

`A000142(A001222(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A130675

/-- `A000142(A001222(n+1))` -/
def P6318381519193550684.Spec : Prop :=
  ∀ n, P6318381519193550684.a n = A130675 (n + 1)

theorem P6318381519193550684.correct : P6318381519193550684.Spec := by
  intro n
  simp only [A130675, Nat.add_sub_cancel]

end A130675

/-! ## A130675.P361296147729104695

`A008480(n+1)*A112624(n+1)`
-/

namespace A130675.P361296147729104695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) * A112624 (n + 1)

end

end A130675.P361296147729104695

namespace A130675

/-- `A008480(n+1)*A112624(n+1)` -/
def P361296147729104695.Spec : Prop :=
  ∀ n, P361296147729104695.a n = A130675 (n + 1)

end A130675

/-! ## A130675.P16367282260561728083

`∑{e}[n+1, #]!`
-/

namespace A130675.P16367282260561728083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A130675.P16367282260561728083

namespace A130675

/-- `∑{e}[n+1, #]!` -/
def P16367282260561728083.Spec : Prop :=
  ∀ n, (P16367282260561728083.a n : ℤ) = A130675 (n + 1)

end A130675

/-! ## A130675.P9523493180967310720

`log(∏{e}[n+1, exp(#)])!`
-/

namespace A130675.P9523493180967310720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.log (∏ p ∈ Nat.primeFactors (f1 n), Real.exp (Nat.factorization (f1 n) p : ℝ)))).toNat

end

end A130675.P9523493180967310720

namespace A130675

/-- `log(∏{e}[n+1, exp(#)])!` -/
def P9523493180967310720.Spec : Prop :=
  ∀ n, (P9523493180967310720.a n : ℤ) = A130675 (n + 1)

end A130675

/-! ## A130675.P16785258709884035881

`val(∏{e}[n+1, 2^#], 2)!`
-/

namespace A130675.P16785258709884035881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p) 2)

end

end A130675.P16785258709884035881

namespace A130675

/-- `val(∏{e}[n+1, 2^#], 2)!` -/
def P16785258709884035881.Spec : Prop :=
  ∀ n, (P16785258709884035881.a n : ℤ) = A130675 (n + 1)

end A130675

/-! ## A130675.P10554094222106994887

`∑{p}[n+1, val(n+1, #)]!`
-/

namespace A130675.P10554094222106994887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p)

end

end A130675.P10554094222106994887

namespace A130675

/-- `∑{p}[n+1, val(n+1, #)]!` -/
def P10554094222106994887.Spec : Prop :=
  ∀ n, (P10554094222106994887.a n : ℤ) = A130675 (n + 1)

end A130675

/-! ## A130675.P6977464768094939933

`∏{e}[∏{e}[n+1, 2^#], #!]`
-/

namespace A130675.P6977464768094939933
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), 2 ^ Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p)

end

end A130675.P6977464768094939933

namespace A130675

/-- `∏{e}[∏{e}[n+1, 2^#], #!]` -/
def P6977464768094939933.Spec : Prop :=
  ∀ n, (P6977464768094939933.a n : ℤ) = A130675 (n + 1)

end A130675

/-! ## A130675.P10074350335368071685

`Δ[A022559(n)]!`
-/

namespace A130675.P10074350335368071685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (n + 1) - f1 n).toNat

end

end A130675.P10074350335368071685

namespace A130675

/-- `Δ[A022559(n)]!` -/
def P10074350335368071685.Spec : Prop :=
  ∀ n, (P10074350335368071685.a n : ℤ) = A130675 (n + 1)

end A130675

/-! ## A130675.P12138048814498199759

`A086436(n+1)!`
-/

namespace A130675.P12138048814498199759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A086436 (n + 1)).toNat

end

end A130675.P12138048814498199759

namespace A130675

/-- `A086436(n+1)!` -/
def P12138048814498199759.Spec : Prop :=
  ∀ n, (P12138048814498199759.a n : ℤ) = A130675 (n + 1)

end A130675

/-! ## A130675.P4887077780950141402

`A144494(n+1)!`
-/

namespace A130675.P4887077780950141402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A144494 (n + 1)).toNat

end

end A130675.P4887077780950141402

namespace A130675

/-- `A144494(n+1)!` -/
def P4887077780950141402.Spec : Prop :=
  ∀ n, (P4887077780950141402.a n : ℤ) = A130675 (n + 1)

end A130675

/-! ## A130675.P13080034250142607519

`log2(A061142(n+1))!`
-/

namespace A130675.P13080034250142607519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (A061142 (n + 1) : ℝ))).toNat

end

end A130675.P13080034250142607519

namespace A130675

/-- `log2(A061142(n+1))!` -/
def P13080034250142607519.Spec : Prop :=
  ∀ n, (P13080034250142607519.a n : ℤ) = A130675 (n + 1)

end A130675

/-! ## A130675.P13826841916398036680

`A000142(∑{e}[n+1, #])`
-/

namespace A130675.P13826841916398036680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A130675.P13826841916398036680

namespace A130675

/-- `A000142(∑{e}[n+1, #])` -/
def P13826841916398036680.Spec : Prop :=
  ∀ n, P13826841916398036680.a n = A130675 (n + 1)

end A130675

/-! ## A130675.P693951006947517414

`val(A165825(n+1), 4)!`
-/

namespace A130675.P693951006947517414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4)

end

end A130675.P693951006947517414

namespace A130675

/-- `val(A165825(n+1), 4)!` -/
def P693951006947517414.Spec : Prop :=
  ∀ n, (P693951006947517414.a n : ℤ) = A130675 (n + 1)

end A130675

/-! ## A130675.P3433015451212982546

`A112624(A061142(n+1))`
-/

namespace A130675.P3433015451212982546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A061142 (n + 1)).toNat

end

end A130675.P3433015451212982546

namespace A130675

/-- `A112624(A061142(n+1))` -/
def P3433015451212982546.Spec : Prop :=
  ∀ n, P3433015451212982546.a n = A130675 (n + 1)

end A130675

/-! ## A130675.P66143299471791046

`A112624(A068794(n+1))`
-/

namespace A130675.P66143299471791046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A068794 (n + 1)).toNat

end

end A130675.P66143299471791046

namespace A130675

/-- `A112624(A068794(n+1))` -/
def P66143299471791046.Spec : Prop :=
  ∀ n, P66143299471791046.a n = A130675 (n + 1)

end A130675

/-! ## A130675.P5304148710845047519

`A132369(A105560(n+1))`
-/

namespace A130675.P5304148710845047519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132369 (A105560 (n + 1)).toNat

end

end A130675.P5304148710845047519

namespace A130675

/-- `A132369(A105560(n+1))` -/
def P5304148710845047519.Spec : Prop :=
  ∀ n, P5304148710845047519.a n = A130675 (n + 1)

end A130675

/-! ## A130675.P11951425225317122236

`A158706(A001222(n+1)²)`
-/

namespace A130675.P11951425225317122236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158706 (A001222 (n + 1) ^ 2).toNat

end

end A130675.P11951425225317122236

namespace A130675

/-- `A158706(A001222(n+1)²)` -/
def P11951425225317122236.Spec : Prop :=
  ∀ n, P11951425225317122236.a n = A130675 (n + 1)

end A130675

/-! ## A130675.P4063755361278843323

`A214078(A001222(n+1)²)`
-/

namespace A130675.P4063755361278843323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214078 (A001222 (n + 1) ^ 2).toNat

end

end A130675.P4063755361278843323

namespace A130675

/-- `A214078(A001222(n+1)²)` -/
def P4063755361278843323.Spec : Prop :=
  ∀ n, P4063755361278843323.a n = A130675 (n + 1)

end A130675

/-! ## A130675.P6196230296184058124

`A214080(A001222(n+1)²)`
-/

namespace A130675.P6196230296184058124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214080 (A001222 (n + 1) ^ 2).toNat

end

end A130675.P6196230296184058124

namespace A130675

/-- `A214080(A001222(n+1)²)` -/
def P6196230296184058124.Spec : Prop :=
  ∀ n, P6196230296184058124.a n = A130675 (n + 1)

end A130675

/-!
# A130679: a(n) = (n+1+(-1)^n)*A024167(n), related to alternating harmonic sums.

The programs for A130679, the canonical program `A130679.P15487793621860447785` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130679 has offset 1).

The definition of A130679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130679.P15487793621860447785

`(n+2+(-1)^(n+1))*A024167(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130679

/-- `(n+2+(-1)^(n+1))*A024167(n+1)` -/
def P15487793621860447785.Spec : Prop :=
  ∀ n, P15487793621860447785.a n = A130679 (n + 1)

theorem P15487793621860447785.correct : P15487793621860447785.Spec := by
  intro n
  simp only [A130679, Nat.add_sub_cancel]

end A130679

/-! ## A130679.P6663484427772118176

`(n+1)!*(n+2+(-1)^(n+1))*A058313(n+1)/A058312(n+1)`
-/

namespace A130679.P6663484427772118176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) : ℤ) * ((n + 2 : ℤ) + (-1) ^ (n + 1)) * A058313 (n + 1) : ℚ) / (A058312 (n + 1) : ℚ)

end

end A130679.P6663484427772118176

namespace A130679

/-- `(n+1)!*(n+2+(-1)^(n+1))*A058313(n+1)/A058312(n+1)` -/
def P6663484427772118176.Spec : Prop :=
  ∀ n, P6663484427772118176.a n = (A130679 (n + 1) : ℚ)

end A130679

/-! ## A130679.P13372650434403440916

`A024167(n+1)*A103889(n+2)`
-/

namespace A130679.P13372650434403440916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024167 (n + 1) * A103889 (n + 2)

end

end A130679.P13372650434403440916

namespace A130679

/-- `A024167(n+1)*A103889(n+2)` -/
def P13372650434403440916.Spec : Prop :=
  ∀ n, P13372650434403440916.a n = A130679 (n + 1)

end A130679

/-! ## A130679.P12481357664952339881

`A014681(n+2)*A054651(A034856(n+1))`
-/

namespace A130679.P12481357664952339881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (n + 2) * A054651 (A034856 (n + 1)).toNat

end

end A130679.P12481357664952339881

namespace A130679

/-- `A014681(n+2)*A054651(A034856(n+1))` -/
def P12481357664952339881.Spec : Prop :=
  ∀ n, P12481357664952339881.a n = A130679 (n + 1)

end A130679

/-! ## A130679.P4532067358759702551

`A014681(n+2)*A190782(A000124(n+1))`
-/

namespace A130679.P4532067358759702551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (n + 2) * A190782 (A000124 (n + 1)).toNat

end

end A130679.P4532067358759702551

namespace A130679

/-- `A014681(n+2)*A190782(A000124(n+1))` -/
def P4532067358759702551.Spec : Prop :=
  ∀ n, P4532067358759702551.a n = A130679 (n + 1)

end A130679

/-!
# A130684: Triangle read by rows: T(n,k) = number of squares (not necessarily orthogonal) all of whose vertices lie in an (n + 1) X (k + 1) square lattice.

The programs for A130684, there is no canonical definition to state claims against.
-/

/-! ## A130684.P3947211396032996298

`A083504(n+1)/4`
-/

namespace A130684.P3947211396032996298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083504 (n + 1) : ℚ) / 4

end

end A130684.P3947211396032996298

/-! ## A130684.P16457556679910699584

`A117358(2*A083504(n+1))`
-/

namespace A130684.P16457556679910699584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (2 * A083504 (n + 1)).toNat

end

end A130684.P16457556679910699584

/-! ## A130684.P15963042153996494409

`A002265(A083504(n+1))`
-/

namespace A130684.P15963042153996494409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A083504 (n + 1)).toNat

end

end A130684.P15963042153996494409

/-! ## A130684.P6894994281435438300

`A008624(A083504(n+1)+1)`
-/

namespace A130684.P6894994281435438300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A083504 (n + 1) + 1).toNat

end

end A130684.P6894994281435438300

/-! ## A130684.P12479992836942150521

`A025480(A083504(n+1)+1)`
-/

namespace A130684.P12479992836942150521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A083504 (n + 1) + 1).toNat

end

end A130684.P12479992836942150521

/-! ## A130684.P14621031667985532800

`A059169(A083504(n+1)+1)`
-/

namespace A130684.P14621031667985532800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A083504 (n + 1) + 1).toNat

end

end A130684.P14621031667985532800

/-! ## A130684.P4544122078943220755

`A008621(A083504(n+1)-1)`
-/

namespace A130684.P4544122078943220755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A083504 (n + 1) - 1).toNat

end

end A130684.P4544122078943220755

/-! ## A130684.P15164338429621490437

`A003602(A083504(n+1)-2)`
-/

namespace A130684.P15164338429621490437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A083504 (n + 1) - 2).toNat

end

end A130684.P15164338429621490437

/-! ## A130684.P16649577639204936918

`A110657(A083504(n+1)+3)`
-/

namespace A130684.P16649577639204936918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A083504 (n + 1) + 3).toNat

end

end A130684.P16649577639204936918

/-!
# A130686: Absolute difference of final digits of two consecutive triangular numbers.

The programs for A130686, the canonical program `A130686.P10616595932014876428` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A130686 has offset 1).

The definition of A130686 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A130686.P10616595932014876428

`abs(A010879(A000217(n+1))-A010879(A000217(n)))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A130686

/-- `abs(A010879(A000217(n+1))-A010879(A000217(n)))` -/
def P10616595932014876428.Spec : Prop :=
  ∀ n, P10616595932014876428.a n = A130686 (n + 1)

theorem P10616595932014876428.correct : P10616595932014876428.Spec := by
  intro n
  simp only [A130686, Nat.add_sub_cancel]

end A130686

/-!
# A130687: Numbers n such that a_1! + a_2! + ... + a_m! is a square number, where a_1a_2...a_m is the decimal expansion of n.

The programs for A130687, there is no canonical definition to state claims against.
-/

/-! ## A130687.P16463004076213833601

`A173687(n+2)`
-/

namespace A130687.P16463004076213833601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173687 (n + 2)

end

end A130687.P16463004076213833601

/-! ## A130687.P12555154596179979216

`record[A173687(A133310(abs(1-n)))]`
-/

namespace A130687.P12555154596179979216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173687 (A133310 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130687.P12555154596179979216

/-! ## A130687.P1648296503826342097

`record[A173687(A328577(abs(1-n)))]`
-/

namespace A130687.P1648296503826342097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173687 (A328577 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130687.P1648296503826342097

/-! ## A130687.P8120735453544691203

`record[A173687(A126759(n))^(n%2)]`
-/

namespace A130687.P8120735453544691203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173687 (A126759 n).toNat ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130687.P8120735453544691203

/-! ## A130687.P14825282969177796585

`record[A173687(A331303(2*n-(n-1)))]`
-/

namespace A130687.P14825282969177796585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173687 (A331303 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130687.P14825282969177796585

/-! ## A130687.P6732804425690153478

`record[A173687(A001281(A004277(n)))]`
-/

namespace A130687.P6732804425690153478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173687 (A001281 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130687.P6732804425690153478

/-! ## A130687.P3573515947838042168

`record[A173687(A080513(A008624(n)))]`
-/

namespace A130687.P3573515947838042168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173687 (A080513 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130687.P3573515947838042168

/-! ## A130687.P1353246666690162462

`record[A173687(A014682(A092533(n)))]`
-/

namespace A130687.P1353246666690162462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173687 (A014682 (A092533 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130687.P1353246666690162462

/-! ## A130687.P5089015332919339604

`record[A173687(A102885(A008612(n)))]`
-/

namespace A130687.P5089015332919339604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173687 (A102885 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130687.P5089015332919339604

/-! ## A130687.P2487118620818129514

`record[A173687(A126759(A008486(n)))]`
-/

namespace A130687.P2487118620818129514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173687 (A126759 (A008486 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130687.P2487118620818129514

/-!
# A130689: Number of partitions of n such that every part divides the largest part; a(0) = 1.

The programs for A130689, there is no canonical definition to state claims against.
-/

/-! ## A130689.P1405585342127804493

`A000041(n)-A343341(A028310(n))`
-/

namespace A130689.P1405585342127804493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A343341 (A028310 n).toNat

end

end A130689.P1405585342127804493

/-! ## A130689.P2648678202081882942

`A083710(n)+A338470(n)-A343341(n)`
-/

namespace A130689.P2648678202081882942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083710 n + (A338470 n - A343341 n)

end

end A130689.P2648678202081882942

/-! ## A130689.P3431146530262001553

`∑[A339619(n)]`
-/

namespace A130689.P3431146530262001553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130689.P3431146530262001553

/-! ## A130689.P13820331867489418858

`A339619(abs(1-n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A130689.P13820331867489418858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A339619 (|1 - (n : ℤ)| + 1).toNat + a (n - 1)

end

end A130689.P13820331867489418858

/-! ## A130689.P3275338376772602134

`A083710(n)+A343344(n)-A343345(n)`
-/

namespace A130689.P3275338376772602134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083710 n + (A343344 n - A343345 n)

end

end A130689.P3275338376772602134

/-!
# A130690: Number of partitions of n such that the largest part is coprime to every other part.

The programs for A130690, there is no canonical definition to state claims against.
-/

/-! ## A130690.P8627745707494733889

`A111660(A000837(n)+1+n)`
-/

namespace A130690.P8627745707494733889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A000837 n + 1 + (n : ℤ)).toNat

end

end A130690.P8627745707494733889

/-! ## A130690.P4228805209611280747

`A332576(n)+A157928(A198313(n))`
-/

namespace A130690.P4228805209611280747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332576 n + A157928 (A198313 n).toNat

end

end A130690.P4228805209611280747

/-! ## A130690.P1676162687623318208

`A317081(n)+A139354(A141758(n+1))`
-/

namespace A130690.P1676162687623318208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317081 n + A139354 (A141758 (n + 1)).toNat

end

end A130690.P1676162687623318208

/-!
# A130691: Number of distinct unit fractions required to sum to n when using the "splitting algorithm".

The programs for A130691, there is no canonical definition to state claims against.
-/

/-! ## A130691.P6285827177336185083

`A088178(A026529(n+2)*A213093(n))`
-/

namespace A130691.P6285827177336185083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088178 (A026529 (n + 2) * A213093 n).toNat

end

end A130691.P6285827177336185083

/-!
# A130692: a(n) is the smallest number m such that the sum of the digits of n+m is n.

The programs for A130692, there is no canonical definition to state claims against.
-/

/-! ## A130692.P6359285029930362125

`∑[10^floor(n/9)-1]`
-/

namespace A130692.P6359285029930362125
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (⌊(n : ℚ) / 9⌋ : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130692.P6359285029930362125

/-! ## A130692.P14838474151369205184

`10^floor(n/9)-(1-a(n-1))` with `a(0)=0`
-/

namespace A130692.P14838474151369205184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (10 : ℚ) ^ (⌊(n : ℚ) / 9⌋ : ℤ) - (1 - a (n - 1))

end

end A130692.P14838474151369205184

/-! ## A130692.P16083065451750290645

`A051885(n+1)-(n+1)`
-/

namespace A130692.P16083065451750290645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (n + 1) - (n + 1 : ℤ)

end

end A130692.P16083065451750290645

/-! ## A130692.P8098593487463275312

`A037124(n+2)-(n+2)`
-/

namespace A130692.P8098593487463275312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (n + 2) - (n + 2 : ℤ)

end

end A130692.P8098593487463275312

/-! ## A130692.P13826255880256830995

`A081926(A000124(n))-(n+1)`
-/

namespace A130692.P13826255880256830995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081926 (A000124 n).toNat - (n + 1 : ℤ)

end

end A130692.P13826255880256830995

/-!
# A130694: Exponents of powers of 2 that contain all ten digits.

The programs for A130694, there is no canonical definition to state claims against.
-/

/-! ## A130694.P9210461819671006878

`A020725(lt[A020667(n+1), A020707(n)])`
-/

namespace A130694.P9210461819671006878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A130694.P9210461819671006878

/-!
# A130695: Number of ways to write n as (a+1)(b+1)(c+1) - abc with a, b, c nonnegative integers.

The programs for A130695, there is no canonical definition to state claims against.
-/

/-! ## A130695.P568157728395423441

`A259825(record[xor(3, n)])/4`
-/

namespace A130695.P568157728395423441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259825 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / 4

end

end A130695.P568157728395423441

/-! ## A130695.P706201361299872942

`A259825(4*n+3)/4`
-/

namespace A130695.P706201361299872942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259825 (4 * n + 3) : ℚ) / 4

end

end A130695.P706201361299872942

/-! ## A130695.P2685332737552559614

`3^(n%2)*A238872(n+1)`
-/

namespace A130695.P2685332737552559614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n % 2) : ℤ) * A238872 (n + 1)

end

end A130695.P2685332737552559614

/-! ## A130695.P2507059669112843748

`(2*(-1)^n-1)*A292511(n)`
-/

namespace A130695.P2507059669112843748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (-1) ^ n - 1) * A292511 n

end

end A130695.P2507059669112843748

/-! ## A130695.P4186760860547686376

`abs(A259825(A004767(n))/4)`
-/

namespace A130695.P4186760860547686376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A259825 (A004767 n).toNat : ℚ) / 4|

end

end A130695.P4186760860547686376

/-! ## A130695.P11639276279186741570

`A002265(A259825(record[xor(3, n)]))`
-/

namespace A130695.P11639276279186741570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A259825 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A130695.P11639276279186741570

/-! ## A130695.P8510105130586424067

`abs(A010684(n)*A292511(n))`
-/

namespace A130695.P8510105130586424067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010684 n * A292511 n|

end

end A130695.P8510105130586424067

/-! ## A130695.P17991529057462943823

`A026922(A259825(4*n+3))`
-/

namespace A130695.P17991529057462943823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A259825 (4 * n + 3)).toNat

end

end A130695.P17991529057462943823

/-! ## A130695.P4282818371037709356

`A010684(n)*A238872(n+1)`
-/

namespace A130695.P4282818371037709356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A238872 (n + 1)

end

end A130695.P4282818371037709356

/-! ## A130695.P15977232429534928577

`abs(A259825(Δ[A014105(n)])/4)`
-/

namespace A130695.P15977232429534928577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A259825 (f1 (n + 1) - f1 n).toNat : ℚ) / 4|

end

end A130695.P15977232429534928577

/-! ## A130695.P18106872429218535671

`A008624(A259825(record[xor(3, n)])+1)`
-/

namespace A130695.P18106872429218535671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A259825 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + 1).toNat

end

end A130695.P18106872429218535671

/-! ## A130695.P9849526718486952328

`A339913(A259825(4*n+3)-2)`
-/

namespace A130695.P9849526718486952328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 (A259825 (4 * n + 3) - 2).toNat

end

end A130695.P9849526718486952328

/-! ## A130695.P5193077150168620124

`A017377(n)%4*A238872(n+1)`
-/

namespace A130695.P5193077150168620124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017377 n) 4 * A238872 (n + 1)

end

end A130695.P5193077150168620124

/-! ## A130695.P2042961623399140813

`A118793(Δ[or(1, n)])*A238872(n+1)`
-/

namespace A130695.P2042961623399140813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118793 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A238872 (n + 1)

end

end A130695.P2042961623399140813

/-! ## A130695.P17128956565726645468

`A238872(n+1)*A285460(Δ[or(1, n)])`
-/

namespace A130695.P17128956565726645468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238872 (n + 1) * A285460 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A130695.P17128956565726645468

/-! ## A130695.P1148575613694502593

`(2-A209615(2*n+1))*A238872(n+1)`
-/

namespace A130695.P1148575613694502593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A209615 (2 * n + 1)) * A238872 (n + 1)

end

end A130695.P1148575613694502593

/-! ## A130695.P5676616597326932214

`A054576(A259825(A004767(n)))`
-/

namespace A130695.P5676616597326932214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A259825 (A004767 n).toNat).toNat

end

end A130695.P5676616597326932214

/-! ## A130695.P8906311988593515306

`A002265(A259825(Δ[A014105(n)]))`
-/

namespace A130695.P8906311988593515306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A259825 (f1 (n + 1) - f1 n).toNat).toNat

end

end A130695.P8906311988593515306

/-! ## A130695.P18009844253481572840

`A002265(A259825(A016813(n)+2))`
-/

namespace A130695.P18009844253481572840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A259825 (A016813 n + 2).toNat).toNat

end

end A130695.P18009844253481572840

/-! ## A130695.P5149895210096859986

`A000720(Δ[A028242(n)]+3)*A238872(n+1)`
-/

namespace A130695.P5149895210096859986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (n + 1) - f1 n + 3).toNat * A238872 (n + 1)

end

end A130695.P5149895210096859986

/-!
# A130696: Numbers k such that 2^k does not contain all ten decimal digits.

The programs for A130696, there is no canonical definition to state claims against.
-/

/-! ## A130696.P7230895362752065552

`A085978(A347676(n+1))+n`
-/

namespace A130696.P7230895362752065552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085978 (A347676 (n + 1)).toNat + (n : ℤ)

end

end A130696.P7230895362752065552

/-! ## A130696.P1548155913529165067

`C(n+1, 69)^(n+2)+n`
-/

namespace A130696.P1548155913529165067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 69 ^ (n + 2) + n

end

end A130696.P1548155913529165067

/-! ## A130696.P8895799587742738375

`A072639(C(n+1, 69))+n`
-/

namespace A130696.P8895799587742738375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072639 (Nat.choose (n + 1) 69) + (n : ℤ)

end

end A130696.P8895799587742738375

/-! ## A130696.P9244407604873509991

`A076906(C(n+1, 69))+n`
-/

namespace A130696.P9244407604873509991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076906 (Nat.choose (n + 1) 69) + (n : ℤ)

end

end A130696.P9244407604873509991

/-!
# A130698: Numbers n such that the sum of the sum-of-divisors function of all integers up to n is a square.

The programs for A130698, there is no canonical definition to state claims against.
-/

/-! ## A130698.P7229644074038182920

`A185283(A062407(n+1))`
-/

namespace A130698.P7229644074038182920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A062407 (n + 1)).toNat

end

end A130698.P7229644074038182920

/-!
# A130699: Numbers n for which neither 2n-3 nor 2n+3 are primes.

The programs for A130699, there is no canonical definition to state claims against.
-/

/-! ## A130699.P16688571954131264395

`comp[A063934(n-1)-a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A130699.P16688571954131264395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  A063934 (n - 1) - f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A130699.P16688571954131264395

/-! ## A130699.P13806510678533137111

`comp[A097065(A093515(n+1))]`
-/

namespace A130699.P13806510678533137111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (A093515 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A130699.P13806510678533137111

/-! ## A130699.P2005665245621111358

`comp[A267182(n+1)*A278907(n)]`
-/

namespace A130699.P2005665245621111358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267182 (n + 1) * A278907 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A130699.P2005665245621111358

/-! ## A130699.P16206003722303005939

`eq[A128059(n+3), A128059(n)]+1`
-/

namespace A130699.P16206003722303005939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A130699.P16206003722303005939

/-! ## A130699.P13724585886185424316

`∩[A153043(n+1), A153238(n+1)]`
-/

namespace A130699.P13724585886185424316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A130699.P13724585886185424316

/-! ## A130699.P11072427242481142925

`comp[A106492(n+1)-A106466(n+2)]`
-/

namespace A130699.P11072427242481142925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106492 (n + 1) - A106466 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A130699.P11072427242481142925

/-! ## A130699.P8267103911892517468

`ceil(eq[A334768(n+6), A334768(n)]/2)`
-/

namespace A130699.P8267103911892517468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334768 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2⌉

end

end A130699.P8267103911892517468

/-! ## A130699.P5609418456601854326

`comp[∪[A067076(n+1), A098090(n+1)]]`
-/

namespace A130699.P5609418456601854326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A130699.P5609418456601854326

/-! ## A130699.P1838568184351210052

`eq[A085090(n+1), A085090(n+4)]+2`
-/

namespace A130699.P1838568184351210052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A130699.P1838568184351210052

