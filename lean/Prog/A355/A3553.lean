import SequenceMachineLib
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
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

/-!
# A355300: a(0) = 0; for n >= 1, a(n) = a(A007088(n) mod n) + 1.

The programs for A355300, the canonical program `A355300.P2506392845726788672` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355300 has offset 0).

The definition of A355300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355300.P8380209822422589031

`a(A007088(n)%n)+1` with `a(0)=0`
-/

namespace A355300.P8380209822422589031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (Int.tmod (A007088 n) (n : ℤ)).toNat + 1

end

end A355300.P8380209822422589031

namespace A355300

/-- `a(A007088(n)%n)+1` -/
def P8380209822422589031.Spec : Prop :=
  ∀ n, (P8380209822422589031.a n : ℤ) = A355300 n

end A355300

/-! ## A355300.P2506392845726788672

`a(A228071(n)%n)+1` with `a(0)=0`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A355300

/-- `a(A228071(n)%n)+1` -/
def P2506392845726788672.Spec : Prop :=
  ∀ n, (P2506392845726788672.a n : ℤ) = A355300 n

theorem P2506392845726788672.correct : P2506392845726788672.Spec := by
  intro n
  simp only [A355300]

end A355300

/-! ## A355300.P5960210748531314238

`a((A204095(n)/8)%n)+1` with `a(0)=0`
-/

namespace A355300.P5960210748531314238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (Int.tmod (SequenceMachineLib.roundAway ((A204095 n : ℚ) / 8)) (n : ℤ)).toNat + 1

end

end A355300.P5960210748531314238

namespace A355300

/-- `a((A204095(n)/8)%n)+1` -/
def P5960210748531314238.Spec : Prop :=
  ∀ n, (P5960210748531314238.a n : ℤ) = A355300 n

end A355300

/-! ## A355300.P13971289689262888230

`a((A169965(n+1)/2)%n)+1` with `a(0)=0`
-/

namespace A355300.P13971289689262888230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (Int.tmod (SequenceMachineLib.roundAway ((A169965 (n + 1) : ℚ) / 2)) (n : ℤ)).toNat + 1

end

end A355300.P13971289689262888230

namespace A355300

/-- `a((A169965(n+1)/2)%n)+1` -/
def P13971289689262888230.Spec : Prop :=
  ∀ n, (P13971289689262888230.a n : ℤ) = A355300 n

end A355300

/-! ## A355300.P16462680139155932687

`a((A204093(n)-A169964(n+1))%n)+1` with `a(0)=0`
-/

namespace A355300.P16462680139155932687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (Int.tmod (A204093 n - A169964 (n + 1)) (n : ℤ)).toNat + 1

end

end A355300.P16462680139155932687

namespace A355300

/-- `a((A204093(n)-A169964(n+1))%n)+1` -/
def P16462680139155932687.Spec : Prop :=
  ∀ n, (P16462680139155932687.a n : ℤ) = A355300 n

end A355300

/-!
# A355302: a(n) is the number of normal undulating integers that divide n.

The programs for A355302, the canonical program `A355302.P9431336344113324060` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355302 has offset 1).

The definition of A355302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355302.P9431336344113324060

`∑{d}[n+1, A178788(#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A355302

/-- `∑{d}[n+1, A178788(#)]` -/
def P9431336344113324060.Spec : Prop :=
  ∀ n, P9431336344113324060.a n = A355302 (n + 1)

theorem P9431336344113324060.correct : P9431336344113324060.Spec := by
  intro n
  simp only [A355302, Nat.add_sub_cancel]

end A355302

/-! ## A355302.P14783479741261695231

`∑{d}[n+1, A196368(#)]`
-/

namespace A355302.P14783479741261695231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A196368 d

end

end A355302.P14783479741261695231

namespace A355302

/-- `∑{d}[n+1, A196368(#)]` -/
def P14783479741261695231.Spec : Prop :=
  ∀ n, P14783479741261695231.a n = A355302 (n + 1)

end A355302

/-! ## A355302.P8396927357926214128

`A038548(lcm(11, A130734(n+2)))`
-/

namespace A355302.P8396927357926214128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (Int.lcm 11 (A130734 (n + 2)))

end

end A355302.P8396927357926214128

namespace A355302

/-- `A038548(lcm(11, A130734(n+2)))` -/
def P8396927357926214128.Spec : Prop :=
  ∀ n, P8396927357926214128.a n = A355302 (n + 1)

end A355302

/-! ## A355302.P7316477346823209819

`∑{d}[n+1, A000035(A139337(#))]`
-/

namespace A355302.P7316477346823209819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000035 (A139337 d).toNat

end

end A355302.P7316477346823209819

namespace A355302

/-- `∑{d}[n+1, A000035(A139337(#))]` -/
def P7316477346823209819.Spec : Prop :=
  ∀ n, P7316477346823209819.a n = A355302 (n + 1)

end A355302

/-! ## A355302.P9040011773149014358

`∑{d}[n+1, A070596(#²)]`
-/

namespace A355302.P9040011773149014358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A070596 (d ^ 2)

end

end A355302.P9040011773149014358

namespace A355302

/-- `∑{d}[n+1, A070596(#²)]` -/
def P9040011773149014358.Spec : Prop :=
  ∀ n, P9040011773149014358.a n = A355302 (n + 1)

end A355302

/-! ## A355302.P12716282981198726777

`A072670(11*11*(n+1)-1)-A072670(n)`
-/

namespace A355302.P12716282981198726777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (11 * (11 * (n + 1)) - 1) - A072670 n

end

end A355302.P12716282981198726777

namespace A355302

/-- `A072670(11*11*(n+1)-1)-A072670(n)` -/
def P12716282981198726777.Spec : Prop :=
  ∀ n, P12716282981198726777.a n = A355302 (n + 1)

end A355302

/-!
# A355303: a(n) is the smallest integer that has n normal undulating divisors.

The programs for A355303, there is no canonical definition to state claims against.
-/

/-! ## A355303.P3786063509996635009

`A005179(n+1)%A194368(A077174(n+1))`
-/

namespace A355303.P3786063509996635009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005179 (n + 1)) (A194368 (A077174 (n + 1)).toNat)

end

end A355303.P3786063509996635009

/-! ## A355303.P16416925665324428828

`(A382492(n+1)%A382504(n+3))%A061242(n+3)`
-/

namespace A355303.P16416925665324428828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A382492 (n + 1)) (A382504 (n + 3))) (A061242 (n + 3))

end

end A355303.P16416925665324428828

/-! ## A355303.P7173714315293869425

`A099315(A001222(3^n)+1)%A064608(A031293(n+2))`
-/

namespace A355303.P7173714315293869425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099315 (A001222 (3 ^ n) + 1).toNat) (A064608 (A031293 (n + 2)).toNat)

end

end A355303.P7173714315293869425

/-! ## A355303.P6631286591331916695

`(A099315(n+1)^A120041(n)!)%A064608(A031293(n+2))`
-/

namespace A355303.P6631286591331916695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099315 (n + 1) ^ Nat.factorial (A120041 n).toNat) (A064608 (A031293 (n + 2)).toNat)

end

end A355303.P6631286591331916695

/-! ## A355303.P6070129705074108807

`(A323510(A014151(n))+A099315(n+1))%(A207063(3*n+1)+2)`
-/

namespace A355303.P6070129705074108807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323510 (A014151 n).toNat + A099315 (n + 1)) (A207063 (3 * n + 1) + 2)

end

end A355303.P6070129705074108807

/-!
# A355304: Integers whose number of normal undulating divisors sets a new record.

The programs for A355304, there is no canonical definition to state claims against.
-/

/-! ## A355304.P8427981417483569275

`A137425(A043320(n+1))`
-/

namespace A355304.P8427981417483569275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137425 (A043320 (n + 1)).toNat

end

end A355304.P8427981417483569275

/-! ## A355304.P14995490305215575006

`A137425(A044917(n+1))`
-/

namespace A355304.P14995490305215575006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137425 (A044917 (n + 1)).toNat

end

end A355304.P14995490305215575006

/-! ## A355304.P11213167114352958484

`A137425(A055645(n+1))`
-/

namespace A355304.P11213167114352958484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137425 (A055645 (n + 1)).toNat

end

end A355304.P11213167114352958484

/-! ## A355304.P8431872381548636243

`A137425(A161953(n+1))`
-/

namespace A355304.P8431872381548636243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137425 (A161953 (n + 1)).toNat

end

end A355304.P8431872381548636243

/-! ## A355304.P13487883230965649691

`A137425(A187829(n+1))`
-/

namespace A355304.P13487883230965649691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137425 (A187829 (n + 1)).toNat

end

end A355304.P13487883230965649691

/-!
# A355305: Carmichael numbers ending in 5.

The programs for A355305, there is no canonical definition to state claims against.
-/

/-! ## A355305.P7501987805274953014

`∩[A002997(n+1), A216023(n+1)]`
-/

namespace A355305.P7501987805274953014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355305.P7501987805274953014

/-! ## A355305.P5803296298193481737

`A002997(eq[1, val(A002997(n+1), 5)]+1)`
-/

namespace A355305.P5803296298193481737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002997 (n + 1)).toNat 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A355305.P5803296298193481737

/-! ## A355305.P6040235298986173720

`∩[A081703(n+1)*A141710(n+1), A216023(n+1)]`
-/

namespace A355305.P6040235298986173720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081703 (n + 1) * A141710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355305.P6040235298986173720

/-! ## A355305.P14935091646117249379

`∩[A174590(n+1)*A306414(n+1)+1, A216023(n+1)]`
-/

namespace A355305.P14935091646117249379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174590 (n + 1) * A306414 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355305.P14935091646117249379

/-! ## A355305.P32850285718207884

`∩[A216023(n+1), A323214(n+1)]`
-/

namespace A355305.P32850285718207884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355305.P32850285718207884

/-!
# A355306: Number of partitions of n in which the number of prime parts is not equal to the number of nonprime parts.

The programs for A355306, there is no canonical definition to state claims against.
-/

/-! ## A355306.P1340402330042723551

`A355158(n)+A355225(n)`
-/

namespace A355306.P1340402330042723551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355158 n + A355225 n

end

end A355306.P1340402330042723551

/-! ## A355306.P2610874407176315275

`A000041(n)-A155515(n)`
-/

namespace A355306.P2610874407176315275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A155515 n

end

end A355306.P2610874407176315275

/-! ## A355306.P11865318952644826838

`∑[A002865(n)]-A155515(n)`
-/

namespace A355306.P11865318952644826838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A155515 n

end

end A355306.P11865318952644826838

/-! ## A355306.P6976619979414344421

`A000065(n)+1-A155515(n)`
-/

namespace A355306.P6976619979414344421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A155515 n)

end

end A355306.P6976619979414344421

/-! ## A355306.P3479383568892571251

`A139582(n)/2-A155515(n)`
-/

namespace A355306.P3479383568892571251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A155515 n : ℚ)

end

end A355306.P3479383568892571251

/-! ## A355306.P1417060850911441664

`A133041(n)-(A155515(n)+n)`
-/

namespace A355306.P1417060850911441664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A155515 n + (n : ℤ))

end

end A355306.P1417060850911441664

/-! ## A355306.P11224870120853888141

`∑[A085811(n+3)]-A155515(n)`
-/

namespace A355306.P11224870120853888141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A155515 n

end

end A355306.P11224870120853888141

/-! ## A355306.P7670171686025241878

`A002095(n)+A235945(n)-A155515(n)`
-/

namespace A355306.P7670171686025241878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002095 n + (A235945 n - A155515 n)

end

end A355306.P7670171686025241878

/-!
# A355307: Carmichael numbers ending in 7.

The programs for A355307, there is no canonical definition to state claims against.
-/

/-! ## A355307.P10852343404458746229

`∩[A002997(n+1), A317972(n+1)]`
-/

namespace A355307.P10852343404458746229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355307.P10852343404458746229

/-! ## A355307.P8859152994767810772

`∩[A081703(n+1)*A141710(n+1), A317972(n+1)]`
-/

namespace A355307.P8859152994767810772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081703 (n + 1) * A141710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355307.P8859152994767810772

/-!
# A355308: Expansion of e.g.f. -LambertW(x^3/6 * (1 - exp(x))).

The programs for A355308, there is no canonical definition to state claims against.
-/

/-! ## A355308.P16427136393436321754

`A353999(A121775(∑[n]))`
-/

namespace A355308.P16427136393436321754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353999 (A121775 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A355308.P16427136393436321754

/-! ## A355308.P4671868970502175608

`A353999(A225640(∑[n]))`
-/

namespace A355308.P4671868970502175608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353999 (A225640 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A355308.P4671868970502175608

/-! ## A355308.P4936106861260990177

`∑{e}[A008776(n), A353999(#)]`
-/

namespace A355308.P4936106861260990177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A353999 (Nat.factorization (f1 n).natAbs p)

end

end A355308.P4936106861260990177

/-! ## A355308.P13038377911635235582

`A353999(C(n, A225416(n)²))`
-/

namespace A355308.P13038377911635235582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353999 (Nat.choose n (A225416 n ^ 2).toNat)

end

end A355308.P13038377911635235582

/-! ## A355308.P4453931575573791710

`A353999(n)%A000124(n)!`
-/

namespace A355308.P4453931575573791710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353999 n) (Nat.factorial (A000124 n).toNat : ℤ)

end

end A355308.P4453931575573791710

/-!
# A355310: Total number of V-toothpicks after n-th stage in a cellular automaton with V-toothpicks of 60 degrees (see Comments lines for precise definition).

The programs for A355310, there is no canonical definition to state claims against.
-/

/-! ## A355310.P18142282675148322296

`∑[A355311(n+1)]-A355311(n+1)`
-/

namespace A355310.P18142282675148322296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A355311 (n + 1)

end

end A355310.P18142282675148322296

/-! ## A355310.P5661369601961845619

`A000969(n)-A014499(A000244(n))`
-/

namespace A355310.P5661369601961845619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000969 n - A014499 (A000244 n).toNat

end

end A355310.P5661369601961845619

/-!
# A355311: Number of V-toothpicks added at n-th stage to the V-toothpick structure of A355310.

The programs for A355311, there is no canonical definition to state claims against.
-/

/-! ## A355311.P15436512163532157687

`Δ[A355310(n)]`
-/

namespace A355311.P15436512163532157687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A355311.P15436512163532157687

/-! ## A355311.P10052357078457188567

`A355310(n+1)-A355310(n)`
-/

namespace A355311.P10052357078457188567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355310 (n + 1) - A355310 n

end

end A355311.P10052357078457188567

/-!
# A355317: Prime numbers that have the same base-10 digits as their prime index (with multiplicity), disregarding zero digits.

The programs for A355317, there is no canonical definition to state claims against.
-/

/-! ## A355317.P9032295203263271301

`A000040(A355318(n+1))`
-/

namespace A355317.P9032295203263271301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A355318 (n + 1)).toNat

end

end A355317.P9032295203263271301

/-! ## A355317.P3656281297575002701

`A008578(A355318(n+1)+1)`
-/

namespace A355317.P3656281297575002701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A355318 (n + 1) + 1).toNat

end

end A355317.P3656281297575002701

/-! ## A355317.P5369183415418089933

`A065514(A355318(n+1)+1)`
-/

namespace A355317.P5369183415418089933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065514 (A355318 (n + 1) + 1).toNat

end

end A355317.P5369183415418089933

/-! ## A355317.P8485829264329895016

`A046022(A355318(n+1)+2)`
-/

namespace A355317.P8485829264329895016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A355318 (n + 1) + 2).toNat

end

end A355317.P8485829264329895016

/-! ## A355317.P10560194719098170799

`A065091(A355318(n+1)-1)`
-/

namespace A355317.P10560194719098170799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A355318 (n + 1) - 1).toNat

end

end A355317.P10560194719098170799

/-!
# A355318: Indices of the primes that have the same base-10 digits as the corresponding prime number (with multiplicity), disregarding zero digits.

The programs for A355318, there is no canonical definition to state claims against.
-/

/-! ## A355318.P15840853163731237821

`A000720(A355317(n+1))`
-/

namespace A355318.P15840853163731237821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A355317 (n + 1)).toNat

end

end A355318.P15840853163731237821

/-! ## A355318.P13685355307745034874

`A061395(A355317(n+1)%A355309(n+1))`
-/

namespace A355318.P13685355307745034874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A355317 (n + 1)) (A355309 (n + 1))).toNat

end

end A355318.P13685355307745034874

/-! ## A355318.P6652400681789203475

`A061395(A355317(n+1))%A355305(n+4)`
-/

namespace A355318.P6652400681789203475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A355317 (n + 1)).toNat) (A355305 (n + 4))

end

end A355318.P6652400681789203475

/-! ## A355318.P2362041923737387700

`A061395(A355317(n+1)+A010052(3*n+2))`
-/

namespace A355318.P2362041923737387700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A355317 (n + 1) + A010052 (3 * n + 2)).toNat

end

end A355318.P2362041923737387700

/-!
# A355319: Maximal GCD of four positive integers with sum n.

The programs for A355319, there is no canonical definition to state claims against.
-/

/-! ## A355319.P9534765826333841593

`gcd(A095165(n+4)%A217990(n+1), A074115(n))`
-/

namespace A355319.P9534765826333841593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A095165 (n + 4)) (A217990 (n + 1))) (A074115 n)

end

end A355319.P9534765826333841593

/-! ## A355319.P17792178317255899860

`A354601(A276326(n))`
-/

namespace A355319.P17792178317255899860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354601 ((A276326 n).toNat + 10)

end

end A355319.P17792178317255899860

/-! ## A355319.P8083200545354268579

`∏{e}[A037445(A032021(3*n)), #]`
-/

namespace A355319.P8083200545354268579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A032021 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A355319.P8083200545354268579

/-! ## A355319.P13433401440402000920

`or(A279061(A007088(n)), A322452(n+1))`
-/

namespace A355319.P13433401440402000920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A279061 (A007088 n).toNat) (A322452 (n + 1))

end

end A355319.P13433401440402000920

/-! ## A355319.P16403266956053989883

`or(A279061(A007088(n)), A358680(n+1))`
-/

namespace A355319.P16403266956053989883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A279061 (A007088 n).toNat) (A358680 (n + 1))

end

end A355319.P16403266956053989883

/-!
# A355320: Irregular triangle T(n, k), n >= 0, -2*n <= k <= 2*n, read by rows; T(0, 0) = 1; for n > 0, T(n, k) is the sum of all terms in previous rows at one knight's move away.

The programs for A355320, there is no canonical definition to state claims against.
-/

/-! ## A355320.P12274797755332806588

`A278045(A129722(n))`
-/

namespace A355320.P12274797755332806588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278045 (A129722 n).toNat

end

end A355320.P12274797755332806588

/-! ## A355320.P18036568109546416435

`A170967(A007092(n))`
-/

namespace A355320.P18036568109546416435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170967 (A007092 n).toNat

end

end A355320.P18036568109546416435

/-! ## A355320.P5181438083205675529

`A170968(A024651(n))`
-/

namespace A355320.P5181438083205675529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170968 (A024651 n).toNat

end

end A355320.P5181438083205675529

/-! ## A355320.P9412405892689564260

`A170967(A391164(n))`
-/

namespace A355320.P9412405892689564260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170967 (A391164 n).toNat

end

end A355320.P9412405892689564260

/-! ## A355320.P12620292074562120697

`A170957(A342138(n+1))`
-/

namespace A355320.P12620292074562120697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170957 (A342138 (n + 1)).toNat

end

end A355320.P12620292074562120697

/-!
# A355321: Numbers k such that the k-th composition in standard order has the same number of even parts as odd.

The programs for A355321, there is no canonical definition to state claims against.
-/

/-! ## A355321.P16741214371958817916

`eq[0, A195017(A333219(n+1))]`
-/

namespace A355321.P16741214371958817916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A333219 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A355321.P16741214371958817916

/-! ## A355321.P3684716740992143676

`eq[A000120(n), A004718(A351010(n+1))]`
-/

namespace A355321.P3684716740992143676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A351010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A355321.P3684716740992143676

/-!
# A355322: LCM of Lucas numbers {L(1), L(2), ..., L(n)}.

The programs for A355322, there is no canonical definition to state claims against.
-/

/-! ## A355322.P17723290967367637543

`lcm(floor(a(n-1)), round(ϕ^((n+1)%(n+1)²)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A355322.P17723290967367637543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (SequenceMachineLib.roundAway (Real.goldenRatio ^ ((n + 1) % (n + 1) ^ 2)))

end

end A355322.P17723290967367637543

/-! ## A355322.P6083411852152050049

`lcm(a(n-1), A075193(n))` with `a(0)=1`
-/

namespace A355322.P6083411852152050049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A075193 n)

end

end A355322.P6083411852152050049

/-! ## A355322.P7322777308880474083

`lcm(a(n-2), A075269(n))` with `a(0)=1, a(1)=3`
-/

namespace A355322.P7322777308880474083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.lcm (a (n - 2) : ℤ) (A075269 n)

end

end A355322.P7322777308880474083

/-! ## A355322.P12892389652494230856

`lcm(abs(a(n-1)), A000032(n+1))` with `a(0)=1`
-/

namespace A355322.P12892389652494230856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A000032 (n + 1))

end

end A355322.P12892389652494230856

/-! ## A355322.P16070206460024607773

`lcm(A225905(A225875(n+1)), A225905(n+1))`
-/

namespace A355322.P16070206460024607773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A225905 (A225875 (n + 1)).toNat) (A225905 (n + 1))

end

end A355322.P16070206460024607773

/-!
# A355324: Lower midsequence of the Fibonacci numbers (1,2,3,5,8,...) and Lucas numbers (1,3,4,7,11,...); see Comments.

The programs for A355324, the canonical program `A355324.P760508323961495541` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355324 has offset 0).

The definition of A355324 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355324.P760508323961495541

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6, a(4)=9`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A355324

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` -/
def P760508323961495541.Spec : Prop :=
  ∀ n, P760508323961495541.a n = A355324 n

theorem P760508323961495541.correct : P760508323961495541.Spec := by
  intro n
  simp only [A355324]

end A355324

/-! ## A355324.P7111959137966354386

`floor((A000045(n+2)+A000032(n+1))/2)`
-/

namespace A355324.P7111959137966354386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 (n + 2) + A000032 (n + 1) : ℚ) / 2⌋

end

end A355324.P7111959137966354386

namespace A355324

/-- `floor((A000045(n+2)+A000032(n+1))/2)` -/
def P7111959137966354386.Spec : Prop :=
  ∀ n, P7111959137966354386.a n = A355324 n

end A355324

/-! ## A355324.P16914105938413231091

`4%gcd(3, n)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A355324.P16914105938413231091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 % Nat.gcd 3 n + (a (n - 1) + a (n - 2))

end

end A355324.P16914105938413231091

namespace A355324

/-- `4%gcd(3, n)+a(n-1)+a(n-2)` -/
def P16914105938413231091.Spec : Prop :=
  ∀ n, (P16914105938413231091.a n : ℤ) = A355324 n

end A355324

/-! ## A355324.P4480659926580242835

`1-n²%3+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A355324.P4480659926580242835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - ((n ^ 2 % 3 : ℕ) : ℤ) + (a (n - 1) + a (n - 2))

end

end A355324.P4480659926580242835

namespace A355324

/-- `1-n²%3+a(n-1)+a(n-2)` -/
def P4480659926580242835.Spec : Prop :=
  ∀ n, P4480659926580242835.a n = A355324 n

end A355324

/-! ## A355324.P1211156392282540467

`A173714(n)+A093040(n)`
-/

namespace A355324.P1211156392282540467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173714 n + A093040 n

end

end A355324.P1211156392282540467

namespace A355324

/-- `A173714(n)+A093040(n)` -/
def P1211156392282540467.Spec : Prop :=
  ∀ n, P1211156392282540467.a n = A355324 n

end A355324

/-! ## A355324.P17059295894526561172

`A255978(n)+A173495(n)`
-/

namespace A355324.P17059295894526561172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255978 n + A173495 n

end

end A355324.P17059295894526561172

namespace A355324

/-- `A255978(n)+A173495(n)` -/
def P17059295894526561172.Spec : Prop :=
  ∀ n, P17059295894526561172.a n = A355324 n

end A355324

/-! ## A355324.P3853523510029706042

`A377368(n)+A245968(n)`
-/

namespace A355324.P3853523510029706042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377368 n + A245968 n

end

end A355324.P3853523510029706042

namespace A355324

/-- `A377368(n)+A245968(n)` -/
def P3853523510029706042.Spec : Prop :=
  ∀ n, P3853523510029706042.a n = A355324 n

end A355324

/-! ## A355324.P8394829043789518999

`A020695(n)-A173495(n)`
-/

namespace A355324.P8394829043789518999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n - A173495 n

end

end A355324.P8394829043789518999

namespace A355324

/-- `A020695(n)-A173495(n)` -/
def P8394829043789518999.Spec : Prop :=
  ∀ n, P8394829043789518999.a n = A355324 n

end A355324

/-! ## A355324.P14185143641099776893

`A355325(n)-A011655(n)`
-/

namespace A355324.P14185143641099776893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355325 n - A011655 n

end

end A355324.P14185143641099776893

namespace A355324

/-- `A355325(n)-A011655(n)` -/
def P14185143641099776893.Spec : Prop :=
  ∀ n, P14185143641099776893.a n = A355324 n

end A355324

/-! ## A355324.P8656806093506275197

`A004695(n)+A000045(n+2)`
-/

namespace A355324.P8656806093506275197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 n + A000045 (n + 2)

end

end A355324.P8656806093506275197

namespace A355324

/-- `A004695(n)+A000045(n+2)` -/
def P8656806093506275197.Spec : Prop :=
  ∀ n, P8656806093506275197.a n = A355324 n

end A355324

/-! ## A355324.P12257507491434256696

`A147997(n)+A000071(n+2)`
-/

namespace A355324.P12257507491434256696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 n + A000071 (n + 2)

end

end A355324.P12257507491434256696

namespace A355324

/-- `A147997(n)+A000071(n+2)` -/
def P12257507491434256696.Spec : Prop :=
  ∀ n, P12257507491434256696.a n = A355324 n

end A355324

/-! ## A355324.P3890189108027379716

`A000204(n+1)-A173173(n)`
-/

namespace A355324.P3890189108027379716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - A173173 n

end

end A355324.P3890189108027379716

namespace A355324

/-- `A000204(n+1)-A173173(n)` -/
def P3890189108027379716.Spec : Prop :=
  ∀ n, P3890189108027379716.a n = A355324 n

end A355324

/-! ## A355324.P12695944642286146762

`A201864(n+2)+A173495(n+1)`
-/

namespace A355324.P12695944642286146762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201864 (n + 2) + A173495 (n + 1)

end

end A355324.P12695944642286146762

namespace A355324

/-- `A201864(n+2)+A173495(n+1)` -/
def P12695944642286146762.Spec : Prop :=
  ∀ n, P12695944642286146762.a n = A355324 n

end A355324

/-! ## A355324.P12841861083303416306

`A173673(2*n)+A000045(n+2)`
-/

namespace A355324.P12841861083303416306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (2 * n) + A000045 (n + 2)

end

end A355324.P12841861083303416306

namespace A355324

/-- `A173673(2*n)+A000045(n+2)` -/
def P12841861083303416306.Spec : Prop :=
  ∀ n, P12841861083303416306.a n = A355324 n

end A355324

/-! ## A355324.P4197732299432780559

`floor(A000045(n+2)+A000045(n)/2)`
-/

namespace A355324.P4197732299432780559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 (n + 2) : ℚ) + (A000045 n : ℚ) / 2⌋

end

end A355324.P4197732299432780559

namespace A355324

/-- `floor(A000045(n+2)+A000045(n)/2)` -/
def P4197732299432780559.Spec : Prop :=
  ∀ n, P4197732299432780559.a n = A355324 n

end A355324

/-! ## A355324.P17580498196013354034

`A000032(n+1)-ceil(A000045(n)/2)`
-/

namespace A355324.P17580498196013354034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - ⌈(A000045 n : ℚ) / 2⌉

end

end A355324.P17580498196013354034

namespace A355324

/-- `A000032(n+1)-ceil(A000045(n)/2)` -/
def P17580498196013354034.Spec : Prop :=
  ∀ n, P17580498196013354034.a n = A355324 n

end A355324

/-! ## A355324.P8218697573672889169

`A173673(2*n)+A000071(n+2)+1`
-/

namespace A355324.P8218697573672889169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (2 * n) + (A000071 (n + 2) + 1)

end

end A355324.P8218697573672889169

namespace A355324

/-- `A173673(2*n)+A000071(n+2)+1` -/
def P8218697573672889169.Spec : Prop :=
  ∀ n, P8218697573672889169.a n = A355324 n

end A355324

/-! ## A355324.P11890292790022616373

`A293553(n+1)+A131132(n)+A000045(n)`
-/

namespace A355324.P11890292790022616373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293553 (n + 1) + (A131132 n + A000045 n)

end

end A355324.P11890292790022616373

namespace A355324

/-- `A293553(n+1)+A131132(n)+A000045(n)` -/
def P11890292790022616373.Spec : Prop :=
  ∀ n, P11890292790022616373.a n = A355324 n

end A355324

/-! ## A355324.P12869763330686678033

`A000032(n+1)-(A011655(n)+A004695(n))`
-/

namespace A355324.P12869763330686678033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - (A011655 n + A004695 n)

end

end A355324.P12869763330686678033

namespace A355324

/-- `A000032(n+1)-(A011655(n)+A004695(n))` -/
def P12869763330686678033.Spec : Prop :=
  ∀ n, P12869763330686678033.a n = A355324 n

end A355324

/-! ## A355324.P4204945919809902257

`A081410(n+2)-(A004695(n+1)+A004695(n))`
-/

namespace A355324.P4204945919809902257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081410 (n + 2) - (A004695 (n + 1) + A004695 n)

end

end A355324.P4204945919809902257

namespace A355324

/-- `A081410(n+2)-(A004695(n+1)+A004695(n))` -/
def P4204945919809902257.Spec : Prop :=
  ∀ n, P4204945919809902257.a n = A355324 n

end A355324

/-!
# A355325: Upper midsequence of the Fibonacci numbers (1,2,3,5,8,...) and Lucas numbers (1,3,4,7,11,...); see Comments.

The programs for A355325, the canonical program `A355325.P2759077780131125865` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355325 has offset 0).

The definition of A355325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355325.P2759077780131125865

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=6, a(4)=10`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A355325

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` -/
def P2759077780131125865.Spec : Prop :=
  ∀ n, P2759077780131125865.a n = A355325 n

theorem P2759077780131125865.correct : P2759077780131125865.Spec := by
  intro n
  simp only [A355325]

end A355325

/-! ## A355325.P6161702697282379534

`ceil((A000045(n+2)+A000032(n+1))/2)`
-/

namespace A355325.P6161702697282379534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000045 (n + 2) + A000032 (n + 1) : ℚ) / 2⌉

end

end A355325.P6161702697282379534

namespace A355325

/-- `ceil((A000045(n+2)+A000032(n+1))/2)` -/
def P6161702697282379534.Spec : Prop :=
  ∀ n, P6161702697282379534.a n = A355325 n

end A355325

/-! ## A355325.P13869965906988604875

`a(n-1)+a(n-2)-4%gcd(3, n)` with `a(0)=1, a(1)=3`
-/

namespace A355325.P13869965906988604875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (a (n - 2) - ((4 % Nat.gcd 3 n : ℕ) : ℤ))

end

end A355325.P13869965906988604875

namespace A355325

/-- `a(n-1)+a(n-2)-4%gcd(3, n)` -/
def P13869965906988604875.Spec : Prop :=
  ∀ n, P13869965906988604875.a n = A355325 n

end A355325

/-! ## A355325.P11296688532170326090

`a(n-1)+a(n-2)-(1-n²%3)` with `a(0)=1, a(1)=3`
-/

namespace A355325.P11296688532170326090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (a (n - 2) - (1 - ((n ^ 2 % 3 : ℕ) : ℤ)))

end

end A355325.P11296688532170326090

namespace A355325

/-- `a(n-1)+a(n-2)-(1-n²%3)` -/
def P11296688532170326090.Spec : Prop :=
  ∀ n, P11296688532170326090.a n = A355325 n

end A355325

/-! ## A355325.P114814632070320404

`A245968(n)+A001588(n)`
-/

namespace A355325.P114814632070320404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245968 n + A001588 n

end

end A355325.P114814632070320404

namespace A355325

/-- `A245968(n)+A001588(n)` -/
def P114814632070320404.Spec : Prop :=
  ∀ n, P114814632070320404.a n = A355325 n

end A355325

/-! ## A355325.P15953146055924221977

`A355324(n)+A011655(n)`
-/

namespace A355325.P15953146055924221977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355324 n + A011655 n

end

end A355325.P15953146055924221977

namespace A355325

/-- `A355324(n)+A011655(n)` -/
def P15953146055924221977.Spec : Prop :=
  ∀ n, P15953146055924221977.a n = A355325 n

end A355325

/-! ## A355325.P5132209565751158458

`A390351(n)-A094686(n)`
-/

namespace A355325.P5132209565751158458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390351 n - A094686 n

end

end A355325.P5132209565751158458

namespace A355325

/-- `A390351(n)-A094686(n)` -/
def P5132209565751158458.Spec : Prop :=
  ∀ n, P5132209565751158458.a n = A355325 n

end A355325

/-! ## A355325.P11929085009249773620

`A000032(n+1)-A004695(n)`
-/

namespace A355325.P11929085009249773620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - A004695 n

end

end A355325.P11929085009249773620

namespace A355325

/-- `A000032(n+1)-A004695(n)` -/
def P11929085009249773620.Spec : Prop :=
  ∀ n, P11929085009249773620.a n = A355325 n

end A355325

/-! ## A355325.P2263961308556936344

`A000204(n+1)-A004695(n)`
-/

namespace A355325.P2263961308556936344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - A004695 n

end

end A355325.P2263961308556936344

namespace A355325

/-- `A000204(n+1)-A004695(n)` -/
def P2263961308556936344.Spec : Prop :=
  ∀ n, P2263961308556936344.a n = A355325 n

end A355325

/-! ## A355325.P18020574070539056908

`A173173(n)+A000045(n+2)`
-/

namespace A355325.P18020574070539056908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 n + A000045 (n + 2)

end

end A355325.P18020574070539056908

namespace A355325

/-- `A173173(n)+A000045(n+2)` -/
def P18020574070539056908.Spec : Prop :=
  ∀ n, P18020574070539056908.a n = A355325 n

end A355325

/-! ## A355325.P33423756052016518

`A173714(n)+A147997(n+2)`
-/

namespace A355325.P33423756052016518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173714 n + A147997 (n + 2)

end

end A355325.P33423756052016518

namespace A355325

/-- `A173714(n)+A147997(n+2)` -/
def P33423756052016518.Spec : Prop :=
  ∀ n, P33423756052016518.a n = A355325 n

end A355325

/-! ## A355325.P7546602686722698283

`A390350(n)-A201864(n+1)`
-/

namespace A355325.P7546602686722698283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390350 n - A201864 (n + 1)

end

end A355325.P7546602686722698283

namespace A355325

/-- `A390350(n)-A201864(n+1)` -/
def P7546602686722698283.Spec : Prop :=
  ∀ n, P7546602686722698283.a n = A355325 n

end A355325

/-! ## A355325.P12502948991513471204

`A000032(n+1)-floor(A000045(n)/2)`
-/

namespace A355325.P12502948991513471204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - ⌊(A000045 n : ℚ) / 2⌋

end

end A355325.P12502948991513471204

namespace A355325

/-- `A000032(n+1)-floor(A000045(n)/2)` -/
def P12502948991513471204.Spec : Prop :=
  ∀ n, P12502948991513471204.a n = A355325 n

end A355325

/-! ## A355325.P7477724668201119456

`A000045(n+2)+ceil(A000045(n)/2)`
-/

namespace A355325.P7477724668201119456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + ⌈(A000045 n : ℚ) / 2⌉

end

end A355325.P7477724668201119456

namespace A355325

/-- `A000045(n+2)+ceil(A000045(n)/2)` -/
def P7477724668201119456.Spec : Prop :=
  ∀ n, P7477724668201119456.a n = A355325 n

end A355325

/-! ## A355325.P8703469579335952882

`A173673(2*n+1)+A000045(n+2)`
-/

namespace A355325.P8703469579335952882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (2 * n + 1) + A000045 (n + 2)

end

end A355325.P8703469579335952882

namespace A355325

/-- `A173673(2*n+1)+A000045(n+2)` -/
def P8703469579335952882.Spec : Prop :=
  ∀ n, P8703469579335952882.a n = A355325 n

end A355325

/-! ## A355325.P11815010901879084114

`A173673(2*n+1)+A000071(n+2)+1`
-/

namespace A355325.P11815010901879084114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (2 * n + 1) + (A000071 (n + 2) + 1)

end

end A355325.P11815010901879084114

namespace A355325

/-- `A173673(2*n+1)+A000071(n+2)+1` -/
def P11815010901879084114.Spec : Prop :=
  ∀ n, P11815010901879084114.a n = A355325 n

end A355325

/-! ## A355325.P5500909481205085828

`A000032(n)-(A004695(n)-Δ[A000032(n)])`
-/

namespace A355325.P5500909481205085828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - (A004695 n - (f1 (n + 1) - f1 n))

end

end A355325.P5500909481205085828

namespace A355325

/-- `A000032(n)-(A004695(n)-Δ[A000032(n)])` -/
def P5500909481205085828.Spec : Prop :=
  ∀ n, P5500909481205085828.a n = A355325 n

end A355325

/-! ## A355325.P11246413141255329849

`A036605(n)-(A102283(n)+A004695(n+1))`
-/

namespace A355325.P11246413141255329849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036605 n - (A102283 n + A004695 (n + 1))

end

end A355325.P11246413141255329849

namespace A355325

/-- `A036605(n)-(A102283(n)+A004695(n+1))` -/
def P11246413141255329849.Spec : Prop :=
  ∀ n, P11246413141255329849.a n = A355325 n

end A355325

/-! ## A355325.P2229404345059038283

`floor(∑[a(n-1)+a(n-2)]/2)` with `a(0)=3, a(1)=3, a(2)=2`
-/

namespace A355325.P2229404345059038283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3, 2] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋

end

end A355325.P2229404345059038283

namespace A355325

/-- `floor(∑[a(n-1)+a(n-2)]/2)` -/
def P2229404345059038283.Spec : Prop :=
  ∀ n, P2229404345059038283.a n = A355325 n

end A355325

/-! ## A355325.P888018464645915235

`round(A001060(n)/2)`
-/

namespace A355325.P888018464645915235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001060 n : ℚ) / 2)

end

end A355325.P888018464645915235

namespace A355325

/-- `round(A001060(n)/2)` -/
def P888018464645915235.Spec : Prop :=
  ∀ n, P888018464645915235.a n = A355325 n

end A355325

/-!
# A355326: Determinant of the n X n matrix [(i-j)^3+d(i,j)]_{1<=i,j<=n}, where d(i,j) is 1 or 0 according as i = j or not.

The programs for A355326, there is no canonical definition to state claims against.
-/

/-! ## A355326.P11963291658654874668

`A319779(A027384(n))+1`
-/

namespace A355326.P11963291658654874668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319779 (A027384 n).toNat + 1

end

end A355326.P11963291658654874668

/-!
# A355327: Number of ways to tile a 2 X n board with squares and dominoes where vertical dominoes are only allowed in even-numbered locations.

The programs for A355327, the canonical program `A355327.P17739968427210948401` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355327 has offset 0).

The definition of A355327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355327.P17739968427210948401

`9*a(n-2)-7*a(n-4)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=10, a(4)=39, a(5)=83`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A355327

/-- `9*a(n-2)-7*a(n-4)+a(n-6)` -/
def P17739968427210948401.Spec : Prop :=
  ∀ n, P17739968427210948401.a n = A355327 n

theorem P17739968427210948401.correct : P17739968427210948401.Spec := by
  intro n
  simp only [A355327]

end A355327

/-! ## A355327.P4739722298475714839

`or(A002330(A128327(n)), A334655(n+1))`
-/

namespace A355327.P4739722298475714839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002330 (A128327 n).toNat) (A334655 (n + 1))

end

end A355327.P4739722298475714839

namespace A355327

/-- `or(A002330(A128327(n)), A334655(n+1))` -/
def P4739722298475714839.Spec : Prop :=
  ∀ n, P4739722298475714839.a n = A355327 n

end A355327

/-!
# A355328: Decimal expansion of the number whose binary expansion differs from its decimal expansion only in the first digit.

The programs for A355328, there is no canonical definition to state claims against.
-/

/-! ## A355328.P17113132698272377216

`A341334(2*A215366(n))`
-/

namespace A355328.P17113132698272377216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341334 (2 * A215366 n).toNat

end

end A355328.P17113132698272377216

/-! ## A355328.P9436030695871076233

`A266716(A379403(n+1)%A033149(2*(n+2)))`
-/

namespace A355328.P9436030695871076233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266716 (Int.tmod (A379403 (n + 1)) (A033149 (2 * (n + 2)))).toNat

end

end A355328.P9436030695871076233

/-! ## A355328.P11200093284548900130

`A030190(xor(A001248(n+1), A227551(3*(n+1))))`
-/

namespace A355328.P11200093284548900130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (Int.xor (A001248 (n + 1)) (A227551 (3 * (n + 1)))).toNat

end

end A355328.P11200093284548900130

/-! ## A355328.P11173602727017521532

`A189094(A282572(3*n+1)+A240556(2*(n+2))+1)`
-/

namespace A355328.P11173602727017521532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189094 (A282572 (3 * n + 1) + A240556 (2 * (n + 2)) + 1).toNat

end

end A355328.P11173602727017521532

/-! ## A355328.P12870231831002507255

`A316441(∑[A265067(n)])²`
-/

namespace A355328.P12870231831002507255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A355328.P12870231831002507255

/-!
# A355329: Least increasing sequence of primes such that a(n) - 1 is a multiple of 6*n.

The programs for A355329, there is no canonical definition to state claims against.
-/

/-! ## A355329.P5218220890686362254

`A007947(A370756(2*n+3)²)`
-/

namespace A355329.P5218220890686362254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A370756 (2 * n + 3) ^ 2).toNat

end

end A355329.P5218220890686362254

/-! ## A355329.P4250898429669132062

`A020639(A370756(2*n+3)²)`
-/

namespace A355329.P4250898429669132062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A370756 (2 * n + 3) ^ 2).toNat

end

end A355329.P4250898429669132062

/-! ## A355329.P11340664526057644326

`A006530(C(A370756(2*n+3), 2))`
-/

namespace A355329.P11340664526057644326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (A370756 (2 * n + 3)).toNat 2)

end

end A355329.P11340664526057644326

/-! ## A355329.P5501293118322439207

`filter[A370756(2*n+1), A377988(#)]`
-/

namespace A355329.P5501293118322439207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370756 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377988 (f1 j).toNat = 1) n)

end

end A355329.P5501293118322439207

/-! ## A355329.P2488141436149233225

`∩[A087685(n+1), A370756(n+1)]`
-/

namespace A355329.P2488141436149233225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355329.P2488141436149233225

/-!
# A355330: Numbers k such that A020696(2^k-1) < A020696(2^k+1).

The programs for A355330, there is no canonical definition to state claims against.
-/

/-! ## A355330.P4053954232622774615

`lt[A027642(n), A321477(2*n+1)]`
-/

namespace A355330.P4053954232622774615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321477 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355330.P4053954232622774615

/-! ## A355330.P1630535252175363622

`lt[A027642(n), A278818(A133500(n))]`
-/

namespace A355330.P1630535252175363622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278818 (A133500 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355330.P1630535252175363622

/-! ## A355330.P1233780587902330582

`lt[A074206(A032528(n)), A329449(2*n)]`
-/

namespace A355330.P1233780587902330582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A032528 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329449 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355330.P1233780587902330582

/-! ## A355330.P16104222790642977800

`lt[A065395(3*(n+1)), A334081(A030272(n+1))]`
-/

namespace A355330.P16104222790642977800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065395 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334081 (A030272 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355330.P16104222790642977800

/-! ## A355330.P3347688607954290269

`lt[Δ[A270143(n+2)], A065194(n+4)]`
-/

namespace A355330.P3347688607954290269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270143 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065194 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A355330.P3347688607954290269

/-!
# A355331: Numbers k that divide A020696(k).

The programs for A355331, the canonical program `A355331.P12013593539177747913` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355331 has offset 1).

The definition of A355331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355331.P12013593539177747913

`record[gcd(n+1, A020696(n+1))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A355331

/-- `record[gcd(n+1, A020696(n+1))]` -/
def P12013593539177747913.Spec : Prop :=
  ∀ n, (P12013593539177747913.a n : ℤ) = A355331 (n + 1)

theorem P12013593539177747913.correct : P12013593539177747913.Spec := by
  intro n
  simp only [A355331, Nat.add_sub_cancel]

end A355331

/-! ## A355331.P17170963628445507242

`A000120(A104350(n+1))*A051377(n+1)`
-/

namespace A355331.P17170963628445507242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A104350 (n + 1)).toNat * A051377 (n + 1)

end

end A355331.P17170963628445507242

namespace A355331

/-- `A000120(A104350(n+1))*A051377(n+1)` -/
def P17170963628445507242.Spec : Prop :=
  ∀ n, P17170963628445507242.a n = A355331 (n + 1)

end A355331

/-! ## A355331.P15671123094922111017

`record[A000010(A359361(n+2)+A049559(n+1))]`
-/

namespace A355331.P15671123094922111017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A359361 (n + 2) + A049559 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355331.P15671123094922111017

namespace A355331

/-- `record[A000010(A359361(n+2)+A049559(n+1))]` -/
def P15671123094922111017.Spec : Prop :=
  ∀ n, P15671123094922111017.a n = A355331 (n + 1)

end A355331

/-!
# A355335: Triangle read by rows: T(n,k) is the number of unlabeled connected graphs with n nodes and bipartite dimension (or biclique covering number) k, 0 <= k < n.

The programs for A355335, there is no canonical definition to state claims against.
-/

/-! ## A355335.P12697168566311204047

`A001221(ceil(cosh(A154344(n))))`
-/

namespace A355335.P12697168566311204047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ⌈Real.cosh (A154344 n : ℝ)⌉.toNat

end

end A355335.P12697168566311204047

/-! ## A355335.P9108333087829609069

`A210895(2*(n+1))%(A162663(n)+1)`
-/

namespace A355335.P9108333087829609069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210895 (2 * (n + 1))) (A162663 n + 1)

end

end A355335.P9108333087829609069

/-! ## A355335.P9221638064691117606

`A353846(n)+A184953(A239261(n))`
-/

namespace A355335.P9221638064691117606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 n + A184953 (A239261 n).toNat

end

end A355335.P9221638064691117606

/-! ## A355335.P8551947815390110203

`A072233(n)*A264034(A006882(n))`
-/

namespace A355335.P8551947815390110203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n * A264034 (A006882 n).toNat

end

end A355335.P8551947815390110203

/-! ## A355335.P6125618674665926098

`A069010(A244711(n)*A353846(n))`
-/

namespace A355335.P6125618674665926098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A244711 (n + 11) * A353846 n).toNat

end

end A355335.P6125618674665926098

/-!
# A355336: Number of unlabeled n-node graphs with the largest possible bipartite dimension (or biclique covering number).

The programs for A355336, there is no canonical definition to state claims against.
-/

/-! ## A355336.P1296613751118959342

`A355334(A082643(n+1))`
-/

namespace A355336.P1296613751118959342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355334 (A082643 (n + 1)).toNat

end

end A355336.P1296613751118959342

/-! ## A355336.P1768672755865556494

`A355334(A161511(n)+A005105(n+1))`
-/

namespace A355336.P1768672755865556494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355334 (A161511 n + A005105 (n + 1)).toNat

end

end A355336.P1768672755865556494

/-!
# A355337: Expansion of e.g.f.: exp(exp(x) + x^2 - 1).

The programs for A355337, there is no canonical definition to state claims against.
-/

/-! ## A355337.P3581784019529476607

`Δ[A105518(A150209(n+1))]`
-/

namespace A355337.P3581784019529476607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105518 (A150209 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A355337.P3581784019529476607

/-!
# A355340: a(0) = 0; for n >= 1, a(n) = a(n-1) XOR A001511(n), where XOR denotes bitwise exclusive-or (A003987) and A001511 is the binary ruler function.

The programs for A355340, the canonical program `A355340.P14945894853618665035` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355340 has offset 0).

The definition of A355340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355340.P14945894853618665035

`xor(val(n, 2)+1, a(n-1))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A355340

/-- `xor(val(n, 2)+1, a(n-1))` -/
def P14945894853618665035.Spec : Prop :=
  ∀ n, (P14945894853618665035.a n : ℤ) = A355340 n

theorem P14945894853618665035.correct : P14945894853618665035.Spec := by
  intro n
  simp only [A355340]

end A355340

/-! ## A355340.P2293567391260616698

`xor(val(2*n, 2), a(n-1))` with `a(0)=0`
-/

namespace A355340.P2293567391260616698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (SequenceMachineLib.valuation (2 * n) 2) (a (n - 1))

end

end A355340.P2293567391260616698

namespace A355340

/-- `xor(val(2*n, 2), a(n-1))` -/
def P2293567391260616698.Spec : Prop :=
  ∀ n, (P2293567391260616698.a n : ℤ) = A355340 n

end A355340

/-! ## A355340.P3545718236811636383

`xor(a(n-1), ∑{e}[xor(n, -n), #])` with `a(0)=0`
-/

namespace A355340.P3545718236811636383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (a (n - 1)) (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A355340.P3545718236811636383

namespace A355340

/-- `xor(a(n-1), ∑{e}[xor(n, -n), #])` -/
def P3545718236811636383.Spec : Prop :=
  ∀ n, (P3545718236811636383.a n : ℤ) = A355340 n

end A355340

/-! ## A355340.P786581980625266337

`xor(a(n-1), ∏{e}[xor(n, -n), #])` with `a(0)=0`
-/

namespace A355340.P786581980625266337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (a (n - 1)) (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A355340.P786581980625266337

namespace A355340

/-- `xor(a(n-1), ∏{e}[xor(n, -n), #])` -/
def P786581980625266337.Spec : Prop :=
  ∀ n, (P786581980625266337.a n : ℤ) = A355340 n

end A355340

/-! ## A355340.P972385747923354837

`A261283(A003188(n))`
-/

namespace A355340.P972385747923354837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261283 (A003188 n).toNat

end

end A355340.P972385747923354837

namespace A355340

/-- `A261283(A003188(n))` -/
def P972385747923354837.Spec : Prop :=
  ∀ n, P972385747923354837.a n = A355340 n

end A355340

/-! ## A355340.P17284724151980355421

`xor(A253315(n), A261283(n))`
-/

namespace A355340.P17284724151980355421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A253315 n) (A261283 n)

end

end A355340.P17284724151980355421

namespace A355340

/-- `xor(A253315(n), A261283(n))` -/
def P17284724151980355421.Spec : Prop :=
  ∀ n, P17284724151980355421.a n = A355340 n

end A355340

/-! ## A355340.P9309810173539779124

`A253315(xor(n, 2*n))`
-/

namespace A355340.P9309810173539779124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 (Nat.xor n (2 * n))

end

end A355340.P9309810173539779124

namespace A355340

/-- `A253315(xor(n, 2*n))` -/
def P9309810173539779124.Spec : Prop :=
  ∀ n, P9309810173539779124.a n = A355340 n

end A355340

/-! ## A355340.P16595904935805874930

`A253315(abs(xor(n, Δ[n²])))`
-/

namespace A355340.P16595904935805874930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 |Int.xor (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|.toNat

end

end A355340.P16595904935805874930

namespace A355340

/-- `A253315(abs(xor(n, Δ[n²])))` -/
def P16595904935805874930.Spec : Prop :=
  ∀ n, P16595904935805874930.a n = A355340 n

end A355340

/-! ## A355340.P2459834753673166453

`A253315(or(1, xor(n, Δ[n²])))`
-/

namespace A355340.P2459834753673166453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 (Int.lor 1 (Int.xor (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))).toNat

end

end A355340.P2459834753673166453

namespace A355340

/-- `A253315(or(1, xor(n, Δ[n²])))` -/
def P2459834753673166453.Spec : Prop :=
  ∀ n, P2459834753673166453.a n = A355340 n

end A355340

/-! ## A355340.P12183332056713562918

`A253315(A048724(n))`
-/

namespace A355340.P12183332056713562918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 (A048724 n).toNat

end

end A355340.P12183332056713562918

namespace A355340

/-- `A253315(A048724(n))` -/
def P12183332056713562918.Spec : Prop :=
  ∀ n, P12183332056713562918.a n = A355340 n

end A355340

/-! ## A355340.P6137496360316998797

`A253315(A065621(n+1))`
-/

namespace A355340.P6137496360316998797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 (A065621 (n + 1)).toNat

end

end A355340.P6137496360316998797

namespace A355340

/-- `A253315(A065621(n+1))` -/
def P6137496360316998797.Spec : Prop :=
  ∀ n, P6137496360316998797.a n = A355340 n

end A355340

/-! ## A355340.P9609678356683312245

`A253315(A003188(2*n))`
-/

namespace A355340.P9609678356683312245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 (A003188 (2 * n)).toNat

end

end A355340.P9609678356683312245

namespace A355340

/-- `A253315(A003188(2*n))` -/
def P9609678356683312245.Spec : Prop :=
  ∀ n, P9609678356683312245.a n = A355340 n

end A355340

/-! ## A355340.P12855985571397586038

`A253315(A003188(n)+A003188(n)+1)`
-/

namespace A355340.P12855985571397586038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253315 (A003188 n + (A003188 n + 1)).toNat

end

end A355340.P12855985571397586038

namespace A355340

/-- `A253315(A003188(n)+A003188(n)+1)` -/
def P12855985571397586038.Spec : Prop :=
  ∀ n, P12855985571397586038.a n = A355340 n

end A355340

/-! ## A355340.P18187835690884597618

`val(A284567(2*n), 2)`
-/

namespace A355340.P18187835690884597618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A284567 (2 * n)).toNat 2

end

end A355340.P18187835690884597618

namespace A355340

/-- `val(A284567(2*n), 2)` -/
def P18187835690884597618.Spec : Prop :=
  ∀ n, (P18187835690884597618.a n : ℤ) = A355340 n

end A355340

/-!
# A355341: G.f.: A(x) = Sum_{n=-oo..+oo} x^(n*(n+1)/2) * C(x)^n, where C(x) = 1 + x*C(x)^2 is the g.f. of the Catalan numbers (A000108).

The programs for A355341, the canonical program `A355341.P9670019332395498527` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355341 has offset 0).

The definition of A355341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355341.P12353014239413973418

`A244422(comp[record[A244418(n+1)]])`
-/

namespace A355341.P12353014239413973418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244418 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244422 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A355341.P12353014239413973418

namespace A355341

/-- `A244422(comp[record[A244418(n+1)]])` -/
def P12353014239413973418.Spec : Prop :=
  ∀ n, P12353014239413973418.a n = A355341 n

end A355341

/-! ## A355341.P9670019332395498527

`floor(A117362(A061579(n))+acot(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A355341

/-- `floor(A117362(A061579(n))+acot(n))` -/
def P9670019332395498527.Spec : Prop :=
  ∀ n, P9670019332395498527.a n = A355341 n

theorem P9670019332395498527.correct : P9670019332395498527.Spec := by
  intro n
  simp only [A355341]

end A355341

/-! ## A355341.P16418211847119253271

`A244422(lt[n, A143603(n+1)²])`
-/

namespace A355341.P16418211847119253271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143603 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A355341.P16418211847119253271

namespace A355341

/-- `A244422(lt[n, A143603(n+1)²])` -/
def P16418211847119253271.Spec : Prop :=
  ∀ n, P16418211847119253271.a n = A355341 n

end A355341

/-! ## A355341.P11014480360187408498

`A244422(comp[∑[n-1]]%A255179(n))`
-/

namespace A355341.P11014480360187408498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244422 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A255179 n)).toNat

end

end A355341.P11014480360187408498

namespace A355341

/-- `A244422(comp[∑[n-1]]%A255179(n))` -/
def P11014480360187408498.Spec : Prop :=
  ∀ n, P11014480360187408498.a n = A355341 n

end A355341

/-! ## A355341.P15436226080956558289

`A244422(lt[A124010(n+1), A143603(n+1)])`
-/

namespace A355341.P15436226080956558289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244422 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A355341.P15436226080956558289

namespace A355341

/-- `A244422(lt[A124010(n+1), A143603(n+1)])` -/
def P15436226080956558289.Spec : Prop :=
  ∀ n, P15436226080956558289.a n = A355341 n

end A355341

/-! ## A355341.P1429526802234350714

`A117362(A061579(n))+A035377(A098957(2*(n+1)))`
-/

namespace A355341.P1429526802234350714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117362 (A061579 n).toNat + A035377 (A098957 (2 * (n + 1))).toNat

end

end A355341.P1429526802234350714

namespace A355341

/-- `A117362(A061579(n))+A035377(A098957(2*(n+1)))` -/
def P1429526802234350714.Spec : Prop :=
  ∀ n, P1429526802234350714.a n = A355341 n

end A355341

/-! ## A355341.P2347485131608396852

`A117362(A061579(n))+(A001222(A265006(n+1))-1)^n`
-/

namespace A355341.P2347485131608396852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117362 (A061579 n).toNat + (A001222 (A265006 (n + 1)).toNat - 1) ^ n

end

end A355341.P2347485131608396852

namespace A355341

/-- `A117362(A061579(n))+(A001222(A265006(n+1))-1)^n` -/
def P2347485131608396852.Spec : Prop :=
  ∀ n, P2347485131608396852.a n = A355341 n

end A355341

/-!
# A355342: G.f.: A(x) = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n+1)/2) * C(x)^n, where C(x) = 1 + x*C(x)^2 is the g.f. of the Catalan numbers (A000108).

The programs for A355342, the canonical program `A355342.P6242898558751605481` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355342 has offset 0).

The definition of A355342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355342.P6242898558751605481

`A062157(A003056(n))*A355341(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A355342

/-- `A062157(A003056(n))*A355341(n)` -/
def P6242898558751605481.Spec : Prop :=
  ∀ n, P6242898558751605481.a n = A355342 n

theorem P6242898558751605481.correct : P6242898558751605481.Spec := by
  intro n
  simp only [A355342]

end A355342

/-! ## A355342.P244769948403200264

`A062157(A163357(n))*A355341(n)`
-/

namespace A355342.P244769948403200264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A163357 n).toNat * A355341 n

end

end A355342.P244769948403200264

namespace A355342

/-- `A062157(A163357(n))*A355341(n)` -/
def P244769948403200264.Spec : Prop :=
  ∀ n, P244769948403200264.a n = A355342 n

end A355342

/-! ## A355342.P9324513731520611854

`A062157(A002024(n+1)-1)*A355341(n)`
-/

namespace A355342.P9324513731520611854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A002024 (n + 1) - 1).toNat * A355341 n

end

end A355342.P9324513731520611854

namespace A355342

/-- `A062157(A002024(n+1)-1)*A355341(n)` -/
def P9324513731520611854.Spec : Prop :=
  ∀ n, P9324513731520611854.a n = A355342 n

end A355342

/-!
# A355347: a(n) = binomial(3*n+3,n) + binomial(3*n+2,n-1) for n >= 0.

The programs for A355347, the canonical program `A355347.P17583172323529427336` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355347 has offset 0).

The definition of A355347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355347.P17583172323529427336

`A165817(n+1)-A001764(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A355347

/-- `A165817(n+1)-A001764(n+1)` -/
def P17583172323529427336.Spec : Prop :=
  ∀ n, P17583172323529427336.a n = A355347 n

theorem P17583172323529427336.correct : P17583172323529427336.Spec := by
  intro n
  simp only [A355347]

end A355347

/-! ## A355347.P11245243479363531229

`A081204(2*n+1)-A001764(n+1)`
-/

namespace A355347.P11245243479363531229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081204 (2 * n + 1) - A001764 (n + 1)

end

end A355347.P11245243479363531229

namespace A355347

/-- `A081204(2*n+1)-A001764(n+1)` -/
def P11245243479363531229.Spec : Prop :=
  ∀ n, P11245243479363531229.a n = A355347 n

end A355347

/-! ## A355347.P15114007594973352288

`A099576(2*n+1)-A025174(n+1)`
-/

namespace A355347.P15114007594973352288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099576 (2 * n + 1) - A025174 (n + 1)

end

end A355347.P15114007594973352288

namespace A355347

/-- `A099576(2*n+1)-A025174(n+1)` -/
def P15114007594973352288.Spec : Prop :=
  ∀ n, P15114007594973352288.a n = A355347 n

end A355347

/-! ## A355347.P7649404946692175579

`A099576(2*n+1)-A127040(2*n)`
-/

namespace A355347.P7649404946692175579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099576 (2 * n + 1) - A127040 (2 * n)

end

end A355347.P7649404946692175579

namespace A355347

/-- `A099576(2*n+1)-A127040(2*n)` -/
def P7649404946692175579.Spec : Prop :=
  ∀ n, P7649404946692175579.a n = A355347 n

end A355347

/-! ## A355347.P9768962107502681070

`A099576(2*n+1)-A099578(2*n+1)`
-/

namespace A355347.P9768962107502681070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099576 (2 * n + 1) - A099578 (2 * n + 1)

end

end A355347.P9768962107502681070

namespace A355347

/-- `A099576(2*n+1)-A099578(2*n+1)` -/
def P9768962107502681070.Spec : Prop :=
  ∀ n, P9768962107502681070.a n = A355347 n

end A355347

/-! ## A355347.P3295204493125634328

`A045721(n)+A117671(n)-A001764(n+1)`
-/

namespace A355347.P3295204493125634328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045721 n + (A117671 n - A001764 (n + 1))

end

end A355347.P3295204493125634328

namespace A355347

/-- `A045721(n)+A117671(n)-A001764(n+1)` -/
def P3295204493125634328.Spec : Prop :=
  ∀ n, P3295204493125634328.a n = A355347 n

end A355347

/-! ## A355347.P14068757147244078316

`A004319(n+1)+A004319(n+1)-A025174(n+1)`
-/

namespace A355347.P14068757147244078316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004319 (n + 1) + (A004319 (n + 1) - A025174 (n + 1))

end

end A355347.P14068757147244078316

namespace A355347

/-- `A004319(n+1)+A004319(n+1)-A025174(n+1)` -/
def P14068757147244078316.Spec : Prop :=
  ∀ n, P14068757147244078316.a n = A355347 n

end A355347

/-! ## A355347.P1093292241077954600

`A025174(n+1)+A025174(n+1)-A001764(n+1)`
-/

namespace A355347.P1093292241077954600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025174 (n + 1) + (A025174 (n + 1) - A001764 (n + 1))

end

end A355347.P1093292241077954600

namespace A355347

/-- `A025174(n+1)+A025174(n+1)-A001764(n+1)` -/
def P1093292241077954600.Spec : Prop :=
  ∀ n, P1093292241077954600.a n = A355347 n

end A355347

/-! ## A355347.P6555103816596672520

`A052227(n+1)-A227726(n+1)`
-/

namespace A355347.P6555103816596672520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052227 (n + 1) - A227726 (n + 1)

end

end A355347.P6555103816596672520

namespace A355347

/-- `A052227(n+1)-A227726(n+1)` -/
def P6555103816596672520.Spec : Prop :=
  ∀ n, P6555103816596672520.a n = A355347 n

end A355347

/-! ## A355347.P6494611060157792875

`A001764(n+1)*A016813(n+1)-A227726(n+1)`
-/

namespace A355347.P6494611060157792875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 (n + 1) * A016813 (n + 1) - A227726 (n + 1)

end

end A355347.P6494611060157792875

namespace A355347

/-- `A001764(n+1)*A016813(n+1)-A227726(n+1)` -/
def P6494611060157792875.Spec : Prop :=
  ∀ n, P6494611060157792875.a n = A355347 n

end A355347

/-!
# A355349: G.f. A(x) satisfies: 2 = Sum_{n=-oo..+oo} (-x)^(n*(n-1)/2) * A(x)^(n^2).

The programs for A355349, there is no canonical definition to state claims against.
-/

/-! ## A355349.P9573374542784643357

`A051953((n+3)^n+n)+1`
-/

namespace A355349.P9573374542784643357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 ((n + 3) ^ n + n) + 1

end

end A355349.P9573374542784643357

/-!
# A355350: G.f. A(x,y) satisfies: x*y = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n+1)/2) * A(x,y)^n, with coefficients T(n,k) of x^n*y^k in A(x,y) given as a triangle read by rows.

The programs for A355350, there is no canonical definition to state claims against.
-/

/-! ## A355350.P10233876294509773737

`A329200(A140303(n)*A326474(n))`
-/

namespace A355350.P10233876294509773737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329200 (A140303 n * A326474 n).toNat

end

end A355350.P10233876294509773737

/-! ## A355350.P4791717530235000015

`A329200(lcm(A140303(n), A285824(n)))`
-/

namespace A355350.P4791717530235000015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329200 (Int.lcm (A140303 n) (A285824 n))

end

end A355350.P4791717530235000015

/-! ## A355350.P6453921403427800690

`A227789(A266042(n+2))+A056357(A063928(n+1))`
-/

namespace A355350.P6453921403427800690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227789 (A266042 (n + 2)).toNat + A056357 (A063928 (n + 1)).toNat

end

end A355350.P6453921403427800690

/-!
# A355351: G.f. A(x) satisfies: x = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n+1)/2) * A(x)^n.

The programs for A355351, there is no canonical definition to state claims against.
-/

/-! ## A355351.P4880093207487263138

`A326212(n)+A238010(A006252(n))`
-/

namespace A355351.P4880093207487263138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326212 n + A238010 (A006252 n).toNat

end

end A355351.P4880093207487263138

/-! ## A355351.P16345249980383948182

`A101402(xor(A270561(n), A353573(n)))`
-/

namespace A355351.P16345249980383948182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (Int.xor (A270561 n) (A353573 n)).toNat

end

end A355351.P16345249980383948182

/-!
# A355352: G.f. A(x) satisfies: 2*x = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n+1)/2) * A(x)^n.

The programs for A355352, there is no canonical definition to state claims against.
-/

/-! ## A355352.P15613090203209755084

`∑{d}[3*a(n-1)*a(n-1), gcd(n, #)]` with `a(0)=-1, a(1)=-2`
-/

namespace A355352.P15613090203209755084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, -2] fun n f1 =>
  3 * f1 (n - 1) * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.gcd n d

end

end A355352.P15613090203209755084

/-!
# A355353: G.f. A(x) satisfies: 3*x = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n+1)/2) * A(x)^n.

The programs for A355353, there is no canonical definition to state claims against.
-/

/-! ## A355353.P3627603996382254991

`A334543(a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A355353.P3627603996382254991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A334543 (a (n - 1)).toNat

end

end A355353.P3627603996382254991

/-!
# A355354: G.f. A(x) satisfies: 4*x = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n+1)/2) * A(x)^n.

The programs for A355354, there is no canonical definition to state claims against.
-/

/-! ## A355354.P11206606124173477085

`round(A065855(∑[∑[7^n+1]+n]+2)/2)`
-/

namespace A355354.P11206606124173477085
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A065855 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℚ) / 2)

end

end A355354.P11206606124173477085

/-!
# A355355: G.f. A(x) satisfies: 5*x = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n+1)/2) * A(x)^n.

The programs for A355355, there is no canonical definition to state claims against.
-/

/-! ## A355355.P5029396043234743971

`A049533(A172267(n)+A052203(n))`
-/

namespace A355355.P5029396043234743971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049533 (A172267 n + A052203 n).toNat

end

end A355355.P5029396043234743971

/-!
# A355356: G.f. A(x) satisfies: x^2 = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n+1)/2) * A(x)^n.

The programs for A355356, there is no canonical definition to state claims against.
-/

/-! ## A355356.P13858111106568586090

`A046155(A291090(n)-n)`
-/

namespace A355356.P13858111106568586090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A291090 n - (n : ℤ)).toNat

end

end A355356.P13858111106568586090

/-! ## A355356.P8196659137630963305

`A121854(n!)-A185363(n+1)`
-/

namespace A355356.P8196659137630963305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121854 (Nat.factorial n) - A185363 (n + 1)

end

end A355356.P8196659137630963305

/-! ## A355356.P14099801984437384225

`A001519(n)-A048766(A083858(n))`
-/

namespace A355356.P14099801984437384225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n - A048766 (A083858 n).toNat

end

end A355356.P14099801984437384225

/-!
# A355357: G.f. A(x) satisfies: x = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n+1)) * A(x)^n.

The programs for A355357, there is no canonical definition to state claims against.
-/

/-! ## A355357.P5541105027417045221

`A359720(∑[round(2*n/3)])`
-/

namespace A355357.P5541105027417045221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359720 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A355357.P5541105027417045221

/-! ## A355357.P6157200931150233441

`A178598(A051573(n))+A025430(n)`
-/

namespace A355357.P6157200931150233441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178598 (A051573 n).toNat + A025430 n

end

end A355357.P6157200931150233441

/-! ## A355357.P7917605909166424899

`A135661(A270913(n))+A070765(n+1)`
-/

namespace A355357.P7917605909166424899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A270913 n).toNat + A070765 (n + 1)

end

end A355357.P7917605909166424899

/-! ## A355357.P5214321570688533065

`A130867(n+1)-A001221(A052913(n))`
-/

namespace A355357.P5214321570688533065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130867 (n + 1) - A001221 (A052913 n).toNat

end

end A355357.P5214321570688533065

/-!
# A355359: Coefficients in the expansion of B(x) = 1 / Product_{n>=0} (1 - x^(13*n+2))*(1 - x^(13*n+5))*(1 - x^(13*n+6))*(1 - x^(13*n+7))*(1 - x^(13*n+8))*(1 - x^(13*n+11)).

The programs for A355359, there is no canonical definition to state claims against.
-/

/-! ## A355359.P4742463698751335868

`xor(A003106(n), A080339(A281732(n+4)))`
-/

namespace A355359.P4742463698751335868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003106 n) (A080339 (A281732 (n + 4)).toNat)

end

end A355359.P4742463698751335868

/-! ## A355359.P6468550417919519229

`A003106(n)-A010054(A333193(2*(n+1)))`
-/

namespace A355359.P6468550417919519229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n - A010054 (A333193 (2 * (n + 1))).toNat

end

end A355359.P6468550417919519229

/-! ## A355359.P7807401563265141295

`A255065(A255060(n+1))%A255048(3*n+1)`
-/

namespace A355359.P7807401563265141295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255065 (A255060 (n + 1)).toNat) (A255048 (3 * n + 1))

end

end A355359.P7807401563265141295

/-! ## A355359.P15065609845358294121

`A255065(A255060(n+1)%A255063(2*n+3))`
-/

namespace A355359.P15065609845358294121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255065 (Int.tmod (A255060 (n + 1)) (A255063 (2 * n + 3))).toNat

end

end A355359.P15065609845358294121

/-! ## A355359.P1540096721437321038

`A003106(n)-A102683(A192951(n))`
-/

namespace A355359.P1540096721437321038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n - A102683 (A192951 n).toNat

end

end A355359.P1540096721437321038

/-!
# A355361: G.f. A(x) satisfies: x*A(x) = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n+1)/2) * A(x)^n.

The programs for A355361, there is no canonical definition to state claims against.
-/

/-! ## A355361.P9313964371725954684

`A258025(or(A004273(n), A179405(n)))`
-/

namespace A355361.P9313964371725954684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258025 (Int.lor (A004273 n) (A179405 n)).toNat

end

end A355361.P9313964371725954684

/-!
# A355362: G.f. A(x) satisfies: 2*x*A(x) = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n+1)/2) * A(x)^n.

The programs for A355362, there is no canonical definition to state claims against.
-/

/-! ## A355362.P2776204150029758813

`A140106((n+1)*C(2*(2*n+1), n)/(2*n+1))+lcm(2, xor(n, -2))/2`
-/

namespace A355362.P2776204150029758813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140106 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((Nat.choose (2 * (2 * n + 1)) n : ℚ) / (2 * n + 1 : ℚ)))).toNat : ℚ) + (Int.lcm 2 (Int.xor (n : ℤ) (-2)) : ℚ) / 2

end

end A355362.P2776204150029758813

/-!
# A355363: G.f. A(x) satisfies: 3*x*A(x) = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n+1)/2) * A(x)^n.

The programs for A355363, there is no canonical definition to state claims against.
-/

/-! ## A355363.P8759475562488346304

`A242031(A002895(n))-n`
-/

namespace A355363.P8759475562488346304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242031 (A002895 n).toNat - (n : ℤ)

end

end A355363.P8759475562488346304

/-!
# A355364: G.f. A(x) satisfies: x^2*A(x) = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n+1)/2) * A(x)^n.

The programs for A355364, there is no canonical definition to state claims against.
-/

/-! ## A355364.P7469424363686904739

`A243412(n)-A349326(A331720(n))`
-/

namespace A355364.P7469424363686904739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243412 n - A349326 (A331720 n).toNat

end

end A355364.P7469424363686904739

/-! ## A355364.P15082127589309027942

`A003056(A338914(n²))`
-/

namespace A355364.P15082127589309027942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A338914 (n ^ 2)).toNat

end

end A355364.P15082127589309027942

/-! ## A355364.P17025441607335358234

`A002487(A005130(n)-A002487(n))`
-/

namespace A355364.P17025441607335358234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A005130 n - A002487 n).toNat

end

end A355364.P17025441607335358234

/-!
# A355365: Central terms of A355360; a(n) = A355360(2*n,n).

The programs for A355365, there is no canonical definition to state claims against.
-/

/-! ## A355365.P4469793324534701732

`A355360(∑[4*n])`
-/

namespace A355365.P4469793324534701732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355360 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A355365.P4469793324534701732

/-! ## A355365.P13410008223425915142

`abs(1-A355360(A046092(n)))+1`
-/

namespace A355365.P13410008223425915142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A355360 (A046092 n).toNat| + 1

end

end A355365.P13410008223425915142

/-! ## A355365.P10881208722220410324

`A355360(A046092(n))+A151878(n+1)`
-/

namespace A355365.P10881208722220410324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355360 (A046092 n).toNat + A151878 (n + 1)

end

end A355365.P10881208722220410324

/-! ## A355365.P117455520852594188

`A355360(A046092(n))%A354645(3*(n+1))`
-/

namespace A355365.P117455520852594188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355360 (A046092 n).toNat) (A354645 (3 * (n + 1)))

end

end A355365.P117455520852594188

/-! ## A355365.P17655268467334184782

`A355360(A046092(n))-A267148((n+1)²%(n+1))+1`
-/

namespace A355365.P17655268467334184782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355360 (A046092 n).toNat - A267148 ((n + 1) ^ 2 % (n + 1)) + 1

end

end A355365.P17655268467334184782

/-! ## A355365.P16313643868961800623

`A355360(A046092(n))+A158465(A236378(n)+1)`
-/

namespace A355365.P16313643868961800623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355360 (A046092 n).toNat + A158465 (A236378 n + 1).toNat

end

end A355365.P16313643868961800623

/-!
# A355366: Maximal GCD of five positive integers with sum n.

The programs for A355366, there is no canonical definition to state claims against.
-/

/-! ## A355366.P5067859561780131874

`gcd(A055640(A100886(n+1)), A127421(n+1))`
-/

namespace A355366.P5067859561780131874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055640 (A100886 (n + 1)).toNat) (A127421 (n + 1))

end

end A355366.P5067859561780131874

/-! ## A355366.P9829384652350508502

`gcd(A257297(A161831(n+1)), A382749(n+5))`
-/

namespace A355366.P9829384652350508502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A257297 (A161831 (n + 1)).toNat) (A382749 (n + 5))

end

end A355366.P9829384652350508502

/-! ## A355366.P6138993999771281045

`gcd(n+5, A001227(A173819(n+1)))`
-/

namespace A355366.P6138993999771281045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 5 : ℤ) (A001227 (A173819 (n + 1)).toNat)

end

end A355366.P6138993999771281045

/-! ## A355366.P11507747031804733633

`gcd(A115623(A358836(n)), A304588(n+5))`
-/

namespace A355366.P11507747031804733633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115623 (A358836 n).toNat) (A304588 (n + 5))

end

end A355366.P11507747031804733633

/-! ## A355366.P14447171190626441778

`gcd(A160412(n+1), A355032(A056371(n+1)))`
-/

namespace A355366.P14447171190626441778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A160412 (n + 1)) (A355032 (A056371 (n + 1)).toNat)

end

end A355366.P14447171190626441778

/-!
# A355367: Maximal LCM of six positive integers with sum n.

The programs for A355367, there is no canonical definition to state claims against.
-/

/-! ## A355367.P11589155880438871147

`A181845(A052905(n+3))`
-/

namespace A355367.P11589155880438871147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181845 (A052905 (n + 3)).toNat

end

end A355367.P11589155880438871147

/-! ## A355367.P10140454739986490734

`A181845(A155212(n+2)+3)`
-/

namespace A355367.P10140454739986490734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181845 (A155212 (n + 2) + 3).toNat

end

end A355367.P10140454739986490734

/-! ## A355367.P11509682725730488227

`A355403(n+7)%A002764(n)`
-/

namespace A355367.P11509682725730488227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355403 (n + 7)) (A002764 n)

end

end A355367.P11509682725730488227

/-! ## A355367.P16143214260090547513

`and(A355403(n+7), A359082(n+1))`
-/

namespace A355367.P16143214260090547513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A355403 (n + 7)) (A359082 (n + 1))

end

end A355367.P16143214260090547513

/-! ## A355367.P17489741732364133426

`A355403(n+7)+A000007(A239103(n))`
-/

namespace A355367.P17489741732364133426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355403 (n + 7) + A000007 (A239103 n).toNat

end

end A355367.P17489741732364133426

/-!
# A355368: Maximal GCD of six positive integers with sum n.

The programs for A355368, there is no canonical definition to state claims against.
-/

/-! ## A355368.P13099226222229017632

`gcd(n+6, A055640(A000045(n+1)))`
-/

namespace A355368.P13099226222229017632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 6 : ℤ) (A055640 (A000045 (n + 1)).toNat)

end

end A355368.P13099226222229017632

/-! ## A355368.P14466309258178024728

`or(A000035(n), A008672(∑{e}[2^n-1, #]))`
-/

namespace A355368.P14466309258178024728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A008672 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p))

end

end A355368.P14466309258178024728

/-! ## A355368.P3347708727081711856

`or(A032245(∑{e}[2^n-1, #]), A036987(n))`
-/

namespace A355368.P3347708727081711856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032245 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)) (A036987 n)

end

end A355368.P3347708727081711856

/-! ## A355368.P9999255799244424083

`or(A000035(n), A318403(∑{e}[2^n-1, #]))`
-/

namespace A355368.P9999255799244424083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A318403 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p))

end

end A355368.P9999255799244424083

/-! ## A355368.P5315957625008697745

`or(1-A195054(∑{e}[2^n-1, #]+4), A036987(n))`
-/

namespace A355368.P5315957625008697745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (1 - A195054 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 4)) (A036987 n)

end

end A355368.P5315957625008697745

/-!
# A355371: Intersection of A000330 and A086849.

The programs for A355371, there is no canonical definition to state claims against.
-/

/-! ## A355371.P3905276401684637407

`∩[A086849(n+1), A000330(n)]`
-/

namespace A355371.P3905276401684637407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A355371.P3905276401684637407

/-!
# A355372: Expansion of the e.g.f. log((1 - x) / (1 - 2*x)) / (1 - x)^3.

The programs for A355372, the canonical program `A355372.P9232671729732579896` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355372 has offset 0).

The definition of A355372 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355372.P9232671729732579896

`3*n*a(n-1)-2*(n²-1)*a(n-2)+(n+1)!/2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A355372

/-- `3*n*a(n-1)-2*(n²-1)*a(n-2)+(n+1)!/2` -/
def P9232671729732579896.Spec : Prop :=
  ∀ n, P9232671729732579896.a n = (A355372 n : ℚ)

end A355372

/-! ## A355372.P15089620479168324759

`A355171(n+1)-A307663(n+1)`
-/

namespace A355372.P15089620479168324759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355171 (n + 1) - A307663 (n + 1)

end

end A355372.P15089620479168324759

namespace A355372

/-- `A355171(n+1)-A307663(n+1)` -/
def P15089620479168324759.Spec : Prop :=
  ∀ n, P15089620479168324759.a n = A355372 n

end A355372

/-! ## A355372.P18009494454909971175

`A355257(eq[3, A025581(n)])`
-/

namespace A355372.P18009494454909971175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A355372.P18009494454909971175

namespace A355372

/-- `A355257(eq[3, A025581(n)])` -/
def P18009494454909971175.Spec : Prop :=
  ∀ n, P18009494454909971175.a n = A355372 n

end A355372

/-!
# A355373: a(n) = Sum_{k=0..n} k! * (-1)^k * n^(n-k) * Stirling2(n,k).

The programs for A355373, there is no canonical definition to state claims against.
-/

/-! ## A355373.P1460973363333998615

`A194517(A266326(n)+A124564(n))`
-/

namespace A355373.P1460973363333998615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194517 (A266326 n + A124564 n).toNat

end

end A355373.P1460973363333998615

/-! ## A355373.P11609292756368534805

`A053871(n)-A289677(A061954(n+1))`
-/

namespace A355373.P11609292756368534805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053871 n - A289677 (A061954 (n + 1)).toNat

end

end A355373.P11609292756368534805

/-!
# A355376: a(n) = Sum_{k=0..n} k! * (-k)^(n-k) * Stirling2(n,k).

The programs for A355376, there is no canonical definition to state claims against.
-/

/-! ## A355376.P774870264539246499

`A190585(n+1)+A185255(n²+6)`
-/

namespace A355376.P774870264539246499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190585 (n + 1) + A185255 (n ^ 2 + 6)

end

end A355376.P774870264539246499

/-!
# A355378: Expansion of e.g.f. exp(exp(3*x) - exp(x)).

The programs for A355378, there is no canonical definition to state claims against.
-/

/-! ## A355378.P4543096467341215450

`A337637(A257633(n)+A006068(n))`
-/

namespace A355378.P4543096467341215450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337637 (A257633 n + A006068 n).toNat

end

end A355378.P4543096467341215450

/-!
# A355379: Expansion of e.g.f. exp(exp(3*x) + exp(x) - 2).

The programs for A355379, there is no canonical definition to state claims against.
-/

/-! ## A355379.P7198143152927006006

`A285402(A047855(n))-2`
-/

namespace A355379.P7198143152927006006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285402 (A047855 n).toNat - 2

end

end A355379.P7198143152927006006

/-!
# A355380: Expansion of e.g.f. exp(exp(3*x) + exp(2*x) - 2).

The programs for A355380, there is no canonical definition to state claims against.
-/

/-! ## A355380.P7169476358741490443

`A284902(A213096(n)*A342494(2*n+1))`
-/

namespace A355380.P7169476358741490443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284902 (A213096 n * A342494 (2 * n + 1)).toNat

end

end A355380.P7169476358741490443

/-!
# A355381: Expansion of e.g.f. exp(exp(3*x) - exp(2*x)).

The programs for A355381, there is no canonical definition to state claims against.
-/

/-! ## A355381.P3116999098346360517

`A008619((3*n+2)*a(n-1)+3)` with `a(0)=1, a(1)=1`
-/

namespace A355381.P3116999098346360517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A008619 ((3 * n + 2 : ℤ) * a (n - 1) + 3).toNat

end

end A355381.P3116999098346360517

/-! ## A355381.P16040753589627796260

`A262676(A143165(n))+A213101(n)`
-/

namespace A355381.P16040753589627796260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262676 (A143165 n).toNat + A213101 n

end

end A355381.P16040753589627796260

/-!
# A355382: Number of divisors d of n such that bigomega(d) = omega(n).

The programs for A355382, there is no canonical definition to state claims against.
-/

/-! ## A355382.P7333882930673997982

`floor(sqrt(A335460(n+1)))+1`
-/

namespace A355382.P7333882930673997982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A335460 (n + 1)) + 1

end

end A355382.P7333882930673997982

/-! ## A355382.P751179360759852027

`ceil(log2(A304779(n+1)+1))`
-/

namespace A355382.P751179360759852027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A304779 (n + 1) + 1 : ℝ)⌉

end

end A355382.P751179360759852027

/-! ## A355382.P3943501643198345899

`floor(A056674(n+1)/sqrt(2))+1`
-/

namespace A355382.P3943501643198345899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056674 (n + 1) : ℝ) / Real.sqrt (2 : ℝ)⌋ + 1

end

end A355382.P3943501643198345899

/-! ## A355382.P11041546514967734377

`∑{e}[∏{p}[A335487(n+1), #], #]+1`
-/

namespace A355382.P11041546514967734377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335487 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1

end

end A355382.P11041546514967734377

/-! ## A355382.P6579976488605667594

`∏{p}[A079714(∏{e}[n+1, C(#+2, 2)]), #]`
-/

namespace A355382.P6579976488605667594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079714 (∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (Nat.factorization (f2 n) p + 2) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A355382.P6579976488605667594

/-! ## A355382.P4534260941344521299

`A000523((∑{e}[n+1, #]!/∏{e}[n+1, #!])%∑{e}[n+1, #]!+2)`
-/

namespace A355382.P4534260941344521299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (Int.tmod (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ))) (Nat.factorial (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p) : ℤ) + 2).toNat

end

end A355382.P4534260941344521299

/-! ## A355382.P4991292174555461054

`A003558(A056674(n+1))`
-/

namespace A355382.P4991292174555461054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A056674 (n + 1)).toNat

end

end A355382.P4991292174555461054

/-! ## A355382.P8393465565791643904

`A039996(A073184(n+1))`
-/

namespace A355382.P8393465565791643904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (A073184 (n + 1)).toNat

end

end A355382.P8393465565791643904

/-! ## A355382.P4018131481015951111

`A008480(A191278(n+1))`
-/

namespace A355382.P4018131481015951111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A191278 (n + 1)).toNat

end

end A355382.P4018131481015951111

/-! ## A355382.P6052093164550869678

`A071215(A179926(n+1))`
-/

namespace A355382.P6052093164550869678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071215 (A179926 (n + 1)).toNat

end

end A355382.P6052093164550869678

/-!
# A355383: Number of pairs (y, v), where y is a partition of n and v is a sub-multiset of y whose cardinality equals the number of distinct parts in y.

The programs for A355383, there is no canonical definition to state claims against.
-/

/-! ## A355383.P14667056445657587668

`A117332(A018141(n))`
-/

namespace A355383.P14667056445657587668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117332 (A018141 n).toNat

end

end A355383.P14667056445657587668

/-! ## A355383.P17775999790981123904

`A178786(A242823(n))`
-/

namespace A355383.P17775999790981123904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A242823 n).toNat

end

end A355383.P17775999790981123904

/-! ## A355383.P7961012860082436104

`A128557(A216198(n+2))`
-/

namespace A355383.P7961012860082436104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128557 (A216198 (n + 2)).toNat

end

end A355383.P7961012860082436104

/-! ## A355383.P6945516905806521742

`A137735(A266941(n)-1)`
-/

namespace A355383.P6945516905806521742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A266941 n - 1).toNat

end

end A355383.P6945516905806521742

/-! ## A355383.P18080767219552277522

`A137735(xor(1, A266941(n)))`
-/

namespace A355383.P18080767219552277522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (Int.xor 1 (A266941 n)).toNat

end

end A355383.P18080767219552277522

/-!
# A355384: Number of pairs (y, v) where y is a composition of n and v is a (not necessarily contiguous) subsequence of y whose length equals the number of distinct parts in y.

The programs for A355384, there is no canonical definition to state claims against.
-/

/-! ## A355384.P2768627284226189331

`A147680(A330458(n+1))`
-/

namespace A355384.P2768627284226189331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147680 (A330458 (n + 1)).toNat

end

end A355384.P2768627284226189331

/-! ## A355384.P17714603660643183730

`A028234(2*n+1)+A179834(A000081(n+1))-1`
-/

namespace A355384.P17714603660643183730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * n + 1) + (A179834 (A000081 (n + 1)).toNat - 1)

end

end A355384.P17714603660643183730

/-!
# A355385: Number of pairs (y, v) of integer partitions of n where the length of v equals the number of distinct parts in y.

The programs for A355385, there is no canonical definition to state claims against.
-/

/-! ## A355385.P15302608054378573344

`A005041(A148521(n))`
-/

namespace A355385.P15302608054378573344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A148521 n).toNat

end

end A355385.P15302608054378573344

/-! ## A355385.P821218915436081057

`or(A005041(A007463(n)), A304482(n))`
-/

namespace A355385.P821218915436081057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005041 (A007463 n).toNat) (A304482 n)

end

end A355385.P821218915436081057

/-! ## A355385.P6633496369610639503

`A067085(A232665(n))`
-/

namespace A355385.P6633496369610639503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067085 (A232665 n).toNat

end

end A355385.P6633496369610639503

/-! ## A355385.P1287955337258703610

`A089911(A007111(n))+A001405(n)`
-/

namespace A355385.P1287955337258703610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089911 (A007111 n).toNat + A001405 n

end

end A355385.P1287955337258703610

/-!
# A355386: Position of first appearance of n in A355382, where A355382(m) = number of divisors d of m such that bigomega(d) = omega(m); or a(n) = -1 if n does not appear in A355382.

The programs for A355386, there is no canonical definition to state claims against.
-/

/-! ## A355386.P11802109673325243296

`A004778(A032551(n+1)+A000720(2*(n+1)))`
-/

namespace A355386.P11802109673325243296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004778 (A032551 (n + 1) + A000720 (2 * (n + 1))).toNat

end

end A355386.P11802109673325243296

/-! ## A355386.P15589943273167259625

`filter[A181804(2*n+1), A318963(#)]`
-/

namespace A355386.P15589943273167259625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181804 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A318963 (f1 j).toNat = 1) n)

end

end A355386.P15589943273167259625

/-! ## A355386.P5317107219675678634

`A325767(eq[A000700(n), A286469(n+1)])`
-/

namespace A355386.P5317107219675678634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325767 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A355386.P5317107219675678634

/-!
# A355387: Number of ways to choose a distinct subsequence of an integer composition of n.

The programs for A355387, there is no canonical definition to state claims against.
-/

/-! ## A355387.P13057087021226780697

`∑[A002266(A022095(2*n))]+1`
-/

namespace A355387.P13057087021226780697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A022095 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A355387.P13057087021226780697

/-! ## A355387.P6050320989267130456

`A342522(round(2^(n-1)))+A096140(n)`
-/

namespace A355387.P6050320989267130456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342522 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat + A096140 n

end

end A355387.P6050320989267130456

/-! ## A355387.P11071600579394147353

`A248227(A000045(2*(n+1))-floor(n/2))`
-/

namespace A355387.P11071600579394147353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A000045 (2 * (n + 1)) - ⌊(n : ℚ) / 2⌋).toNat

end

end A355387.P11071600579394147353

/-! ## A355387.P12093689157153722726

`A371726(n+2)+A356874(A006516(n))`
-/

namespace A355387.P12093689157153722726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371726 (n + 2) + A356874 (A006516 n).toNat

end

end A355387.P12093689157153722726

/-!
# A355388: Number of composable pairs (y, v) of integer compositions of n, where a composition is regarded as an arrow from the number of parts to the number of distinct parts.

The programs for A355388, there is no canonical definition to state claims against.
-/

/-! ## A355388.P12370901379919851315

`A173666(A226455(n))`
-/

namespace A355388.P12370901379919851315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173666 (A226455 n).toNat

end

end A355388.P12370901379919851315

/-! ## A355388.P128927083649468076

`A343238(A182053(n))`
-/

namespace A355388.P128927083649468076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343238 (A182053 n).toNat

end

end A355388.P128927083649468076

/-! ## A355388.P9950360194460180108

`A343238(A192400(n))`
-/

namespace A355388.P9950360194460180108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343238 (A192400 n).toNat

end

end A355388.P9950360194460180108

/-!
# A355389: Number of unordered pairs of distinct integer partitions of n.

The programs for A355389, there is no canonical definition to state claims against.
-/

/-! ## A355389.P10247603699120714918

`A355390(n)/2`
-/

namespace A355389.P10247603699120714918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355390 n : ℚ) / 2

end

end A355389.P10247603699120714918

/-! ## A355389.P10640423081835891554

`C(A000041(n), 2)`
-/

namespace A355389.P10640423081835891554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000041 n).toNat 2

end

end A355389.P10640423081835891554

/-! ## A355389.P13698634178898768706

`A086737(n)-A000041(n)`
-/

namespace A355389.P13698634178898768706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086737 n - A000041 n

end

end A355389.P13698634178898768706

/-! ## A355389.P10001169386170709974

`A000041(n)/2*A000065(n)`
-/

namespace A355389.P10001169386170709974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n : ℚ) / 2 * (A000065 n : ℚ)

end

end A355389.P10001169386170709974

/-! ## A355389.P5560200800123685914

`A001255(n)-A086737(n)`
-/

namespace A355389.P5560200800123685914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 n - A086737 n

end

end A355389.P5560200800123685914

/-! ## A355389.P9875823454675400545

`(A001255(n)-A000041(n))/2`
-/

namespace A355389.P9875823454675400545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001255 n - A000041 n : ℚ) / 2

end

end A355389.P9875823454675400545

/-! ## A355389.P13968768047435913787

`C(∑[A002865(n)], 2)`
-/

namespace A355389.P13968768047435913787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A355389.P13968768047435913787

/-! ## A355389.P7860213811339778661

`C(A000065(n)+1, 2)`
-/

namespace A355389.P7860213811339778661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000065 n + 1).toNat 2

end

end A355389.P7860213811339778661

/-! ## A355389.P6048112421999635918

`C(A035363(2*n), 2)`
-/

namespace A355389.P6048112421999635918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A035363 (2 * n)).toNat 2

end

end A355389.P6048112421999635918

/-! ## A355389.P8363643440833123978

`C(A119620(2*n), 2)`
-/

namespace A355389.P8363643440833123978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119620 (2 * n)).toNat 2

end

end A355389.P8363643440833123978

/-! ## A355389.P18066543138149101135

`C(A139582(n)/2, 2)`
-/

namespace A355389.P18066543138149101135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A139582 n : ℚ) / 2)).toNat 2

end

end A355389.P18066543138149101135

/-! ## A355389.P17126340060226228456

`C(A133041(n)-n, 2)`
-/

namespace A355389.P17126340060226228456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A133041 n - (n : ℤ)).toNat 2

end

end A355389.P17126340060226228456

/-! ## A355389.P11240447692562196969

`C(A027193(n)+A027187(n), 2)`
-/

namespace A355389.P11240447692562196969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A027193 n + A027187 n).toNat 2

end

end A355389.P11240447692562196969

/-! ## A355389.P9234793236716806177

`C(A239262(n)+A239260(n), 2)`
-/

namespace A355389.P9234793236716806177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A239262 n + A239260 n).toNat 2

end

end A355389.P9234793236716806177

/-! ## A355389.P1511793262831482095

`C(A168015(n)-A168014(n), 2)`
-/

namespace A355389.P1511793262831482095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A168015 n - A168014 n).toNat 2

end

end A355389.P1511793262831482095

/-! ## A355389.P12470569954054900666

`C(A100824(2*n), 2)`
-/

namespace A355389.P12470569954054900666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A100824 (2 * n)).toNat 2

end

end A355389.P12470569954054900666

/-!
# A355390: Number of ordered pairs of distinct integer partitions of n.

The programs for A355390, there is no canonical definition to state claims against.
-/

/-! ## A355390.P11413615573806593027

`2*A355389(n)`
-/

namespace A355390.P11413615573806593027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A355389 n

end

end A355390.P11413615573806593027

/-! ## A355390.P2368377743640674380

`2*C(A000041(n), 2)`
-/

namespace A355390.P2368377743640674380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A000041 n).toNat 2

end

end A355390.P2368377743640674380

/-! ## A355390.P12520831430143291037

`A001255(n)-A000041(n)`
-/

namespace A355390.P12520831430143291037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 n - A000041 n

end

end A355390.P12520831430143291037

/-! ## A355390.P5190830685204221986

`A000041(n)*A000065(n)`
-/

namespace A355390.P5190830685204221986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A000065 n

end

end A355390.P5190830685204221986

/-! ## A355390.P15190939935599297417

`∑[A002865(n)]*A000065(n)`
-/

namespace A355390.P15190939935599297417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000065 n

end

end A355390.P15190939935599297417

/-! ## A355390.P11723915013923550546

`A001255(n)-(A000065(n)+1)`
-/

namespace A355390.P11723915013923550546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 n - (A000065 n + 1)

end

end A355390.P11723915013923550546

/-! ## A355390.P15410014158610381742

`A001255(n)-A035363(2*n)`
-/

namespace A355390.P15410014158610381742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 n - A035363 (2 * n)

end

end A355390.P15410014158610381742

/-! ## A355390.P13608621452270369867

`2*(A086737(n)-A000041(n))`
-/

namespace A355390.P13608621452270369867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A086737 n - A000041 n)

end

end A355390.P13608621452270369867

/-! ## A355390.P12242710507622862227

`2*(A001255(n)-A086737(n))`
-/

namespace A355390.P12242710507622862227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001255 n - A086737 n)

end

end A355390.P12242710507622862227

/-! ## A355390.P18194392928122367491

`A001255(n)-A119620(2*n)`
-/

namespace A355390.P18194392928122367491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 n - A119620 (2 * n)

end

end A355390.P18194392928122367491

/-! ## A355390.P2981033106237477161

`A000065(n)*A035363(2*n)`
-/

namespace A355390.P2981033106237477161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n * A035363 (2 * n)

end

end A355390.P2981033106237477161

/-! ## A355390.P3497153220821526364

`A000065(n)*A119620(2*n)`
-/

namespace A355390.P3497153220821526364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n * A119620 (2 * n)

end

end A355390.P3497153220821526364

/-! ## A355390.P16817680407482610937

`A000065(n)/2*A139582(n)`
-/

namespace A355390.P16817680407482610937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000065 n : ℚ) / 2 * (A139582 n : ℚ)

end

end A355390.P16817680407482610937

/-! ## A355390.P4118600745811703524

`A001255(n)+n-A133041(n)`
-/

namespace A355390.P4118600745811703524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 n + ((n : ℤ) - A133041 n)

end

end A355390.P4118600745811703524

/-! ## A355390.P7681591351937232945

`A000041(n)²-∑[A002865(n)]`
-/

namespace A355390.P7681591351937232945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355390.P7681591351937232945

/-! ## A355390.P3863983691567902721

`A035363(2*n)²-A119620(2*n)`
-/

namespace A355390.P3863983691567902721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) ^ 2 - A119620 (2 * n)

end

end A355390.P3863983691567902721

/-! ## A355390.P18163775286202528282

`A119620(2*n+1)²-A119620(2*n)`
-/

namespace A355390.P18163775286202528282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n + 1) ^ 2 - A119620 (2 * n)

end

end A355390.P18163775286202528282

/-! ## A355390.P9443052681351841182

`A000041(n)²-A000041(A028310(n))`
-/

namespace A355390.P9443052681351841182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n ^ 2 - A000041 (A028310 n).toNat

end

end A355390.P9443052681351841182

/-! ## A355390.P9708515142262602161

`A086737(n)+A355389(n)-A000041(n)`
-/

namespace A355390.P9708515142262602161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086737 n + (A355389 n - A000041 n)

end

end A355390.P9708515142262602161

/-! ## A355390.P17110904943310874288

`A001255(n)+A355389(n)-A086737(n)`
-/

namespace A355390.P17110904943310874288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 n + (A355389 n - A086737 n)

end

end A355390.P17110904943310874288

/-!
# A355391: Position of first appearance of n in A181591 = binomial(bigomega(n), omega(n)).

The programs for A355391, there is no canonical definition to state claims against.
-/

/-! ## A355391.P11733317950174888552

`A034444(n+1)*A343721(A275468(2^n))`
-/

namespace A355391.P11733317950174888552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A343721 (A275468 (2 ^ n)).toNat

end

end A355391.P11733317950174888552

/-! ## A355391.P12055454961199252792

`A161655(A090633(n+1))`
-/

namespace A355391.P12055454961199252792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161655 (A090633 (n + 1)).toNat

end

end A355391.P12055454961199252792

/-! ## A355391.P5711394470268013061

`A000225(A076511(n+1))+∏{p}[∑[2^n]², #]`
-/

namespace A355391.P5711394470268013061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A076511 (n + 1)).toNat + ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A355391.P5711394470268013061

/-! ## A355391.P10241638612234370182

`A175181(A000079(n+1)-char[∏{p}[n+1, -#]-1])`
-/

namespace A355391.P10241638612234370182
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ)) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175181 (A000079 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A355391.P10241638612234370182

/-! ## A355391.P16705498942256475450

`A046055(n+1)-A194804(A322379(n))`
-/

namespace A355391.P16705498942256475450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046055 (n + 1) - A194804 (A322379 n).toNat

end

end A355391.P16705498942256475450

/-!
# A355392: Sorted positions of first appearances in A181591 = binomial(bigomega(n), omega(n)).

The programs for A355392, there is no canonical definition to state claims against.
-/

/-! ## A355392.P5784953557432537127

`record[A355391(A181591(n+1))]`
-/

namespace A355392.P5784953557432537127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355391 (A181591 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355392.P5784953557432537127

/-! ## A355392.P14779742934533115422

`A131883(∑[∑[A196170(n+1)]])`
-/

namespace A355392.P14779742934533115422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196170 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131883 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A355392.P14779742934533115422

/-! ## A355392.P8075248476595286349

`record[A276680(A088232(n+1)²)]`
-/

namespace A355392.P8075248476595286349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276680 (A088232 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355392.P8075248476595286349

/-! ## A355392.P15618651946532410103

`record[and(A229242(n+1), A297567(n))]`
-/

namespace A355392.P15618651946532410103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A229242 (n + 1)) (A297567 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355392.P15618651946532410103

/-! ## A355392.P11156104605405218369

`record[A323506(A292787(2*(n+2))-3)]`
-/

namespace A355392.P11156104605405218369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323506 (A292787 (2 * (n + 2)) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355392.P11156104605405218369

/-!
# A355393: Number of integer partitions of n such that, for all parts x of multiplicity 1, either x - 1 or x + 1 is also a part.

The programs for A355393, there is no canonical definition to state claims against.
-/

/-! ## A355393.P4196154948917955333

`A000041(n)-A356235(n)`
-/

namespace A355393.P4196154948917955333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A356235 n

end

end A355393.P4196154948917955333

/-! ## A355393.P2656999449141965837

`A213598(n)-A356235(n)`
-/

namespace A355393.P2656999449141965837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A356235 n

end

end A355393.P2656999449141965837

/-! ## A355393.P16838349106327369142

`∑[A002865(n)]-A356235(n)`
-/

namespace A355393.P16838349106327369142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A356235 n

end

end A355393.P16838349106327369142

/-! ## A355393.P15733582464178262786

`A008284(A001844(n))-A356235(n)`
-/

namespace A355393.P15733582464178262786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A001844 n).toNat - A356235 n

end

end A355393.P15733582464178262786

/-! ## A355393.P5440221356099805558

`A103919(A014105(n))-A356235(n)`
-/

namespace A355393.P5440221356099805558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 (A014105 n).toNat - A356235 n

end

end A355393.P5440221356099805558

/-!
# A355394: Number of integer partitions of n such that, for all parts x, x - 1 or x + 1 is also a part.

The programs for A355394, there is no canonical definition to state claims against.
-/

/-! ## A355394.P3292743105343898704

`A000041(n)-A356236(n)`
-/

namespace A355394.P3292743105343898704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A356236 n

end

end A355394.P3292743105343898704

/-! ## A355394.P15334253549751413226

`A213598(n)-A356236(n)`
-/

namespace A355394.P15334253549751413226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A356236 n

end

end A355394.P15334253549751413226

/-! ## A355394.P752082171267135095

`∑[A002865(n)]-A356236(n)`
-/

namespace A355394.P752082171267135095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A356236 n

end

end A355394.P752082171267135095

/-! ## A355394.P3510321416540144606

`A114099(9*n)-A356236(n)`
-/

namespace A355394.P3510321416540144606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 (9 * n) - A356236 n

end

end A355394.P3510321416540144606

/-! ## A355394.P2974496552910116607

`A239830(A000217(n))-A356236(n)`
-/

namespace A355394.P2974496552910116607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A000217 n).toNat - A356236 n

end

end A355394.P2974496552910116607

/-!
# A355395: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{j=0..n} k^(j*(n-j)) * binomial(n,j).

The programs for A355395, there is no canonical definition to state claims against.
-/

/-! ## A355395.P5652529774516778389

`A396000(A107027(n))`
-/

namespace A355395.P5652529774516778389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396000 (A107027 n).toNat

end

end A355395.P5652529774516778389

/-! ## A355395.P10102664847817704448

`A250244(A107027(n))%A268519(n+1)`
-/

namespace A355395.P10102664847817704448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250244 (A107027 n).toNat) (A268519 (n + 1))

end

end A355395.P10102664847817704448

/-! ## A355395.P7371820318095686133

`A107027(n)+A093313(A072869(n+2))`
-/

namespace A355395.P7371820318095686133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107027 n + A093313 (A072869 (n + 2)).toNat

end

end A355395.P7371820318095686133

/-! ## A355395.P2451758708577452734

`A077342(A107027(n))%A325797(3*n+5)`
-/

namespace A355395.P2451758708577452734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077342 (A107027 n).toNat) (A325797 (3 * n + 5))

end

end A355395.P2451758708577452734

/-! ## A355395.P2948366645784411979

`A250244(A107027(n)%A171599(3*n+4))`
-/

namespace A355395.P2948366645784411979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250244 (Int.tmod (A107027 n) (A171599 (3 * n + 4))).toNat

end

end A355395.P2948366645784411979

/-!
# A355396: Expansion of e.g.f. exp(exp(3*x)/3 - exp(x) + 2/3).

The programs for A355396, there is no canonical definition to state claims against.
-/

/-! ## A355396.P3586720878804669526

`A059253(A059367(n)+1)`
-/

namespace A355396.P3586720878804669526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (A059367 n + 1).toNat

end

end A355396.P3586720878804669526

/-! ## A355396.P18280290119819060390

`A037203(2*A000449(n+3))`
-/

namespace A355396.P18280290119819060390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037203 (2 * A000449 (n + 3)).toNat

end

end A355396.P18280290119819060390

/-!
# A355397: Expansion of e.g.f. exp(exp(3*x)/3 + exp(2*x)/2 - 5/6).

The programs for A355397, there is no canonical definition to state claims against.
-/

/-! ## A355397.P14911373065811320192

`A180875(n)-A001222(A144277(n))`
-/

namespace A355397.P14911373065811320192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180875 n - A001222 (A144277 n).toNat

end

end A355397.P14911373065811320192

/-! ## A355397.P5368681510088337238

`A051377(A180875(n))-A001481(n+1)`
-/

namespace A355397.P5368681510088337238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051377 (A180875 n).toNat - A001481 (n + 1)

end

end A355397.P5368681510088337238

/-!
# A355398: Expansion of e.g.f. exp(exp(3*x)/3 - exp(2*x)/2 + 1/6).

The programs for A355398, there is no canonical definition to state claims against.
-/

/-! ## A355398.P8713768161969873652

`A280008(∑[(n+2)!])`
-/

namespace A355398.P8713768161969873652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280008 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A355398.P8713768161969873652

/-! ## A355398.P12157627835592419250

`A003987((n+1)^n)-n`
-/

namespace A355398.P12157627835592419250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 ((n + 1) ^ n) - (n : ℤ)

end

end A355398.P12157627835592419250

/-!
# A355399: a(n) is the failed skew zero forcing number of C^2_n.

The programs for A355399, there is no canonical definition to state claims against.
-/

/-! ## A355399.P3514905304456550974

`A000120(A175660(n)-A000009(n))`
-/

namespace A355399.P3514905304456550974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A175660 n - A000009 n).toNat

end

end A355399.P3514905304456550974

/-! ## A355399.P7298828645151588801

`A000120(A209398(n+2)-A000120(n))`
-/

namespace A355399.P7298828645151588801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A209398 (n + 2) - A000120 n).toNat

end

end A355399.P7298828645151588801

/-! ## A355399.P14388779718383581802

`A257994(A131137(n)*A195352(n+3))`
-/

namespace A355399.P14388779718383581802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A131137 n * A195352 (n + 3)).toNat

end

end A355399.P14388779718383581802

/-! ## A355399.P13547245854484279555

`A056239(2*n+1)-A030190(A029961(n+1))`
-/

namespace A355399.P13547245854484279555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * n + 1) - A030190 (A029961 (n + 1)).toNat

end

end A355399.P13547245854484279555

