import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C004
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C030
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B005.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A042601: Denominators of continued fraction convergents to sqrt(829).

The programs for A042601, there is no canonical definition to state claims against.
-/

/-! ## A042601.P5127671634528279790

`A376589(round(2^(n-1)))+A237420(n)`
-/

namespace A042601.P5127671634528279790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376589 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat + A237420 n

end

end A042601.P5127671634528279790

/-!
# A042603: Denominators of continued fraction convergents to sqrt(830).

The programs for A042603, there is no canonical definition to state claims against.
-/

/-! ## A042603.P13624375287705484942

`A151735(A365073(n)/A080853(n))`
-/

namespace A042603.P13624375287705484942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151735 (SequenceMachineLib.roundAway ((A365073 n : ℚ) / (A080853 n : ℚ))).toNat

end

end A042603.P13624375287705484942

/-! ## A042603.P8048303885824854476

`A151735(A365073(n)/A302998(n))`
-/

namespace A042603.P8048303885824854476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151735 (SequenceMachineLib.roundAway ((A365073 n : ℚ) / (A302998 n : ℚ))).toNat

end

end A042603.P8048303885824854476

/-!
# A042609: Denominators of continued fraction convergents to sqrt(833).

The programs for A042609, there is no canonical definition to state claims against.
-/

/-! ## A042609.P7553720188615185183

`A253553(∑{p}[A086690(n+1), #])`
-/

namespace A042609.P7553720188615185183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253553 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A042609.P7553720188615185183

/-! ## A042609.P14312506992476972692

`A342854(3*n)+A112798(A108662(n+1))`
-/

namespace A042609.P14312506992476972692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342854 (3 * n) + A112798 (A108662 (n + 1)).toNat

end

end A042609.P14312506992476972692

/-!
# A042617: Denominators of continued fraction convergents to sqrt(837).

The programs for A042617, there is no canonical definition to state claims against.
-/

/-! ## A042617.P7482075306797669194

`∑[A025480(∑[A049984(n+1)])]`
-/

namespace A042617.P7482075306797669194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049984 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042617.P7482075306797669194

/-!
# A042619: Denominators of continued fraction convergents to sqrt(838).

The programs for A042619, there is no canonical definition to state claims against.
-/

/-! ## A042619.P14728794682296794801

`A213309(a(n-1)+3)` with `a(0)=1, a(1)=1`
-/

namespace A042619.P14728794682296794801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A213309 (a (n - 1) + 3).toNat

end

end A042619.P14728794682296794801

/-!
# A042621: Denominators of continued fraction convergents to sqrt(839).

The programs for A042621, there is no canonical definition to state claims against.
-/

/-! ## A042621.P14314135435847424947

`A140106(A042623(n))+1`
-/

namespace A042621.P14314135435847424947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A042623 n).toNat + 1

end

end A042621.P14314135435847424947

/-! ## A042621.P4608702319008281174

`A065033(A042623(n)-1)`
-/

namespace A042621.P4608702319008281174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A042623 n - 1).toNat

end

end A042621.P4608702319008281174

/-!
# A042622: Numerators of continued fraction convergents to sqrt(840).

The programs for A042622, there is no canonical definition to state claims against.
-/

/-! ## A042622.P13867179030365094053

`gcd(2, n)*A041390(n)`
-/

namespace A042622.P13867179030365094053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041390 n

end

end A042622.P13867179030365094053

/-! ## A042622.P2255070947096604095

`A000034(n+1)*A041390(n)`
-/

namespace A042622.P2255070947096604095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041390 n

end

end A042622.P2255070947096604095

/-! ## A042622.P13031991701407253892

`A040001(n+2)*A041390(n)`
-/

namespace A042622.P13031991701407253892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A041390 n

end

end A042622.P13031991701407253892

/-! ## A042622.P6458679527964403208

`A041390(n)*A134451(n+2)`
-/

namespace A042622.P6458679527964403208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041390 n * A134451 (n + 2)

end

end A042622.P6458679527964403208

/-! ## A042622.P13796774895277980954

`2/A000034(n)*A041390(n)`
-/

namespace A042622.P13796774895277980954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041390 n : ℚ)

end

end A042622.P13796774895277980954

/-!
# A042623: Denominators of continued fraction convergents to sqrt(840).

The programs for A042623, the canonical program `A042623.P2908136322028648864` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042623 has offset 0).

The definition of A042623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A042623.P2908136322028648864

`A041391(n)/(n%2+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A042623

/-- `A041391(n)/(n%2+1)` -/
def P2908136322028648864.Spec : Prop :=
  ∀ n, P2908136322028648864.a n = (A042623 n : ℚ)

end A042623

/-! ## A042623.P824600218856737031

`A041391(n)/A000034(n)`
-/

namespace A042623.P824600218856737031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041391 n : ℚ) / (A000034 n : ℚ)

end

end A042623.P824600218856737031

namespace A042623

/-- `A041391(n)/A000034(n)` -/
def P824600218856737031.Spec : Prop :=
  ∀ n, P824600218856737031.a n = (A042623 n : ℚ)

end A042623

/-! ## A042623.P17202901212011598224

`A041391(n)/A134451(n+1)`
-/

namespace A042623.P17202901212011598224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041391 n : ℚ) / (A134451 (n + 1) : ℚ)

end

end A042623.P17202901212011598224

namespace A042623

/-- `A041391(n)/A134451(n+1)` -/
def P17202901212011598224.Spec : Prop :=
  ∀ n, P17202901212011598224.a n = (A042623 n : ℚ)

end A042623

/-! ## A042623.P2211290699908574164

`A041391(n)/Δ[A001651(n+1)]`
-/

namespace A042623.P2211290699908574164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041391 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042623.P2211290699908574164

namespace A042623

/-- `A041391(n)/Δ[A001651(n+1)]` -/
def P2211290699908574164.Spec : Prop :=
  ∀ n, P2211290699908574164.a n = (A042623 n : ℚ)

end A042623

/-! ## A042623.P7780810029620963134

`A041391(n)/A003324(A189834(n))`
-/

namespace A042623.P7780810029620963134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041391 n : ℚ) / (A003324 (A189834 n).toNat : ℚ)

end

end A042623.P7780810029620963134

namespace A042623

/-- `A041391(n)/A003324(A189834(n))` -/
def P7780810029620963134.Spec : Prop :=
  ∀ n, P7780810029620963134.a n = (A042623 n : ℚ)

end A042623

/-!
# A042625: Denominators of continued fraction convergents to sqrt(842).

The programs for A042625, the canonical program `A042625.P5308660141614182645` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042625 has offset 0).

The definition of A042625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042625.P5308660141614182645

`58*a(n-1)+a(n-2)` with `a(0)=1, a(1)=58`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A042625

/-- `58*a(n-1)+a(n-2)` -/
def P5308660141614182645.Spec : Prop :=
  ∀ n, (P5308660141614182645.a n : ℤ) = A042625 n

theorem P5308660141614182645.correct : P5308660141614182645.Spec := by
  intro n
  simp only [A042625]

end A042625

/-! ## A042625.P5593777586641703087

`xor(1, a(n-1)²)/a(n-2)` with `a(0)=1, a(1)=58`
-/

namespace A042625.P5593777586641703087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 58] fun n a =>
  (Int.xor 1 (SequenceMachineLib.roundAway (a (n - 1) ^ 2)) : ℚ) / a (n - 2)

end

end A042625.P5593777586641703087

namespace A042625

/-- `xor(1, a(n-1)²)/a(n-2)` -/
def P5593777586641703087.Spec : Prop :=
  ∀ n, P5593777586641703087.a n = (A042625 n : ℚ)

end A042625

/-! ## A042625.P3791637483139092902

`floor((a(n-1)²+1)/a(n-2))` with `a(0)=1, a(1)=58`
-/

namespace A042625.P3791637483139092902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 58] fun n a =>
  ⌊(a (n - 1) ^ 2 + 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A042625.P3791637483139092902

namespace A042625

/-- `floor((a(n-1)²+1)/a(n-2))` -/
def P3791637483139092902.Spec : Prop :=
  ∀ n, P3791637483139092902.a n = A042625 n

end A042625

/-!
# A042629: Denominators of continued fraction convergents to sqrt(844).

The programs for A042629, there is no canonical definition to state claims against.
-/

/-! ## A042629.P14261424847246362307

`A131630(3*n+2)+A093641(A249475(n))`
-/

namespace A042629.P14261424847246362307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131630 (3 * n + 2) + A093641 (A249475 n).toNat

end

end A042629.P14261424847246362307

/-!
# A042633: Denominators of continued fraction convergents to sqrt(846).

The programs for A042633, there is no canonical definition to state claims against.
-/

/-! ## A042633.P6753795442337555329

`A022101(record[n-A308109(n+1)])`
-/

namespace A042633.P6753795442337555329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A308109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A042633.P6753795442337555329

/-! ## A042633.P4790108201133229853

`record[A022101(n)/A147320(n+1)]`
-/

namespace A042633.P4790108201133229853
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022101 n : ℚ) / (A147320 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042633.P4790108201133229853

/-! ## A042633.P5372044855860319798

`record[gcd(A022101(n), A308109(n+1))]`
-/

namespace A042633.P5372044855860319798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022101 n) (A308109 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042633.P5372044855860319798

/-! ## A042633.P2033499549166177318

`A022101(C(A160120(n), A020883(n+2)+2)+n)`
-/

namespace A042633.P2033499549166177318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 (Nat.choose (A160120 n).toNat (A020883 (n + 2) + 2).toNat + n)

end

end A042633.P2033499549166177318

/-!
# A042635: Denominators of continued fraction convergents to sqrt(847).

The programs for A042635, there is no canonical definition to state claims against.
-/

/-! ## A042635.P8044278154624741560

`∑{d}[A052318(n+1), A090929(#)]`
-/

namespace A042635.P8044278154624741560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A090929 d

end

end A042635.P8044278154624741560

/-!
# A042637: Denominators of continued fraction convergents to sqrt(848).

The programs for A042637, there is no canonical definition to state claims against.
-/

/-! ## A042637.P7157371296000090014

`A115060(Δ[A100230(n)])`
-/

namespace A042637.P7157371296000090014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (f1 (n + 1) - f1 n).toNat

end

end A042637.P7157371296000090014

/-!
# A042639: Denominators of continued fraction convergents to sqrt(849).

The programs for A042639, there is no canonical definition to state claims against.
-/

/-! ## A042639.P14408402485238166451

`or(A051250(3*n+1)-n, A160410(n))`
-/

namespace A042639.P14408402485238166451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051250 (3 * n + 1) - (n : ℤ)) (A160410 n)

end

end A042639.P14408402485238166451

/-! ## A042639.P4053673993511457921

`A332820(A041437(n))-∑[A024596(n+1)]`
-/

namespace A042639.P4053673993511457921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332820 (A041437 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042639.P4053673993511457921

/-!
# A042644: Numerators of continued fraction convergents to sqrt(852).

The programs for A042644, there is no canonical definition to state claims against.
-/

/-! ## A042644.P6882508621563690430

`A348036(A000034(n)*A041396(n+2))`
-/

namespace A042644.P6882508621563690430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348036 (A000034 n * A041396 (n + 2)).toNat

end

end A042644.P6882508621563690430

/-!
# A042645: Denominators of continued fraction convergents to sqrt(852).

The programs for A042645, there is no canonical definition to state claims against.
-/

/-! ## A042645.P15540451154209959161

`a(n-2)+a(n-1)*A335458(a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A042645.P15540451154209959161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + a (n - 1) * A335458 (a (n - 1)).toNat

end

end A042645.P15540451154209959161

/-!
# A042649: Denominators of continued fraction convergents to sqrt(854).

The programs for A042649, there is no canonical definition to state claims against.
-/

/-! ## A042649.P3239347546247707241

`A140271(A099962(2*(n+2))-1)`
-/

namespace A042649.P3239347546247707241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 (A099962 (2 * (n + 2)) - 1).toNat

end

end A042649.P3239347546247707241

/-!
# A042653: Denominators of continued fraction convergents to sqrt(856).

The programs for A042653, there is no canonical definition to state claims against.
-/

/-! ## A042653.P8786548746439311600

`A141206(A042265(n+1))`
-/

namespace A042653.P8786548746439311600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141206 (A042265 (n + 1)).toNat

end

end A042653.P8786548746439311600

/-!
# A042654: Numerators of continued fraction convergents to sqrt(857).

The programs for A042654, there is no canonical definition to state claims against.
-/

/-! ## A042654.P5481103687281853677

`A167389(A041780(n))`
-/

namespace A042654.P5481103687281853677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167389 (A041780 n).toNat

end

end A042654.P5481103687281853677

/-!
# A042657: Denominators of continued fraction convergents to sqrt(858).

The programs for A042657, there is no canonical definition to state claims against.
-/

/-! ## A042657.P9627173758989815490

`or((n+1)!%∑[∑[2*(n+1)]], A305190(∑[round(sqrt(2*n))]+1))`
-/

namespace A042657.P9627173758989815490
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((Nat.factorial (n + 1) % (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) (A305190 (∑ j ∈ Finset.range (n + 1), f3 j + 1).toNat)

end

end A042657.P9627173758989815490

/-!
# A042659: Denominators of continued fraction convergents to sqrt(859).

The programs for A042659, there is no canonical definition to state claims against.
-/

/-! ## A042659.P10346894120169008390

`a(n-2)+a(n-1)*A133232(A053156(n+1))` with `a(0)=1, a(1)=3`
-/

namespace A042659.P10346894120169008390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + a (n - 1) * A133232 (A053156 (n + 1)).toNat

end

end A042659.P10346894120169008390

/-!
# A042663: Denominators of continued fraction convergents to sqrt(861).

The programs for A042663, there is no canonical definition to state claims against.
-/

/-! ## A042663.P9848236512213862130

`A338486(2-(n-a(n-1)))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A042663.P9848236512213862130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A338486 (2 - ((n : ℤ) - a (n - 1))).toNat

end

end A042663.P9848236512213862130

/-!
# A042665: Denominators of continued fraction convergents to sqrt(862).

The programs for A042665, there is no canonical definition to state claims against.
-/

/-! ## A042665.P11747901409544597603

`A114231(3*n+4)+A114209(A114217(n+1))`
-/

namespace A042665.P11747901409544597603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114231 (3 * n + 4) + A114209 (A114217 (n + 1)).toNat

end

end A042665.P11747901409544597603

/-!
# A042666: Numerators of continued fraction convergents to sqrt(863).

The programs for A042666, there is no canonical definition to state claims against.
-/

/-! ## A042666.P6732472713285374187

`A247832(A042236(n))`
-/

namespace A042666.P6732472713285374187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247832 (A042236 n).toNat

end

end A042666.P6732472713285374187

/-!
# A042667: Denominators of continued fraction convergents to sqrt(863).

The programs for A042667, there is no canonical definition to state claims against.
-/

/-! ## A042667.P4277151083443293173

`a(n-2)+a(n-1)*A040833(n)` with `a(0)=1, a(1)=2`
-/

namespace A042667.P4277151083443293173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + a (n - 1) * A040833 n

end

end A042667.P4277151083443293173

/-!
# A042673: Denominators of continued fraction convergents to sqrt(866).

The programs for A042673, there is no canonical definition to state claims against.
-/

/-! ## A042673.P11483876116713303257

`∑[A045864(A007580(n*gcd(2, n)))]`
-/

namespace A042673.P11483876116713303257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045864 (A007580 (n * Nat.gcd 2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042673.P11483876116713303257

/-! ## A042673.P11323986972707335086

`A350873(∏[gcd(1-n, n%2)])+A165186(n+1)`
-/

namespace A042673.P11323986972707335086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350873 (∏ j ∈ Finset.range (n + 1), f1 j) + A165186 (n + 1)

end

end A042673.P11323986972707335086

/-!
# A042675: Denominators of continued fraction convergents to sqrt(867).

The programs for A042675, there is no canonical definition to state claims against.
-/

/-! ## A042675.P16315962294103201268

`A059893(A001813(n)*A226234(n+1))`
-/

namespace A042675.P16315962294103201268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A001813 n * A226234 (n + 1)).toNat

end

end A042675.P16315962294103201268

/-!
# A042677: Denominators of continued fraction convergents to sqrt(868).

The programs for A042677, there is no canonical definition to state claims against.
-/

/-! ## A042677.P16798354638800724318

`A266646(A215661(n)-A001222(n+1))`
-/

namespace A042677.P16798354638800724318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266646 (A215661 n - A001222 (n + 1)).toNat

end

end A042677.P16798354638800724318

/-!
# A042679: Denominators of continued fraction convergents to sqrt(869).

The programs for A042679, there is no canonical definition to state claims against.
-/

/-! ## A042679.P9301742542790140230

`xor(A173196(3*n), A204909(A047656(n)))`
-/

namespace A042679.P9301742542790140230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A173196 (3 * n)) (A204909 (A047656 n).toNat)

end

end A042679.P9301742542790140230

/-!
# A042681: Denominators of continued fraction convergents to sqrt(870).

The programs for A042681, the canonical program `A042681.P17189706849187608597` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042681 has offset 0).

The definition of A042681 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042681.P17189706849187608597

`118*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=117, a(3)=236`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A042681

/-- `118*a(n-2)-a(n-4)` -/
def P17189706849187608597.Spec : Prop :=
  ∀ n, P17189706849187608597.a n = A042681 n

theorem P17189706849187608597.correct : P17189706849187608597.Spec := by
  intro n
  simp only [A042681]

end A042681

/-!
# A042683: Denominators of continued fraction convergents to sqrt(871).

The programs for A042683, there is no canonical definition to state claims against.
-/

/-! ## A042683.P3447217479317424464

`A248610((char[∑[n]]+1)*n^n)`
-/

namespace A042683.P3447217479317424464
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248610 (((if ∃ j, f1 j = n then 1 else 0) + 1) * n ^ n)

end

end A042683.P3447217479317424464

/-!
# A042684: Numerators of continued fraction convergents to sqrt(872).

The programs for A042684, there is no canonical definition to state claims against.
-/

/-! ## A042684.P16957369842779675152

`A111615(A042685(n))+A042570(n)`
-/

namespace A042684.P16957369842779675152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111615 (A042685 n).toNat + A042570 n

end

end A042684.P16957369842779675152

/-!
# A042685: Denominators of continued fraction convergents to sqrt(872).

The programs for A042685, there is no canonical definition to state claims against.
-/

/-! ## A042685.P14127876232167338405

`A054429(∑[A066305(n+1)])`
-/

namespace A042685.P14127876232167338405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A042685.P14127876232167338405

/-! ## A042685.P8841664742594092541

`A332497(A002110(n))+xor(n, floor(n/4))`
-/

namespace A042685.P8841664742594092541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332497 (A002110 n).toNat + Int.xor (n : ℤ) ⌊(n : ℚ) / 4⌋

end

end A042685.P8841664742594092541

/-!
# A042690: Numerators of continued fraction convergents to sqrt(875).

The programs for A042690, there is no canonical definition to state claims against.
-/

/-! ## A042690.P6399466079498593234

`A188435(A041974(n))`
-/

namespace A042690.P6399466079498593234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188435 (A041974 n).toNat

end

end A042690.P6399466079498593234

/-! ## A042690.P17395894488046620829

`A042576(n)+A007953(A042005(n))`
-/

namespace A042690.P17395894488046620829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042576 n + A007953 (A042005 n).toNat

end

end A042690.P17395894488046620829

/-!
# A042693: Denominators of continued fraction convergents to sqrt(876).

The programs for A042693, there is no canonical definition to state claims against.
-/

/-! ## A042693.P4964906496940419662

`A232353(A232193(n+1)+5)`
-/

namespace A042693.P4964906496940419662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232353 (A232193 (n + 1) + 5).toNat

end

end A042693.P4964906496940419662

/-! ## A042693.P17102343877841459714

`A092188(or(6, A247417(n+2)))`
-/

namespace A042693.P17102343877841459714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092188 (Int.lor 6 (A247417 (n + 2))).toNat

end

end A042693.P17102343877841459714

/-!
# A042694: Numerators of continued fraction convergents to sqrt(877).

The programs for A042694, there is no canonical definition to state claims against.
-/

/-! ## A042694.P3780631811113601111

`A022399(comp[a(n-2)+6^(n%2)])` with `a(0)=8, a(1)=0`
-/

namespace A042694.P3780631811113601111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 0] fun n f1 =>
  f1 (n - 2) + 6 ^ (n % 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022399 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A042694.P3780631811113601111

/-! ## A042694.P7081639552061617357

`A022399(∑[A047187(n+1)!])`
-/

namespace A042694.P7081639552061617357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A047187 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022399 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A042694.P7081639552061617357

/-!
# A042696: Numerators of continued fraction convergents to sqrt(878).

The programs for A042696, there is no canonical definition to state claims against.
-/

/-! ## A042696.P837175915571131644

`A141204(A041978(n))`
-/

namespace A042696.P837175915571131644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141204 (A041978 n).toNat

end

end A042696.P837175915571131644

/-!
# A042697: Denominators of continued fraction convergents to sqrt(878).

The programs for A042697, there is no canonical definition to state claims against.
-/

/-! ## A042697.P5076603093915650532

`A325620(A054272(n+1)-A137305(n))`
-/

namespace A042697.P5076603093915650532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325620 (A054272 (n + 1) - A137305 n).toNat

end

end A042697.P5076603093915650532

/-! ## A042697.P7706341480419515204

`A131339(n)%A020695(A239091(n+1))`
-/

namespace A042697.P7706341480419515204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131339 (n + 10)) (A020695 (A239091 (n + 1)).toNat)

end

end A042697.P7706341480419515204

/-! ## A042697.P8231316710970523158

`A238616(A001405(n))%A161982(n+1)`
-/

namespace A042697.P8231316710970523158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238616 (A001405 n).toNat) (A161982 (n + 1))

end

end A042697.P8231316710970523158

/-! ## A042697.P10675666832582235852

`A238616(A374635(n))%A115261(3*n+2)`
-/

namespace A042697.P10675666832582235852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238616 (A374635 n).toNat) (A115261 (3 * n + 2))

end

end A042697.P10675666832582235852

