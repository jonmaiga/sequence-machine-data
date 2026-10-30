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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
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
import Seq.B001.C014
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
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A227500: a(0)=a(1)=0; for n>1, a(n) = numerator( r(n) ), where r(n) = r(n-1)+r(n-2)+A027641(n-2)/A027642(n-2) and r(0)=r(1)=a(0).

The programs for A227500, there is no canonical definition to state claims against.
-/

/-! ## A227500.P10091567464199045212

`A124596(A032308(3*n+1))%A034386(n)`
-/

namespace A227500.P10091567464199045212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124596 (A032308 (3 * n + 1)).toNat) (A034386 n)

end

end A227500.P10091567464199045212

/-! ## A227500.P8987125706321926454

`A000085(A070752(n+1))%A004525(A006055(n+1))`
-/

namespace A227500.P8987125706321926454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000085 (A070752 (n + 1)).toNat) (A004525 (A006055 (n + 1)).toNat)

end

end A227500.P8987125706321926454

/-!
# A227501: Number of non-congruent solutions of x^2 - xy + y^2 == 1 (mod n).

The programs for A227501, the canonical program `A227501.P13056102669558752893` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227501 has offset 1).

The definition of A227501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227501.P13056102669558752893

`(n%3)!*A227128(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A227501

/-- `(n%3)!*A227128(n+1)` -/
def P13056102669558752893.Spec : Prop :=
  ∀ n, P13056102669558752893.a n = A227501 (n + 1)

theorem P13056102669558752893.correct : P13056102669558752893.Spec := by
  intro n
  simp only [A227501, Nat.add_sub_cancel]

end A227501

/-! ## A227501.P5581903792438111427

`A227128(n+1)*A177702(n)`
-/

namespace A227501.P5581903792438111427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227128 (n + 1) * A177702 n

end

end A227501.P5581903792438111427

namespace A227501

/-- `A227128(n+1)*A177702(n)` -/
def P5581903792438111427.Spec : Prop :=
  ∀ n, P5581903792438111427.a n = A227501 (n + 1)

end A227501

/-! ## A227501.P16371928070193587666

`abs(A132419(n)*A227128(n+1))`
-/

namespace A227501.P16371928070193587666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132419 n * A227128 (n + 1)|

end

end A227501.P16371928070193587666

namespace A227501

/-- `abs(A132419(n)*A227128(n+1))` -/
def P16371928070193587666.Spec : Prop :=
  ∀ n, P16371928070193587666.a n = A227501 (n + 1)

end A227501

/-! ## A227501.P8796093494446840204

`gcd(2, A049347(n))*A227128(n+1)`
-/

namespace A227501.P8796093494446840204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A049347 n) : ℤ) * A227128 (n + 1)

end

end A227501.P8796093494446840204

namespace A227501

/-- `gcd(2, A049347(n))*A227128(n+1)` -/
def P8796093494446840204.Spec : Prop :=
  ∀ n, P8796093494446840204.a n = A227501 (n + 1)

end A227501

/-! ## A227501.P12193317093948705785

`A319445(n+1)/Δ[A002088(n)]*A177702(n)`
-/

namespace A227501.P12193317093948705785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319445 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ) * (A177702 n : ℚ)

end

end A227501.P12193317093948705785

namespace A227501

/-- `A319445(n+1)/Δ[A002088(n)]*A177702(n)` -/
def P12193317093948705785.Spec : Prop :=
  ∀ n, P12193317093948705785.a n = (A227501 (n + 1) : ℚ)

end A227501

/-! ## A227501.P8764923095423863968

`(2-A011655(n+1))*A227128(n+1)`
-/

namespace A227501.P8764923095423863968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A011655 (n + 1)) * A227128 (n + 1)

end

end A227501.P8764923095423863968

namespace A227501

/-- `(2-A011655(n+1))*A227128(n+1)` -/
def P8764923095423863968.Spec : Prop :=
  ∀ n, P8764923095423863968.a n = A227501 (n + 1)

end A227501

/-! ## A227501.P13079318075107281708

`A101825(n+3)*A227128(n+1)`
-/

namespace A227501.P13079318075107281708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 (n + 3) * A227128 (n + 1)

end

end A227501.P13079318075107281708

namespace A227501

/-- `A101825(n+3)*A227128(n+1)` -/
def P13079318075107281708.Spec : Prop :=
  ∀ n, P13079318075107281708.a n = A227501 (n + 1)

end A227501

/-! ## A227501.P14973776680562422086

`A319445(n+1)/A054523(A000124(n))*A177702(n)`
-/

namespace A227501.P14973776680562422086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319445 (n + 1) : ℚ) / (A054523 (A000124 n).toNat : ℚ) * (A177702 n : ℚ)

end

end A227501.P14973776680562422086

namespace A227501

/-- `A319445(n+1)/A054523(A000124(n))*A177702(n)` -/
def P14973776680562422086.Spec : Prop :=
  ∀ n, P14973776680562422086.a n = (A227501 (n + 1) : ℚ)

end A227501

/-!
# A227503: q = x * exp( 8 * (Sum_{k>0} a(k) * x^k / k)) where x = m/16, q is the elliptic nome and m = k^2 is the parameter.

The programs for A227503, there is no canonical definition to state claims against.
-/

/-! ## A227503.P6029938036486090348

`(n+1)/A274346(n)*A274345(n)`
-/

namespace A227503.P6029938036486090348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A274346 n : ℚ) * (A274345 n : ℚ)

end

end A227503.P6029938036486090348

/-! ## A227503.P2176096290033283792

`A003484(A038553(n+1))*A274345(n)`
-/

namespace A227503.P2176096290033283792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (A038553 (n + 1)).toNat * A274345 n

end

end A227503.P2176096290033283792

/-! ## A227503.P5788041945562413389

`A274292(A080940(n+1))*A274345(n)`
-/

namespace A227503.P5788041945562413389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274292 (A080940 (n + 1)).toNat * A274345 n

end

end A227503.P5788041945562413389

/-! ## A227503.P5614842553365251863

`gcd(A006519(n+1), A038553(n+1))*A274345(n)`
-/

namespace A227503.P5614842553365251863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A006519 (n + 1)) (A038553 (n + 1)) : ℤ) * A274345 n

end

end A227503.P5614842553365251863

/-! ## A227503.P2435499994104946001

`A111616((n+1)²)*A274345(n)`
-/

namespace A227503.P2435499994104946001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111616 ((n + 1) ^ 2) * A274345 n

end

end A227503.P2435499994104946001

/-!
# A227504: Schroeder triangle sums: a(n) = A006603(n+1) - A006318(n+1).

The programs for A227504, there is no canonical definition to state claims against.
-/

/-! ## A227504.P18240010780730054560

`A006603(n+2)-A006318(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A227504.P18240010780730054560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006603 (n + 2) - A006318 (n + 2)

end

end A227504.P18240010780730054560

/-! ## A227504.P1583630189982023015

`record[A006603(n)%A025240(n+1)]`
-/

namespace A227504.P1583630189982023015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006603 n) (A025240 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227504.P1583630189982023015

/-! ## A227504.P8226319097894662179

`A085403(n+3)+A006603(n+2)`
-/

namespace A227504.P8226319097894662179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085403 (n + 3) + A006603 (n + 2)

end

end A227504.P8226319097894662179

/-! ## A227504.P14284778501384394819

`abs(A080244(n+3))-A006318(n+2)`
-/

namespace A227504.P14284778501384394819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080244 (n + 3)| - A006318 (n + 2)

end

end A227504.P14284778501384394819

/-! ## A227504.P4537264932144483287

`A006603(n+2)-abs(A103137(n+3))`
-/

namespace A227504.P4537264932144483287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006603 (n + 2) - |A103137 (n + 3)|

end

end A227504.P4537264932144483287

/-!
# A227505: Schroeder triangle sums: a(n) = A006603(n+3) - A006318(n+3) - A006319(n+2).

The programs for A227505, there is no canonical definition to state claims against.
-/

/-! ## A227505.P1651830426458329706

`A006603(n+4)-A006318(n+4)-A006319(n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A227505.P1651830426458329706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006603 (n + 4) - A006318 (n + 4) - A006319 (n + 3)

end

end A227505.P1651830426458329706

/-! ## A227505.P15511131059310360149

`A227504(n+3)-A006319(n+3)`
-/

namespace A227505.P15511131059310360149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227504 (n + 3) - A006319 (n + 3)

end

end A227505.P15511131059310360149

/-! ## A227505.P10029501458560890353

`Δ[A227504(n+1)-∑[A006603(n)]]`
-/

namespace A227505.P10029501458560890353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006603 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227504 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227505.P10029501458560890353

/-! ## A227505.P14553456881492181853

`Δ[A227504(n+1)]-A006603(n+1)`
-/

namespace A227505.P14553456881492181853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006603 (n + 1)

end

end A227505.P14553456881492181853

/-! ## A227505.P6477396500672798072

`A227504(n+3)-Δ[A006318(n+2)]`
-/

namespace A227505.P6477396500672798072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227504 (n + 3) - (f1 (n + 1) - f1 n)

end

end A227505.P6477396500672798072

/-!
# A227506: Schroeder triangle sums: a(2*n-1) = A010683(2*n-2) and a(2*n) = A010683(2*n-1) - A001003(2*n-1).

The programs for A227506, the canonical program `A227506.P1241765352015404149` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227506 has offset 1).

The definition of A227506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227506.P1241765352015404149

`A010683(n)+A000035(n)*A080243(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A227506

/-- `A010683(n)+A000035(n)*A080243(n)` -/
def P1241765352015404149.Spec : Prop :=
  ∀ n, P1241765352015404149.a n = A227506 (n + 1)

theorem P1241765352015404149.correct : P1241765352015404149.Spec := by
  intro n
  simp only [A227506, Nat.add_sub_cancel]

end A227506

/-! ## A227506.P17983965672810161488

`A010683(n)-A000035(n)*A001003(n)`
-/

namespace A227506.P17983965672810161488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010683 n - A000035 n * A001003 n

end

end A227506.P17983965672810161488

namespace A227506

/-- `A010683(n)-A000035(n)*A001003(n)` -/
def P17983965672810161488.Spec : Prop :=
  ∀ n, P17983965672810161488.a n = A227506 (n + 1)

end A227506

/-! ## A227506.P8191534744040122850

`A010683(n)+A001489(A000035(n)*A001003(n))`
-/

namespace A227506.P8191534744040122850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010683 n + A001489 (A000035 n * A001003 n).toNat

end

end A227506.P8191534744040122850

namespace A227506

/-- `A010683(n)+A001489(A000035(n)*A001003(n))` -/
def P8191534744040122850.Spec : Prop :=
  ∀ n, P8191534744040122850.a n = A227506 (n + 1)

end A227506

/-!
# A227508: Numbers n such that n! is divisible by R(n), the digit reversal of n.

The programs for A227508, there is no canonical definition to state claims against.
-/

/-! ## A227508.P6986717173416180815

`lt[A210437(1+n), n+2]+1`
-/

namespace A227508.P6986717173416180815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210437 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A227508.P6986717173416180815

/-! ## A227508.P15041858095029122568

`lt[A006530(A004086(n+1)), n+2]+1`
-/

namespace A227508.P15041858095029122568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004086 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A227508.P15041858095029122568

/-! ## A227508.P10356241063857006075

`lt[A210437(A028310(n)), n+1]`
-/

namespace A227508.P10356241063857006075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210437 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A227508.P10356241063857006075

/-! ## A227508.P6347312455215638938

`lt[A210437(A233583(n+1)), n+2]`
-/

namespace A227508.P6347312455215638938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210437 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A227508.P6347312455215638938

/-!
# A227509: a(n) = difference between the 2 smallest prime numbers > 10^n.

The programs for A227509, there is no canonical definition to state claims against.
-/

/-! ## A227509.P18254248796803924052

`A139052(2*(n+2))-A003617(n+2)`
-/

namespace A227509.P18254248796803924052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139052 (2 * (n + 2)) - A003617 (n + 2)

end

end A227509.P18254248796803924052

/-! ## A227509.P4933763148424761709

`A139052(2*(n+2))-A139052(2*n+3)`
-/

namespace A227509.P4933763148424761709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139052 (2 * (n + 2)) - A139052 (2 * n + 3)

end

end A227509.P4933763148424761709

/-! ## A227509.P6246936705270432113

`A139053(A016789(n+1))-A003617(n+2)`
-/

namespace A227509.P6246936705270432113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139053 (A016789 (n + 1)).toNat - A003617 (n + 2)

end

end A227509.P6246936705270432113

/-! ## A227509.P9465591953360753397

`A139052(A317108(n+2))-A069588(n+2)`
-/

namespace A227509.P9465591953360753397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139052 (A317108 (n + 2)).toNat - A069588 (n + 2)

end

end A227509.P9465591953360753397

/-! ## A227509.P11124179516537210346

`A139052(A317108(n+2))%A003617(n+2)`
-/

namespace A227509.P11124179516537210346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139052 (A317108 (n + 2)).toNat) (A003617 (n + 2))

end

end A227509.P11124179516537210346

/-! ## A227509.P2275966777090786412

`A139052(A317108(4/2+n))%A069588(n+2)`
-/

namespace A227509.P2275966777090786412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139052 (A317108 (SequenceMachineLib.roundAway ((4 : ℚ) / 2 + (n : ℚ))).toNat).toNat) (A069588 (n + 2))

end

end A227509.P2275966777090786412

/-!
# A227510: Numbers such that product of digits of n is positive and a substring of n.

The programs for A227510, there is no canonical definition to state claims against.
-/

/-! ## A227510.P6140908343254982053

`eq[A007954(n^A178334(n)), A054055(n)]`
-/

namespace A227510.P6140908343254982053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227510.P6140908343254982053

/-! ## A227510.P10890905455296973982

`eq[A087471(n^A178334(n))-A000007(n), A028310(A004176(n))]`
-/

namespace A227510.P10890905455296973982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087471 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A004176 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227510.P10890905455296973982

/-! ## A227510.P8886268504398854408

`eq[A057427(n)*A087471(n^A178334(n)), A028310(A004176(n))]`
-/

namespace A227510.P8886268504398854408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A087471 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A004176 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227510.P8886268504398854408

/-! ## A227510.P9564877343197589101

`∩[A203565(n+1), A277061(n+1)]`
-/

namespace A227510.P9564877343197589101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203565 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227510.P9564877343197589101

/-! ## A227510.P1929763218157091190

`∩[A090274(n+1), A371123(n+1)]`
-/

namespace A227510.P1929763218157091190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227510.P1929763218157091190

/-!
# A227512: Floor(-1/n + 1/log((2n+1)/(2n-1))).

The programs for A227512, the canonical program `A227512.P16611226373212042777` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227512 has offset 1).

The definition of A227512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227512.P16611226373212042777

`12*(n+1)^3-floor(9*(n+1)/5)-1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A227512

/-- `12*(n+1)^3-floor(9*(n+1)/5)-1` -/
def P16611226373212042777.Spec : Prop :=
  ∀ n, P16611226373212042777.a n = A227512 (n + 1)

theorem P16611226373212042777.correct : P16611226373212042777.Spec := by
  intro n
  simp only [A227512, Nat.add_sub_cancel]

end A227512

/-! ## A227512.P2065567467644584556

`ogf((10+62x+72x^2+72x^3+72x^4+63x^5+8x^6+x^7)/(1-3x+3x^2-x^3-x^5+3x^6-3x^7+x^8))`
-/

namespace A227512.P2065567467644584556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 62, 72, 72, 72, 63, 8, 1] [1, -3, 3, -1, 0, -1, 3, -3, 1] n

end

end A227512.P2065567467644584556

namespace A227512

/-- `ogf((10+62x+72x^2+72x^3+72x^4+63x^5+8x^6+x^7)/(1-3x+3x^2-x^3-x^5+3x^6-3x^7+x^8))` -/
def P2065567467644584556.Spec : Prop :=
  ∀ n, P2065567467644584556.a n = A227512 (n + 1)

end A227512

/-!
# A227513: Round(-1/n + 1/log((2n+1)/(2n-1))).

The programs for A227513, the canonical program `A227513.P18001232639528328912` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227513 has offset 1).

The definition of A227513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227513.P14145423045952326783

`12*(n+1)^3-round(9*(n+1)/5)`
-/

namespace A227513.P14145423045952326783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * (n + 1) ^ 3 : ℤ) - SequenceMachineLib.roundAway (9 * ((n + 1 : ℚ) / 5))

end

end A227513.P14145423045952326783

namespace A227513

/-- `12*(n+1)^3-round(9*(n+1)/5)` -/
def P14145423045952326783.Spec : Prop :=
  ∀ n, P14145423045952326783.a n = A227513 (n + 1)

end A227513

/-! ## A227513.P8565917275791489377

`ogf((10+62x+73x^2+70x^3+73x^4+62x^5+10x^6)/(1-3x+3x^2-x^3-x^5+3x^6-3x^7+x^8))`
-/

namespace A227513.P8565917275791489377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 62, 73, 70, 73, 62, 10] [1, -3, 3, -1, 0, -1, 3, -3, 1] n

end

end A227513.P8565917275791489377

namespace A227513

/-- `ogf((10+62x+73x^2+70x^3+73x^4+62x^5+10x^6)/(1-3x+3x^2-x^3-x^5+3x^6-3x^7+x^8))` -/
def P8565917275791489377.Spec : Prop :=
  ∀ n, P8565917275791489377.a n = A227513 (n + 1)

end A227513

/-! ## A227513.P18001232639528328912

`∑[A130782(n)+A016946(n)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A227513

/-- `∑[A130782(n)+A016946(n)]` -/
def P18001232639528328912.Spec : Prop :=
  ∀ n, P18001232639528328912.a n = A227513 (n + 1)

theorem P18001232639528328912.correct : P18001232639528328912.Spec := by
  intro n
  simp only [A227513, Nat.add_sub_cancel]

end A227513

/-! ## A227513.P15861711440547779255

`∑[A130782(n)+A016945(n)²]`
-/

namespace A227513.P15861711440547779255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130782 n + A016945 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227513.P15861711440547779255

namespace A227513

/-- `∑[A130782(n)+A016945(n)²]` -/
def P15861711440547779255.Spec : Prop :=
  ∀ n, P15861711440547779255.a n = A227513 (n + 1)

theorem P15861711440547779255.correct : P15861711440547779255.Spec := by
  intro n
  simp only [A227513, Nat.add_sub_cancel, A227513.P15861711440547779255.f1, A227513.P15861711440547779255.a, A227513.P18001232639528328912.f1, A227513.P18001232639528328912.a, A016945, A016945.P12463160785118576711.a, A016946, A016946.P16494615086453922637.a, A130782, A130782.P5199446296278613737.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A227513

/-! ## A227513.P3103792994279767565

`∑[A130782(n)+A016754(A016777(n))]`
-/

namespace A227513.P3103792994279767565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130782 n + A016754 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227513.P3103792994279767565

namespace A227513

/-- `∑[A130782(n)+A016754(A016777(n))]` -/
def P3103792994279767565.Spec : Prop :=
  ∀ n, P3103792994279767565.a n = A227513 (n + 1)

end A227513

/-!
# A227524: Expansion of 1/((1-3x)(1-9x)(1-27x)).

The programs for A227524, the canonical program `A227524.P7793621711665422563` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227524 has offset 0).

The definition of A227524 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227524.P7793621711665422563

`3^n*(3^(n+1)-1)*(3^(n+2)-1)/16`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A227524

/-- `3^n*(3^(n+1)-1)*(3^(n+2)-1)/16` -/
def P7793621711665422563.Spec : Prop :=
  ∀ n, P7793621711665422563.a n = (A227524 n : ℚ)

end A227524

/-! ## A227524.P15896630187702156999

`∑[A016142(n)]*3^n`
-/

namespace A227524.P15896630187702156999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (3 ^ n : ℤ)

end

end A227524.P15896630187702156999

namespace A227524

/-- `∑[A016142(n)]*3^n` -/
def P15896630187702156999.Spec : Prop :=
  ∀ n, P15896630187702156999.a n = A227524 n

end A227524

/-! ## A227524.P4519054615431195048

`lcm(3^n, A006100(n+2))`
-/

namespace A227524.P4519054615431195048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 ^ n : ℤ) (A006100 (n + 2))

end

end A227524.P4519054615431195048

namespace A227524

/-- `lcm(3^n, A006100(n+2))` -/
def P4519054615431195048.Spec : Prop :=
  ∀ n, (P4519054615431195048.a n : ℤ) = A227524 n

end A227524

/-! ## A227524.P7408681560299258896

`A000244(n)*A006100(n+2)`
-/

namespace A227524.P7408681560299258896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A006100 (n + 2)

end

end A227524.P7408681560299258896

namespace A227524

/-- `A000244(n)*A006100(n+2)` -/
def P7408681560299258896.Spec : Prop :=
  ∀ n, P7408681560299258896.a n = A227524 n

end A227524

/-! ## A227524.P12270836262276630799

`lcm(∑[A167993(2*(n+1))], A000244(n))`
-/

namespace A227524.P12270836262276630799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167993 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A000244 n)

end

end A227524.P12270836262276630799

namespace A227524

/-- `lcm(∑[A167993(2*(n+1))], A000244(n))` -/
def P12270836262276630799.Spec : Prop :=
  ∀ n, (P12270836262276630799.a n : ℤ) = A227524 n

end A227524

/-! ## A227524.P5253385816033665301

`A006100(n+2)+A006100(n+2)*A024023(n)`
-/

namespace A227524.P5253385816033665301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006100 (n + 2) + A006100 (n + 2) * A024023 n

end

end A227524.P5253385816033665301

namespace A227524

/-- `A006100(n+2)+A006100(n+2)*A024023(n)` -/
def P5253385816033665301.Spec : Prop :=
  ∀ n, P5253385816033665301.a n = A227524 n

end A227524

/-! ## A227524.P823283290132332754

`A006100(n+2)*A034472(n)-A006100(n+2)`
-/

namespace A227524.P823283290132332754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006100 (n + 2) * A034472 n - A006100 (n + 2)

end

end A227524.P823283290132332754

namespace A227524

/-- `A006100(n+2)*A034472(n)-A006100(n+2)` -/
def P823283290132332754.Spec : Prop :=
  ∀ n, P823283290132332754.a n = A227524 n

end A227524

/-!
# A227525: Squares which can be represented as sum of a prime and its reverse in at least one way.

The programs for A227525, there is no canonical definition to state claims against.
-/

/-! ## A227525.P4355742008976595928

`A358880(A001317(n)-A179510(n))`
-/

namespace A227525.P4355742008976595928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358880 (A001317 n - A179510 n).toNat

end

end A227525.P4355742008976595928

/-!
# A227526: G.f.: Sum_{n>=0} x^n * (1+x)^A003188(n), where A003188(n) = n XOR [n/2] is the Gray code for n.

The programs for A227526, the canonical program `A227526.P4163692799463010329` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227526 has offset 0).

The definition of A227526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227526.P4163692799463010329

`∑{#}[n, C(A003188(#), n-#)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A227526

/-- `∑{#}[n, C(A003188(#), n-#)]` -/
def P4163692799463010329.Spec : Prop :=
  ∀ n, (P4163692799463010329.a n : ℤ) = A227526 n

theorem P4163692799463010329.correct : P4163692799463010329.Spec := by
  intro n
  simp only [A227526]

end A227526

/-!
# A227527: G.f.: Sum_{n>=0} x^n * (1-x)^A003188(n), where A003188(n) = n XOR [n/2] is the Gray code for n.

The programs for A227527, the canonical program `A227527.P10233746261724492008` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227527 has offset 0).

The definition of A227527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227527.P10233746261724492008

`∑{#}[n, (-1)^(n-#)*C(A003188(#), n-#)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A227527

/-- `∑{#}[n, (-1)^(n-#)*C(A003188(#), n-#)]` -/
def P10233746261724492008.Spec : Prop :=
  ∀ n, P10233746261724492008.a n = (A227527 n : ℚ)

end A227527

/-!
# A227530: Integer lengths of the n-th Copeland-Erdős prime (concatenation of the first n entries (digits) of A033308 is prime).

The programs for A227530, there is no canonical definition to state claims against.
-/

/-! ## A227530.P10189675350663555277

`∑[A117536(A206369(n+1)!)]`
-/

namespace A227530.P10189675350663555277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117536 (Nat.factorial (A206369 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227530.P10189675350663555277

/-!
# A227531: Primes that are round(3*(4/3)^k) for some k.

The programs for A227531, there is no canonical definition to state claims against.
-/

/-! ## A227531.P1912032943214638467

`p?[round(3*(4/3)^n)]`
-/

namespace A227531.P1912032943214638467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((4 : ℚ) / 3) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227531.P1912032943214638467

/-! ## A227531.P13109287526435563424

`or(1, p?[A227391(n)])`
-/

namespace A227531.P13109287526435563424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A227531.P13109287526435563424

/-! ## A227531.P7794406883326311184

`A008475(p?[A227391(n)])`
-/

namespace A227531.P7794406883326311184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A227531.P7794406883326311184

/-! ## A227531.P2070658072370657958

`filter[A227391(n), A010051(#)]`
-/

namespace A227531.P2070658072370657958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A227531.P2070658072370657958

/-!
# A227533: Smallest e > 1 such that (2n)^e is a totient, or 0 if no such e exists.

The programs for A227533, there is no canonical definition to state claims against.
-/

/-! ## A227533.P1590462941441134161

`A014085(A134332(3*(n+1))-1)`
-/

namespace A227533.P1590462941441134161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A134332 (3 * (n + 1)) - 1).toNat

end

end A227533.P1590462941441134161

/-! ## A227533.P6112481055750105385

`A207666(gcd(A064664(n+1), A252736(n+1)))`
-/

namespace A227533.P6112481055750105385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207666 (Int.gcd (A064664 (n + 1)) (A252736 (n + 1)))

end

end A227533.P6112481055750105385

/-! ## A227533.P451617989697516937

`A378660(A340811(3*n+1))+A378660(n+2)`
-/

namespace A227533.P451617989697516937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378660 (A340811 (3 * n + 1)).toNat + A378660 (n + 2)

end

end A227533.P451617989697516937

/-!
# A227534: Even numbers n such that the least e with n^e a totient is a new record.

The programs for A227534, there is no canonical definition to state claims against.
-/

/-! ## A227534.P11433655129116057653

`A001747(A121736(n+4))%∑[A071072(2*n+3)]`
-/

namespace A227534.P11433655129116057653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071072 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001747 (A121736 (n + 4)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227534.P11433655129116057653

/-!
# A227535: Exponents e such that n^e is the least totient for some even n and all even k < n have a totient of the form k^f for some f < e.

The programs for A227535, there is no canonical definition to state claims against.
-/

/-! ## A227535.P15552899129570385018

`A227533(A227534(n+1)/2)`
-/

namespace A227535.P15552899129570385018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227533 (SequenceMachineLib.roundAway ((A227534 (n + 1) : ℚ) / 2)).toNat

end

end A227535.P15552899129570385018

/-! ## A227535.P12001613091665857088

`record[A227533(A000040(n+1))]`
-/

namespace A227535.P12001613091665857088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227533 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227535.P12001613091665857088

/-! ## A227535.P15132505961826202018

`record[A227533(A006005(n+1))]`
-/

namespace A227535.P15132505961826202018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227533 (A006005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227535.P15132505961826202018

/-! ## A227535.P16759440177061924919

`record[A227533(A008578(n+1))]`
-/

namespace A227535.P16759440177061924919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227533 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227535.P16759440177061924919

/-! ## A227535.P10067073839017903621

`record[A227533(A028815(n)-1)]`
-/

namespace A227535.P10067073839017903621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227533 (A028815 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227535.P10067073839017903621

/-!
# A227536: Irregular triangle read by rows, T(n,k) is the sum of base boxes of Pyramid arranged by n-boxes in k-th patterns.

The programs for A227536, there is no canonical definition to state claims against.
-/

/-! ## A227536.P583416795871514801

`A044931(lcm(n+1, A017042(n)))`
-/

namespace A227536.P583416795871514801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (Int.lcm (n + 1 : ℤ) (A017042 n))

end

end A227536.P583416795871514801

/-! ## A227536.P1896912305417926238

`A044931(lcm(A017042(n), A291769(n)))`
-/

namespace A227536.P1896912305417926238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (Int.lcm (A017042 n) (A291769 n))

end

end A227536.P1896912305417926238

/-! ## A227536.P15387937632351259443

`A235224(lcm(A007440(n+1), A124240(2*n+3)))`
-/

namespace A227536.P15387937632351259443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (Int.lcm (A007440 (n + 1)) (A124240 (2 * n + 3)))

end

end A227536.P15387937632351259443

/-!
# A227539: Signature sequence of Soldner's constant (A070769).

The programs for A227539, there is no canonical definition to state claims against.
-/

/-! ## A227539.P16258038016026505018

`1+A022336(n+1)`
-/

namespace A227539.P16258038016026505018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A022336 (n + 1)

end

end A227539.P16258038016026505018

/-! ## A227539.P16798900537279149517

`val(A033849(n+1), 3)`
-/

namespace A227539.P16798900537279149517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033849 (n + 1)).toNat 3

end

end A227539.P16798900537279149517

/-! ## A227539.P1278405431972427126

`A133334(n+1)%16`
-/

namespace A227539.P1278405431972427126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133334 (n + 1)) 16

end

end A227539.P1278405431972427126

/-! ## A227539.P14335446952580247842

`val(A003593(n+1), 3)+1`
-/

namespace A227539.P14335446952580247842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003593 (n + 1)).toNat 3 + 1

end

end A227539.P14335446952580247842

/-! ## A227539.P6504119690949837982

`val(A003598(n+1), 5)+1`
-/

namespace A227539.P6504119690949837982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003598 (n + 1)).toNat 5 + 1

end

end A227539.P6504119690949837982

/-! ## A227539.P337684947012872850

`A005496(A022336(n+1))`
-/

namespace A227539.P337684947012872850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A022336 (n + 1)).toNat

end

end A227539.P337684947012872850

/-! ## A227539.P11950463330849094028

`and(A080567(n+1), A133334(n+1))`
-/

namespace A227539.P11950463330849094028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080567 (n + 1)) (A133334 (n + 1))

end

end A227539.P11950463330849094028

/-! ## A227539.P17710299211527998387

`and(A125711(n+1), A133334(n+1))`
-/

namespace A227539.P17710299211527998387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A125711 (n + 1)) (A133334 (n + 1))

end

end A227539.P17710299211527998387

/-! ## A227539.P525581946207319547

`A112754(n+1)+1-A022337(n+1)`
-/

namespace A227539.P525581946207319547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112754 (n + 1) + (1 - A022337 (n + 1))

end

end A227539.P525581946207319547

/-! ## A227539.P15043209081142592166

`A133334(n+1)+A000212(val(n+1, 13))`
-/

namespace A227539.P15043209081142592166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133334 (n + 1) + A000212 (SequenceMachineLib.valuation (n + 1) 13)

end

end A227539.P15043209081142592166

/-!
# A227540: Denominator of the rationals obtained from the e.g.f. D(1,x), a Debye function.

The programs for A227540, there is no canonical definition to state claims against.
-/

/-! ## A227540.P13647814184966522867

`floor(sqrt(((n+1)*A106458(n))²+1))`
-/

namespace A227540.P13647814184966522867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (((n + 1 : ℤ) * A106458 n) ^ 2 + 1)

end

end A227540.P13647814184966522867

/-! ## A227540.P13804552663118522304

`xor(char[1]+n, (n-1)^(n%2))*A027642(n)`
-/

namespace A227540.P13804552663118522304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((if ∃ j, f1 j = n then 1 else 0) + n : ℕ) : ℤ) (((n : ℤ) - 1) ^ (n % 2)) * A027642 n

end

end A227540.P13804552663118522304

/-! ## A227540.P14893186560781459249

`A027642(n)+n*A106458(n)`
-/

namespace A227540.P14893186560781459249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n + (n : ℤ) * A106458 n

end

end A227540.P14893186560781459249

/-! ## A227540.P5632553130518978349

`(n+2)*A027642(n)-A164020(n)`
-/

namespace A227540.P5632553130518978349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A027642 n - A164020 n

end

end A227540.P5632553130518978349

/-! ## A227540.P776245058584555420

`(n+1)/A164020(n)*A172282(n)`
-/

namespace A227540.P776245058584555420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A164020 n : ℚ) * (A172282 n : ℚ)

end

end A227540.P776245058584555420

/-! ## A227540.P9889795391018689361

`(n+1)^((A165754(n)+char[1])%2)*A027642(n)`
-/

namespace A227540.P9889795391018689361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.tmod (A165754 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) 2 : ℤ) * (A027642 n : ℚ)

end

end A227540.P9889795391018689361

/-! ## A227540.P11899817160485235030

`A027642(n)*A162299(A266304(n))`
-/

namespace A227540.P11899817160485235030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n * A162299 (A266304 n).toNat

end

end A227540.P11899817160485235030

/-! ## A227540.P6528883122677025306

`A164869(n*A266591(n))+A027642(n)`
-/

namespace A227540.P6528883122677025306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164869 ((n : ℤ) * A266591 n).toNat + A027642 n

end

end A227540.P6528883122677025306

/-! ## A227540.P6733988723609162650

`A141310(n)/A141056(n)*A172282(n)`
-/

namespace A227540.P6733988723609162650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141310 n : ℚ) / (A141056 n : ℚ) * (A172282 n : ℚ)

end

end A227540.P6733988723609162650

/-! ## A227540.P3995286435463606179

`A027642(n)+lcm(A106458(n), A164869(n))`
-/

namespace A227540.P3995286435463606179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n + (Int.lcm (A106458 n) (A164869 n) : ℤ)

end

end A227540.P3995286435463606179

/-!
# A227541: a(n) = floor(13*n^2/4).

The programs for A227541, the canonical program `A227541.P2330233171112660340` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227541 has offset 0).

The definition of A227541 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(13*n²/4)` (program `A227541.P2330233171112660340`, by `A227541.P2330233171112660340.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A227541.P2330233171112660340

`floor(13*n²/4)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A227541

/-- `floor(13*n²/4)` -/
def P2330233171112660340.Spec : Prop :=
  ∀ n, P2330233171112660340.a n = A227541 n

theorem P2330233171112660340.correct : P2330233171112660340.Spec := by
  intro n
  simp only [A227541]

end A227541

/-! ## A227541.P12330250881757989766

`ogf((3x+7x^2+3x^3)/(1-2x+2x^3-x^4))`
-/

namespace A227541.P12330250881757989766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 7, 3] [1, -2, 0, 2, -1] n

end

end A227541.P12330250881757989766

namespace A227541

/-- `ogf((3x+7x^2+3x^3)/(1-2x+2x^3-x^4))` -/
def P12330250881757989766.Spec : Prop :=
  ∀ n, P12330250881757989766.a n = A227541 n

end A227541

/-! ## A227541.P2256332174949322597

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=3, a(2)=13, a(3)=29`
-/

namespace A227541.P2256332174949322597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 13, 29] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A227541.P2256332174949322597

namespace A227541

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P2256332174949322597.Spec : Prop :=
  ∀ n, P2256332174949322597.a n = A227541 n

end A227541

/-! ## A227541.P12202414355309007021

`∑[a(n-2)+13]` with `a(0)=0, a(1)=3, a(2)=10`
-/

namespace A227541.P12202414355309007021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 10] fun n f1 =>
  f1 (n - 2) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227541.P12202414355309007021

namespace A227541

/-- `∑[a(n-2)+13]` -/
def P12202414355309007021.Spec : Prop :=
  ∀ n, (P12202414355309007021.a n : ℤ) = A227541 n

end A227541

/-! ## A227541.P7880934180811482619

`∑[∑[floor(a(n-2))]]` with `a(0)=0, a(1)=3, a(2)=7, a(3)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A227541.P7880934180811482619
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 7, 6] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227541.P7880934180811482619

namespace A227541

/-- `∑[∑[floor(a(n-2))]]` -/
def P7880934180811482619.Spec : Prop :=
  ∀ n, (P7880934180811482619.a n : ℤ) = A227541 n

end A227541

/-! ## A227541.P422695806869409260

`∑[∑[a(n-2)%8]]` with `a(0)=0, a(1)=3, a(2)=7, a(3)=6`
-/

namespace A227541.P422695806869409260
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 7, 6] fun n f2 =>
  f2 (n - 2) % 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227541.P422695806869409260

namespace A227541

/-- `∑[∑[a(n-2)%8]]` -/
def P422695806869409260.Spec : Prop :=
  ∀ n, (P422695806869409260.a n : ℤ) = A227541 n

end A227541

/-! ## A227541.P13731878371094663840

`round(A152742(n)/4)`
-/

namespace A227541.P13731878371094663840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A152742 n : ℚ) / 4)

end

end A227541.P13731878371094663840

namespace A227541

/-- `round(A152742(n)/4)` -/
def P13731878371094663840.Spec : Prop :=
  ∀ n, P13731878371094663840.a n = A227541 n

end A227541

/-! ## A227541.P10589116471807366758

`A032527(n)+2*n²`
-/

namespace A227541.P10589116471807366758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 n + (2 * n ^ 2 : ℤ)

end

end A227541.P10589116471807366758

namespace A227541

/-- `A032527(n)+2*n²` -/
def P10589116471807366758.Spec : Prop :=
  ∀ n, P10589116471807366758.a n = A227541 n

end A227541

/-! ## A227541.P3277518041330554636

`A002620(n)+3*n²`
-/

namespace A227541.P3277518041330554636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + (3 * n ^ 2 : ℤ)

end

end A227541.P3277518041330554636

namespace A227541

/-- `A002620(n)+3*n²` -/
def P3277518041330554636.Spec : Prop :=
  ∀ n, P3277518041330554636.a n = A227541 n

end A227541

/-! ## A227541.P14014857184753371257

`(2*n)²-A077043(n)`
-/

namespace A227541.P14014857184753371257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - A077043 n

end

end A227541.P14014857184753371257

namespace A227541

/-- `(2*n)²-A077043(n)` -/
def P14014857184753371257.Spec : Prop :=
  ∀ n, P14014857184753371257.a n = A227541 n

end A227541

/-! ## A227541.P8739138804176793987

`(7*n²-A000982(n))/2`
-/

namespace A227541.P8739138804176793987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * n ^ 2 : ℤ) - A000982 n : ℚ) / 2

end

end A227541.P8739138804176793987

namespace A227541

/-- `(7*n²-A000982(n))/2` -/
def P8739138804176793987.Spec : Prop :=
  ∀ n, P8739138804176793987.a n = (A227541 n : ℚ)

end A227541

/-! ## A227541.P3912263729850910711

`A249547(n)+n*(2*n-1)`
-/

namespace A227541.P3912263729850910711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249547 n + (n : ℤ) * ((2 * n : ℤ) - 1)

end

end A227541.P3912263729850910711

namespace A227541

/-- `A249547(n)+n*(2*n-1)` -/
def P3912263729850910711.Spec : Prop :=
  ∀ n, P3912263729850910711.a n = A227541 n

end A227541

/-! ## A227541.P18061895794682654141

`A006578(n)+A005476(n)`
-/

namespace A227541.P18061895794682654141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 n + A005476 n

end

end A227541.P18061895794682654141

namespace A227541

/-- `A006578(n)+A005476(n)` -/
def P18061895794682654141.Spec : Prop :=
  ∀ n, P18061895794682654141.a n = A227541 n

end A227541

/-! ## A227541.P732788566936652725

`A033428(n)+A002620(n)`
-/

namespace A227541.P732788566936652725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n + A002620 n

end

end A227541.P732788566936652725

namespace A227541

/-- `A033428(n)+A002620(n)` -/
def P732788566936652725.Spec : Prop :=
  ∀ n, P732788566936652725.a n = A227541 n

end A227541

/-! ## A227541.P403557048824254526

`A077043(n)+A032526(n)`
-/

namespace A227541.P403557048824254526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n + A032526 n

end

end A227541.P403557048824254526

namespace A227541

/-- `A077043(n)+A032526(n)` -/
def P403557048824254526.Spec : Prop :=
  ∀ n, P403557048824254526.a n = A227541 n

end A227541

/-! ## A227541.P6421492191515588384

`A078126(n)+A056107(n)`
-/

namespace A227541.P6421492191515588384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078126 n + A056107 n

end

end A227541.P6421492191515588384

namespace A227541

/-- `A078126(n)+A056107(n)` -/
def P6421492191515588384.Spec : Prop :=
  ∀ n, P6421492191515588384.a n = A227541 n

end A227541

/-! ## A227541.P804149442150738063

`A195045(n)+A010673(n)`
-/

namespace A227541.P804149442150738063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195045 n + A010673 n

end

end A227541.P804149442150738063

namespace A227541

/-- `A195045(n)+A010673(n)` -/
def P804149442150738063.Spec : Prop :=
  ∀ n, P804149442150738063.a n = A227541 n

end A227541

/-! ## A227541.P9059156941626198484

`A398841(n)+A038707(n)`
-/

namespace A227541.P9059156941626198484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398841 n + A038707 n

end

end A227541.P9059156941626198484

namespace A227541

/-- `A398841(n)+A038707(n)` -/
def P9059156941626198484.Spec : Prop :=
  ∀ n, P9059156941626198484.a n = A227541 n

end A227541

/-! ## A227541.P15526774233099019756

`A393448(n)+A060747(n)`
-/

namespace A227541.P15526774233099019756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393448 n + A060747 n

end

end A227541.P15526774233099019756

namespace A227541

/-- `A393448(n)+A060747(n)` -/
def P15526774233099019756.Spec : Prop :=
  ∀ n, P15526774233099019756.a n = A227541 n

end A227541

/-! ## A227541.P3265998371574660258

`A007742(n)-A001859(n)`
-/

namespace A227541.P3265998371574660258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 n - A001859 n

end

end A227541.P3265998371574660258

namespace A227541

/-- `A007742(n)-A001859(n)` -/
def P3265998371574660258.Spec : Prop :=
  ∀ n, P3265998371574660258.a n = A227541 n

end A227541

/-!
# A227542: a(n) is the number of all terms preceding a(n-1) that have the same even-odd parity as a(n-1).

The programs for A227542, the canonical program `A227542.P8417545114221826195` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227542 has offset 0).

The definition of A227542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227542.P8417545114221826195

`ogf((x^2-x^3+2x^4+x^5-3x^6+2x^7)/(1-x-x^4+x^5))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A227542

/-- `ogf((x^2-x^3+2x^4+x^5-3x^6+2x^7)/(1-x-x^4+x^5))` -/
def P8417545114221826195.Spec : Prop :=
  ∀ n, P8417545114221826195.a n = A227542 n

theorem P8417545114221826195.correct : P8417545114221826195.Spec := by
  intro n
  simp only [A227542]

end A227542

/-! ## A227542.P9842359982543790626

`a(n-4)+2` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=2, a(5)=3, a(6)=1`
-/

namespace A227542.P9842359982543790626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0, 2, 3, 1] fun n a =>
  a (n - 4) + 2

end

end A227542.P9842359982543790626

namespace A227542

/-- `a(n-4)+2` -/
def P9842359982543790626.Spec : Prop :=
  ∀ n, (P9842359982543790626.a n : ℤ) = A227542 n

end A227542

/-! ## A227542.P450871155473136631

`A028242(xor(n, 3%(n+1)))-1`
-/

namespace A227542.P450871155473136631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Nat.xor n (3 % (n + 1))) - 1

end

end A227542.P450871155473136631

namespace A227542

/-- `A028242(xor(n, 3%(n+1)))-1` -/
def P450871155473136631.Spec : Prop :=
  ∀ n, P450871155473136631.a n = A227542 n

end A227542

/-! ## A227542.P18112918889347646440

`A110654(n)-and(n, A329683(n))`
-/

namespace A227542.P18112918889347646440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - Int.land (n : ℤ) (A329683 n)

end

end A227542.P18112918889347646440

namespace A227542

/-- `A110654(n)-and(n, A329683(n))` -/
def P18112918889347646440.Spec : Prop :=
  ∀ n, P18112918889347646440.a n = A227542 n

end A227542

/-! ## A227542.P6123845906405531558

`A047243(A008619(n))%A029579(n)`
-/

namespace A227542.P6123845906405531558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047243 (A008619 n).toNat) (A029579 n)

end

end A227542.P6123845906405531558

namespace A227542

/-- `A047243(A008619(n))%A029579(n)` -/
def P6123845906405531558.Spec : Prop :=
  ∀ n, P6123845906405531558.a n = A227542 n

end A227542

/-! ## A227542.P15561504885857068834

`A047454(n+1)%A165355(A004526(n))`
-/

namespace A227542.P15561504885857068834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047454 (n + 1)) (A165355 (A004526 n).toNat)

end

end A227542.P15561504885857068834

namespace A227542

/-- `A047454(n+1)%A165355(A004526(n))` -/
def P15561504885857068834.Spec : Prop :=
  ∀ n, P15561504885857068834.a n = A227542 n

end A227542

/-! ## A227542.P12778031351594581665

`(∑[A174091(n+1)]+n+1)%A116922(n+1)`
-/

namespace A227542.P12778031351594581665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)) (A116922 (n + 1))

end

end A227542.P12778031351594581665

namespace A227542

/-- `(∑[A174091(n+1)]+n+1)%A116922(n+1)` -/
def P12778031351594581665.Spec : Prop :=
  ∀ n, P12778031351594581665.a n = A227542 n

end A227542

/-! ## A227542.P16557314596001799383

`∑[A127968(n)]%A115339(n+1)`
-/

namespace A227542.P16557314596001799383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A115339 (n + 1))

end

end A227542.P16557314596001799383

namespace A227542

/-- `∑[A127968(n)]%A115339(n+1)` -/
def P16557314596001799383.Spec : Prop :=
  ∀ n, P16557314596001799383.a n = A227542 n

end A227542

/-!
# A227543: Triangle defined by g.f. A(x,q) such that: A(x,q) = 1 + x*A(q*x,q)*A(x,q), as read by terms k=0..n*(n-1)/2 in rows n>=0.

The programs for A227543, there is no canonical definition to state claims against.
-/

/-! ## A227543.P6202938003157697573

`A138158(lt[0, A138158(n)])`
-/

namespace A227543.P6202938003157697573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138158 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A227543.P6202938003157697573

/-! ## A227543.P17292677438816827468

`A138158(comp[eq[0, A138158(n)]])`
-/

namespace A227543.P17292677438816827468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138158 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138158 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A227543.P17292677438816827468

/-! ## A227543.P11325565562679168528

`A129182(lt[0, A129182(n)])`
-/

namespace A227543.P11325565562679168528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A227543.P11325565562679168528

/-! ## A227543.P5501228631958890098

`runs[A390502(n)]`
-/

namespace A227543.P5501228631958890098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A227543.P5501228631958890098

/-!
# A227544: Expansion of e.g.f. 1/(1 - sin(6*x))^(1/6).

The programs for A227544, there is no canonical definition to state claims against.
-/

/-! ## A227544.P15535134152679003736

`A084644(a(n-1))` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A227544.P15535134152679003736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7] fun n a =>
  A084644 (a (n - 1)).toNat

end

end A227544.P15535134152679003736

/-!
# A227545: The number of idempotents in the Brauer monoid on [1..n].

The programs for A227545, there is no canonical definition to state claims against.
-/

/-! ## A227545.P4736528919661636396

`A246162(round((sqrt(3)+2)*a(n-1)))-1` with `a(0)=1, a(1)=1`
-/

namespace A227545.P4736528919661636396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A246162 (SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ))).toNat - 1

end

end A227545.P4736528919661636396

/-! ## A227545.P14735538918469236034

`A202691(A086955(n))`
-/

namespace A227545.P14735538918469236034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202691 (A086955 n).toNat

end

end A227545.P14735538918469236034

/-!
# A227546: a(n) = n! + n^2 + 1.

The programs for A227546, the canonical program `A227546.P3792816590074060115` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227546 has offset 0).

The definition of A227546 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!+n²+1` (program `A227546.P3792816590074060115`, by `A227546.P3792816590074060115.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A227546.P3792816590074060115

`n!+n²+1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A227546

/-- `n!+n²+1` -/
def P3792816590074060115.Spec : Prop :=
  ∀ n, (P3792816590074060115.a n : ℤ) = A227546 n

theorem P3792816590074060115.correct : P3792816590074060115.Spec := by
  intro n
  simp only [A227546]

end A227546

/-! ## A227546.P8330901359891516767

`n²+1+n!`
-/

namespace A227546.P8330901359891516767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (1 + Nat.factorial n)

end

end A227546.P8330901359891516767

namespace A227546

/-- `n²+1+n!` -/
def P8330901359891516767.Spec : Prop :=
  ∀ n, (P8330901359891516767.a n : ℤ) = A227546 n

theorem P8330901359891516767.correct : P8330901359891516767.Spec := by
  intro n
  simp only [A227546, Nat.add_sub_cancel, A227546.P8330901359891516767.a, A227546.P3792816590074060115.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A227546

/-! ## A227546.P735701793462188231

`n^2+n!+1`
-/

namespace A227546.P735701793462188231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (Nat.factorial n + 1)

end

end A227546.P735701793462188231

namespace A227546

/-- `n^2+n!+1` -/
def P735701793462188231.Spec : Prop :=
  ∀ n, (P735701793462188231.a n : ℤ) = A227546 n

theorem P735701793462188231.correct : P735701793462188231.Spec := by
  intro n
  simp only [A227546, Nat.add_sub_cancel, A227546.P735701793462188231.a, A227546.P3792816590074060115.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A227546

/-! ## A227546.P14230761445578373867

`n*n+1+n!`
-/

namespace A227546.P14230761445578373867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n + 1 + Nat.factorial n

end

end A227546.P14230761445578373867

namespace A227546

/-- `n*n+1+n!` -/
def P14230761445578373867.Spec : Prop :=
  ∀ n, (P14230761445578373867.a n : ℤ) = A227546 n

theorem P14230761445578373867.correct : P14230761445578373867.Spec := by
  intro n
  simp only [A227546, Nat.add_sub_cancel, A227546.P14230761445578373867.a, A227546.P3792816590074060115.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A227546

/-! ## A227546.P17397593691320004237

`n²-xor(-1, n!)`
-/

namespace A227546.P17397593691320004237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - Int.xor (-1) (Nat.factorial n : ℤ)

end

end A227546.P17397593691320004237

namespace A227546

/-- `n²-xor(-1, n!)` -/
def P17397593691320004237.Spec : Prop :=
  ∀ n, P17397593691320004237.a n = A227546 n

end A227546

/-! ## A227546.P9565786134236290539

`A004664(n)+1`
-/

namespace A227546.P9565786134236290539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004664 n + 1

end

end A227546.P9565786134236290539

namespace A227546

/-- `A004664(n)+1` -/
def P9565786134236290539.Spec : Prop :=
  ∀ n, P9565786134236290539.a n = A227546 n

theorem P9565786134236290539.correct : P9565786134236290539.Spec := by
  intro n
  simp only [A227546, Nat.add_sub_cancel, A227546.P9565786134236290539.a, A227546.P3792816590074060115.a, A004664, A004664.P2016887011664002620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A227546

/-! ## A227546.P11961812860414454217

`A038507(n)+n²`
-/

namespace A227546.P11961812860414454217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038507 n + (n ^ 2 : ℤ)

end

end A227546.P11961812860414454217

namespace A227546

/-- `A038507(n)+n²` -/
def P11961812860414454217.Spec : Prop :=
  ∀ n, P11961812860414454217.a n = A227546 n

theorem P11961812860414454217.correct : P11961812860414454217.Spec := by
  intro n
  simp only [A227546, Nat.add_sub_cancel, A227546.P11961812860414454217.a, A227546.P3792816590074060115.a, A038507, A038507.P6297172410669872132.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A227546

/-! ## A227546.P2666359562575165292

`A066143(n)+1-n`
-/

namespace A227546.P2666359562575165292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066143 n + (1 - (n : ℤ))

end

end A227546.P2666359562575165292

namespace A227546

/-- `A066143(n)+1-n` -/
def P2666359562575165292.Spec : Prop :=
  ∀ n, P2666359562575165292.a n = A227546 n

theorem P2666359562575165292.correct : P2666359562575165292.Spec := by
  intro n
  simp only [A227546, Nat.add_sub_cancel, A227546.P2666359562575165292.a, A227546.P3792816590074060115.a, A066143, A066143.P17504484635712324695.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A227546

/-! ## A227546.P12797396307785783955

`A155162(∑[n])+n²`
-/

namespace A227546.P12797396307785783955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155162 (∑ j ∈ Finset.range (n + 1), f1 j) + (n ^ 2 : ℤ)

end

end A227546.P12797396307785783955

namespace A227546

/-- `A155162(∑[n])+n²` -/
def P12797396307785783955.Spec : Prop :=
  ∀ n, P12797396307785783955.a n = A227546 n

end A227546

/-!
# A227547: a(n) = a(n-1) + prime(n-1), with a(1)=3.

The programs for A227547, the canonical program `A227547.P17523861269828314038` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227547 has offset 1).

The definition of A227547 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A000040(n)` (program `A227547.P17523861269828314038`, by `A227547.P17523861269828314038.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A227547.P10439413106683471991

`A007504(n)+3`
-/

namespace A227547.P10439413106683471991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n + 3

end

end A227547.P10439413106683471991

namespace A227547

/-- `A007504(n)+3` -/
def P10439413106683471991.Spec : Prop :=
  ∀ n, P10439413106683471991.a n = A227547 (n + 1)

end A227547

/-! ## A227547.P9561160085571280683

`A036439(n+1)+1`
-/

namespace A227547.P9561160085571280683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 1) + 1

end

end A227547.P9561160085571280683

namespace A227547

/-- `A036439(n+1)+1` -/
def P9561160085571280683.Spec : Prop :=
  ∀ n, P9561160085571280683.a n = A227547 (n + 1)

end A227547

/-! ## A227547.P13782687494616964352

`A014284(n+1)+2`
-/

namespace A227547.P13782687494616964352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 1) + 2

end

end A227547.P13782687494616964352

namespace A227547

/-- `A014284(n+1)+2` -/
def P13782687494616964352.Spec : Prop :=
  ∀ n, P13782687494616964352.a n = A227547 (n + 1)

end A227547

/-! ## A227547.P17523861269828314038

`a(n-1)+A000040(n)` with `a(0)=3`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A227547

/-- `a(n-1)+A000040(n)` -/
def P17523861269828314038.Spec : Prop :=
  ∀ n, P17523861269828314038.a n = A227547 (n + 1)

theorem P17523861269828314038.correct : P17523861269828314038.Spec := by
  intro n
  simp only [A227547, Nat.add_sub_cancel]

end A227547

/-! ## A227547.P15131255217217759856

`∑[p?[a(n-1)+2]]` with `a(0)=3, a(1)=2, a(2)=1`
-/

namespace A227547.P15131255217217759856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 1] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227547.P15131255217217759856

namespace A227547

/-- `∑[p?[a(n-1)+2]]` -/
def P15131255217217759856.Spec : Prop :=
  ∀ n, (P15131255217217759856.a n : ℤ) = A227547 (n + 1)

end A227547

/-! ## A227547.P1978750819900194901

`∑[A008578(n+1)]+2`
-/

namespace A227547.P1978750819900194901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A227547.P1978750819900194901

namespace A227547

/-- `∑[A008578(n+1)]+2` -/
def P1978750819900194901.Spec : Prop :=
  ∀ n, P1978750819900194901.a n = A227547 (n + 1)

end A227547

/-! ## A227547.P9640965315855609489

`∑[A182986(n+1)]+3`
-/

namespace A227547.P9640965315855609489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A227547.P9640965315855609489

namespace A227547

/-- `∑[A182986(n+1)]+3` -/
def P9640965315855609489.Spec : Prop :=
  ∀ n, P9640965315855609489.a n = A227547 (n + 1)

end A227547

/-! ## A227547.P12874073680297454471

`A110895(n+1)+2-n`
-/

namespace A227547.P12874073680297454471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110895 (n + 1) + (2 - (n : ℤ))

end

end A227547.P12874073680297454471

namespace A227547

/-- `A110895(n+1)+2-n` -/
def P12874073680297454471.Spec : Prop :=
  ∀ n, P12874073680297454471.a n = A227547 (n + 1)

end A227547

/-! ## A227547.P4677012267720763048

`∑[A000040(abs(1-n)+1)]`
-/

namespace A227547.P4677012267720763048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227547.P4677012267720763048

namespace A227547

/-- `∑[A000040(abs(1-n)+1)]` -/
def P4677012267720763048.Spec : Prop :=
  ∀ n, P4677012267720763048.a n = A227547 (n + 1)

end A227547

/-! ## A227547.P14591342168891202123

`∑[sqrt(A280076(n+1))]+2`
-/

namespace A227547.P14591342168891202123
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A280076 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A227547.P14591342168891202123

namespace A227547

/-- `∑[sqrt(A280076(n+1))]+2` -/
def P14591342168891202123.Spec : Prop :=
  ∀ n, P14591342168891202123.a n = (A227547 (n + 1) : ℝ)

end A227547

/-! ## A227547.P8848434372619577402

`A262392(n)+A059841(n)`
-/

namespace A227547.P8848434372619577402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262392 n + A059841 n

end

end A227547.P8848434372619577402

namespace A227547

/-- `A262392(n)+A059841(n)` -/
def P8848434372619577402.Spec : Prop :=
  ∀ n, P8848434372619577402.a n = A227547 (n + 1)

end A227547

/-! ## A227547.P10700731443675008337

`∑[A000040(A028310(n))]+1`
-/

namespace A227547.P10700731443675008337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A227547.P10700731443675008337

namespace A227547

/-- `∑[A000040(A028310(n))]+1` -/
def P10700731443675008337.Spec : Prop :=
  ∀ n, P10700731443675008337.a n = A227547 (n + 1)

end A227547

/-! ## A227547.P6446601973883444348

`A175965(n+1)+A028815(n)`
-/

namespace A227547.P6446601973883444348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (n + 1) + A028815 n

end

end A227547.P6446601973883444348

namespace A227547

/-- `A175965(n+1)+A028815(n)` -/
def P6446601973883444348.Spec : Prop :=
  ∀ n, P6446601973883444348.a n = A227547 (n + 1)

end A227547

/-! ## A227547.P12823847151461664775

`A175965(n+2)+1`
-/

namespace A227547.P12823847151461664775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (n + 2) + 1

end

end A227547.P12823847151461664775

namespace A227547

/-- `A175965(n+2)+1` -/
def P12823847151461664775.Spec : Prop :=
  ∀ n, P12823847151461664775.a n = A227547 (n + 1)

end A227547

/-! ## A227547.P15829285595733824334

`∑[A158611(n+2)]+2`
-/

namespace A227547.P15829285595733824334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A227547.P15829285595733824334

namespace A227547

/-- `∑[A158611(n+2)]+2` -/
def P15829285595733824334.Spec : Prop :=
  ∀ n, P15829285595733824334.a n = A227547 (n + 1)

end A227547

/-! ## A227547.P7342789077958944139

`A083719(n+1)/(n+1)+2`
-/

namespace A227547.P7342789077958944139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083719 (n + 1) : ℚ) / (n + 1 : ℚ) + 2

end

end A227547.P7342789077958944139

namespace A227547

/-- `A083719(n+1)/(n+1)+2` -/
def P7342789077958944139.Spec : Prop :=
  ∀ n, P7342789077958944139.a n = (A227547 (n + 1) : ℚ)

end A227547

/-! ## A227547.P9570343099113309230

`∑[record[A025473(n+1)]]+2`
-/

namespace A227547.P9570343099113309230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A227547.P9570343099113309230

namespace A227547

/-- `∑[record[A025473(n+1)]]+2` -/
def P9570343099113309230.Spec : Prop :=
  ∀ n, P9570343099113309230.a n = A227547 (n + 1)

end A227547

/-! ## A227547.P8190552698258940615

`∑[record[A006530(n+1)]]+2`
-/

namespace A227547.P8190552698258940615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A227547.P8190552698258940615

namespace A227547

/-- `∑[record[A006530(n+1)]]+2` -/
def P8190552698258940615.Spec : Prop :=
  ∀ n, P8190552698258940615.a n = A227547 (n + 1)

end A227547

/-! ## A227547.P6421832624874991331

`∑[record[A020639(n+1)]]+2`
-/

namespace A227547.P6421832624874991331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A227547.P6421832624874991331

namespace A227547

/-- `∑[record[A020639(n+1)]]+2` -/
def P6421832624874991331.Spec : Prop :=
  ∀ n, P6421832624874991331.a n = A227547 (n + 1)

end A227547

/-! ## A227547.P13563468807118401337

`∑[p?[A141619(n+1)]]`
-/

namespace A227547.P13563468807118401337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141619 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227547.P13563468807118401337

namespace A227547

/-- `∑[p?[A141619(n+1)]]` -/
def P13563468807118401337.Spec : Prop :=
  ∀ n, P13563468807118401337.a n = A227547 (n + 1)

end A227547

/-!
# A227550: A triangle formed like Pascal's triangle, but with factorial(n) on the borders instead of 1.

The programs for A227550, there is no canonical definition to state claims against.
-/

/-! ## A227550.P9564014000651800617

`A108864(A084867(n))`
-/

namespace A227550.P9564014000651800617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108864 (A084867 n).toNat

end

end A227550.P9564014000651800617

/-! ## A227550.P11336903982031657867

`A171828(A084867(n)+1)`
-/

namespace A227550.P11336903982031657867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171828 (A084867 n + 1).toNat

end

end A227550.P11336903982031657867

/-! ## A227550.P10892754316722596251

`A191932(A084867(n)+1)`
-/

namespace A227550.P10892754316722596251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191932 (A084867 n + 1).toNat

end

end A227550.P10892754316722596251

/-!
# A227551: Number T(n,k) of partitions of n into distinct parts with boundary size k; triangle T(n,k), n>=0, 0<=k<=A227568(n), read by rows.

The programs for A227551, there is no canonical definition to state claims against.
-/

/-! ## A227551.P8653145197891520671

`A238406(n+3)-A014017(A049476(2*(n+2)))`
-/

namespace A227551.P8653145197891520671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238406 (n + 3) - A014017 (A049476 (2 * (n + 2))).toNat

end

end A227551.P8653145197891520671

/-! ## A227551.P3431703736996844397

`A001221(A164978(A131632(n+4)))`
-/

namespace A227551.P3431703736996844397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A164978 (A131632 (n + 4)).toNat).toNat

end

end A227551.P3431703736996844397

/-! ## A227551.P10409976048542582844

`∑{d}[A164978(A131632(n+4)), A010051(#)]`
-/

namespace A227551.P10409976048542582844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164978 (A131632 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010051 d

end

end A227551.P10409976048542582844

/-! ## A227551.P978672580527015836

`∑{p}[A164978(A131632(n+4)), A001055(#)]`
-/

namespace A227551.P978672580527015836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164978 (A131632 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001055 p

end

end A227551.P978672580527015836

/-! ## A227551.P17323113750152757831

`∑{p}[A164978(A131632(n+4)), A001222(#)]`
-/

namespace A227551.P17323113750152757831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164978 (A131632 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A227551.P17323113750152757831

/-!
# A227552: Number of partitions of n into distinct parts with maximal boundary size.

The programs for A227552, there is no canonical definition to state claims against.
-/

/-! ## A227552.P14027970602362225579

`A227551(∑[A227568(n)]+n)`
-/

namespace A227552.P14027970602362225579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227551 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A227552.P14027970602362225579

/-! ## A227552.P8632306245935980058

`A227551(eq[0, A227551(n+1)])`
-/

namespace A227552.P8632306245935980058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227552.P8632306245935980058

/-! ## A227552.P2410912226761446827

`A227551(lt[A227551(n+1), 1])`
-/

namespace A227552.P2410912226761446827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227551 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227551 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A227552.P2410912226761446827

/-! ## A227552.P9516125401124554464

`A227551(lt[A227551(n), 1]-1)`
-/

namespace A227552.P9516125401124554464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227551 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227551 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - 1)

end

end A227552.P9516125401124554464

/-! ## A227552.P13157269688676706969

`A227551(record[n*(1-A227551(n+1))])`
-/

namespace A227552.P13157269688676706969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A227551 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227551 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A227552.P13157269688676706969

/-!
# A227553: Number of solutions to x^2 - y^2 - z^2 == 1 (mod n).

The programs for A227553, the canonical program `A227553.P11642356460943025613` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227553 has offset 1).

The definition of A227553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227553.P11642356460943025613

`A087784(1+n)/A093148(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A227553

/-- `A087784(1+n)/A093148(n)` -/
def P11642356460943025613.Spec : Prop :=
  ∀ n, P11642356460943025613.a n = (A227553 (n + 1) : ℚ)

end A227553

/-! ## A227553.P6424396077152616388

`A208895(n+1)/A060968(n+1)`
-/

namespace A227553.P6424396077152616388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208895 (n + 1) : ℚ) / (A060968 (n + 1) : ℚ)

end

end A227553.P6424396077152616388

namespace A227553

/-- `A208895(n+1)/A060968(n+1)` -/
def P6424396077152616388.Spec : Prop :=
  ∀ n, P6424396077152616388.a n = (A227553 (n + 1) : ℚ)

end A227553

/-! ## A227553.P10624127362767642880

`A087784(n+1)/Δ[A047247(n+1)]`
-/

namespace A227553.P10624127362767642880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047247 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087784 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A227553.P10624127362767642880

namespace A227553

/-- `A087784(n+1)/Δ[A047247(n+1)]` -/
def P10624127362767642880.Spec : Prop :=
  ∀ n, P10624127362767642880.a n = (A227553 (n + 1) : ℚ)

end A227553

/-! ## A227553.P18045870066615764784

`(n+1)*A023023(4*(n+1))/A060968(n+1)`
-/

namespace A227553.P18045870066615764784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A023023 (4 * (n + 1)) : ℚ) / (A060968 (n + 1) : ℚ)

end

end A227553.P18045870066615764784

namespace A227553

/-- `(n+1)*A023023(4*(n+1))/A060968(n+1)` -/
def P18045870066615764784.Spec : Prop :=
  ∀ n, P18045870066615764784.a n = (A227553 (n + 1) : ℚ)

end A227553

/-! ## A227553.P4870833366913792479

`(n+1)*A023023(4*(n+1))/(gcd(4, n+1)*A204617(n+1))`
-/

namespace A227553.P4870833366913792479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A023023 (4 * (n + 1)) : ℚ) / ((Nat.gcd 4 (n + 1) : ℤ) * A204617 (n + 1) : ℚ)

end

end A227553.P4870833366913792479

namespace A227553

/-- `(n+1)*A023023(4*(n+1))/(gcd(4, n+1)*A204617(n+1))` -/
def P4870833366913792479.Spec : Prop :=
  ∀ n, P4870833366913792479.a n = (A227553 (n + 1) : ℚ)

end A227553

/-! ## A227553.P17803003276607471030

`A087784(n+1)/A000032(Δ[A001068(n)])`
-/

namespace A227553.P17803003276607471030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087784 (n + 1) : ℚ) / (A000032 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A227553.P17803003276607471030

namespace A227553

/-- `A087784(n+1)/A000032(Δ[A001068(n)])` -/
def P17803003276607471030.Spec : Prop :=
  ∀ n, P17803003276607471030.a n = (A227553 (n + 1) : ℚ)

end A227553

/-! ## A227553.P9037206255006176025

`A087784(n+1)/A038712(Δ[A001068(n)])`
-/

namespace A227553.P9037206255006176025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087784 (n + 1) : ℚ) / (A038712 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A227553.P9037206255006176025

namespace A227553

/-- `A087784(n+1)/A038712(Δ[A001068(n)])` -/
def P9037206255006176025.Spec : Prop :=
  ∀ n, P9037206255006176025.a n = (A227553 (n + 1) : ℚ)

end A227553

/-! ## A227553.P2535715035909483585

`A087784(n+1)/A065430(Δ[A001068(n)])`
-/

namespace A227553.P2535715035909483585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087784 (n + 1) : ℚ) / (A065430 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A227553.P2535715035909483585

namespace A227553

/-- `A087784(n+1)/A065430(Δ[A001068(n)])` -/
def P2535715035909483585.Spec : Prop :=
  ∀ n, P2535715035909483585.a n = (A227553 (n + 1) : ℚ)

end A227553

/-! ## A227553.P14751409379528044946

`A087784(n+1)/A038712(A014673(n+1))`
-/

namespace A227553.P14751409379528044946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087784 (n + 1) : ℚ) / (A038712 (A014673 (n + 1)).toNat : ℚ)

end

end A227553.P14751409379528044946

namespace A227553

/-- `A087784(n+1)/A038712(A014673(n+1))` -/
def P14751409379528044946.Spec : Prop :=
  ∀ n, P14751409379528044946.a n = (A227553 (n + 1) : ℚ)

end A227553

/-! ## A227553.P17555071362678850936

`A087784(n+1)/A038712(A071773(n+1))`
-/

namespace A227553.P17555071362678850936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087784 (n + 1) : ℚ) / (A038712 (A071773 (n + 1)).toNat : ℚ)

end

end A227553.P17555071362678850936

namespace A227553

/-- `A087784(n+1)/A038712(A071773(n+1))` -/
def P17555071362678850936.Spec : Prop :=
  ∀ n, P17555071362678850936.a n = (A227553 (n + 1) : ℚ)

end A227553

/-!
# A227554: Number of n X 2 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 3 binary array having nonzero determinant, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227554, the canonical program `A227554.P10961013400436622065` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227554 has offset 1).

The definition of A227554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227554.P10961013400436622065

`∑[∑[2*n]+C(∑[n]+3, 2)]+1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A227554

/-- `∑[∑[2*n]+C(∑[n]+3, 2)]+1` -/
def P10961013400436622065.Spec : Prop :=
  ∀ n, (P10961013400436622065.a n : ℤ) = A227554 (n + 1)

theorem P10961013400436622065.correct : P10961013400436622065.Spec := by
  intro n
  simp only [A227554, Nat.add_sub_cancel]

end A227554

/-! ## A227554.P4129833758045115850

`ogf((4-12x+21x^2-17x^3+8x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A227554.P4129833758045115850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -12, 21, -17, 8, -1] [1, -6, 15, -20, 15, -6, 1] n

end

end A227554.P4129833758045115850

namespace A227554

/-- `ogf((4-12x+21x^2-17x^3+8x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P4129833758045115850.Spec : Prop :=
  ∀ n, P4129833758045115850.a n = A227554 (n + 1)

end A227554

/-! ## A227554.P4922358967908510677

`∑[(n+1)*(∑[n]+9)*n/4+3]+1`
-/

namespace A227554.P4922358967908510677
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (((∑ j ∈ Finset.range (n + 1), f2 j + 9 : ℕ) : ℚ) * ((n : ℚ) / 4)) + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A227554.P4922358967908510677

namespace A227554

/-- `∑[(n+1)*(∑[n]+9)*n/4+3]+1` -/
def P4922358967908510677.Spec : Prop :=
  ∀ n, P4922358967908510677.a n = (A227554 (n + 1) : ℚ)

end A227554

/-! ## A227554.P7792892991747292267

`abs(∑[A055999(A000124(n))]-n)`
-/

namespace A227554.P7792892991747292267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A227554.P7792892991747292267

namespace A227554

/-- `abs(∑[A055999(A000124(n))]-n)` -/
def P7792892991747292267.Spec : Prop :=
  ∀ n, P7792892991747292267.a n = A227554 (n + 1)

end A227554

/-! ## A227554.P6860782595421319072

`∑[A055999(∑[n]+1)-A057427(n)]`
-/

namespace A227554.P6860782595421319072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 (∑ j ∈ Finset.range (n + 1), f2 j + 1) - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227554.P6860782595421319072

namespace A227554

/-- `∑[A055999(∑[n]+1)-A057427(n)]` -/
def P6860782595421319072.Spec : Prop :=
  ∀ n, P6860782595421319072.a n = A227554 (n + 1)

end A227554

/-! ## A227554.P16109648119953314795

`∑[A155212(A000217(n))+A054977(n)]`
-/

namespace A227554.P16109648119953314795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 (A000217 n).toNat + A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227554.P16109648119953314795

namespace A227554

/-- `∑[A155212(A000217(n))+A054977(n)]` -/
def P16109648119953314795.Spec : Prop :=
  ∀ n, P16109648119953314795.a n = A227554 (n + 1)

end A227554

/-! ## A227554.P2537172064946300927

`∑[A056000(A000124(n))-A133263(n)]`
-/

namespace A227554.P2537172064946300927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 (A000124 n).toNat - A133263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227554.P2537172064946300927

namespace A227554

/-- `∑[A056000(A000124(n))-A133263(n)]` -/
def P2537172064946300927.Spec : Prop :=
  ∀ n, P2537172064946300927.a n = A227554 (n + 1)

end A227554

/-! ## A227554.P6275215686590618273

`∑[A179865(n+1)+A027379(A000124(n))]`
-/

namespace A227554.P6275215686590618273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 1) + A027379 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227554.P6275215686590618273

namespace A227554

/-- `∑[A179865(n+1)+A027379(A000124(n))]` -/
def P6275215686590618273.Spec : Prop :=
  ∀ n, P6275215686590618273.a n = A227554 (n + 1)

end A227554

/-! ## A227554.P5566802819419990585

`(∑[A055999(A000124(n))]-n)%(A055236(n)²+1)`
-/

namespace A227554.P5566802819419990585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) (A055236 n ^ 2 + 1)

end

end A227554.P5566802819419990585

namespace A227554

/-- `(∑[A055999(A000124(n))]-n)%(A055236(n)²+1)` -/
def P5566802819419990585.Spec : Prop :=
  ∀ n, P5566802819419990585.a n = A227554 (n + 1)

end A227554

/-! ## A227554.P4656655163610146240

`(∑[A055999(A000124(n))]-n)*(2*A047999(n)-1)²`
-/

namespace A227554.P4656655163610146240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) * (2 * A047999 n - 1) ^ 2

end

end A227554.P4656655163610146240

namespace A227554

/-- `(∑[A055999(A000124(n))]-n)*(2*A047999(n)-1)²` -/
def P4656655163610146240.Spec : Prop :=
  ∀ n, P4656655163610146240.a n = A227554 (n + 1)

end A227554

/-!
# A227555: Number of n X 3 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 4 binary array having nonzero determinant, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227555, there is no canonical definition to state claims against.
-/

/-! ## A227555.P14608381179338024183

`A227558(∑[n+2]+4)`
-/

namespace A227555.P14608381179338024183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227558 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A227555.P14608381179338024183

/-! ## A227555.P11416713273134843074

`A227558(A167614(n+1))+A025469(n)`
-/

namespace A227555.P11416713273134843074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227558 (A167614 (n + 1)).toNat + A025469 n

end

end A227555.P11416713273134843074

/-! ## A227555.P18297440432730331013

`A227558(A167614(n+1))+A061858(n)`
-/

namespace A227555.P18297440432730331013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227558 (A167614 (n + 1)).toNat + A061858 n

end

end A227555.P18297440432730331013

/-! ## A227555.P12315956600016991994

`A227558(A167614(n+1))+A185037(n)`
-/

namespace A227555.P12315956600016991994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227558 (A167614 (n + 1)).toNat + A185037 n

end

end A227555.P12315956600016991994

/-! ## A227555.P5719512709158781494

`A227558(A167614(n+1))+A185284(n)`
-/

namespace A227555.P5719512709158781494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227558 (A167614 (n + 1)).toNat + A185284 n

end

end A227555.P5719512709158781494

/-!
# A227556: Number of nX4 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X5 binary array having nonzero determinant, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227556, there is no canonical definition to state claims against.
-/

/-! ## A227556.P2830060795737823396

`A227558(∑[n+3]+7)`
-/

namespace A227556.P2830060795737823396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227558 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A227556.P2830060795737823396

/-! ## A227556.P11564348037818243906

`or(A227558(A141214(n+1)), A341025(n))`
-/

namespace A227556.P11564348037818243906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A227558 (A141214 (n + 1)).toNat) (A341025 (n + 120))

end

end A227556.P11564348037818243906

/-! ## A227556.P14094442435379280731

`A227558(A141214(n+1))%A225896(2*n+5)`
-/

namespace A227556.P14094442435379280731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227558 (A141214 (n + 1)).toNat) (A225896 (2 * n + 5))

end

end A227556.P14094442435379280731

/-! ## A227556.P8325530024769118670

`or(A227558(A141214(n+1)), A325836(6*n+8))`
-/

namespace A227556.P8325530024769118670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A227558 (A141214 (n + 1)).toNat) (A325836 (6 * n + 8))

end

end A227556.P8325530024769118670

/-!
# A227557: Number of nX5 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X6 binary array having nonzero determinant, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227557, there is no canonical definition to state claims against.
-/

/-! ## A227557.P7464876196599560263

`A227558(A374005(n+1))`
-/

namespace A227557.P7464876196599560263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227558 (A374005 (n + 1)).toNat

end

end A227557.P7464876196599560263

/-! ## A227557.P4991263730862953652

`A227558(A167499(n+3))`
-/

namespace A227557.P4991263730862953652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227558 (A167499 (n + 3)).toNat

end

end A227557.P4991263730862953652

/-! ## A227557.P18075730140487588576

`A227558(A155212(n)+13)`
-/

namespace A227557.P18075730140487588576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227558 (A155212 n + 13).toNat

end

end A227557.P18075730140487588576

/-! ## A227557.P13662324672020102152

`A227558(A056000(n)+15)`
-/

namespace A227557.P13662324672020102152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227558 (A056000 n + 15).toNat

end

end A227557.P13662324672020102152

/-! ## A227557.P5558763367009348150

`A227558(eq[7, A066657(n)])`
-/

namespace A227557.P5558763367009348150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227558 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227557.P5558763367009348150

/-!
# A227558: T(n,k)=Number of nXk 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X(k+1) binary array having nonzero determinant, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227558, there is no canonical definition to state claims against.
-/

/-! ## A227558.P12167799661873017944

`A130696(A225900(n+1)+1)`
-/

namespace A227558.P12167799661873017944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (A225900 (n + 1) + 1).toNat

end

end A227558.P12167799661873017944

/-! ## A227558.P16513072414838556051

`A325836(A282130(n+1))+A225900(n+1)`
-/

namespace A227558.P16513072414838556051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325836 (A282130 (n + 1)).toNat + A225900 (n + 1)

end

end A227558.P16513072414838556051

/-! ## A227558.P15215456172683300372

`A325836(A282130(n+1))+A076499(A227089(n+1))`
-/

namespace A227558.P15215456172683300372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325836 (A282130 (n + 1)).toNat + A076499 (A227089 (n + 1)).toNat

end

end A227558.P15215456172683300372

/-!
# A227559: Number of partitions of n into distinct parts with boundary size 2.

The programs for A227559, the canonical program `A227559.P17297700120002775526` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227559 has offset 3).

The definition of A227559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227559.P13360046980866603409

`n+1-A401008(n+3)`
-/

namespace A227559.P13360046980866603409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A401008 (n + 3)

end

end A227559.P13360046980866603409

namespace A227559

/-- `n+1-A401008(n+3)` -/
def P13360046980866603409.Spec : Prop :=
  ∀ n, P13360046980866603409.a n = A227559 (n + 3)

end A227559

/-! ## A227559.P3722096768625962381

`(A086374(n+3)+n-1)/2`
-/

namespace A227559.P3722096768625962381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086374 (n + 3) + ((n : ℤ) - 1) : ℚ) / 2

end

end A227559.P3722096768625962381

namespace A227559

/-- `(A086374(n+3)+n-1)/2` -/
def P3722096768625962381.Spec : Prop :=
  ∀ n, P3722096768625962381.a n = (A227559 (n + 3) : ℚ)

end A227559

/-! ## A227559.P17297700120002775526

`A091954(n+3)-ceil(n/2)+n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A227559

/-- `A091954(n+3)-ceil(n/2)+n` -/
def P17297700120002775526.Spec : Prop :=
  ∀ n, P17297700120002775526.a n = A227559 (n + 3)

theorem P17297700120002775526.correct : P17297700120002775526.Spec := by
  intro n
  simp only [A227559, Nat.add_sub_cancel]

end A227559

/-! ## A227559.P5458018568024699674

`A091954(n+3)+A004526(n)`
-/

namespace A227559.P5458018568024699674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 3) + A004526 n

end

end A227559.P5458018568024699674

namespace A227559

/-- `A091954(n+3)+A004526(n)` -/
def P5458018568024699674.Spec : Prop :=
  ∀ n, P5458018568024699674.a n = A227559 (n + 3)

end A227559

/-! ## A227559.P10272629407728084205

`A110654(n)+A069283(n+3)`
-/

namespace A227559.P10272629407728084205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A069283 (n + 3)

end

end A227559.P10272629407728084205

namespace A227559

/-- `A110654(n)+A069283(n+3)` -/
def P10272629407728084205.Spec : Prop :=
  ∀ n, P10272629407728084205.a n = A227559 (n + 3)

end A227559

/-! ## A227559.P1970183123968380083

`A069283(n+3)+A004526(n+1)`
-/

namespace A227559.P1970183123968380083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (n + 3) + A004526 (n + 1)

end

end A227559.P1970183123968380083

namespace A227559

/-- `A069283(n+3)+A004526(n+1)` -/
def P1970183123968380083.Spec : Prop :=
  ∀ n, P1970183123968380083.a n = A227559 (n + 3)

end A227559

/-! ## A227559.P7168676784450735398

`A001227(n+3)+n-A008619(n)`
-/

namespace A227559.P7168676784450735398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 3) + ((n : ℤ) - A008619 n)

end

end A227559.P7168676784450735398

namespace A227559

/-- `A001227(n+3)+n-A008619(n)` -/
def P7168676784450735398.Spec : Prop :=
  ∀ n, P7168676784450735398.a n = A227559 (n + 3)

end A227559

/-! ## A227559.P18359124145971894462

`∑[A000035(n)+Δ[A001227(n+2)]]`
-/

namespace A227559.P18359124145971894462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227559.P18359124145971894462

namespace A227559

/-- `∑[A000035(n)+Δ[A001227(n+2)]]` -/
def P18359124145971894462.Spec : Prop :=
  ∀ n, P18359124145971894462.a n = A227559 (n + 3)

end A227559

/-! ## A227559.P7957982537642043145

`A004526(n+1)+A001227(n+3)-1`
-/

namespace A227559.P7957982537642043145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + (A001227 (n + 3) - 1)

end

end A227559.P7957982537642043145

namespace A227559

/-- `A004526(n+1)+A001227(n+3)-1` -/
def P7957982537642043145.Spec : Prop :=
  ∀ n, P7957982537642043145.a n = A227559 (n + 3)

end A227559

/-! ## A227559.P154335999519967093

`∑[A007814(n²+1)+Δ[A001227(n+2)]]`
-/

namespace A227559.P154335999519967093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n ^ 2 + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227559.P154335999519967093

namespace A227559

/-- `∑[A007814(n²+1)+Δ[A001227(n+2)]]` -/
def P154335999519967093.Spec : Prop :=
  ∀ n, P154335999519967093.a n = A227559 (n + 3)

end A227559

/-!
# A227560: Number of partitions of n into distinct parts with boundary size 3.

The programs for A227560, there is no canonical definition to state claims against.
-/

/-! ## A227560.P15925974133340103622

`A227345(A167614(n+5))`
-/

namespace A227560.P15925974133340103622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227345 (A167614 (n + 5)).toNat

end

end A227560.P15925974133340103622

/-! ## A227560.P47913224641421396

`A227345(A152950(n+7))`
-/

namespace A227560.P47913224641421396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227345 (A152950 (n + 7)).toNat

end

end A227560.P47913224641421396

/-! ## A227560.P3778074948387567505

`A227345(A056119(n)+24)`
-/

namespace A227560.P3778074948387567505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227345 (A056119 n + 24).toNat

end

end A227560.P3778074948387567505

/-! ## A227560.P18380588691063644158

`A227345(eq[4, A243081(n)])`
-/

namespace A227560.P18380588691063644158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227345 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227560.P18380588691063644158

/-! ## A227560.P14773323747411562293

`A227345(A133263(n+6)+1)`
-/

namespace A227560.P14773323747411562293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227345 (A133263 (n + 6) + 1).toNat

end

end A227560.P14773323747411562293

/-! ## A227560.P14626383481001271870

`A227345(A000124(n+6)+2)`
-/

namespace A227560.P14626383481001271870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227345 (A000124 (n + 6) + 2).toNat

end

end A227560.P14626383481001271870

/-! ## A227560.P10370838150360759730

`A227345(A134869(n+6)+2)`
-/

namespace A227560.P10370838150360759730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227345 (A134869 (n + 6) + 2).toNat

end

end A227560.P10370838150360759730

/-! ## A227560.P14919498770200581291

`A227345(A000096(n+5)+4)`
-/

namespace A227560.P14919498770200581291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227345 (A000096 (n + 5) + 4).toNat

end

end A227560.P14919498770200581291

/-! ## A227560.P13241081424345249080

`A227345(A000217(n+6)+3)`
-/

namespace A227560.P13241081424345249080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227345 (A000217 (n + 6) + 3).toNat

end

end A227560.P13241081424345249080

/-! ## A227560.P14739209281091457962

`A227345(A034856(n+5)+5)`
-/

namespace A227560.P14739209281091457962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227345 (A034856 (n + 5) + 5).toNat

end

end A227560.P14739209281091457962

/-!
# A227561: Number of partitions of n into distinct parts with boundary size 4.

The programs for A227561, there is no canonical definition to state claims against.
-/

/-! ## A227561.P11259011534191399339

`A227345(A134869(n+11)+3)`
-/

namespace A227561.P11259011534191399339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227345 (A134869 (n + 11) + 3).toNat

end

end A227561.P11259011534191399339

/-! ## A227561.P9705732523535116508

`A227345(A034856(n+10)+6)`
-/

namespace A227561.P9705732523535116508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227345 (A034856 (n + 10) + 6).toNat

end

end A227561.P9705732523535116508

/-! ## A227561.P15666021140466219145

`A227345(Δ[A000292(n+10)]+4)`
-/

namespace A227561.P15666021140466219145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227345 (f1 (n + 1) - f1 n + 4).toNat

end

end A227561.P15666021140466219145

/-! ## A227561.P10854095841952390630

`A227345(A055999(n+9)-(n+2))`
-/

namespace A227561.P10854095841952390630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227345 (A055999 (n + 9) - (n + 2 : ℤ)).toNat

end

end A227561.P10854095841952390630

/-!
# A227562: Number of partitions of n into distinct parts with boundary size 5.

The programs for A227562, there is no canonical definition to state claims against.
-/

/-! ## A227562.P11451598731384760917

`record[A227345(∑[n]+5)]`
-/

namespace A227562.P11451598731384760917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227345 (∑ j ∈ Finset.range (n + 1), f2 j + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227562.P11451598731384760917

/-! ## A227562.P4421334935309547974

`∑[A222084(A004396(n)!)]`
-/

namespace A227562.P4421334935309547974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222084 (Nat.factorial (A004396 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227562.P4421334935309547974

/-! ## A227562.P18410740353104493166

`∑[A093997(record[A341033(n)])]`
-/

namespace A227562.P18410740353104493166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341033 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093997 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227562.P18410740353104493166

/-! ## A227562.P10928814748922884792

`A085501(A176500(n+1)+A000045(n))`
-/

namespace A227562.P10928814748922884792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085501 (A176500 (n + 1) + A000045 n).toNat

end

end A227562.P10928814748922884792

/-! ## A227562.P5547747353097155266

`A352514(A238351(n))+A000041(n+1)`
-/

namespace A227562.P5547747353097155266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352514 (A238351 n).toNat + A000041 (n + 1)

end

end A227562.P5547747353097155266

/-!
# A227563: Number of partitions of n into distinct parts with boundary size 6.

The programs for A227563, there is no canonical definition to state claims against.
-/

/-! ## A227563.P15809502276166382833

`A227552(A227549(n+1)+27)`
-/

namespace A227563.P15809502276166382833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227552 (A227549 (n + 1) + 27).toNat

end

end A227563.P15809502276166382833

/-! ## A227563.P17644721824461741029

`A054845(n)+A029931(A272064(n))`
-/

namespace A227563.P17644721824461741029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n + A029931 (A272064 n).toNat

end

end A227563.P17644721824461741029

/-! ## A227563.P10384190189849310438

`A098613(n)+A249036(A153438(n)+1)%2`
-/

namespace A227563.P10384190189849310438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098613 n + Int.tmod (A249036 (A153438 n + 1).toNat) 2

end

end A227563.P10384190189849310438

/-! ## A227563.P10669861182834484894

`A373811(A299337(n))`
-/

namespace A227563.P10669861182834484894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373811 (A299337 n).toNat

end

end A227563.P10669861182834484894

/-! ## A227563.P13321678870124276639

`A342515(A066208(a(n-1)+3))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A227563.P13321678870124276639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A342515 (A066208 (a (n - 1) + 3).toNat).toNat

end

end A227563.P13321678870124276639

/-!
# A227564: Number of partitions of n into distinct parts with boundary size 7.

The programs for A227564, there is no canonical definition to state claims against.
-/

/-! ## A227564.P8407198209747308490

`A360600(A006304(n+1))`
-/

namespace A227564.P8407198209747308490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360600 (A006304 (n + 1)).toNat

end

end A227564.P8407198209747308490

/-! ## A227564.P5699746129933049996

`A227552(A062399(n)+37)`
-/

namespace A227564.P5699746129933049996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227552 (A062399 n + 37).toNat

end

end A227564.P5699746129933049996

/-! ## A227564.P13330018884039324679

`A000196(A014217(n)*A176099(n+1))`
-/

namespace A227564.P13330018884039324679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A014217 n * A176099 (n + 1)).toNat

end

end A227564.P13330018884039324679

/-! ## A227564.P8148495878183337130

`A000194(A000124(n)*A293160(n+1))`
-/

namespace A227564.P8148495878183337130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A000124 n * A293160 (n + 1)).toNat

end

end A227564.P8148495878183337130

/-!
# A227565: Number of partitions of n into distinct parts with boundary size 8.

The programs for A227565, there is no canonical definition to state claims against.
-/

/-! ## A227565.P17065871105637722596

`A335469(A008633(n))+A008633(n)`
-/

namespace A227565.P17065871105637722596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335469 (A008633 n).toNat + A008633 n

end

end A227565.P17065871105637722596

/-! ## A227565.P6788299330840795062

`A335469(A008639(n))+A008639(n)`
-/

namespace A227565.P6788299330840795062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335469 (A008639 n).toNat + A008639 n

end

end A227565.P6788299330840795062

/-! ## A227565.P12605460367963111907

`A335469(A035999(n))+A035999(n)`
-/

namespace A227565.P12605460367963111907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335469 (A035999 n).toNat + A035999 n

end

end A227565.P12605460367963111907

/-! ## A227565.P15114892075941293929

`A335469(A218510(n))+A218510(n)`
-/

namespace A227565.P15114892075941293929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335469 (A218510 n).toNat + A218510 n

end

end A227565.P15114892075941293929

/-! ## A227565.P388096752693067963

`A335469(A238868(n))+A238868(n)`
-/

namespace A227565.P388096752693067963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335469 (A238868 n).toNat + A238868 n

end

end A227565.P388096752693067963

/-!
# A227566: Number of partitions of n into distinct parts with boundary size 9.

The programs for A227566, there is no canonical definition to state claims against.
-/

/-! ## A227566.P6737666593202380182

`record[A227345(A000217(n+7)+9)]`
-/

namespace A227566.P6737666593202380182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227345 (A000217 (n + 7) + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227566.P6737666593202380182

/-! ## A227566.P14935046044496717124

`round(sqrt(A247662(2*n)-n+1))`
-/

namespace A227566.P14935046044496717124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A247662 (2 * n) - (n : ℤ) + 1 : ℝ))

end

end A227566.P14935046044496717124

/-! ## A227566.P15785926493147711845

`A000194(∑[A229816(3*n)])`
-/

namespace A227566.P15785926493147711845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229816 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A227566.P15785926493147711845

/-! ## A227566.P12309848345470715357

`A000196(floor(A160527(n)+sqrt(n)))`
-/

namespace A227566.P12309848345470715357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ⌊(A160527 n : ℝ) + Real.sqrt (n : ℝ)⌋.toNat

end

end A227566.P12309848345470715357

/-! ## A227566.P14423236169864099555

`A000196(floor(A121593(n+1)+sqrt(n)))`
-/

namespace A227566.P14423236169864099555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ⌊(A121593 (n + 1) : ℝ) + Real.sqrt (n : ℝ)⌋.toNat

end

end A227566.P14423236169864099555

/-!
# A227567: Number of partitions of n into distinct parts with boundary size 10.

The programs for A227567, there is no canonical definition to state claims against.
-/

/-! ## A227567.P584764796470009714

`A320598(n)+A185264(A000726(n))`
-/

namespace A227567.P584764796470009714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320598 (n + 30) + A185264 (A000726 n).toNat

end

end A227567.P584764796470009714

/-! ## A227567.P16297629587579798144

`A320598(n)+A184964(A091378(n))`
-/

namespace A227567.P16297629587579798144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320598 (n + 30) + A184964 (A091378 n).toNat

end

end A227567.P16297629587579798144

/-! ## A227567.P13123917107613159417

`A320598(n)+A184964(A060854(n+1))`
-/

namespace A227567.P13123917107613159417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320598 (n + 30) + A184964 (A060854 (n + 1)).toNat

end

end A227567.P13123917107613159417

/-! ## A227567.P10872711775774852674

`A320598(n)+A184964(A248011(n+1))`
-/

namespace A227567.P10872711775774852674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320598 (n + 30) + A184964 (A248011 (n + 1)).toNat

end

end A227567.P10872711775774852674

/-! ## A227567.P5917981328034872909

`A184964(A091378(n))-(A184964(n)-A320598(n))`
-/

namespace A227567.P5917981328034872909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184964 (A091378 n).toNat - (A184964 n - A320598 (n + 30))

end

end A227567.P5917981328034872909

/-!
# A227568: Largest k such that a partition of n into distinct parts with boundary size k exists.

The programs for A227568, the canonical program `A227568.P12614132016485748311` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227568 has offset 0).

The definition of A227568 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227568.P12614132016485748311

`floor(2*sqrt(n/3))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A227568

/-- `floor(2*sqrt(n/3))` -/
def P12614132016485748311.Spec : Prop :=
  ∀ n, P12614132016485748311.a n = A227568 n

theorem P12614132016485748311.correct : P12614132016485748311.Spec := by
  intro n
  simp only [A227568]

end A227568

/-! ## A227568.P7396539078563634150

`floor(sqrt(comp[or(3, n)]))`
-/

namespace A227568.P7396539078563634150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A227568.P7396539078563634150

namespace A227568

/-- `floor(sqrt(comp[or(3, n)]))` -/
def P7396539078563634150.Spec : Prop :=
  ∀ n, (P7396539078563634150.a n : ℤ) = A227568 n

end A227568

/-! ## A227568.P5703173754782108827

`comp[∑[∑[gcd(2, n)]]-1]-n`
-/

namespace A227568.P5703173754782108827
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A227568.P5703173754782108827

namespace A227568

/-- `comp[∑[∑[gcd(2, n)]]-1]-n` -/
def P5703173754782108827.Spec : Prop :=
  ∀ n, P5703173754782108827.a n = A227568 n

end A227568

/-! ## A227568.P682206414789927867

`∑[char[∑[lt[0, n*n%3]]]]`
-/

namespace A227568.P682206414789927867
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f4 j < f5 j) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227568.P682206414789927867

namespace A227568

/-- `∑[char[∑[lt[0, n*n%3]]]]` -/
def P682206414789927867.Spec : Prop :=
  ∀ n, (P682206414789927867.a n : ℤ) = A227568 n

end A227568

/-! ## A227568.P16956529477948485511

`∑[char[∑[record[n^(n²%3)]]]]`
-/

namespace A227568.P16956529477948485511
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n ^ 2 % 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227568.P16956529477948485511

namespace A227568

/-- `∑[char[∑[record[n^(n²%3)]]]]` -/
def P16956529477948485511.Spec : Prop :=
  ∀ n, (P16956529477948485511.a n : ℤ) = A227568 n

end A227568

/-! ## A227568.P3466561907608217374

`∑[char[∑[a(n-2)+3]]]` with `a(0)=1, a(1)=2`
-/

namespace A227568.P3466561907608217374
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f3 =>
  f3 (n - 2) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227568.P3466561907608217374

namespace A227568

/-- `∑[char[∑[a(n-2)+3]]]` -/
def P3466561907608217374.Spec : Prop :=
  ∀ n, (P3466561907608217374.a n : ℤ) = A227568 n

end A227568

/-! ## A227568.P16954383467251374503

`∑[char[∑[(n+1)%lcm(3, n+1)]]]`
-/

namespace A227568.P16954383467251374503
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % Nat.lcm 3 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227568.P16954383467251374503

namespace A227568

/-- `∑[char[∑[(n+1)%lcm(3, n+1)]]]` -/
def P16954383467251374503.Spec : Prop :=
  ∀ n, (P16954383467251374503.a n : ℤ) = A227568 n

end A227568

/-! ## A227568.P10892808481846719417

`ceil(A216522(n)/3)`
-/

namespace A227568.P10892808481846719417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A216522 n : ℚ) / 3⌉

end

end A227568.P10892808481846719417

namespace A227568

/-- `ceil(A216522(n)/3)` -/
def P10892808481846719417.Spec : Prop :=
  ∀ n, P10892808481846719417.a n = A227568 n

end A227568

/-! ## A227568.P12022489676844336756

`∑[char[A068626(n+1)]]`
-/

namespace A227568.P12022489676844336756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068626 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227568.P12022489676844336756

namespace A227568

/-- `∑[char[A068626(n+1)]]` -/
def P12022489676844336756.Spec : Prop :=
  ∀ n, (P12022489676844336756.a n : ℤ) = A227568 n

end A227568

/-! ## A227568.P16782095945227637847

`∑[char[A077043(n+1)]]`
-/

namespace A227568.P16782095945227637847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227568.P16782095945227637847

namespace A227568

/-- `∑[char[A077043(n+1)]]` -/
def P16782095945227637847.Spec : Prop :=
  ∀ n, (P16782095945227637847.a n : ℤ) = A227568 n

end A227568

/-! ## A227568.P16175363687931565694

`∑[char[A077043(n)]]-1`
-/

namespace A227568.P16175363687931565694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A227568.P16175363687931565694

namespace A227568

/-- `∑[char[A077043(n)]]-1` -/
def P16175363687931565694.Spec : Prop :=
  ∀ n, P16175363687931565694.a n = A227568 n

end A227568

/-! ## A227568.P5835869256648347164

`∑[char[A001399(3*n)]]`
-/

namespace A227568.P5835869256648347164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (3 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227568.P5835869256648347164

namespace A227568

/-- `∑[char[A001399(3*n)]]` -/
def P5835869256648347164.Spec : Prop :=
  ∀ n, (P5835869256648347164.a n : ℤ) = A227568 n

end A227568

/-! ## A227568.P10923111532937996077

`comp[∑[A114119(n)]]-n`
-/

namespace A227568.P10923111532937996077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114119 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A227568.P10923111532937996077

namespace A227568

/-- `comp[∑[A114119(n)]]-n` -/
def P10923111532937996077.Spec : Prop :=
  ∀ n, P10923111532937996077.a n = A227568 n

end A227568

/-! ## A227568.P10056907208543711441

`comp[A001859(n)]-(n+1)`
-/

namespace A227568.P10056907208543711441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001859 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n + 1 : ℤ)

end

end A227568.P10056907208543711441

namespace A227568

/-- `comp[A001859(n)]-(n+1)` -/
def P10056907208543711441.Spec : Prop :=
  ∀ n, P10056907208543711441.a n = A227568 n

end A227568

/-! ## A227568.P18110446297796843256

`comp[A263807(n)-2]-n`
-/

namespace A227568.P18110446297796843256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263807 n - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A227568.P18110446297796843256

namespace A227568

/-- `comp[A263807(n)-2]-n` -/
def P18110446297796843256.Spec : Prop :=
  ∀ n, P18110446297796843256.a n = A227568 n

end A227568

/-! ## A227568.P747074104776268748

`∑[char[∑[A001651(n+1)]]]`
-/

namespace A227568.P747074104776268748
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227568.P747074104776268748

namespace A227568

/-- `∑[char[∑[A001651(n+1)]]]` -/
def P747074104776268748.Spec : Prop :=
  ∀ n, (P747074104776268748.a n : ℤ) = A227568 n

end A227568

/-! ## A227568.P1134460291329072568

`∑[char[∑[A032766(n)+1]]]`
-/

namespace A227568.P1134460291329072568
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227568.P1134460291329072568

namespace A227568

/-- `∑[char[∑[A032766(n)+1]]]` -/
def P1134460291329072568.Spec : Prop :=
  ∀ n, (P1134460291329072568.a n : ℤ) = A227568 n

end A227568

/-! ## A227568.P11436588089699090504

`comp[A331952(n)+n]-n`
-/

namespace A227568.P11436588089699090504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331952 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A227568.P11436588089699090504

namespace A227568

/-- `comp[A331952(n)+n]-n` -/
def P11436588089699090504.Spec : Prop :=
  ∀ n, P11436588089699090504.a n = A227568 n

end A227568

/-! ## A227568.P9221703525091121363

`A184010(n+1)-(n+1)`
-/

namespace A227568.P9221703525091121363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184010 (n + 1) - (n + 1 : ℤ)

end

end A227568.P9221703525091121363

namespace A227568

/-- `A184010(n+1)-(n+1)` -/
def P9221703525091121363.Spec : Prop :=
  ∀ n, P9221703525091121363.a n = A227568 n

end A227568

/-! ## A227568.P12984004014721436769

`ceil(sqrt(A004773(n+1)))-1`
-/

namespace A227568.P12984004014721436769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A004773 (n + 1) : ℝ)⌉ - 1

end

end A227568.P12984004014721436769

namespace A227568

/-- `ceil(sqrt(A004773(n+1)))-1` -/
def P12984004014721436769.Spec : Prop :=
  ∀ n, P12984004014721436769.a n = A227568 n

end A227568

/-!
# A227569: Decimal expansion of maximal value of function F[a(n); b(n)] for pairs of complements a(n) and b(n) of natural numbers A000027, where a(n) = odd numbers (A005408) and b(n) = even numbers (A005843); see Comments for the definition of function F[a(n); b(n)].

The programs for A227569, there is no canonical definition to state claims against.
-/

/-! ## A227569.P5170797092771222206

`A143280(n)-A000007(n)`
-/

namespace A227569.P5170797092771222206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143280 (n + 1) - A000007 n

end

end A227569.P5170797092771222206

/-! ## A227569.P7792315271624234661

`and(-A054977(n), A143280(n))`
-/

namespace A227569.P7792315271624234661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A054977 n) (A143280 (n + 1))

end

end A227569.P7792315271624234661

/-! ## A227569.P11545992509484439096

`A143280(n)-A099894(2*n)`
-/

namespace A227569.P11545992509484439096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143280 (n + 1) - A099894 (2 * n)

end

end A227569.P11545992509484439096

/-! ## A227569.P5418572550394739637

`A143280(n)-A080339(2*(n+1))`
-/

namespace A227569.P5418572550394739637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143280 (n + 1) - A080339 (2 * (n + 1))

end

end A227569.P5418572550394739637

/-! ## A227569.P16802342926757284464

`A143280(n)-A010815(A000040(n+4))`
-/

namespace A227569.P16802342926757284464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143280 (n + 1) - A010815 (A000040 (n + 4)).toNat

end

end A227569.P16802342926757284464

/-! ## A227569.P9159915318546752187

`A143280(n)-A325592(A000217(n))`
-/

namespace A227569.P9159915318546752187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143280 (n + 1) - A325592 (A000217 n).toNat

end

end A227569.P9159915318546752187

/-! ## A227569.P14823779503532771865

`A143280(n)-A327276(4^∑{e}[n+1, #])`
-/

namespace A227569.P14823779503532771865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143280 (n + 1) - A327276 (4 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A227569.P14823779503532771865

/-!
# A227570: Numerators of rationals with e.g.f. D(3,x), a Debye function.

The programs for A227570, there is no canonical definition to state claims against.
-/

/-! ## A227570.P7792917625223413311

`A227573(n)-char[1]`
-/

namespace A227570.P7792917625223413311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227573 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A227570.P7792917625223413311

/-! ## A227570.P11737296369734329997

`A027641(n)-2*char[1]`
-/

namespace A227570.P11737296369734329997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n - ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A227570.P11737296369734329997

/-! ## A227570.P3642422084540091018

`A010684(n)*A027641(n)`
-/

namespace A227570.P3642422084540091018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A027641 n

end

end A227570.P3642422084540091018

/-! ## A227570.P7822749308063296134

`A027641(n)*A053381(n)`
-/

namespace A227570.P7822749308063296134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n * A053381 n

end

end A227570.P7822749308063296134

/-! ## A227570.P4615479333744601165

`A027641(n)*A056753(n)`
-/

namespace A227570.P4615479333744601165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n * A056753 n

end

end A227570.P4615479333744601165

/-!
# A227571: Denominators of rationals with e.g.f. D(3,x), a Debye function.

The programs for A227571, there is no canonical definition to state claims against.
-/

/-! ## A227571.P14736791784256976237

`A120081(n)/A120083(n)*A227540(n)`
-/

namespace A227571.P14736791784256976237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120081 n : ℚ) / (A120083 n : ℚ) * (A227540 n : ℚ)

end

end A227571.P14736791784256976237

/-!
# A227572: A sequence related to Le Corbusier's Modulor: round(phi^(-13 + n)*175).

The programs for A227572, there is no canonical definition to state claims against.
-/

/-! ## A227572.P47930154960690487

`ceil(A008615(Δ[A294539(n)])/2)`
-/

namespace A227572.P47930154960690487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294539 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008615 (f1 (n + 1) - f1 n).toNat : ℚ) / 2⌉

end

end A227572.P47930154960690487

/-! ## A227572.P2263881836660342346

`A103221(A004525(Δ[A294539(n)]))`
-/

namespace A227572.P2263881836660342346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294539 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A004525 (f1 (n + 1) - f1 n).toNat).toNat

end

end A227572.P2263881836660342346

/-! ## A227572.P15893276126771320235

`A110654(A008615(Δ[A294539(n)]))`
-/

namespace A227572.P15893276126771320235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294539 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A008615 (f1 (n + 1) - f1 n).toNat).toNat

end

end A227572.P15893276126771320235

/-! ## A227572.P4386165337608095057

`A008616(A179006(n)+A020701(n))`
-/

namespace A227572.P4386165337608095057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A179006 n + A020701 n).toNat

end

end A227572.P4386165337608095057

/-!
# A227573: Numerators of rationals with e.g.f. D(4,x), a Debye function.

The programs for A227573, there is no canonical definition to state claims against.
-/

/-! ## A227573.P18072952447804956206

`A227570(n)+char[1]`
-/

namespace A227573.P18072952447804956206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227570 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A227573.P18072952447804956206

/-! ## A227573.P12075480504391332303

`A027641(n)-char[1]`
-/

namespace A227573.P12075480504391332303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A227573.P12075480504391332303

/-! ## A227573.P17109464646501466042

`xor(-char[1], A164555(n))`
-/

namespace A227573.P17109464646501466042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (A164555 n)

end

end A227573.P17109464646501466042

/-! ## A227573.P1962259782930788154

`A196838(∑[n])-char[1]`
-/

namespace A227573.P1962259782930788154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196838 (∑ j ∈ Finset.range (n + 1), f1 j) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A227573.P1962259782930788154

/-! ## A227573.P6034626369669499021

`A176327(n)-2*char[1]`
-/

namespace A227573.P6034626369669499021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176327 n - ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A227573.P6034626369669499021

/-!
# A227574: Denominators of rationals with e.g.f. D(4,x), a Debye function.

The programs for A227574, there is no canonical definition to state claims against.
-/

/-! ## A227574.P192803378331424476

`A120087(n)/A120081(n)*A227571(n)`
-/

namespace A227574.P192803378331424476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120087 n : ℚ) / (A120081 n : ℚ) * (A227571 n : ℚ)

end

end A227574.P192803378331424476

/-!
# A227575: Largest prime factor of 7^n + 1.

The programs for A227575, the canonical program `A227575.P8313750550235113537` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227575 has offset 0).

The definition of A227575 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A227575.P8313750550235113537

`A006530(A034491(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A227575

/-- `A006530(A034491(n))` -/
def P8313750550235113537.Spec : Prop :=
  ∀ n, P8313750550235113537.a n = A227575 n

theorem P8313750550235113537.correct : P8313750550235113537.Spec := by
  intro n
  simp only [A227575]

end A227575

/-! ## A227575.P10114478455472648911

`A240554(A052905(n+4)-2)+A000007(n)`
-/

namespace A227575.P10114478455472648911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A052905 (n + 4) - 2).toNat + A000007 n

end

end A227575.P10114478455472648911

namespace A227575

/-- `A240554(A052905(n+4)-2)+A000007(n)` -/
def P10114478455472648911.Spec : Prop :=
  ∀ n, P10114478455472648911.a n = A227575 n

end A227575

/-! ## A227575.P3746925215459281664

`A054977(n)*A240554(A052905(n+4)-2)`
-/

namespace A227575.P3746925215459281664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A240554 (A052905 (n + 4) - 2).toNat

end

end A227575.P3746925215459281664

namespace A227575

/-- `A054977(n)*A240554(A052905(n+4)-2)` -/
def P3746925215459281664.Spec : Prop :=
  ∀ n, P3746925215459281664.a n = A227575 n

end A227575

/-! ## A227575.P17755422511175856485

`A240554(A052905(n+4)-2)+A008683((n+1)²)`
-/

namespace A227575.P17755422511175856485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A052905 (n + 4) - 2).toNat + A008683 ((n + 1) ^ 2)

end

end A227575.P17755422511175856485

namespace A227575

/-- `A240554(A052905(n+4)-2)+A008683((n+1)²)` -/
def P17755422511175856485.Spec : Prop :=
  ∀ n, P17755422511175856485.a n = A227575 n

end A227575

/-! ## A227575.P10009427693173981686

`A240554(A052905(n+4)-2)*A326584(2*(n+1))`
-/

namespace A227575.P10009427693173981686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A052905 (n + 4) - 2).toNat * A326584 (2 * (n + 1))

end

end A227575.P10009427693173981686

namespace A227575

/-- `A240554(A052905(n+4)-2)*A326584(2*(n+1))` -/
def P10009427693173981686.Spec : Prop :=
  ∀ n, P10009427693173981686.a n = A227575 n

end A227575

/-!
# A227576: Numbers k such that F(3*k)/(2*F(k)) is prime, where F(m) is the m-th Fibonacci number.

The programs for A227576, there is no canonical definition to state claims against.
-/

/-! ## A227576.P1078976293279553278

`record[A002034(A061254(n+2))]`
-/

namespace A227576.P1078976293279553278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A061254 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227576.P1078976293279553278

/-! ## A227576.P1396467915436543294

`record[p?[A038502(A061254(n+1))]]`
-/

namespace A227576.P1396467915436543294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A061254 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227576.P1396467915436543294

/-! ## A227576.P4166530355132669696

`record[p?[A038502(A274584(n+1))]]`
-/

namespace A227576.P4166530355132669696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A274584 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227576.P4166530355132669696

/-! ## A227576.P14046646719016693521

`record[A006530(10*A061254(n+1))]`
-/

namespace A227576.P14046646719016693521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (10 * A061254 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227576.P14046646719016693521

/-! ## A227576.P2135884623017458129

`record[A006530(lcm(15, A061254(n+1)))]`
-/

namespace A227576.P2135884623017458129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 15 (A061254 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227576.P2135884623017458129

/-!
# A227577: Square array read by antidiagonals, A(n,k) the numerators of the elements of the difference table of the Euler polynomials evaluated at x=1, for n>=0, k>=0.

The programs for A227577, there is no canonical definition to state claims against.
-/

/-! ## A227577.P16087357366357741415

`A056594(A051700(A298597(n+1))-A097807(n))`
-/

namespace A227577.P16087357366357741415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A051700 (A298597 (n + 1)).toNat - A097807 n).toNat

end

end A227577.P16087357366357741415

/-! ## A227577.P10686913008164898616

`A078616(A349057(3*(n+1))+A070196(n+3))`
-/

namespace A227577.P10686913008164898616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078616 (A349057 (3 * (n + 1)) + A070196 (n + 3)).toNat

end

end A227577.P10686913008164898616

/-! ## A227577.P4307704870006166579

`A049347(A217028(n+1))^A027750(n+1)`
-/

namespace A227577.P4307704870006166579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049347 (A217028 (n + 1)).toNat : ℚ) ^ (A027750 (n + 1) : ℤ)

end

end A227577.P4307704870006166579

/-! ## A227577.P2731013996968071182

`A089497(A057195(n+1))`
-/

namespace A227577.P2731013996968071182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089497 (A057195 (n + 1)).toNat

end

end A227577.P2731013996968071182

/-! ## A227577.P4930683607857612758

`A089497(2*A217349(n+1))`
-/

namespace A227577.P4930683607857612758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089497 (2 * A217349 (n + 1)).toNat

end

end A227577.P4930683607857612758

/-!
# A227578: Number A(n,k) of lattice paths from {n}^k to {0}^k using steps that decrement one component such that for each point (p_1,p_2,...,p_k) we have p_1<=p_2<=...<=p_k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A227578, there is no canonical definition to state claims against.
-/

/-! ## A227578.P17698763080218650621

`A181196(n^∑[char[A003226(n+4)]])`
-/

namespace A227578.P17698763080218650621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003226 (n + 4)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (n ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A227578.P17698763080218650621

/-! ## A227578.P7506155890889247756

`A181196(A321804(a(n-1)+1)+n+1)` with `a(0)=1`
-/

namespace A227578.P7506155890889247756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A181196 (A321804 (a (n - 1) + 1).toNat + (n : ℤ) + 1).toNat

end

end A227578.P7506155890889247756

/-! ## A227578.P13563589058762477969

`A181196(A028310(n))%A299476(2*(n+1))`
-/

namespace A227578.P13563589058762477969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181196 (A028310 n).toNat) (A299476 (2 * (n + 1)))

end

end A227578.P13563589058762477969

/-! ## A227578.P11271922187514903269

`A181196(round(A072567(n+1)/A049737(n))+n)`
-/

namespace A227578.P11271922187514903269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181196 (SequenceMachineLib.roundAway ((A072567 (n + 1) : ℚ) / (A049737 n : ℚ)) + (n : ℤ)).toNat

end

end A227578.P11271922187514903269

/-! ## A227578.P8226639744744423930

`A181196(A233583(n+1))%A299476(2*(n+1))`
-/

namespace A227578.P8226639744744423930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181196 (A233583 (n + 1)).toNat) (A299476 (2 * (n + 1)))

end

end A227578.P8226639744744423930

/-!
# A227579: Number of lattice paths from {n}^n to {0}^n using steps that decrement one component such that for each point (p_1,p_2,...,p_n) we have p_1<=p_2<=...<=p_n.

The programs for A227579, there is no canonical definition to state claims against.
-/

/-! ## A227579.P16954127172462383422

`A227578(∑[4*n])`
-/

namespace A227579.P16954127172462383422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227579.P16954127172462383422

/-! ## A227579.P3346481928048694841

`A036225(n)*A227578(A046092(n))`
-/

namespace A227579.P3346481928048694841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A227578 (A046092 n).toNat

end

end A227579.P3346481928048694841

/-! ## A227579.P17977958762488311563

`A227578(A046092(n))*A291168(n)`
-/

namespace A227579.P17977958762488311563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (A046092 n).toNat * A291168 n

end

end A227579.P17977958762488311563

/-! ## A227579.P9533136103545584959

`gcd(A000038(n), A227578(A046092(n)))`
-/

namespace A227579.P9533136103545584959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A227578 (A046092 n).toNat)

end

end A227579.P9533136103545584959

/-! ## A227579.P17187167254522408137

`A036225(n)*A227578(A106232(n+1))`
-/

namespace A227579.P17187167254522408137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A227578 (A106232 (n + 1)).toNat

end

end A227579.P17187167254522408137

/-!
# A227580: Number of lattice paths from {n}^3 to {0}^3 using steps that decrement one component such that for each point (p_1,p_2,p_3) we have p_1<=p_2<=p_3.

The programs for A227580, there is no canonical definition to state claims against.
-/

/-! ## A227580.P16548296160576078927

`A227578(∑[n+4]+2)`
-/

namespace A227580.P16548296160576078927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A227580.P16548296160576078927

/-! ## A227580.P18344196529041825696

`A227578(A046691(n+2))+A185284(n)`
-/

namespace A227580.P18344196529041825696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (A046691 (n + 2)).toNat + A185284 n

end

end A227580.P18344196529041825696

/-! ## A227580.P7399892833677434076

`A227578(A046691(n+2))^A178334(n)`
-/

namespace A227580.P7399892833677434076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227578 (A046691 (n + 2)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A227580.P7399892833677434076

/-! ## A227580.P12425994747662274035

`lcm(A033999(n), A227578(A046691(n+2)))`
-/

namespace A227580.P12425994747662274035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A227578 (A046691 (n + 2)).toNat)

end

end A227580.P12425994747662274035

/-! ## A227580.P1841013215534590051

`A227578(A046691(n+2))+A000038(3*(n+1))`
-/

namespace A227580.P1841013215534590051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (A046691 (n + 2)).toNat + A000038 (3 * (n + 1))

end

end A227580.P1841013215534590051

/-!
# A227581: Array r(m,n) = least k such that H(m) + H(n) - H(m*n + k) < g, where H denotes harmonic number and g denotes the Euler-Mascheroni constant.

The programs for A227581, there is no canonical definition to state claims against.
-/

/-! ## A227581.P3534076533267005896

`A186189(A058071(n)+A002024(n+1))`
-/

namespace A227581.P3534076533267005896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186189 (A058071 n + A002024 (n + 1)).toNat

end

end A227581.P3534076533267005896

/-! ## A227581.P16124251011582983743

`A204166(n+1)+A185284(A058071(n))`
-/

namespace A227581.P16124251011582983743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (n + 1) + A185284 (A058071 n).toNat

end

end A227581.P16124251011582983743

/-! ## A227581.P739786092402622470

`A102572(A092686(n)+A000217(n+4))`
-/

namespace A227581.P739786092402622470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (A092686 n + A000217 (n + 4)).toNat

end

end A227581.P739786092402622470

/-! ## A227581.P4074832946231648192

`A204166(A185284(n)+1+n)`
-/

namespace A227581.P4074832946231648192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (A185284 n + 1 + (n : ℤ)).toNat

end

end A227581.P4074832946231648192

/-! ## A227581.P8040014499378692066

`A331410(A335003(n+1))`
-/

namespace A227581.P8040014499378692066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A335003 (n + 1)).toNat

end

end A227581.P8040014499378692066

/-!
# A227582: Expansion of (2+3*x+2*x^2+2*x^3+3*x^4+x^5-x^6)/(1-2*x+x^2-x^5+2*x^6-x^7).

The programs for A227582, the canonical program `A227582.P9232262234287383365` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227582 has offset 1).

The definition of A227582 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2+3x+2x^2+2x^3+3x^4+x^5-x^6)/(1-2x+x^2-x^5+2x^6-x^7))` (program `A227582.P9232262234287383365`, by `A227582.P9232262234287383365.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A227582.P9232262234287383365

`ogf((2+3x+2x^2+2x^3+3x^4+x^5-x^6)/(1-2x+x^2-x^5+2x^6-x^7))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A227582

/-- `ogf((2+3x+2x^2+2x^3+3x^4+x^5-x^6)/(1-2x+x^2-x^5+2x^6-x^7))` -/
def P9232262234287383365.Spec : Prop :=
  ∀ n, P9232262234287383365.a n = A227582 (n + 1)

theorem P9232262234287383365.correct : P9232262234287383365.Spec := by
  intro n
  simp only [A227582, Nat.add_sub_cancel]

end A227582

/-! ## A227582.P13094532945350187735

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=2, a(1)=7, a(2)=14, a(3)=23, a(4)=35, a(5)=50, a(6)=67`
-/

namespace A227582.P13094532945350187735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7, 14, 23, 35, 50, 67] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A227582.P13094532945350187735

namespace A227582

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P13094532945350187735.Spec : Prop :=
  ∀ n, P13094532945350187735.a n = A227582 (n + 1)

end A227582

/-! ## A227582.P16954755273328369437

`∑[comp[a(n-2)+7]+n]+n` with `a(0)=0, a(1)=-1, a(2)=1`
-/

namespace A227582.P16954755273328369437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 1] fun n f2 =>
  f2 (n - 2) + 7

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A227582.P16954755273328369437

namespace A227582

/-- `∑[comp[a(n-2)+7]+n]+n` -/
def P16954755273328369437.Spec : Prop :=
  ∀ n, (P16954755273328369437.a n : ℤ) = A227582 (n + 1)

end A227582

/-! ## A227582.P536063925223969321

`A265078(n+1)-2`
-/

namespace A227582.P536063925223969321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265078 (n + 1) - 2

end

end A227582.P536063925223969321

namespace A227582

/-- `A265078(n+1)-2` -/
def P536063925223969321.Spec : Prop :=
  ∀ n, P536063925223969321.a n = A227582 (n + 1)

end A227582

/-! ## A227582.P1765494692758437363

`A398197(n+1)+n`
-/

namespace A227582.P1765494692758437363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398197 (n + 1) + (n : ℤ)

end

end A227582.P1765494692758437363

namespace A227582

/-- `A398197(n+1)+n` -/
def P1765494692758437363.Spec : Prop :=
  ∀ n, P1765494692758437363.a n = A227582 (n + 1)

end A227582

/-! ## A227582.P16225862373183774475

`∑[∑[abs(A014019(n+1))+2]]-1`
-/

namespace A227582.P16225862373183774475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014019 (n + 1)| + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A227582.P16225862373183774475

namespace A227582

/-- `∑[∑[abs(A014019(n+1))+2]]-1` -/
def P16225862373183774475.Spec : Prop :=
  ∀ n, P16225862373183774475.a n = A227582 (n + 1)

end A227582

/-! ## A227582.P12948505989933673232

`A001844(n+1)-(A281151(n+1)+2)`
-/

namespace A227582.P12948505989933673232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (n + 1) - (A281151 (n + 1) + 2)

end

end A227582.P12948505989933673232

namespace A227582

/-- `A001844(n+1)-(A281151(n+1)+2)` -/
def P12948505989933673232.Spec : Prop :=
  ∀ n, P12948505989933673232.a n = A227582 (n + 1)

end A227582

/-! ## A227582.P4028997126033802914

`A069894(n+1)-(A301719(n+1)+2)`
-/

namespace A227582.P4028997126033802914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069894 (n + 1) - (A301719 (n + 1) + 2)

end

end A227582.P4028997126033802914

namespace A227582

/-- `A069894(n+1)-(A301719(n+1)+2)` -/
def P4028997126033802914.Spec : Prop :=
  ∀ n, P4028997126033802914.a n = A227582 (n + 1)

end A227582

/-! ## A227582.P5174350551109484528

`A227353(2*n+3)+A002266(n)`
-/

namespace A227582.P5174350551109484528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227353 (2 * n + 3) + A002266 n

end

end A227582.P5174350551109484528

namespace A227582

/-- `A227353(2*n+3)+A002266(n)` -/
def P5174350551109484528.Spec : Prop :=
  ∀ n, P5174350551109484528.a n = A227582 (n + 1)

end A227582

/-! ## A227582.P13493960413586404985

`∑[A072154(n+1)]-1`
-/

namespace A227582.P13493960413586404985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A227582.P13493960413586404985

namespace A227582

/-- `∑[A072154(n+1)]-1` -/
def P13493960413586404985.Spec : Prop :=
  ∀ n, P13493960413586404985.a n = A227582 (n + 1)

end A227582

/-! ## A227582.P11357905582729422623

`n-∑[∑[-Δ[A072154(n)]]]`
-/

namespace A227582.P11357905582729422623
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227582.P11357905582729422623

namespace A227582

/-- `n-∑[∑[-Δ[A072154(n)]]]` -/
def P11357905582729422623.Spec : Prop :=
  ∀ n, P11357905582729422623.a n = A227582 (n + 1)

end A227582

/-! ## A227582.P9738227724576807241

`∑[xor(A008579(n)%2, A072154(n+1))]`
-/

namespace A227582.P9738227724576807241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A008579 n) 2) (A072154 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227582.P9738227724576807241

namespace A227582

/-- `∑[xor(A008579(n)%2, A072154(n+1))]` -/
def P9738227724576807241.Spec : Prop :=
  ∀ n, P9738227724576807241.a n = A227582 (n + 1)

end A227582

/-! ## A227582.P445496484222937486

`A375242(A143978(n+1))`
-/

namespace A227582.P445496484222937486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375242 (A143978 (n + 1)).toNat

end

end A227582.P445496484222937486

namespace A227582

/-- `A375242(A143978(n+1))` -/
def P445496484222937486.Spec : Prop :=
  ∀ n, P445496484222937486.a n = A227582 (n + 1)

end A227582

/-! ## A227582.P7138143630533178084

`A047248((n+1)²)+A047248(n+2)`
-/

namespace A227582.P7138143630533178084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047248 ((n + 1) ^ 2) + A047248 (n + 2)

end

end A227582.P7138143630533178084

namespace A227582

/-- `A047248((n+1)²)+A047248(n+2)` -/
def P7138143630533178084.Spec : Prop :=
  ∀ n, P7138143630533178084.a n = A227582 (n + 1)

end A227582

/-!
# A227583: Number of lattice paths from {n}^4 to {0}^4 using steps that decrement one component such that for each point (p_1,p_2,...,p_4) we have p_1<=p_2<=...<=p_4.

The programs for A227583, there is no canonical definition to state claims against.
-/

/-! ## A227583.P11524914128671081740

`A227578(A052905(n+2))`
-/

namespace A227583.P11524914128671081740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (A052905 (n + 2)).toNat

end

end A227583.P11524914128671081740

/-! ## A227583.P1172406787224648113

`A227578(eq[4, A025581(n)])`
-/

namespace A227583.P1172406787224648113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227583.P1172406787224648113

/-! ## A227583.P13693375430130461982

`A227578(Δ[A264443(n)]-1)`
-/

namespace A227583.P13693375430130461982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (f1 (n + 1) - f1 n - 1).toNat

end

end A227583.P13693375430130461982

/-! ## A227583.P832189344256591309

`A227578(A046691(n+3)-1)`
-/

namespace A227583.P832189344256591309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (A046691 (n + 3) - 1).toNat

end

end A227583.P832189344256591309

/-! ## A227583.P3298085090248993989

`A227578(eq[5, A004736(n+1)])`
-/

namespace A227583.P3298085090248993989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227583.P3298085090248993989

/-!
# A227584: Number of lattice paths from {4}^n to {0}^n using steps that decrement one component such that for each point (p_1,p_2,...,p_n) we have p_1<=p_2<=...<=p_n.

The programs for A227584, there is no canonical definition to state claims against.
-/

/-! ## A227584.P13569035190623867148

`A227578(eq[3, A141169(n)])`
-/

namespace A227584.P13569035190623867148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227584.P13569035190623867148

/-! ## A227584.P8220013929836782933

`A227578(eq[4, A002262(n)])`
-/

namespace A227584.P8220013929836782933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227584.P8220013929836782933

/-! ## A227584.P14548048082621265900

`A227578(A167614(n+3)+1)`
-/

namespace A227584.P14548048082621265900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (A167614 (n + 3) + 1).toNat

end

end A227584.P14548048082621265900

/-! ## A227584.P2522057978675127334

`A227578(eq[4, A144328(n+1)])`
-/

namespace A227584.P2522057978675127334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227584.P2522057978675127334

/-! ## A227584.P9401898880236049447

`A227578(eq[5, A002260(n+1)])`
-/

namespace A227584.P9401898880236049447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227584.P9401898880236049447

/-!
# A227585: McKay-Thompson series of class 36A for the Monster group with a(0) = 2.

The programs for A227585, there is no canonical definition to state claims against.
-/

/-! ## A227585.P3093748971156852594

`∑{#}[n, A112205(#)*A112205(n-#)]`
-/

namespace A227585.P3093748971156852594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A112205 k * A112205 (n - k)

end

end A227585.P3093748971156852594

/-!
# A227587: Expansion of (phi(-q^3)^2 / (phi(-q) * phi(-q^9)))^2 in powers of q where phi() is a Ramanujan theta function.

The programs for A227587, there is no canonical definition to state claims against.
-/

/-! ## A227587.P12105034235855607863

`A123932(n)*A212484(n)`
-/

namespace A227587.P12105034235855607863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123932 n * A212484 n

end

end A227587.P12105034235855607863

/-! ## A227587.P7492466205420739300

`A040000(n)*A261156(2*n)`
-/

namespace A227587.P7492466205420739300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A261156 (2 * n)

end

end A227587.P7492466205420739300

/-! ## A227587.P8048985842755584985

`A040000(n)²*A261154(2*n)`
-/

namespace A227587.P8048985842755584985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n ^ 2 * A261154 (2 * n)

end

end A227587.P8048985842755584985

/-! ## A227587.P1222955934046848747

`A280560(n)²*A261154(2*n)`
-/

namespace A227587.P1222955934046848747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n ^ 2 * A261154 (2 * n)

end

end A227587.P1222955934046848747

/-! ## A227587.P3358440437361352594

`A036453(n+1)*A261156(2*n)`
-/

namespace A227587.P3358440437361352594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A261156 (2 * n)

end

end A227587.P3358440437361352594

/-! ## A227587.P8074775168361459147

`A260215(2*n)*A280560(2*n)`
-/

namespace A227587.P8074775168361459147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260215 (2 * n) * A280560 (2 * n)

end

end A227587.P8074775168361459147

/-! ## A227587.P8048013105566144379

`gcd(2, A260215(n))*A260215(2*n)`
-/

namespace A227587.P8048013105566144379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A260215 n) : ℤ) * A260215 (2 * n)

end

end A227587.P8048013105566144379

/-! ## A227587.P14719116187081536557

`A036453(n+1)²*A261154(2*n)`
-/

namespace A227587.P14719116187081536557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) ^ 2 * A261154 (2 * n)

end

end A227587.P14719116187081536557

/-! ## A227587.P14853549454252788890

`record[A048896(A048896(n))*A260215(n)]`
-/

namespace A227587.P14853549454252788890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A048896 n).toNat * A260215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227587.P14853549454252788890

/-! ## A227587.P8928507838073013052

`A048896(A048896(2*n))*A260215(2*n)`
-/

namespace A227587.P8928507838073013052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A048896 (2 * n)).toNat * A260215 (2 * n)

end

end A227587.P8928507838073013052

/-! ## A227587.P12338847318315765318

`A020639(A000010(n+2))²*A261154(2*n)`
-/

namespace A227587.P12338847318315765318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat ^ 2 * A261154 (2 * n)

end

end A227587.P12338847318315765318

/-! ## A227587.P17628993622803292824

`A000005(A241082(A000005(2*n+1)))*A261156(2*n)`
-/

namespace A227587.P17628993622803292824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A241082 (A000005 (2 * n + 1)).toNat).toNat * A261156 (2 * n)

end

end A227587.P17628993622803292824

/-!
# A227588: Maximum label within a minimal labeling of k >= 0 identical n-sided dice (n >= 1) yielding the most possible sums; square array A(n,k), read by antidiagonals.

The programs for A227588, there is no canonical definition to state claims against.
-/

/-! ## A227588.P1958165882498411872

`A052509(n)+A023969(A052326(n))`
-/

namespace A227588.P1958165882498411872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 n + A023969 (A052326 n).toNat

end

end A227588.P1958165882498411872

/-! ## A227588.P15018071087292051760

`A052509(n)+A023969(A273712(n))`
-/

namespace A227588.P15018071087292051760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 n + A023969 (A273712 n).toNat

end

end A227588.P15018071087292051760

/-! ## A227588.P16660306253648894460

`A319082(n)+A005136(A028657(n))`
-/

namespace A227588.P16660306253648894460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319082 n + A005136 (A028657 n).toNat

end

end A227588.P16660306253648894460

/-! ## A227588.P1778170334412546059

`A319082(n)+A005136(A088699(n))`
-/

namespace A227588.P1778170334412546059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319082 n + A005136 (A088699 n).toNat

end

end A227588.P1778170334412546059

/-! ## A227588.P10320408297019075201

`A337380(A000032(n))+A172119(n)`
-/

namespace A227588.P10320408297019075201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337380 (A000032 n).toNat + A172119 n

end

end A227588.P10320408297019075201

/-!
# A227589: Maximum label within a minimal labeling of n identical 4-sided dice yielding the most possible sums.

The programs for A227589, there is no canonical definition to state claims against.
-/

/-! ## A227589.P15009363156024501668

`∑[or(C(2, n), xor(1, n+1))]`
-/

namespace A227589.P15009363156024501668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.choose 2 n) (Nat.xor 1 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227589.P15009363156024501668

/-! ## A227589.P3547328017317620695

`∑[C(2, gcd(n, n%2))+n]`
-/

namespace A227589.P3547328017317620695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.gcd n (n % 2)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227589.P3547328017317620695

/-! ## A227589.P1130179251230629303

`∑[ceil(acot((3-n)%2)+n)]`
-/

namespace A227589.P1130179251230629303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (Int.tmod (3 - (n : ℤ)) 2 : ℝ) + (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227589.P1130179251230629303

/-! ## A227589.P6882815711297796809

`∑[char[2]+xor(1, n+1)]+1`
-/

namespace A227589.P6882815711297796809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + Nat.xor 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A227589.P6882815711297796809

/-! ## A227589.P6887206646990151656

`∑[a(n-2)+2]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=5, a(4)=4`
-/

namespace A227589.P6887206646990151656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3, 5, 4] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227589.P6887206646990151656

/-! ## A227589.P13933914165838542637

`∑[xor(n+1, (3%(n+1))%2)]`
-/

namespace A227589.P13933914165838542637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (3 % (n + 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227589.P13933914165838542637

/-! ## A227589.P10252056549423131598

`(n+1)²+3-a(n-1)` with `a(0)=1, a(1)=4, a(2)=7`
-/

namespace A227589.P10252056549423131598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 7] fun n a =>
  ((n + 1) ^ 2 : ℤ) + (3 - a (n - 1))

end

end A227589.P10252056549423131598

/-! ## A227589.P7632710899784902194

`char[2*n+1]+∑[char[2]+n+1]`
-/

namespace A227589.P7632710899784902194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A227589.P7632710899784902194

/-! ## A227589.P14207203304159793441

`A233334((n+1)²-a(n-1))` with `a(0)=1`
-/

namespace A227589.P14207203304159793441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A233334 (((n + 1) ^ 2 : ℤ) - a (n - 1)).toNat

end

end A227589.P14207203304159793441

/-! ## A227589.P6626132319095826890

`A316963(A316669(A316963(A316669(A316671(n+1)))))`
-/

namespace A227589.P6626132319095826890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316963 (A316669 (A316963 (A316669 (A316671 (n + 1)).toNat).toNat).toNat).toNat

end

end A227589.P6626132319095826890

/-!
# A227590: a(n) = A003022(n)+1 with a(1)=1.

The programs for A227590, there is no canonical definition to state claims against.
-/

/-! ## A227590.P17809149128405254207

`∑[runs[A143824(n)]]`
-/

namespace A227590.P17809149128405254207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227590.P17809149128405254207

/-! ## A227590.P6211603104019106924

`A106683(∑[n+1])+1`
-/

namespace A227590.P6211603104019106924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A227590.P6211603104019106924

/-! ## A227590.P1703428459661158034

`record[A106683(A038722(n+1))+1]`
-/

namespace A227590.P1703428459661158034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (A038722 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227590.P1703428459661158034

/-! ## A227590.P3777437942120507393

`record[A106683(n+1)-A144432(n+1)]`
-/

namespace A227590.P3777437942120507393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (n + 1) - A144432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227590.P3777437942120507393

/-! ## A227590.P16641669568738256177

`record[A106683(n+1)/A081578(n)+1]`
-/

namespace A227590.P16641669568738256177
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106683 (n + 1) : ℚ) / (A081578 n : ℚ) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227590.P16641669568738256177

/-!
# A227591: Number of nX3 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X4 binary array having nonzero determinant.

The programs for A227591, there is no canonical definition to state claims against.
-/

/-! ## A227591.P16612952801369163199

`A227594(∑[n+2]+4)`
-/

namespace A227591.P16612952801369163199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227594 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A227591.P16612952801369163199

/-! ## A227591.P7465578152049306221

`lcm(2, A227594(A167614(n+1)))`
-/

namespace A227591.P7465578152049306221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A227594 (A167614 (n + 1)).toNat)

end

end A227591.P7465578152049306221

/-! ## A227591.P13757337223225453960

`A227594(A167614(n+1))+A011742(n)`
-/

namespace A227591.P13757337223225453960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227594 (A167614 (n + 1)).toNat + A011742 n

end

end A227591.P13757337223225453960

/-! ## A227591.P16567906597787952612

`A227594(A167614(n+1))+A011744(n)`
-/

namespace A227591.P16567906597787952612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227594 (A167614 (n + 1)).toNat + A011744 n

end

end A227591.P16567906597787952612

/-! ## A227591.P15165150779068381453

`A227594(A167614(n+1))+A014083(n)`
-/

namespace A227591.P15165150779068381453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227594 (A167614 (n + 1)).toNat + A014083 n

end

end A227591.P15165150779068381453

/-!
# A227592: Number of nX4 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X5 binary array having nonzero determinant.

The programs for A227592, there is no canonical definition to state claims against.
-/

/-! ## A227592.P9327794267090913625

`A227594(∑[n+3]+7)`
-/

namespace A227592.P9327794267090913625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227594 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A227592.P9327794267090913625

/-! ## A227592.P8696091788570634419

`lcm(2, A227594(A027379(n+2)))`
-/

namespace A227592.P8696091788570634419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A227594 (A027379 (n + 2)).toNat)

end

end A227592.P8696091788570634419

/-! ## A227592.P11920518564652218519

`A326626(n)+A227594(A374004(n+1))`
-/

namespace A227592.P11920518564652218519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326626 n + A227594 (A374004 (n + 1)).toNat

end

end A227592.P11920518564652218519

/-! ## A227592.P11776613679845210745

`A227594(A027379(n+2))+A011744(n)`
-/

namespace A227592.P11776613679845210745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227594 (A027379 (n + 2)).toNat + A011744 n

end

end A227592.P11776613679845210745

/-! ## A227592.P13267425771578209607

`A227594(A027379(n+2))+A025442(n)`
-/

namespace A227592.P13267425771578209607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227594 (A027379 (n + 2)).toNat + A025442 n

end

end A227592.P13267425771578209607

/-!
# A227593: Number of nX5 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X6 binary array having nonzero determinant.

The programs for A227593, there is no canonical definition to state claims against.
-/

/-! ## A227593.P4892653278608287639

`A227594((n²+9*n+4)/2+13)`
-/

namespace A227593.P4892653278608287639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227594 (SequenceMachineLib.roundAway ((n ^ 2 + 9 * n + 4 : ℚ) / 2 + 13)).toNat

end

end A227593.P4892653278608287639

/-! ## A227593.P16543575771392710545

`A227594(A374005(n+1))/A054576(2*n+5)`
-/

namespace A227593.P16543575771392710545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227594 (A374005 (n + 1)).toNat : ℚ) / (A054576 (2 * n + 5) : ℚ)

end

end A227593.P16543575771392710545

/-! ## A227593.P13203139449180187179

`A176639(A000217(n))*A227594(A374005(n+1))`
-/

namespace A227593.P13203139449180187179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176639 (A000217 n).toNat * A227594 (A374005 (n + 1)).toNat

end

end A227593.P13203139449180187179

/-! ## A227593.P16782638382197838551

`A176137(A032741(n))*A227594(A374005(n+1))`
-/

namespace A227593.P16782638382197838551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176137 (A032741 n).toNat * A227594 (A374005 (n + 1)).toNat

end

end A227593.P16782638382197838551

/-! ## A227593.P9779592413561328373

`A176137(A276088(n))*A227594(A374005(n+1))`
-/

namespace A227593.P9779592413561328373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176137 (A276088 n).toNat * A227594 (A374005 (n + 1)).toNat

end

end A227593.P9779592413561328373

/-!
# A227594: T(n,k)=Number of nXk 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X(k+1) binary array having nonzero determinant.

The programs for A227594, there is no canonical definition to state claims against.
-/

/-! ## A227594.P11457163563327669884

`2*A131055(A317525(n+1))`
-/

namespace A227594.P11457163563327669884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131055 (A317525 (n + 1)).toNat

end

end A227594.P11457163563327669884

/-! ## A227594.P17970555629063409200

`A342126(2*A300208(n+1))`
-/

namespace A227594.P17970555629063409200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342126 (2 * A300208 (n + 1)).toNat

end

end A227594.P17970555629063409200

/-! ## A227594.P12684460537847873188

`A342126(2*A317525(n+1))`
-/

namespace A227594.P12684460537847873188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342126 (2 * A317525 (n + 1)).toNat

end

end A227594.P12684460537847873188

/-! ## A227594.P16247342486078957786

`A006949(4*A317525(n+1))`
-/

namespace A227594.P16247342486078957786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 (4 * A317525 (n + 1)).toNat

end

end A227594.P16247342486078957786

/-! ## A227594.P10748231987262244856

`A116512(4*A317525(n+1))`
-/

namespace A227594.P10748231987262244856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116512 (4 * A317525 (n + 1)).toNat

end

end A227594.P10748231987262244856

/-!
# A227595: Expansion of phi(-x) * psi(x^3)^2 / chi(-x^3) in powers of x where phi(), psi(), chi() are Ramanujan theta functions.

The programs for A227595, there is no canonical definition to state claims against.
-/

/-! ## A227595.P18233791388055294697

`A131713(n)*A224825(n)`
-/

namespace A227595.P18233791388055294697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n * A224825 n

end

end A227595.P18233791388055294697

/-! ## A227595.P13658212768073576935

`Δ[A004482(n)]*A224825(n)`
-/

namespace A227595.P13658212768073576935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A224825 n

end

end A227595.P13658212768073576935

/-! ## A227595.P17088965206287354508

`Δ[A004499(n)]*A224825(n)`
-/

namespace A227595.P17088965206287354508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A224825 n

end

end A227595.P17088965206287354508

/-! ## A227595.P12900218180518805069

`Δ[A117966(n)]*A224825(n)`
-/

namespace A227595.P12900218180518805069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A224825 n

end

end A227595.P12900218180518805069

/-! ## A227595.P6577909125118584834

`A101675(2*n)*A224825(n)`
-/

namespace A227595.P6577909125118584834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101675 (2 * n) * A224825 n

end

end A227595.P6577909125118584834

/-! ## A227595.P8543030780116701879

`A100051(2*n+1)*A224825(n)`
-/

namespace A227595.P8543030780116701879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (2 * n + 1) * A224825 n

end

end A227595.P8543030780116701879

/-!
# A227596: Number of lattice paths from {n}^5 to {0}^5 using steps that decrement one component such that for each point (p_1,p_2,...,p_5) we have p_1<=p_2<=...<=p_5.

The programs for A227596, there is no canonical definition to state claims against.
-/

/-! ## A227596.P12573222322925376082

`A227578(eq[5, A025581(n)])`
-/

namespace A227596.P12573222322925376082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227596.P12573222322925376082

/-! ## A227596.P4775343639407450259

`A227578(eq[6, A193739(n)])`
-/

namespace A227596.P4775343639407450259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227596.P4775343639407450259

/-! ## A227596.P9785961912169054612

`A227578(A000096(n+5)-5)`
-/

namespace A227596.P9785961912169054612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (A000096 (n + 5) - 5).toNat

end

end A227596.P9785961912169054612

/-! ## A227596.P12541205119352761271

`A227578(eq[3, A219347(n+1)])`
-/

namespace A227596.P12541205119352761271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227596.P12541205119352761271

/-! ## A227596.P13801769703026446208

`A227578(eq[3, A219347(n)]-1)`
-/

namespace A227596.P13801769703026446208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A227596.P13801769703026446208

/-!
# A227597: Number of lattice paths from {n}^6 to {0}^6 using steps that decrement one component such that for each point (p_1,p_2,...,p_6) we have p_1<=p_2<=...<=p_6.

The programs for A227597, there is no canonical definition to state claims against.
-/

/-! ## A227597.P7957907275325908295

`A227578(eq[6, A025581(n)])`
-/

namespace A227597.P7957907275325908295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227597.P7957907275325908295

/-! ## A227597.P7354280153743652449

`A227578(eq[7, A193739(n)])`
-/

namespace A227597.P7354280153743652449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227597.P7354280153743652449

/-! ## A227597.P6726888812789195585

`A227578(eq[64, A130321(n)])`
-/

namespace A227597.P6726888812789195585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227597.P6726888812789195585

/-! ## A227597.P1265501524660887124

`A227578(A134869(n+7)-8)`
-/

namespace A227597.P1265501524660887124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (A134869 (n + 7) - 8).toNat

end

end A227597.P1265501524660887124

/-! ## A227597.P2832514058467770742

`A227578(eq[7, A004736(n+1)])`
-/

namespace A227597.P2832514058467770742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227597.P2832514058467770742

/-!
# A227598: Number of lattice paths from {n}^7 to {0}^7 using steps that decrement one component such that for each point (p_1,p_2,...,p_7) we have p_1<=p_2<=...<=p_7.

The programs for A227598, there is no canonical definition to state claims against.
-/

/-! ## A227598.P14040070974538339926

`A227578(eq[7, A025581(n)])`
-/

namespace A227598.P14040070974538339926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227598.P14040070974538339926

/-! ## A227598.P10064872853429880224

`A227578(eq[8, A193739(n)])`
-/

namespace A227598.P10064872853429880224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227598.P10064872853429880224

/-! ## A227598.P3775253349528308043

`A227578(eq[15, A099375(n)])`
-/

namespace A227598.P3775253349528308043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227598.P3775253349528308043

/-! ## A227598.P4978447064901607052

`A227578(eq[8, A004736(n+1)])`
-/

namespace A227598.P4978447064901607052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227598.P4978447064901607052

/-!
# A227599: Number of lattice paths from {n}^8 to {0}^8 using steps that decrement one component such that for each point (p_1,p_2,...,p_8) we have p_1<=p_2<=...<=p_8.

The programs for A227599, there is no canonical definition to state claims against.
-/

/-! ## A227599.P7772174562643803630

`A227578(eq[8, A025581(n)])`
-/

namespace A227599.P7772174562643803630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227599.P7772174562643803630

/-! ## A227599.P16732223520588079856

`A227578(eq[9, A193739(n)])`
-/

namespace A227599.P16732223520588079856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227599.P16732223520588079856

/-! ## A227599.P1798264298431501293

`A227578(eq[9, A004736(n+1)])`
-/

namespace A227599.P1798264298431501293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227599.P1798264298431501293

