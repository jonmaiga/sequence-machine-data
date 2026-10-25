import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C023
import Seq.B001.C000
import Seq.B001.C004
import Seq.B002.C000
import Seq.B002.C002
import Seq.B003.C000
import Seq.B005.C002
import Seq.B007.C001
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C008
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021

/-!
# A042700: Numerators of continued fraction convergents to sqrt(880).

The programs for A042700, there is no canonical definition to state claims against.
-/

/-! ## A042700.P13893870900101762592

`A004277(A042710(n))-A042716(n)`
-/

namespace A042700.P13893870900101762592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A042710 n).toNat - A042716 n

end

end A042700.P13893870900101762592

/-!
# A042701: Denominators of continued fraction convergents to sqrt(880).

The programs for A042701, the canonical program `A042701.P15143850389810158012` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042701 has offset 0).

The definition of A042701 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042701.P15143850389810158012

`178*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=176, a(5)=179, a(6)=355, a(7)=534`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A042701

/-- `178*a(n-4)-a(n-8)` -/
def P15143850389810158012.Spec : Prop :=
  ∀ n, P15143850389810158012.a n = A042701 n

theorem P15143850389810158012.correct : P15143850389810158012.Spec := by
  intro n
  simp only [A042701]

end A042701

/-! ## A042701.P8085876422026297907

`A004277(A041589(n))-A041053(n)`
-/

namespace A042701.P8085876422026297907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A041589 n).toNat - A041053 n

end

end A042701.P8085876422026297907

namespace A042701

/-- `A004277(A041589(n))-A041053(n)` -/
def P8085876422026297907.Spec : Prop :=
  ∀ n, P8085876422026297907.a n = A042701 n

end A042701

/-! ## A042701.P5204456306569301442

`A004277(A041813(n))-A041249(n)`
-/

namespace A042701.P5204456306569301442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A041813 n).toNat - A041249 n

end

end A042701.P5204456306569301442

namespace A042701

/-- `A004277(A041813(n))-A041249(n)` -/
def P5204456306569301442.Spec : Prop :=
  ∀ n, P5204456306569301442.a n = A042701 n

end A042701

/-!
# A042703: Denominators of continued fraction convergents to sqrt(881).

The programs for A042703, there is no canonical definition to state claims against.
-/

/-! ## A042703.P14242843215056406131

`A307558(A257969(n+1))`
-/

namespace A042703.P14242843215056406131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307558 (A257969 (n + 1)).toNat

end

end A042703.P14242843215056406131

/-!
# A042705: Denominators of continued fraction convergents to sqrt(882).

The programs for A042705, there is no canonical definition to state claims against.
-/

/-! ## A042705.P6637134242122264101

`(20*a(n-2)-a(n-4))!` with `a(0)=1, a(1)=1, a(2)=3, a(3)=10, a(4)=63, a(5)=199`
-/

namespace A042705.P6637134242122264101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 10, 63, 199] fun n a =>
  Nat.factorial ((20 * a (n - 2) : ℤ) - (a (n - 4) : ℤ)).toNat

end

end A042705.P6637134242122264101

/-!
# A042707: Denominators of continued fraction convergents to sqrt(883).

The programs for A042707, there is no canonical definition to state claims against.
-/

/-! ## A042707.P16690156772987730905

`A099423(2^n)+1`
-/

namespace A042707.P16690156772987730905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099423 (2 ^ n) + 1

end

end A042707.P16690156772987730905

/-!
# A042710: Numerators of continued fraction convergents to sqrt(885).

The programs for A042710, there is no canonical definition to state claims against.
-/

/-! ## A042710.P8778857299021872413

`A004277(A042716(n))-A042720(n)`
-/

namespace A042710.P8778857299021872413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A042716 n).toNat - A042720 n

end

end A042710.P8778857299021872413

/-!
# A042711: Denominators of continued fraction convergents to sqrt(885).

The programs for A042711, the canonical program `A042711.P2511236996821012059` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042711 has offset 0).

The definition of A042711 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042711.P2511236996821012059

`238*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=235, a(5)=239, a(6)=713, a(7)=952`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A042711

/-- `238*a(n-4)-a(n-8)` -/
def P2511236996821012059.Spec : Prop :=
  ∀ n, P2511236996821012059.a n = A042711 n

theorem P2511236996821012059.correct : P2511236996821012059.Spec := by
  intro n
  simp only [A042711]

end A042711

/-! ## A042711.P10013496931105123451

`A042485(n)+A001281(A042485(n)-A042081(n))`
-/

namespace A042711.P10013496931105123451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042485 n + A001281 (A042485 n - A042081 n).toNat

end

end A042711.P10013496931105123451

namespace A042711

/-- `A042485(n)+A001281(A042485(n)-A042081(n))` -/
def P10013496931105123451.Spec : Prop :=
  ∀ n, P10013496931105123451.a n = A042711 n

end A042711

/-! ## A042711.P6628853735168915681

`A042485(n)+A004525(A042485(n)-A042081(n))`
-/

namespace A042711.P6628853735168915681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042485 n + A004525 (A042485 n - A042081 n).toNat

end

end A042711.P6628853735168915681

namespace A042711

/-- `A042485(n)+A004525(A042485(n)-A042081(n))` -/
def P6628853735168915681.Spec : Prop :=
  ∀ n, P6628853735168915681.a n = A042711 n

end A042711

/-!
# A042716: Numerators of continued fraction convergents to sqrt(888).

The programs for A042716, there is no canonical definition to state claims against.
-/

/-! ## A042716.P2716815444523794142

`A004277(A042710(n))-A042700(n)`
-/

namespace A042716.P2716815444523794142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A042710 n).toNat - A042700 n

end

end A042716.P2716815444523794142

/-!
# A042717: Denominators of continued fraction convergents to sqrt(888).

The programs for A042717, there is no canonical definition to state claims against.
-/

/-! ## A042717.P121357827477114024

`A008611(A042733(n)-1)`
-/

namespace A042717.P121357827477114024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A042733 n - 1).toNat

end

end A042717.P121357827477114024

/-!
# A042720: Numerators of continued fraction convergents to sqrt(890).

The programs for A042720, there is no canonical definition to state claims against.
-/

/-! ## A042720.P10255821464822271471

`A004277(A042716(n))-A042710(n)`
-/

namespace A042720.P10255821464822271471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A042716 n).toNat - A042710 n

end

end A042720.P10255821464822271471

/-!
# A042721: Denominators of continued fraction convergents to sqrt(890).

The programs for A042721, there is no canonical definition to state claims against.
-/

/-! ## A042721.P9668473388109983393

`A004277(A041827(n))-A041257(n)`
-/

namespace A042721.P9668473388109983393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A041827 n).toNat - A041257 n

end

end A042721.P9668473388109983393

/-! ## A042721.P13946911999334166898

`A004277(A042089(n))-A041601(n)`
-/

namespace A042721.P13946911999334166898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A042089 n).toNat - A041601 n

end

end A042721.P13946911999334166898

/-! ## A042721.P7256167184702648000

`A004277(A042387(n))-A042089(n)`
-/

namespace A042721.P7256167184702648000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A042387 n).toNat - A042089 n

end

end A042721.P7256167184702648000

/-!
# A042723: Denominators of continued fraction convergents to sqrt(891).

The programs for A042723, there is no canonical definition to state claims against.
-/

/-! ## A042723.P18006252586042306794

`A008651(A042722(n)+5)`
-/

namespace A042723.P18006252586042306794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A042722 n + 5).toNat

end

end A042723.P18006252586042306794

/-! ## A042723.P10304621868945672291

`A068962(ceil(A042722(n)/12))`
-/

namespace A042723.P10304621868945672291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 ⌈(A042722 n : ℚ) / 12⌉.toNat

end

end A042723.P10304621868945672291

/-!
# A042725: Denominators of continued fraction convergents to sqrt(892).

The programs for A042725, there is no canonical definition to state claims against.
-/

/-! ## A042725.P966110684894359315

`A300330(A041417(n))`
-/

namespace A042725.P966110684894359315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300330 (A041417 n).toNat

end

end A042725.P966110684894359315

/-!
# A042729: Denominators of continued fraction convergents to sqrt(894).

The programs for A042729, there is no canonical definition to state claims against.
-/

/-! ## A042729.P4489380747731809234

`A222235(A041753(n))`
-/

namespace A042729.P4489380747731809234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (A041753 n).toNat

end

end A042729.P4489380747731809234

/-! ## A042729.P4306504250505431665

`A005843(A041753(n))-A041177(n)`
-/

namespace A042729.P4306504250505431665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A041753 n).toNat - A041177 n

end

end A042729.P4306504250505431665

/-!
# A042731: Denominators of continued fraction convergents to sqrt(895).

The programs for A042731, there is no canonical definition to state claims against.
-/

/-! ## A042731.P9048700938454241318

`A004526(A042735(n)+A042711(n))`
-/

namespace A042731.P9048700938454241318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A042735 n + A042711 n).toNat

end

end A042731.P9048700938454241318

/-!
# A042733: Denominators of continued fraction convergents to sqrt(896).

The programs for A042733, there is no canonical definition to state claims against.
-/

/-! ## A042733.P5669578411741917023

`A065033(A042737(n)-1)`
-/

namespace A042733.P5669578411741917023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A042737 n - 1).toNat

end

end A042733.P5669578411741917023

/-!
# A042735: Denominators of continued fraction convergents to sqrt(897).

The programs for A042735, there is no canonical definition to state claims against.
-/

/-! ## A042735.P9993398678695147308

`A004396(A042737(n))`
-/

namespace A042735.P9993398678695147308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A042737 n).toNat

end

end A042735.P9993398678695147308

/-!
# A042737: Denominators of continued fraction convergents to sqrt(898).

The programs for A042737, there is no canonical definition to state claims against.
-/

/-! ## A042737.P11403960367472033389

`A004525(A042739(n))`
-/

namespace A042737.P11403960367472033389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A042739 n).toNat

end

end A042737.P11403960367472033389

/-!
# A042739: Denominators of continued fraction convergents to sqrt(899).

The programs for A042739, there is no canonical definition to state claims against.
-/

/-! ## A042739.P12547599441420453548

`A159966(3*A042735(n))`
-/

namespace A042739.P12547599441420453548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (3 * A042735 n).toNat

end

end A042739.P12547599441420453548

/-!
# A042741: Denominators of continued fraction convergents to sqrt(901).

The programs for A042741, the canonical program `A042741.P12330609725824249185` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042741 has offset 0).

The definition of A042741 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042741.P12330609725824249185

`60*a(n-1)+a(n-2)` with `a(0)=1, a(1)=60`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A042741

/-- `60*a(n-1)+a(n-2)` -/
def P12330609725824249185.Spec : Prop :=
  ∀ n, (P12330609725824249185.a n : ℤ) = A042741 n

theorem P12330609725824249185.correct : P12330609725824249185.Spec := by
  intro n
  simp only [A042741]

end A042741

/-! ## A042741.P9773453927506819268

`xor(1, a(n-1)²)/a(n-2)` with `a(0)=1, a(1)=60`
-/

namespace A042741.P9773453927506819268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 60] fun n a =>
  (Int.xor 1 (SequenceMachineLib.roundAway (a (n - 1) ^ 2)) : ℚ) / a (n - 2)

end

end A042741.P9773453927506819268

namespace A042741

/-- `xor(1, a(n-1)²)/a(n-2)` -/
def P9773453927506819268.Spec : Prop :=
  ∀ n, P9773453927506819268.a n = (A042741 n : ℚ)

end A042741

/-! ## A042741.P12753010939910969410

`floor((a(n-1)²+1)/a(n-2))` with `a(0)=1, a(1)=60`
-/

namespace A042741.P12753010939910969410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 60] fun n a =>
  ⌊(a (n - 1) ^ 2 + 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A042741.P12753010939910969410

namespace A042741

/-- `floor((a(n-1)²+1)/a(n-2))` -/
def P12753010939910969410.Spec : Prop :=
  ∀ n, P12753010939910969410.a n = A042741 n

end A042741

/-!
# A042746: Numerators of continued fraction convergents to sqrt(904).

The programs for A042746, there is no canonical definition to state claims against.
-/

/-! ## A042746.P2894549392636492941

`gcd(2, n)*A041420(n)`
-/

namespace A042746.P2894549392636492941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041420 n

end

end A042746.P2894549392636492941

/-! ## A042746.P14724839727230676078

`A000034(n+1)*A041420(n)`
-/

namespace A042746.P14724839727230676078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041420 n

end

end A042746.P14724839727230676078

/-! ## A042746.P15906389637619876451

`2/A000034(n)*A041420(n)`
-/

namespace A042746.P15906389637619876451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041420 n : ℚ)

end

end A042746.P15906389637619876451

/-! ## A042746.P2764710788704555246

`A027642(A296306(n+1))*A041420(n)`
-/

namespace A042746.P2764710788704555246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (A296306 (n + 1)).toNat * A041420 n

end

end A042746.P2764710788704555246

/-!
# A042747: Denominators of continued fraction convergents to sqrt(904).

The programs for A042747, there is no canonical definition to state claims against.
-/

/-! ## A042747.P17575600948150992357

`A041421(n)/gcd(2, n+1)`
-/

namespace A042747.P17575600948150992357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041421 n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A042747.P17575600948150992357

/-! ## A042747.P4643592763146001661

`A041421(n)/A000034(n)`
-/

namespace A042747.P4643592763146001661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041421 n : ℚ) / (A000034 n : ℚ)

end

end A042747.P4643592763146001661

/-! ## A042747.P4260922188398077220

`A041421(n)/A010673(n)!`
-/

namespace A042747.P4260922188398077220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041421 n : ℚ) / (Nat.factorial (A010673 n).toNat : ℚ)

end

end A042747.P4260922188398077220

/-! ## A042747.P11590986540618905245

`A041421(n)/A000079(n)%3`
-/

namespace A042747.P11590986540618905245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041421 n : ℚ) / (Int.tmod (A000079 n) 3 : ℚ)

end

end A042747.P11590986540618905245

/-! ## A042747.P15145567753553576216

`A041421(n)/A006519(n²+1)`
-/

namespace A042747.P15145567753553576216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041421 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A042747.P15145567753553576216

/-! ## A042747.P4816477685879236934

`A041421(n)/A002186(A016921(n))`
-/

namespace A042747.P4816477685879236934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041421 n : ℚ) / (A002186 (A016921 n).toNat : ℚ)

end

end A042747.P4816477685879236934

/-! ## A042747.P2953414350071120246

`A041421(n)/A020639(A006519(n+1))`
-/

namespace A042747.P2953414350071120246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041421 n : ℚ) / (A020639 (A006519 (n + 1)).toNat : ℚ)

end

end A042747.P2953414350071120246

/-!
# A042753: Denominators of continued fraction convergents to sqrt(907).

The programs for A042753, there is no canonical definition to state claims against.
-/

/-! ## A042753.P15331904504068906508

`A004736(A147654(n+1)+A002063(n))`
-/

namespace A042753.P15331904504068906508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A147654 (n + 1) + A002063 n).toNat

end

end A042753.P15331904504068906508

/-!
# A042762: Numerators of continued fraction convergents to sqrt(912).

The programs for A042762, there is no canonical definition to state claims against.
-/

/-! ## A042762.P5788275092567790436

`gcd(2, n)*A041424(n)`
-/

namespace A042762.P5788275092567790436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041424 n

end

end A042762.P5788275092567790436

/-! ## A042762.P9587069452980465549

`Δ[A007494(n)]*A041424(n)`
-/

namespace A042762.P9587069452980465549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041424 n

end

end A042762.P9587069452980465549

/-! ## A042762.P9032084987019406029

`lcm(Δ[A080412(n)], A041424(n))`
-/

namespace A042762.P9032084987019406029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A041424 n)

end

end A042762.P9032084987019406029

/-! ## A042762.P10396968223280714923

`A000034(n+1)*A041424(n)`
-/

namespace A042762.P10396968223280714923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041424 n

end

end A042762.P10396968223280714923

/-! ## A042762.P10134045520198277588

`2/A000034(n)*A041424(n)`
-/

namespace A042762.P10134045520198277588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041424 n : ℚ)

end

end A042762.P10134045520198277588

/-!
# A042763: Denominators of continued fraction convergents to sqrt(912).

The programs for A042763, there is no canonical definition to state claims against.
-/

/-! ## A042763.P4962426154026081105

`A041425(n)/A000034(n)`
-/

namespace A042763.P4962426154026081105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041425 n : ℚ) / (A000034 n : ℚ)

end

end A042763.P4962426154026081105

/-! ## A042763.P3730291586988353631

`A041425(n)/A010673(n)!`
-/

namespace A042763.P3730291586988353631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041425 n : ℚ) / (Nat.factorial (A010673 n).toNat : ℚ)

end

end A042763.P3730291586988353631

/-! ## A042763.P6280069485731904746

`A041425(n)/A134451(n+1)`
-/

namespace A042763.P6280069485731904746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041425 n : ℚ) / (A134451 (n + 1) : ℚ)

end

end A042763.P6280069485731904746

/-! ## A042763.P12349060551567500992

`A041425(n)/gcd(2, A016777(n))`
-/

namespace A042763.P12349060551567500992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041425 n : ℚ) / (Int.gcd 2 (A016777 n) : ℚ)

end

end A042763.P12349060551567500992

/-! ## A042763.P17953578584238635899

`A041425(n)/(Δ[A008619(n)]+1)`
-/

namespace A042763.P17953578584238635899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041425 n : ℚ) / (f1 (n + 1) - f1 n + 1 : ℚ)

end

end A042763.P17953578584238635899

/-! ## A042763.P10418695588930221740

`A041425(n)/Δ[A008619(A016789(n))]`
-/

namespace A042763.P10418695588930221740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A016789 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041425 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042763.P10418695588930221740

/-!
# A042771: Denominators of continued fraction convergents to sqrt(916).

The programs for A042771, there is no canonical definition to state claims against.
-/

/-! ## A042771.P5584075737978799470

`A033182(A042770(n)-(n+1)²)`
-/

namespace A042771.P5584075737978799470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A042770 n - ((n + 1) ^ 2 : ℤ)).toNat

end

end A042771.P5584075737978799470

/-!
# A042778: Numerators of continued fraction convergents to sqrt(920).

The programs for A042778, there is no canonical definition to state claims against.
-/

/-! ## A042778.P2994139526220645354

`gcd(2, n)*A041428(n)`
-/

namespace A042778.P2994139526220645354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041428 n

end

end A042778.P2994139526220645354

/-! ## A042778.P13651439039713192574

`Δ[A007494(n)]*A041428(n)`
-/

namespace A042778.P13651439039713192574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041428 n

end

end A042778.P13651439039713192574

/-! ## A042778.P14696280444502341795

`A000034(n+1)*A041428(n)`
-/

namespace A042778.P14696280444502341795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041428 n

end

end A042778.P14696280444502341795

/-! ## A042778.P7997949754010724482

`2/A000034(n)*A041428(n)`
-/

namespace A042778.P7997949754010724482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041428 n : ℚ)

end

end A042778.P7997949754010724482

/-! ## A042778.P12752588816377826791

`A006519(n²+2)*A041428(n)`
-/

namespace A042778.P12752588816377826791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 2) * A041428 n

end

end A042778.P12752588816377826791

/-!
# A042779: Denominators of continued fraction convergents to sqrt(920).

The programs for A042779, the canonical program `A042779.P12234492336992913476` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042779 has offset 0).

The definition of A042779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042779.P12234492336992913476

`182*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=181, a(3)=546`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A042779

/-- `182*a(n-2)-a(n-4)` -/
def P12234492336992913476.Spec : Prop :=
  ∀ n, P12234492336992913476.a n = A042779 n

theorem P12234492336992913476.correct : P12234492336992913476.Spec := by
  intro n
  simp only [A042779]

end A042779

/-! ## A042779.P12226534694118818005

`A041429(n)/A000034(n)`
-/

namespace A042779.P12226534694118818005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041429 n : ℚ) / (A000034 n : ℚ)

end

end A042779.P12226534694118818005

namespace A042779

/-- `A041429(n)/A000034(n)` -/
def P12226534694118818005.Spec : Prop :=
  ∀ n, P12226534694118818005.a n = (A042779 n : ℚ)

end A042779

/-! ## A042779.P531532904076770438

`A041429(n)/∑[A165326(n)]`
-/

namespace A042779.P531532904076770438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041429 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A042779.P531532904076770438

namespace A042779

/-- `A041429(n)/∑[A165326(n)]` -/
def P531532904076770438.Spec : Prop :=
  ∀ n, P531532904076770438.a n = (A042779 n : ℚ)

end A042779

/-! ## A042779.P17751636669734450176

`A041429(n)/Δ[A032766(n)]`
-/

namespace A042779.P17751636669734450176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041429 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042779.P17751636669734450176

namespace A042779

/-- `A041429(n)/Δ[A032766(n)]` -/
def P17751636669734450176.Spec : Prop :=
  ∀ n, P17751636669734450176.a n = (A042779 n : ℚ)

end A042779

/-! ## A042779.P10084088391726071550

`A041429(n)/A084642(n+2)`
-/

namespace A042779.P10084088391726071550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041429 n : ℚ) / (A084642 (n + 2) : ℚ)

end

end A042779.P10084088391726071550

namespace A042779

/-- `A041429(n)/A084642(n+2)` -/
def P10084088391726071550.Spec : Prop :=
  ∀ n, P10084088391726071550.a n = (A042779 n : ℚ)

end A042779

/-! ## A042779.P5984662530888381499

`A041429(n)/A286520(or(62, n))`
-/

namespace A042779.P5984662530888381499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041429 n : ℚ) / (A286520 (Nat.lor 62 n) : ℚ)

end

end A042779.P5984662530888381499

namespace A042779

/-- `A041429(n)/A286520(or(62, n))` -/
def P5984662530888381499.Spec : Prop :=
  ∀ n, P5984662530888381499.a n = (A042779 n : ℚ)

end A042779

/-!
# A042781: Denominators of continued fraction convergents to sqrt(921).

The programs for A042781, there is no canonical definition to state claims against.
-/

/-! ## A042781.P922132619330685380

`A333610(n)+A323376(A191802(n))`
-/

namespace A042781.P922132619330685380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333610 n + A323376 (A191802 n).toNat

end

end A042781.P922132619330685380

/-!
# A042783: Denominators of continued fraction convergents to sqrt(922).

The programs for A042783, there is no canonical definition to state claims against.
-/

/-! ## A042783.P17744360962755095759

`A193917(2^n)+floor((n+1)/ϕ)`
-/

namespace A042783.P17744360962755095759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193917 (2 ^ n) + ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

end

end A042783.P17744360962755095759

/-!
# A042789: Denominators of continued fraction convergents to sqrt(925).

The programs for A042789, there is no canonical definition to state claims against.
-/

/-! ## A042789.P581668638811267131

`lcm(A132807(n), A140356(A132807(n)))`
-/

namespace A042789.P581668638811267131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A132807 n) (A140356 (A132807 n).toNat)

end

end A042789.P581668638811267131

/-!
# A042791: Denominators of continued fraction convergents to sqrt(926).

The programs for A042791, there is no canonical definition to state claims against.
-/

/-! ## A042791.P1368619066192685354

`A302545(A248780(2*n+3))+A037861(A049385(n+5)+n)`
-/

namespace A042791.P1368619066192685354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302545 (A248780 (2 * n + 3)).toNat + A037861 (A049385 (n + 5) + (n : ℤ)).toNat

end

end A042791.P1368619066192685354

/-!
# A042793: Denominators of continued fraction convergents to sqrt(927).

The programs for A042793, there is no canonical definition to state claims against.
-/

/-! ## A042793.P4832307110044845906

`A256189(A256181(n+1))-A241840(n+1)`
-/

namespace A042793.P4832307110044845906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256189 (A256181 (n + 1)).toNat - A241840 (n + 1)

end

end A042793.P4832307110044845906

/-!
# A042797: Denominators of continued fraction convergents to sqrt(929).

The programs for A042797, there is no canonical definition to state claims against.
-/

/-! ## A042797.P6466450657124298950

`xor(A004086(A335786(n+1)), A221838(n+1))`
-/

namespace A042797.P6466450657124298950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004086 (A335786 (n + 1)).toNat) (A221838 (n + 1))

end

end A042797.P6466450657124298950

/-!
# A042799: Denominators of continued fraction convergents to sqrt(930).

The programs for A042799, the canonical program `A042799.P10197429628805452537` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042799 has offset 0).

The definition of A042799 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042799.P10197429628805452537

`122*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=121, a(3)=244`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A042799

/-- `122*a(n-2)-a(n-4)` -/
def P10197429628805452537.Spec : Prop :=
  ∀ n, P10197429628805452537.a n = A042799 n

theorem P10197429628805452537.correct : P10197429628805452537.Spec := by
  intro n
  simp only [A042799]

end A042799

