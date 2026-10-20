import SequenceMachineLib.Basic
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
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C003
import Seq.B004.C000
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A042300: Numerators of continued fraction convergents to sqrt(677).

The programs for A042300, there is no canonical definition to state claims against.
-/

/-! ## A042300.P268556641272884584

`A042301(n+1)-A040156(n+1)*A042301(n)`
-/

namespace A042300.P268556641272884584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042301 (n + 1) - A040156 (n + 1) * A042301 n

end

end A042300.P268556641272884584

/-!
# A042301: Denominators of continued fraction convergents to sqrt(677).

The programs for A042301, the canonical program `A042301.P8330644888705433085` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042301 has offset 0).

The definition of A042301 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042301.P8330644888705433085

`52*a(n-1)+a(n-2)` with `a(0)=1, a(1)=52`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A042301

/-- `52*a(n-1)+a(n-2)` -/
def P8330644888705433085.Spec : Prop :=
  ∀ n, (P8330644888705433085.a n : ℤ) = A042301 n

theorem P8330644888705433085.correct : P8330644888705433085.Spec := by
  intro n
  simp only [A042301]

end A042301

/-! ## A042301.P15553277699839237564

`a(A289207(n))+52*a(n-1)` with `a(0)=1, a(1)=52`
-/

namespace A042301.P15553277699839237564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 52] fun n a =>
  a (A289207 n).toNat + 52 * a (n - 1)

end

end A042301.P15553277699839237564

namespace A042301

/-- `a(A289207(n))+52*a(n-1)` -/
def P15553277699839237564.Spec : Prop :=
  ∀ n, (P15553277699839237564.a n : ℤ) = A042301 n

end A042301

/-! ## A042301.P12471546297299969142

`xor(1, a(n-1)²)/a(n-2)` with `a(0)=1, a(1)=52`
-/

namespace A042301.P12471546297299969142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 52] fun n a =>
  (Int.xor 1 (SequenceMachineLib.roundAway (a (n - 1) ^ 2)) : ℚ) / a (n - 2)

end

end A042301.P12471546297299969142

namespace A042301

/-- `xor(1, a(n-1)²)/a(n-2)` -/
def P12471546297299969142.Spec : Prop :=
  ∀ n, P12471546297299969142.a n = (A042301 n : ℚ)

end A042301

/-! ## A042301.P406374991422746680

`floor((a(n-1)²+1)/a(n-2))` with `a(0)=1, a(1)=52`
-/

namespace A042301.P406374991422746680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 52] fun n a =>
  ⌊(a (n - 1) ^ 2 + 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A042301.P406374991422746680

namespace A042301

/-- `floor((a(n-1)²+1)/a(n-2))` -/
def P406374991422746680.Spec : Prop :=
  ∀ n, P406374991422746680.a n = A042301 n

end A042301

/-!
# A042305: Denominators of continued fraction convergents to sqrt(679).

The programs for A042305, there is no canonical definition to state claims against.
-/

/-! ## A042305.P12454486257410294648

`xor(16*n, A182869(A058694(n)))`
-/

namespace A042305.P12454486257410294648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (16 * n : ℤ) (A182869 (A058694 n).toNat)

end

end A042305.P12454486257410294648

/-!
# A042306: Numerators of continued fraction convergents to sqrt(680).

The programs for A042306, there is no canonical definition to state claims against.
-/

/-! ## A042306.P12434822411966463002

`gcd(2, n)*A041312(n)`
-/

namespace A042306.P12434822411966463002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041312 n

end

end A042306.P12434822411966463002

/-! ## A042306.P16008995501656330313

`lcm(Δ[A052938(n)], A041312(n))`
-/

namespace A042306.P16008995501656330313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A041312 n)

end

end A042306.P16008995501656330313

/-! ## A042306.P13622344491928018861

`A000034(n+1)*A041312(n)`
-/

namespace A042306.P13622344491928018861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041312 n

end

end A042306.P13622344491928018861

/-! ## A042306.P11658218496779751473

`2/A000034(n)*A041312(n)`
-/

namespace A042306.P11658218496779751473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041312 n : ℚ)

end

end A042306.P11658218496779751473

/-! ## A042306.P375778715928598055

`val(A010694(n)²+5, 3)*A041312(n)`
-/

namespace A042306.P375778715928598055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A010694 n ^ 2 + 5).toNat 3 : ℤ) * A041312 n

end

end A042306.P375778715928598055

/-!
# A042307: Denominators of continued fraction convergents to sqrt(680).

The programs for A042307, there is no canonical definition to state claims against.
-/

/-! ## A042307.P15272027573046452262

`A041313(n)/gcd(2, n+1)`
-/

namespace A042307.P15272027573046452262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041313 n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A042307.P15272027573046452262

/-! ## A042307.P11846358696934942606

`A041313(n)/A000034(n)`
-/

namespace A042307.P11846358696934942606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041313 n : ℚ) / (A000034 n : ℚ)

end

end A042307.P11846358696934942606

/-! ## A042307.P636546796330188739

`A041313(n)/A014695(n²)`
-/

namespace A042307.P636546796330188739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041313 n : ℚ) / (A014695 (n ^ 2) : ℚ)

end

end A042307.P636546796330188739

/-! ## A042307.P8961765990812041731

`A041313(n)/Δ[Δ[A001859(n)]]`
-/

namespace A042307.P8961765990812041731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001859 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041313 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042307.P8961765990812041731

/-! ## A042307.P9340966843074417839

`A041313(n)/A006519(n²+1)`
-/

namespace A042307.P9340966843074417839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041313 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A042307.P9340966843074417839

/-! ## A042307.P2260978001509175980

`A041313(n)/Δ[A001651(n+1)]`
-/

namespace A042307.P2260978001509175980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041313 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042307.P2260978001509175980

/-! ## A042307.P6458260927369905024

`A041313(n)/(Δ[A004526(n)]+1)`
-/

namespace A042307.P6458260927369905024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041313 n : ℚ) / (f1 (n + 1) - f1 n + 1 : ℚ)

end

end A042307.P6458260927369905024

/-! ## A042307.P15487449841509068599

`A041313(n)/A014963(A006519(n+1))`
-/

namespace A042307.P15487449841509068599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041313 n : ℚ) / (A014963 (A006519 (n + 1)).toNat : ℚ)

end

end A042307.P15487449841509068599

/-!
# A042309: Denominators of continued fraction convergents to sqrt(681).

The programs for A042309, there is no canonical definition to state claims against.
-/

/-! ## A042309.P10079858727622071479

`A346865(n+1)-A297113(A159867(n+1))`
-/

namespace A042309.P10079858727622071479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346865 (n + 1) - A297113 (A159867 (n + 1)).toNat

end

end A042309.P10079858727622071479

/-! ## A042309.P7065166657377906410

`A319899(A379790(n+1))-A379790(n+1)`
-/

namespace A042309.P7065166657377906410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319899 (A379790 (n + 1)).toNat - A379790 (n + 1)

end

end A042309.P7065166657377906410

/-!
# A042311: Denominators of continued fraction convergents to sqrt(682).

The programs for A042311, there is no canonical definition to state claims against.
-/

/-! ## A042311.P17273502785769243042

`A003056(A297556(n)²)`
-/

namespace A042311.P17273502785769243042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A297556 n ^ 2).toNat

end

end A042311.P17273502785769243042

/-!
# A042313: Denominators of continued fraction convergents to sqrt(683).

The programs for A042313, there is no canonical definition to state claims against.
-/

/-! ## A042313.P13490596620247660360

`A277487(9*A003516(n+2))`
-/

namespace A042313.P13490596620247660360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277487 (9 * A003516 (n + 2)).toNat

end

end A042313.P13490596620247660360

/-!
# A042315: Denominators of continued fraction convergents to sqrt(684).

The programs for A042315, there is no canonical definition to state claims against.
-/

/-! ## A042315.P5802286725236915124

`A207826(A350193(n+2))`
-/

namespace A042315.P5802286725236915124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207826 (A350193 (n + 2)).toNat

end

end A042315.P5802286725236915124

/-!
# A042321: Denominators of continued fraction convergents to sqrt(687).

The programs for A042321, there is no canonical definition to state claims against.
-/

/-! ## A042321.P14565527903599451208

`A056239(or(A015552(n), A066198(n+1)))`
-/

namespace A042321.P14565527903599451208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lor (A015552 n) (A066198 (n + 1))).toNat

end

end A042321.P14565527903599451208

/-! ## A042321.P14973313430536457374

`or(A129720(n+2), A375467(A319775(n)))`
-/

namespace A042321.P14973313430536457374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A129720 (n + 2)) (A375467 (A319775 n).toNat)

end

end A042321.P14973313430536457374

/-!
# A042325: Denominators of continued fraction convergents to sqrt(689).

The programs for A042325, the canonical program `A042325.P4212600164347450776` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042325 has offset 0).

The definition of A042325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042325.P4212600164347450776

`210*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=209, a(3)=840`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A042325

/-- `210*a(n-2)-a(n-4)` -/
def P4212600164347450776.Spec : Prop :=
  ∀ n, P4212600164347450776.a n = A042325 n

theorem P4212600164347450776.correct : P4212600164347450776.Spec := by
  intro n
  simp only [A042325]

end A042325

/-!
# A042329: Denominators of continued fraction convergents to sqrt(691).

The programs for A042329, there is no canonical definition to state claims against.
-/

/-! ## A042329.P17071516235560443442

`A329022(A227619(n))+2*n`
-/

namespace A042329.P17071516235560443442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329022 (A227619 n).toNat + (2 * n : ℤ)

end

end A042329.P17071516235560443442

/-!
# A042333: Denominators of continued fraction convergents to sqrt(693).

The programs for A042333, there is no canonical definition to state claims against.
-/

/-! ## A042333.P364165661305335822

`A124908(A346497(n+1))+∑{d}[n+1, #²%3]`
-/

namespace A042333.P364165661305335822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124908 (A346497 (n + 1)).toNat + ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 % 3 : ℕ) : ℤ)

end

end A042333.P364165661305335822

/-!
# A042335: Denominators of continued fraction convergents to sqrt(694).

The programs for A042335, there is no canonical definition to state claims against.
-/

/-! ## A042335.P12693134004142126409

`A077581(A190297(n+1)+A187557(n))`
-/

namespace A042335.P12693134004142126409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077581 (A190297 (n + 1) + A187557 n).toNat

end

end A042335.P12693134004142126409

/-! ## A042335.P3964772480447880472

`A292504(A137973(n))+A151823(n+1)`
-/

namespace A042335.P3964772480447880472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292504 (A137973 n).toNat + A151823 (n + 1)

end

end A042335.P3964772480447880472

/-!
# A042337: Denominators of continued fraction convergents to sqrt(695).

The programs for A042337, there is no canonical definition to state claims against.
-/

/-! ## A042337.P6504912202858737247

`A004648(A266213(n)+A083659(n+1))`
-/

namespace A042337.P6504912202858737247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (A266213 n + A083659 (n + 1)).toNat

end

end A042337.P6504912202858737247

/-! ## A042337.P2669180436924916571

`A004648(A293595(n+1)+A083659(n+1))`
-/

namespace A042337.P2669180436924916571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (A293595 (n + 1) + A083659 (n + 1)).toNat

end

end A042337.P2669180436924916571

/-!
# A042338: Numerators of continued fraction convergents to sqrt(696).

The programs for A042338, there is no canonical definition to state claims against.
-/

/-! ## A042338.P4135418164828669956

`A345352(A345352(a(n-2)))+a(n-1)` with `a(0)=26, a(1)=53`
-/

namespace A042338.P4135418164828669956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [26, 53] fun n a =>
  A345352 (A345352 (a (n - 2)).toNat).toNat + a (n - 1)

end

end A042338.P4135418164828669956

/-!
# A042341: Denominators of continued fraction convergents to sqrt(697).

The programs for A042341, there is no canonical definition to state claims against.
-/

/-! ## A042341.P15837585246963402436

`A304796(∑{e}[n+1, #]*A000129(n))`
-/

namespace A042341.P15837585246963402436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304796 (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) * A000129 n).toNat

end

end A042341.P15837585246963402436

/-!
# A042342: Numerators of continued fraction convergents to sqrt(698).

The programs for A042342, there is no canonical definition to state claims against.
-/

/-! ## A042342.P4922488733805563326

`A289199(A042576(n+1))`
-/

namespace A042342.P4922488733805563326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289199 (A042576 (n + 1)).toNat

end

end A042342.P4922488733805563326

/-!
# A042349: Denominators of continued fraction convergents to sqrt(701).

The programs for A042349, there is no canonical definition to state claims against.
-/

/-! ## A042349.P5872350102585742266

`lcm(n+1, A130500(A090667(n)))`
-/

namespace A042349.P5872350102585742266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A130500 (A090667 n).toNat)

end

end A042349.P5872350102585742266

/-!
# A042351: Denominators of continued fraction convergents to sqrt(702).

The programs for A042351, the canonical program `A042351.P9477665814424271680` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042351 has offset 0).

The definition of A042351 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042351.P9477665814424271680

`106*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=105, a(3)=212`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A042351

/-- `106*a(n-2)-a(n-4)` -/
def P9477665814424271680.Spec : Prop :=
  ∀ n, P9477665814424271680.a n = A042351 n

theorem P9477665814424271680.correct : P9477665814424271680.Spec := by
  intro n
  simp only [A042351]

end A042351

/-!
# A042353: Denominators of continued fraction convergents to sqrt(703).

The programs for A042353, there is no canonical definition to state claims against.
-/

/-! ## A042353.P8349313973624626513

`A042891(n)-A226460(A154638(n))`
-/

namespace A042353.P8349313973624626513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042891 n - A226460 (A154638 n).toNat

end

end A042353.P8349313973624626513

/-! ## A042353.P9376996350857007186

`A042891(n)-A136166(A212214(3*(n+1)))`
-/

namespace A042353.P9376996350857007186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042891 n - A136166 (A212214 (3 * (n + 1))).toNat

end

end A042353.P9376996350857007186

/-!
# A042355: Denominators of continued fraction convergents to sqrt(704).

The programs for A042355, there is no canonical definition to state claims against.
-/

/-! ## A042355.P15468257512820472966

`A057161(A199343(n)^A049782(n+1))`
-/

namespace A042355.P15468257512820472966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 (SequenceMachineLib.roundAway ((A199343 n : ℚ) ^ (A049782 (n + 1) : ℤ))).toNat

end

end A042355.P15468257512820472966

/-! ## A042355.P11943669827937363121

`A131156(A199343(n)^A049782(n+1))`
-/

namespace A042355.P11943669827937363121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131156 (SequenceMachineLib.roundAway ((A199343 n : ℚ) ^ (A049782 (n + 1) : ℤ))).toNat

end

end A042355.P11943669827937363121

/-!
# A042357: Denominators of continued fraction convergents to sqrt(705).

The programs for A042357, there is no canonical definition to state claims against.
-/

/-! ## A042357.P12402389594292745567

`A070317(a(n-1))+7` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A042357.P12402389594292745567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A070317 (a (n - 1)).toNat + 7

end

end A042357.P12402389594292745567

/-! ## A042357.P17873974307287518756

`A051885(A042463(n))`
-/

namespace A042357.P17873974307287518756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A042463 n).toNat

end

end A042357.P17873974307287518756

/-!
# A042359: Denominators of continued fraction convergents to sqrt(706).

The programs for A042359, there is no canonical definition to state claims against.
-/

/-! ## A042359.P4507828367478658563

`A008459(n)*A354361(A259792(n))`
-/

namespace A042359.P4507828367478658563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n * A354361 (A259792 n).toNat

end

end A042359.P4507828367478658563

/-! ## A042359.P9086845763510913968

`A132046(n)*A354361(A259792(n))`
-/

namespace A042359.P9086845763510913968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132046 n * A354361 (A259792 n).toNat

end

end A042359.P9086845763510913968

/-!
# A042362: Numerators of continued fraction convergents to sqrt(708).

The programs for A042362, there is no canonical definition to state claims against.
-/

/-! ## A042362.P5666316725493179533

`A022396(A001096(n+1))`
-/

namespace A042362.P5666316725493179533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022396 (A001096 (n + 1)).toNat

end

end A042362.P5666316725493179533

/-!
# A042363: Denominators of continued fraction convergents to sqrt(708).

The programs for A042363, there is no canonical definition to state claims against.
-/

/-! ## A042363.P445244649626475402

`A004396(A326685(3*n+4)+A281618(n+1))`
-/

namespace A042363.P445244649626475402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A326685 (3 * n + 4) + A281618 (n + 1)).toNat

end

end A042363.P445244649626475402

/-!
# A042364: Numerators of continued fraction convergents to sqrt(709).

The programs for A042364, there is no canonical definition to state claims against.
-/

/-! ## A042364.P6908309064702654260

`A022396(A361396(n+1))`
-/

namespace A042364.P6908309064702654260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022396 (A361396 (n + 1)).toNat

end

end A042364.P6908309064702654260

/-!
# A042365: Denominators of continued fraction convergents to sqrt(709).

The programs for A042365, there is no canonical definition to state claims against.
-/

/-! ## A042365.P12870062099949132745

`∑[A165084(∑[A219229(n)])]`
-/

namespace A042365.P12870062099949132745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219229 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165084 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042365.P12870062099949132745

/-! ## A042365.P17858572403969385663

`A045917(A144690(n)+A000142(n))`
-/

namespace A042365.P17858572403969385663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A144690 n + A000142 n).toNat

end

end A042365.P17858572403969385663

/-! ## A042365.P7393858144998474829

`A332246(lcm(A004277(n), A088713(n)))`
-/

namespace A042365.P7393858144998474829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332246 (Int.lcm (A004277 n) (A088713 n))

end

end A042365.P7393858144998474829

/-!
# A042366: Numerators of continued fraction convergents to sqrt(710).

The programs for A042366, there is no canonical definition to state claims against.
-/

/-! ## A042366.P15164907431546365066

`A110656(9*A042070(n))`
-/

namespace A042366.P15164907431546365066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (9 * A042070 n).toNat

end

end A042366.P15164907431546365066

/-!
# A042368: Numerators of continued fraction convergents to sqrt(711).

The programs for A042368, there is no canonical definition to state claims against.
-/

/-! ## A042368.P13627475390521839978

`A004277(A042386(n))-A042392(n)`
-/

namespace A042368.P13627475390521839978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A042386 n).toNat - A042392 n

end

end A042368.P13627475390521839978

/-!
# A042369: Denominators of continued fraction convergents to sqrt(711).

The programs for A042369, there is no canonical definition to state claims against.
-/

/-! ## A042369.P3551955056437860308

`A004525(A042701(n)+A042073(n))`
-/

namespace A042369.P3551955056437860308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A042701 n + A042073 n).toNat

end

end A042369.P3551955056437860308

/-! ## A042369.P11902544488743915161

`A004526(A042701(n)+A042073(n))`
-/

namespace A042369.P11902544488743915161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A042701 n + A042073 n).toNat

end

end A042369.P11902544488743915161

/-! ## A042369.P3965708690383751151

`A065033(A042701(n)+A042073(n))`
-/

namespace A042369.P3965708690383751151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A042701 n + A042073 n).toNat

end

end A042369.P3965708690383751151

/-! ## A042369.P8468386235594632364

`A004277(A041589(n))-A041133(n)`
-/

namespace A042369.P8468386235594632364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A041589 n).toNat - A041133 n

end

end A042369.P8468386235594632364

/-!
# A042370: Numerators of continued fraction convergents to sqrt(712).

The programs for A042370, there is no canonical definition to state claims against.
-/

/-! ## A042370.P13087221341900517666

`gcd(2, n)*A041328(n)`
-/

namespace A042370.P13087221341900517666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041328 n

end

end A042370.P13087221341900517666

/-! ## A042370.P7213801667336582102

`Δ[A007494(n)]*A041328(n)`
-/

namespace A042370.P7213801667336582102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041328 n

end

end A042370.P7213801667336582102

/-! ## A042370.P15446521044164831585

`A000034(n+1)*A041328(n)`
-/

namespace A042370.P15446521044164831585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041328 n

end

end A042370.P15446521044164831585

/-! ## A042370.P9869661539437697568

`A040001(n+2)*A041328(n)`
-/

namespace A042370.P9869661539437697568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A041328 n

end

end A042370.P9869661539437697568

/-! ## A042370.P7618724944379550104

`(2-A000035(n))*A041328(n)`
-/

namespace A042370.P7618724944379550104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000035 n) * A041328 n

end

end A042370.P7618724944379550104

/-! ## A042370.P5019291158547722941

`2/A000034(n)*A041328(n)`
-/

namespace A042370.P5019291158547722941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041328 n : ℚ)

end

end A042370.P5019291158547722941

/-! ## A042370.P372015740600545459

`A000010(Δ[A047451(n+1)])*A041328(n)`
-/

namespace A042370.P372015740600545459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat * A041328 n

end

end A042370.P372015740600545459

/-!
# A042371: Denominators of continued fraction convergents to sqrt(712).

The programs for A042371, there is no canonical definition to state claims against.
-/

/-! ## A042371.P10258977692273378006

`A041329(n)/A000034(n)`
-/

namespace A042371.P10258977692273378006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041329 n : ℚ) / (A000034 n : ℚ)

end

end A042371.P10258977692273378006

/-! ## A042371.P2043026156060148324

`A041329(n)/Δ[A032766(n)]`
-/

namespace A042371.P2043026156060148324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041329 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042371.P2043026156060148324

/-! ## A042371.P1329824660039333093

`A041329(n)/Δ[A001651(n+1)]`
-/

namespace A042371.P1329824660039333093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041329 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042371.P1329824660039333093

/-! ## A042371.P8247105715099649875

`A041329(n)/(Δ[A008619(n)]+1)`
-/

namespace A042371.P8247105715099649875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041329 n : ℚ) / (f1 (n + 1) - f1 n + 1 : ℚ)

end

end A042371.P8247105715099649875

/-! ## A042371.P5446784807838816564

`A041329(n)/A041329(Δ[A008619(n)])`
-/

namespace A042371.P5446784807838816564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041329 n : ℚ) / (A041329 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A042371.P5446784807838816564

/-! ## A042371.P3559872996246089893

`A041329(n)/A006519(A002522(n))`
-/

namespace A042371.P3559872996246089893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041329 n : ℚ) / (A006519 (A002522 n).toNat : ℚ)

end

end A042371.P3559872996246089893

/-!
# A042373: Denominators of continued fraction convergents to sqrt(713).

The programs for A042373, there is no canonical definition to state claims against.
-/

/-! ## A042373.P15346172746656837651

`or(A049802(n+1), A321393(A065694(n)))`
-/

namespace A042373.P15346172746656837651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049802 (n + 1)) (A321393 (A065694 n).toNat)

end

end A042373.P15346172746656837651

/-! ## A042373.P1364107129511133395

`or(A321392(n+1), A321393(A065694(n)))`
-/

namespace A042373.P1364107129511133395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A321392 (n + 1)) (A321393 (A065694 n).toNat)

end

end A042373.P1364107129511133395

/-! ## A042373.P17574844046930572781

`or(A321393(A065694(n)), A351322(3*n+1))`
-/

namespace A042373.P17574844046930572781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A321393 (A065694 n).toNat) (A351322 (3 * n + 1))

end

end A042373.P17574844046930572781

/-!
# A042374: Numerators of continued fraction convergents to sqrt(714).

The programs for A042374, there is no canonical definition to state claims against.
-/

/-! ## A042374.P252222978957950196

`A059995(9*A042706(n))`
-/

namespace A042374.P252222978957950196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (9 * A042706 n).toNat

end

end A042374.P252222978957950196

/-!
# A042375: Denominators of continued fraction convergents to sqrt(714).

The programs for A042375, there is no canonical definition to state claims against.
-/

/-! ## A042375.P7628428506998501622

`Δ[A054404(∑[A295333(n)])]`
-/

namespace A042375.P7628428506998501622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295333 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A042375.P7628428506998501622

/-! ## A042375.P13749484768048514519

`A093873(∑[record[A108520(n)]])`
-/

namespace A042375.P13749484768048514519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A042375.P13749484768048514519

/-! ## A042375.P17493507318492856345

`A093611(n+1)+A008683(A067713(n))`
-/

namespace A042375.P17493507318492856345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093611 (n + 1) + A008683 (A067713 n).toNat

end

end A042375.P17493507318492856345

/-! ## A042375.P15789507921955355648

`gcd(A008683(A166060(n)), A093611(n+1))`
-/

namespace A042375.P15789507921955355648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A166060 n).toNat) (A093611 (n + 1))

end

end A042375.P15789507921955355648

/-! ## A042375.P4910320453251072999

`A093611(n+1)^A352894(A046142(n+1))`
-/

namespace A042375.P4910320453251072999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093611 (n + 1) : ℚ) ^ (A352894 (A046142 (n + 1)).toNat : ℤ)

end

end A042375.P4910320453251072999

/-!
# A042376: Numerators of continued fraction convergents to sqrt(715).

The programs for A042376, there is no canonical definition to state claims against.
-/

/-! ## A042376.P13323574831956614214

`A042594(n)-A122080(A042377(n))`
-/

namespace A042376.P13323574831956614214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042594 n - A122080 (A042377 n).toNat

end

end A042376.P13323574831956614214

/-!
# A042377: Denominators of continued fraction convergents to sqrt(715).

The programs for A042377, there is no canonical definition to state claims against.
-/

/-! ## A042377.P7820314328834140415

`A113736(a(n-1)+4)` with `a(0)=1, a(1)=1`
-/

namespace A042377.P7820314328834140415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A113736 (a (n - 1) + 4).toNat

end

end A042377.P7820314328834140415

/-! ## A042377.P7499626508673036797

`A111229(A042925(n))`
-/

namespace A042377.P7499626508673036797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111229 (A042925 n).toNat

end

end A042377.P7499626508673036797

/-!
# A042381: Denominators of continued fraction convergents to sqrt(717).

The programs for A042381, there is no canonical definition to state claims against.
-/

/-! ## A042381.P844789708288846264

`A088473(A041137(n))`
-/

namespace A042381.P844789708288846264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088473 (A041137 n).toNat

end

end A042381.P844789708288846264

/-! ## A042381.P2189261314976606921

`A353834(A004731(n)*A353851(n))`
-/

namespace A042381.P2189261314976606921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353834 (A004731 n * A353851 n).toNat

end

end A042381.P2189261314976606921

/-!
# A042383: Denominators of continued fraction convergents to sqrt(718).

The programs for A042383, there is no canonical definition to state claims against.
-/

/-! ## A042383.P14812372055552982631

`A275552(n)+A007814(n^n)`
-/

namespace A042383.P14812372055552982631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275552 n + A007814 (n ^ n)

end

end A042383.P14812372055552982631

/-! ## A042383.P17162377145041837851

`A215202(A002110(n)+∏{d}[n, #])`
-/

namespace A042383.P17162377145041837851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215202 (A002110 n + ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)).toNat

end

end A042383.P17162377145041837851

/-!
# A042385: Denominators of continued fraction convergents to sqrt(719).

The programs for A042385, there is no canonical definition to state claims against.
-/

/-! ## A042385.P16992280989146375618

`A301726(A000045(n)%A002079(n))`
-/

namespace A042385.P16992280989146375618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 (Int.tmod (A000045 n) (A002079 n)).toNat

end

end A042385.P16992280989146375618

/-! ## A042385.P17305237175721170340

`A066628(A022383(n)^A357299(n+1))`
-/

namespace A042385.P17305237175721170340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066628 (SequenceMachineLib.roundAway ((A022383 n : ℚ) ^ (A357299 (n + 1) : ℤ))).toNat

end

end A042385.P17305237175721170340

/-! ## A042385.P7027391851238513735

`A301726(A000045(n))%A364637(n+1)`
-/

namespace A042385.P7027391851238513735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301726 (A000045 n).toNat) (A364637 (n + 1))

end

end A042385.P7027391851238513735

/-! ## A042385.P12565606436556905011

`A066628(C(A022383(n), A357299(n+1)))`
-/

namespace A042385.P12565606436556905011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066628 (Nat.choose (A022383 n).toNat (A357299 (n + 1)).toNat)

end

end A042385.P12565606436556905011

/-!
# A042386: Numerators of continued fraction convergents to sqrt(720).

The programs for A042386, there is no canonical definition to state claims against.
-/

/-! ## A042386.P5661442013927897109

`gcd(2, n)*A041332(n)`
-/

namespace A042386.P5661442013927897109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041332 n

end

end A042386.P5661442013927897109

/-! ## A042386.P16524931730852153135

`Δ[A007494(n)]*A041332(n)`
-/

namespace A042386.P16524931730852153135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041332 n

end

end A042386.P16524931730852153135

/-! ## A042386.P10238430081327767660

`A000034(n+1)*A041332(n)`
-/

namespace A042386.P10238430081327767660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041332 n

end

end A042386.P10238430081327767660

/-! ## A042386.P16749764190928925543

`2/A000034(n)*A041332(n)`
-/

namespace A042386.P16749764190928925543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041332 n : ℚ)

end

end A042386.P16749764190928925543

/-! ## A042386.P9753522094922728209

`A000032(Δ[A008619(n)])*A041332(n)`
-/

namespace A042386.P9753522094922728209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n).toNat * A041332 n

end

end A042386.P9753522094922728209

/-! ## A042386.P15427360809030091503

`A001511(A047589(n+1))*A041332(n)`
-/

namespace A042386.P15427360809030091503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A047589 (n + 1)).toNat * A041332 n

end

end A042386.P15427360809030091503

/-! ## A042386.P17922842953107291475

`lcm(A000034(A007947(n+1)), A041332(n))`
-/

namespace A042386.P17922842953107291475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 (A007947 (n + 1)).toNat) (A041332 n)

end

end A042386.P17922842953107291475

/-! ## A042386.P3482066110582342402

`A001511(A089120(n+1))*A041332(n)`
-/

namespace A042386.P3482066110582342402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A089120 (n + 1)).toNat * A041332 n

end

end A042386.P3482066110582342402

/-! ## A042386.P16764326936995454961

`A001511(n²+2)*A041332(n)`
-/

namespace A042386.P16764326936995454961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n ^ 2 + 2) * A041332 n

end

end A042386.P16764326936995454961

/-!
# A042387: Denominators of continued fraction convergents to sqrt(720).

The programs for A042387, there is no canonical definition to state claims against.
-/

/-! ## A042387.P6560336370238636804

`A041333(n)/A000034(n)`
-/

namespace A042387.P6560336370238636804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041333 n : ℚ) / (A000034 n : ℚ)

end

end A042387.P6560336370238636804

/-! ## A042387.P17291422146124079454

`A041333(n)/Δ[A032766(n)]`
-/

namespace A042387.P17291422146124079454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041333 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042387.P17291422146124079454

/-! ## A042387.P13123677012802924243

`A041333(n)/A260438(A016789(n))`
-/

namespace A042387.P13123677012802924243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041333 n : ℚ) / (A260438 (A016789 n).toNat : ℚ)

end

end A042387.P13123677012802924243

/-! ## A042387.P3160426135452410924

`A041333(n)/A306240(Δ[A052928(n)])`
-/

namespace A042387.P3160426135452410924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041333 n : ℚ) / (A306240 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A042387.P3160426135452410924

/-! ## A042387.P2250926780776999904

`A041333(n)/A001511(A007947(n+1))`
-/

namespace A042387.P2250926780776999904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041333 n : ℚ) / (A001511 (A007947 (n + 1)).toNat : ℚ)

end

end A042387.P2250926780776999904

/-! ## A042387.P11272224798494276735

`A041333(n)/A014963(A006519(n+1))`
-/

namespace A042387.P11272224798494276735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041333 n : ℚ) / (A014963 (A006519 (n + 1)).toNat : ℚ)

end

end A042387.P11272224798494276735

/-! ## A042387.P10037005646212625778

`A041333(n)/A006519(A020639(n+1))`
-/

namespace A042387.P10037005646212625778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041333 n : ℚ) / (A006519 (A020639 (n + 1)).toNat : ℚ)

end

end A042387.P10037005646212625778

/-! ## A042387.P10774018197660566939

`A041333(n)/A041333(n-A052928(n))`
-/

namespace A042387.P10774018197660566939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041333 n : ℚ) / (A041333 ((n : ℤ) - A052928 n).toNat : ℚ)

end

end A042387.P10774018197660566939

/-! ## A042387.P7750881406166038959

`A041333(n)/A001511(n²+1)`
-/

namespace A042387.P7750881406166038959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041333 n : ℚ) / (A001511 (n ^ 2 + 1) : ℚ)

end

end A042387.P7750881406166038959

/-! ## A042387.P18362207137607720437

`A041333(n)/A006519(n²+1)`
-/

namespace A042387.P18362207137607720437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041333 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A042387.P18362207137607720437

/-!
# A042392: Numerators of continued fraction convergents to sqrt(723).

The programs for A042392, there is no canonical definition to state claims against.
-/

/-! ## A042392.P711811279848942850

`A004277(A042386(n))-A042368(n)`
-/

namespace A042392.P711811279848942850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A042386 n).toNat - A042368 n

end

end A042392.P711811279848942850

/-!
# A042393: Denominators of continued fraction convergents to sqrt(723).

The programs for A042393, there is no canonical definition to state claims against.
-/

/-! ## A042393.P511721894953909867

`A103627(A042401(n))`
-/

namespace A042393.P511721894953909867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A042401 n).toNat

end

end A042393.P511721894953909867

/-! ## A042393.P7587147262699302068

`A140106(A042399(n))+1`
-/

namespace A042393.P7587147262699302068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A042399 n).toNat + 1

end

end A042393.P7587147262699302068

/-!
# A042397: Denominators of continued fraction convergents to sqrt(725).

The programs for A042397, there is no canonical definition to state claims against.
-/

/-! ## A042397.P7712900348886323932

`A039217(or(A042005(n), A201629(n)))`
-/

namespace A042397.P7712900348886323932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039217 (Int.lor (A042005 n) (A201629 n)).toNat

end

end A042397.P7712900348886323932

/-! ## A042397.P14361056712730794482

`A039217(or(A042005(n), A352426(n+1)))`
-/

namespace A042397.P14361056712730794482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039217 (Int.lor (A042005 n) (A352426 (n + 1))).toNat

end

end A042397.P14361056712730794482

/-!
# A042399: Denominators of continued fraction convergents to sqrt(726).

The programs for A042399, there is no canonical definition to state claims against.
-/

/-! ## A042399.P3756611495599125872

`A004396(A042401(n))`
-/

namespace A042399.P3756611495599125872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A042401 n).toNat

end

end A042399.P3756611495599125872

/-! ## A042399.P18432520538902388328

`A025480(A042401(n)+A042393(n))`
-/

namespace A042399.P18432520538902388328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A042401 n + A042393 n).toNat

end

end A042399.P18432520538902388328

