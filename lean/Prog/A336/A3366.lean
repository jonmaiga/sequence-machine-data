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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A336602: a(n) = 8*a(n-1) - 21*a(n-2) + 20*a(n-3) - 5*a(n-4), with initial terms a(0)=1, a(1)=7, a(2)=35, a(3)=154.

The programs for A336602, the canonical program `A336602.P15740319770779322371` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336602 has offset 0).

The definition of A336602 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` (program `A336602.P15740319770779322371`, by `A336602.P15740319770779322371.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A336602.P15740319770779322371

`8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` with `a(0)=1, a(1)=7, a(2)=35, a(3)=154`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A336602

/-- `8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` -/
def P15740319770779322371.Spec : Prop :=
  ∀ n, P15740319770779322371.a n = A336602 n

theorem P15740319770779322371.correct : P15740319770779322371.Spec := by
  intro n
  simp only [A336602]

end A336602

/-! ## A336602.P16291803556628708653

`A094865(n)+A094825(n+3)`
-/

namespace A336602.P16291803556628708653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 n + A094825 (n + 3)

end

end A336602.P16291803556628708653

namespace A336602

/-- `A094865(n)+A094825(n+3)` -/
def P16291803556628708653.Spec : Prop :=
  ∀ n, P16291803556628708653.a n = A336602 n

end A336602

/-! ## A336602.P14495954673406618723

`A094865(n)+Δ[A094865(n+2)]`
-/

namespace A336602.P14495954673406618723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 n + (f1 (n + 1) - f1 n)

end

end A336602.P14495954673406618723

namespace A336602

/-- `A094865(n)+Δ[A094865(n+2)]` -/
def P14495954673406618723.Spec : Prop :=
  ∀ n, P14495954673406618723.a n = A336602 n

end A336602

/-! ## A336602.P14430702057183261406

`A094825(n+3)+A081567(n)-A217778(n)`
-/

namespace A336602.P14430702057183261406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094825 (n + 3) + (A081567 n - A217778 n)

end

end A336602.P14430702057183261406

namespace A336602

/-- `A094825(n+3)+A081567(n)-A217778(n)` -/
def P14430702057183261406.Spec : Prop :=
  ∀ n, P14430702057183261406.a n = A336602 n

end A336602

/-! ## A336602.P10191711108155218356

`A094788(n+3)+A094865(n)-A030191(n+1)`
-/

namespace A336602.P10191711108155218356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094788 (n + 3) + (A094865 n - A030191 (n + 1))

end

end A336602.P10191711108155218356

namespace A336602

/-- `A094788(n+3)+A094865(n)-A030191(n+1)` -/
def P10191711108155218356.Spec : Prop :=
  ∀ n, P10191711108155218356.a n = A336602 n

end A336602

/-! ## A336602.P16891726369382837772

`A094825(n+3)+A217779(n)-A039717(n+1)`
-/

namespace A336602.P16891726369382837772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094825 (n + 3) + (A217779 n - A039717 (n + 1))

end

end A336602.P16891726369382837772

namespace A336602

/-- `A094825(n+3)+A217779(n)-A039717(n+1)` -/
def P16891726369382837772.Spec : Prop :=
  ∀ n, P16891726369382837772.a n = A336602 n

end A336602

/-!
# A336605: a(n) is the number of partitions of the n-th tetrahedral number (A000292).

The programs for A336605, there is no canonical definition to state claims against.
-/

/-! ## A336605.P10449554515070232989

`A000041(n*(n+1)*(n+2)/6)`
-/

namespace A336605.P10449554515070232989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((n * (n + 1) * (n + 2) : ℚ) / 6)).toNat

end

end A336605.P10449554515070232989

/-! ## A336605.P10261184677484401637

`A000065(∑[∑[n]])+1`
-/

namespace A336605.P10261184677484401637
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A336605.P10261184677484401637

/-! ## A336605.P7913461445333565153

`A035363(∑[∑[2*n]])`
-/

namespace A336605.P7913461445333565153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336605.P7913461445333565153

/-! ## A336605.P17457846798446728275

`A119620(∑[∑[2*n]])`
-/

namespace A336605.P17457846798446728275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336605.P17457846798446728275

/-!
# A336606: Sum_{n>=0} a(n) * x^n / (n!)^2 = exp(x) / BesselJ(0,2*sqrt(x)).

The programs for A336606, there is no canonical definition to state claims against.
-/

/-! ## A336606.P1054219270333015698

`A004725(A361213(n))`
-/

namespace A336606.P1054219270333015698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004725 (A361213 n).toNat

end

end A336606.P1054219270333015698

/-!
# A336607: Numbers of the form x^3 + x^2*y + x*y^2 + y^3, where x and y are positive integers.

The programs for A336607, there is no canonical definition to state claims against.
-/

/-! ## A336607.P15408219402678438734

`∪[A336995(n+1), A337786(n+1)]`
-/

namespace A336607.P15408219402678438734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336607.P15408219402678438734

/-! ## A336607.P9112150646797896460

`∩[A007412(n+1), A348897(n+1)]`
-/

namespace A336607.P9112150646797896460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336607.P9112150646797896460

/-! ## A336607.P6332751449334081104

`∩[A207188(n+1), A348897(n+1)]`
-/

namespace A336607.P6332751449334081104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336607.P6332751449334081104

/-! ## A336607.P12858937326190293004

`A000404(n+1)*A357186(A001359(n+1))`
-/

namespace A336607.P12858937326190293004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1) * A357186 (A001359 (n + 1)).toNat

end

end A336607.P12858937326190293004

/-!
# A336608: Sum_{n>=0} a(n) * x^n / (n!)^2 = exp(-x) / BesselJ(0,2*sqrt(x)).

The programs for A336608, there is no canonical definition to state claims against.
-/

/-! ## A336608.P201869558615135489

`A001281(A167008(n))-A057977(n)`
-/

namespace A336608.P201869558615135489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A167008 n).toNat - A057977 n

end

end A336608.P201869558615135489

/-! ## A336608.P4518203216786493589

`A275801(n)-A210716(A136298(n))`
-/

namespace A336608.P4518203216786493589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275801 n - A210716 (A136298 n).toNat

end

end A336608.P4518203216786493589

/-!
# A336609: Sum_{n>=0} a(n) * x^n / (n!)^2 = exp(1 / BesselJ(0,2*sqrt(x)) - 1).

The programs for A336609, there is no canonical definition to state claims against.
-/

/-! ## A336609.P14146347536212985097

`A187330(a(n-1)*∑[n])` with `a(0)=1`
-/

namespace A336609.P14146347536212985097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A187330 (a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A336609.P14146347536212985097

/-!
# A336611: Always start on the lowest digit of a(n), then visit all digits of a(n) in increasing order. The terms of the sequence are the smallest one that force the visitor to walk n steps to complete his tour (a single step drives you from a digit to the closest one).

The programs for A336611, there is no canonical definition to state claims against.
-/

/-! ## A336611.P14637308375213527514

`A083310(A304453(n))`
-/

namespace A336611.P14637308375213527514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083310 (A304453 n).toNat

end

end A336611.P14637308375213527514

/-!
# A336612: Numbers m such that sigma(tau(m)) divides m, where tau(m) is the number of divisors function (A000005) and sigma(m) is the sum of divisors function (A000203).

The programs for A336612, the canonical program `A336612.P16379185797943986426` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336612 has offset 1).

The definition of A336612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 586 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336612.P16379185797943986426

`eq[0, (n+1)%A062069(n+1)]+1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A336612

/-- `eq[0, (n+1)%A062069(n+1)]+1` -/
def P16379185797943986426.Spec : Prop :=
  ∀ n, (P16379185797943986426.a n : ℤ) = A336612 (n + 1)

theorem P16379185797943986426.correct : P16379185797943986426.Spec := by
  intro n
  simp only [A336612, Nat.add_sub_cancel]

end A336612

/-!
# A336613: Numbers m such that tau(sigma(m)) divides m, where tau(m) is the number of divisors function (A000005) and sigma(m) is the sum of divisors function (A000203).

The programs for A336613, the canonical program `A336613.P6967408703762427172` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336613 has offset 1).

The definition of A336613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 918 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336613.P6967408703762427172

`lt[(n+1)%A000005(A000203(n+1)), 1]+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A336613

/-- `lt[(n+1)%A000005(A000203(n+1)), 1]+1` -/
def P6967408703762427172.Spec : Prop :=
  ∀ n, (P6967408703762427172.a n : ℤ) = A336613 (n + 1)

theorem P6967408703762427172.correct : P6967408703762427172.Spec := by
  intro n
  simp only [A336613, Nat.add_sub_cancel]

end A336613

/-! ## A336613.P15671118810840106767

`record[A001616(A359557(n+1))]`
-/

namespace A336613.P15671118810840106767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 (A359557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336613.P15671118810840106767

namespace A336613

/-- `record[A001616(A359557(n+1))]` -/
def P15671118810840106767.Spec : Prop :=
  ∀ n, P15671118810840106767.a n = A336613 (n + 1)

end A336613

/-! ## A336613.P8140898723238046988

`record[A000005(A029042(2*n))]`
-/

namespace A336613.P8140898723238046988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A029042 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336613.P8140898723238046988

namespace A336613

/-- `record[A000005(A029042(2*n))]` -/
def P8140898723238046988.Spec : Prop :=
  ∀ n, P8140898723238046988.a n = A336613 (n + 1)

end A336613

/-! ## A336613.P12193053919522344211

`filter[A355578(n+1), A279693(#)]`
-/

namespace A336613.P12193053919522344211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A279693 (f1 j).toNat = 1) n)

end

end A336613.P12193053919522344211

namespace A336613

/-- `filter[A355578(n+1), A279693(#)]` -/
def P12193053919522344211.Spec : Prop :=
  ∀ n, P12193053919522344211.a n = A336613 (n + 1)

end A336613

/-! ## A336613.P16748864746705254371

`∩[A010434(n+1), A079647(n+1)]`
-/

namespace A336613.P16748864746705254371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079647 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336613.P16748864746705254371

namespace A336613

/-- `∩[A010434(n+1), A079647(n+1)]` -/
def P16748864746705254371.Spec : Prop :=
  ∀ n, (P16748864746705254371.a n : ℤ) = A336613 (n + 1)

end A336613

/-!
# A336614: Number of n X n (0,1)-matrices A over the reals such that A^2 is the transpose of A.

The programs for A336614, there is no canonical definition to state claims against.
-/

/-! ## A336614.P17209296222680313048

`A336174(n)+A000079(n)`
-/

namespace A336614.P17209296222680313048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336174 n + A000079 n

end

end A336614.P17209296222680313048

/-! ## A336614.P10649304868214569141

`A336174(n)+∑[A011782(n)]`
-/

namespace A336614.P10649304868214569141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336174 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336614.P10649304868214569141

/-! ## A336614.P8432722407840513913

`A336174(n)+Δ[A000051(n)]`
-/

namespace A336614.P8432722407840513913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336174 n + (f1 (n + 1) - f1 n)

end

end A336614.P8432722407840513913

/-! ## A336614.P3181301243913598565

`A336174(n)+Δ[A000225(n)]`
-/

namespace A336614.P3181301243913598565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336174 n + (f1 (n + 1) - f1 n)

end

end A336614.P3181301243913598565

/-! ## A336614.P10472756612626465774

`A336174(n)+A011782(n+1)`
-/

namespace A336614.P10472756612626465774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336174 n + A011782 (n + 1)

end

end A336614.P10472756612626465774

/-!
# A336615: Numbers of the form p * m^2, where p is prime and m > 0 is not divisible by p.

The programs for A336615, the canonical program `A336615.P1929992287404199022` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336615 has offset 1).

The definition of A336615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9899 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336615.P1929992287404199022

`eq[2, A295878(n+1)]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A336615

/-- `eq[2, A295878(n+1)]+1` -/
def P1929992287404199022.Spec : Prop :=
  ∀ n, (P1929992287404199022.a n : ℤ) = A336615 (n + 1)

theorem P1929992287404199022.correct : P1929992287404199022.Spec := by
  intro n
  simp only [A336615, Nat.add_sub_cancel]

end A336615

/-! ## A336615.P10007378695797283599

`filter[A119251(n+1), A358769(#)]`
-/

namespace A336615.P10007378695797283599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A336615.P10007378695797283599

namespace A336615

/-- `filter[A119251(n+1), A358769(#)]` -/
def P10007378695797283599.Spec : Prop :=
  ∀ n, P10007378695797283599.a n = A336615 (n + 1)

end A336615

/-! ## A336615.P2781198550967628727

`filter[A119251(n+1), A369253(#)]`
-/

namespace A336615.P2781198550967628727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A336615.P2781198550967628727

namespace A336615

/-- `filter[A119251(n+1), A369253(#)]` -/
def P2781198550967628727.Spec : Prop :=
  ∀ n, P2781198550967628727.a n = A336615 (n + 1)

end A336615

/-! ## A336615.P2692660164724263969

`∩[A119251(n+1), A182358(n+1)]`
-/

namespace A336615.P2692660164724263969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336615.P2692660164724263969

namespace A336615

/-- `∩[A119251(n+1), A182358(n+1)]` -/
def P2692660164724263969.Spec : Prop :=
  ∀ n, (P2692660164724263969.a n : ℤ) = A336615 (n + 1)

end A336615

/-! ## A336615.P9372294148160207241

`eq[1, A351573(n+1)]+1`
-/

namespace A336615.P9372294148160207241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351573 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336615.P9372294148160207241

namespace A336615

/-- `eq[1, A351573(n+1)]+1` -/
def P9372294148160207241.Spec : Prop :=
  ∀ n, (P9372294148160207241.a n : ℤ) = A336615 (n + 1)

end A336615

/-! ## A336615.P9076858778190768483

`filter[A052485(n+1), A358769(#)]`
-/

namespace A336615.P9076858778190768483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A336615.P9076858778190768483

namespace A336615

/-- `filter[A052485(n+1), A358769(#)]` -/
def P9076858778190768483.Spec : Prop :=
  ∀ n, P9076858778190768483.a n = A336615 (n + 1)

end A336615

/-! ## A336615.P5303328051385525662

`filter[A052485(n+1), A369253(#)]`
-/

namespace A336615.P5303328051385525662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A336615.P5303328051385525662

namespace A336615

/-- `filter[A052485(n+1), A369253(#)]` -/
def P5303328051385525662.Spec : Prop :=
  ∀ n, P5303328051385525662.a n = A336615 (n + 1)

end A336615

/-! ## A336615.P3892496154539955398

`∩[A052485(n+1), A182358(n+1)]`
-/

namespace A336615.P3892496154539955398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336615.P3892496154539955398

namespace A336615

/-- `∩[A052485(n+1), A182358(n+1)]` -/
def P3892496154539955398.Spec : Prop :=
  ∀ n, (P3892496154539955398.a n : ℤ) = A336615 (n + 1)

end A336615

/-! ## A336615.P7299271792415837373

`∩[A052485(n+1), A229125(n+1)]`
-/

namespace A336615.P7299271792415837373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336615.P7299271792415837373

namespace A336615

/-- `∩[A052485(n+1), A229125(n+1)]` -/
def P7299271792415837373.Spec : Prop :=
  ∀ n, (P7299271792415837373.a n : ℤ) = A336615 (n + 1)

end A336615

/-! ## A336615.P17197490037670860863

`∩[A052485(n+1), A265640(n+1)]`
-/

namespace A336615.P17197490037670860863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336615.P17197490037670860863

namespace A336615

/-- `∩[A052485(n+1), A265640(n+1)]` -/
def P17197490037670860863.Spec : Prop :=
  ∀ n, (P17197490037670860863.a n : ℤ) = A336615 (n + 1)

end A336615

/-! ## A336615.P5354837697952405626

`eq[1, A350387(n+1)]+1`
-/

namespace A336615.P5354837697952405626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350387 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336615.P5354837697952405626

namespace A336615

/-- `eq[1, A350387(n+1)]+1` -/
def P5354837697952405626.Spec : Prop :=
  ∀ n, (P5354837697952405626.a n : ℤ) = A336615 (n + 1)

end A336615

/-! ## A336615.P16250311638670610810

`eq[2, A295878(A028310(n))]`
-/

namespace A336615.P16250311638670610810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295878 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336615.P16250311638670610810

namespace A336615

/-- `eq[2, A295878(A028310(n))]` -/
def P16250311638670610810.Spec : Prop :=
  ∀ n, (P16250311638670610810.a n : ℤ) = A336615 (n + 1)

end A336615

/-! ## A336615.P3252067469813383736

`A020725(eq[2, A295878(n+1)])`
-/

namespace A336615.P3252067469813383736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336615.P3252067469813383736

namespace A336615

/-- `A020725(eq[2, A295878(n+1)])` -/
def P3252067469813383736.Spec : Prop :=
  ∀ n, P3252067469813383736.a n = A336615 (n + 1)

end A336615

/-! ## A336615.P13635830999280929858

`lt[A120744(A350387(n+2)+1), A327177(n)]+2`
-/

namespace A336615.P13635830999280929858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120744 (A350387 (n + 2) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A336615.P13635830999280929858

namespace A336615

/-- `lt[A120744(A350387(n+2)+1), A327177(n)]+2` -/
def P13635830999280929858.Spec : Prop :=
  ∀ n, (P13635830999280929858.a n : ℤ) = A336615 (n + 1)

end A336615

/-!
# A336616: Maximum divisor of n! with distinct prime multiplicities.

The programs for A336616, there is no canonical definition to state claims against.
-/

/-! ## A336616.P11387050159707773973

`A327498(n!)`
-/

namespace A336616.P11387050159707773973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (Nat.factorial n)

end

end A336616.P11387050159707773973

/-! ## A336616.P7473899913755974124

`∏{d}[floor(2^(n-1)), A000005(#)]/A336617(n)`
-/

namespace A336616.P7473899913755974124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n).natAbs, A000005 d : ℤ) : ℚ) / (A336617 n : ℚ)

end

end A336616.P7473899913755974124

/-! ## A336616.P11722177815802180833

`A083872(A027423(n))/A336617(n)`
-/

namespace A336616.P11722177815802180833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083872 (A027423 n).toNat : ℚ) / (A336617 n : ℚ)

end

end A336616.P11722177815802180833

/-! ## A336616.P11187174844113288661

`A006530(A003418(n))*A182922(n)`
-/

namespace A336616.P11187174844113288661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003418 n).toNat * A182922 n

end

end A336616.P11187174844113288661

/-! ## A336616.P14593579068435088377

`A182922(n)*A319626(A034386(n))`
-/

namespace A336616.P14593579068435088377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182922 n * A319626 (A034386 n).toNat

end

end A336616.P14593579068435088377

/-!
# A336617: a(n) = n!/d where d = A336616(n) is the maximum divisor of n! with distinct prime multiplicities.

The programs for A336617, there is no canonical definition to state claims against.
-/

/-! ## A336617.P17497166823719806467

`A104150(A077342(n+1))/A336616(n)`
-/

namespace A336617.P17497166823719806467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104150 (A077342 (n + 1)).toNat : ℚ) / (A336616 n : ℚ)

end

end A336617.P17497166823719806467

/-! ## A336617.P18352259321481213910

`∏{d}[floor(2^(n-1)), A000005(#)]/A336616(n)`
-/

namespace A336617.P18352259321481213910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n).natAbs, A000005 d : ℤ) : ℚ) / (A336616 n : ℚ)

end

end A336617.P18352259321481213910

/-!
# A336618: Maximum divisor of n! with equal prime multiplicities.

The programs for A336618, there is no canonical definition to state claims against.
-/

/-! ## A336618.P3617158165494569936

`A327526(n!)`
-/

namespace A336618.P3617158165494569936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327526 (Nat.factorial n)

end

end A336618.P3617158165494569936

/-! ## A336618.P2665327666910295552

`n!/A336619(n)`
-/

namespace A336618.P2665327666910295552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A336619 n : ℚ)

end

end A336618.P2665327666910295552

/-! ## A336618.P8475260786703859846

`A000142(n)/A336619(n)`
-/

namespace A336618.P8475260786703859846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A336619 n : ℚ)

end

end A336618.P8475260786703859846

/-! ## A336618.P5451328961238646459

`Δ[A003422(n)]/A336619(n)`
-/

namespace A336618.P5451328961238646459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A336619 n : ℚ)

end

end A336618.P5451328961238646459

/-! ## A336618.P7200268135424462878

`A227550(A000217(n))/A336619(n)`
-/

namespace A336618.P7200268135424462878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227550 (A000217 n).toNat : ℚ) / (A336619 n : ℚ)

end

end A336618.P7200268135424462878

/-!
# A336619: a(n) = n!/d where d is the maximum divisor of n! with equal prime exponents.

The programs for A336619, there is no canonical definition to state claims against.
-/

/-! ## A336619.P12870962933877463096

`n!/A336618(n)`
-/

namespace A336619.P12870962933877463096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A336618 n : ℚ)

end

end A336619.P12870962933877463096

/-! ## A336619.P2388414839389838914

`A000142(n)/A336618(n)`
-/

namespace A336619.P2388414839389838914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A336618 n : ℚ)

end

end A336619.P2388414839389838914

/-! ## A336619.P17442534019180761544

`Δ[A003422(n)]/A336618(n)`
-/

namespace A336619.P17442534019180761544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A336618 n : ℚ)

end

end A336619.P17442534019180761544

/-! ## A336619.P16260772548987761219

`∏[A028310(n)]/A336618(n)`
-/

namespace A336619.P16260772548987761219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A336618 n : ℚ)

end

end A336619.P16260772548987761219

/-! ## A336619.P13221469360214025856

`A227550(A000217(n))/A336618(n)`
-/

namespace A336619.P13221469360214025856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227550 (A000217 n).toNat : ℚ) / (A336618 n : ℚ)

end

end A336619.P13221469360214025856

/-!
# A336620: Numbers that are not a product of elements of A304711.

The programs for A336620, there is no canonical definition to state claims against.
-/

/-! ## A336620.P9421776046255716973

`lt[A327512(n+1), ∏{p}[2*(n+1), #]/2]+1`
-/

namespace A336620.P9421776046255716973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A336620.P9421776046255716973

/-! ## A336620.P7163814710873301819

`eq[char[A336735(n+1)], A151933(n)]`
-/

namespace A336620.P7163814710873301819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336735 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A336620.P7163814710873301819

/-! ## A336620.P268101590907121313

`lt[A305079(n+1), A304464(n+1)]+1`
-/

namespace A336620.P268101590907121313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304464 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A336620.P268101590907121313

/-! ## A336620.P16827536875477523814

`∩[A336426(n+1), comp[A336735(n+1)]]`
-/

namespace A336620.P16827536875477523814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336426 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336735 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A336620.P16827536875477523814

/-! ## A336620.P346971269326196396

`A318978(n+1)-A044941(A011782(n))`
-/

namespace A336620.P346971269326196396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318978 (n + 1) - A044941 (A011782 n).toNat

end

end A336620.P346971269326196396

/-!
# A336623: First member of the Diophantine pair (m, k) that satisfies 8*(m^2 + m) = k^2 + k; a(n) = m.

The programs for A336623, the canonical program `A336623.P10701759574936609316` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336623 has offset 0).

The definition of A336623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336623.P10701759574936609316

`34*a(n-2)-a(n-4)+16` with `a(0)=0, a(1)=5, a(2)=11, a(3)=186`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A336623

/-- `34*a(n-2)-a(n-4)+16` -/
def P10701759574936609316.Spec : Prop :=
  ∀ n, P10701759574936609316.a n = A336623 n

theorem P10701759574936609316.correct : P10701759574936609316.Spec := by
  intro n
  simp only [A336623]

end A336623

/-! ## A336623.P8447139750432659374

`floor(A006452(A338062(n+1))/2)`
-/

namespace A336623.P8447139750432659374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006452 (A338062 (n + 1)).toNat : ℚ) / 2⌋

end

end A336623.P8447139750432659374

namespace A336623

/-- `floor(A006452(A338062(n+1))/2)` -/
def P8447139750432659374.Spec : Prop :=
  ∀ n, P8447139750432659374.a n = A336623 n

end A336623

/-! ## A336623.P6834774270422509674

`A001109(A110654(n))*A077446(n+1)`
-/

namespace A336623.P6834774270422509674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (A110654 n).toNat * A077446 (n + 1)

end

end A336623.P6834774270422509674

namespace A336623

/-- `A001109(A110654(n))*A077446(n+1)` -/
def P6834774270422509674.Spec : Prop :=
  ∀ n, P6834774270422509674.a n = A336623 n

end A336623

/-! ## A336623.P12677505929953703171

`(A006451(n)-A216134(n))*A077446(n+1)`
-/

namespace A336623.P12677505929953703171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006451 n - A216134 n) * A077446 (n + 1)

end

end A336623.P12677505929953703171

namespace A336623

/-- `(A006451(n)-A216134(n))*A077446(n+1)` -/
def P12677505929953703171.Spec : Prop :=
  ∀ n, P12677505929953703171.a n = A336623 n

end A336623

/-! ## A336623.P9164475505452658816

`(A276599(n+1)-A077442(n))*A077446(n+1)`
-/

namespace A336623.P9164475505452658816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A276599 (n + 1) - A077442 n) * A077446 (n + 1)

end

end A336623.P9164475505452658816

namespace A336623

/-- `(A276599(n+1)-A077442(n))*A077446(n+1)` -/
def P9164475505452658816.Spec : Prop :=
  ∀ n, P9164475505452658816.a n = A336623 n

end A336623

/-! ## A336623.P15793285383515094104

`(A276601(n+1)-A077446(n+1))*A077446(n+1)`
-/

namespace A336623.P15793285383515094104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A276601 (n + 1) - A077446 (n + 1)) * A077446 (n + 1)

end

end A336623.P15793285383515094104

namespace A336623

/-- `(A276601(n+1)-A077446(n+1))*A077446(n+1)` -/
def P15793285383515094104.Spec : Prop :=
  ∀ n, P15793285383515094104.a n = A336623 n

end A336623

/-!
# A336624: Triangular numbers that are one-eighth of other triangular numbers; T(t) such that 8*T(t)=T(u) for some u where T(k) is the k-th triangular number.

The programs for A336624, there is no canonical definition to state claims against.
-/

/-! ## A336624.P2723839489741271295

`C(A336623(n)+1, 2)`
-/

namespace A336624.P2723839489741271295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A336623 n + 1).toNat 2

end

end A336624.P2723839489741271295

/-! ## A336624.P2509171386354802446

`A336626(n+1)/8`
-/

namespace A336624.P2509171386354802446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336626 (n + 1) : ℚ) / 8

end

end A336624.P2509171386354802446

/-! ## A336624.P16004920939021007744

`A006454(comp[or(2, n)-1])/8`
-/

namespace A336624.P16004920939021007744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006454 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ) / 8

end

end A336624.P16004920939021007744

/-! ## A336624.P5664844131118159612

`A006454(A014601(n))/8`
-/

namespace A336624.P5664844131118159612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006454 (A014601 n).toNat : ℚ) / 8

end

end A336624.P5664844131118159612

/-! ## A336624.P10127690905153245816

`A217278(A047522(n+1))/8`
-/

namespace A336624.P10127690905153245816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217278 (A047522 (n + 1)).toNat : ℚ) / 8

end

end A336624.P10127690905153245816

/-!
# A336625: Indices of triangular numbers that are eight times other triangular numbers.

The programs for A336625, the canonical program `A336625.P18368351927948254718` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336625 has offset 1).

The definition of A336625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336625.P18368351927948254718

`34*a(n-2)-a(n-4)+16` with `a(0)=0, a(1)=15, a(2)=32, a(3)=527`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A336625

/-- `34*a(n-2)-a(n-4)+16` -/
def P18368351927948254718.Spec : Prop :=
  ∀ n, P18368351927948254718.a n = A336625 (n + 1)

theorem P18368351927948254718.correct : P18368351927948254718.Spec := by
  intro n
  simp only [A336625, Nat.add_sub_cancel]

end A336625

/-! ## A336625.P7775267995332241048

`A006451(comp[or(2, n)-1])`
-/

namespace A336625.P7775267995332241048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A336625.P7775267995332241048

namespace A336625

/-- `A006451(comp[or(2, n)-1])` -/
def P7775267995332241048.Spec : Prop :=
  ∀ n, P7775267995332241048.a n = A336625 (n + 1)

end A336625

/-! ## A336625.P1559139742982339078

`A006451(∑[3^(n%2)]-1)`
-/

namespace A336625.P1559139742982339078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A336625.P1559139742982339078

namespace A336625

/-- `A006451(∑[3^(n%2)]-1)` -/
def P1559139742982339078.Spec : Prop :=
  ∀ n, P1559139742982339078.a n = A336625 (n + 1)

end A336625

/-! ## A336625.P3979854332609480298

`A006451(A014601(n))`
-/

namespace A336625.P3979854332609480298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (A014601 n).toNat

end

end A336625.P3979854332609480298

namespace A336625

/-- `A006451(A014601(n))` -/
def P3979854332609480298.Spec : Prop :=
  ∀ n, P3979854332609480298.a n = A336625 (n + 1)

end A336625

/-! ## A336625.P110141359995938804

`A006451(A003815(2*n))`
-/

namespace A336625.P110141359995938804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (A003815 (2 * n)).toNat

end

end A336625.P110141359995938804

namespace A336625

/-- `A006451(A003815(2*n))` -/
def P110141359995938804.Spec : Prop :=
  ∀ n, P110141359995938804.a n = A336625 (n + 1)

end A336625

/-! ## A336625.P14681055409533743379

`A006451(Δ[A007590(n)]+n)`
-/

namespace A336625.P14681055409533743379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A336625.P14681055409533743379

namespace A336625

/-- `A006451(Δ[A007590(n)]+n)` -/
def P14681055409533743379.Spec : Prop :=
  ∀ n, P14681055409533743379.a n = A336625 (n + 1)

end A336625

/-! ## A336625.P8823172383664991055

`A006451(A000035(n)+2*n)`
-/

namespace A336625.P8823172383664991055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (A000035 n + (2 * n : ℤ)).toNat

end

end A336625.P8823172383664991055

namespace A336625

/-- `A006451(A000035(n)+2*n)` -/
def P8823172383664991055.Spec : Prop :=
  ∀ n, P8823172383664991055.a n = A336625 (n + 1)

end A336625

/-! ## A336625.P4978052154392625780

`A006451(A000035(n)+n+n)`
-/

namespace A336625.P4978052154392625780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (A000035 n + (n : ℤ) + (n : ℤ)).toNat

end

end A336625.P4978052154392625780

namespace A336625

/-- `A006451(A000035(n)+n+n)` -/
def P4978052154392625780.Spec : Prop :=
  ∀ n, P4978052154392625780.a n = A336625 (n + 1)

end A336625

/-! ## A336625.P4520722505637253978

`A006451(A047615(n+1)-2*n)`
-/

namespace A336625.P4520722505637253978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (A047615 (n + 1) - (2 * n : ℤ)).toNat

end

end A336625.P4520722505637253978

namespace A336625

/-- `A006451(A047615(n+1)-2*n)` -/
def P4520722505637253978.Spec : Prop :=
  ∀ n, P4520722505637253978.a n = A336625 (n + 1)

end A336625

/-! ## A336625.P5964304934443847108

`A006451(A047615(n+1)-n-n)`
-/

namespace A336625.P5964304934443847108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (A047615 (n + 1) - (n : ℤ) - (n : ℤ)).toNat

end

end A336625.P5964304934443847108

namespace A336625

/-- `A006451(A047615(n+1)-n-n)` -/
def P5964304934443847108.Spec : Prop :=
  ∀ n, P5964304934443847108.a n = A336625 (n + 1)

end A336625

/-! ## A336625.P11802612239215304754

`A006451(Δ[A061885(A007590(n))])`
-/

namespace A336625.P11802612239215304754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 (A007590 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (f1 (n + 1) - f1 n).toNat

end

end A336625.P11802612239215304754

namespace A336625

/-- `A006451(Δ[A061885(A007590(n))])` -/
def P11802612239215304754.Spec : Prop :=
  ∀ n, P11802612239215304754.a n = A336625 (n + 1)

end A336625

/-! ## A336625.P11873356396060196749

`A006451(A004526(Δ[A077221(n)]))`
-/

namespace A336625.P11873356396060196749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (A004526 (f1 (n + 1) - f1 n).toNat).toNat

end

end A336625.P11873356396060196749

namespace A336625

/-- `A006451(A004526(Δ[A077221(n)]))` -/
def P11873356396060196749.Spec : Prop :=
  ∀ n, P11873356396060196749.a n = A336625 (n + 1)

end A336625

/-! ## A336625.P1981009803079143672

`A006451(A005843(n)+A000035(n))`
-/

namespace A336625.P1981009803079143672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (A005843 n + A000035 n).toNat

end

end A336625.P1981009803079143672

namespace A336625

/-- `A006451(A005843(n)+A000035(n))` -/
def P1981009803079143672.Spec : Prop :=
  ∀ n, P1981009803079143672.a n = A336625 (n + 1)

end A336625

/-! ## A336625.P780898112891136605

`A006451(A005408(n)-∑[A033999(n)])`
-/

namespace A336625.P780898112891136605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (A005408 n - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A336625.P780898112891136605

namespace A336625

/-- `A006451(A005408(n)-∑[A033999(n)])` -/
def P780898112891136605.Spec : Prop :=
  ∀ n, P780898112891136605.a n = A336625 (n + 1)

end A336625

/-!
# A336626: Triangular numbers that are eight times another triangular number.

The programs for A336626, there is no canonical definition to state claims against.
-/

/-! ## A336626.P5935468543426003915

`8*A336624(n)`
-/

namespace A336626.P5935468543426003915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A336624 n

end

end A336626.P5935468543426003915

/-! ## A336626.P1275964138063464402

`8*C(A336623(n)+1, 2)`
-/

namespace A336626.P1275964138063464402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.choose (A336623 n + 1).toNat 2

end

end A336626.P1275964138063464402

/-! ## A336626.P274590539410957791

`A006454(A014601(n))`
-/

namespace A336626.P274590539410957791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006454 (A014601 n).toNat

end

end A336626.P274590539410957791

/-! ## A336626.P11709134592069009998

`A217278(A047522(n+1))`
-/

namespace A336626.P11709134592069009998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217278 (A047522 (n + 1)).toNat

end

end A336626.P11709134592069009998

/-! ## A336626.P8897269881018860236

`A006454(A042948(n+1)-1)`
-/

namespace A336626.P8897269881018860236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006454 (A042948 (n + 1) - 1).toNat

end

end A336626.P8897269881018860236

/-! ## A336626.P14192935076213991157

`A006454(A000035(n)+2*n)`
-/

namespace A336626.P14192935076213991157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006454 (A000035 n + (2 * n : ℤ)).toNat

end

end A336626.P14192935076213991157

/-! ## A336626.P4423862371081281955

`A006454(or(2*n, A042948(n)))`
-/

namespace A336626.P4423862371081281955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006454 (Int.lor (2 * n : ℤ) (A042948 n)).toNat

end

end A336626.P4423862371081281955

/-! ## A336626.P17429749057181224060

`A006454(A000035(n)+n+n)`
-/

namespace A336626.P17429749057181224060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006454 (A000035 n + (n : ℤ) + (n : ℤ)).toNat

end

end A336626.P17429749057181224060

/-! ## A336626.P919651349501797546

`A006452(A338062(n+1))²-1`
-/

namespace A336626.P919651349501797546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (A338062 (n + 1)).toNat ^ 2 - 1

end

end A336626.P919651349501797546

/-! ## A336626.P1596619269973286730

`A006452(A098181(2*n))²-1`
-/

namespace A336626.P1596619269973286730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (A098181 (2 * n)).toNat ^ 2 - 1

end

end A336626.P1596619269973286730

/-!
# A336627: Coordination sequence for the Manhattan lattice.

The programs for A336627, the canonical program `A336627.P13279973126605902801` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336627 has offset 0).

The definition of A336627 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336627.P13279973126605902801

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=11, a(5)=16, a(6)=20`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A336627

/-- `2*a(n-1)-a(n-2)` -/
def P13279973126605902801.Spec : Prop :=
  ∀ n, P13279973126605902801.a n = A336627 n

theorem P13279973126605902801.correct : P13279973126605902801.Spec := by
  intro n
  simp only [A336627]

end A336627

/-!
# A336628: Numbers k that have 3 divisors d1, d2, d3 such that d1 < d2 < d3 < 2*d1 and are pairwise coprime and d1*d2*d3 = k.

The programs for A336628, there is no canonical definition to state claims against.
-/

/-! ## A336628.P3706969261032068640

`A336442(A277599(n+1)%A019061(2*n+5))`
-/

namespace A336628.P3706969261032068640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336442 (Int.tmod (A277599 (n + 1)) (A019061 (2 * n + 5))).toNat

end

end A336628.P3706969261032068640

/-!
# A336630: a(n) = 2*F(2*n+1) + 4*F(n+1)*F(n-1) for n > 0, with a(0) = 0 and F(n) = A000045(n).

The programs for A336630, there is no canonical definition to state claims against.
-/

/-! ## A336630.P5296535135242535362

`A109180(A130586(n))`
-/

namespace A336630.P5296535135242535362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109180 (A130586 n).toNat

end

end A336630.P5296535135242535362

/-!
# A336631: a(n) = 1 + Max_{0<=i<=j<=k; i+j+k=n-1} a(i)*a(j)*a(k) for n>0, with a(0) = 1.

The programs for A336631, there is no canonical definition to state claims against.
-/

/-! ## A336631.P16892408640598237830

`A347406(A104722(n))`
-/

namespace A336631.P16892408640598237830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347406 (A104722 n).toNat

end

end A336631.P16892408640598237830

/-! ## A336631.P6386445031160309430

`A112995(A096184(n+1)+1)`
-/

namespace A336631.P6386445031160309430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112995 (A096184 (n + 1) + 1).toNat

end

end A336631.P6386445031160309430

/-! ## A336631.P1185088069598696864

`eq[A055944(n), A344208(n+1)]`
-/

namespace A336631.P1185088069598696864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344208 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336631.P1185088069598696864

/-!
# A336632: Number of prime parts, counted without multiplicity, in all compositions of n.

The programs for A336632, there is no canonical definition to state claims against.
-/

/-! ## A336632.P17573751978078350753

`A340763(A173380(n)-n²)`
-/

namespace A336632.P17573751978078350753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340763 (A173380 n - (n ^ 2 : ℤ)).toNat

end

end A336632.P17573751978078350753

/-! ## A336632.P9915916590996740131

`round(log(A175773(A175773(3*n+4))))`
-/

namespace A336632.P9915916590996740131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A175773 (A175773 (3 * n + 4)).toNat : ℝ))

end

end A336632.P9915916590996740131

/-! ## A336632.P10316408132638733615

`A257639(A150580(n))-A008621(n)`
-/

namespace A336632.P10316408132638733615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A150580 n).toNat - A008621 n

end

end A336632.P10316408132638733615

/-! ## A336632.P1534896420892249453

`A172471(A326244(n))-A001383(A005041(n))`
-/

namespace A336632.P1534896420892249453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A326244 n).toNat - A001383 (A005041 n).toNat

end

end A336632.P1534896420892249453

/-!
# A336635: Sum_{n>=0} a(n) * x^n / (n!)^2 = exp(BesselI(0,2*sqrt(x))^2 - 1).

The programs for A336635, there is no canonical definition to state claims against.
-/

/-! ## A336635.P12966940092850269414

`A071542(record[∑[A009074(n)]])`
-/

namespace A336635.P12966940092850269414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009074 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A336635.P12966940092850269414

/-!
# A336638: Sum_{n>=0} a(n) * x^n / (n!)^2 = 1 / BesselJ(0,2*sqrt(x))^3.

The programs for A336638, there is no canonical definition to state claims against.
-/

/-! ## A336638.P17886390753497323171

`A340986(∑[n+3]+n+3)`
-/

namespace A336638.P17886390753497323171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340986 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A336638.P17886390753497323171

/-! ## A336638.P16607985175131399834

`record[A340986(abs(A046691(n)))]`
-/

namespace A336638.P16607985175131399834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340986 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336638.P16607985175131399834

/-! ## A336638.P204755952113291029

`record[A340986(n*A243148(n))]`
-/

namespace A336638.P204755952113291029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340986 ((n : ℤ) * A243148 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336638.P204755952113291029

/-! ## A336638.P8773044321857960388

`record[A340986(lcm(n, A243148(n)))]`
-/

namespace A336638.P8773044321857960388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340986 (Int.lcm (n : ℤ) (A243148 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336638.P8773044321857960388

/-! ## A336638.P7827941960727559876

`or(1, A340986(A046691(n+2)))`
-/

namespace A336638.P7827941960727559876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A340986 (A046691 (n + 2)).toNat)

end

end A336638.P7827941960727559876

/-!
# A336639: Sum_{n>=0} a(n) * x^n / (n!)^2 = 1 / BesselJ(0,2*sqrt(x))^4.

The programs for A336639, there is no canonical definition to state claims against.
-/

/-! ## A336639.P2490670380775356608

`record[A340986(A052905(n))]`
-/

namespace A336639.P2490670380775356608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340986 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336639.P2490670380775356608

/-! ## A336639.P12601152308077299929

`A340986(A052905(n+2))`
-/

namespace A336639.P12601152308077299929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340986 (A052905 (n + 2)).toNat

end

end A336639.P12601152308077299929

/-! ## A336639.P8601023997320040094

`A340986(A056115(n)+10)`
-/

namespace A336639.P8601023997320040094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340986 (A056115 n + 10).toNat

end

end A336639.P8601023997320040094

/-! ## A336639.P7873606754346456285

`A340986(eq[4, A025581(n)])`
-/

namespace A336639.P7873606754346456285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336639.P7873606754346456285

/-! ## A336639.P2230370789179586271

`A340986(eq[9, A099375(n)])`
-/

namespace A336639.P2230370789179586271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336639.P2230370789179586271

/-!
# A336640: a(n) is the minimal value of Sum x_i when Sum binomial(x_i, 2) = n.

The programs for A336640, there is no canonical definition to state claims against.
-/

/-! ## A336640.P3861286748618357305

`A056239(A359681(n)%A229241(n+1))`
-/

namespace A336640.P3861286748618357305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (A359681 n) (A229241 (n + 1))).toNat

end

end A336640.P3861286748618357305

/-! ## A336640.P8510950685077419807

`A056239(A359681(n))%A229862(n+1)`
-/

namespace A336640.P8510950685077419807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A359681 n).toNat) (A229862 (n + 1))

end

end A336640.P8510950685077419807

/-! ## A336640.P10023235623321284079

`A196050(A359681(n))%A274770(n+1)`
-/

namespace A336640.P10023235623321284079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196050 (A359681 n).toNat) (A274770 (n + 1))

end

end A336640.P10023235623321284079

/-! ## A336640.P7228962456308267800

`A137813(A359681(n))`
-/

namespace A336640.P7228962456308267800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137813 (A359681 n).toNat

end

end A336640.P7228962456308267800

/-! ## A336640.P10312795833511062879

`A056239(2^A056239(A359681(n)))`
-/

namespace A336640.P10312795833511062879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A056239 (A359681 n).toNat : ℤ))).toNat

end

end A336640.P10312795833511062879

/-!
# A336642: One less than the largest square dividing n: a(n) = A008833(n)-1.

The programs for A336642, the canonical program `A336642.P17825345798901579858` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336642 has offset 1).

The definition of A336642 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336642.P17825345798901579858

`A008833(n+1)-1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A336642

/-- `A008833(n+1)-1` -/
def P17825345798901579858.Spec : Prop :=
  ∀ n, P17825345798901579858.a n = A336642 (n + 1)

theorem P17825345798901579858.correct : P17825345798901579858.Spec := by
  intro n
  simp only [A336642, Nat.add_sub_cancel]

end A336642

/-! ## A336642.P9732092507729193024

`(n+1)/A007913(n+1)-1`
-/

namespace A336642.P9732092507729193024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007913 (n + 1) : ℚ) - 1

end

end A336642.P9732092507729193024

namespace A336642

/-- `(n+1)/A007913(n+1)-1` -/
def P9732092507729193024.Spec : Prop :=
  ∀ n, P9732092507729193024.a n = (A336642 (n + 1) : ℚ)

end A336642

/-! ## A336642.P12021848050065145021

`∏{p}[n+1, #^val(n+1, #²)]²-1`
-/

namespace A336642.P12021848050065145021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℤ) - 1

end

end A336642.P12021848050065145021

namespace A336642

/-- `∏{p}[n+1, #^val(n+1, #²)]²-1` -/
def P12021848050065145021.Spec : Prop :=
  ∀ n, P12021848050065145021.a n = A336642 (n + 1)

end A336642

/-! ## A336642.P12686181076893302499

`n%∏{p}[n+1, #^val(n+1, #²)]²`
-/

namespace A336642.P12686181076893302499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2

end

end A336642.P12686181076893302499

namespace A336642

/-- `n%∏{p}[n+1, #^val(n+1, #²)]²` -/
def P12686181076893302499.Spec : Prop :=
  ∀ n, (P12686181076893302499.a n : ℤ) = A336642 (n + 1)

end A336642

/-! ## A336642.P9589393531380809702

`n-A326055(n+1)`
-/

namespace A336642.P9589393531380809702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A326055 (n + 1)

end

end A336642.P9589393531380809702

namespace A336642

/-- `n-A326055(n+1)` -/
def P9589393531380809702.Spec : Prop :=
  ∀ n, P9589393531380809702.a n = A336642 (n + 1)

end A336642

/-! ## A336642.P7558244378939373646

`n%A358272(n+1)`
-/

namespace A336642.P7558244378939373646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A358272 (n + 1))

end

end A336642.P7558244378939373646

namespace A336642

/-- `n%A358272(n+1)` -/
def P7558244378939373646.Spec : Prop :=
  ∀ n, P7558244378939373646.a n = A336642 (n + 1)

end A336642

/-! ## A336642.P16708118238516747442

`floor(n/Δ[A069891(n)])`
-/

namespace A336642.P16708118238516747442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A336642.P16708118238516747442

namespace A336642

/-- `floor(n/Δ[A069891(n)])` -/
def P16708118238516747442.Spec : Prop :=
  ∀ n, P16708118238516747442.a n = A336642 (n + 1)

end A336642

/-! ## A336642.P2441006879791856325

`A000188(n+1)²-1`
-/

namespace A336642.P2441006879791856325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) ^ 2 - 1

end

end A336642.P2441006879791856325

namespace A336642

/-- `A000188(n+1)²-1` -/
def P2441006879791856325.Spec : Prop :=
  ∀ n, P2441006879791856325.a n = A336642 (n + 1)

end A336642

/-! ## A336642.P4797762159039934868

`floor(n/A007913(n+1))`
-/

namespace A336642.P4797762159039934868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A007913 (n + 1) : ℚ)⌋

end

end A336642.P4797762159039934868

namespace A336642

/-- `floor(n/A007913(n+1))` -/
def P4797762159039934868.Spec : Prop :=
  ∀ n, P4797762159039934868.a n = A336642 (n + 1)

end A336642

/-! ## A336642.P3708833065968524456

`(A057918(n+1)+1)²-1`
-/

namespace A336642.P3708833065968524456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057918 (n + 1) + 1) ^ 2 - 1

end

end A336642.P3708833065968524456

namespace A336642

/-- `(A057918(n+1)+1)²-1` -/
def P3708833065968524456.Spec : Prop :=
  ∀ n, P3708833065968524456.a n = A336642 (n + 1)

end A336642

/-! ## A336642.P18409700963395289049

`A337101(2*(n+1))²-1`
-/

namespace A336642.P18409700963395289049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (2 * (n + 1)) ^ 2 - 1

end

end A336642.P18409700963395289049

namespace A336642

/-- `A337101(2*(n+1))²-1` -/
def P18409700963395289049.Spec : Prop :=
  ∀ n, P18409700963395289049.a n = A336642 (n + 1)

end A336642

/-! ## A336642.P9135777382535520441

`floor(n/(n+1-A326128(n+1)))`
-/

namespace A336642.P9135777382535520441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((n + 1 : ℤ) - A326128 (n + 1) : ℚ)⌋

end

end A336642.P9135777382535520441

namespace A336642

/-- `floor(n/(n+1-A326128(n+1)))` -/
def P9135777382535520441.Spec : Prop :=
  ∀ n, P9135777382535520441.a n = A336642 (n + 1)

end A336642

/-! ## A336642.P2827304930357430259

`A005563(A057918(n+1))`
-/

namespace A336642.P2827304930357430259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A057918 (n + 1)).toNat

end

end A336642.P2827304930357430259

namespace A336642

/-- `A005563(A057918(n+1))` -/
def P2827304930357430259.Spec : Prop :=
  ∀ n, P2827304930357430259.a n = A336642 (n + 1)

end A336642

/-! ## A336642.P1748701244957381387

`A255131(A008833(n+1))`
-/

namespace A336642.P1748701244957381387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255131 (A008833 (n + 1)).toNat

end

end A336642.P1748701244957381387

namespace A336642

/-- `A255131(A008833(n+1))` -/
def P1748701244957381387.Spec : Prop :=
  ∀ n, P1748701244957381387.a n = A336642 (n + 1)

end A336642

/-! ## A336642.P3696688339726861665

`A326128(A000188(n+1)²)`
-/

namespace A336642.P3696688339726861665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (A000188 (n + 1) ^ 2).toNat

end

end A336642.P3696688339726861665

namespace A336642

/-- `A326128(A000188(n+1)²)` -/
def P3696688339726861665.Spec : Prop :=
  ∀ n, P3696688339726861665.a n = A336642 (n + 1)

end A336642

/-! ## A336642.P7972209082608195449

`A005563(A000188(n+1)-1)`
-/

namespace A336642.P7972209082608195449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A000188 (n + 1) - 1).toNat

end

end A336642.P7972209082608195449

namespace A336642

/-- `A005563(A000188(n+1)-1)` -/
def P7972209082608195449.Spec : Prop :=
  ∀ n, P7972209082608195449.a n = A336642 (n + 1)

end A336642

/-! ## A336642.P2955880122268236614

`A053143(A003557(n+1))-1`
-/

namespace A336642.P2955880122268236614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (A003557 (n + 1)).toNat - 1

end

end A336642.P2955880122268236614

namespace A336642

/-- `A053143(A003557(n+1))-1` -/
def P2955880122268236614.Spec : Prop :=
  ∀ n, P2955880122268236614.a n = A336642 (n + 1)

end A336642

/-! ## A336642.P10769664613941546220

`A162400(A235872(n+1))-1`
-/

namespace A336642.P10769664613941546220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162400 (A235872 (n + 1)).toNat - 1

end

end A336642.P10769664613941546220

namespace A336642

/-- `A162400(A235872(n+1))-1` -/
def P10769664613941546220.Spec : Prop :=
  ∀ n, P10769664613941546220.a n = A336642 (n + 1)

end A336642

/-! ## A336642.P846824309139677959

`A235872(A214682(n+1))-1`
-/

namespace A336642.P846824309139677959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235872 (A214682 (n + 1)).toNat - 1

end

end A336642.P846824309139677959

namespace A336642

/-- `A235872(A214682(n+1))-1` -/
def P846824309139677959.Spec : Prop :=
  ∀ n, P846824309139677959.a n = A336642 (n + 1)

end A336642

/-! ## A336642.P16405622283283402068

`A000578(n)%A008833(n+1)`
-/

namespace A336642.P16405622283283402068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 n) (A008833 (n + 1))

end

end A336642.P16405622283283402068

namespace A336642

/-- `A000578(n)%A008833(n+1)` -/
def P16405622283283402068.Spec : Prop :=
  ∀ n, P16405622283283402068.a n = A336642 (n + 1)

end A336642

/-!
# A336643: Squarefree kernel of n divided by the squarefree part of n: a(n) = rad(n) / core(n).

The programs for A336643, the canonical program `A336643.P7928680159681903247` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336643 has offset 1).

The definition of A336643 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336643.P9510015614627968796

`(n+1)/A350390(n+1)`
-/

namespace A336643.P9510015614627968796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A350390 (n + 1) : ℚ)

end

end A336643.P9510015614627968796

namespace A336643

/-- `(n+1)/A350390(n+1)` -/
def P9510015614627968796.Spec : Prop :=
  ∀ n, P9510015614627968796.a n = (A336643 (n + 1) : ℚ)

end A336643

/-! ## A336643.P14031780254390958644

`A356191(n+1)/(n+1)`
-/

namespace A336643.P14031780254390958644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356191 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A336643.P14031780254390958644

namespace A336643

/-- `A356191(n+1)/(n+1)` -/
def P14031780254390958644.Spec : Prop :=
  ∀ n, P14031780254390958644.a n = (A336643 (n + 1) : ℚ)

end A336643

/-! ## A336643.P7928680159681903247

`A007947(n+1)/A007913(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A336643

/-- `A007947(n+1)/A007913(n+1)` -/
def P7928680159681903247.Spec : Prop :=
  ∀ n, P7928680159681903247.a n = (A336643 (n + 1) : ℚ)

end A336643

/-! ## A336643.P1002261350426763466

`∏{p}[n+1, #^val(n+1, #²)]²/floor((n+1)/∏{p}[n+1, #])`
-/

namespace A336643.P1002261350426763466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℚ) / (⌊(n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)⌋ : ℚ)

end

end A336643.P1002261350426763466

namespace A336643

/-- `∏{p}[n+1, #^val(n+1, #²)]²/floor((n+1)/∏{p}[n+1, #])` -/
def P1002261350426763466.Spec : Prop :=
  ∀ n, P1002261350426763466.a n = (A336643 (n + 1) : ℚ)

end A336643

/-! ## A336643.P18275030964005409392

`∏{p}[n+1, #^val(n+1, #²)]²/round((n+1)/∏{p}[n+1, #])`
-/

namespace A336643.P18275030964005409392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℚ) / (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)) : ℚ)

end

end A336643.P18275030964005409392

namespace A336643

/-- `∏{p}[n+1, #^val(n+1, #²)]²/round((n+1)/∏{p}[n+1, #])` -/
def P18275030964005409392.Spec : Prop :=
  ∀ n, P18275030964005409392.a n = (A336643 (n + 1) : ℚ)

end A336643

/-! ## A336643.P10399913225630400434

`∏{p}[A071974(n+1), #]`
-/

namespace A336643.P10399913225630400434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A336643.P10399913225630400434

namespace A336643

/-- `∏{p}[A071974(n+1), #]` -/
def P10399913225630400434.Spec : Prop :=
  ∀ n, (P10399913225630400434.a n : ℤ) = A336643 (n + 1)

end A336643

/-! ## A336643.P9059869700287838824

`∏{p}[A331738(n+1), #]`
-/

namespace A336643.P9059869700287838824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A336643.P9059869700287838824

namespace A336643

/-- `∏{p}[A331738(n+1), #]` -/
def P9059869700287838824.Spec : Prop :=
  ∀ n, (P9059869700287838824.a n : ℤ) = A336643 (n + 1)

end A336643

/-! ## A336643.P5726659944226183129

`∏{p}[A350388(n+1), #]`
-/

namespace A336643.P5726659944226183129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350388 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A336643.P5726659944226183129

namespace A336643

/-- `∏{p}[A350388(n+1), #]` -/
def P5726659944226183129.Spec : Prop :=
  ∀ n, (P5726659944226183129.a n : ℤ) = A336643 (n + 1)

end A336643

/-! ## A336643.P15598694895402363769

`A007913((n+1)/∏{p}[n+1, #])`
-/

namespace A336643.P15598694895402363769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A336643.P15598694895402363769

namespace A336643

/-- `A007913((n+1)/∏{p}[n+1, #])` -/
def P15598694895402363769.Spec : Prop :=
  ∀ n, P15598694895402363769.a n = A336643 (n + 1)

end A336643

/-! ## A336643.P4301590000358765218

`(n+1)/gcd(n+1, A011262(n+1))`
-/

namespace A336643.P4301590000358765218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A011262 (n + 1)) : ℚ)

end

end A336643.P4301590000358765218

namespace A336643

/-- `(n+1)/gcd(n+1, A011262(n+1))` -/
def P4301590000358765218.Spec : Prop :=
  ∀ n, P4301590000358765218.a n = (A336643 (n + 1) : ℚ)

end A336643

/-! ## A336643.P16185078759835631020

`(n+1)/∏{p}[n+1, #]-A326128((n+1)/∏{p}[n+1, #])`
-/

namespace A336643.P16185078759835631020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) - (A326128 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat : ℚ)

end

end A336643.P16185078759835631020

namespace A336643

/-- `(n+1)/∏{p}[n+1, #]-A326128((n+1)/∏{p}[n+1, #])` -/
def P16185078759835631020.Spec : Prop :=
  ∀ n, P16185078759835631020.a n = (A336643 (n + 1) : ℚ)

end A336643

/-! ## A336643.P10886018481725743551

`A007913(A003557(n+1))`
-/

namespace A336643.P10886018481725743551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A003557 (n + 1)).toNat

end

end A336643.P10886018481725743551

namespace A336643

/-- `A007913(A003557(n+1))` -/
def P10886018481725743551.Spec : Prop :=
  ∀ n, P10886018481725743551.a n = A336643 (n + 1)

end A336643

/-! ## A336643.P8689519506289896060

`A000188(A066990(n+1))`
-/

namespace A336643.P8689519506289896060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A066990 (n + 1)).toNat

end

end A336643.P8689519506289896060

namespace A336643

/-- `A000188(A066990(n+1))` -/
def P8689519506289896060.Spec : Prop :=
  ∀ n, P8689519506289896060.a n = A336643 (n + 1)

end A336643

/-! ## A336643.P10916655588445730807

`A007947(A071974(n+1))`
-/

namespace A336643.P10916655588445730807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A071974 (n + 1)).toNat

end

end A336643.P10916655588445730807

namespace A336643

/-- `A007947(A071974(n+1))` -/
def P10916655588445730807.Spec : Prop :=
  ∀ n, P10916655588445730807.a n = A336643 (n + 1)

end A336643

/-! ## A336643.P9344336860445096155

`A007913(A331738(n+1))`
-/

namespace A336643.P9344336860445096155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A331738 (n + 1)).toNat

end

end A336643.P9344336860445096155

namespace A336643

/-- `A007913(A331738(n+1))` -/
def P9344336860445096155.Spec : Prop :=
  ∀ n, P9344336860445096155.a n = A336643 (n + 1)

end A336643

/-! ## A336643.P12481605334969332919

`A007947(A350388(n+1))`
-/

namespace A336643.P12481605334969332919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A350388 (n + 1)).toNat

end

end A336643.P12481605334969332919

namespace A336643

/-- `A007947(A350388(n+1))` -/
def P12481605334969332919.Spec : Prop :=
  ∀ n, P12481605334969332919.a n = A336643 (n + 1)

end A336643

/-! ## A336643.P9153574263557083349

`A007913(A372328(n+1))`
-/

namespace A336643.P9153574263557083349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A372328 (n + 1)).toNat

end

end A336643.P9153574263557083349

namespace A336643

/-- `A007913(A372328(n+1))` -/
def P9153574263557083349.Spec : Prop :=
  ∀ n, P9153574263557083349.a n = A336643 (n + 1)

end A336643

/-! ## A336643.P8022869023468972698

`A080883(A336644(n+1))`
-/

namespace A336643.P8022869023468972698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (A336644 (n + 1)).toNat

end

end A336643.P8022869023468972698

namespace A336643

/-- `A080883(A336644(n+1))` -/
def P8022869023468972698.Spec : Prop :=
  ∀ n, P8022869023468972698.a n = A336643 (n + 1)

end A336643

/-! ## A336643.P10262919991215929031

`A365298(A057521(n+1))`
-/

namespace A336643.P10262919991215929031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365298 (A057521 (n + 1)).toNat

end

end A336643.P10262919991215929031

namespace A336643

/-- `A365298(A057521(n+1))` -/
def P10262919991215929031.Spec : Prop :=
  ∀ n, P10262919991215929031.a n = A336643 (n + 1)

end A336643

/-! ## A336643.P1894720546012639950

`A071773(A365296(n+1))`
-/

namespace A336643.P1894720546012639950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (A365296 (n + 1)).toNat

end

end A336643.P1894720546012639950

namespace A336643

/-- `A071773(A365296(n+1))` -/
def P1894720546012639950.Spec : Prop :=
  ∀ n, P1894720546012639950.a n = A336643 (n + 1)

end A336643

/-!
# A336644: a(n) = (n-rad(n)) / core(n), where rad(n) and core(n) give the squarefree kernel and squarefree part of n, respectively.

The programs for A336644, the canonical program `A336644.P17715944373754840888` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336644 has offset 1).

The definition of A336644 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336644.P13897252798630532071

`A008833(n+1)-A336643(n+1)`
-/

namespace A336644.P13897252798630532071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) - A336643 (n + 1)

end

end A336644.P13897252798630532071

namespace A336644

/-- `A008833(n+1)-A336643(n+1)` -/
def P13897252798630532071.Spec : Prop :=
  ∀ n, P13897252798630532071.a n = A336644 (n + 1)

end A336644

/-! ## A336644.P17715944373754840888

`A066503(n+1)/A007913(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A336644

/-- `A066503(n+1)/A007913(n+1)` -/
def P17715944373754840888.Spec : Prop :=
  ∀ n, P17715944373754840888.a n = (A336644 (n + 1) : ℚ)

end A336644

/-! ## A336644.P15761502510530051950

`(n+1-A007947(n+1))/A007913(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336644.P15761502510530051950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A007947 (n + 1) : ℚ) / (A007913 (n + 1) : ℚ)

end

end A336644.P15761502510530051950

namespace A336644

/-- `(n+1-A007947(n+1))/A007913(n+1)` -/
def P15761502510530051950.Spec : Prop :=
  ∀ n, P15761502510530051950.a n = (A336644 (n + 1) : ℚ)

end A336644

/-! ## A336644.P12559128254541270646

`A336551(n+1)*A336643(n+1)`
-/

namespace A336644.P12559128254541270646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 1) * A336643 (n + 1)

end

end A336644.P12559128254541270646

namespace A336644

/-- `A336551(n+1)*A336643(n+1)` -/
def P12559128254541270646.Spec : Prop :=
  ∀ n, P12559128254541270646.a n = A336644 (n + 1)

end A336644

/-! ## A336644.P4128326177227347065

`A066503(n+1)/A056135(n+1)`
-/

namespace A336644.P4128326177227347065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066503 (n + 1) : ℚ) / (A056135 (n + 1) : ℚ)

end

end A336644.P4128326177227347065

namespace A336644

/-- `A066503(n+1)/A056135(n+1)` -/
def P4128326177227347065.Spec : Prop :=
  ∀ n, P4128326177227347065.a n = (A336644 (n + 1) : ℚ)

end A336644

/-! ## A336644.P1552274642068545255

`A000188(n+1)²-A336643(n+1)`
-/

namespace A336644.P1552274642068545255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) ^ 2 - A336643 (n + 1)

end

end A336644.P1552274642068545255

namespace A336644

/-- `A000188(n+1)²-A336643(n+1)` -/
def P1552274642068545255.Spec : Prop :=
  ∀ n, P1552274642068545255.a n = A336644 (n + 1)

end A336644

/-! ## A336644.P8250223014767612688

`A336642(n+1)+1-A336643(n+1)`
-/

namespace A336644.P8250223014767612688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336642 (n + 1) + (1 - A336643 (n + 1))

end

end A336644.P8250223014767612688

namespace A336644

/-- `A336642(n+1)+1-A336643(n+1)` -/
def P8250223014767612688.Spec : Prop :=
  ∀ n, P8250223014767612688.a n = A336644 (n + 1)

end A336644

/-! ## A336644.P805786576587185420

`(A003557(n+1)-1)*A336643(n+1)`
-/

namespace A336644.P805786576587185420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) - 1) * A336643 (n + 1)

end

end A336644.P805786576587185420

namespace A336644

/-- `(A003557(n+1)-1)*A336643(n+1)` -/
def P805786576587185420.Spec : Prop :=
  ∀ n, P805786576587185420.a n = A336644 (n + 1)

end A336644

/-! ## A336644.P8691132095139900965

`A008833(n+1)-A007913((n+1)/∏{p}[n+1, #])`
-/

namespace A336644.P8691132095139900965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) - A007913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A336644.P8691132095139900965

namespace A336644

/-- `A008833(n+1)-A007913((n+1)/∏{p}[n+1, #])` -/
def P8691132095139900965.Spec : Prop :=
  ∀ n, P8691132095139900965.a n = A336644 (n + 1)

end A336644

/-! ## A336644.P768320731614037490

`A008833(n+1)-A007913(A003557(n+1))`
-/

namespace A336644.P768320731614037490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) - A007913 (A003557 (n + 1)).toNat

end

end A336644.P768320731614037490

namespace A336644

/-- `A008833(n+1)-A007913(A003557(n+1))` -/
def P768320731614037490.Spec : Prop :=
  ∀ n, P768320731614037490.a n = A336644 (n + 1)

end A336644

/-! ## A336644.P10117438525139236923

`A008833(n+1)-A071773(A350388(n+1))`
-/

namespace A336644.P10117438525139236923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) - A071773 (A350388 (n + 1)).toNat

end

end A336644.P10117438525139236923

namespace A336644

/-- `A008833(n+1)-A071773(A350388(n+1))` -/
def P10117438525139236923.Spec : Prop :=
  ∀ n, P10117438525139236923.a n = A336644 (n + 1)

end A336644

/-! ## A336644.P18318206782770028304

`A007913(A003557(n+1))*A336551(n+1)`
-/

namespace A336644.P18318206782770028304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A003557 (n + 1)).toNat * A336551 (n + 1)

end

end A336644.P18318206782770028304

namespace A336644

/-- `A007913(A003557(n+1))*A336551(n+1)` -/
def P18318206782770028304.Spec : Prop :=
  ∀ n, P18318206782770028304.a n = A336644 (n + 1)

end A336644

/-! ## A336644.P5210865329551373460

`A000188(n+1)²-A007913(A003557(n+1))`
-/

namespace A336644.P5210865329551373460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) ^ 2 - A007913 (A003557 (n + 1)).toNat

end

end A336644.P5210865329551373460

namespace A336644

/-- `A000188(n+1)²-A007913(A003557(n+1))` -/
def P5210865329551373460.Spec : Prop :=
  ∀ n, P5210865329551373460.a n = A336644 (n + 1)

end A336644

/-! ## A336644.P6925390290412203358

`A000188(n+1)²-A000188(A066990(n+1))`
-/

namespace A336644.P6925390290412203358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) ^ 2 - A000188 (A066990 (n + 1)).toNat

end

end A336644.P6925390290412203358

namespace A336644

/-- `A000188(n+1)²-A000188(A066990(n+1))` -/
def P6925390290412203358.Spec : Prop :=
  ∀ n, P6925390290412203358.a n = A336644 (n + 1)

end A336644

/-! ## A336644.P17538959794798726034

`A007913(A336551(n+1)+1)*A336551(n+1)`
-/

namespace A336644.P17538959794798726034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A336551 (n + 1) + 1).toNat * A336551 (n + 1)

end

end A336644.P17538959794798726034

namespace A336644

/-- `A007913(A336551(n+1)+1)*A336551(n+1)` -/
def P17538959794798726034.Spec : Prop :=
  ∀ n, P17538959794798726034.a n = A336644 (n + 1)

end A336644

/-! ## A336644.P12789583856369672637

`(A003557(n+1)-1)*A003557(A066990(n+1))`
-/

namespace A336644.P12789583856369672637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) - 1) * A003557 (A066990 (n + 1)).toNat

end

end A336644.P12789583856369672637

namespace A336644

/-- `(A003557(n+1)-1)*A003557(A066990(n+1))` -/
def P12789583856369672637.Spec : Prop :=
  ∀ n, P12789583856369672637.a n = A336644 (n + 1)

end A336644

/-! ## A336644.P10161784976484993212

`A008833(n+1)-A011264(n+1)/A008833(n+1)`
-/

namespace A336644.P10161784976484993212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008833 (n + 1) : ℚ) - (A011264 (n + 1) : ℚ) / (A008833 (n + 1) : ℚ)

end

end A336644.P10161784976484993212

namespace A336644

/-- `A008833(n+1)-A011264(n+1)/A008833(n+1)` -/
def P10161784976484993212.Spec : Prop :=
  ∀ n, P10161784976484993212.a n = (A336644 (n + 1) : ℚ)

end A336644

/-! ## A336644.P4024459814707366346

`A008833(n+1)-A071773(n+1)/A055229(n+1)`
-/

namespace A336644.P4024459814707366346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008833 (n + 1) : ℚ) - (A071773 (n + 1) : ℚ) / (A055229 (n + 1) : ℚ)

end

end A336644.P4024459814707366346

namespace A336644

/-- `A008833(n+1)-A071773(n+1)/A055229(n+1)` -/
def P4024459814707366346.Spec : Prop :=
  ∀ n, P4024459814707366346.a n = (A336644 (n + 1) : ℚ)

end A336644

/-! ## A336644.P3151176470084404244

`A066503(n+1)/(A000203(n+1)-A326126(n+1))`
-/

namespace A336644.P3151176470084404244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066503 (n + 1) : ℚ) / (A000203 (n + 1) - A326126 (n + 1) : ℚ)

end

end A336644.P3151176470084404244

namespace A336644

/-- `A066503(n+1)/(A000203(n+1)-A326126(n+1))` -/
def P3151176470084404244.Spec : Prop :=
  ∀ n, P3151176470084404244.a n = (A336644 (n + 1) : ℚ)

end A336644

/-! ## A336644.P4429763034609047010

`A011264(n+1)/A336643(n+1)-A336643(n+1)`
-/

namespace A336644.P4429763034609047010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011264 (n + 1) : ℚ) / (A336643 (n + 1) : ℚ) - (A336643 (n + 1) : ℚ)

end

end A336644.P4429763034609047010

namespace A336644

/-- `A011264(n+1)/A336643(n+1)-A336643(n+1)` -/
def P4429763034609047010.Spec : Prop :=
  ∀ n, P4429763034609047010.a n = (A336644 (n + 1) : ℚ)

end A336644

/-!
# A336645: a(n) = n - A326129(n).

The programs for A336645, the canonical program `A336645.P7716507073345907638` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336645 has offset 1).

The definition of A336645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336645.P7716507073345907638

`n+1-A326129(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A336645

/-- `n+1-A326129(n+1)` -/
def P7716507073345907638.Spec : Prop :=
  ∀ n, P7716507073345907638.a n = A336645 (n + 1)

theorem P7716507073345907638.correct : P7716507073345907638.Spec := by
  intro n
  simp only [A336645, Nat.add_sub_cancel]

end A336645

/-! ## A336645.P7444696597570994337

`n+1-gcd(A326127(n+1), A326128(n+1))`
-/

namespace A336645.P7444696597570994337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.gcd (A326127 (n + 1)) (A326128 (n + 1)) : ℤ)

end

end A336645.P7444696597570994337

namespace A336645

/-- `n+1-gcd(A326127(n+1), A326128(n+1))` -/
def P7444696597570994337.Spec : Prop :=
  ∀ n, P7444696597570994337.a n = A336645 (n + 1)

end A336645

/-! ## A336645.P10177162129404692943

`A024000(A326129(n+1))+n`
-/

namespace A336645.P10177162129404692943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A326129 (n + 1)).toNat + (n : ℤ)

end

end A336645.P10177162129404692943

namespace A336645

/-- `A024000(A326129(n+1))+n` -/
def P10177162129404692943.Spec : Prop :=
  ∀ n, P10177162129404692943.a n = A336645 (n + 1)

end A336645

/-! ## A336645.P12240486918443328395

`-(A326129(n+1)+A001478(n+1))`
-/

namespace A336645.P12240486918443328395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A326129 (n + 1) + A001478 (n + 1))

end

end A336645.P12240486918443328395

namespace A336645

/-- `-(A326129(n+1)+A001478(n+1))` -/
def P12240486918443328395.Spec : Prop :=
  ∀ n, P12240486918443328395.a n = A336645 (n + 1)

theorem P12240486918443328395.correct : P12240486918443328395.Spec := by
  intro n
  simp only [A336645, Nat.add_sub_cancel, A336645.P12240486918443328395.a, A336645.P7716507073345907638.a, A001478, A001478.P11279598861711037921.a, A326129, A326129.P16648833890386583116.a, A326127, A326127.P6827603046472699184.a, A326128, A326128.P4962900157914824511.a, A007913, A007913.P8131970495124731496.a, A326126, A326126.P126110095243043684.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336645

/-!
# A336646: a(n) = n - A326144(n).

The programs for A336646, the canonical program `A336646.P1396805071423227926` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336646 has offset 1).

The definition of A336646 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336646.P1396805071423227926

`n+1-A326144(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A336646

/-- `n+1-A326144(n+1)` -/
def P1396805071423227926.Spec : Prop :=
  ∀ n, P1396805071423227926.a n = A336646 (n + 1)

theorem P1396805071423227926.correct : P1396805071423227926.Spec := by
  intro n
  simp only [A336646, Nat.add_sub_cancel]

end A336646

/-! ## A336646.P886082987865778595

`A024000(A326144(n+1))+n`
-/

namespace A336646.P886082987865778595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A326144 (n + 1)).toNat + (n : ℤ)

end

end A336646.P886082987865778595

namespace A336646

/-- `A024000(A326144(n+1))+n` -/
def P886082987865778595.Spec : Prop :=
  ∀ n, P886082987865778595.a n = A336646 (n + 1)

end A336646

/-! ## A336646.P15766183224649242893

`abs(A326144(n+1)+A001478(n+1))`
-/

namespace A336646.P15766183224649242893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A326144 (n + 1) + A001478 (n + 1)|

end

end A336646.P15766183224649242893

namespace A336646

/-- `abs(A326144(n+1)+A001478(n+1))` -/
def P15766183224649242893.Spec : Prop :=
  ∀ n, P15766183224649242893.a n = A336646 (n + 1)

end A336646

/-! ## A336646.P11894284547855372301

`1-gcd(A033879(n+1), A066503(n+1))+n`
-/

namespace A336646.P11894284547855372301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Int.gcd (A033879 (n + 1)) (A066503 (n + 1)) : ℤ) + (n : ℤ)

end

end A336646.P11894284547855372301

namespace A336646

/-- `1-gcd(A033879(n+1), A066503(n+1))+n` -/
def P11894284547855372301.Spec : Prop :=
  ∀ n, P11894284547855372301.a n = A336646 (n + 1)

end A336646

/-! ## A336646.P8349353976828487742

`A001489(A326144(n+1))+A000027(n+1)`
-/

namespace A336646.P8349353976828487742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A326144 (n + 1)).toNat + A000027 (n + 1)

end

end A336646.P8349353976828487742

namespace A336646

/-- `A001489(A326144(n+1))+A000027(n+1)` -/
def P8349353976828487742.Spec : Prop :=
  ∀ n, P8349353976828487742.a n = A336646 (n + 1)

end A336646

/-! ## A336646.P15236907645736204555

`A025581(A326144(n+1)+A142463(n))`
-/

namespace A336646.P15236907645736204555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A326144 (n + 1) + A142463 n).toNat

end

end A336646.P15236907645736204555

namespace A336646

/-- `A025581(A326144(n+1)+A142463(n))` -/
def P15236907645736204555.Spec : Prop :=
  ∀ n, P15236907645736204555.a n = A336646 (n + 1)

end A336646

/-!
# A336647: a(n) = n - A336566(n).

The programs for A336647, the canonical program `A336647.P1661556818682037462` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336647 has offset 1).

The definition of A336647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336647.P1661556818682037462

`n+1-A336566(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A336647

/-- `n+1-A336566(n+1)` -/
def P1661556818682037462.Spec : Prop :=
  ∀ n, P1661556818682037462.a n = A336647 (n + 1)

theorem P1661556818682037462.correct : P1661556818682037462.Spec := by
  intro n
  simp only [A336647, Nat.add_sub_cancel]

end A336647

/-! ## A336647.P17259578787065024711

`A024000(A336566(n+1))+n`
-/

namespace A336647.P17259578787065024711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A336566 (n + 1)).toNat + (n : ℤ)

end

end A336647.P17259578787065024711

namespace A336647

/-- `A024000(A336566(n+1))+n` -/
def P17259578787065024711.Spec : Prop :=
  ∀ n, P17259578787065024711.a n = A336647 (n + 1)

end A336647

/-! ## A336647.P8168384313707065261

`-(A336566(n+1)+A001478(n+1))`
-/

namespace A336647.P8168384313707065261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A336566 (n + 1) + A001478 (n + 1))

end

end A336647.P8168384313707065261

namespace A336647

/-- `-(A336566(n+1)+A001478(n+1))` -/
def P8168384313707065261.Spec : Prop :=
  ∀ n, P8168384313707065261.a n = A336647 (n + 1)

theorem P8168384313707065261.correct : P8168384313707065261.Spec := by
  intro n
  simp only [A336647, Nat.add_sub_cancel, A336647.P8168384313707065261.a, A336647.P1661556818682037462.a, A001478, A001478.P11279598861711037921.a, A336566, A336566.P17857455138638732471.a, A057723, A057723.P9092718560045484766.a, A308135, A308135.P17632068956087446165.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336647

/-! ## A336647.P166485792038656337

`1-gcd(A033879(n+1), A336563(n+1))+n`
-/

namespace A336647.P166485792038656337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Int.gcd (A033879 (n + 1)) (A336563 (n + 1)) : ℤ) + (n : ℤ)

end

end A336647.P166485792038656337

namespace A336647

/-- `1-gcd(A033879(n+1), A336563(n+1))+n` -/
def P166485792038656337.Spec : Prop :=
  ∀ n, P166485792038656337.a n = A336647 (n + 1)

end A336647

/-! ## A336647.P15687214488897796930

`A025581(A336566(n+1)+∑[n+1])`
-/

namespace A336647.P15687214488897796930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A336566 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A336647.P15687214488897796930

namespace A336647

/-- `A025581(A336566(n+1)+∑[n+1])` -/
def P15687214488897796930.Spec : Prop :=
  ∀ n, P15687214488897796930.a n = A336647 (n + 1)

end A336647

/-!
# A336648: Lexicographically earliest infinite sequence such that a(i) = a(j) => A336476(i) = A336476(j), for all i, j >= 1.

The programs for A336648, there is no canonical definition to state claims against.
-/

/-! ## A336648.P2064746427054247258

`A336476(n+1)%A037085(A161618(n+1))`
-/

namespace A336648.P2064746427054247258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336476 (n + 1)) (A037085 (A161618 (n + 1)).toNat)

end

end A336648.P2064746427054247258

/-! ## A336648.P15358504675214455711

`A007953(A336476(n+1))*A043545(A031521(n+1))`
-/

namespace A336648.P15358504675214455711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A336476 (n + 1)).toNat * A043545 (A031521 (n + 1)).toNat

end

end A336648.P15358504675214455711

/-! ## A336648.P9299845104866102557

`dr(A336476(n+1)%A084161(n))`
-/

namespace A336648.P9299845104866102557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A336476 (n + 1)) (A084161 n))

end

end A336648.P9299845104866102557

/-! ## A336648.P10712210374675753262

`gcd(A303736(A336476(3*(n+1))), A336476(n+1))`
-/

namespace A336648.P10712210374675753262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303736 (A336476 (3 * (n + 1))).toNat) (A336476 (n + 1))

end

end A336648.P10712210374675753262

/-! ## A336648.P14613149239121051579

`gcd(A092517(A387119(2*n+1)), A327657(n+1))`
-/

namespace A336648.P14613149239121051579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092517 (A387119 (2 * n + 1)).toNat) (A327657 (n + 1))

end

end A336648.P14613149239121051579

/-!
# A336649: Sum of divisors of A336651(n) (odd part of n divided by its largest squarefree divisor).

The programs for A336649, the canonical program `A336649.P1375712288515144548` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336649 has offset 1).

The definition of A336649 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A335341, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336649.P1375712288515144548

`A335341(A000265(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A336649

/-- `A335341(A000265(n+1))` -/
def P1375712288515144548.Spec : Prop :=
  ∀ n, P1375712288515144548.a n = A336649 (n + 1)

theorem P1375712288515144548.correct : P1375712288515144548.Spec := by
  intro n
  simp only [A336649, Nat.add_sub_cancel]

end A336649

/-! ## A336649.P10884115808408003306

`A000203(A336651(n+1))`
-/

namespace A336649.P10884115808408003306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A336651 (n + 1)).toNat

end

end A336649.P10884115808408003306

namespace A336649

/-- `A000203(A336651(n+1))` -/
def P10884115808408003306.Spec : Prop :=
  ∀ n, P10884115808408003306.a n = A336649 (n + 1)

end A336649

/-! ## A336649.P6630623823775363602

`A336652(n+1)/A204455(n+1)`
-/

namespace A336649.P6630623823775363602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336652 (n + 1) : ℚ) / (A204455 (n + 1) : ℚ)

end

end A336649.P6630623823775363602

namespace A336649

/-- `A336652(n+1)/A204455(n+1)` -/
def P6630623823775363602.Spec : Prop :=
  ∀ n, P6630623823775363602.a n = (A336649 (n + 1) : ℚ)

end A336649

/-! ## A336649.P11533964041810692636

`A000593((n+1)/∏{p}[n+1, #])`
-/

namespace A336649.P11533964041810692636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A336649.P11533964041810692636

namespace A336649

/-- `A000593((n+1)/∏{p}[n+1, #])` -/
def P11533964041810692636.Spec : Prop :=
  ∀ n, P11533964041810692636.a n = A336649 (n + 1)

end A336649

/-! ## A336649.P7977130459151983603

`A335341((n+1)/ceil(xor(n, n+1)/2))`
-/

namespace A336649.P7977130459151983603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ))).toNat

end

end A336649.P7977130459151983603

namespace A336649

/-- `A335341((n+1)/ceil(xor(n, n+1)/2))` -/
def P7977130459151983603.Spec : Prop :=
  ∀ n, P7977130459151983603.a n = A336649 (n + 1)

end A336649

/-! ## A336649.P3396823486708266417

`A335341((n+1)/round(xor(n, n+1)/2))`
-/

namespace A336649.P3396823486708266417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) : ℚ) / 2) : ℚ))).toNat

end

end A336649.P3396823486708266417

namespace A336649

/-- `A335341((n+1)/round(xor(n, n+1)/2))` -/
def P3396823486708266417.Spec : Prop :=
  ∀ n, P3396823486708266417.a n = A336649 (n + 1)

end A336649

/-! ## A336649.P7720355895346073408

`A000203(gcd((n+1)/and(n+1, -(n+1)), (n+1)/∏{p}[n+1, #]))`
-/

namespace A336649.P7720355895346073408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))))

end

end A336649.P7720355895346073408

namespace A336649

/-- `A000203(gcd((n+1)/and(n+1, -(n+1)), (n+1)/∏{p}[n+1, #]))` -/
def P7720355895346073408.Spec : Prop :=
  ∀ n, P7720355895346073408.a n = A336649 (n + 1)

end A336649

/-! ## A336649.P12484930398560014515

`A000593(A003557(n+1))`
-/

namespace A336649.P12484930398560014515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A003557 (n + 1)).toNat

end

end A336649.P12484930398560014515

namespace A336649

/-- `A000593(A003557(n+1))` -/
def P12484930398560014515.Spec : Prop :=
  ∀ n, P12484930398560014515.a n = A336649 (n + 1)

end A336649

/-! ## A336649.P6674126763106652995

`A000593(A347291(n+1))`
-/

namespace A336649.P6674126763106652995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A347291 (n + 1)).toNat

end

end A336649.P6674126763106652995

namespace A336649

/-- `A000593(A347291(n+1))` -/
def P6674126763106652995.Spec : Prop :=
  ∀ n, P6674126763106652995.a n = A336649 (n + 1)

end A336649

/-! ## A336649.P11727517512534102320

`A000593(A357689(n+1))`
-/

namespace A336649.P11727517512534102320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A357689 (n + 1)).toNat

end

end A336649.P11727517512534102320

namespace A336649

/-- `A000593(A357689(n+1))` -/
def P11727517512534102320.Spec : Prop :=
  ∀ n, P11727517512534102320.a n = A336649 (n + 1)

end A336649

/-! ## A336649.P11761180665272041366

`A335341(A065883(n+1))`
-/

namespace A336649.P11761180665272041366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335341 (A065883 (n + 1)).toNat

end

end A336649.P11761180665272041366

namespace A336649

/-- `A335341(A065883(n+1))` -/
def P11761180665272041366.Spec : Prop :=
  ∀ n, P11761180665272041366.a n = A336649 (n + 1)

end A336649

/-! ## A336649.P5822879645668533010

`A335341(A153733(n)+1)`
-/

namespace A336649.P5822879645668533010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335341 (A153733 n + 1).toNat

end

end A336649.P5822879645668533010

namespace A336649

/-- `A335341(A153733(n)+1)` -/
def P5822879645668533010.Spec : Prop :=
  ∀ n, P5822879645668533010.a n = A336649 (n + 1)

end A336649

/-! ## A336649.P3785793013168564293

`A335341(A171435(n+1))`
-/

namespace A336649.P3785793013168564293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335341 (A171435 (n + 1)).toNat

end

end A336649.P3785793013168564293

namespace A336649

/-- `A335341(A171435(n+1))` -/
def P3785793013168564293.Spec : Prop :=
  ∀ n, P3785793013168564293.a n = A336649 (n + 1)

end A336649

/-! ## A336649.P9689718223801450327

`A000593(A336551(n+1)+1)`
-/

namespace A336649.P9689718223801450327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A336551 (n + 1) + 1).toNat

end

end A336649.P9689718223801450327

namespace A336649

/-- `A000593(A336551(n+1)+1)` -/
def P9689718223801450327.Spec : Prop :=
  ∀ n, P9689718223801450327.a n = A336649 (n + 1)

end A336649

/-! ## A336649.P12575719913287830964

`A326135(2*A003557(n+1))`
-/

namespace A336649.P12575719913287830964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326135 (2 * A003557 (n + 1)).toNat

end

end A336649.P12575719913287830964

namespace A336649

/-- `A326135(2*A003557(n+1))` -/
def P12575719913287830964.Spec : Prop :=
  ∀ n, P12575719913287830964.a n = A336649 (n + 1)

end A336649

/-! ## A336649.P8903368947522395023

`A000593(A336651(2*(n+1)))`
-/

namespace A336649.P8903368947522395023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A336651 (2 * (n + 1))).toNat

end

end A336649.P8903368947522395023

namespace A336649

/-- `A000593(A336651(2*(n+1)))` -/
def P8903368947522395023.Spec : Prop :=
  ∀ n, P8903368947522395023.a n = A336649 (n + 1)

end A336649

/-! ## A336649.P12398949930168611016

`A000593((n+1)/A007947(n+1))`
-/

namespace A336649.P12398949930168611016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A336649.P12398949930168611016

namespace A336649

/-- `A000593((n+1)/A007947(n+1))` -/
def P12398949930168611016.Spec : Prop :=
  ∀ n, P12398949930168611016.a n = A336649 (n + 1)

end A336649

/-! ## A336649.P10589358190573534940

`A000593((n+1)/A204455(n+1))`
-/

namespace A336649.P10589358190573534940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A204455 (n + 1) : ℚ))).toNat

end

end A336649.P10589358190573534940

namespace A336649

/-- `A000593((n+1)/A204455(n+1))` -/
def P10589358190573534940.Spec : Prop :=
  ∀ n, P10589358190573534940.a n = A336649 (n + 1)

end A336649

/-! ## A336649.P1235788388040983953

`A318876((n+1)/A007947(n+1))`
-/

namespace A336649.P1235788388040983953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318876 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A336649.P1235788388040983953

namespace A336649

/-- `A318876((n+1)/A007947(n+1))` -/
def P1235788388040983953.Spec : Prop :=
  ∀ n, P1235788388040983953.a n = A336649 (n + 1)

end A336649

/-! ## A336649.P15896313504173674749

`A335341(n+1)/A140670(n+1)`
-/

namespace A336649.P15896313504173674749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335341 (n + 1) : ℚ) / (A140670 (n + 1) : ℚ)

end

end A336649.P15896313504173674749

namespace A336649

/-- `A335341(n+1)/A140670(n+1)` -/
def P15896313504173674749.Spec : Prop :=
  ∀ n, P15896313504173674749.a n = (A336649 (n + 1) : ℚ)

end A336649

/-!
# A336650: a(n) = p^e, where p is the smallest odd prime factor of n, and e is its exponent, with a(n) = 1 when n is a power of two.

The programs for A336650, there is no canonical definition to state claims against.
-/

/-! ## A336650.P1876153032871638253

`A028233(A000265(n+1))`
-/

namespace A336650.P1876153032871638253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A000265 (n + 1)).toNat

end

end A336650.P1876153032871638253

/-! ## A336650.P8063199411770582942

`A028233(floor(n/2^val(n+1, 2))+1)`
-/

namespace A336650.P8063199411770582942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ + 1).toNat

end

end A336650.P8063199411770582942

/-! ## A336650.P14865635819910432682

`A028233((n+1)/and(n+1, -(n+1)))`
-/

namespace A336650.P14865635819910432682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A336650.P14865635819910432682

/-! ## A336650.P812957047085683387

`A028233(2*(n+1)/(xor(n, n+1)+1))`
-/

namespace A336650.P812957047085683387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat

end

end A336650.P812957047085683387

/-! ## A336650.P6169542127517518713

`A028233((n+1)/(n+1-and(n, n+1)))`
-/

namespace A336650.P6169542127517518713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ))).toNat

end

end A336650.P6169542127517518713

/-! ## A336650.P13274154050730945213

`(n+1)*2^-val(n+1, 2)/A028234((n+1)*2^-val(n+1, 2))`
-/

namespace A336650.P13274154050730945213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ) / (A028234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ))).toNat : ℚ)

end

end A336650.P13274154050730945213

/-! ## A336650.P18259975531797392834

`A028233(A153733(n)+1)`
-/

namespace A336650.P18259975531797392834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A153733 n + 1).toNat

end

end A336650.P18259975531797392834

/-! ## A336650.P14200054128032601462

`A028233(A166466(n+1)/3)`
-/

namespace A336650.P14200054128032601462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (SequenceMachineLib.roundAway ((A166466 (n + 1) : ℚ) / 3)).toNat

end

end A336650.P14200054128032601462

/-! ## A336650.P8579045498039111385

`A028233((n+1)/A006519(n+1))`
-/

namespace A336650.P8579045498039111385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A336650.P8579045498039111385

/-! ## A336650.P3291932154180910880

`A000265(n+1)/A028234((n+1)/and(n+1, -(n+1)))`
-/

namespace A336650.P3291932154180910880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A028234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat : ℚ)

end

end A336650.P3291932154180910880

/-! ## A336650.P10943545122508996858

`(A153733(n)+1)/A028234((n+1)/and(n+1, -(n+1)))`
-/

namespace A336650.P10943545122508996858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153733 n + 1 : ℚ) / (A028234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat : ℚ)

end

end A336650.P10943545122508996858

/-! ## A336650.P14631337590008399264

`A000265(n+1)/A028234(2*(n+1)/(xor(n, n+1)+1))`
-/

namespace A336650.P14631337590008399264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A028234 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat : ℚ)

end

end A336650.P14631337590008399264

/-! ## A336650.P17856028244864738509

`(A153733(n)+1)/A028234(2*(n+1)/(xor(n, n+1)+1))`
-/

namespace A336650.P17856028244864738509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153733 n + 1 : ℚ) / (A028234 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat : ℚ)

end

end A336650.P17856028244864738509

/-! ## A336650.P14479969965067298214

`A000265((n+1)/A028234(A000265(n+1)))`
-/

namespace A336650.P14479969965067298214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A028234 (A000265 (n + 1)).toNat : ℚ))).toNat

end

end A336650.P14479969965067298214

/-! ## A336650.P13010184189743021296

`A028233((n+1)/A000079(A007814(n+1)))`
-/

namespace A336650.P13010184189743021296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000079 (A007814 (n + 1)).toNat : ℚ))).toNat

end

end A336650.P13010184189743021296

/-! ## A336650.P12717701725841495442

`(A153733(n)+1)/A028234((n+1)/A000010(xor(n, n+1)+1))`
-/

namespace A336650.P12717701725841495442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153733 n + 1 : ℚ) / (A028234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000010 (Nat.xor n (n + 1) + 1) : ℚ))).toNat : ℚ)

end

end A336650.P12717701725841495442

/-! ## A336650.P9420205565934362262

`A028233(A028234(2*(n+1)))`
-/

namespace A336650.P9420205565934362262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A028234 (2 * (n + 1))).toNat

end

end A336650.P9420205565934362262

/-! ## A336650.P744461302565400869

`A028233(2*(n+1)/A028233(2*(n+1)))`
-/

namespace A336650.P744461302565400869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (A028233 (2 * (n + 1)) : ℚ))).toNat

end

end A336650.P744461302565400869

/-! ## A336650.P3439701232150515449

`A028234(2*(n+1))/A028234((n+1)/and(n+1, -(n+1)))`
-/

namespace A336650.P3439701232150515449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028234 (2 * (n + 1)) : ℚ) / (A028234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat : ℚ)

end

end A336650.P3439701232150515449

/-! ## A336650.P3517499030087295700

`A028234(2*(n+1))/A028234(2*(n+1)/(xor(n, n+1)+1))`
-/

namespace A336650.P3517499030087295700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028234 (2 * (n + 1)) : ℚ) / (A028234 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat : ℚ)

end

end A336650.P3517499030087295700

/-!
# A336651: Odd part of n divided by its largest squarefree divisor.

The programs for A336651, the canonical program `A336651.P16001873672567347965` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336651 has offset 1).

The definition of A336651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336651.P4853060310816730527

`A003557(A000265(n+1))`
-/

namespace A336651.P4853060310816730527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A000265 (n + 1)).toNat

end

end A336651.P4853060310816730527

namespace A336651

/-- `A003557(A000265(n+1))` -/
def P4853060310816730527.Spec : Prop :=
  ∀ n, P4853060310816730527.a n = A336651 (n + 1)

end A336651

/-! ## A336651.P16001873672567347965

`A000265(n+1)/A204455(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A336651

/-- `A000265(n+1)/A204455(n+1)` -/
def P16001873672567347965.Spec : Prop :=
  ∀ n, P16001873672567347965.a n = (A336651 (n + 1) : ℚ)

end A336651

/-! ## A336651.P4769599058074221523

`gcd((n+1)/and(n+1, -(n+1)), ∑{p}[n+1, (n+1)/#])`
-/

namespace A336651.P4769599058074221523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)))

end

end A336651.P4769599058074221523

namespace A336651

/-- `gcd((n+1)/and(n+1, -(n+1)), ∑{p}[n+1, (n+1)/#])` -/
def P4769599058074221523.Spec : Prop :=
  ∀ n, (P4769599058074221523.a n : ℤ) = A336651 (n + 1)

end A336651

/-! ## A336651.P894731878786507855

`gcd((n+1)/∏{p}[n+1, #], ((n+1)/and(n+1, -(n+1)))²)`
-/

namespace A336651.P894731878786507855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)) ^ 2))

end

end A336651.P894731878786507855

namespace A336651

/-- `gcd((n+1)/∏{p}[n+1, #], ((n+1)/and(n+1, -(n+1)))²)` -/
def P894731878786507855.Spec : Prop :=
  ∀ n, (P894731878786507855.a n : ℤ) = A336651 (n + 1)

end A336651

/-! ## A336651.P1225796602787280736

`gcd(3*(n+1)/and(n+1, -(n+1)), floor((n+1)/∏{p}[n+1, #]))`
-/

namespace A336651.P1225796602787280736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (3 * ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)))) ⌊(n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋

end

end A336651.P1225796602787280736

namespace A336651

/-- `gcd(3*(n+1)/and(n+1, -(n+1)), floor((n+1)/∏{p}[n+1, #]))` -/
def P1225796602787280736.Spec : Prop :=
  ∀ n, (P1225796602787280736.a n : ℤ) = A336651 (n + 1)

end A336651

/-! ## A336651.P3026215470406892910

`A000265((n+1)/∏{p}[n+1, #])`
-/

namespace A336651.P3026215470406892910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A336651.P3026215470406892910

namespace A336651

/-- `A000265((n+1)/∏{p}[n+1, #])` -/
def P3026215470406892910.Spec : Prop :=
  ∀ n, P3026215470406892910.a n = A336651 (n + 1)

end A336651

/-! ## A336651.P16577043900337170001

`A003557((n+1)/2^val(n+1, 2))`
-/

namespace A336651.P16577043900337170001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A336651.P16577043900337170001

namespace A336651

/-- `A003557((n+1)/2^val(n+1, 2))` -/
def P16577043900337170001.Spec : Prop :=
  ∀ n, P16577043900337170001.a n = A336651 (n + 1)

end A336651

/-! ## A336651.P12835001692551806206

`A003557((n+1)/and(n+1, -(n+1)))`
-/

namespace A336651.P12835001692551806206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A336651.P12835001692551806206

namespace A336651

/-- `A003557((n+1)/and(n+1, -(n+1)))` -/
def P12835001692551806206.Spec : Prop :=
  ∀ n, P12835001692551806206.a n = A336651 (n + 1)

end A336651

/-! ## A336651.P2817134816851420104

`A000010((n+1)/and(n+1, -(n+1)))/∏{p}[n+1, #-1]`
-/

namespace A336651.P2817134816851420104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A336651.P2817134816851420104

namespace A336651

/-- `A000010((n+1)/and(n+1, -(n+1)))/∏{p}[n+1, #-1]` -/
def P2817134816851420104.Spec : Prop :=
  ∀ n, P2817134816851420104.a n = (A336651 (n + 1) : ℚ)

end A336651

/-! ## A336651.P11088956951615757815

`A000265(A357689(n+1))`
-/

namespace A336651.P11088956951615757815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A357689 (n + 1)).toNat

end

end A336651.P11088956951615757815

namespace A336651

/-- `A000265(A357689(n+1))` -/
def P11088956951615757815.Spec : Prop :=
  ∀ n, P11088956951615757815.a n = A336651 (n + 1)

end A336651

/-! ## A336651.P9393070119856168031

`A003557(2*A025480(n)+1)`
-/

namespace A336651.P9393070119856168031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (2 * A025480 n + 1).toNat

end

end A336651.P9393070119856168031

namespace A336651

/-- `A003557(2*A025480(n)+1)` -/
def P9393070119856168031.Spec : Prop :=
  ∀ n, P9393070119856168031.a n = A336651 (n + 1)

end A336651

/-! ## A336651.P5702572270031501589

`A028234(2*A003557(n+1))`
-/

namespace A336651.P5702572270031501589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * A003557 (n + 1)).toNat

end

end A336651.P5702572270031501589

namespace A336651

/-- `A028234(2*A003557(n+1))` -/
def P5702572270031501589.Spec : Prop :=
  ∀ n, P5702572270031501589.a n = A336651 (n + 1)

end A336651

/-! ## A336651.P5756036465384546826

`A003557(A302044(2*(n+1)))`
-/

namespace A336651.P5756036465384546826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A302044 (2 * (n + 1))).toNat

end

end A336651.P5756036465384546826

namespace A336651

/-- `A003557(A302044(2*(n+1)))` -/
def P5756036465384546826.Spec : Prop :=
  ∀ n, P5756036465384546826.a n = A336651 (n + 1)

end A336651

/-! ## A336651.P11593684110658916570

`A028234(lcm(2, A003557(n+1)))`
-/

namespace A336651.P11593684110658916570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (Int.lcm 2 (A003557 (n + 1)))

end

end A336651.P11593684110658916570

namespace A336651

/-- `A028234(lcm(2, A003557(n+1)))` -/
def P11593684110658916570.Spec : Prop :=
  ∀ n, P11593684110658916570.a n = A336651 (n + 1)

end A336651

/-! ## A336651.P11246496873587197369

`gcd(A301279(n), A357689(n+1))`
-/

namespace A336651.P11246496873587197369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A301279 n) (A357689 (n + 1))

end

end A336651.P11246496873587197369

namespace A336651

/-- `gcd(A301279(n), A357689(n+1))` -/
def P11246496873587197369.Spec : Prop :=
  ∀ n, (P11246496873587197369.a n : ℤ) = A336651 (n + 1)

end A336651

/-! ## A336651.P13758505939049967228

`A000265((n+1)/A007947(n+1))`
-/

namespace A336651.P13758505939049967228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A336651.P13758505939049967228

namespace A336651

/-- `A000265((n+1)/A007947(n+1))` -/
def P13758505939049967228.Spec : Prop :=
  ∀ n, P13758505939049967228.a n = A336651 (n + 1)

end A336651

/-! ## A336651.P17086210129727553850

`A003557((n+1)/A006519(n+1))`
-/

namespace A336651.P17086210129727553850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A336651.P17086210129727553850

namespace A336651

/-- `A003557((n+1)/A006519(n+1))` -/
def P17086210129727553850.Spec : Prop :=
  ∀ n, P17086210129727553850.a n = A336651 (n + 1)

end A336651

/-! ## A336651.P2434916943771495632

`A003557(n+1)/A160467(n+1)`
-/

namespace A336651.P2434916943771495632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) : ℚ) / (A160467 (n + 1) : ℚ)

end

end A336651.P2434916943771495632

namespace A336651

/-- `A003557(n+1)/A160467(n+1)` -/
def P2434916943771495632.Spec : Prop :=
  ∀ n, P2434916943771495632.a n = (A336651 (n + 1) : ℚ)

end A336651

/-! ## A336651.P15638320527129432766

`A259445(n+1)/A007947(n+1)`
-/

namespace A336651.P15638320527129432766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259445 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A336651.P15638320527129432766

namespace A336651

/-- `A259445(n+1)/A007947(n+1)` -/
def P15638320527129432766.Spec : Prop :=
  ∀ n, P15638320527129432766.a n = (A336651 (n + 1) : ℚ)

end A336651

/-! ## A336651.P9928306111664618217

`A357689((n+1)/A006519(n+1))`
-/

namespace A336651.P9928306111664618217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357689 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A336651.P9928306111664618217

namespace A336651

/-- `A357689((n+1)/A006519(n+1))` -/
def P9928306111664618217.Spec : Prop :=
  ∀ n, P9928306111664618217.a n = A336651 (n + 1)

end A336651

/-!
# A336652: Sum of positive divisors of odd part of n that are divisible by every (odd) prime dividing it: a(n) = A057723(A000265(n)).

The programs for A336652, the canonical program `A336652.P8676993965234657329` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336652 has offset 1).

The definition of A336652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336652.P8676993965234657329

`A057723(A000265(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A336652

/-- `A057723(A000265(n+1))` -/
def P8676993965234657329.Spec : Prop :=
  ∀ n, P8676993965234657329.a n = A336652 (n + 1)

theorem P8676993965234657329.correct : P8676993965234657329.Spec := by
  intro n
  simp only [A336652, Nat.add_sub_cancel]

end A336652

/-! ## A336652.P17637309515524537469

`A204455(n+1)*A336649(n+1)`
-/

namespace A336652.P17637309515524537469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (n + 1) * A336649 (n + 1)

end

end A336652.P17637309515524537469

namespace A336652

/-- `A204455(n+1)*A336649(n+1)` -/
def P17637309515524537469.Spec : Prop :=
  ∀ n, P17637309515524537469.a n = A336652 (n + 1)

end A336652

/-! ## A336652.P5419287937268481893

`A057723((n+1)/2^val(n+1, 2))`
-/

namespace A336652.P5419287937268481893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A336652.P5419287937268481893

namespace A336652

/-- `A057723((n+1)/2^val(n+1, 2))` -/
def P5419287937268481893.Spec : Prop :=
  ∀ n, P5419287937268481893.a n = A336652 (n + 1)

end A336652

/-! ## A336652.P693305186634176387

`A057723((n+1)/A006519(n+1))`
-/

namespace A336652.P693305186634176387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A336652.P693305186634176387

namespace A336652

/-- `A057723((n+1)/A006519(n+1))` -/
def P693305186634176387.Spec : Prop :=
  ∀ n, P693305186634176387.a n = A336652 (n + 1)

end A336652

/-! ## A336652.P6995391886791005695

`A099985(n+1)/2*A336649(n+1)`
-/

namespace A336652.P6995391886791005695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099985 (n + 1) : ℚ) / 2 * (A336649 (n + 1) : ℚ)

end

end A336652.P6995391886791005695

namespace A336652

/-- `A099985(n+1)/2*A336649(n+1)` -/
def P6995391886791005695.Spec : Prop :=
  ∀ n, P6995391886791005695.a n = (A336652 (n + 1) : ℚ)

end A336652

/-! ## A336652.P4371806912345210467

`A007947(2*(n+1))*A336649(n+1)/2`
-/

namespace A336652.P4371806912345210467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (2 * (n + 1)) * A336649 (n + 1) : ℚ) / 2

end

end A336652.P4371806912345210467

namespace A336652

/-- `A007947(2*(n+1))*A336649(n+1)/2` -/
def P4371806912345210467.Spec : Prop :=
  ∀ n, P4371806912345210467.a n = (A336652 (n + 1) : ℚ)

end A336652

/-! ## A336652.P13102293168581797414

`A007947(A000265(n+1))*A336649(n+1)`
-/

namespace A336652.P13102293168581797414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000265 (n + 1)).toNat * A336649 (n + 1)

end

end A336652.P13102293168581797414

namespace A336652

/-- `A007947(A000265(n+1))*A336649(n+1)` -/
def P13102293168581797414.Spec : Prop :=
  ∀ n, P13102293168581797414.a n = A336652 (n + 1)

end A336652

/-! ## A336652.P14096963089907832946

`A000265(A099985(n+1))*A336649(n+1)`
-/

namespace A336652.P14096963089907832946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A099985 (n + 1)).toNat * A336649 (n + 1)

end

end A336652.P14096963089907832946

namespace A336652

/-- `A000265(A099985(n+1))*A336649(n+1)` -/
def P14096963089907832946.Spec : Prop :=
  ∀ n, P14096963089907832946.a n = A336652 (n + 1)

end A336652

/-! ## A336652.P16655151115115215430

`A106609(A007947(n+1))*A336649(n+1)`
-/

namespace A336652.P16655151115115215430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A007947 (n + 1)).toNat * A336649 (n + 1)

end

end A336652.P16655151115115215430

namespace A336652

/-- `A106609(A007947(n+1))*A336649(n+1)` -/
def P16655151115115215430.Spec : Prop :=
  ∀ n, P16655151115115215430.a n = A336652 (n + 1)

end A336652

/-! ## A336652.P988760373942861302

`A204455(n+1)*A335341(A000265(n+1))`
-/

namespace A336652.P988760373942861302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (n + 1) * A335341 (A000265 (n + 1)).toNat

end

end A336652.P988760373942861302

namespace A336652

/-- `A204455(n+1)*A335341(A000265(n+1))` -/
def P988760373942861302.Spec : Prop :=
  ∀ n, P988760373942861302.a n = A336652 (n + 1)

end A336652

/-! ## A336652.P8602770289797289443

`A000203(A336651(n+1))*A204455(n+1)`
-/

namespace A336652.P8602770289797289443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A336651 (n + 1)).toNat * A204455 (n + 1)

end

end A336652.P8602770289797289443

namespace A336652

/-- `A000203(A336651(n+1))*A204455(n+1)` -/
def P8602770289797289443.Spec : Prop :=
  ∀ n, P8602770289797289443.a n = A336652 (n + 1)

end A336652

/-! ## A336652.P8884717703167818485

`A057723(A204455(n+1)*A336651(n+1))`
-/

namespace A336652.P8884717703167818485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (A204455 (n + 1) * A336651 (n + 1)).toNat

end

end A336652.P8884717703167818485

namespace A336652

/-- `A057723(A204455(n+1)*A336651(n+1))` -/
def P8884717703167818485.Spec : Prop :=
  ∀ n, P8884717703167818485.a n = A336652 (n + 1)

end A336652

/-! ## A336652.P7890034425381777249

`A000593(2*A336651(n+1))*A204455(n+1)`
-/

namespace A336652.P7890034425381777249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (2 * A336651 (n + 1)).toNat * A204455 (n + 1)

end

end A336652.P7890034425381777249

namespace A336652

/-- `A000593(2*A336651(n+1))*A204455(n+1)` -/
def P7890034425381777249.Spec : Prop :=
  ∀ n, P7890034425381777249.a n = A336652 (n + 1)

end A336652

/-! ## A336652.P7835259438016380506

`A099985(n+1)/2*A000593(A336651(n+1))`
-/

namespace A336652.P7835259438016380506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099985 (n + 1) : ℚ) / 2 * (A000593 (A336651 (n + 1)).toNat : ℚ)

end

end A336652.P7835259438016380506

namespace A336652

/-- `A099985(n+1)/2*A000593(A336651(n+1))` -/
def P7835259438016380506.Spec : Prop :=
  ∀ n, P7835259438016380506.a n = (A336652 (n + 1) : ℚ)

end A336652

/-! ## A336652.P7789623454054477219

`A057723(A099985(n+1)/2*A336651(n+1))`
-/

namespace A336652.P7789623454054477219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (SequenceMachineLib.roundAway ((A099985 (n + 1) : ℚ) / 2 * (A336651 (n + 1) : ℚ))).toNat

end

end A336652.P7789623454054477219

namespace A336652

/-- `A057723(A099985(n+1)/2*A336651(n+1))` -/
def P7789623454054477219.Spec : Prop :=
  ∀ n, P7789623454054477219.a n = A336652 (n + 1)

end A336652

/-! ## A336652.P12593010865286974393

`A000265(n+1)/A062570(n+1)*A384056(n+1)`
-/

namespace A336652.P12593010865286974393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A062570 (n + 1) : ℚ) * (A384056 (n + 1) : ℚ)

end

end A336652.P12593010865286974393

namespace A336652

/-- `A000265(n+1)/A062570(n+1)*A384056(n+1)` -/
def P12593010865286974393.Spec : Prop :=
  ∀ n, P12593010865286974393.a n = (A336652 (n + 1) : ℚ)

end A336652

/-! ## A336652.P8526354887135577774

`A000265(n+1)*A336649(n+1)/A336651(n+1)`
-/

namespace A336652.P8526354887135577774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) * A336649 (n + 1) : ℚ) / (A336651 (n + 1) : ℚ)

end

end A336652.P8526354887135577774

namespace A336652

/-- `A000265(n+1)*A336649(n+1)/A336651(n+1)` -/
def P8526354887135577774.Spec : Prop :=
  ∀ n, P8526354887135577774.a n = (A336652 (n + 1) : ℚ)

end A336652

/-! ## A336652.P7976292271363923377

`A204455(n+1)*A335341(A204455(n+1)*A336651(n+1))`
-/

namespace A336652.P7976292271363923377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (n + 1) * A335341 (A204455 (n + 1) * A336651 (n + 1)).toNat

end

end A336652.P7976292271363923377

namespace A336652

/-- `A204455(n+1)*A335341(A204455(n+1)*A336651(n+1))` -/
def P7976292271363923377.Spec : Prop :=
  ∀ n, P7976292271363923377.a n = A336652 (n + 1)

end A336652

/-! ## A336652.P9631584994258657026

`A057723(A028234(2*(n+1)))`
-/

namespace A336652.P9631584994258657026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (A028234 (2 * (n + 1))).toNat

end

end A336652.P9631584994258657026

namespace A336652

/-- `A057723(A028234(2*(n+1)))` -/
def P9631584994258657026.Spec : Prop :=
  ∀ n, P9631584994258657026.a n = A336652 (n + 1)

end A336652

/-!
# A336653: First differences of A271215.

The programs for A336653, there is no canonical definition to state claims against.
-/

/-! ## A336653.P3038535647362588622

`A271215(n+1)-A271215(n)`
-/

namespace A336653.P3038535647362588622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271215 (n + 1) - A271215 n

end

end A336653.P3038535647362588622

/-! ## A336653.P687936521423515609

`Δ[A271215(n)]`
-/

namespace A336653.P687936521423515609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A336653.P687936521423515609

/-! ## A336653.P10307256294641158161

`Δ[(A278990(n)+A271218(n))/2]`
-/

namespace A336653.P10307256294641158161
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278990 n + A271218 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A336653.P10307256294641158161

/-!
# A336654: Numbers k such that lambda(k) is squarefree, where lambda is the Carmichael lambda function (A002322).

The programs for A336654, there is no canonical definition to state claims against.
-/

/-! ## A336654.P13945991434685017540

`eq[1, A003557(A002322(n+1))]+1`
-/

namespace A336654.P13945991434685017540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A002322 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336654.P13945991434685017540

/-! ## A336654.P17541453270725344354

`eq[A002322(n+1), A080400(n+1)]+1`
-/

namespace A336654.P17541453270725344354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336654.P17541453270725344354

/-! ## A336654.P12891644438268516829

`eq[A002322(n+1), A007947(A011773(n+1))]+1`
-/

namespace A336654.P12891644438268516829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A011773 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336654.P12891644438268516829

/-! ## A336654.P9415463043056536155

`eq[A003557(A000010(n+1)), A034380(n+1)]+1`
-/

namespace A336654.P9415463043056536155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336654.P9415463043056536155

/-! ## A336654.P15739800639693352928

`record[(n+1)/A239062(A134198(n+1)-A051903(n+1))]`
-/

namespace A336654.P15739800639693352928
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A239062 (A134198 (n + 1) - A051903 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336654.P15739800639693352928

/-!
# A336655: Odd numbers k such that the multiplicative order of 2 modulo k is squarefree.

The programs for A336655, there is no canonical definition to state claims against.
-/

/-! ## A336655.P1111500168817025056

`record[lcm(2*n+1, A008683(A055388(n+1)))]`
-/

namespace A336655.P1111500168817025056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A008683 (A055388 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336655.P1111500168817025056

/-! ## A336655.P1769024583749710242

`A005408(eq[1, A078461(A053447(n))])`
-/

namespace A336655.P1769024583749710242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078461 (A053447 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336655.P1769024583749710242

/-! ## A336655.P1950951923400497383

`record[A005408(n)/A072411(A002326(n))]`
-/

namespace A336655.P1950951923400497383
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n : ℚ) / (A072411 (A002326 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336655.P1950951923400497383

/-! ## A336655.P17943187568613241814

`record[A000265(n+1)*A008966(A007733(n+1))]`
-/

namespace A336655.P17943187568613241814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A008966 (A007733 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336655.P17943187568613241814

/-! ## A336655.P14209877487829095524

`record[A008966(A054703(n+1))*A132740(n+1)]`
-/

namespace A336655.P14209877487829095524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A054703 (n + 1)).toNat * A132740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336655.P14209877487829095524

/-! ## A336655.P10897104599557312027

`record[A000265(n+1)/A003557(A054703(n+1))]`
-/

namespace A336655.P10897104599557312027
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A003557 (A054703 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336655.P10897104599557312027

/-! ## A336655.P15545095025823533713

`record[A132740(n+1)/A000188(A007733(n+1))]`
-/

namespace A336655.P15545095025823533713
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132740 (n + 1) : ℚ) / (A000188 (A007733 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336655.P15545095025823533713

/-!
# A336656: Numbers k not divisible by 3 such that the multiplicative order of 3 modulo k is squarefree.

The programs for A336656, there is no canonical definition to state claims against.
-/

/-! ## A336656.P3113000953974682953

`record[A001651(n+1)/A003557(A053446(n+1))]`
-/

namespace A336656.P3113000953974682953
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001651 (n + 1) : ℚ) / (A003557 (A053446 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336656.P3113000953974682953

/-! ## A336656.P11732017179435876499

`record[A008966(A007734(n+1))*A038502(n+1)]`
-/

namespace A336656.P11732017179435876499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A007734 (n + 1)).toNat * A038502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336656.P11732017179435876499

/-! ## A336656.P16439461559267972140

`lt[A026465(A157210(n)), A088424(n+1)]`
-/

namespace A336656.P16439461559267972140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (A157210 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088424 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336656.P16439461559267972140

/-!
# A336657: Numbers k such that 2^k - 1 is divisible by the sum of the distinct primes dividing k (A008472).

The programs for A336657, there is no canonical definition to state claims against.
-/

/-! ## A336657.P5490707456716899017

`eq[4, A005811(ceil(3*(n/2)²))]`
-/

namespace A336657.P5490707456716899017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 ⌈3 * ((n : ℚ) / 2) ^ 2⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336657.P5490707456716899017

/-! ## A336657.P913736403182735113

`eq[5, A088748((n%2+3)*(n/2)²)]`
-/

namespace A336657.P913736403182735113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (SequenceMachineLib.roundAway (((n % 2 + 3 : ℕ) : ℚ) * ((n : ℚ) / 2) ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336657.P913736403182735113

/-! ## A336657.P4600039870541978096

`eq[5, A276273(A061925(n))]`
-/

namespace A336657.P4600039870541978096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276273 (A061925 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336657.P4600039870541978096

/-! ## A336657.P14164190751369330079

`eq[A005811(A077043(n)), A010702(2*n+3)]`
-/

namespace A336657.P14164190751369330079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A077043 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336657.P14164190751369330079

/-!
# A336658: Numbers k such that k and k+1 both have the prime signature (2,1,1,1) (A189982).

The programs for A336658, there is no canonical definition to state claims against.
-/

/-! ## A336658.P10514667852853948661

`∩[A140078(n+1), A274362(n+1)]`
-/

namespace A336658.P10514667852853948661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336658.P10514667852853948661

/-!
# A336659: a(n) is the maximal number of 1 X 1 squares in an arrangement of n squares, from 1 X 1 to n X n, where the squares are inside the n X n square.

The programs for A336659, there is no canonical definition to state claims against.
-/

/-! ## A336659.P6475550861190704800

`A238865(n)+A000120(A000588(n))`
-/

namespace A336659.P6475550861190704800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238865 n + A000120 (A000588 n).toNat

end

end A336659.P6475550861190704800

/-!
# A336660: a(n) is the maximal number of 1 X 1 squares in an arrangement of n squares, from 1 X 1 to n X n.

The programs for A336660, there is no canonical definition to state claims against.
-/

/-! ## A336660.P5695076739484997367

`A262502(n)+A029239(n)`
-/

namespace A336660.P5695076739484997367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262502 n + A029239 n

end

end A336660.P5695076739484997367

/-! ## A336660.P5388736986976974432

`∑[xor(A018819(n), A287170(n+1))]`
-/

namespace A336660.P5388736986976974432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A018819 n) (A287170 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336660.P5388736986976974432

/-! ## A336660.P16535519059218253405

`∑[xor(A018819(n), A086597(2*n+1))]`
-/

namespace A336660.P16535519059218253405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A018819 n) (A086597 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336660.P16535519059218253405

/-! ## A336660.P13099793241854964359

`A280799(A377436(3*n+2))+A049809(3*n+1)`
-/

namespace A336660.P13099793241854964359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280799 (A377436 (3 * n + 2)).toNat + A049809 (3 * n + 1)

end

end A336660.P13099793241854964359

/-! ## A336660.P9554191212446596160

`A252649(A187490(n+7))-n`
-/

namespace A336660.P9554191212446596160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252649 (A187490 (n + 7)).toNat - (n : ℤ)

end

end A336660.P9554191212446596160

/-!
# A336662: Number of n-step self-avoiding walks on the Manhattan lattice with no non-contiguous adjacencies.

The programs for A336662, there is no canonical definition to state claims against.
-/

/-! ## A336662.P4928760119430402408

`A322419(n+1)/2`
-/

namespace A336662.P4928760119430402408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322419 (n + 1) : ℚ) / 2

end

end A336662.P4928760119430402408

/-! ## A336662.P15762836540728131907

`Δ[∑[A322419(n)]/2]`
-/

namespace A336662.P15762836540728131907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322419 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A336662.P15762836540728131907

/-! ## A336662.P18227532687229917007

`record[A322419(abs(1-n))/2]`
-/

namespace A336662.P18227532687229917007
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322419 |1 - (n : ℤ)|.toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336662.P18227532687229917007

/-! ## A336662.P3973425818776068762

`floor(A322419(-xor(n, -1))/2)`
-/

namespace A336662.P3973425818776068762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A322419 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / 2⌋

end

end A336662.P3973425818776068762

/-! ## A336662.P5450679485107695612

`floor(A322419(abs(Δ[n²]-n))/2)`
-/

namespace A336662.P5450679485107695612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A322419 |(f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)|.toNat : ℚ) / 2⌋

end

end A336662.P5450679485107695612

/-!
# A336663: 2-Carmichael numbers: composite numbers n such that A^{n*(n-1)*(n+1)} = I for every matrix A from the group GL(2,Z/nZ).

The programs for A336663, there is no canonical definition to state claims against.
-/

/-! ## A336663.P7498475006226008115

`A130916(A285953(n+1)+A066016(2*n+5))`
-/

namespace A336663.P7498475006226008115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130916 (A285953 (n + 1) + A066016 (2 * n + 5)).toNat

end

end A336663.P7498475006226008115

/-! ## A336663.P5644285324189364470

`A219556(n+1)-A288858(A219557(n))`
-/

namespace A336663.P5644285324189364470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219556 (n + 1) - A288858 (A219557 n).toNat

end

end A336663.P5644285324189364470

/-! ## A336663.P7358005391092632450

`A326692(lt[A326670(n+1), A326730(n)])`
-/

namespace A336663.P7358005391092632450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326692 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A336663.P7358005391092632450

/-! ## A336663.P1342791485357064930

`eq[A069584(n+1), A104521(A243071(n+1))]`
-/

namespace A336663.P1342791485357064930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104521 (A243071 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336663.P1342791485357064930

/-! ## A336663.P206785807708894098

`lt[A000079(A087466(3*n+1)), A068346(n)]`
-/

namespace A336663.P206785807708894098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A087466 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336663.P206785807708894098

/-!
# A336664: Number of distinct divisors d of n with the property that d = (the number of nonnegative bases m < n such that m^k == m (mod n))/(the number of nonnegative bases m < n such that -m^k == m (mod n)) for some nonnegative k.

The programs for A336664, there is no canonical definition to state claims against.
-/

/-! ## A336664.P4979594147100410341

`A001221(A052126(n+1)²*A334101(n+1))`
-/

namespace A336664.P4979594147100410341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A052126 (n + 1) ^ 2 * A334101 (n + 1)).toNat

end

end A336664.P4979594147100410341

/-! ## A336664.P3004076672291135905

`A001221(A052126(n+1)*A334101(n+1)*A052126(n+1))`
-/

namespace A336664.P3004076672291135905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A052126 (n + 1) * A334101 (n + 1) * A052126 (n + 1)).toNat

end

end A336664.P3004076672291135905

/-! ## A336664.P4537446541664143494

`A331596(A241909(2*(n+1)))+floor(atan(n))`
-/

namespace A336664.P4537446541664143494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331596 (A241909 (2 * (n + 1))).toNat + ⌊Real.arctan (n : ℝ)⌋

end

end A336664.P4537446541664143494

/-! ## A336664.P1617743299567173756

`A014673(A122111(n+1)*A288469(n+1))`
-/

namespace A336664.P1617743299567173756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A122111 (n + 1) * A288469 (n + 1)).toNat

end

end A336664.P1617743299567173756

/-! ## A336664.P2757810551042908837

`A251139(A225449(n)+A052175(n))`
-/

namespace A336664.P2757810551042908837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251139 (A225449 n + A052175 n).toNat

end

end A336664.P2757810551042908837

/-!
# A336665: a(n) = (n!)^2 * [x^n] 1 / BesselJ(0,2*sqrt(x))^n.

The programs for A336665, there is no canonical definition to state claims against.
-/

/-! ## A336665.P13464711878643781388

`A340986(∑[4*n])`
-/

namespace A336665.P13464711878643781388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340986 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336665.P13464711878643781388

/-! ## A336665.P7553348677117775518

`or(A000035(n), A340986(A046092(n)))`
-/

namespace A336665.P7553348677117775518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A340986 (A046092 n).toNat)

end

end A336665.P7553348677117775518

/-! ## A336665.P5692226715060873622

`or(A129251(n+1), A340986(A046092(n)))`
-/

namespace A336665.P5692226715060873622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A129251 (n + 1)) (A340986 (A046092 n).toNat)

end

end A336665.P5692226715060873622

/-! ## A336665.P17208095921470781834

`A340986(A046092(n))+A001222(gcd(n, n+1))`
-/

namespace A336665.P17208095921470781834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340986 (A046092 n).toNat + A001222 (Nat.gcd n (n + 1))

end

end A336665.P17208095921470781834

/-! ## A336665.P3542014814369581074

`A340986(A046092(n))+A129251(A212855(n+1))`
-/

namespace A336665.P3542014814369581074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340986 (A046092 n).toNat + A129251 (A212855 (n + 1)).toNat

end

end A336665.P3542014814369581074

/-!
# A336668: Numbers with decimal expansion d_1, ..., d_w such that d_k = d*_{k + d_k} for k = 1..w where d* is the w-periodic sequence with initial terms d_1, ..., d_w.

The programs for A336668, there is no canonical definition to state claims against.
-/

/-! ## A336668.P9279631330396173702

`eq[n, A348179(n)]`
-/

namespace A336668.P9279631330396173702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348179 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336668.P9279631330396173702

/-! ## A336668.P2858601874895499796

`eq[n, A349422(n)]`
-/

namespace A336668.P2858601874895499796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349422 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336668.P2858601874895499796

/-! ## A336668.P10573862011752802084

`lt[A226158(A065031(n)), A321538(n)]`
-/

namespace A336668.P10573862011752802084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226158 (A065031 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336668.P10573862011752802084

/-! ## A336668.P11428671516793326090

`eq[A122458(n), A122458(A329200(n))]`
-/

namespace A336668.P11428671516793326090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 (A329200 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336668.P11428671516793326090

/-! ## A336668.P3405732136406180450

`eq[A152271(n), A152271(A329200(n))]`
-/

namespace A336668.P3405732136406180450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A329200 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336668.P3405732136406180450

/-!
# A336671: Unitary barely 3-abundant: numbers m such that 3 < usigma(m)/m < usigma(k)/k for all numbers k < m, where usigma is the sum of unitary divisors function (A034448).

The programs for A336671, there is no canonical definition to state claims against.
-/

/-! ## A336671.P8387092388468665728

`2*A335052(n+1)`
-/

namespace A336671.P8387092388468665728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A335052 (n + 1)

end

end A336671.P8387092388468665728

/-! ## A336671.P3581972924209204008

`lcm(2, A335052(A000027(n+1)))`
-/

namespace A336671.P3581972924209204008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A335052 (A000027 (n + 1)).toNat)

end

end A336671.P3581972924209204008

/-! ## A336671.P13291952482285548567

`lcm(A010696(n), A335052(n+1))`
-/

namespace A336671.P13291952482285548567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010696 n) (A335052 (n + 1))

end

end A336671.P13291952482285548567

/-! ## A336671.P12235693965712288555

`A335052(n+1)+A335052(Δ[n²]-n)`
-/

namespace A336671.P12235693965712288555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335052 (n + 1) + A335052 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A336671.P12235693965712288555

/-! ## A336671.P2199465879942815132

`A335052(A000027(n+1))+A000027(A335052(n+1))`
-/

namespace A336671.P2199465879942815132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335052 (A000027 (n + 1)).toNat + A000027 (A335052 (n + 1)).toNat

end

end A336671.P2199465879942815132

/-!
# A336672: Unitary barely 3-deficient numbers: numbers m such that usigma(k)/k < usigma(m)/m < 3 for all numbers k < m, where usigma is the sum of unitary divisors function (A034448).

The programs for A336672, there is no canonical definition to state claims against.
-/

/-! ## A336672.P16250289180617166829

`∏{p}[A331665(n+1)*A331680(2*n+1), #]`
-/

namespace A336672.P16250289180617166829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331665 (n + 1) * A331680 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A336672.P16250289180617166829

/-! ## A336672.P155027569890249771

`A114629(A088518(n))+A002110(n)`
-/

namespace A336672.P155027569890249771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114629 (A088518 n).toNat + A002110 n

end

end A336672.P155027569890249771

/-!
# A336674: Number of positive terms of the Okounkov-Olshanski formula for the number of standard tableaux of skew shape (n+3,n+2,...,1)/(n-1,n-2,...,1).

The programs for A336674, there is no canonical definition to state claims against.
-/

/-! ## A336674.P15107032830603020364

`A102487(floor((2*n)^n/4)+2)`
-/

namespace A336674.P15107032830603020364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (⌊((2 * n) ^ n : ℚ) / 4⌋ + 2).toNat

end

end A336674.P15107032830603020364

/-!
# A336675: Number of paths of length n starting at initial node of the path graph P_10.

The programs for A336675, the canonical program `A336675.P15240596404034707535` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336675 has offset 0).

The definition of A336675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336675.P15240596404034707535

`a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=6`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A336675

/-- `a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)+a(n-5)` -/
def P15240596404034707535.Spec : Prop :=
  ∀ n, P15240596404034707535.a n = A336675 n

theorem P15240596404034707535.correct : P15240596404034707535.Spec := by
  intro n
  simp only [A336675]

end A336675

/-! ## A336675.P7368230603034576009

`2*A122608(n+2)-A122608(n+4)`
-/

namespace A336675.P7368230603034576009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122608 (n + 2) - A122608 (n + 4)

end

end A336675.P7368230603034576009

namespace A336675

/-- `2*A122608(n+2)-A122608(n+4)` -/
def P7368230603034576009.Spec : Prop :=
  ∀ n, P7368230603034576009.a n = A336675 n

end A336675

/-! ## A336675.P18262704463464029564

`A153360(n+1)-A090994(n+1)`
-/

namespace A336675.P18262704463464029564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153360 (n + 1) - A090994 (n + 1)

end

end A336675.P18262704463464029564

namespace A336675

/-- `A153360(n+1)-A090994(n+1)` -/
def P18262704463464029564.Spec : Prop :=
  ∀ n, P18262704463464029564.a n = A336675 n

theorem P18262704463464029564.correct : P18262704463464029564.Spec := by
  intro n
  simp only [A336675, Nat.add_sub_cancel, A336675.P18262704463464029564.a, A336675.P15240596404034707535.a, A090994, A090994.P2804514858316128109.a, A153360, A153360.P9570591132759772216.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336675

/-! ## A336675.P11257371032307952896

`A068914(A167499(n+8)+4)`
-/

namespace A336675.P11257371032307952896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 (A167499 (n + 8) + 4).toNat

end

end A336675.P11257371032307952896

namespace A336675

/-- `A068914(A167499(n+8)+4)` -/
def P11257371032307952896.Spec : Prop :=
  ∀ n, P11257371032307952896.a n = A336675 n

end A336675

/-! ## A336675.P6127727469110496614

`A068914(A000096(n+8)+10)`
-/

namespace A336675.P6127727469110496614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 (A000096 (n + 8) + 10).toNat

end

end A336675.P6127727469110496614

namespace A336675

/-- `A068914(A000096(n+8)+10)` -/
def P6127727469110496614.Spec : Prop :=
  ∀ n, P6127727469110496614.a n = A336675 n

end A336675

/-! ## A336675.P9115975060339790454

`A068914(A000217(n+9)+9)`
-/

namespace A336675.P9115975060339790454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 (A000217 (n + 9) + 9).toNat

end

end A336675.P9115975060339790454

namespace A336675

/-- `A068914(A000217(n+9)+9)` -/
def P9115975060339790454.Spec : Prop :=
  ∀ n, P9115975060339790454.a n = A336675 n

end A336675

/-! ## A336675.P627737568526679802

`A223968(A007590(n)+n)`
-/

namespace A336675.P627737568526679802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223968 (A007590 n + (n : ℤ)).toNat

end

end A336675.P627737568526679802

namespace A336675

/-- `A223968(A007590(n)+n)` -/
def P627737568526679802.Spec : Prop :=
  ∀ n, P627737568526679802.a n = A336675 n

end A336675

/-!
# A336676: Irregular triangle read by rows: T(n, k) is the number of self-conjugate partitions of n into exactly k parts, for n >= 0 and 2*k - 1 <= n <= k^2.

The programs for A336676, there is no canonical definition to state claims against.
-/

/-! ## A336676.P13122421610230642814

`A080764(A077169(n)+A049598(n))`
-/

namespace A336676.P13122421610230642814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 (A077169 n + A049598 n).toNat

end

end A336676.P13122421610230642814

/-! ## A336676.P16932516844815701734

`A079559(A079559(2*n+3)*A196641(n+2))`
-/

namespace A336676.P16932516844815701734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 (A079559 (2 * n + 3) * A196641 (n + 2)).toNat

end

end A336676.P16932516844815701734

/-! ## A336676.P207476424810030411

`A344880(2*A095728(n+1)²)`
-/

namespace A336676.P207476424810030411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344880 (2 * A095728 (n + 1) ^ 2).toNat

end

end A336676.P207476424810030411

/-! ## A336676.P1488825066576681564

`A344880(A095727(n+1)²/2)`
-/

namespace A336676.P1488825066576681564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344880 (SequenceMachineLib.roundAway ((A095727 (n + 1) ^ 2 : ℚ) / 2)).toNat

end

end A336676.P1488825066576681564

/-! ## A336676.P15709514291599855191

`A344880(2*A095728(n+1)*A095728(n+1))`
-/

namespace A336676.P15709514291599855191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344880 (2 * A095728 (n + 1) * A095728 (n + 1)).toNat

end

end A336676.P15709514291599855191

/-!
# A336678: Number of paths of length n starting at initial node of the path graph P_11.

The programs for A336678, the canonical program `A336678.P4383231659580529622` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336678 has offset 0).

The definition of A336678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 351 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336678.P4383231659580529622

`A087944(A110654(n))/A000034(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A336678

/-- `A087944(A110654(n))/A000034(n)` -/
def P4383231659580529622.Spec : Prop :=
  ∀ n, P4383231659580529622.a n = (A336678 n : ℚ)

end A336678

/-! ## A336678.P15565902041148357449

`A153368(n+1)-A153368(n+2)/2`
-/

namespace A336678.P15565902041148357449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153368 (n + 1) : ℚ) - (A153368 (n + 2) : ℚ) / 2

end

end A336678.P15565902041148357449

namespace A336678

/-- `A153368(n+1)-A153368(n+2)/2` -/
def P15565902041148357449.Spec : Prop :=
  ∀ n, P15565902041148357449.a n = (A336678 n : ℚ)

end A336678

/-! ## A336678.P15132528575631122408

`A214846(A194274(n))`
-/

namespace A336678.P15132528575631122408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214846 (A194274 n).toNat

end

end A336678.P15132528575631122408

namespace A336678

/-- `A214846(A194274(n))` -/
def P15132528575631122408.Spec : Prop :=
  ∀ n, P15132528575631122408.a n = A336678 n

end A336678

/-! ## A336678.P3809923180773810596

`A214846(A007590(n+1))`
-/

namespace A336678.P3809923180773810596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214846 (A007590 (n + 1)).toNat

end

end A336678.P3809923180773810596

namespace A336678

/-- `A214846(A007590(n+1))` -/
def P3809923180773810596.Spec : Prop :=
  ∀ n, P3809923180773810596.a n = A336678 n

end A336678

/-! ## A336678.P1051243852185086274

`A214846(A080476(n+1))`
-/

namespace A336678.P1051243852185086274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214846 (A080476 (n + 1)).toNat

end

end A336678.P1051243852185086274

namespace A336678

/-- `A214846(A080476(n+1))` -/
def P1051243852185086274.Spec : Prop :=
  ∀ n, P1051243852185086274.a n = A336678 n

end A336678

/-! ## A336678.P4138248615651351792

`A068914(A000096(n+9)+11)`
-/

namespace A336678.P4138248615651351792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 (A000096 (n + 9) + 11).toNat

end

end A336678.P4138248615651351792

namespace A336678

/-- `A068914(A000096(n+9)+11)` -/
def P4138248615651351792.Spec : Prop :=
  ∀ n, P4138248615651351792.a n = A336678 n

end A336678

/-! ## A336678.P8021683086194203630

`A068914(A000217(n+11)-(n+1))`
-/

namespace A336678.P8021683086194203630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 (A000217 (n + 11) - (n + 1 : ℤ)).toNat

end

end A336678.P8021683086194203630

namespace A336678

/-- `A068914(A000217(n+11)-(n+1))` -/
def P8021683086194203630.Spec : Prop :=
  ∀ n, P8021683086194203630.a n = A336678 n

end A336678

/-! ## A336678.P10991234052808143679

`A068914(A167499(n+6)+A016789(n+10))`
-/

namespace A336678.P10991234052808143679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 (A167499 (n + 6) + A016789 (n + 10)).toNat

end

end A336678.P10991234052808143679

namespace A336678

/-- `A068914(A167499(n+6)+A016789(n+10))` -/
def P10991234052808143679.Spec : Prop :=
  ∀ n, P10991234052808143679.a n = A336678 n

end A336678

/-!
# A336679: Odd exponential abundant numbers whose exponential abundancy is closer to 2 than that of any smaller odd exponential abundant number.

The programs for A336679, there is no canonical definition to state claims against.
-/

/-! ## A336679.P11029862886455039113

`A335052(A043317(n+1))²`
-/

namespace A336679.P11029862886455039113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335052 (A043317 (n + 1)).toNat ^ 2

end

end A336679.P11029862886455039113

/-! ## A336679.P4146709271206635624

`A335052(A044914(n+1))²`
-/

namespace A336679.P4146709271206635624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335052 (A044914 (n + 1)).toNat ^ 2

end

end A336679.P4146709271206635624

/-! ## A336679.P10092802073715413149

`record[A335052(A289236(n+1))²]`
-/

namespace A336679.P10092802073715413149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335052 (A289236 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336679.P10092802073715413149

/-! ## A336679.P5824752926277577502

`record[A335052(A032436(n+3))²]`
-/

namespace A336679.P5824752926277577502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335052 (A032436 (n + 3)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336679.P5824752926277577502

/-! ## A336679.P17657777931248373137

`((A336671(n+1)/2)%A234671(n+1))²`
-/

namespace A336679.P17657777931248373137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A336671 (n + 1) : ℚ) / 2)) (A234671 (n + 1)) ^ 2

end

end A336679.P17657777931248373137

/-!
# A336680: Exponential admirable numbers: numbers k such that there is a proper exponential divisor d of k such that esigma(k) - 2*d = 2*k, where esigma is the sum of exponential divisors function (A051377).

The programs for A336680, there is no canonical definition to state claims against.
-/

/-! ## A336680.P4067597143214722494

`A129575(A188372(n+1)+A029576(n))`
-/

namespace A336680.P4067597143214722494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (A188372 (n + 1) + A029576 n).toNat

end

end A336680.P4067597143214722494

/-! ## A336680.P3110022010876817879

`A129575(lt[A107861(2*(n+1)), A003307(3*(n+1))])`
-/

namespace A336680.P3110022010876817879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107861 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003307 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A336680.P3110022010876817879

/-!
# A336682: a(n) is the number of iterations needed to reach a fixed point starting with n and repeatedly applying f(x) = x - (the product of the digits of x).

The programs for A336682, there is no canonical definition to state claims against.
-/

/-! ## A336682.P16351298186554294982

`A055640(A079475(n)%A141214(n))`
-/

namespace A336682.P16351298186554294982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (Int.tmod (A079475 n) (A141214 n)).toNat

end

end A336682.P16351298186554294982

/-! ## A336682.P1725353101944223339

`and(A033175(3*(n+1)), A055640(A079475(n)))`
-/

namespace A336682.P1725353101944223339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033175 (3 * (n + 1))) (A055640 (A079475 n).toNat)

end

end A336682.P1725353101944223339

/-! ## A336682.P13237644925515254436

`A327127((n-∑{digits}[n, #])^∏{digits}[n, ceil(#/9)])`
-/

namespace A336682.P13237644925515254436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327127 (SequenceMachineLib.roundAway (((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) : ℚ) ^ (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌈(x : ℚ) / 9⌉).prod : ℤ))).toNat

end

end A336682.P13237644925515254436

/-! ## A336682.P13960936052350589789

`A004426(A136400(n)^A132272(n))`
-/

namespace A336682.P13960936052350589789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (SequenceMachineLib.roundAway ((A136400 n : ℚ) ^ (A132272 n : ℤ))).toNat

end

end A336682.P13960936052350589789

/-!
# A336683: Sum of 2^k for all residues k found in the Fibonacci sequence mod n.

The programs for A336683, there is no canonical definition to state claims against.
-/

/-! ## A336683.P1152596614153028844

`2^(n+1)-A327564(A292236(n))`
-/

namespace A336683.P1152596614153028844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A327564 (A292236 (n + 10)).toNat

end

end A336683.P1152596614153028844

/-! ## A336683.P6179053419982169812

`2^(n+1)-A327564(A292235(n+9))`
-/

namespace A336683.P6179053419982169812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A327564 (A292235 (n + 9)).toNat

end

end A336683.P6179053419982169812

/-! ## A336683.P15235172072921130167

`A000079(n+1)-A368329(A099152(n))`
-/

namespace A336683.P15235172072921130167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A368329 (A099152 n).toNat

end

end A336683.P15235172072921130167

/-! ## A336683.P15716767082858550163

`or(A000041(2*n), A080098(A115086(n)))`
-/

namespace A336683.P15716767082858550163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000041 (2 * n)) (A080098 (A115086 n).toNat)

end

end A336683.P15716767082858550163

/-!
# A336684: Irregular triangle in which row n lists residues k found in the sequence Lucas(i) mod n.

The programs for A336684, there is no canonical definition to state claims against.
-/

/-! ## A336684.P16124541250901949005

`A002262(A063742(n+1)%A093571(n+1))`
-/

namespace A336684.P16124541250901949005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (Int.tmod (A063742 (n + 1)) (A093571 (n + 1))).toNat

end

end A336684.P16124541250901949005

/-! ## A336684.P6246423399520239057

`A002262(A245795(n)+n)`
-/

namespace A336684.P6246423399520239057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A245795 n + (n : ℤ)).toNat

end

end A336684.P6246423399520239057

/-!
# A336685: Sum of 2^k for residue k in among Lucas numbers mod n.

The programs for A336685, there is no canonical definition to state claims against.
-/

/-! ## A336685.P4096742645594188757

`A000079(n+1)-A174726(A099070(n+1))`
-/

namespace A336685.P4096742645594188757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A174726 (A099070 (n + 1)).toNat

end

end A336685.P4096742645594188757

/-! ## A336685.P5460912567918188443

`∑[2^n]-A096196(A096206(n))`
-/

namespace A336685.P5460912567918188443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A096196 (A096206 n).toNat

end

end A336685.P5460912567918188443

/-! ## A336685.P5501558878138549432

`A265705(A071797(2*n+5)+4^n)`
-/

namespace A336685.P5501558878138549432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265705 (A071797 (2 * n + 5) + (4 ^ n : ℤ)).toNat

end

end A336685.P5501558878138549432

/-! ## A336685.P120323444153297848

`A265705(A154638(n)+A001473(n+1))`
-/

namespace A336685.P120323444153297848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265705 (A154638 n + A001473 (n + 1)).toNat

end

end A336685.P120323444153297848

/-!
# A336687: Numbers m such that tau(sigma(m)) and sigma(tau(m)) both divide m, where tau(m) is the number of divisors function (A000005) and sigma(m) is the sum of divisors function (A000203).

The programs for A336687, there is no canonical definition to state claims against.
-/

/-! ## A336687.P8293738303697409828

`∩[A336612(n+1), A336613(n+1)]`
-/

namespace A336687.P8293738303697409828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336687.P8293738303697409828

/-! ## A336687.P15792346877987703970

`∩[eq[0, (n+1)%A062069(n+1)]+1, A336613(n+1)]`
-/

namespace A336687.P15792346877987703970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A062069 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A336687.P15792346877987703970

/-!
# A336688: Primes p such that the Wendt determinant A048954(p) has prime factors less than p.

The programs for A336688, there is no canonical definition to state claims against.
-/

/-! ## A336688.P18430683132960071445

`record[A039634(A004136(n+2))]`
-/

namespace A336688.P18430683132960071445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A004136 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336688.P18430683132960071445

/-! ## A336688.P4961964527297205307

`∩[A215809(n+1), A003424(n+1)]`
-/

namespace A336688.P4961964527297205307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336688.P4961964527297205307

/-!
# A336689: Composite numbers k such that the decimal expansion of ((1/2^((k-1)/2))+1)/k or ((1/2^((k-1)/2))-1)/k is finite.

The programs for A336689, there is no canonical definition to state claims against.
-/

/-! ## A336689.P13093796049513264724

`∩[A063213(n+1), A334834(n+1)]`
-/

namespace A336689.P13093796049513264724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336689.P13093796049513264724

/-! ## A336689.P13304318612060912505

`∩[A187715(n+1), A334834(n+1)]`
-/

namespace A336689.P13304318612060912505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336689.P13304318612060912505

/-! ## A336689.P9099640935273720643

`∩[A305409(n+1), A334834(n+1)]`
-/

namespace A336689.P9099640935273720643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336689.P9099640935273720643

/-!
# A336691: Number of distinct prime factors of 1+sigma(n).

The programs for A336691, the canonical program `A336691.P11129231366609036283` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336691 has offset 1).

The definition of A336691 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336691.P11129231366609036283

`A001221(A088580(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A336691

/-- `A001221(A088580(n+1))` -/
def P11129231366609036283.Spec : Prop :=
  ∀ n, P11129231366609036283.a n = A336691 (n + 1)

theorem P11129231366609036283.correct : P11129231366609036283.Spec := by
  intro n
  simp only [A336691, Nat.add_sub_cancel]

end A336691

/-! ## A336691.P6796184293910107301

`A001221(1+A000203(n+1))`
-/

namespace A336691.P6796184293910107301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (1 + A000203 (n + 1)).toNat

end

end A336691.P6796184293910107301

namespace A336691

/-- `A001221(1+A000203(n+1))` -/
def P6796184293910107301.Spec : Prop :=
  ∀ n, P6796184293910107301.a n = A336691 (n + 1)

end A336691

/-! ## A336691.P11677497221643847054

`A001221(∑{d}[n+1, #]+1)`
-/

namespace A336691.P11677497221643847054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ d ∈ Nat.divisors (f1 n), d + 1)

end

end A336691.P11677497221643847054

namespace A336691

/-- `A001221(∑{d}[n+1, #]+1)` -/
def P11677497221643847054.Spec : Prop :=
  ∀ n, P11677497221643847054.a n = A336691 (n + 1)

end A336691

/-! ## A336691.P6283514685899365978

`A001221(A296092(n+1))`
-/

namespace A336691.P6283514685899365978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A296092 (n + 1)).toNat

end

end A336691.P6283514685899365978

namespace A336691

/-- `A001221(A296092(n+1))` -/
def P6283514685899365978.Spec : Prop :=
  ∀ n, P6283514685899365978.a n = A336691 (n + 1)

end A336691

/-! ## A336691.P673167147911015163

`A001221(Δ[A160664(n)]+1)`
-/

namespace A336691.P673167147911015163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n + 1).toNat

end

end A336691.P673167147911015163

namespace A336691

/-- `A001221(Δ[A160664(n)]+1)` -/
def P673167147911015163.Spec : Prop :=
  ∀ n, P673167147911015163.a n = A336691 (n + 1)

end A336691

/-! ## A336691.P8892684846731500928

`A001221(A039653(n+1)+2)`
-/

namespace A336691.P8892684846731500928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A039653 (n + 1) + 2).toNat

end

end A336691.P8892684846731500928

namespace A336691

/-- `A001221(A039653(n+1)+2)` -/
def P8892684846731500928.Spec : Prop :=
  ∀ n, P8892684846731500928.a n = A336691 (n + 1)

end A336691

/-! ## A336691.P18027161615959966882

`A001221(A155085(n+1)-n)`
-/

namespace A336691.P18027161615959966882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A155085 (n + 1) - (n : ℤ)).toNat

end

end A336691.P18027161615959966882

namespace A336691

/-- `A001221(A155085(n+1)-n)` -/
def P18027161615959966882.Spec : Prop :=
  ∀ n, P18027161615959966882.a n = A336691 (n + 1)

end A336691

/-! ## A336691.P187433236799770815

`∑{p}[A088580(n+1), A001222(#)]`
-/

namespace A336691.P187433236799770815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A336691.P187433236799770815

namespace A336691

/-- `∑{p}[A088580(n+1), A001222(#)]` -/
def P187433236799770815.Spec : Prop :=
  ∀ n, P187433236799770815.a n = A336691 (n + 1)

end A336691

/-! ## A336691.P6289562101505526883

`A001221(A245092(2*n+1)+1)`
-/

namespace A336691.P6289562101505526883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A245092 (2 * n + 1) + 1).toNat

end

end A336691.P6289562101505526883

namespace A336691

/-- `A001221(A245092(2*n+1)+1)` -/
def P6289562101505526883.Spec : Prop :=
  ∀ n, P6289562101505526883.a n = A336691 (n + 1)

end A336691

/-! ## A336691.P13973894618176637313

`A001221(A001065(n+1)+n+2)`
-/

namespace A336691.P13973894618176637313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001065 (n + 1) + (n + 2 : ℤ)).toNat

end

end A336691.P13973894618176637313

namespace A336691

/-- `A001221(A001065(n+1)+n+2)` -/
def P13973894618176637313.Spec : Prop :=
  ∀ n, P13973894618176637313.a n = A336691 (n + 1)

end A336691

/-! ## A336691.P435608303886440211

`∑{p}[A000203(n+1)+1, A001222(#)]`
-/

namespace A336691.P435608303886440211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A336691.P435608303886440211

namespace A336691

/-- `∑{p}[A000203(n+1)+1, A001222(#)]` -/
def P435608303886440211.Spec : Prop :=
  ∀ n, P435608303886440211.a n = A336691 (n + 1)

end A336691

/-! ## A336691.P14664206383963289994

`A001222(∏{p}[A000203(n+1)+1, #])`
-/

namespace A336691.P14664206383963289994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A336691.P14664206383963289994

namespace A336691

/-- `A001222(∏{p}[A000203(n+1)+1, #])` -/
def P14664206383963289994.Spec : Prop :=
  ∀ n, P14664206383963289994.a n = A336691 (n + 1)

end A336691

/-! ## A336691.P15866833858129267845

`∑{e}[A000203(n+1)+1, A318886(#)!]`
-/

namespace A336691.P15866833858129267845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (A318886 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A336691.P15866833858129267845

namespace A336691

/-- `∑{e}[A000203(n+1)+1, A318886(#)!]` -/
def P15866833858129267845.Spec : Prop :=
  ∀ n, (P15866833858129267845.a n : ℤ) = A336691 (n + 1)

end A336691

/-! ## A336691.P16675838137969814368

`A001221(A064987(n+1)/(n+1)+1)`
-/

namespace A336691.P16675838137969814368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ) + 1)).toNat

end

end A336691.P16675838137969814368

namespace A336691

/-- `A001221(A064987(n+1)/(n+1)+1)` -/
def P16675838137969814368.Spec : Prop :=
  ∀ n, P16675838137969814368.a n = A336691 (n + 1)

end A336691

/-! ## A336691.P13904350319880145562

`A001221(A178637(n+1)+A023888(n+1))`
-/

namespace A336691.P13904350319880145562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A178637 (n + 1) + A023888 (n + 1)).toNat

end

end A336691.P13904350319880145562

namespace A336691

/-- `A001221(A178637(n+1)+A023888(n+1))` -/
def P13904350319880145562.Spec : Prop :=
  ∀ n, P13904350319880145562.a n = A336691 (n + 1)

end A336691

/-! ## A336691.P3039827626077834979

`A001221(A167515(n+1)+A159077(n+1))`
-/

namespace A336691.P3039827626077834979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A167515 (n + 1) + A159077 (n + 1)).toNat

end

end A336691.P3039827626077834979

namespace A336691

/-- `A001221(A167515(n+1)+A159077(n+1))` -/
def P3039827626077834979.Spec : Prop :=
  ∀ n, P3039827626077834979.a n = A336691 (n + 1)

end A336691

/-! ## A336691.P9469904492635921132

`A001221(A325816(n+1)+A324213(n+1))`
-/

namespace A336691.P9469904492635921132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A325816 (n + 1) + A324213 (n + 1)).toNat

end

end A336691.P9469904492635921132

namespace A336691

/-- `A001221(A325816(n+1)+A324213(n+1))` -/
def P9469904492635921132.Spec : Prop :=
  ∀ n, P9469904492635921132.a n = A336691 (n + 1)

end A336691

/-! ## A336691.P11108064130310241309

`abs(A158210(A000203(n+1)+1))`
-/

namespace A336691.P11108064130310241309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158210 (A000203 (n + 1) + 1).toNat|

end

end A336691.P11108064130310241309

namespace A336691

/-- `abs(A158210(A000203(n+1)+1))` -/
def P11108064130310241309.Spec : Prop :=
  ∀ n, P11108064130310241309.a n = A336691 (n + 1)

end A336691

/-! ## A336691.P12813783654883523956

`A001221(A020725(A000203(n+1)))`
-/

namespace A336691.P12813783654883523956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A020725 (A000203 (n + 1)).toNat).toNat

end

end A336691.P12813783654883523956

namespace A336691

/-- `A001221(A020725(A000203(n+1)))` -/
def P12813783654883523956.Spec : Prop :=
  ∀ n, P12813783654883523956.a n = A336691 (n + 1)

end A336691

/-! ## A336691.P14511338286187388117

`A106404(A074400(n+1)+2)`
-/

namespace A336691.P14511338286187388117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (A074400 (n + 1) + 2).toNat

end

end A336691.P14511338286187388117

namespace A336691

/-- `A106404(A074400(n+1)+2)` -/
def P14511338286187388117.Spec : Prop :=
  ∀ n, P14511338286187388117.a n = A336691 (n + 1)

end A336691

/-!
# A336692: Binary weight of 1+sigma(n).

The programs for A336692, the canonical program `A336692.P11287356934966048330` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336692 has offset 1).

The definition of A336692 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336692.P11287356934966048330

`A000120(A088580(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A336692

/-- `A000120(A088580(n+1))` -/
def P11287356934966048330.Spec : Prop :=
  ∀ n, P11287356934966048330.a n = A336692 (n + 1)

theorem P11287356934966048330.correct : P11287356934966048330.Spec := by
  intro n
  simp only [A336692, Nat.add_sub_cancel]

end A336692

/-! ## A336692.P2596026595725902581

`A000120(A332459(n+1))`
-/

namespace A336692.P2596026595725902581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A332459 (n + 1)).toNat

end

end A336692.P2596026595725902581

namespace A336692

/-- `A000120(A332459(n+1))` -/
def P2596026595725902581.Spec : Prop :=
  ∀ n, P2596026595725902581.a n = A336692 (n + 1)

end A336692

/-! ## A336692.P16086571186466282704

`A000120(1+A000203(n+1))`
-/

namespace A336692.P16086571186466282704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (1 + A000203 (n + 1)).toNat

end

end A336692.P16086571186466282704

namespace A336692

/-- `A000120(1+A000203(n+1))` -/
def P16086571186466282704.Spec : Prop :=
  ∀ n, P16086571186466282704.a n = A336692 (n + 1)

end A336692

/-! ## A336692.P15147226400578813702

`A001222(A001316(A000203(n+1)+1))`
-/

namespace A336692.P15147226400578813702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (A000203 (n + 1) + 1).toNat).toNat

end

end A336692.P15147226400578813702

namespace A336692

/-- `A001222(A001316(A000203(n+1)+1))` -/
def P15147226400578813702.Spec : Prop :=
  ∀ n, P15147226400578813702.a n = A336692 (n + 1)

end A336692

/-! ## A336692.P18236030086677307996

`A000120(∑{d}[n+1, #]+1)`
-/

namespace A336692.P18236030086677307996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (∑ d ∈ Nat.divisors (f1 n), d + 1)

end

end A336692.P18236030086677307996

namespace A336692

/-- `A000120(∑{d}[n+1, #]+1)` -/
def P18236030086677307996.Spec : Prop :=
  ∀ n, P18236030086677307996.a n = A336692 (n + 1)

end A336692

/-! ## A336692.P4417322512283259258

`A000120(Δ[A160664(n)]+1)`
-/

namespace A336692.P4417322512283259258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (n + 1) - f1 n + 1).toNat

end

end A336692.P4417322512283259258

namespace A336692

/-- `A000120(Δ[A160664(n)]+1)` -/
def P4417322512283259258.Spec : Prop :=
  ∀ n, P4417322512283259258.a n = A336692 (n + 1)

end A336692

/-! ## A336692.P15137432518141654609

`A000120(A039653(n+1)+2)`
-/

namespace A336692.P15137432518141654609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A039653 (n + 1) + 2).toNat

end

end A336692.P15137432518141654609

namespace A336692

/-- `A000120(A039653(n+1)+2)` -/
def P15137432518141654609.Spec : Prop :=
  ∀ n, P15137432518141654609.a n = A336692 (n + 1)

end A336692

/-! ## A336692.P12292260032752428068

`A063787(A000203(n+1)+2)-1`
-/

namespace A336692.P12292260032752428068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (A000203 (n + 1) + 2).toNat - 1

end

end A336692.P12292260032752428068

namespace A336692

/-- `A063787(A000203(n+1)+2)-1` -/
def P12292260032752428068.Spec : Prop :=
  ∀ n, P12292260032752428068.a n = A336692 (n + 1)

end A336692

/-! ## A336692.P1005136286077394990

`A000120(A245092(2*n+1)+1)`
-/

namespace A336692.P1005136286077394990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A245092 (2 * n + 1) + 1).toNat

end

end A336692.P1005136286077394990

namespace A336692

/-- `A000120(A245092(2*n+1)+1)` -/
def P1005136286077394990.Spec : Prop :=
  ∀ n, P1005136286077394990.a n = A336692 (n + 1)

end A336692

/-! ## A336692.P1978767570177914622

`A000120(A074400(n+1)/2+1)`
-/

namespace A336692.P1978767570177914622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A336692.P1978767570177914622

namespace A336692

/-- `A000120(A074400(n+1)/2+1)` -/
def P1978767570177914622.Spec : Prop :=
  ∀ n, P1978767570177914622.a n = A336692 (n + 1)

end A336692

/-! ## A336692.P1319303291838436167

`A000120(A001065(n+1)+2+n)`
-/

namespace A336692.P1319303291838436167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001065 (n + 1) + 2 + (n : ℤ)).toNat

end

end A336692.P1319303291838436167

namespace A336692

/-- `A000120(A001065(n+1)+2+n)` -/
def P1319303291838436167.Spec : Prop :=
  ∀ n, P1319303291838436167.a n = A336692 (n + 1)

theorem P1319303291838436167.correct : P1319303291838436167.Spec := by
  intro n
  simp only [A336692, Nat.add_sub_cancel, A336692.P1319303291838436167.a, A336692.P11287356934966048330.a, A000120, A000120.P2816527436160941581.a, A001065, A001065.P4097147489331274860.a, A088580, A088580.P3089093194242277422.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336692

/-! ## A336692.P7124748348663492266

`A000005(A048896(A000203(n+1)))`
-/

namespace A336692.P7124748348663492266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A048896 (A000203 (n + 1)).toNat).toNat

end

end A336692.P7124748348663492266

namespace A336692

/-- `A000005(A048896(A000203(n+1)))` -/
def P7124748348663492266.Spec : Prop :=
  ∀ n, P7124748348663492266.a n = A336692 (n + 1)

end A336692

/-! ## A336692.P9757406307471711413

`A000120(A034448(n+1)+A048146(n+1)+1)`
-/

namespace A336692.P9757406307471711413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A034448 (n + 1) + (A048146 (n + 1) + 1)).toNat

end

end A336692.P9757406307471711413

namespace A336692

/-- `A000120(A034448(n+1)+A048146(n+1)+1)` -/
def P9757406307471711413.Spec : Prop :=
  ∀ n, P9757406307471711413.a n = A336692 (n + 1)

end A336692

/-! ## A336692.P1723991344842462045

`A000120(A050449(n+1)+A082052(n+1)+1)`
-/

namespace A336692.P1723991344842462045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A050449 (n + 1) + (A082052 (n + 1) + 1)).toNat

end

end A336692.P1723991344842462045

namespace A336692

/-- `A000120(A050449(n+1)+A082052(n+1)+1)` -/
def P1723991344842462045.Spec : Prop :=
  ∀ n, P1723991344842462045.a n = A336692 (n + 1)

theorem P1723991344842462045.correct : P1723991344842462045.Spec := by
  intro n
  simp only [A336692, Nat.add_sub_cancel, A336692.P1723991344842462045.a, A336692.P11287356934966048330.a, A000120, A000120.P2816527436160941581.a, A050449, A050449.P3812122387069373176.f1, A050449.P3812122387069373176.a, A082052, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A088580, A088580.P3089093194242277422.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005187, A005187.P3874015513960485494.a, A166486, A166486.P13501783531280266850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336692

/-! ## A336692.P3849360304806060181

`A000120(A070038(n+1)+A070039(n+1)+1)`
-/

namespace A336692.P3849360304806060181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A070038 (n + 1) + (A070039 (n + 1) + 1)).toNat

end

end A336692.P3849360304806060181

namespace A336692

/-- `A000120(A070038(n+1)+A070039(n+1)+1)` -/
def P3849360304806060181.Spec : Prop :=
  ∀ n, P3849360304806060181.a n = A336692 (n + 1)

end A336692

/-! ## A336692.P13747900853528747782

`A000120(A000593(n+1)+A146076(n+1)+1)`
-/

namespace A336692.P13747900853528747782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000593 (n + 1) + (A146076 (n + 1) + 1)).toNat

end

end A336692.P13747900853528747782

namespace A336692

/-- `A000120(A000593(n+1)+A146076(n+1)+1)` -/
def P13747900853528747782.Spec : Prop :=
  ∀ n, P13747900853528747782.a n = A336692 (n + 1)

end A336692

/-! ## A336692.P9137380861993135057

`A000120(A079667(n+1)+A117004(n+1)+1)`
-/

namespace A336692.P9137380861993135057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A079667 (n + 1) + (A117004 (n + 1) + 1)).toNat

end

end A336692.P9137380861993135057

namespace A336692

/-- `A000120(A079667(n+1)+A117004(n+1)+1)` -/
def P9137380861993135057.Spec : Prop :=
  ∀ n, P9137380861993135057.a n = A336692 (n + 1)

end A336692

/-! ## A336692.P15478628329857237393

`A000120(A011772(n+1)+A344765(n+1)+1)`
-/

namespace A336692.P15478628329857237393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A011772 (n + 1) + (A344765 (n + 1) + 1)).toNat

end

end A336692.P15478628329857237393

namespace A336692

/-- `A000120(A011772(n+1)+A344765(n+1)+1)` -/
def P15478628329857237393.Spec : Prop :=
  ∀ n, P15478628329857237393.a n = A336692 (n + 1)

end A336692

/-! ## A336692.P11874095405417327856

`A000120(A227873(n+1)+A260934(n+1)+1)`
-/

namespace A336692.P11874095405417327856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A227873 (n + 1) + (A260934 (n + 1) + 1)).toNat

end

end A336692.P11874095405417327856

namespace A336692

/-- `A000120(A227873(n+1)+A260934(n+1)+1)` -/
def P11874095405417327856.Spec : Prop :=
  ∀ n, P11874095405417327856.a n = A336692 (n + 1)

theorem P11874095405417327856.correct : P11874095405417327856.Spec := by
  intro n
  simp only [A336692, Nat.add_sub_cancel, A336692.P11874095405417327856.a, A336692.P11287356934966048330.a, A000120, A000120.P2816527436160941581.a, A088580, A088580.P3089093194242277422.a, A227873, A227873.P5669908514505112701.f1, A227873.P5669908514505112701.a, A260934, A260934.P7552531157136623072.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005187, A005187.P3874015513960485494.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336692

/-! ## A336692.P11488607027358592706

`A000120(A324121(n+1)+A324122(n+1)+1)`
-/

namespace A336692.P11488607027358592706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A324121 (n + 1) + (A324122 (n + 1) + 1)).toNat

end

end A336692.P11488607027358592706

namespace A336692

/-- `A000120(A324121(n+1)+A324122(n+1)+1)` -/
def P11488607027358592706.Spec : Prop :=
  ∀ n, P11488607027358592706.a n = A336692 (n + 1)

theorem P11488607027358592706.correct : P11488607027358592706.Spec := by
  intro n
  simp only [A336692, Nat.add_sub_cancel, A336692.P11488607027358592706.a, A336692.P11287356934966048330.a, A000120, A000120.P2816527436160941581.a, A088580, A088580.P3089093194242277422.a, A324121, A324121.P5058798757553332466.a, A324122, A324122.P6437590254037711062.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005187, A005187.P3874015513960485494.a, A038040, A038040.P16512896840577774730.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336692

/-!
# A336693: Period of binary representation of 1/(1+sigma(n)).

The programs for A336693, there is no canonical definition to state claims against.
-/

/-! ## A336693.P9404304840235232276

`A007733(A088580(n+1))`
-/

namespace A336693.P9404304840235232276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A088580 (n + 1)).toNat

end

end A336693.P9404304840235232276

/-! ## A336693.P10187985868516268339

`A007733(A332459(n+1))`
-/

namespace A336693.P10187985868516268339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A332459 (n + 1)).toNat

end

end A336693.P10187985868516268339

/-! ## A336693.P11655450125939459328

`A007733(1+A000203(n+1))`
-/

namespace A336693.P11655450125939459328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (1 + A000203 (n + 1)).toNat

end

end A336693.P11655450125939459328

/-! ## A336693.P7606409575179760390

`A007733(∑{d}[n+1, #]+1)`
-/

namespace A336693.P7606409575179760390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (∑ d ∈ Nat.divisors (f1 n), d + 1)

end

end A336693.P7606409575179760390

/-! ## A336693.P2069609964526547756

`A007733(Δ[A160664(n)]+1)`
-/

namespace A336693.P2069609964526547756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (f1 (n + 1) - f1 n + 1).toNat

end

end A336693.P2069609964526547756

/-! ## A336693.P3579037427000025478

`A007733(A245092(2*n+1)+1)`
-/

namespace A336693.P3579037427000025478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A245092 (2 * n + 1) + 1).toNat

end

end A336693.P3579037427000025478

/-! ## A336693.P18413222021702610923

`A007733(A001065(n+1)+2+n)`
-/

namespace A336693.P18413222021702610923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A001065 (n + 1) + 2 + (n : ℤ)).toNat

end

end A336693.P18413222021702610923

/-! ## A336693.P7768508049868750751

`A007733(A002659(n+1)+3)`
-/

namespace A336693.P7768508049868750751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A002659 (n + 1) + 3).toNat

end

end A336693.P7768508049868750751

/-!
# A336694: a(n) = A329697(1+sigma(n)), where A329697 is totally additive with a(2) = 0 and a(p) = 1 + a(p-1) for odd primes.

The programs for A336694, the canonical program `A336694.P7841874870777716447` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336694 has offset 1).

The definition of A336694 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329697, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336694.P3622531014274562142

`A329697(A088580(n+1))`
-/

namespace A336694.P3622531014274562142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A088580 (n + 1)).toNat

end

end A336694.P3622531014274562142

namespace A336694

/-- `A329697(A088580(n+1))` -/
def P3622531014274562142.Spec : Prop :=
  ∀ n, P3622531014274562142.a n = A336694 (n + 1)

end A336694

/-! ## A336694.P4441704176219419147

`A329697(A332459(n+1))`
-/

namespace A336694.P4441704176219419147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A332459 (n + 1)).toNat

end

end A336694.P4441704176219419147

namespace A336694

/-- `A329697(A332459(n+1))` -/
def P4441704176219419147.Spec : Prop :=
  ∀ n, P4441704176219419147.a n = A336694 (n + 1)

end A336694

/-! ## A336694.P7841874870777716447

`A329697(1+A000203(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A336694

/-- `A329697(1+A000203(n+1))` -/
def P7841874870777716447.Spec : Prop :=
  ∀ n, P7841874870777716447.a n = A336694 (n + 1)

theorem P7841874870777716447.correct : P7841874870777716447.Spec := by
  intro n
  simp only [A336694, Nat.add_sub_cancel]

end A336694

/-! ## A336694.P17489078502783562086

`A329697(∑{d}[n+1, #]+1)`
-/

namespace A336694.P17489078502783562086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (∑ d ∈ Nat.divisors (f1 n), d + 1)

end

end A336694.P17489078502783562086

namespace A336694

/-- `A329697(∑{d}[n+1, #]+1)` -/
def P17489078502783562086.Spec : Prop :=
  ∀ n, P17489078502783562086.a n = A336694 (n + 1)

end A336694

/-! ## A336694.P18413231956591775659

`A329697(Δ[A160664(n)]+1)`
-/

namespace A336694.P18413231956591775659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (f1 (n + 1) - f1 n + 1).toNat

end

end A336694.P18413231956591775659

namespace A336694

/-- `A329697(Δ[A160664(n)]+1)` -/
def P18413231956591775659.Spec : Prop :=
  ∀ n, P18413231956591775659.a n = A336694 (n + 1)

end A336694

/-! ## A336694.P7486512668457846882

`A329697(A039653(n+1)+2)`
-/

namespace A336694.P7486512668457846882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A039653 (n + 1) + 2).toNat

end

end A336694.P7486512668457846882

namespace A336694

/-- `A329697(A039653(n+1)+2)` -/
def P7486512668457846882.Spec : Prop :=
  ∀ n, P7486512668457846882.a n = A336694 (n + 1)

end A336694

/-! ## A336694.P10786963933081497567

`A329697(sqrt(A072861(n+1))+1)`
-/

namespace A336694.P10786963933081497567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ) + 1)).toNat

end

end A336694.P10786963933081497567

namespace A336694

/-- `A329697(sqrt(A072861(n+1))+1)` -/
def P10786963933081497567.Spec : Prop :=
  ∀ n, P10786963933081497567.a n = A336694 (n + 1)

end A336694

/-! ## A336694.P9139822522888503130

`A329697(A074400(n+1)/2+1)`
-/

namespace A336694.P9139822522888503130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A336694.P9139822522888503130

namespace A336694

/-- `A329697(A074400(n+1)/2+1)` -/
def P9139822522888503130.Spec : Prop :=
  ∀ n, P9139822522888503130.a n = A336694 (n + 1)

end A336694

/-! ## A336694.P7479401214511388949

`A329697(A074400(n+1)+2)`
-/

namespace A336694.P7479401214511388949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A074400 (n + 1) + 2).toNat

end

end A336694.P7479401214511388949

namespace A336694

/-- `A329697(A074400(n+1)+2)` -/
def P7479401214511388949.Spec : Prop :=
  ∀ n, P7479401214511388949.a n = A336694 (n + 1)

end A336694

/-! ## A336694.P3409710124917151487

`A329697(A239050(n+1)/2+2)`
-/

namespace A336694.P3409710124917151487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (SequenceMachineLib.roundAway ((A239050 (n + 1) : ℚ) / 2 + 2)).toNat

end

end A336694.P3409710124917151487

namespace A336694

/-- `A329697(A239050(n+1)/2+2)` -/
def P3409710124917151487.Spec : Prop :=
  ∀ n, P3409710124917151487.a n = A336694 (n + 1)

end A336694

/-!
# A336695: a(n) = A331410(1+sigma(n)), where A331410 is totally additive with a(2) = 0 and a(p) = 1 + a(p+1) for odd primes.

The programs for A336695, the canonical program `A336695.P1370634628440282469` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336695 has offset 1).

The definition of A336695 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331410, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336695.P13256628629462124910

`A331410(A088580(n+1))`
-/

namespace A336695.P13256628629462124910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A088580 (n + 1)).toNat

end

end A336695.P13256628629462124910

namespace A336695

/-- `A331410(A088580(n+1))` -/
def P13256628629462124910.Spec : Prop :=
  ∀ n, P13256628629462124910.a n = A336695 (n + 1)

end A336695

/-! ## A336695.P17359012754272562698

`A331410(A332459(n+1))`
-/

namespace A336695.P17359012754272562698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A332459 (n + 1)).toNat

end

end A336695.P17359012754272562698

namespace A336695

/-- `A331410(A332459(n+1))` -/
def P17359012754272562698.Spec : Prop :=
  ∀ n, P17359012754272562698.a n = A336695 (n + 1)

end A336695

/-! ## A336695.P1370634628440282469

`A331410(1+A000203(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A336695

/-- `A331410(1+A000203(n+1))` -/
def P1370634628440282469.Spec : Prop :=
  ∀ n, P1370634628440282469.a n = A336695 (n + 1)

theorem P1370634628440282469.correct : P1370634628440282469.Spec := by
  intro n
  simp only [A336695, Nat.add_sub_cancel]

end A336695

/-! ## A336695.P10516239032922746417

`A331410(∑{d}[n+1, #]+1)`
-/

namespace A336695.P10516239032922746417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (∑ d ∈ Nat.divisors (f1 n), d + 1)

end

end A336695.P10516239032922746417

namespace A336695

/-- `A331410(∑{d}[n+1, #]+1)` -/
def P10516239032922746417.Spec : Prop :=
  ∀ n, P10516239032922746417.a n = A336695 (n + 1)

end A336695

/-! ## A336695.P7896982350447470552

`A331410(A039653(n+1)+2)`
-/

namespace A336695.P7896982350447470552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A039653 (n + 1) + 2).toNat

end

end A336695.P7896982350447470552

namespace A336695

/-- `A331410(A039653(n+1)+2)` -/
def P7896982350447470552.Spec : Prop :=
  ∀ n, P7896982350447470552.a n = A336695 (n + 1)

end A336695

/-! ## A336695.P16643362695898102335

`A331410(A155085(n+1)-n)`
-/

namespace A336695.P16643362695898102335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A155085 (n + 1) - (n : ℤ)).toNat

end

end A336695.P16643362695898102335

namespace A336695

/-- `A331410(A155085(n+1)-n)` -/
def P16643362695898102335.Spec : Prop :=
  ∀ n, P16643362695898102335.a n = A336695 (n + 1)

end A336695

/-! ## A336695.P15861403580043629623

`A331410(A074400(n+1)/2+1)`
-/

namespace A336695.P15861403580043629623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A336695.P15861403580043629623

namespace A336695

/-- `A331410(A074400(n+1)/2+1)` -/
def P15861403580043629623.Spec : Prop :=
  ∀ n, P15861403580043629623.a n = A336695 (n + 1)

end A336695

/-! ## A336695.P16711290190419212162

`A331410(A001065(n+1)+2+n)`
-/

namespace A336695.P16711290190419212162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A001065 (n + 1) + 2 + (n : ℤ)).toNat

end

end A336695.P16711290190419212162

namespace A336695

/-- `A331410(A001065(n+1)+2+n)` -/
def P16711290190419212162.Spec : Prop :=
  ∀ n, P16711290190419212162.a n = A336695 (n + 1)

end A336695

/-! ## A336695.P17273680842608886258

`A331410(A051612(n+1)+A039649(n+1))`
-/

namespace A336695.P17273680842608886258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A051612 (n + 1) + A039649 (n + 1)).toNat

end

end A336695.P17273680842608886258

namespace A336695

/-- `A331410(A051612(n+1)+A039649(n+1))` -/
def P17273680842608886258.Spec : Prop :=
  ∀ n, P17273680842608886258.a n = A336695 (n + 1)

end A336695

/-! ## A336695.P12671783285664938530

`A331410(A000010(n+1)+A051612(n+1)+1)`
-/

namespace A336695.P12671783285664938530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A000010 (n + 1) + (A051612 (n + 1) + 1)).toNat

end

end A336695.P12671783285664938530

namespace A336695

/-- `A331410(A000010(n+1)+A051612(n+1)+1)` -/
def P12671783285664938530.Spec : Prop :=
  ∀ n, P12671783285664938530.a n = A336695 (n + 1)

end A336695

/-! ## A336695.P13782919108070362914

`A331410(A065387(n+1)+1-A000010(n+1))`
-/

namespace A336695.P13782919108070362914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A065387 (n + 1) + (1 - A000010 (n + 1))).toNat

end

end A336695.P13782919108070362914

namespace A336695

/-- `A331410(A065387(n+1)+1-A000010(n+1))` -/
def P13782919108070362914.Spec : Prop :=
  ∀ n, P13782919108070362914.a n = A336695 (n + 1)

end A336695

/-! ## A336695.P15571253664423358504

`A331410(A074400(n+1)+2)`
-/

namespace A336695.P15571253664423358504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A074400 (n + 1) + 2).toNat

end

end A336695.P15571253664423358504

namespace A336695

/-- `A331410(A074400(n+1)+2)` -/
def P15571253664423358504.Spec : Prop :=
  ∀ n, P15571253664423358504.a n = A336695 (n + 1)

end A336695

/-! ## A336695.P10666719413720219021

`A331410(A239050(n+1)/2+2)`
-/

namespace A336695.P10666719413720219021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (SequenceMachineLib.roundAway ((A239050 (n + 1) : ℚ) / 2 + 2)).toNat

end

end A336695.P10666719413720219021

namespace A336695

/-- `A331410(A239050(n+1)/2+2)` -/
def P10666719413720219021.Spec : Prop :=
  ∀ n, P10666719413720219021.a n = A336695 (n + 1)

end A336695

/-!
# A336696: Sum of odd divisors of 1+sigma(n).

The programs for A336696, the canonical program `A336696.P16809553901230215827` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336696 has offset 1).

The definition of A336696 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000593, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336696.P16809553901230215827

`A000593(A088580(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A336696

/-- `A000593(A088580(n+1))` -/
def P16809553901230215827.Spec : Prop :=
  ∀ n, P16809553901230215827.a n = A336696 (n + 1)

theorem P16809553901230215827.correct : P16809553901230215827.Spec := by
  intro n
  simp only [A336696, Nat.add_sub_cancel]

end A336696

/-! ## A336696.P12666221066337692527

`A000593(A332459(n+1))`
-/

namespace A336696.P12666221066337692527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A332459 (n + 1)).toNat

end

end A336696.P12666221066337692527

namespace A336696

/-- `A000593(A332459(n+1))` -/
def P12666221066337692527.Spec : Prop :=
  ∀ n, P12666221066337692527.a n = A336696 (n + 1)

end A336696

/-! ## A336696.P3792074119261147386

`A000593(1+A000203(n+1))`
-/

namespace A336696.P3792074119261147386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (1 + A000203 (n + 1)).toNat

end

end A336696.P3792074119261147386

namespace A336696

/-- `A000593(1+A000203(n+1))` -/
def P3792074119261147386.Spec : Prop :=
  ∀ n, P3792074119261147386.a n = A336696 (n + 1)

end A336696

/-! ## A336696.P6027361674119790623

`∑{d}[A000265(A000203(n+1)+1), #]`
-/

namespace A336696.P6027361674119790623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000203 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A336696.P6027361674119790623

namespace A336696

/-- `∑{d}[A000265(A000203(n+1)+1), #]` -/
def P6027361674119790623.Spec : Prop :=
  ∀ n, (P6027361674119790623.a n : ℤ) = A336696 (n + 1)

end A336696

/-! ## A336696.P13612867321821942553

`A000203(A000265(A000203(n+1)+1))`
-/

namespace A336696.P13612867321821942553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000265 (A000203 (n + 1) + 1).toNat).toNat

end

end A336696.P13612867321821942553

namespace A336696

/-- `A000203(A000265(A000203(n+1)+1))` -/
def P13612867321821942553.Spec : Prop :=
  ∀ n, P13612867321821942553.a n = A336696 (n + 1)

end A336696

/-! ## A336696.P16432497004316017768

`A000593(A039653(n+1)+2)`
-/

namespace A336696.P16432497004316017768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A039653 (n + 1) + 2).toNat

end

end A336696.P16432497004316017768

namespace A336696

/-- `A000593(A039653(n+1)+2)` -/
def P16432497004316017768.Spec : Prop :=
  ∀ n, P16432497004316017768.a n = A336696 (n + 1)

end A336696

/-! ## A336696.P6962591823851486777

`A000593(A155085(n+1)-n)`
-/

namespace A336696.P6962591823851486777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A155085 (n + 1) - (n : ℤ)).toNat

end

end A336696.P6962591823851486777

namespace A336696

/-- `A000593(A155085(n+1)-n)` -/
def P6962591823851486777.Spec : Prop :=
  ∀ n, P6962591823851486777.a n = A336696 (n + 1)

end A336696

/-! ## A336696.P11931281863124202794

`A326990(A000203(n+1)+1)+1`
-/

namespace A336696.P11931281863124202794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326990 (A000203 (n + 1) + 1).toNat + 1

end

end A336696.P11931281863124202794

namespace A336696

/-- `A326990(A000203(n+1)+1)+1` -/
def P11931281863124202794.Spec : Prop :=
  ∀ n, P11931281863124202794.a n = A336696 (n + 1)

end A336696

/-! ## A336696.P15055906257027617505

`A000593(A245092(2*n+1)+1)`
-/

namespace A336696.P15055906257027617505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A245092 (2 * n + 1) + 1).toNat

end

end A336696.P15055906257027617505

namespace A336696

/-- `A000593(A245092(2*n+1)+1)` -/
def P15055906257027617505.Spec : Prop :=
  ∀ n, P15055906257027617505.a n = A336696 (n + 1)

end A336696

/-! ## A336696.P11041155191851135779

`A000593(A326065(2*(n+1))+1)`
-/

namespace A336696.P11041155191851135779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A326065 (2 * (n + 1)) + 1).toNat

end

end A336696.P11041155191851135779

namespace A336696

/-- `A000593(A326065(2*(n+1))+1)` -/
def P11041155191851135779.Spec : Prop :=
  ∀ n, P11041155191851135779.a n = A336696 (n + 1)

end A336696

/-! ## A336696.P16367494669141285345

`A000593(A074400(n+1)/2+1)`
-/

namespace A336696.P16367494669141285345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A336696.P16367494669141285345

namespace A336696

/-- `A000593(A074400(n+1)/2+1)` -/
def P16367494669141285345.Spec : Prop :=
  ∀ n, P16367494669141285345.a n = A336696 (n + 1)

end A336696

/-! ## A336696.P10093005467000431077

`A000593(A001065(n+1)+2+n)`
-/

namespace A336696.P10093005467000431077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A001065 (n + 1) + 2 + (n : ℤ)).toNat

end

end A336696.P10093005467000431077

namespace A336696

/-- `A000593(A001065(n+1)+2+n)` -/
def P10093005467000431077.Spec : Prop :=
  ∀ n, P10093005467000431077.a n = A336696 (n + 1)

end A336696

/-! ## A336696.P3207369880031283391

`∑{d}[A000203(n+1)+1, A193356(#)]`
-/

namespace A336696.P3207369880031283391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A193356 d

end

end A336696.P3207369880031283391

namespace A336696

/-- `∑{d}[A000203(n+1)+1, A193356(#)]` -/
def P3207369880031283391.Spec : Prop :=
  ∀ n, P3207369880031283391.a n = A336696 (n + 1)

end A336696

/-! ## A336696.P8088297533229440124

`A000593(A064987(n+1)/(n+1)+1)`
-/

namespace A336696.P8088297533229440124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ) + 1)).toNat

end

end A336696.P8088297533229440124

namespace A336696

/-- `A000593(A064987(n+1)/(n+1)+1)` -/
def P8088297533229440124.Spec : Prop :=
  ∀ n, P8088297533229440124.a n = A336696 (n + 1)

end A336696

/-! ## A336696.P7976952914935569588

`A000593(A237588(n+1)+(n+1)²-n²+1)`
-/

namespace A336696.P7976952914935569588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A237588 (n + 1) + ((n + 1) ^ 2 : ℤ) - (n ^ 2 : ℤ) + 1).toNat

end

end A336696.P7976952914935569588

namespace A336696

/-- `A000593(A237588(n+1)+(n+1)²-n²+1)` -/
def P7976952914935569588.Spec : Prop :=
  ∀ n, P7976952914935569588.a n = A336696 (n + 1)

end A336696

/-! ## A336696.P1856989526626678310

`A000593(A000593(n+1)+A146076(n+1)+1)`
-/

namespace A336696.P1856989526626678310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A000593 (n + 1) + (A146076 (n + 1) + 1)).toNat

end

end A336696.P1856989526626678310

namespace A336696

/-- `A000593(A000593(n+1)+A146076(n+1)+1)` -/
def P1856989526626678310.Spec : Prop :=
  ∀ n, P1856989526626678310.a n = A336696 (n + 1)

end A336696

/-! ## A336696.P16917234363793448782

`A000593(A000593(n+1)*A038712(n+1)+1)`
-/

namespace A336696.P16917234363793448782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A000593 (n + 1) * A038712 (n + 1) + 1).toNat

end

end A336696.P16917234363793448782

namespace A336696

/-- `A000593(A000593(n+1)*A038712(n+1)+1)` -/
def P16917234363793448782.Spec : Prop :=
  ∀ n, P16917234363793448782.a n = A336696 (n + 1)

end A336696

/-! ## A336696.P9194588500523025281

`A326135(A074400(n+1)+2)`
-/

namespace A336696.P9194588500523025281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326135 (A074400 (n + 1) + 2).toNat

end

end A336696.P9194588500523025281

namespace A336696

/-- `A326135(A074400(n+1)+2)` -/
def P9194588500523025281.Spec : Prop :=
  ∀ n, P9194588500523025281.a n = A336696 (n + 1)

end A336696

/-! ## A336696.P16043859283153770480

`A000593(A074400(n+1)+2)`
-/

namespace A336696.P16043859283153770480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A074400 (n + 1) + 2).toNat

end

end A336696.P16043859283153770480

namespace A336696

/-- `A000593(A074400(n+1)+2)` -/
def P16043859283153770480.Spec : Prop :=
  ∀ n, P16043859283153770480.a n = A336696 (n + 1)

end A336696

/-! ## A336696.P10746030005359525806

`A091570(A074400(n+1)+2)`
-/

namespace A336696.P10746030005359525806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091570 (A074400 (n + 1) + 2).toNat

end

end A336696.P10746030005359525806

namespace A336696

/-- `A091570(A074400(n+1)+2)` -/
def P10746030005359525806.Spec : Prop :=
  ∀ n, P10746030005359525806.a n = A336696 (n + 1)

end A336696

/-!
# A336697: a(n) = gcd((s+1)/2, 1+sigma(s)), where s is the n-th odd square, (2n-1)^2.

The programs for A336697, the canonical program `A336697.P17251233940152722115` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336697 has offset 1).

The definition of A336697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336697.P17251233940152722115

`A337337(A064216(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A336697

/-- `A337337(A064216(n+1))` -/
def P17251233940152722115.Spec : Prop :=
  ∀ n, P17251233940152722115.a n = A336697 (n + 1)

theorem P17251233940152722115.correct : P17251233940152722115.Spec := by
  intro n
  simp only [A336697, Nat.add_sub_cancel]

end A336697

/-! ## A336697.P7851037507121696094

`A337337(A064989(2*n+1))`
-/

namespace A336697.P7851037507121696094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337337 (A064989 (2 * n + 1)).toNat

end

end A336697.P7851037507121696094

namespace A336697

/-- `A337337(A064989(2*n+1))` -/
def P7851037507121696094.Spec : Prop :=
  ∀ n, P7851037507121696094.a n = A336697 (n + 1)

end A336697

/-! ## A336697.P5187897314325333845

`A337337(A252463(2*n+1))`
-/

namespace A336697.P5187897314325333845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337337 (A252463 (2 * n + 1)).toNat

end

end A336697.P5187897314325333845

namespace A336697

/-- `A337337(A252463(2*n+1))` -/
def P5187897314325333845.Spec : Prop :=
  ∀ n, P5187897314325333845.a n = A336697 (n + 1)

end A336697

/-! ## A336697.P9665443903824399605

`gcd(A047251(A352830(n+1)), A155121(n))`
-/

namespace A336697.P9665443903824399605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047251 (A352830 (n + 1)).toNat) (A155121 n)

end

end A336697.P9665443903824399605

namespace A336697

/-- `gcd(A047251(A352830(n+1)), A155121(n))` -/
def P9665443903824399605.Spec : Prop :=
  ∀ n, (P9665443903824399605.a n : ℤ) = A336697 (n + 1)

end A336697

/-! ## A336697.P15838409381416583536

`gcd(A000203(A331595(n+1)), A001844(n))`
-/

namespace A336697.P15838409381416583536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (A331595 (n + 1)).toNat) (A001844 n)

end

end A336697.P15838409381416583536

namespace A336697

/-- `gcd(A000203(A331595(n+1)), A001844(n))` -/
def P15838409381416583536.Spec : Prop :=
  ∀ n, (P15838409381416583536.a n : ℤ) = A336697 (n + 1)

end A336697

/-! ## A336697.P13050072228680440859

`gcd(A001844(A218788(2*(n+1))), A136116(n+2))`
-/

namespace A336697.P13050072228680440859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001844 (A218788 (2 * (n + 1))).toNat) (A136116 (n + 2))

end

end A336697.P13050072228680440859

namespace A336697

/-- `gcd(A001844(A218788(2*(n+1))), A136116(n+2))` -/
def P13050072228680440859.Spec : Prop :=
  ∀ n, (P13050072228680440859.a n : ℤ) = A336697 (n + 1)

end A336697

/-! ## A336697.P2438570567774935222

`gcd(A094473(n+1), A099522(n+1))`
-/

namespace A336697.P2438570567774935222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094473 (n + 1)) (A099522 (n + 1))

end

end A336697.P2438570567774935222

namespace A336697

/-- `gcd(A094473(n+1), A099522(n+1))` -/
def P2438570567774935222.Spec : Prop :=
  ∀ n, (P2438570567774935222.a n : ℤ) = A336697 (n + 1)

end A336697

/-! ## A336697.P1352589750648654699

`gcd(A093558(n+2), A137576(∏{e}[n+1, #+1]))`
-/

namespace A336697.P1352589750648654699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093558 (n + 2)) (A137576 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)))

end

end A336697.P1352589750648654699

namespace A336697

/-- `gcd(A093558(n+2), A137576(∏{e}[n+1, #+1]))` -/
def P1352589750648654699.Spec : Prop :=
  ∀ n, (P1352589750648654699.a n : ℤ) = A336697 (n + 1)

end A336697

/-! ## A336697.P9668984170894115957

`gcd(A001844(n), A185418(n+1))`
-/

namespace A336697.P9668984170894115957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001844 n) (A185418 (n + 1))

end

end A336697.P9668984170894115957

namespace A336697

/-- `gcd(A001844(n), A185418(n+1))` -/
def P9668984170894115957.Spec : Prop :=
  ∀ n, (P9668984170894115957.a n : ℤ) = A336697 (n + 1)

end A336697

/-! ## A336697.P128490586089437834

`gcd(A235225(A322587(2*(n+2))), A357058(n))`
-/

namespace A336697.P128490586089437834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A235225 (A322587 (2 * (n + 2))).toNat) (A357058 n)

end

end A336697.P128490586089437834

namespace A336697

/-- `gcd(A235225(A322587(2*(n+2))), A357058(n))` -/
def P128490586089437834.Spec : Prop :=
  ∀ n, (P128490586089437834.a n : ℤ) = A336697 (n + 1)

end A336697

/-!
# A336698: a(n) = A000265(1+A000265(sigma(n))), where A000265(k) gives the odd part of k.

The programs for A336698, the canonical program `A336698.P8308488466792626664` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336698 has offset 1).

The definition of A336698 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336698.P6191405676715329148

`A000265(1+A161942(n+1))`
-/

namespace A336698.P6191405676715329148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (1 + A161942 (n + 1)).toNat

end

end A336698.P6191405676715329148

namespace A336698

/-- `A000265(1+A161942(n+1))` -/
def P6191405676715329148.Spec : Prop :=
  ∀ n, P6191405676715329148.a n = A336698 (n + 1)

end A336698

/-! ## A336698.P8308488466792626664

`A000265(1+A000265(A000203(n+1)))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A336698

/-- `A000265(1+A000265(A000203(n+1)))` -/
def P8308488466792626664.Spec : Prop :=
  ∀ n, P8308488466792626664.a n = A336698 (n + 1)

theorem P8308488466792626664.correct : P8308488466792626664.Spec := by
  intro n
  simp only [A336698, Nat.add_sub_cancel]

end A336698

/-! ## A336698.P17767557957663813885

`A000265(A337194(n+1))`
-/

namespace A336698.P17767557957663813885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A337194 (n + 1)).toNat

end

end A336698.P17767557957663813885

namespace A336698

/-- `A000265(A337194(n+1))` -/
def P17767557957663813885.Spec : Prop :=
  ∀ n, P17767557957663813885.a n = A336698 (n + 1)

end A336698

/-! ## A336698.P9507956972747059888

`A171435(A161942(n+1)+1)`
-/

namespace A336698.P9507956972747059888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A161942 (n + 1) + 1).toNat

end

end A336698.P9507956972747059888

namespace A336698

/-- `A171435(A161942(n+1)+1)` -/
def P9507956972747059888.Spec : Prop :=
  ∀ n, P9507956972747059888.a n = A336698 (n + 1)

end A336698

/-! ## A336698.P14218333279576954259

`A302044(A161942(n+1)+1)`
-/

namespace A336698.P14218333279576954259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (A161942 (n + 1) + 1).toNat

end

end A336698.P14218333279576954259

namespace A336698

/-- `A302044(A161942(n+1)+1)` -/
def P14218333279576954259.Spec : Prop :=
  ∀ n, P14218333279576954259.a n = A336698 (n + 1)

end A336698

/-! ## A336698.P14344285440599480139

`A000265(A000265(∑{d}[n+1, #])+1)`
-/

namespace A336698.P14344285440599480139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000265 (∑ d ∈ Nat.divisors (f1 n), d) + 1).toNat

end

end A336698.P14344285440599480139

namespace A336698

/-- `A000265(A000265(∑{d}[n+1, #])+1)` -/
def P14344285440599480139.Spec : Prop :=
  ∀ n, P14344285440599480139.a n = A336698 (n + 1)

end A336698

/-! ## A336698.P10978768678673184361

`A000265(A000265(A039653(n+1)+1)+1)`
-/

namespace A336698.P10978768678673184361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000265 (A039653 (n + 1) + 1).toNat + 1).toNat

end

end A336698.P10978768678673184361

namespace A336698

/-- `A000265(A000265(A039653(n+1)+1)+1)` -/
def P10978768678673184361.Spec : Prop :=
  ∀ n, P10978768678673184361.a n = A336698 (n + 1)

end A336698

/-! ## A336698.P11376647440993225618

`A000265(A000265(A001065(n+1)+n+1)+1)`
-/

namespace A336698.P11376647440993225618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000265 (A001065 (n + 1) + (n : ℤ) + 1).toNat + 1).toNat

end

end A336698.P11376647440993225618

namespace A336698

/-- `A000265(A000265(A001065(n+1)+n+1)+1)` -/
def P11376647440993225618.Spec : Prop :=
  ∀ n, P11376647440993225618.a n = A336698 (n + 1)

end A336698

/-! ## A336698.P13141074353647999296

`A161151(A161942(n+1))`
-/

namespace A336698.P13141074353647999296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161151 (A161942 (n + 1)).toNat

end

end A336698.P13141074353647999296

namespace A336698

/-- `A161151(A161942(n+1))` -/
def P13141074353647999296.Spec : Prop :=
  ∀ n, P13141074353647999296.a n = A336698 (n + 1)

end A336698

/-! ## A336698.P13258864808164261738

`A351565(A337194(n+1)-1)`
-/

namespace A336698.P13258864808164261738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351565 (A337194 (n + 1) - 1).toNat

end

end A336698.P13258864808164261738

namespace A336698

/-- `A351565(A337194(n+1)-1)` -/
def P13258864808164261738.Spec : Prop :=
  ∀ n, P13258864808164261738.a n = A336698 (n + 1)

end A336698

/-! ## A336698.P872700413355276267

`A351565(∑{d}[n+1, #])`
-/

namespace A336698.P872700413355276267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351565 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A336698.P872700413355276267

namespace A336698

/-- `A351565(∑{d}[n+1, #])` -/
def P872700413355276267.Spec : Prop :=
  ∀ n, P872700413355276267.a n = A336698 (n + 1)

end A336698

/-! ## A336698.P16931843894060087006

`A351565(A000203(n+1))`
-/

namespace A336698.P16931843894060087006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351565 (A000203 (n + 1)).toNat

end

end A336698.P16931843894060087006

namespace A336698

/-- `A351565(A000203(n+1))` -/
def P16931843894060087006.Spec : Prop :=
  ∀ n, P16931843894060087006.a n = A336698 (n + 1)

end A336698

/-! ## A336698.P14724616871570624666

`A351565(A074400(n+1)/2)`
-/

namespace A336698.P14724616871570624666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351565 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A336698.P14724616871570624666

namespace A336698

/-- `A351565(A074400(n+1)/2)` -/
def P14724616871570624666.Spec : Prop :=
  ∀ n, P14724616871570624666.a n = A336698 (n + 1)

end A336698

/-! ## A336698.P9165676088146954139

`A351565(A001065(n+1)+1+n)`
-/

namespace A336698.P9165676088146954139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351565 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A336698.P9165676088146954139

namespace A336698

/-- `A351565(A001065(n+1)+1+n)` -/
def P9165676088146954139.Spec : Prop :=
  ∀ n, P9165676088146954139.a n = A336698 (n + 1)

end A336698

/-! ## A336698.P9360579261209599621

`A351565(A074400(n+1))`
-/

namespace A336698.P9360579261209599621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351565 (A074400 (n + 1)).toNat

end

end A336698.P9360579261209599621

namespace A336698

/-- `A351565(A074400(n+1))` -/
def P9360579261209599621.Spec : Prop :=
  ∀ n, P9360579261209599621.a n = A336698 (n + 1)

end A336698

/-! ## A336698.P9810446158447116524

`A351565(A239050(n+1)/2)`
-/

namespace A336698.P9810446158447116524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351565 (SequenceMachineLib.roundAway ((A239050 (n + 1) : ℚ) / 2)).toNat

end

end A336698.P9810446158447116524

namespace A336698

/-- `A351565(A239050(n+1)/2)` -/
def P9810446158447116524.Spec : Prop :=
  ∀ n, P9810446158447116524.a n = A336698 (n + 1)

end A336698

/-! ## A336698.P2416927626357052472

`A351565(A239050(n+1))`
-/

namespace A336698.P2416927626357052472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351565 (A239050 (n + 1)).toNat

end

end A336698.P2416927626357052472

namespace A336698

/-- `A351565(A239050(n+1))` -/
def P2416927626357052472.Spec : Prop :=
  ∀ n, P2416927626357052472.a n = A336698 (n + 1)

end A336698

/-! ## A336698.P6612646272622037352

`A351565(A319528(n+1)/2)`
-/

namespace A336698.P6612646272622037352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351565 (SequenceMachineLib.roundAway ((A319528 (n + 1) : ℚ) / 2)).toNat

end

end A336698.P6612646272622037352

namespace A336698

/-- `A351565(A319528(n+1)/2)` -/
def P6612646272622037352.Spec : Prop :=
  ∀ n, P6612646272622037352.a n = A336698 (n + 1)

end A336698

/-! ## A336698.P13545408802258390828

`A351565(A319528(n+1))`
-/

namespace A336698.P13545408802258390828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351565 (A319528 (n + 1)).toNat

end

end A336698.P13545408802258390828

namespace A336698

/-- `A351565(A319528(n+1))` -/
def P13545408802258390828.Spec : Prop :=
  ∀ n, P13545408802258390828.a n = A336698 (n + 1)

end A336698

/-!
# A336699: a(n) = A000265(1+A000265(sigma(A000265(n)))), where A000265(k) gives the odd part of k, and sigma is the sum of divisors function.

The programs for A336699, the canonical program `A336699.P12577519361684636191` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336699 has offset 1).

The definition of A336699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336699.P8610837662558656072

`A336698(A000265(n+1))`
-/

namespace A336699.P8610837662558656072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336698 (A000265 (n + 1)).toNat

end

end A336699.P8610837662558656072

namespace A336699

/-- `A336698(A000265(n+1))` -/
def P8610837662558656072.Spec : Prop :=
  ∀ n, P8610837662558656072.a n = A336699 (n + 1)

end A336699

/-! ## A336699.P9250624508816780238

`A336698(1+A322250(n+1))`
-/

namespace A336699.P9250624508816780238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336698 (1 + A322250 (n + 1)).toNat

end

end A336699.P9250624508816780238

namespace A336699

/-- `A336698(1+A322250(n+1))` -/
def P9250624508816780238.Spec : Prop :=
  ∀ n, P9250624508816780238.a n = A336699 (n + 1)

end A336699

/-! ## A336699.P3678840332909352677

`A000265(1+A000265(A000593(n+1)))`
-/

namespace A336699.P3678840332909352677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (1 + A000265 (A000593 (n + 1)).toNat).toNat

end

end A336699.P3678840332909352677

namespace A336699

/-- `A000265(1+A000265(A000593(n+1)))` -/
def P3678840332909352677.Spec : Prop :=
  ∀ n, P3678840332909352677.a n = A336699 (n + 1)

end A336699

/-! ## A336699.P10473880442274412506

`A000265(1+A000265(A002131(n+1)))`
-/

namespace A336699.P10473880442274412506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (1 + A000265 (A002131 (n + 1)).toNat).toNat

end

end A336699.P10473880442274412506

namespace A336699

/-- `A000265(1+A000265(A002131(n+1)))` -/
def P10473880442274412506.Spec : Prop :=
  ∀ n, P10473880442274412506.a n = A336699 (n + 1)

end A336699

/-! ## A336699.P3103725118367326142

`A000265(1+A161942(A000265(n+1)))`
-/

namespace A336699.P3103725118367326142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (1 + A161942 (A000265 (n + 1)).toNat).toNat

end

end A336699.P3103725118367326142

namespace A336699

/-- `A000265(1+A161942(A000265(n+1)))` -/
def P3103725118367326142.Spec : Prop :=
  ∀ n, P3103725118367326142.a n = A336699 (n + 1)

end A336699

/-! ## A336699.P18439730461786398350

`A171435(A000593(n+1)+A082903(n+1))`
-/

namespace A336699.P18439730461786398350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A000593 (n + 1) + A082903 (n + 1)).toNat

end

end A336699.P18439730461786398350

namespace A336699

/-- `A171435(A000593(n+1)+A082903(n+1))` -/
def P18439730461786398350.Spec : Prop :=
  ∀ n, P18439730461786398350.a n = A336699 (n + 1)

end A336699

/-! ## A336699.P12577519361684636191

`A000265(1+A000265(A000203(A000265(n+1))))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A336699

/-- `A000265(1+A000265(A000203(A000265(n+1))))` -/
def P12577519361684636191.Spec : Prop :=
  ∀ n, P12577519361684636191.a n = A336699 (n + 1)

theorem P12577519361684636191.correct : P12577519361684636191.Spec := by
  intro n
  simp only [A336699, Nat.add_sub_cancel]

end A336699

/-! ## A336699.P17798349676236497408

`A351565(A000593(n+1))`
-/

namespace A336699.P17798349676236497408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351565 (A000593 (n + 1)).toNat

end

end A336699.P17798349676236497408

namespace A336699

/-- `A351565(A000593(n+1))` -/
def P17798349676236497408.Spec : Prop :=
  ∀ n, P17798349676236497408.a n = A336699 (n + 1)

end A336699

/-! ## A336699.P17021796666970469453

`A351565(A002131(n+1))`
-/

namespace A336699.P17021796666970469453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351565 (A002131 (n + 1)).toNat

end

end A336699.P17021796666970469453

namespace A336699

/-- `A351565(A002131(n+1))` -/
def P17021796666970469453.Spec : Prop :=
  ∀ n, P17021796666970469453.a n = A336699 (n + 1)

end A336699

/-! ## A336699.P7628773928851102995

`A336698((n+1)/xor(n, or(n, n+1)))`
-/

namespace A336699.P7628773928851102995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336698 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))).toNat

end

end A336699.P7628773928851102995

namespace A336699

/-- `A336698((n+1)/xor(n, or(n, n+1)))` -/
def P7628773928851102995.Spec : Prop :=
  ∀ n, P7628773928851102995.a n = A336699 (n + 1)

end A336699

/-! ## A336699.P5824258998086737212

`A336844(A064989(n+1))`
-/

namespace A336699.P5824258998086737212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336844 (A064989 (n + 1)).toNat

end

end A336699.P5824258998086737212

namespace A336699

/-- `A336844(A064989(n+1))` -/
def P5824258998086737212.Spec : Prop :=
  ∀ n, P5824258998086737212.a n = A336699 (n + 1)

end A336699

/-! ## A336699.P13468887481500540898

`A336698(A153733(n)+1)`
-/

namespace A336699.P13468887481500540898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336698 (A153733 n + 1).toNat

end

end A336699.P13468887481500540898

namespace A336699

/-- `A336698(A153733(n)+1)` -/
def P13468887481500540898.Spec : Prop :=
  ∀ n, P13468887481500540898.a n = A336699 (n + 1)

end A336699

/-! ## A336699.P12941142845525572496

`A336698(A171435(2*(n+1)))`
-/

namespace A336699.P12941142845525572496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336698 (A171435 (2 * (n + 1))).toNat

end

end A336699.P12941142845525572496

namespace A336699

/-- `A336698(A171435(2*(n+1)))` -/
def P12941142845525572496.Spec : Prop :=
  ∀ n, P12941142845525572496.a n = A336699 (n + 1)

end A336699

/-! ## A336699.P3295564849706122072

`A000265(A000265(∑{d}[n+1, #]/xor(n, n+1))+1)`
-/

namespace A336699.P3295564849706122072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000265 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ))).toNat + 1).toNat

end

end A336699.P3295564849706122072

namespace A336699

/-- `A000265(A000265(∑{d}[n+1, #]/xor(n, n+1))+1)` -/
def P3295564849706122072.Spec : Prop :=
  ∀ n, P3295564849706122072.a n = A336699 (n + 1)

end A336699

/-! ## A336699.P17541383278999993368

`A336698(A351565(2*n+1))`
-/

namespace A336699.P17541383278999993368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336698 (A351565 (2 * n + 1)).toNat

end

end A336699.P17541383278999993368

namespace A336699

/-- `A336698(A351565(2*n+1))` -/
def P17541383278999993368.Spec : Prop :=
  ∀ n, P17541383278999993368.a n = A336699 (n + 1)

end A336699

/-! ## A336699.P7071868106887558726

`A351565(A327095(n+1))`
-/

namespace A336699.P7071868106887558726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351565 (A327095 (n + 1)).toNat

end

end A336699.P7071868106887558726

namespace A336699

/-- `A351565(A327095(n+1))` -/
def P7071868106887558726.Spec : Prop :=
  ∀ n, P7071868106887558726.a n = A336699 (n + 1)

end A336699

/-! ## A336699.P12922972251401549214

`A351565(A054785(n+1)/2)`
-/

namespace A336699.P12922972251401549214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351565 (SequenceMachineLib.roundAway ((A054785 (n + 1) : ℚ) / 2)).toNat

end

end A336699.P12922972251401549214

namespace A336699

/-- `A351565(A054785(n+1)/2)` -/
def P12922972251401549214.Spec : Prop :=
  ∀ n, P12922972251401549214.a n = A336699 (n + 1)

end A336699

/-! ## A336699.P11366478959407708455

`A351565(∑{d}[A351565(2*n+1), #])`
-/

namespace A336699.P11366478959407708455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351565 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351565 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A336699.P11366478959407708455

namespace A336699

/-- `A351565(∑{d}[A351565(2*n+1), #])` -/
def P11366478959407708455.Spec : Prop :=
  ∀ n, P11366478959407708455.a n = A336699 (n + 1)

end A336699

/-! ## A336699.P15841204062680794104

`A351565(A054785(n+1))`
-/

namespace A336699.P15841204062680794104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351565 (A054785 (n + 1)).toNat

end

end A336699.P15841204062680794104

namespace A336699

/-- `A351565(A054785(n+1))` -/
def P15841204062680794104.Spec : Prop :=
  ∀ n, P15841204062680794104.a n = A336699 (n + 1)

end A336699

