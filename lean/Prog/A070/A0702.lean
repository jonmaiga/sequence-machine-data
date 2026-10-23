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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
# A070200: Inradii of integer triangles [A070080(n), A070081(n), A070082(n)], rounded values.

The programs for A070200, there is no canonical definition to state claims against.
-/

/-! ## A070200.P4159207500057394345

`A094079(n+1)%A135034(A070080(n+1))`
-/

namespace A070200.P4159207500057394345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094079 (n + 1)) (A135034 (A070080 (n + 1)).toNat)

end

end A070200.P4159207500057394345

/-! ## A070200.P993803888832469159

`A130796(n+1)%A099774(A070080(n+1))`
-/

namespace A070200.P993803888832469159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130796 (n + 1)) (A099774 (A070080 (n + 1)).toNat)

end

end A070200.P993803888832469159

/-! ## A070200.P6615872604859091583

`A155479(n+5)%A086936(A070080(n+1))`
-/

namespace A070200.P6615872604859091583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155479 (n + 5)) (A086936 (A070080 (n + 1)).toNat)

end

end A070200.P6615872604859091583

/-! ## A070200.P4083057995903283132

`A066111(A347779(n))%A316844(A070080(n+1))`
-/

namespace A070200.P4083057995903283132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066111 (A347779 n).toNat) (A316844 (A070080 (n + 1)).toNat)

end

end A070200.P4083057995903283132

/-! ## A070200.P6976962229199125542

`floor(sqrt(A213721(n)%A070080(n+1)))`
-/

namespace A070200.P6976962229199125542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (Int.tmod (A213721 n) (A070080 (n + 1)))

end

end A070200.P6976962229199125542

/-! ## A070200.P10077242769518588882

`A000001(A213721(n)%A070080(n+1))`
-/

namespace A070200.P10077242769518588882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (Int.tmod (A213721 n) (A070080 (n + 1))).toNat

end

end A070200.P10077242769518588882

/-! ## A070200.P9635140004695540430

`A263925(n+1)%A316844(A070080(n+1))`
-/

namespace A070200.P9635140004695540430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263925 (n + 1)) (A316844 (A070080 (n + 1)).toNat)

end

end A070200.P9635140004695540430

/-!
# A070201: Number of integer triangles with perimeter n having integral inradius.

The programs for A070201, there is no canonical definition to state claims against.
-/

/-! ## A070201.P5640495641185882567

`A070204(n+1)+A070203(n+1)`
-/

namespace A070201.P5640495641185882567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070204 (n + 1) + A070203 (n + 1)

end

end A070201.P5640495641185882567

/-! ## A070201.P10322059448330561233

`A024155(n+1)+A070206(n+1)+A070205(n+1)`
-/

namespace A070201.P10322059448330561233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1) + (A070206 (n + 1) + A070205 (n + 1))

end

end A070201.P10322059448330561233

/-! ## A070201.P14558625633225654057

`(A309395(A000189(n+1))+A070203(n+1))*A000035(n)`
-/

namespace A070201.P14558625633225654057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A309395 (A000189 (n + 1)).toNat + A070203 (n + 1)) * A000035 n

end

end A070201.P14558625633225654057

/-! ## A070201.P7000479697202443549

`A309395(A000189(n+1)%A133265(n))+A070203(n+1)`
-/

namespace A070201.P7000479697202443549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309395 (Int.tmod (A000189 (n + 1)) (A133265 n)).toNat + A070203 (n + 1)

end

end A070201.P7000479697202443549

/-! ## A070201.P14975447875267595045

`A070203(n+1)+A309395(A000189(n+1))%A057979(n+2)`
-/

namespace A070201.P14975447875267595045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070203 (n + 1) + Int.tmod (A309395 (A000189 (n + 1)).toNat) (A057979 (n + 2))

end

end A070201.P14975447875267595045

/-! ## A070201.P10082110081590302591

`A051516(n+1)-A070208(n+1)`
-/

namespace A070201.P10082110081590302591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (n + 1) - A070208 (n + 1)

end

end A070201.P10082110081590302591

/-! ## A070201.P12601685618155221474

`A070203(n+1)+A070139(A000189(n+1)*A141310(n))`
-/

namespace A070201.P12601685618155221474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070203 (n + 1) + A070139 (A000189 (n + 1) * A141310 n).toNat

end

end A070201.P12601685618155221474

/-! ## A070201.P11247647156021339570

`A070203(n+1)+n%A319907(A008834(2*(n+1))+1)`
-/

namespace A070201.P11247647156021339570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070203 (n + 1) + Int.tmod (n : ℤ) (A319907 (A008834 (2 * (n + 1)) + 1).toNat)

end

end A070201.P11247647156021339570

/-! ## A070201.P16176644075631460151

`A102681(gcd(n²+1, A053825(n+1)))+A070203(n+1)`
-/

namespace A070201.P16176644075631460151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (Int.gcd (n ^ 2 + 1 : ℤ) (A053825 (n + 1))) + A070203 (n + 1)

end

end A070201.P16176644075631460151

/-!
# A070202: Number of integer triangles with perimeter n, integer inradius and side lengths that are not relatively prime.

The programs for A070202, there is no canonical definition to state claims against.
-/

/-! ## A070202.P13446875205342693294

`A124760(A077127(n)^A321379(n+1))`
-/

namespace A070202.P13446875205342693294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (SequenceMachineLib.roundAway ((A077127 n : ℚ) ^ (A321379 (n + 1) : ℤ))).toNat

end

end A070202.P13446875205342693294

/-! ## A070202.P5478428527156551134

`A008177(A008000(n))%A320267(n+1)`
-/

namespace A070202.P5478428527156551134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008177 (A008000 n).toNat) (A320267 (n + 1))

end

end A070202.P5478428527156551134

/-! ## A070202.P11660488592225488532

`A025427(A088243(n+5)*A167688(n+1))`
-/

namespace A070202.P11660488592225488532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (A088243 (n + 5) * A167688 (n + 1)).toNat

end

end A070202.P11660488592225488532

/-! ## A070202.P9148235169300283111

`A342524(n+1)%A001055(A000041(A001055(n+1)))`
-/

namespace A070202.P9148235169300283111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342524 (n + 1)) (A001055 (A000041 (A001055 (n + 1)).toNat).toNat)

end

end A070202.P9148235169300283111

/-! ## A070202.P10961170125872901342

`A083890(n+1)*A083892(A256691(n+1))`
-/

namespace A070202.P10961170125872901342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083890 (n + 1) * A083892 (A256691 (n + 1)).toNat

end

end A070202.P10961170125872901342

/-! ## A070202.P8631906502642044983

`A300660(A181644(n)%A117358(n+1))`
-/

namespace A070202.P8631906502642044983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300660 (Int.tmod (A181644 n) (A117358 (n + 1))).toNat

end

end A070202.P8631906502642044983

/-! ## A070202.P7602746590550504746

`A332998(A318954(n+1))²%A050345(A050345(n+1)+1)`
-/

namespace A070202.P7602746590550504746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332998 (A318954 (n + 1)).toNat ^ 2) (A050345 (A050345 (n + 1) + 1).toNat)

end

end A070202.P7602746590550504746

/-! ## A070202.P2077889598367786200

`A333343(n)%A177704(n)`
-/

namespace A070202.P2077889598367786200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333343 n) (A177704 n)

end

end A070202.P2077889598367786200

/-! ## A070202.P11828171302936677026

`∑{d}[n+1, A051516(#)*A262431((n+1)/#-1)]`
-/

namespace A070202.P11828171302936677026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051516 d * A262431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A070202.P11828171302936677026

/-!
# A070203: Number of scalene integer triangles with perimeter n having integral inradius.

The programs for A070203, there is no canonical definition to state claims against.
-/

/-! ## A070203.P16719559689579550327

`A070201(n+1)-A070204(n+1)`
-/

namespace A070203.P16719559689579550327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070201 (n + 1) - A070204 (n + 1)

end

end A070203.P16719559689579550327

/-! ## A070203.P10390119456115661416

`A070201(n+1)+A057428(n)*A070204(n+1)`
-/

namespace A070203.P10390119456115661416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070201 (n + 1) + A057428 n * A070204 (n + 1)

end

end A070203.P10390119456115661416

/-! ## A070203.P6433903047848708031

`A070201(n+1)+A070204(n+1)*A070238(n+1)`
-/

namespace A070203.P6433903047848708031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070201 (n + 1) + A070204 (n + 1) * A070238 (n + 1)

end

end A070203.P6433903047848708031

/-! ## A070203.P17493153354970464067

`A070201(n+1)-A309395(A000189(n+1)%A133265(n))`
-/

namespace A070203.P17493153354970464067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070201 (n + 1) - A309395 (Int.tmod (A000189 (n + 1)) (A133265 n)).toNat

end

end A070203.P17493153354970464067

/-! ## A070203.P12087283136884489137

`A051516(n+1)-A070208(A133265(n))-A070204(n+1)`
-/

namespace A070203.P12087283136884489137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (n + 1) - A070208 (A133265 n).toNat - A070204 (n + 1)

end

end A070203.P12087283136884489137

/-! ## A070203.P12422411273450207256

`A051516(n+1)-(A070208(n+1)+A070204(n+1))`
-/

namespace A070203.P12422411273450207256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (n + 1) - (A070208 (n + 1) + A070204 (n + 1))

end

end A070203.P12422411273450207256

/-! ## A070203.P12209998190271857912

`A070201(n+1)+A070204(n+1)*A110514(A016813(n))`
-/

namespace A070203.P12209998190271857912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070201 (n + 1) + A070204 (n + 1) * A110514 (A016813 n).toNat

end

end A070203.P12209998190271857912

/-! ## A070203.P17037062201823540263

`and(A334938(n+1)-A051516(n+1), A070201(n+1))`
-/

namespace A070203.P17037062201823540263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A334938 (n + 1) - A051516 (n + 1)) (A070201 (n + 1))

end

end A070203.P17037062201823540263

/-!
# A070204: Number of isosceles integer triangles with perimeter n having integral inradius.

The programs for A070204, the canonical program `A070204.P13892288922647958106` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070204 has offset 1).

The definition of A070204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070204.P13892288922647958106

`A000035(n)*A309395(A000189(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A070204

/-- `A000035(n)*A309395(A000189(n+1))` -/
def P13892288922647958106.Spec : Prop :=
  ∀ n, P13892288922647958106.a n = A070204 (n + 1)

theorem P13892288922647958106.correct : P13892288922647958106.Spec := by
  intro n
  simp only [A070204, Nat.add_sub_cancel]

end A070204

/-! ## A070204.P6509940603932304394

`A309395(A000189(n+1)%A133265(n))`
-/

namespace A070204.P6509940603932304394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309395 (Int.tmod (A000189 (n + 1)) (A133265 n)).toNat

end

end A070204.P6509940603932304394

namespace A070204

/-- `A309395(A000189(n+1)%A133265(n))` -/
def P6509940603932304394.Spec : Prop :=
  ∀ n, P6509940603932304394.a n = A070204 (n + 1)

end A070204

/-! ## A070204.P14249520570029974077

`A309395(gcd(A000189(n+1), A001057(n)))`
-/

namespace A070204.P14249520570029974077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309395 (Int.gcd (A000189 (n + 1)) (A001057 n))

end

end A070204.P14249520570029974077

namespace A070204

/-- `A309395(gcd(A000189(n+1), A001057(n)))` -/
def P14249520570029974077.Spec : Prop :=
  ∀ n, P14249520570029974077.a n = A070204 (n + 1)

end A070204

/-! ## A070204.P7327781036926913424

`A309395(A000189(n+1))%A057979(n+2)`
-/

namespace A070204.P7327781036926913424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309395 (A000189 (n + 1)).toNat) (A057979 (n + 2))

end

end A070204.P7327781036926913424

namespace A070204

/-- `A309395(A000189(n+1))%A057979(n+2)` -/
def P7327781036926913424.Spec : Prop :=
  ∀ n, P7327781036926913424.a n = A070204 (n + 1)

end A070204

/-! ## A070204.P16396781132467838538

`A070201(n+1)-A070203(n+1)`
-/

namespace A070204.P16396781132467838538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070201 (n + 1) - A070203 (n + 1)

end

end A070204.P16396781132467838538

namespace A070204

/-- `A070201(n+1)-A070203(n+1)` -/
def P16396781132467838538.Spec : Prop :=
  ∀ n, P16396781132467838538.a n = A070204 (n + 1)

end A070204

/-! ## A070204.P10325238363636920884

`A070139(A000189(n+1)*A141310(n))`
-/

namespace A070204.P10325238363636920884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070139 (A000189 (n + 1) * A141310 n).toNat

end

end A070204.P10325238363636920884

namespace A070204

/-- `A070139(A000189(n+1)*A141310(n))` -/
def P10325238363636920884.Spec : Prop :=
  ∀ n, P10325238363636920884.a n = A070204 (n + 1)

end A070204

/-! ## A070204.P17747318746357768048

`A309395(A053150(∑[A109613(n)]))`
-/

namespace A070204.P17747318746357768048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309395 (A053150 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A070204.P17747318746357768048

namespace A070204

/-- `A309395(A053150(∑[A109613(n)]))` -/
def P17747318746357768048.Spec : Prop :=
  ∀ n, P17747318746357768048.a n = A070204 (n + 1)

end A070204

/-! ## A070204.P3557901153621533280

`n%A319907(A008834(2*(n+1))+1)`
-/

namespace A070204.P3557901153621533280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A319907 (A008834 (2 * (n + 1)) + 1).toNat)

end

end A070204.P3557901153621533280

namespace A070204

/-- `n%A319907(A008834(2*(n+1))+1)` -/
def P3557901153621533280.Spec : Prop :=
  ∀ n, P3557901153621533280.a n = A070204 (n + 1)

end A070204

/-! ## A070204.P4420207470690511501

`A004125(∑{e}[A093421(n+2)+n, A124759(#)]+1)`
-/

namespace A070204.P4420207470690511501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093421 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A124759 (Nat.factorization (f1 n).natAbs p) + 1).toNat

end

end A070204.P4420207470690511501

namespace A070204

/-- `A004125(∑{e}[A093421(n+2)+n, A124759(#)]+1)` -/
def P4420207470690511501.Spec : Prop :=
  ∀ n, P4420207470690511501.a n = A070204 (n + 1)

end A070204

/-! ## A070204.P8088533570959478815

`A102681(gcd(n²+1, A053825(n+1)))`
-/

namespace A070204.P8088533570959478815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (Int.gcd (n ^ 2 + 1 : ℤ) (A053825 (n + 1)))

end

end A070204.P8088533570959478815

namespace A070204

/-- `A102681(gcd(n²+1, A053825(n+1)))` -/
def P8088533570959478815.Spec : Prop :=
  ∀ n, P8088533570959478815.a n = A070204 (n + 1)

end A070204

/-!
# A070205: Number of acute integer triangles with perimeter n having integral inradius.

The programs for A070205, there is no canonical definition to state claims against.
-/

/-! ## A070205.P10235572958441912347

`A070201(n+1)-A024155(n+1)-A070206(n+1)`
-/

namespace A070205.P10235572958441912347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070201 (n + 1) - A024155 (n + 1) - A070206 (n + 1)

end

end A070205.P10235572958441912347

/-! ## A070205.P11353292299244658175

`A037908(gcd(A157987(n+4), A279394(n+1)))`
-/

namespace A070205.P11353292299244658175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037908 (Int.gcd (A157987 (n + 4)) (A279394 (n + 1)))

end

end A070205.P11353292299244658175

/-! ## A070205.P17835969033683966502

`A117872(A070140(n+1)*A117888(n+1))`
-/

namespace A070205.P17835969033683966502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117872 (A070140 (n + 1) * A117888 (n + 1)).toNat

end

end A070205.P17835969033683966502

/-! ## A070205.P15174822309228978840

`A117872(lcm(A051516(n+1), A117888(n+1)))`
-/

namespace A070205.P15174822309228978840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117872 (Int.lcm (A051516 (n + 1)) (A117888 (n + 1)))

end

end A070205.P15174822309228978840

/-! ## A070205.P769219961122510125

`val(A349137(A199538(n+1)), A117367(n+1))`
-/

namespace A070205.P769219961122510125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A349137 (A199538 (n + 1)).toNat).toNat (A117367 (n + 1)).toNat

end

end A070205.P769219961122510125

/-! ## A070205.P942142427615533632

`val(A114896(A114826(n+1)), 5)`
-/

namespace A070205.P942142427615533632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A114896 (A114826 (n + 1)).toNat).toNat 5

end

end A070205.P942142427615533632

/-! ## A070205.P7090301648130903292

`val(A010351(n+1), n+2)`
-/

namespace A070205.P7090301648130903292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A010351 (n + 1)).toNat (n + 2)

end

end A070205.P7090301648130903292

/-! ## A070205.P11401711581843135716

`A025456(A339070(n+2)²)`
-/

namespace A070205.P11401711581843135716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 (A339070 (n + 2) ^ 2).toNat

end

end A070205.P11401711581843135716

/-! ## A070205.P10271638746460609548

`and(A091225(n), A205181(n+1))`
-/

namespace A070205.P10271638746460609548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091225 n) (A205181 (n + 1))

end

end A070205.P10271638746460609548

/-! ## A070205.P8491859975039737976

`and(A098370(n), A267974(n+1))`
-/

namespace A070205.P8491859975039737976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A098370 n) (A267974 (n + 1))

end

end A070205.P8491859975039737976

/-!
# A070206: Number of obtuse integer triangles with perimeter n having integral inradius.

The programs for A070206, there is no canonical definition to state claims against.
-/

/-! ## A070206.P4867921922270547378

`A070201(n+1)-(A070205(n+1)+A024155(n+1))`
-/

namespace A070206.P4867921922270547378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070201 (n + 1) - (A070205 (n + 1) + A024155 (n + 1))

end

end A070206.P4867921922270547378

/-! ## A070206.P3135179264888193422

`A033665(A083345(n+1)^A070141(n+1))`
-/

namespace A070206.P3135179264888193422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 (SequenceMachineLib.roundAway ((A083345 (n + 1) : ℚ) ^ (A070141 (n + 1) : ℤ))).toNat

end

end A070206.P3135179264888193422

/-! ## A070206.P12939082865355285205

`A080995(A166455(2*n)+12)`
-/

namespace A070206.P12939082865355285205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080995 (A166455 (2 * n) + 12).toNat

end

end A070206.P12939082865355285205

/-! ## A070206.P12086987776733071552

`val(A339563(n+1)+A105471(n), 12)`
-/

namespace A070206.P12086987776733071552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A339563 (n + 1) + A105471 n).toNat 12

end

end A070206.P12086987776733071552

/-! ## A070206.P14374761671987868968

`A046080(A036561(n)-A070141(n+1))`
-/

namespace A070206.P14374761671987868968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A036561 n - A070141 (n + 1)).toNat

end

end A070206.P14374761671987868968

/-! ## A070206.P8519726945406742004

`A107846(A008217(n)*A090750(n+1))`
-/

namespace A070206.P8519726945406742004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A008217 n * A090750 (n + 1)).toNat

end

end A070206.P8519726945406742004

/-! ## A070206.P17398240402454729244

`A107846(A008797(n)*A090750(n+1))`
-/

namespace A070206.P17398240402454729244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A008797 n * A090750 (n + 1)).toNat

end

end A070206.P17398240402454729244

/-! ## A070206.P12506307569921713793

`A102679(A143182(n)^A051516(n+1))`
-/

namespace A070206.P12506307569921713793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (SequenceMachineLib.roundAway ((A143182 n : ℚ) ^ (A051516 (n + 1) : ℤ))).toNat

end

end A070206.P12506307569921713793

/-! ## A070206.P13444685383486097696

`val(A046523(n+1)*A317588(n+1), A317590(n+1))`
-/

namespace A070206.P13444685383486097696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046523 (n + 1) * A317588 (n + 1)).toNat (A317590 (n + 1)).toNat

end

end A070206.P13444685383486097696

/-!
# A070207: Expansion of (1-x-5*x^2)/(1-3*x-2*x^2-x^3).

The programs for A070207, the canonical program `A070207.P5866126796030755027` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070207 has offset 0).

The definition of A070207 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-5x^2)/(1-3x-2x^2-x^3))` (program `A070207.P5866126796030755027`, by `A070207.P5866126796030755027.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070207.P5866126796030755027

`ogf((1-x-5x^2)/(1-3x-2x^2-x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070207

/-- `ogf((1-x-5x^2)/(1-3x-2x^2-x^3))` -/
def P5866126796030755027.Spec : Prop :=
  ∀ n, P5866126796030755027.a n = A070207 n

theorem P5866126796030755027.correct : P5866126796030755027.Spec := by
  intro n
  simp only [A070207]

end A070207

/-! ## A070207.P2531796075830781211

`3*a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A070207.P2531796075830781211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  3 * a (n - 1) + 2 * a (n - 2) + a (n - 3)

end

end A070207.P2531796075830781211

namespace A070207

/-- `3*a(n-1)+2*a(n-2)+a(n-3)` -/
def P2531796075830781211.Spec : Prop :=
  ∀ n, (P2531796075830781211.a n : ℤ) = A070207 n

end A070207

/-! ## A070207.P5766559868120934128

`A108136(n+1)+A100477(n)`
-/

namespace A070207.P5766559868120934128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108136 (n + 1) + A100477 n

end

end A070207.P5766559868120934128

namespace A070207

/-- `A108136(n+1)+A100477(n)` -/
def P5766559868120934128.Spec : Prop :=
  ∀ n, P5766559868120934128.a n = A070207 n

end A070207

/-! ## A070207.P1835713899027962867

`A108136(n+1)+∑[A057427(n)*A108136(n+1)]`
-/

namespace A070207.P1835713899027962867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A108136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108136 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070207.P1835713899027962867

namespace A070207

/-- `A108136(n+1)+∑[A057427(n)*A108136(n+1)]` -/
def P1835713899027962867.Spec : Prop :=
  ∀ n, P1835713899027962867.a n = A070207 n

end A070207

/-! ## A070207.P3460711519578088490

`Δ[A108153(n)-A108136(n+1)]`
-/

namespace A070207.P3460711519578088490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108153 n - A108136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070207.P3460711519578088490

namespace A070207

/-- `Δ[A108153(n)-A108136(n+1)]` -/
def P3460711519578088490.Spec : Prop :=
  ∀ n, P3460711519578088490.a n = A070207 n

end A070207

/-! ## A070207.P4929273536457734254

`A108136(n+1)+A108153(n+1)-(A108152(n+1)+A108152(n))`
-/

namespace A070207.P4929273536457734254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108136 (n + 1) + (A108153 (n + 1) - (A108152 (n + 1) + A108152 n))

end

end A070207.P4929273536457734254

namespace A070207

/-- `A108136(n+1)+A108153(n+1)-(A108152(n+1)+A108152(n))` -/
def P4929273536457734254.Spec : Prop :=
  ∀ n, P4929273536457734254.a n = A070207 n

end A070207

/-! ## A070207.P4655214959012071468

`A108136(n+1)+A108153(n+1)-(A108153(n)+A108136(n+2))`
-/

namespace A070207.P4655214959012071468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108136 (n + 1) + (A108153 (n + 1) - (A108153 n + A108136 (n + 2)))

end

end A070207.P4655214959012071468

namespace A070207

/-- `A108136(n+1)+A108153(n+1)-(A108153(n)+A108136(n+2))` -/
def P4655214959012071468.Spec : Prop :=
  ∀ n, P4655214959012071468.a n = A070207 n

end A070207

/-! ## A070207.P12091829933502401790

`A100477(n)+Δ[A100477(n+4)]%A010911(n)`
-/

namespace A070207.P12091829933502401790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100477 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100477 n + Int.tmod (f1 (n + 1) - f1 n) (A010911 n)

end

end A070207.P12091829933502401790

namespace A070207

/-- `A100477(n)+Δ[A100477(n+4)]%A010911(n)` -/
def P12091829933502401790.Spec : Prop :=
  ∀ n, P12091829933502401790.a n = A070207 n

end A070207

/-! ## A070207.P1205142962474472180

`A108136(n+1)+∑[A108136(n+1)%A000302(n)]`
-/

namespace A070207.P1205142962474472180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108136 (n + 1)) (A000302 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108136 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070207.P1205142962474472180

namespace A070207

/-- `A108136(n+1)+∑[A108136(n+1)%A000302(n)]` -/
def P1205142962474472180.Spec : Prop :=
  ∀ n, P1205142962474472180.a n = A070207 n

end A070207

/-!
# A070208: Number of integer triangles with perimeter n having integral area but not integral inradius.

The programs for A070208, there is no canonical definition to state claims against.
-/

/-! ## A070208.P14659851597266813825

`A051516(n+1)-A070201(n+1)`
-/

namespace A070208.P14659851597266813825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (n + 1) - A070201 (n + 1)

end

end A070208.P14659851597266813825

/-! ## A070208.P14214588610017055538

`∑{d}[n+1, A070138(#)]-A070201(n+1)`
-/

namespace A070208.P14214588610017055538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A070138 d - A070201 (n + 1)

end

end A070208.P14214588610017055538

/-! ## A070208.P17252434093458132535

`A051517(A152271(n))-A070201(n+1)`
-/

namespace A070208.P17252434093458132535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051517 (A152271 n).toNat - A070201 (n + 1)

end

end A070208.P17252434093458132535

/-! ## A070208.P13339235337775064235

`A051517(A057979(n)+1)-A070201(n+1)`
-/

namespace A070208.P13339235337775064235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051517 (A057979 n + 1).toNat - A070201 (n + 1)

end

end A070208.P13339235337775064235

/-! ## A070208.P4209218970505448540

`A051517(A133265(n)/2)-A070201(n+1)`
-/

namespace A070208.P4209218970505448540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051517 (SequenceMachineLib.roundAway ((A133265 n : ℚ) / 2)).toNat - A070201 (n + 1)

end

end A070208.P4209218970505448540

/-! ## A070208.P9233823531607509859

`A051516(n+1)+A057428(n)*A070201(n+1)`
-/

namespace A070208.P9233823531607509859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (n + 1) + A057428 n * A070201 (n + 1)

end

end A070208.P9233823531607509859

/-! ## A070208.P5337049191454959536

`A024153(n+1)+A070139(n+1)-A070201(n+1)`
-/

namespace A070208.P5337049191454959536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024153 (n + 1) + (A070139 (n + 1) - A070201 (n + 1))

end

end A070208.P5337049191454959536

/-! ## A070208.P8799928919431234436

`A051516(n+1)-(A070204(n+1)+A070203(n+1))`
-/

namespace A070208.P8799928919431234436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (n + 1) - (A070204 (n + 1) + A070203 (n + 1))

end

end A070208.P8799928919431234436

/-!
# A070209: Numbers n such that [A070080(n), A070081(n), A070082(n)] is an integer triangle with integer inradius.

The programs for A070209, there is no canonical definition to state claims against.
-/

/-! ## A070209.P220289548114525558

`A070142(eq[A355914(n+3), A358639(n)])`
-/

namespace A070209.P220289548114525558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355914 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358639 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070142 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A070209.P220289548114525558

/-! ## A070209.P11281252452815377887

`A070142(comp[∑[n]])%A267492(n+1)`
-/

namespace A070209.P11281252452815377887
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070142 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A267492 (n + 1))

end

end A070209.P11281252452815377887

/-!
# A070210: Inradii of integer triangles [A070080(A070209(n)), A070081(A070209(n)), A070082(A070209(n))].

The programs for A070210, there is no canonical definition to state claims against.
-/

/-! ## A070210.P9284254134700967844

`A070200(A070209(n+1))`
-/

namespace A070210.P9284254134700967844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070200 (A070209 (n + 1)).toNat

end

end A070210.P9284254134700967844

/-! ## A070210.P5211110927008907366

`A043561(xor(A001045(n), A010006(n)))`
-/

namespace A070210.P5211110927008907366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 (Int.xor (A001045 n) (A010006 n)).toNat

end

end A070210.P5211110927008907366

/-! ## A070210.P17299942346463072160

`A328482(A269394(p?[A302478(n+1)]))`
-/

namespace A070210.P17299942346463072160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328482 (A269394 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A070210.P17299942346463072160

/-! ## A070210.P6572635619175560074

`∑{p}[A324577(n+1)+A028563(n), A032742(#)]`
-/

namespace A070210.P6572635619175560074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324577 (n + 1) + A028563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A032742 p

end

end A070210.P6572635619175560074

/-! ## A070210.P11785780768996273507

`∑{p}[A324577(n+1)+A028563(n), A051953(#)]`
-/

namespace A070210.P11785780768996273507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324577 (n + 1) + A028563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A051953 p

end

end A070210.P11785780768996273507

/-!
# A070211: Number of compositions (ordered partitions) of n that are concave-down sequences.

The programs for A070211, there is no canonical definition to state claims against.
-/

/-! ## A070211.P7664687046233828172

`∑{digits}[A086069(A053282(2*n+3)), #]`
-/

namespace A070211.P7664687046233828172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086069 (A053282 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A070211.P7664687046233828172

/-! ## A070211.P15314074378714909739

`A123580(A173241(n))+A091245(n)`
-/

namespace A070211.P15314074378714909739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A173241 n).toNat + A091245 n

end

end A070211.P15314074378714909739

/-! ## A070211.P1912592319255198660

`A056556(∑[record[A320305(n)]])`
-/

namespace A070211.P1912592319255198660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320305 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A070211.P1912592319255198660

/-! ## A070211.P5963852241136126278

`A140595(A240730(n+1)-1)`
-/

namespace A070211.P5963852241136126278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140595 (A240730 (n + 1) - 1).toNat

end

end A070211.P5963852241136126278

/-!
# A070212: Number of 5 X 5 pandiagonal magic squares with sum n.

The programs for A070212, the canonical program `A070212.P830112465696645341` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070212 has offset 0).

The definition of A070212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070212.P830112465696645341

`∑[∑[∑[∑[A008498(n)]]]]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A070212

/-- `∑[∑[∑[∑[A008498(n)]]]]` -/
def P830112465696645341.Spec : Prop :=
  ∀ n, P830112465696645341.a n = A070212 n

theorem P830112465696645341.correct : P830112465696645341.Spec := by
  intro n
  simp only [A070212]

end A070212

/-! ## A070212.P494605786355021517

`∑[∑[A157052(n+1)-A198833(n+1)]]`
-/

namespace A070212.P494605786355021517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157052 (n + 1) - A198833 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070212.P494605786355021517

namespace A070212

/-- `∑[∑[A157052(n+1)-A198833(n+1)]]` -/
def P494605786355021517.Spec : Prop :=
  ∀ n, P494605786355021517.a n = A070212 n

end A070212

/-! ## A070212.P13212971276405259928

`A115205(n+9)-A115205(n+4)`
-/

namespace A070212.P13212971276405259928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115205 (n + 9) - A115205 (n + 4)

end

end A070212.P13212971276405259928

namespace A070212

/-- `A115205(n+9)-A115205(n+4)` -/
def P13212971276405259928.Spec : Prop :=
  ∀ n, P13212971276405259928.a n = A070212 n

end A070212

/-! ## A070212.P6105407917640276861

`A096942(A034856(n+1))/21`
-/

namespace A070212.P6105407917640276861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096942 (A034856 (n + 1)).toNat : ℚ) / 21

end

end A070212.P6105407917640276861

namespace A070212

/-- `A096942(A034856(n+1))/21` -/
def P6105407917640276861.Spec : Prop :=
  ∀ n, P6105407917640276861.a n = (A070212 n : ℚ)

end A070212

/-!
# A070214: Maximal number of occupied cells in monotonic matrix of order n.

The programs for A070214, there is no canonical definition to state claims against.
-/

/-! ## A070214.P14435133565198781355

`A325400(floor(sqrt((n+1)^3)))`
-/

namespace A070214.P14435133565198781355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325400 (Nat.sqrt ((n + 1) ^ 3))

end

end A070214.P14435133565198781355

/-! ## A070214.P11046766983195787550

`∑[A182535(2^n+n²)]`
-/

namespace A070214.P11046766983195787550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182535 (2 ^ n + n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070214.P11046766983195787550

/-! ## A070214.P14819833012013144001

`floor(A211647(2*n+3)/6)`
-/

namespace A070214.P14819833012013144001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A211647 (2 * n + 3) : ℚ) / 6⌋

end

end A070214.P14819833012013144001

/-! ## A070214.P10884074116523685034

`floor(∑[sqrt(A030319(2*n+1))])`
-/

namespace A070214.P10884074116523685034
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030319 (2 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A070214.P10884074116523685034

/-! ## A070214.P6658562541674955508

`∑[A064662(2*(n+1))+gcd(2, n)]`
-/

namespace A070214.P6658562541674955508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064662 (2 * (n + 1)) + (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070214.P6658562541674955508

/-!
# A070215: Number of ways to write the n-th prime as a sum of distinct primes.

The programs for A070215, there is no canonical definition to state claims against.
-/

/-! ## A070215.P17151946653219752455

`A334292(n+1)+1`
-/

namespace A070215.P17151946653219752455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334292 (n + 1) + 1

end

end A070215.P17151946653219752455

/-! ## A070215.P14690822997258928721

`A000586(p?[comp[n²]])`
-/

namespace A070215.P14690822997258928721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A070215.P14690822997258928721

/-! ## A070215.P13369983164099555867

`A000586(A000040(n+1))`
-/

namespace A070215.P13369983164099555867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (A000040 (n + 1)).toNat

end

end A070215.P13369983164099555867

/-! ## A070215.P12719071976823183776

`A000586(A008578(n+2))`
-/

namespace A070215.P12719071976823183776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (A008578 (n + 2)).toNat

end

end A070215.P12719071976823183776

/-! ## A070215.P6937158379744305257

`A000586(A182986(n+2))`
-/

namespace A070215.P6937158379744305257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (A182986 (n + 2)).toNat

end

end A070215.P6937158379744305257

/-! ## A070215.P17037500790114135016

`A000586(eq[0, A237053(n)])`
-/

namespace A070215.P17037500790114135016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070215.P17037500790114135016

/-! ## A070215.P2884027978463568086

`A000586(eq[1, A003415(n)])`
-/

namespace A070215.P2884027978463568086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070215.P2884027978463568086

/-! ## A070215.P194757834696912357

`A000586(eq[2, A077462(n)])`
-/

namespace A070215.P194757834696912357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070215.P194757834696912357

/-! ## A070215.P6200202062221770637

`A000586(record[A006530(n+2)])`
-/

namespace A070215.P6200202062221770637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A070215.P6200202062221770637

/-! ## A070215.P1104882301402203515

`A000586(record[A014963(n+2)])`
-/

namespace A070215.P1104882301402203515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A070215.P1104882301402203515

/-! ## A070215.P6238287241675863469

`A000586(record[A020639(n+2)])`
-/

namespace A070215.P6238287241675863469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A070215.P6238287241675863469

/-! ## A070215.P2350869000410932515

`A000586(A040976(n+1)+2)`
-/

namespace A070215.P2350869000410932515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (A040976 (n + 1) + 2).toNat

end

end A070215.P2350869000410932515

/-! ## A070215.P5686009461346049583

`A000586(A100484(n+1)/2)`
-/

namespace A070215.P5686009461346049583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A070215.P5686009461346049583

/-! ## A070215.P16912911668892476349

`A000586(eq[0, A107393(n)+1])`
-/

namespace A070215.P16912911668892476349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070215.P16912911668892476349

/-! ## A070215.P7186670905738179634

`A000586(eq[2, 1-A107393(n)])`
-/

namespace A070215.P7186670905738179634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070215.P7186670905738179634

/-! ## A070215.P11975150433610724052

`A000586(record[A000010(n+1)+1])`
-/

namespace A070215.P11975150433610724052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A070215.P11975150433610724052

/-! ## A070215.P4729656645178773995

`A000586(A014689(n+1)+1+n)`
-/

namespace A070215.P4729656645178773995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (A014689 (n + 1) + 1 + (n : ℤ)).toNat

end

end A070215.P4729656645178773995

/-! ## A070215.P1722733258815116142

`A000586(eq[A107393(n), A260196(n)])`
-/

namespace A070215.P1722733258815116142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A070215.P1722733258815116142

/-! ## A070215.P1424188719261594456

`A000586(A007504(n+1)-A007504(n))`
-/

namespace A070215.P1424188719261594456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (A007504 (n + 1) - A007504 n).toNat

end

end A070215.P1424188719261594456

/-! ## A070215.P13483661740171611636

`A000586(A001748(n+1)-A100484(n+1))`
-/

namespace A070215.P13483661740171611636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (A001748 (n + 1) - A100484 (n + 1)).toNat

end

end A070215.P13483661740171611636

/-!
# A070216: Triangle T(n, k) = n^2 + k^2, 1 <= k <= n, read by rows.

The programs for A070216, the canonical program `A070216.P4883478267033686530` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070216 has offset 1).

The definition of A070216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070216.P9096320758129988428

`A002260(n+1)²+∑[char[∑[n]]]²`
-/

namespace A070216.P9096320758129988428
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ 2 + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A070216.P9096320758129988428

namespace A070216

/-- `A002260(n+1)²+∑[char[∑[n]]]²` -/
def P9096320758129988428.Spec : Prop :=
  ∀ n, P9096320758129988428.a n = A070216 (n + 1)

end A070216

/-! ## A070216.P17868247444127881825

`A140756(n+1)²+∑[char[∑[n]]]²`
-/

namespace A070216.P17868247444127881825
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n + 1) ^ 2 + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A070216.P17868247444127881825

namespace A070216

/-- `A140756(n+1)²+∑[char[∑[n]]]²` -/
def P17868247444127881825.Spec : Prop :=
  ∀ n, P17868247444127881825.a n = A070216 (n + 1)

end A070216

/-! ## A070216.P6416974444839254367

`A133819(n+1)+(∑[char[∑[n+1]]]+1)²`
-/

namespace A070216.P6416974444839254367
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2 : ℕ) : ℤ)

end

end A070216.P6416974444839254367

namespace A070216

/-- `A133819(n+1)+(∑[char[∑[n+1]]]+1)²` -/
def P6416974444839254367.Spec : Prop :=
  ∀ n, P6416974444839254367.a n = A070216 (n + 1)

end A070216

/-! ## A070216.P1696056247297996196

`A154614(n+1)+A073254(n)`
-/

namespace A070216.P1696056247297996196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154614 (n + 1) + A073254 n

end

end A070216.P1696056247297996196

namespace A070216

/-- `A154614(n+1)+A073254(n)` -/
def P1696056247297996196.Spec : Prop :=
  ∀ n, P1696056247297996196.a n = A070216 (n + 1)

end A070216

/-! ## A070216.P6577910506915095079

`A185910(n+1)+A004201(n+1)`
-/

namespace A070216.P6577910506915095079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185910 (n + 1) + A004201 (n + 1)

end

end A070216.P6577910506915095079

namespace A070216

/-- `A185910(n+1)+A004201(n+1)` -/
def P6577910506915095079.Spec : Prop :=
  ∀ n, P6577910506915095079.a n = A070216 (n + 1)

end A070216

/-! ## A070216.P11402307957759089269

`A215630(n+1)+A075362(n+1)`
-/

namespace A070216.P11402307957759089269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215630 (n + 1) + A075362 (n + 1)

end

end A070216.P11402307957759089269

namespace A070216

/-- `A215630(n+1)+A075362(n+1)` -/
def P11402307957759089269.Spec : Prop :=
  ∀ n, P11402307957759089269.a n = A070216 (n + 1)

end A070216

/-! ## A070216.P10470762667539835923

`A215631(n+1)-A075362(n+1)`
-/

namespace A070216.P10470762667539835923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215631 (n + 1) - A075362 (n + 1)

end

end A070216.P10470762667539835923

namespace A070216

/-- `A215631(n+1)-A075362(n+1)` -/
def P10470762667539835923.Spec : Prop :=
  ∀ n, P10470762667539835923.a n = A070216 (n + 1)

end A070216

/-! ## A070216.P331671969034523295

`A182491(n+1)-A144204(n+1)`
-/

namespace A070216.P331671969034523295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182491 (n + 1) - A144204 (n + 1)

end

end A070216.P331671969034523295

namespace A070216

/-- `A182491(n+1)-A144204(n+1)` -/
def P331671969034523295.Spec : Prop :=
  ∀ n, P331671969034523295.a n = A070216 (n + 1)

end A070216

/-! ## A070216.P4883478267033686530

`A069011(n)+2*A094727(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A070216

/-- `A069011(n)+2*A094727(n+1)` -/
def P4883478267033686530.Spec : Prop :=
  ∀ n, P4883478267033686530.a n = A070216 (n + 1)

theorem P4883478267033686530.correct : P4883478267033686530.Spec := by
  intro n
  simp only [A070216, Nat.add_sub_cancel]

end A070216

/-! ## A070216.P5613283020837184340

`A321490(n+1)/A108872(n+1)`
-/

namespace A070216.P5613283020837184340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321490 (n + 1) : ℚ) / (A108872 (n + 1) : ℚ)

end

end A070216.P5613283020837184340

namespace A070216

/-- `A321490(n+1)/A108872(n+1)` -/
def P5613283020837184340.Spec : Prop :=
  ∀ n, P5613283020837184340.a n = (A070216 (n + 1) : ℚ)

end A070216

/-! ## A070216.P9571520151640111278

`2*A004201(n+1)-A335821(n)`
-/

namespace A070216.P9571520151640111278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004201 (n + 1) - A335821 n

end

end A070216.P9571520151640111278

namespace A070216

/-- `2*A004201(n+1)-A335821(n)` -/
def P9571520151640111278.Spec : Prop :=
  ∀ n, P9571520151640111278.a n = A070216 (n + 1)

end A070216

/-! ## A070216.P2443213346257711812

`A014132(n+1)+A143844(n)+n`
-/

namespace A070216.P2443213346257711812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1) + (A143844 n + (n : ℤ))

end

end A070216.P2443213346257711812

namespace A070216

/-- `A014132(n+1)+A143844(n)+n` -/
def P2443213346257711812.Spec : Prop :=
  ∀ n, P2443213346257711812.a n = A070216 (n + 1)

end A070216

/-! ## A070216.P2668188273274832828

`∑[A198954(n)]+A002260(n+1)²`
-/

namespace A070216.P2668188273274832828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A002260 (n + 1) ^ 2

end

end A070216.P2668188273274832828

namespace A070216

/-- `∑[A198954(n)]+A002260(n+1)²` -/
def P2668188273274832828.Spec : Prop :=
  ∀ n, P2668188273274832828.a n = A070216 (n + 1)

end A070216

/-! ## A070216.P16472036184395902153

`A093995(n+1)+A002260(n+1)²`
-/

namespace A070216.P16472036184395902153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + A002260 (n + 1) ^ 2

end

end A070216.P16472036184395902153

namespace A070216

/-- `A093995(n+1)+A002260(n+1)²` -/
def P16472036184395902153.Spec : Prop :=
  ∀ n, P16472036184395902153.a n = A070216 (n + 1)

end A070216

/-! ## A070216.P8564998878774399300

`A093995(n+1)+(A002262(n)+1)²`
-/

namespace A070216.P8564998878774399300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) + (A002262 n + 1) ^ 2

end

end A070216.P8564998878774399300

namespace A070216

/-- `A093995(n+1)+(A002262(n)+1)²` -/
def P8564998878774399300.Spec : Prop :=
  ∀ n, P8564998878774399300.a n = A070216 (n + 1)

end A070216

/-! ## A070216.P14609296361324361864

`A095831(n+1)+2*A075362(n+1)`
-/

namespace A070216.P14609296361324361864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095831 (n + 1) + 2 * A075362 (n + 1)

end

end A070216.P14609296361324361864

namespace A070216

/-- `A095831(n+1)+2*A075362(n+1)` -/
def P14609296361324361864.Spec : Prop :=
  ∀ n, P14609296361324361864.a n = A070216 (n + 1)

end A070216

/-! ## A070216.P12317849213122974215

`(A215631(n+1)+A215630(n+1))/2`
-/

namespace A070216.P12317849213122974215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215631 (n + 1) + A215630 (n + 1) : ℚ) / 2

end

end A070216.P12317849213122974215

namespace A070216

/-- `(A215631(n+1)+A215630(n+1))/2` -/
def P12317849213122974215.Spec : Prop :=
  ∀ n, P12317849213122974215.a n = (A070216 (n + 1) : ℚ)

end A070216

/-! ## A070216.P13604058306388601918

`A038722(n+1)+A133819(n+1)+n`
-/

namespace A070216.P13604058306388601918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) + (A133819 (n + 1) + (n : ℤ))

end

end A070216.P13604058306388601918

namespace A070216

/-- `A038722(n+1)+A133819(n+1)+n` -/
def P13604058306388601918.Spec : Prop :=
  ∀ n, P13604058306388601918.a n = A070216 (n + 1)

end A070216

/-! ## A070216.P5043771377500974296

`A002024(n+1)²+A002260(n+1)²`
-/

namespace A070216.P5043771377500974296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) ^ 2 + A002260 (n + 1) ^ 2

end

end A070216.P5043771377500974296

namespace A070216

/-- `A002024(n+1)²+A002260(n+1)²` -/
def P5043771377500974296.Spec : Prop :=
  ∀ n, P5043771377500974296.a n = A070216 (n + 1)

end A070216

/-! ## A070216.P12203378707608020775

`A002024(n+1)²+A140756(n+1)²`
-/

namespace A070216.P12203378707608020775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) ^ 2 + A140756 (n + 1) ^ 2

end

end A070216.P12203378707608020775

namespace A070216

/-- `A002024(n+1)²+A140756(n+1)²` -/
def P12203378707608020775.Spec : Prop :=
  ∀ n, P12203378707608020775.a n = A070216 (n + 1)

end A070216

/-!
# A070217: Numbers not represented by a known atomic weight as given in Francis W. Aston's Nobel lecture in 1922.

The programs for A070217, there is no canonical definition to state claims against.
-/

/-! ## A070217.P7065593776107486761

`eq[A004526(A322528(n)), A057820(n+1)]`
-/

namespace A070217.P7065593776107486761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A322528 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070217.P7065593776107486761

/-! ## A070217.P15473156643635670739

`record[A239366(n)+A130540(n+1)]`
-/

namespace A070217.P15473156643635670739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239366 n + A130540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070217.P15473156643635670739

/-! ## A070217.P9809382332538437001

`record[A162154(n+1)]-A072786(n)`
-/

namespace A070217.P9809382332538437001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A072786 n

end

end A070217.P9809382332538437001

/-! ## A070217.P5074877797105050054

`eq[A002375(n+1), A327168(A259531(2*n+5))]`
-/

namespace A070217.P5074877797105050054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327168 (A259531 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070217.P5074877797105050054

/-!
# A070218: a(1) = 2; a(n) is the smallest prime greater than the sum of all previous terms.

The programs for A070218, there is no canonical definition to state claims against.
-/

/-! ## A070218.P10136996261573884073

`Δ[A063807(n)]`
-/

namespace A070218.P10136996261573884073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070218.P10136996261573884073

/-! ## A070218.P16259740685122633994

`A063807(n+1)-A063807(n)`
-/

namespace A070218.P16259740685122633994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063807 (n + 1) - A063807 n

end

end A070218.P16259740685122633994

/-! ## A070218.P28049808318459718

`Δ[A151800(a(n-1))+a(n-1)]` with `a(0)=0`
-/

namespace A070218.P28049808318459718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A151800 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070218.P28049808318459718

/-! ## A070218.P17755378140573054385

`A151800(and(-1, A063807(n)))`
-/

namespace A070218.P17755378140573054385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.land (-1) (A063807 n)).toNat

end

end A070218.P17755378140573054385

/-! ## A070218.P17107707819032662720

`A151800(A063807(n)+char[2])`
-/

namespace A070218.P17107707819032662720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A063807 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A070218.P17107707819032662720

/-!
# A070219: Smallest prime obtained as a concatenation of n and a number m greater than n.

The programs for A070219, there is no canonical definition to state claims against.
-/

/-! ## A070219.P467105064278579752

`A007918(A060054(2*n+3)+A001704(n+1))`
-/

namespace A070219.P467105064278579752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A060054 (2 * n + 3) + A001704 (n + 1)).toNat

end

end A070219.P467105064278579752

/-! ## A070219.P5170525164229758488

`A000015(A001704(n+1)^A333844(n+1))`
-/

namespace A070219.P5170525164229758488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (SequenceMachineLib.roundAway ((A001704 (n + 1) : ℚ) ^ (A333844 (n + 1) : ℤ))).toNat

end

end A070219.P5170525164229758488

/-! ## A070219.P422701559705720135

`A007918(A001704(n+1)^A333844(n+1))`
-/

namespace A070219.P422701559705720135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (SequenceMachineLib.roundAway ((A001704 (n + 1) : ℚ) ^ (A333844 (n + 1) : ℤ))).toNat

end

end A070219.P422701559705720135

/-! ## A070219.P4077513986072142080

`A000015(A127421(n+2)^A333844(n+1))`
-/

namespace A070219.P4077513986072142080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (SequenceMachineLib.roundAway ((A127421 (n + 2) : ℚ) ^ (A333844 (n + 1) : ℤ))).toNat

end

end A070219.P4077513986072142080

/-! ## A070219.P12172700492332416

`A007918(A127421(n+2)^A333844(n+1))`
-/

namespace A070219.P12172700492332416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (SequenceMachineLib.roundAway ((A127421 (n + 2) : ℚ) ^ (A333844 (n + 1) : ℤ))).toNat

end

end A070219.P12172700492332416

/-!
# A070220: Primes of the form n (written in base 10) followed by n 1's.

The programs for A070220, there is no canonical definition to state claims against.
-/

/-! ## A070220.P650632013022141893

`A075858(A068817(n+1))`
-/

namespace A070220.P650632013022141893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075858 (A068817 (n + 1)).toNat

end

end A070220.P650632013022141893

/-!
# A070221: a(n)=LPF(n+1)-LPF(n), where LPF(n) denotes the largest prime factor of n.

The programs for A070221, the canonical program `A070221.P2249143978924678585` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070221 has offset 2).

The definition of A070221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070221.P2249143978924678585

`Δ[A006530(n+2)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A070221

/-- `Δ[A006530(n+2)]` -/
def P2249143978924678585.Spec : Prop :=
  ∀ n, P2249143978924678585.a n = A070221 (n + 2)

theorem P2249143978924678585.correct : P2249143978924678585.Spec := by
  intro n
  simp only [A070221, Nat.add_sub_cancel]

end A070221

/-! ## A070221.P12388385903173557021

`A006530(n+3)-A006530(n+2)`
-/

namespace A070221.P12388385903173557021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3) - A006530 (n + 2)

end

end A070221.P12388385903173557021

namespace A070221

/-- `A006530(n+3)-A006530(n+2)` -/
def P12388385903173557021.Spec : Prop :=
  ∀ n, P12388385903173557021.a n = A070221 (n + 2)

theorem P12388385903173557021.correct : P12388385903173557021.Spec := by
  intro n
  simp only [A070221, Nat.add_sub_cancel, A070221.P12388385903173557021.a, A070221.P2249143978924678585.f1, A070221.P2249143978924678585.a, SequenceMachineLib.memo_apply]

end A070221

/-! ## A070221.P6325397913729066154

`Δ[A070777(n+2)]`
-/

namespace A070221.P6325397913729066154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070777 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070221.P6325397913729066154

namespace A070221

/-- `Δ[A070777(n+2)]` -/
def P6325397913729066154.Spec : Prop :=
  ∀ n, P6325397913729066154.a n = A070221 (n + 2)

end A070221

/-! ## A070221.P15084869483690786331

`Δ[A111089(n+2)]`
-/

namespace A070221.P15084869483690786331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070221.P15084869483690786331

namespace A070221

/-- `Δ[A111089(n+2)]` -/
def P15084869483690786331.Spec : Prop :=
  ∀ n, P15084869483690786331.a n = A070221 (n + 2)

end A070221

/-! ## A070221.P5039612086227040581

`Δ[Δ[A046670(n+1)]]`
-/

namespace A070221.P5039612086227040581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046670 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070221.P5039612086227040581

namespace A070221

/-- `Δ[Δ[A046670(n+1)]]` -/
def P5039612086227040581.Spec : Prop :=
  ∀ n, P5039612086227040581.a n = A070221 (n + 2)

end A070221

/-! ## A070221.P9013921909238651570

`Δ[Δ[A088822(n+1)]]`
-/

namespace A070221.P9013921909238651570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088822 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070221.P9013921909238651570

namespace A070221

/-- `Δ[Δ[A088822(n+1)]]` -/
def P9013921909238651570.Spec : Prop :=
  ∀ n, P9013921909238651570.a n = A070221 (n + 2)

end A070221

/-! ## A070221.P5561177488749420261

`Δ[A070229(n+2)]-1`
-/

namespace A070221.P5561177488749420261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A070221.P5561177488749420261

namespace A070221

/-- `Δ[A070229(n+2)]-1` -/
def P5561177488749420261.Spec : Prop :=
  ∀ n, P5561177488749420261.a n = A070221 (n + 2)

end A070221

/-! ## A070221.P9718227002212256605

`A070777(n+3)-A070777(n+2)`
-/

namespace A070221.P9718227002212256605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070777 (n + 3) - A070777 (n + 2)

end

end A070221.P9718227002212256605

namespace A070221

/-- `A070777(n+3)-A070777(n+2)` -/
def P9718227002212256605.Spec : Prop :=
  ∀ n, P9718227002212256605.a n = A070221 (n + 2)

end A070221

/-! ## A070221.P521922251299985673

`A111089(n+3)-A111089(n+2)`
-/

namespace A070221.P521922251299985673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 3) - A111089 (n + 2)

end

end A070221.P521922251299985673

namespace A070221

/-- `A111089(n+3)-A111089(n+2)` -/
def P521922251299985673.Spec : Prop :=
  ∀ n, P521922251299985673.a n = A070221 (n + 2)

end A070221

/-! ## A070221.P15004430983011304674

`Δ[p?[A285904(n+1)]]`
-/

namespace A070221.P15004430983011304674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285904 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070221.P15004430983011304674

namespace A070221

/-- `Δ[p?[A285904(n+1)]]` -/
def P15004430983011304674.Spec : Prop :=
  ∀ n, P15004430983011304674.a n = A070221 (n + 2)

end A070221

/-! ## A070221.P10617877795859625709

`Δ[A082061((n+2)²)]`
-/

namespace A070221.P10617877795859625709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 ((n + 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070221.P10617877795859625709

namespace A070221

/-- `Δ[A082061((n+2)²)]` -/
def P10617877795859625709.Spec : Prop :=
  ∀ n, P10617877795859625709.a n = A070221 (n + 2)

end A070221

/-!
# A070223: Square roots of A069191, sorted.

The programs for A070223, there is no canonical definition to state claims against.
-/

/-! ## A070223.P5339309085796281367

`lt[0, char[A228552(n+1)]]`
-/

namespace A070223.P5339309085796281367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228552 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070223.P5339309085796281367

/-! ## A070223.P13404579278666141207

`eq[1, char[A228552(n+2)]]`
-/

namespace A070223.P13404579278666141207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228552 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070223.P13404579278666141207

/-! ## A070223.P11677175106346202129

`record[n*char[A228552(n+3)]]`
-/

namespace A070223.P11677175106346202129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228552 (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070223.P11677175106346202129

/-! ## A070223.P11647101510003135073

`record[A178139(n+2)-A000007(A118135(n))]`
-/

namespace A070223.P11647101510003135073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178139 (n + 2) - A000007 (A118135 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070223.P11647101510003135073

/-! ## A070223.P4973001806703084346

`lt[n², A285714(A078471(3*n+4))]`
-/

namespace A070223.P4973001806703084346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285714 (A078471 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A070223.P4973001806703084346

/-!
# A070224: Numbers k such that the sum of p^2, where p are the prime divisors of k, divides the sum of d^2, where d are the divisors of k.

The programs for A070224, there is no canonical definition to state claims against.
-/

/-! ## A070224.P16418518159078343113

`A290965(A073360(n+2))`
-/

namespace A070224.P16418518159078343113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290965 (A073360 (n + 2)).toNat

end

end A070224.P16418518159078343113

/-!
# A070225: Numbers k such that (sigma(k)-k) - Sum_{p|k} p^2 = -1.

The programs for A070225, there is no canonical definition to state claims against.
-/

/-! ## A070225.P16852030114912761038

`A242415(lcm(4, A094743(n+1)))`
-/

namespace A070225.P16852030114912761038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242415 (Int.lcm 4 (A094743 (n + 1)))

end

end A070225.P16852030114912761038

/-! ## A070225.P11828358593634880648

`record[A251720(n+1)/A074927(n+1)]`
-/

namespace A070225.P11828358593634880648
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251720 (n + 1) : ℚ) / (A074927 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070225.P11828358593634880648

/-! ## A070225.P12651123839228378053

`record[lcm(A001248(n+1), A076555(n+1))]`
-/

namespace A070225.P12651123839228378053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001248 (n + 1)) (A076555 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070225.P12651123839228378053

/-! ## A070225.P11777103666150559731

`record[lcm(A005063(n+2), A008472(n+4))]`
-/

namespace A070225.P11777103666150559731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005063 (n + 2)) (A008472 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070225.P11777103666150559731

/-! ## A070225.P7373816489508955027

`record[lcm(A066048(n+2), A134194(n+4))]`
-/

namespace A070225.P7373816489508955027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A066048 (n + 2)) (A134194 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070225.P7373816489508955027

/-!
# A070226: Numbers k such that the squarefree kernel of k is equal to the number of divisors of k.

The programs for A070226, there is no canonical definition to state claims against.
-/

/-! ## A070226.P8218629942060970809

`∩[A081381(n+1), A396949(n+1)]`
-/

namespace A070226.P8218629942060970809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070226.P8218629942060970809

/-! ## A070226.P15198287911473621458

`∩[A120737(n+1), A396949(n+1)]`
-/

namespace A070226.P15198287911473621458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070226.P15198287911473621458

/-! ## A070226.P9130379364108719016

`∩[A235524(n+1), A396949(n+1)]`
-/

namespace A070226.P9130379364108719016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070226.P9130379364108719016

/-! ## A070226.P2083813459454410466

`record[A008966(A039819(n+1))*A033950(n+1)]`
-/

namespace A070226.P2083813459454410466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A039819 (n + 1)).toNat * A033950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070226.P2083813459454410466

/-! ## A070226.P12396224361843954587

`eq[n, A318519(A028310(n))]`
-/

namespace A070226.P12396224361843954587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318519 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070226.P12396224361843954587

/-!
# A070227: a(n) = Sum_{k>=0} (k+n)!^n/((k+n)!*(k!^n)*exp(1)).

The programs for A070227, there is no canonical definition to state claims against.
-/

/-! ## A070227.P17069935002752832329

`A090210(∏{e}[12^n, #])`
-/

namespace A070227.P17069935002752832329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090210 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A070227.P17069935002752832329

/-!
# A070228: Number of perfect powers (A001597) not exceeding 2^n.

The programs for A070228, there is no canonical definition to state claims against.
-/

/-! ## A070228.P5190648872854994381

`A188951(n)+1-char[1]`
-/

namespace A070228.P5190648872854994381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188951 n + (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A070228.P5190648872854994381

/-! ## A070228.P1774366581069186915

`A188951(n)+1-A063524(n)`
-/

namespace A070228.P1774366581069186915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188951 n + 1 - A063524 n

end

end A070228.P1774366581069186915

/-! ## A070228.P14674801143553693067

`A267869(n+5)+A188951(n)`
-/

namespace A070228.P14674801143553693067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267869 (n + 5) + A188951 n

end

end A070228.P14674801143553693067

/-! ## A070228.P903299109358773628

`A188951(n)+1-A079979(A318990(n+1))`
-/

namespace A070228.P903299109358773628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188951 n + 1 - A079979 (A318990 (n + 1)).toNat

end

end A070228.P903299109358773628

/-! ## A070228.P10791157849259262098

`A188951(n)%A045891(n)+1`
-/

namespace A070228.P10791157849259262098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188951 n) (A045891 n) + 1

end

end A070228.P10791157849259262098

/-! ## A070228.P7214769799954728799

`A062762(n)-A394768(n)`
-/

namespace A070228.P7214769799954728799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062762 n - A394768 n

end

end A070228.P7214769799954728799

/-! ## A070228.P1339065744519690431

`A267704(n²)+A188951(n)`
-/

namespace A070228.P1339065744519690431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267704 (n ^ 2) + A188951 n

end

end A070228.P1339065744519690431

/-!
# A070229: Next m>n such that m is divisible by lpf(n), lpf=A006530 largest prime factor.

The programs for A070229, the canonical program `A070229.P5792893597916963980` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070229 has offset 1).

The definition of A070229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070229.P11682460205273147938

`n+1+A006530(n+1)`
-/

namespace A070229.P11682460205273147938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A006530 (n + 1)

end

end A070229.P11682460205273147938

namespace A070229

/-- `n+1+A006530(n+1)` -/
def P11682460205273147938.Spec : Prop :=
  ∀ n, P11682460205273147938.a n = A070229 (n + 1)

end A070229

/-! ## A070229.P2440826443900369215

`A053585(∏{p}[n+1, #])+1+n`
-/

namespace A070229.P2440826443900369215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (∏ p ∈ Nat.primeFactors (f1 n), p) + 1 + (n : ℤ)

end

end A070229.P2440826443900369215

namespace A070229

/-- `A053585(∏{p}[n+1, #])+1+n` -/
def P2440826443900369215.Spec : Prop :=
  ∀ n, P2440826443900369215.a n = A070229 (n + 1)

end A070229

/-! ## A070229.P16599994137691520234

`A217434(∏{p}[n+1, #])+1+n`
-/

namespace A070229.P16599994137691520234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (∏ p ∈ Nat.primeFactors (f1 n), p) + 1 + (n : ℤ)

end

end A070229.P16599994137691520234

namespace A070229

/-- `A217434(∏{p}[n+1, #])+1+n` -/
def P16599994137691520234.Spec : Prop :=
  ∀ n, P16599994137691520234.a n = A070229 (n + 1)

end A070229

/-! ## A070229.P14292532264482144954

`A345941(∏{p}[n+1, #])+n+1`
-/

namespace A070229.P14292532264482144954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345941 (∏ p ∈ Nat.primeFactors (f1 n), p) + (n + 1 : ℤ)

end

end A070229.P14292532264482144954

namespace A070229

/-- `A345941(∏{p}[n+1, #])+n+1` -/
def P14292532264482144954.Spec : Prop :=
  ∀ n, P14292532264482144954.a n = A070229 (n + 1)

end A070229

/-! ## A070229.P15258833789932842411

`(n+1)/A052126(n+1)+1+n`
-/

namespace A070229.P15258833789932842411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A052126 (n + 1) : ℚ) + 1 + (n : ℚ)

end

end A070229.P15258833789932842411

namespace A070229

/-- `(n+1)/A052126(n+1)+1+n` -/
def P15258833789932842411.Spec : Prop :=
  ∀ n, P15258833789932842411.a n = (A070229 (n + 1) : ℚ)

end A070229

/-! ## A070229.P8184267254125856974

`A253560(n+1)/(n+1)+n+1`
-/

namespace A070229.P8184267254125856974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253560 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A070229.P8184267254125856974

namespace A070229

/-- `A253560(n+1)/(n+1)+n+1` -/
def P8184267254125856974.Spec : Prop :=
  ∀ n, P8184267254125856974.a n = (A070229 (n + 1) : ℚ)

end A070229

/-! ## A070229.P13309156168128409234

`2*n-(n-1-A006530(2*n-(n-1)))`
-/

namespace A070229.P13309156168128409234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1 - A006530 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat)

end

end A070229.P13309156168128409234

namespace A070229

/-- `2*n-(n-1-A006530(2*n-(n-1)))` -/
def P13309156168128409234.Spec : Prop :=
  ∀ n, P13309156168128409234.a n = A070229 (n + 1)

end A070229

/-! ## A070229.P15756730320781485063

`A020725(A006530(n+1))+n`
-/

namespace A070229.P15756730320781485063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A006530 (n + 1)).toNat + (n : ℤ)

end

end A070229.P15756730320781485063

namespace A070229

/-- `A020725(A006530(n+1))+n` -/
def P15756730320781485063.Spec : Prop :=
  ∀ n, P15756730320781485063.a n = A070229 (n + 1)

end A070229

/-! ## A070229.P5792893597916963980

`A028815(A061395(n+1))+n`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A070229

/-- `A028815(A061395(n+1))+n` -/
def P5792893597916963980.Spec : Prop :=
  ∀ n, P5792893597916963980.a n = A070229 (n + 1)

theorem P5792893597916963980.correct : P5792893597916963980.Spec := by
  intro n
  simp only [A070229, Nat.add_sub_cancel]

end A070229

/-! ## A070229.P11908522075407521408

`A122416(A007947(n+1))+n`
-/

namespace A070229.P11908522075407521408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122416 (A007947 (n + 1)).toNat + (n : ℤ)

end

end A070229.P11908522075407521408

namespace A070229

/-- `A122416(A007947(n+1))+n` -/
def P11908522075407521408.Spec : Prop :=
  ∀ n, P11908522075407521408.a n = A070229 (n + 1)

end A070229

/-! ## A070229.P11671491398283069912

`A020639(A053585(n+1))+1+n`
-/

namespace A070229.P11671491398283069912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053585 (n + 1)).toNat + 1 + (n : ℤ)

end

end A070229.P11671491398283069912

namespace A070229

/-- `A020639(A053585(n+1))+1+n` -/
def P11671491398283069912.Spec : Prop :=
  ∀ n, P11671491398283069912.a n = A070229 (n + 1)

end A070229

/-! ## A070229.P11898421959652400695

`A002034(A088835(n+1))+1+n`
-/

namespace A070229.P11898421959652400695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A088835 (n + 1)).toNat + 1 + (n : ℤ)

end

end A070229.P11898421959652400695

namespace A070229

/-- `A002034(A088835(n+1))+1+n` -/
def P11898421959652400695.Spec : Prop :=
  ∀ n, P11898421959652400695.a n = A070229 (n + 1)

end A070229

/-! ## A070229.P17557251808464478436

`A061228(n+1)+A046665(n+1)`
-/

namespace A070229.P17557251808464478436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (n + 1) + A046665 (n + 1)

end

end A070229.P17557251808464478436

namespace A070229

/-- `A061228(n+1)+A046665(n+1)` -/
def P17557251808464478436.Spec : Prop :=
  ∀ n, P17557251808464478436.a n = A070229 (n + 1)

end A070229

/-! ## A070229.P10702558608603639052

`A002034(A109395(n+1))+1+n`
-/

namespace A070229.P10702558608603639052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A109395 (n + 1)).toNat + 1 + (n : ℤ)

end

end A070229.P10702558608603639052

namespace A070229

/-- `A002034(A109395(n+1))+1+n` -/
def P10702558608603639052.Spec : Prop :=
  ∀ n, P10702558608603639052.a n = A070229 (n + 1)

end A070229

/-! ## A070229.P7798833479917985970

`A070777(n+1)+A065475(n+1)`
-/

namespace A070229.P7798833479917985970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070777 (n + 1) + A065475 (n + 1)

end

end A070229.P7798833479917985970

namespace A070229

/-- `A070777(n+1)+A065475(n+1)` -/
def P7798833479917985970.Spec : Prop :=
  ∀ n, P7798833479917985970.a n = A070229 (n + 1)

end A070229

/-! ## A070229.P13903605769904379673

`A083718(n+1)+A064722(n+1)`
-/

namespace A070229.P13903605769904379673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083718 (n + 1) + A064722 (n + 1)

end

end A070229.P13903605769904379673

namespace A070229

/-- `A083718(n+1)+A064722(n+1)` -/
def P13903605769904379673.Spec : Prop :=
  ∀ n, P13903605769904379673.a n = A070229 (n + 1)

end A070229

/-! ## A070229.P17869089536830651497

`A079068(A117366(n+1))+1+n`
-/

namespace A070229.P17869089536830651497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A117366 (n + 1)).toNat + 1 + (n : ℤ)

end

end A070229.P17869089536830651497

namespace A070229

/-- `A079068(A117366(n+1))+1+n` -/
def P17869089536830651497.Spec : Prop :=
  ∀ n, P17869089536830651497.a n = A070229 (n + 1)

end A070229

/-! ## A070229.P10749459361613972742

`A111089(n+1)+A087156(n+1)`
-/

namespace A070229.P10749459361613972742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1) + A087156 (n + 1)

end

end A070229.P10749459361613972742

namespace A070229

/-- `A111089(n+1)+A087156(n+1)` -/
def P10749459361613972742.Spec : Prop :=
  ∀ n, P10749459361613972742.a n = A070229 (n + 1)

end A070229

/-! ## A070229.P15605872896100860074

`A053585(A243074(n+1))+n+1`
-/

namespace A070229.P15605872896100860074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A243074 (n + 1)).toNat + (n + 1 : ℤ)

end

end A070229.P15605872896100860074

namespace A070229

/-- `A053585(A243074(n+1))+n+1` -/
def P15605872896100860074.Spec : Prop :=
  ∀ n, P15605872896100860074.a n = A070229 (n + 1)

end A070229

/-! ## A070229.P6962262623568285282

`A020639(A345941(n+1))+1+n`
-/

namespace A070229.P6962262623568285282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A345941 (n + 1)).toNat + 1 + (n : ℤ)

end

end A070229.P6962262623568285282

namespace A070229

/-- `A020639(A345941(n+1))+1+n` -/
def P6962262623568285282.Spec : Prop :=
  ∀ n, P6962262623568285282.a n = A070229 (n + 1)

end A070229

/-!
# A070230: Let S_n ={p_n + q : p_n is the n-th odd prime and q runs through odd primes not greater than p_n}; sequence gives size of S_n intersect S_(n+1).

The programs for A070230, there is no canonical definition to state claims against.
-/

/-! ## A070230.P13602975691789297552

`A000120(A048018(n+1)+A000975(n))`
-/

namespace A070230.P13602975691789297552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A048018 (n + 1) + A000975 n).toNat

end

end A070230.P13602975691789297552

/-!
# A070231: Let u(k), v(k), w(k) satisfy the recursions u(1) = v(1) = w(1) = 1, u(k+1) = u(k) + v(k) + w(k), v(k+1) = u(k)*v(k) + v(k)*w(k) + w(k)*u(k), and w(k+1) = u(k)*v(k)*w(k) for k >= 1; then a(n) = u(n).

The programs for A070231, there is no canonical definition to state claims against.
-/

/-! ## A070231.P14476540345229060315

`ratio[A070233(n+1)]/A070234(n+1)`
-/

namespace A070231.P14476540345229060315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070233 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) / (A070234 (n + 1) : ℚ)

end

end A070231.P14476540345229060315

/-! ## A070231.P15529352987636049270

`A070233(n+2)/(A070233(n+1)*A070234(n+1))`
-/

namespace A070231.P15529352987636049270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070233 (n + 2) : ℚ) / (A070233 (n + 1) * A070234 (n + 1) : ℚ)

end

end A070231.P15529352987636049270

/-!
# A070232: a(1) = 4; a(n) = smallest composite number greater than the sum of all previous terms.

The programs for A070232, the canonical program `A070232.P12886136296498931947` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070232 has offset 1).

The definition of A070232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070232.P14032770487396902430

`ogf((-4+2x+x^5)/(-1+2x))`
-/

namespace A070232.P14032770487396902430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -2, 0, 0, 0, -1] [1, -2] n

end

end A070232.P14032770487396902430

namespace A070232

/-- `ogf((-4+2x+x^5)/(-1+2x))` -/
def P14032770487396902430.Spec : Prop :=
  ∀ n, P14032770487396902430.a n = A070232 (n + 1)

end A070232

/-! ## A070232.P12886136296498931947

`2*a(n-1)-char[5]` with `a(0)=4, a(1)=6`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070232

/-- `2*a(n-1)-char[5]` -/
def P12886136296498931947.Spec : Prop :=
  ∀ n, P12886136296498931947.a n = A070232 (n + 1)

theorem P12886136296498931947.correct : P12886136296498931947.Spec := by
  intro n
  simp only [A070232, Nat.add_sub_cancel]

end A070232

/-! ## A070232.P17516352502865303471

`a(n-1)+a(n-1)-char[5]` with `a(0)=4, a(1)=6`
-/

namespace A070232.P17516352502865303471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n a =>
  a (n - 1) + (a (n - 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A070232.P17516352502865303471

namespace A070232

/-- `a(n-1)+a(n-1)-char[5]` -/
def P17516352502865303471.Spec : Prop :=
  ∀ n, P17516352502865303471.a n = A070232 (n + 1)

theorem P17516352502865303471.correct : P17516352502865303471.Spec := by
  intro n
  simp only [A070232, Nat.add_sub_cancel, A070232.P17516352502865303471.f1, A070232.P17516352502865303471.a, A070232.P12886136296498931947.f1, A070232.P12886136296498931947.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A070232

/-! ## A070232.P8393886688956717386

`a(n-1)-(char[5]-a(n-1))` with `a(0)=4, a(1)=6`
-/

namespace A070232.P8393886688956717386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1))

end

end A070232.P8393886688956717386

namespace A070232

/-- `a(n-1)-(char[5]-a(n-1))` -/
def P8393886688956717386.Spec : Prop :=
  ∀ n, P8393886688956717386.a n = A070232 (n + 1)

theorem P8393886688956717386.correct : P8393886688956717386.Spec := by
  intro n
  simp only [A070232, Nat.add_sub_cancel, A070232.P8393886688956717386.f1, A070232.P8393886688956717386.a, A070232.P12886136296498931947.f1, A070232.P12886136296498931947.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A070232

/-! ## A070232.P5881718596318439831

`A058764(n+1)-A053473(A000079(n))`
-/

namespace A070232.P5881718596318439831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058764 (n + 1) - A053473 (A000079 n).toNat

end

end A070232.P5881718596318439831

namespace A070232

/-- `A058764(n+1)-A053473(A000079(n))` -/
def P5881718596318439831.Spec : Prop :=
  ∀ n, P5881718596318439831.a n = A070232 (n + 1)

end A070232

/-!
# A070233: Let u(k), v(k), w(k) satisfy the recursions u(1) = v(1) = w(1) = 1, u(k+1) = u(k) + v(k) + w(k), v(k+1) = u(k)*v(k) + v(k)*w(k) + w(k)*u(k), and w(k+1) = u(k)*v(k)*w(k) for k >= 1; then a(n) = w(n).

The programs for A070233, there is no canonical definition to state claims against.
-/

/-! ## A070233.P4933304396127341888

`Δ[A070231(n+1)]-A070234(n+1)`
-/

namespace A070233.P4933304396127341888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A070234 (n + 1)

end

end A070233.P4933304396127341888

/-! ## A070233.P4499557871253173000

`A070231(n+2)-(A070234(n+1)+A070231(n+1))`
-/

namespace A070233.P4499557871253173000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070231 (n + 2) - (A070234 (n + 1) + A070231 (n + 1))

end

end A070233.P4499557871253173000

/-!
# A070234: Let u(k), v(k), w(k) satisfy the recursions u(1) = v(1) = w(1) = 1, u(k+1) = u(k) + v(k) + w(k), v(k+1) = u(k)*v(k) + v(k)*w(k) + w(k)*u(k), and w(k+1) = u(k)*v(k)*w(k); then a(n) = v(n).

The programs for A070234, there is no canonical definition to state claims against.
-/

/-! ## A070234.P9227382358027322132

`Δ[A070231(n+1)]-A070233(n+1)`
-/

namespace A070234.P9227382358027322132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A070233 (n + 1)

end

end A070234.P9227382358027322132

/-! ## A070234.P17625359689889579087

`A070231(n+2)-(A070233(n+1)+A070231(n+1))`
-/

namespace A070234.P17625359689889579087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070231 (n + 2) - (A070233 (n + 1) + A070231 (n + 1))

end

end A070234.P17625359689889579087

/-! ## A070234.P11946435621327928184

`A070233(n+2)/(A070231(n+1)*A070233(n+1))`
-/

namespace A070234.P11946435621327928184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070233 (n + 2) : ℚ) / (A070231 (n + 1) * A070233 (n + 1) : ℚ)

end

end A070234.P11946435621327928184

/-!
# A070235: Number of partitions of 3^n into distinct terms.

The programs for A070235, there is no canonical definition to state claims against.
-/

/-! ## A070235.P15894491035229975044

`A000009(3^n)`
-/

namespace A070235.P15894491035229975044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (3 ^ n)

end

end A070235.P15894491035229975044

/-! ## A070235.P2917924798120965066

`A053197(3^n)`
-/

namespace A070235.P2917924798120965066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053197 (3 ^ n)

end

end A070235.P2917924798120965066

/-! ## A070235.P15026451585372454239

`A282892(3^n)`
-/

namespace A070235.P15026451585372454239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282892 (3 ^ n)

end

end A070235.P15026451585372454239

/-! ## A070235.P4391976166385325270

`abs(A081360(3^n))`
-/

namespace A070235.P4391976166385325270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 (3 ^ n)|

end

end A070235.P4391976166385325270

/-! ## A070235.P12496215775334650654

`∑[A078374(3^n)]`
-/

namespace A070235.P12496215775334650654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078374 (3 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070235.P12496215775334650654

/-!
# A070236: a(n) = Sum_{k=1..n} (core(k) - phi(k)), where core(k) is the squarefree part of k.

The programs for A070236, the canonical program `A070236.P13553058838220906984` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070236 has offset 1).

The definition of A070236 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, A069891, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A070236.P13553058838220906984

`A069891(n+1)-A002088(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A070236

/-- `A069891(n+1)-A002088(n+1)` -/
def P13553058838220906984.Spec : Prop :=
  ∀ n, P13553058838220906984.a n = A070236 (n + 1)

theorem P13553058838220906984.correct : P13553058838220906984.Spec := by
  intro n
  simp only [A070236, Nat.add_sub_cancel]

end A070236

/-! ## A070236.P4307273775411942750

`∑[A007913(n+1)-Δ[A002088(n)]]`
-/

namespace A070236.P4307273775411942750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070236.P4307273775411942750

namespace A070236

/-- `∑[A007913(n+1)-Δ[A002088(n)]]` -/
def P4307273775411942750.Spec : Prop :=
  ∀ n, P4307273775411942750.a n = A070236 (n + 1)

end A070236

/-! ## A070236.P9269167948143618686

`∑[A007913(n+1)-Δ[A005728(n)]]`
-/

namespace A070236.P9269167948143618686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070236.P9269167948143618686

namespace A070236

/-- `∑[A007913(n+1)-Δ[A005728(n)]]` -/
def P9269167948143618686.Spec : Prop :=
  ∀ n, P9269167948143618686.a n = A070236 (n + 1)

end A070236

/-! ## A070236.P4963014916780960603

`∑[A007913(n+1)-A000010(n+1)]`
-/

namespace A070236.P4963014916780960603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) - A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070236.P4963014916780960603

namespace A070236

/-- `∑[A007913(n+1)-A000010(n+1)]` -/
def P4963014916780960603.Spec : Prop :=
  ∀ n, P4963014916780960603.a n = A070236 (n + 1)

end A070236

/-! ## A070236.P18100934809603943696

`∑[A007913(n+1)]-A002088(n+1)`
-/

namespace A070236.P18100934809603943696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002088 (n + 1)

end

end A070236.P18100934809603943696

namespace A070236

/-- `∑[A007913(n+1)]-A002088(n+1)` -/
def P18100934809603943696.Spec : Prop :=
  ∀ n, P18100934809603943696.a n = A070236 (n + 1)

end A070236

/-! ## A070236.P3161506991814621531

`∑[A051612(n+1)-A326126(n+1)]`
-/

namespace A070236.P3161506991814621531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1) - A326126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070236.P3161506991814621531

namespace A070236

/-- `∑[A051612(n+1)-A326126(n+1)]` -/
def P3161506991814621531.Spec : Prop :=
  ∀ n, P3161506991814621531.a n = A070236 (n + 1)

end A070236

/-! ## A070236.P18305049257025945403

`∑[A007913(n+1)+1-A039649(n+1)]`
-/

namespace A070236.P18305049257025945403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) + (1 - A039649 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070236.P18305049257025945403

namespace A070236

/-- `∑[A007913(n+1)+1-A039649(n+1)]` -/
def P18305049257025945403.Spec : Prop :=
  ∀ n, P18305049257025945403.a n = A070236 (n + 1)

end A070236

/-! ## A070236.P10462182308640508968

`∑[A007913(n+1)-(A109606(n+1)+1)]`
-/

namespace A070236.P10462182308640508968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) - (A109606 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070236.P10462182308640508968

namespace A070236

/-- `∑[A007913(n+1)-(A109606(n+1)+1)]` -/
def P10462182308640508968.Spec : Prop :=
  ∀ n, P10462182308640508968.a n = A070236 (n + 1)

end A070236

/-! ## A070236.P9722759166052250288

`∑[A007913(n+1)+A219428(n+1)-n]`
-/

namespace A070236.P9722759166052250288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) + (A219428 (n + 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070236.P9722759166052250288

namespace A070236

/-- `∑[A007913(n+1)+A219428(n+1)-n]` -/
def P9722759166052250288.Spec : Prop :=
  ∀ n, P9722759166052250288.a n = A070236 (n + 1)

end A070236

/-! ## A070236.P11620559703930848855

`∑[A007913(n+1)-(1-A051953(n+1)+n)]`
-/

namespace A070236.P11620559703930848855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) - (1 - A051953 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070236.P11620559703930848855

namespace A070236

/-- `∑[A007913(n+1)-(1-A051953(n+1)+n)]` -/
def P11620559703930848855.Spec : Prop :=
  ∀ n, P11620559703930848855.a n = A070236 (n + 1)

end A070236

/-! ## A070236.P17036371143464731657

`∑[gcd(n+1, A072905(n+1))-A000010(n+1)]`
-/

namespace A070236.P17036371143464731657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A072905 (n + 1)) : ℤ) - A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070236.P17036371143464731657

namespace A070236

/-- `∑[gcd(n+1, A072905(n+1))-A000010(n+1)]` -/
def P17036371143464731657.Spec : Prop :=
  ∀ n, P17036371143464731657.a n = A070236 (n + 1)

end A070236

/-! ## A070236.P9610822136359742548

`∑[A007913(n+1)-(n+1)/∏{p}[n+1, #]*A173557(n+1)]`
-/

namespace A070236.P9610822136359742548
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (n + 1) : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * (A173557 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070236.P9610822136359742548

namespace A070236

/-- `∑[A007913(n+1)-(n+1)/∏{p}[n+1, #]*A173557(n+1)]` -/
def P9610822136359742548.Spec : Prop :=
  ∀ n, P9610822136359742548.a n = (A070236 (n + 1) : ℚ)

end A070236

/-! ## A070236.P14169931433297393606

`∑[A007913(n+1)-(A300725(n+1)+A300724(n+1))]`
-/

namespace A070236.P14169931433297393606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) - (A300725 (n + 1) + A300724 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070236.P14169931433297393606

namespace A070236

/-- `∑[A007913(n+1)-(A300725(n+1)+A300724(n+1))]` -/
def P14169931433297393606.Spec : Prop :=
  ∀ n, P14169931433297393606.a n = A070236 (n + 1)

end A070236

/-! ## A070236.P7563611283724851236

`∑[A007913(n+1)-A002322(n+1)*A034380(n+1)]`
-/

namespace A070236.P7563611283724851236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) - A002322 (n + 1) * A034380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070236.P7563611283724851236

namespace A070236

/-- `∑[A007913(n+1)-A002322(n+1)*A034380(n+1)]` -/
def P7563611283724851236.Spec : Prop :=
  ∀ n, P7563611283724851236.a n = A070236 (n + 1)

end A070236

/-!
# A070238: Sign of core(n)-phi(n) where core(n) is the squarefree part of n and phi the Euler totient function.

The programs for A070238, the canonical program `A070238.P16120210470517707505` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070238 has offset 1).

The definition of A070238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070238.P6965213500759676439

`((n+1)*A059966(n+1))%4-1`
-/

namespace A070238.P6965213500759676439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A059966 (n + 1)) 4 - 1

end

end A070238.P6965213500759676439

namespace A070238

/-- `((n+1)*A059966(n+1))%4-1` -/
def P6965213500759676439.Spec : Prop :=
  ∀ n, P6965213500759676439.a n = A070238 (n + 1)

end A070238

/-! ## A070238.P16120210470517707505

`A057428(n)+and(2, A038199(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A070238

/-- `A057428(n)+and(2, A038199(n+1))` -/
def P16120210470517707505.Spec : Prop :=
  ∀ n, P16120210470517707505.a n = A070238 (n + 1)

theorem P16120210470517707505.correct : P16120210470517707505.Spec := by
  intro n
  simp only [A070238, Nat.add_sub_cancel]

end A070238

/-! ## A070238.P16314079943638189745

`A008683(ratio[A146523(n)]-A008683(n+1)²)`
-/

namespace A070238.P16314079943638189745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) - (A008683 (n + 1) ^ 2 : ℚ))).toNat

end

end A070238.P16314079943638189745

namespace A070238

/-- `A008683(ratio[A146523(n)]-A008683(n+1)²)` -/
def P16314079943638189745.Spec : Prop :=
  ∀ n, P16314079943638189745.a n = A070238 (n + 1)

end A070238

/-! ## A070238.P13857780806959743607

`A008966(n+1)-A008966(A243347(n+1))`
-/

namespace A070238.P13857780806959743607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) - A008966 (A243347 (n + 1)).toNat

end

end A070238.P13857780806959743607

namespace A070238

/-- `A008966(n+1)-A008966(A243347(n+1))` -/
def P13857780806959743607.Spec : Prop :=
  ∀ n, P13857780806959743607.a n = A070238 (n + 1)

end A070238

/-! ## A070238.P9297527422210273378

`A057428(n)^A151800(A008477(n+1))`
-/

namespace A070238.P9297527422210273378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057428 n : ℚ) ^ (A151800 (A008477 (n + 1)).toNat : ℤ)

end

end A070238.P9297527422210273378

namespace A070238

/-- `A057428(n)^A151800(A008477(n+1))` -/
def P9297527422210273378.Spec : Prop :=
  ∀ n, P9297527422210273378.a n = (A070238 (n + 1) : ℚ)

end A070238

/-! ## A070238.P3030916584883326217

`A299090(n+1)-A299090(A008833(n+1)²)`
-/

namespace A070238.P3030916584883326217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299090 (n + 1) - A299090 (A008833 (n + 1) ^ 2).toNat

end

end A070238.P3030916584883326217

namespace A070238

/-- `A299090(n+1)-A299090(A008833(n+1)²)` -/
def P3030916584883326217.Spec : Prop :=
  ∀ n, P3030916584883326217.a n = A070238 (n + 1)

end A070238

/-! ## A070238.P16665203836616171007

`A295304(A020639(A140697(n+1)))`
-/

namespace A070238.P16665203836616171007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295304 (A020639 (A140697 (n + 1)).toNat).toNat

end

end A070238.P16665203836616171007

namespace A070238

/-- `A295304(A020639(A140697(n+1)))` -/
def P16665203836616171007.Spec : Prop :=
  ∀ n, P16665203836616171007.a n = A070238 (n + 1)

end A070238

/-! ## A070238.P4405982012719231537

`A008966(n+1)-A036987(A202535(n+1))`
-/

namespace A070238.P4405982012719231537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) - A036987 (A202535 (n + 1)).toNat

end

end A070238.P4405982012719231537

namespace A070238

/-- `A008966(n+1)-A036987(A202535(n+1))` -/
def P4405982012719231537.Spec : Prop :=
  ∀ n, P4405982012719231537.a n = A070238 (n + 1)

end A070238

/-! ## A070238.P5032444537358514545

`A105812(A111217(n+1))`
-/

namespace A070238.P5032444537358514545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (A111217 (n + 1)).toNat

end

end A070238.P5032444537358514545

namespace A070238

/-- `A105812(A111217(n+1))` -/
def P5032444537358514545.Spec : Prop :=
  ∀ n, P5032444537358514545.a n = A070238 (n + 1)

end A070238

/-! ## A070238.P14225324829508992918

`A009531(A339667(n+1))`
-/

namespace A070238.P14225324829508992918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A339667 (n + 1)).toNat

end

end A070238.P14225324829508992918

namespace A070238

/-- `A009531(A339667(n+1))` -/
def P14225324829508992918.Spec : Prop :=
  ∀ n, P14225324829508992918.a n = A070238 (n + 1)

end A070238

/-! ## A070238.P7068755907746788080

`A008683(A007423(n+1)^(A002033(n)+2)+1)`
-/

namespace A070238.P7068755907746788080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((A007423 (n + 1) : ℚ) ^ (A002033 n + 2 : ℤ) + 1)).toNat

end

end A070238.P7068755907746788080

namespace A070238

/-- `A008683(A007423(n+1)^(A002033(n)+2)+1)` -/
def P7068755907746788080.Spec : Prop :=
  ∀ n, P7068755907746788080.a n = A070238 (n + 1)

end A070238

/-! ## A070238.P17091145712934845019

`A062157(A277130(n+1))`
-/

namespace A070238.P17091145712934845019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A277130 (n + 1)).toNat

end

end A070238.P17091145712934845019

namespace A070238

/-- `A062157(A277130(n+1))` -/
def P17091145712934845019.Spec : Prop :=
  ∀ n, P17091145712934845019.a n = A070238 (n + 1)

end A070238

/-! ## A070238.P15401576406635366086

`A279907(∑[n+1]+n-A007947(n+1)+1)`
-/

namespace A070238.P15401576406635366086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279907 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - A007947 (n + 1)) + 1).toNat

end

end A070238.P15401576406635366086

namespace A070238

/-- `A279907(∑[n+1]+n-A007947(n+1)+1)` -/
def P15401576406635366086.Spec : Prop :=
  ∀ n, P15401576406635366086.a n = A070238 (n + 1)

end A070238

/-! ## A070238.P3932475373099218525

`A117568(A286142(n+1))`
-/

namespace A070238.P3932475373099218525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117568 (A286142 (n + 1)).toNat

end

end A070238.P3932475373099218525

namespace A070238

/-- `A117568(A286142(n+1))` -/
def P3932475373099218525.Spec : Prop :=
  ∀ n, P3932475373099218525.a n = A070238 (n + 1)

end A070238

/-! ## A070238.P6010568773757697058

`A117568(A286143(n+1))`
-/

namespace A070238.P6010568773757697058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117568 (A286143 (n + 1)).toNat

end

end A070238.P6010568773757697058

namespace A070238

/-- `A117568(A286143(n+1))` -/
def P6010568773757697058.Spec : Prop :=
  ∀ n, P6010568773757697058.a n = A070238 (n + 1)

end A070238

/-! ## A070238.P16651179527856793579

`A301849(A284476(n+1))`
-/

namespace A070238.P16651179527856793579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301849 (A284476 (n + 1)).toNat

end

end A070238.P16651179527856793579

namespace A070238

/-- `A301849(A284476(n+1))` -/
def P16651179527856793579.Spec : Prop :=
  ∀ n, P16651179527856793579.a n = A070238 (n + 1)

end A070238

/-! ## A070238.P11903300158661110568

`A349907(A002033(n)²)-A005171(n+1)`
-/

namespace A070238.P11903300158661110568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349907 (A002033 n ^ 2).toNat - A005171 (n + 1)

end

end A070238.P11903300158661110568

namespace A070238

/-- `A349907(A002033(n)²)-A005171(n+1)` -/
def P11903300158661110568.Spec : Prop :=
  ∀ n, P11903300158661110568.a n = A070238 (n + 1)

end A070238

/-! ## A070238.P2530126401065727101

`A378219((n+1)²)-1`
-/

namespace A070238.P2530126401065727101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378219 ((n + 1) ^ 2) - 1

end

end A070238.P2530126401065727101

namespace A070238

/-- `A378219((n+1)²)-1` -/
def P2530126401065727101.Spec : Prop :=
  ∀ n, P2530126401065727101.a n = A070238 (n + 1)

end A070238

/-! ## A070238.P7673700231280689895

`A301849(A328400(n+1))`
-/

namespace A070238.P7673700231280689895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301849 (A328400 (n + 1)).toNat

end

end A070238.P7673700231280689895

namespace A070238

/-- `A301849(A328400(n+1))` -/
def P7673700231280689895.Spec : Prop :=
  ∀ n, P7673700231280689895.a n = A070238 (n + 1)

end A070238

/-! ## A070238.P16597141781199912014

`A301849(A046523(n+1))`
-/

namespace A070238.P16597141781199912014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301849 (A046523 (n + 1)).toNat

end

end A070238.P16597141781199912014

namespace A070238

/-- `A301849(A046523(n+1))` -/
def P16597141781199912014.Spec : Prop :=
  ∀ n, P16597141781199912014.a n = A070238 (n + 1)

end A070238

/-!
# A070239: a(1) = 1; a(2) = 2; a(n) = sigma_a[n-2] (a[n-1]), n > 2, where sigma_k (n) denotes the sum of the k-th powers of the divisors of n.

The programs for A070239, there is no canonical definition to state claims against.
-/

/-! ## A070239.P13781971841649380116

`∑[A145353(C(n, 2)!)]`
-/

namespace A070239.P13781971841649380116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145353 (Nat.factorial (Nat.choose n 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070239.P13781971841649380116

/-!
# A070242: a(n) = Card( k>0 : sigma(k)=sigma(n) ).

The programs for A070242, there is no canonical definition to state claims against.
-/

/-! ## A070242.P12885930861024029533

`A054973(A000203(n+1))`
-/

namespace A070242.P12885930861024029533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A000203 (n + 1)).toNat

end

end A070242.P12885930861024029533

/-! ## A070242.P7947263815500782427

`A263025(A325651(n+1))`
-/

namespace A070242.P7947263815500782427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263025 (A325651 (n + 1)).toNat

end

end A070242.P7947263815500782427

/-! ## A070242.P16778623387755991153

`A054973(∑{d}[n+1, #])`
-/

namespace A070242.P16778623387755991153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A070242.P16778623387755991153

/-! ## A070242.P3988277339137454519

`A054973(A039653(n+1)+1)`
-/

namespace A070242.P3988277339137454519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A039653 (n + 1) + 1).toNat

end

end A070242.P3988277339137454519

/-! ## A070242.P2910749734204826137

`A054973(A088580(n+1)-1)`
-/

namespace A070242.P2910749734204826137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A088580 (n + 1) - 1).toNat

end

end A070242.P2910749734204826137

/-! ## A070242.P17798347530749517018

`A054973(A245092(2*n+1))`
-/

namespace A070242.P17798347530749517018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A245092 (2 * n + 1)).toNat

end

end A070242.P17798347530749517018

/-! ## A070242.P10078513729353137873

`A054973(A074400(n+1)/2)`
-/

namespace A070242.P10078513729353137873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A070242.P10078513729353137873

/-! ## A070242.P3468648891711524140

`A054973(A146076(2*(n+1))/2)`
-/

namespace A070242.P3468648891711524140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (SequenceMachineLib.roundAway ((A146076 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A070242.P3468648891711524140

/-! ## A070242.P1991308394218160972

`A054973(A001065(n+1)+1+n)`
-/

namespace A070242.P1991308394218160972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A070242.P1991308394218160972

/-! ## A070242.P5180179178176701507

`A054973(A155085(n+1)-(n+1))`
-/

namespace A070242.P5180179178176701507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A155085 (n + 1) - (n + 1 : ℤ)).toNat

end

end A070242.P5180179178176701507

/-! ## A070242.P5997341501855739204

`A054973(A064987(n+1)/(n+1))`
-/

namespace A070242.P5997341501855739204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A070242.P5997341501855739204

/-! ## A070242.P6370287353949528476

`A054973(A048146(n+1)+A034448(n+1))`
-/

namespace A070242.P6370287353949528476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A048146 (n + 1) + A034448 (n + 1)).toNat

end

end A070242.P6370287353949528476

/-! ## A070242.P12157130659391650318

`A054973(A146076(n+1)+A000593(n+1))`
-/

namespace A070242.P12157130659391650318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A146076 (n + 1) + A000593 (n + 1)).toNat

end

end A070242.P12157130659391650318

/-! ## A070242.P5510302195791767736

`A054973(A088001(n+1)+A088000(n+1))`
-/

namespace A070242.P5510302195791767736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A088001 (n + 1) + A088000 (n + 1)).toNat

end

end A070242.P5510302195791767736

/-! ## A070242.P11689794805489150426

`A054973(A162296(n+1)+A048250(n+1))`
-/

namespace A070242.P11689794805489150426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A162296 (n + 1) + A048250 (n + 1)).toNat

end

end A070242.P11689794805489150426

/-! ## A070242.P17127213096044154981

`A054973(A326126(n+1)+A007913(n+1))`
-/

namespace A070242.P17127213096044154981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A326126 (n + 1) + A007913 (n + 1)).toNat

end

end A070242.P17127213096044154981

/-! ## A070242.P14574715631757866530

`A054973(A245093(∑[n+1]))`
-/

namespace A070242.P14574715631757866530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A245093 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A070242.P14574715631757866530

/-! ## A070242.P15586335312222985767

`A054973(A274824(∑[n+1]))`
-/

namespace A070242.P15586335312222985767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A274824 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A070242.P15586335312222985767

/-!
# A070243: a(n) = Card{ k, phi(k) <= n }.

The programs for A070243, there is no canonical definition to state claims against.
-/

/-! ## A070243.P12458957811937395022

`∑[A014197(n+1)]`
-/

namespace A070243.P12458957811937395022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070243.P12458957811937395022

/-! ## A070243.P4996861675369966453

`∑[A000005(n+1)-A322019(n+1)]`
-/

namespace A070243.P4996861675369966453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A322019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070243.P4996861675369966453

/-! ## A070243.P11792898027840284438

`∑[A032446(n+1)-A280712(2*(n+1))]`
-/

namespace A070243.P11792898027840284438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (n + 1) - A280712 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070243.P11792898027840284438

/-! ## A070243.P14044289146213431661

`∑[∑{d}[n+1, A008683(#)*A070633((n+1)/#)]]`
-/

namespace A070243.P14044289146213431661
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008683 d * A070633 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070243.P14044289146213431661

/-! ## A070243.P4688987715694584325

`A000196(A014197(n+1)^2)+a(n-1)` with `a(0)=2`
-/

namespace A070243.P4688987715694584325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000196 (A014197 (n + 1) ^ 2).toNat + a (n - 1)

end

end A070243.P4688987715694584325

/-! ## A070243.P2728125811048726075

`∑[A056239(A322310(n+1))]`
-/

namespace A070243.P2728125811048726075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A322310 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070243.P2728125811048726075

/-! ## A070243.P3882091620406734531

`∑[A320000(∑[n+1])]`
-/

namespace A070243.P3882091620406734531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320000 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070243.P3882091620406734531

/-!
# A070246: a(n) = lcm(n, R(n)) / gcd(n, R(n)), where R(n) (A004086) is the digit reversal of n.

The programs for A070246, there is no canonical definition to state claims against.
-/

/-! ## A070246.P2333133220716907598

`A068634(n+1)/A055483(n+1)`
-/

namespace A070246.P2333133220716907598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068634 (n + 1) : ℚ) / (A055483 (n + 1) : ℚ)

end

end A070246.P2333133220716907598

/-! ## A070246.P5348137949123526753

`A061205(n+1)/A055483(n+1)²`
-/

namespace A070246.P5348137949123526753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061205 (n + 1) : ℚ) / (A055483 (n + 1) ^ 2 : ℚ)

end

end A070246.P5348137949123526753

/-! ## A070246.P3523617426186977356

`A068634(n+1)²/A061205(n+1)`
-/

namespace A070246.P3523617426186977356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068634 (n + 1) ^ 2 : ℚ) / (A061205 (n + 1) : ℚ)

end

end A070246.P3523617426186977356

/-! ## A070246.P7047444846022211021

`A068634(n+1)/gcd(n+1, A004086(n+1))`
-/

namespace A070246.P7047444846022211021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068634 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A004086 (n + 1)) : ℚ)

end

end A070246.P7047444846022211021

/-! ## A070246.P7731394757947256263

`A068634(n+1)/gcd(A068636(n+1), A068637(n+1))`
-/

namespace A070246.P7731394757947256263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068634 (n + 1) : ℚ) / (Int.gcd (A068636 (n + 1)) (A068637 (n + 1)) : ℚ)

end

end A070246.P7731394757947256263

/-! ## A070246.P7400950427727246865

`A068634(n+1)/floor((n+1)/A367825(∑[n+1]))`
-/

namespace A070246.P7400950427727246865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068634 (n + 1) : ℚ) / (⌊(n + 1 : ℚ) / (A367825 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)⌋ : ℚ)

end

end A070246.P7400950427727246865

/-! ## A070246.P7735538335922493971

`A068634(n+1)/(A069652(n+1)*A069652(A069691(n)))`
-/

namespace A070246.P7735538335922493971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068634 (n + 1) : ℚ) / (A069652 (n + 1) * A069652 (A069691 n).toNat : ℚ)

end

end A070246.P7735538335922493971

/-!
# A070247: Palindromic primes with digit sum 5.

The programs for A070247, there is no canonical definition to state claims against.
-/

/-! ## A070247.P2131091592609161725

`∩[A062341(n+1), A222116(n+1)]`
-/

namespace A070247.P2131091592609161725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070247.P2131091592609161725

/-!
# A070248: Palindromic primes with digit sum 7.

The programs for A070248, there is no canonical definition to state claims against.
-/

/-! ## A070248.P4327518722023706296

`∩[A062337(n+1), A229880(n+1)]`
-/

namespace A070248.P4327518722023706296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070248.P4327518722023706296

/-! ## A070248.P1848395462583825542

`∩[A002385(n+1), A062337(n+1)]`
-/

namespace A070248.P1848395462583825542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070248.P1848395462583825542

/-! ## A070248.P3128187277816022445

`∩[A062337(n+1), A082806(n+1)]`
-/

namespace A070248.P3128187277816022445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070248.P3128187277816022445

/-! ## A070248.P16874813390650454094

`∩[A062337(n+1), A083137(n+1)]`
-/

namespace A070248.P16874813390650454094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070248.P16874813390650454094

/-! ## A070248.P5484141605587612674

`∩[A062337(n+1), A117056(n+1)]`
-/

namespace A070248.P5484141605587612674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070248.P5484141605587612674

/-!
# A070249: Palindromic primes with digit sum 8.

The programs for A070249, there is no canonical definition to state claims against.
-/

/-! ## A070249.P10543031021216170898

`∩[A062343(n+1), A229881(n+1)]`
-/

namespace A070249.P10543031021216170898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070249.P10543031021216170898

/-! ## A070249.P3287455373695135023

`∩[A158571(n+1), A229881(n+1)]`
-/

namespace A070249.P3287455373695135023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070249.P3287455373695135023

/-! ## A070249.P17854913440141232391

`∩[A002385(n+1), A062343(n+1)]`
-/

namespace A070249.P17854913440141232391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070249.P17854913440141232391

/-! ## A070249.P1719957324853457227

`∩[A062343(n+1), A083137(n+1)]`
-/

namespace A070249.P1719957324853457227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070249.P1719957324853457227

/-! ## A070249.P4928023271986129919

`∩[A002385(n+1), A158571(n+1)]`
-/

namespace A070249.P4928023271986129919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070249.P4928023271986129919

/-!
# A070251: Unrelated-factorial numbers: product of numbers unrelated to n (numbers which have a common divisor with n but do not divide n).

The programs for A070251, there is no canonical definition to state claims against.
-/

/-! ## A070251.P6749930879189343945

`A055067(n+1)/A001783(n+1)`
-/

namespace A070251.P6749930879189343945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055067 (n + 1) : ℚ) / (A001783 (n + 1) : ℚ)

end

end A070251.P6749930879189343945

/-! ## A070251.P10816954396139418013

`A066570(n+1)/A007955(n+1)`
-/

namespace A070251.P10816954396139418013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066570 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ)

end

end A070251.P10816954396139418013

/-! ## A070251.P7682611151226096451

`A066570(n+1)/sqrt(A062758(n+1))`
-/

namespace A070251.P7682611151226096451
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A066570 (n + 1) : ℝ) / Real.sqrt (A062758 (n + 1) : ℝ)

end

end A070251.P7682611151226096451

/-! ## A070251.P15134605786357085625

`gcd(A055067(n+1), A066570(n+1))`
-/

namespace A070251.P15134605786357085625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055067 (n + 1)) (A066570 (n + 1))

end

end A070251.P15134605786357085625

/-! ## A070251.P5443427632778285114

`A000142(n+1)/(A001783(n+1)*A007955(n+1))`
-/

namespace A070251.P5443427632778285114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A001783 (n + 1) * A007955 (n + 1) : ℚ)

end

end A070251.P5443427632778285114

/-!
# A070252: Number of n-digit palindromes.

The programs for A070252, the canonical program `A070252.P11112006205463858820` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070252 has offset 1).

The definition of A070252 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070252.P11112006205463858820

`10*a(n-2)` with `a(0)=10, a(1)=9, a(2)=90`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070252

/-- `10*a(n-2)` -/
def P11112006205463858820.Spec : Prop :=
  ∀ n, (P11112006205463858820.a n : ℤ) = A070252 (n + 1)

theorem P11112006205463858820.correct : P11112006205463858820.Spec := by
  intro n
  simp only [A070252, Nat.add_sub_cancel]

end A070252

/-! ## A070252.P1167360602060114846

`ogf((10+9x-10x^2)/(1-10x^2))`
-/

namespace A070252.P1167360602060114846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 9, -10] [1, 0, -10] n

end

end A070252.P1167360602060114846

namespace A070252

/-- `ogf((10+9x-10x^2)/(1-10x^2))` -/
def P1167360602060114846.Spec : Prop :=
  ∀ n, P1167360602060114846.a n = A070252 (n + 1)

end A070252

/-! ## A070252.P18332189470849308818

`floor(A050683(n+1)+acot(n))`
-/

namespace A070252.P18332189470849308818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A050683 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A070252.P18332189470849308818

namespace A070252

/-- `floor(A050683(n+1)+acot(n))` -/
def P18332189470849308818.Spec : Prop :=
  ∀ n, P18332189470849308818.a n = A070252 (n + 1)

end A070252

/-! ## A070252.P18062895450491407768

`C(gcd(10, n)-1, n)+lcm(9, A004663(n))`
-/

namespace A070252.P18062895450491407768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((Nat.gcd 10 n : ℤ) - 1).toNat n + Int.lcm 9 (A004663 n)

end

end A070252.P18062895450491407768

namespace A070252

/-- `C(gcd(10, n)-1, n)+lcm(9, A004663(n))` -/
def P18062895450491407768.Spec : Prop :=
  ∀ n, (P18062895450491407768.a n : ℤ) = A070252 (n + 1)

end A070252

/-! ## A070252.P9404641123651117333

`A050683(n+1)+A000007(n)`
-/

namespace A070252.P9404641123651117333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050683 (n + 1) + A000007 n

end

end A070252.P9404641123651117333

namespace A070252

/-- `A050683(n+1)+A000007(n)` -/
def P9404641123651117333.Spec : Prop :=
  ∀ n, P9404641123651117333.a n = A070252 (n + 1)

end A070252

/-! ## A070252.P4789621043970648580

`A050683(n+1)+A098646(n)%2`
-/

namespace A070252.P4789621043970648580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050683 (n + 1) + Int.tmod (A098646 n) 2

end

end A070252.P4789621043970648580

namespace A070252

/-- `A050683(n+1)+A098646(n)%2` -/
def P4789621043970648580.Spec : Prop :=
  ∀ n, P4789621043970648580.a n = A070252 (n + 1)

end A070252

/-! ## A070252.P15876466729608462429

`A050683(n+1)+A131949(n)%2`
-/

namespace A070252.P15876466729608462429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050683 (n + 1) + Int.tmod (A131949 n) 2

end

end A070252.P15876466729608462429

namespace A070252

/-- `A050683(n+1)+A131949(n)%2` -/
def P15876466729608462429.Spec : Prop :=
  ∀ n, P15876466729608462429.a n = A070252 (n + 1)

end A070252

/-! ## A070252.P986385704025558709

`A050683(n+1)+A164697(n)%2`
-/

namespace A070252.P986385704025558709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050683 (n + 1) + Int.tmod (A164697 n) 2

end

end A070252.P986385704025558709

namespace A070252

/-- `A050683(n+1)+A164697(n)%2` -/
def P986385704025558709.Spec : Prop :=
  ∀ n, P986385704025558709.a n = A070252 (n + 1)

end A070252

/-! ## A070252.P17685411256730604094

`A050683(n+1)+A028310(n)-n`
-/

namespace A070252.P17685411256730604094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050683 (n + 1) + (A028310 n - (n : ℤ))

end

end A070252.P17685411256730604094

namespace A070252

/-- `A050683(n+1)+A028310(n)-n` -/
def P17685411256730604094.Spec : Prop :=
  ∀ n, P17685411256730604094.a n = A070252 (n + 1)

end A070252

/-! ## A070252.P758165255473271870

`A050683(n+1)+val(A000040(n+1), 2)`
-/

namespace A070252.P758165255473271870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050683 (n + 1) + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A070252.P758165255473271870

namespace A070252

/-- `A050683(n+1)+val(A000040(n+1), 2)` -/
def P758165255473271870.Spec : Prop :=
  ∀ n, P758165255473271870.a n = A070252 (n + 1)

end A070252

/-! ## A070252.P14219629700643331585

`A004669(A168236(n+1)+A000007(n))`
-/

namespace A070252.P14219629700643331585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004669 (A168236 (n + 1) + A000007 n).toNat

end

end A070252.P14219629700643331585

namespace A070252

/-- `A004669(A168236(n+1)+A000007(n))` -/
def P14219629700643331585.Spec : Prop :=
  ∀ n, P14219629700643331585.a n = A070252 (n + 1)

end A070252

/-! ## A070252.P4427020129983913541

`A000038(n)-(A000007(n)-lcm(9, A004663(n)))`
-/

namespace A070252.P4427020129983913541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - (A000007 n - (Int.lcm 9 (A004663 n) : ℤ))

end

end A070252.P4427020129983913541

namespace A070252

/-- `A000038(n)-(A000007(n)-lcm(9, A004663(n)))` -/
def P4427020129983913541.Spec : Prop :=
  ∀ n, P4427020129983913541.a n = A070252 (n + 1)

end A070252

/-! ## A070252.P5276682762232239721

`A050683(n+1)+A225367(n+1)-A117855(n+1)`
-/

namespace A070252.P5276682762232239721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050683 (n + 1) + (A225367 (n + 1) - A117855 (n + 1))

end

end A070252.P5276682762232239721

namespace A070252

/-- `A050683(n+1)+A225367(n+1)-A117855(n+1)` -/
def P5276682762232239721.Spec : Prop :=
  ∀ n, P5276682762232239721.a n = A070252 (n + 1)

end A070252

/-! ## A070252.P9909488995750322568

`A240022(n+1)/(n+1)`
-/

namespace A070252.P9909488995750322568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240022 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A070252.P9909488995750322568

namespace A070252

/-- `A240022(n+1)/(n+1)` -/
def P9909488995750322568.Spec : Prop :=
  ∀ n, P9909488995750322568.a n = (A070252 (n + 1) : ℚ)

end A070252

/-!
# A070253: Numbers k such that k^2 - 1 is a palindrome.

The programs for A070253, there is no canonical definition to state claims against.
-/

/-! ## A070253.P2634580738757986430

`A028503(n+1)+1`
-/

namespace A070253.P2634580738757986430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028503 (n + 1) + 1

end

end A070253.P2634580738757986430

/-! ## A070253.P16918641134008421534

`sqrt(A070254(n+1))`
-/

namespace A070253.P16918641134008421534
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A070254 (n + 1) : ℝ)

end

end A070253.P16918641134008421534

/-! ## A070253.P8390568316812032147

`sqrt(A028504(n+1)+1)`
-/

namespace A070253.P8390568316812032147
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A028504 (n + 1) + 1 : ℝ)

end

end A070253.P8390568316812032147

/-! ## A070253.P15624212560188231196

`root(A070254(n+1), ratio[A000079(n)])`
-/

namespace A070253.P15624212560188231196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A070254 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A070253.P15624212560188231196

/-! ## A070253.P6374536137467848459

`A070254(n+1)^(n/A004277(n))`
-/

namespace A070253.P6374536137467848459
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A070254 (n + 1) : ℝ) ^ ((n : ℚ) / (A004277 n : ℚ) : ℝ)

end

end A070253.P6374536137467848459

/-!
# A070254: Perfect squares one more than a palindrome.

The programs for A070254, there is no canonical definition to state claims against.
-/

/-! ## A070254.P7020587528325078964

`A070253(n+1)²`
-/

namespace A070254.P7020587528325078964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070253 (n + 1) ^ 2

end

end A070254.P7020587528325078964

/-! ## A070254.P17366786624582746546

`A028504(n+1)+1`
-/

namespace A070254.P17366786624582746546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028504 (n + 1) + 1

end

end A070254.P17366786624582746546

/-! ## A070254.P14235761037354359423

`(A028503(n+1)+1)²`
-/

namespace A070254.P14235761037354359423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028503 (n + 1) + 1) ^ 2

end

end A070254.P14235761037354359423

/-! ## A070254.P10183197612837280434

`(A028503(n+1)+1)*A070253(n+1)`
-/

namespace A070254.P10183197612837280434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028503 (n + 1) + 1) * A070253 (n + 1)

end

end A070254.P10183197612837280434

/-! ## A070254.P4640830622567503545

`A070253(n+1)*A070253(A023443(n)+2)`
-/

namespace A070254.P4640830622567503545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070253 (n + 1) * A070253 (A023443 n + 2).toNat

end

end A070254.P4640830622567503545

/-!
# A070255: Numbers which divided into two substrings by breaking at any digit then one of them divides the other (0 is not to be considered a substring, multiples of 10 are excluded).

The programs for A070255, there is no canonical definition to state claims against.
-/

/-! ## A070255.P14324497796307818354

`∩[A067251(n+1), A384538(n+1)]`
-/

namespace A070255.P14324497796307818354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070255.P14324497796307818354

/-! ## A070255.P7055286881143696674

`∩[A342851(n+1), A384538(n+1)]`
-/

namespace A070255.P7055286881143696674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070255.P7055286881143696674

/-! ## A070255.P7623858001534392614

`filter[A384538(n+1), A168184(#)]`
-/

namespace A070255.P7623858001534392614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A070255.P7623858001534392614

/-!
# A070258: Smallest of 3 consecutive numbers each divisible by a square.

The programs for A070258, there is no canonical definition to state claims against.
-/

/-! ## A070258.P15284516201252617396

`A235578(n+1)-1`
-/

namespace A070258.P15284516201252617396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235578 (n + 1) - 1

end

end A070258.P15284516201252617396

/-! ## A070258.P7329091006522178417

`A258998(A185980(gcd(n, n+1)))+A235578(n+1)`
-/

namespace A070258.P7329091006522178417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258998 (A185980 (Nat.gcd n (n + 1))).toNat + A235578 (n + 1)

end

end A070258.P7329091006522178417

/-! ## A070258.P7994161940539905107

`A278400(A132440(3*n))+A235578(n+1)`
-/

namespace A070258.P7994161940539905107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278400 (A132440 (3 * n)).toNat + A235578 (n + 1)

end

end A070258.P7994161940539905107

/-! ## A070258.P8077701800058291133

`∩[A013929(n+1), A114180(n+1)]`
-/

namespace A070258.P8077701800058291133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070258.P8077701800058291133

/-! ## A070258.P7140674010205074101

`∩[A176309(n+1), A281192(n+1)]-1`
-/

namespace A070258.P7140674010205074101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A070258.P7140674010205074101

/-! ## A070258.P873413421880379875

`∩[A068781(n+1), A114180(n+1)]`
-/

namespace A070258.P873413421880379875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070258.P873413421880379875

/-! ## A070258.P1648885404919197258

`∩[A068781(n+1), A281192(n+1)-1]`
-/

namespace A070258.P1648885404919197258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070258.P1648885404919197258

/-! ## A070258.P176189275886644950

`∩[A068781(n+2)-1, A068781(n+2)]`
-/

namespace A070258.P176189275886644950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068781 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068781 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070258.P176189275886644950

/-! ## A070258.P15195689175114674880

`A068781(eq[1, A068781(n+2)-A068781(n+1)]+1)`
-/

namespace A070258.P15195689175114674880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068781 (n + 2) - A068781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A070258.P15195689175114674880

/-! ## A070258.P15209276686244063291

`A068781(eq[1, A068781(n+2)%A068781(n+1)]+1)`
-/

namespace A070258.P15209276686244063291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068781 (n + 2)) (A068781 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A070258.P15209276686244063291

/-! ## A070258.P11269229742107519461

`record[A105570(A114180(n+4))]`
-/

namespace A070258.P11269229742107519461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A114180 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070258.P11269229742107519461

/-! ## A070258.P8419183441313905237

`filter[A114180(n+1), A087049(#)]`
-/

namespace A070258.P8419183441313905237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A070258.P8419183441313905237

/-! ## A070258.P5013222779195214970

`lt[1, A080733(n+1)]`
-/

namespace A070258.P5013222779195214970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080733 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A070258.P5013222779195214970

/-! ## A070258.P11134422964528783942

`∩[A064148(n+1), A281192(n+1)-1]`
-/

namespace A070258.P11134422964528783942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070258.P11134422964528783942

/-! ## A070258.P3962627132265910169

`∩[A068781(n+1), A074820(n+1)]`
-/

namespace A070258.P3962627132265910169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070258.P3962627132265910169

/-! ## A070258.P3519476989131305045

`∩[A074819(n+1), A114180(n+1)]`
-/

namespace A070258.P3519476989131305045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070258.P3519476989131305045

/-! ## A070258.P12617100998201137720

`∩[A074819(n+1), A281192(n+1)-1]`
-/

namespace A070258.P12617100998201137720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070258.P12617100998201137720

/-! ## A070258.P3626353741880366213

`∩[A080756(n+1), A114180(n+1)]`
-/

namespace A070258.P3626353741880366213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070258.P3626353741880366213

/-! ## A070258.P18159830106130143825

`∩[A114180(n+1), A162966(n+1)]`
-/

namespace A070258.P18159830106130143825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070258.P18159830106130143825

/-! ## A070258.P15667991410368224130

`∩[A114180(n+1), A354360(n+1)]`
-/

namespace A070258.P15667991410368224130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070258.P15667991410368224130

/-!
# A070259: Array f(m,n) read by antidiagonals: f(m,n) = minimal number of 0's in a 2m X 2n (0,1) matrix that contains no m X n submatrix of 1's (m >= 1, n >= 1).

The programs for A070259, there is no canonical definition to state claims against.
-/

/-! ## A070259.P16027128167151635177

`A204004(A000005(2^n))+3`
-/

namespace A070259.P16027128167151635177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204004 (A000005 (2 ^ n)).toNat + 3

end

end A070259.P16027128167151635177

/-! ## A070259.P6978269449277042445

`A204004(n+1)+A122553(A144026(n))`
-/

namespace A070259.P6978269449277042445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204004 (n + 1) + A122553 (A144026 n).toNat

end

end A070259.P6978269449277042445

/-! ## A070259.P16220129747678166491

`A204004(n+1)+A191770(A191773(n+1))`
-/

namespace A070259.P16220129747678166491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204004 (n + 1) + A191770 (A191773 (n + 1)).toNat

end

end A070259.P16220129747678166491

/-! ## A070259.P17291299721113184991

`A204004(n+1)+A188195(A329639(n+4)!)`
-/

namespace A070259.P17291299721113184991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204004 (n + 1) + A188195 (Nat.factorial (A329639 (n + 4)).toNat)

end

end A070259.P17291299721113184991

/-! ## A070259.P12288519623153002606

`A204004(n+1)+A169609(A174162(3*n+5))`
-/

namespace A070259.P12288519623153002606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204004 (n + 1) + A169609 (A174162 (3 * n + 5)).toNat

end

end A070259.P12288519623153002606

/-!
# A070260: Third diagonal of triangle defined in A051537.

The programs for A070260, the canonical program `A070260.P5967124606837962089` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070260 has offset 1).

The definition of A070260 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070260.P5967124606837962089

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=3, a(1)=2, a(2)=15, a(3)=6, a(4)=35, a(5)=12`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070260

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P5967124606837962089.Spec : Prop :=
  ∀ n, P5967124606837962089.a n = A070260 (n + 1)

theorem P5967124606837962089.correct : P5967124606837962089.Spec := by
  intro n
  simp only [A070260, Nat.add_sub_cancel]

end A070260

/-! ## A070260.P4076918309532989157

`lcm(4, 1-(n+2)²)/4`
-/

namespace A070260.P4076918309532989157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (1 - ((n + 2) ^ 2 : ℤ)) : ℚ) / 4

end

end A070260.P4076918309532989157

namespace A070260

/-- `lcm(4, 1-(n+2)²)/4` -/
def P4076918309532989157.Spec : Prop :=
  ∀ n, P4076918309532989157.a n = (A070260 (n + 1) : ℚ)

end A070260

/-! ## A070260.P11365273975880744750

`floor(lcm(2, lcm(n+1, n+3))/2)`
-/

namespace A070260.P11365273975880744750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 (Nat.lcm (n + 1) (n + 3)) : ℚ) / 2⌋

end

end A070260.P11365273975880744750

namespace A070260

/-- `floor(lcm(2, lcm(n+1, n+3))/2)` -/
def P11365273975880744750.Spec : Prop :=
  ∀ n, P11365273975880744750.a n = A070260 (n + 1)

end A070260

/-! ## A070260.P10229116553751518575

`6/a(n-1)*∑[∑[∑[n]]]` with `a(0)=3`
-/

namespace A070260.P10229116553751518575
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  6 / a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A070260.P10229116553751518575

namespace A070260

/-- `6/a(n-1)*∑[∑[∑[n]]]` -/
def P10229116553751518575.Spec : Prop :=
  ∀ n, P10229116553751518575.a n = (A070260 (n + 1) : ℚ)

end A070260

/-! ## A070260.P5743807019189209019

`((n+2)²-1)/gcd(2, n+1)²`
-/

namespace A070260.P5743807019189209019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2 : ℤ) - 1 : ℚ) / (Nat.gcd 2 (n + 1) ^ 2 : ℚ)

end

end A070260.P5743807019189209019

namespace A070260

/-- `((n+2)²-1)/gcd(2, n+1)²` -/
def P5743807019189209019.Spec : Prop :=
  ∀ n, P5743807019189209019.a n = (A070260 (n + 1) : ℚ)

end A070260

/-! ## A070260.P15903568232813219466

`(4/(n-1)+1)*a(n-2)` with `a(0)=3, a(1)=2`
-/

namespace A070260.P15903568232813219466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 2] fun n a =>
  (4 / ((n : ℤ) - 1 : ℚ) + 1) * a (n - 2)

end

end A070260.P15903568232813219466

namespace A070260

/-- `(4/(n-1)+1)*a(n-2)` -/
def P15903568232813219466.Spec : Prop :=
  ∀ n, P15903568232813219466.a n = (A070260 (n + 1) : ℚ)

end A070260

/-! ## A070260.P8099644823352709847

`a(n-2)/(1-4/(n+3))` with `a(0)=3, a(1)=2`
-/

namespace A070260.P8099644823352709847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 2] fun n a =>
  a (n - 2) / (1 - 4 / (n + 3 : ℚ))

end

end A070260.P8099644823352709847

namespace A070260

/-- `a(n-2)/(1-4/(n+3))` -/
def P8099644823352709847.Spec : Prop :=
  ∀ n, P8099644823352709847.a n = (A070260 (n + 1) : ℚ)

end A070260

/-! ## A070260.P6516794625973143163

`(n+1)*(n+3)/(and(1, n)+1)²`
-/

namespace A070260.P6516794625973143163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 3 : ℚ) / ((Nat.land 1 n + 1) ^ 2 : ℚ))

end

end A070260.P6516794625973143163

namespace A070260

/-- `(n+1)*(n+3)/(and(1, n)+1)²` -/
def P6516794625973143163.Spec : Prop :=
  ∀ n, P6516794625973143163.a n = (A070260 (n + 1) : ℚ)

end A070260

/-! ## A070260.P580773513723158988

`∑[(n+1)*gcd(4, n²)-a(n-1)]` with `a(0)=3`
-/

namespace A070260.P580773513723158988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  ((n + 1) * Nat.gcd 4 (n ^ 2) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070260.P580773513723158988

namespace A070260

/-- `∑[(n+1)*gcd(4, n²)-a(n-1)]` -/
def P580773513723158988.Spec : Prop :=
  ∀ n, P580773513723158988.a n = A070260 (n + 1)

end A070260

/-! ## A070260.P10242809730158214239

`a(n-2)-4/(1-n)*a(n-2)` with `a(0)=3, a(1)=2`
-/

namespace A070260.P10242809730158214239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 2] fun n a =>
  a (n - 2) - 4 / (1 - (n : ℤ) : ℚ) * a (n - 2)

end

end A070260.P10242809730158214239

namespace A070260

/-- `a(n-2)-4/(1-n)*a(n-2)` -/
def P10242809730158214239.Spec : Prop :=
  ∀ n, P10242809730158214239.a n = (A070260 (n + 1) : ℚ)

end A070260

/-! ## A070260.P13494797370755565490

`(n+3)*(n+1)/gcd((n+1)², (n+3)²)`
-/

namespace A070260.P13494797370755565490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3) * (n + 1) : ℚ) / (Nat.gcd ((n + 1) ^ 2) ((n + 3) ^ 2) : ℚ)

end

end A070260.P13494797370755565490

namespace A070260

/-- `(n+3)*(n+1)/gcd((n+1)², (n+3)²)` -/
def P13494797370755565490.Spec : Prop :=
  ∀ n, P13494797370755565490.a n = (A070260 (n + 1) : ℚ)

end A070260

/-! ## A070260.P5363552788671869532

`gcd((n+1)*(n+3), ∑[2*n*∑[n+1]])`
-/

namespace A070260.P5363552788671869532
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 1) * (n + 3)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070260.P5363552788671869532

namespace A070260

/-- `gcd((n+1)*(n+3), ∑[2*n*∑[n+1]])` -/
def P5363552788671869532.Spec : Prop :=
  ∀ n, (P5363552788671869532.a n : ℤ) = A070260 (n + 1)

end A070260

/-! ## A070260.P6945576169274768146

`∑[A142888(n+1)]`
-/

namespace A070260.P6945576169274768146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070260.P6945576169274768146

namespace A070260

/-- `∑[A142888(n+1)]` -/
def P6945576169274768146.Spec : Prop :=
  ∀ n, P6945576169274768146.a n = A070260 (n + 1)

end A070260

/-! ## A070260.P4261874441357112788

`A033487(n)/a(n-1)` with `a(0)=3`
-/

namespace A070260.P4261874441357112788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (A033487 n : ℚ) / a (n - 1)

end

end A070260.P4261874441357112788

namespace A070260

/-- `A033487(n)/a(n-1)` -/
def P4261874441357112788.Spec : Prop :=
  ∀ n, P4261874441357112788.a n = (A070260 (n + 1) : ℚ)

end A070260

/-! ## A070260.P13625511069638448859

`(n+1)*(n+3)/A018252(gcd(n-1, 2*n))`
-/

namespace A070260.P13625511069638448859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 3 : ℚ) / (A018252 (Int.gcd ((n : ℤ) - 1) (2 * n : ℤ)) : ℚ))

end

end A070260.P13625511069638448859

namespace A070260

/-- `(n+1)*(n+3)/A018252(gcd(n-1, 2*n))` -/
def P13625511069638448859.Spec : Prop :=
  ∀ n, P13625511069638448859.a n = (A070260 (n + 1) : ℚ)

end A070260

/-! ## A070260.P8162545305083740111

`A000034(n)*A198148(n+1)`
-/

namespace A070260.P8162545305083740111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A198148 (n + 1)

end

end A070260.P8162545305083740111

namespace A070260

/-- `A000034(n)*A198148(n+1)` -/
def P8162545305083740111.Spec : Prop :=
  ∀ n, P8162545305083740111.a n = A070260 (n + 1)

end A070260

/-! ## A070260.P11279991109772082488

`A039720(n+2)/A010694(n)`
-/

namespace A070260.P11279991109772082488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039720 (n + 2) : ℚ) / (A010694 n : ℚ)

end

end A070260.P11279991109772082488

namespace A070260

/-- `A039720(n+2)/A010694(n)` -/
def P11279991109772082488.Spec : Prop :=
  ∀ n, P11279991109772082488.a n = (A070260 (n + 1) : ℚ)

end A070260

/-! ## A070260.P214431096867026666

`A142888(n+1)+A142705(n+1)`
-/

namespace A070260.P214431096867026666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142888 (n + 1) + A142705 (n + 1)

end

end A070260.P214431096867026666

namespace A070260

/-- `A142888(n+1)+A142705(n+1)` -/
def P214431096867026666.Spec : Prop :=
  ∀ n, P214431096867026666.a n = A070260 (n + 1)

end A070260

/-! ## A070260.P12766503952443347589

`A144433(n+1)-A229526(n+1)`
-/

namespace A070260.P12766503952443347589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144433 (n + 1) - A229526 (n + 1)

end

end A070260.P12766503952443347589

namespace A070260

/-- `A144433(n+1)-A229526(n+1)` -/
def P12766503952443347589.Spec : Prop :=
  ∀ n, P12766503952443347589.a n = A070260 (n + 1)

end A070260

/-! ## A070260.P16968919475817985196

`A229525(n+1)-A144433(n+1)`
-/

namespace A070260.P16968919475817985196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229525 (n + 1) - A144433 (n + 1)

end

end A070260.P16968919475817985196

namespace A070260

/-- `A229525(n+1)-A144433(n+1)` -/
def P16968919475817985196.Spec : Prop :=
  ∀ n, P16968919475817985196.a n = A070260 (n + 1)

end A070260

/-!
# A070261: 4th diagonal of triangle defined in A051537.

The programs for A070261, the canonical program `A070261.P9735302363210010820` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070261 has offset 1).

The definition of A070261 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070261.P9616977468686221034

`lcm(n+4, n+1)/gcd(n+4, n+1)`
-/

namespace A070261.P9616977468686221034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 4) (n + 1) : ℚ) / (Nat.gcd (n + 4) (n + 1) : ℚ)

end

end A070261.P9616977468686221034

namespace A070261

/-- `lcm(n+4, n+1)/gcd(n+4, n+1)` -/
def P9616977468686221034.Spec : Prop :=
  ∀ n, P9616977468686221034.a n = (A070261 (n + 1) : ℚ)

end A070261

/-! ## A070261.P9735302363210010820

`3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=4, a(1)=10, a(2)=2, a(3)=28, a(4)=40, a(5)=6, a(6)=70, a(7)=88, a(8)=12`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070261

/-- `3*a(n-3)-3*a(n-6)+a(n-9)` -/
def P9735302363210010820.Spec : Prop :=
  ∀ n, P9735302363210010820.a n = A070261 (n + 1)

theorem P9735302363210010820.correct : P9735302363210010820.Spec := by
  intro n
  simp only [A070261, Nat.add_sub_cancel]

end A070261

/-! ## A070261.P16656019744066020058

`(n+1)*(n+4)/gcd(3, n+1)²`
-/

namespace A070261.P16656019744066020058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 4 : ℚ) / (Nat.gcd 3 (n + 1) ^ 2 : ℚ))

end

end A070261.P16656019744066020058

namespace A070261

/-- `(n+1)*(n+4)/gcd(3, n+1)²` -/
def P16656019744066020058.Spec : Prop :=
  ∀ n, P16656019744066020058.a n = (A070261 (n + 1) : ℚ)

end A070261

/-! ## A070261.P16437484724856793939

`(A068217(n+1)-n)²+n`
-/

namespace A070261.P16437484724856793939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A068217 (n + 1) - (n : ℤ)) ^ 2 + (n : ℤ)

end

end A070261.P16437484724856793939

namespace A070261

/-- `(A068217(n+1)-n)²+n` -/
def P16437484724856793939.Spec : Prop :=
  ∀ n, P16437484724856793939.a n = A070261 (n + 1)

end A070261

/-! ## A070261.P14494089885039085055

`2*lcm(9, A000096(n+1))/9`
-/

namespace A070261.P14494089885039085055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((Int.lcm 9 (A000096 (n + 1)) : ℚ) / 9)

end

end A070261.P14494089885039085055

namespace A070261

/-- `2*lcm(9, A000096(n+1))/9` -/
def P14494089885039085055.Spec : Prop :=
  ∀ n, P14494089885039085055.a n = (A070261 (n + 1) : ℚ)

end A070261

/-! ## A070261.P5069558428368366037

`(2/A027626(n))²*A006542(n+4)`
-/

namespace A070261.P5069558428368366037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 / (A027626 n : ℚ)) ^ 2 * (A006542 (n + 4) : ℚ)

end

end A070261.P5069558428368366037

namespace A070261

/-- `(2/A027626(n))²*A006542(n+4)` -/
def P5069558428368366037.Spec : Prop :=
  ∀ n, P5069558428368366037.a n = (A070261 (n + 1) : ℚ)

end A070261

/-! ## A070261.P13849935471851144231

`(2*A067047(n+1))²/A006542(n+4)`
-/

namespace A070261.P13849935471851144231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * A067047 (n + 1)) ^ 2 : ℚ) / (A006542 (n + 4) : ℚ)

end

end A070261.P13849935471851144231

namespace A070261

/-- `(2*A067047(n+1))²/A006542(n+4)` -/
def P13849935471851144231.Spec : Prop :=
  ∀ n, P13849935471851144231.a n = (A070261 (n + 1) : ℚ)

end A070261

/-! ## A070261.P1315824203389392481

`A130724(n+1)+A051176(n+1)²`
-/

namespace A070261.P1315824203389392481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 (n + 1) + A051176 (n + 1) ^ 2

end

end A070261.P1315824203389392481

namespace A070261

/-- `A130724(n+1)+A051176(n+1)²` -/
def P1315824203389392481.Spec : Prop :=
  ∀ n, P1315824203389392481.a n = A070261 (n + 1)

end A070261

/-! ## A070261.P17828617519518349665

`(A169609(n+1)+A051176(n+1))*A051176(n+1)`
-/

namespace A070261.P17828617519518349665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A169609 (n + 1) + A051176 (n + 1)) * A051176 (n + 1)

end

end A070261.P17828617519518349665

namespace A070261

/-- `(A169609(n+1)+A051176(n+1))*A051176(n+1)` -/
def P17828617519518349665.Spec : Prop :=
  ∀ n, P17828617519518349665.a n = A070261 (n + 1)

end A070261

/-! ## A070261.P1478700822070956620

`A051176(n+1)*A145064(n+2)`
-/

namespace A070261.P1478700822070956620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (n + 1) * A145064 (n + 2)

end

end A070261.P1478700822070956620

namespace A070261

/-- `A051176(n+1)*A145064(n+2)` -/
def P1478700822070956620.Spec : Prop :=
  ∀ n, P1478700822070956620.a n = A070261 (n + 1)

end A070261

/-! ## A070261.P16164382804392604463

`2*A060789(n+1)*A060789(A020705(n))`
-/

namespace A070261.P16164382804392604463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A060789 (n + 1) * A060789 (A020705 n).toNat)

end

end A070261.P16164382804392604463

namespace A070261

/-- `2*A060789(n+1)*A060789(A020705(n))` -/
def P16164382804392604463.Spec : Prop :=
  ∀ n, P16164382804392604463.a n = A070261 (n + 1)

end A070261

/-! ## A070261.P17836506975179515877

`A051176(n+1)*A051176(n+4)`
-/

namespace A070261.P17836506975179515877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (n + 1) * A051176 (n + 4)

end

end A070261.P17836506975179515877

namespace A070261

/-- `A051176(n+1)*A051176(n+4)` -/
def P17836506975179515877.Spec : Prop :=
  ∀ n, P17836506975179515877.a n = A070261 (n + 1)

end A070261

/-! ## A070261.P15758001074495312906

`A060789(2*(n+1))*A145064(n+2)`
-/

namespace A070261.P15758001074495312906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (2 * (n + 1)) * A145064 (n + 2)

end

end A070261.P15758001074495312906

namespace A070261

/-- `A060789(2*(n+1))*A145064(n+2)` -/
def P15758001074495312906.Spec : Prop :=
  ∀ n, P15758001074495312906.a n = A070261 (n + 1)

end A070261

/-! ## A070261.P2533943769974911859

`(A129197(2*n+1)+A060789(2*(n+1)))*A060789(2*(n+1))`
-/

namespace A070261.P2533943769974911859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A129197 (2 * n + 1) + A060789 (2 * (n + 1))) * A060789 (2 * (n + 1))

end

end A070261.P2533943769974911859

namespace A070261

/-- `(A129197(2*n+1)+A060789(2*(n+1)))*A060789(2*(n+1))` -/
def P2533943769974911859.Spec : Prop :=
  ∀ n, P2533943769974911859.a n = A070261 (n + 1)

end A070261

/-! ## A070261.P10007712556437741698

`A145064(n+2)*A185727(2*(n+1))`
-/

namespace A070261.P10007712556437741698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 (n + 2) * A185727 (2 * (n + 1))

end

end A070261.P10007712556437741698

namespace A070261

/-- `A145064(n+2)*A185727(2*(n+1))` -/
def P10007712556437741698.Spec : Prop :=
  ∀ n, P10007712556437741698.a n = A070261 (n + 1)

end A070261

/-! ## A070261.P11482405569336199304

`A130724(n+1)+A130724(A109044(n+1))²`
-/

namespace A070261.P11482405569336199304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 (n + 1) + A130724 (A109044 (n + 1)).toNat ^ 2

end

end A070261.P11482405569336199304

namespace A070261

/-- `A130724(n+1)+A130724(A109044(n+1))²` -/
def P11482405569336199304.Spec : Prop :=
  ∀ n, P11482405569336199304.a n = A070261 (n + 1)

end A070261

/-! ## A070261.P11009891931708241574

`A106610(∑[2*(n+2)])`
-/

namespace A070261.P11009891931708241574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070261.P11009891931708241574

namespace A070261

/-- `A106610(∑[2*(n+2)])` -/
def P11009891931708241574.Spec : Prop :=
  ∀ n, P11009891931708241574.a n = A070261 (n + 1)

end A070261

/-! ## A070261.P8431946391485060319

`A068217(A051176(∑[n+2]))`
-/

namespace A070261.P8431946391485060319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068217 (A051176 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A070261.P8431946391485060319

namespace A070261

/-- `A068217(A051176(∑[n+2]))` -/
def P8431946391485060319.Spec : Prop :=
  ∀ n, P8431946391485060319.a n = A070261 (n + 1)

end A070261

/-!
# A070262: 5th diagonal of triangle defined in A051537.

The programs for A070262, the canonical program `A070262.P10405572268781669569` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070262 has offset 1).

The definition of A070262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070262.P10405572268781669569

`lcm(n+5, n+1)/gcd(n+5, n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070262

/-- `lcm(n+5, n+1)/gcd(n+5, n+1)` -/
def P10405572268781669569.Spec : Prop :=
  ∀ n, P10405572268781669569.a n = (A070262 (n + 1) : ℚ)

end A070262

/-! ## A070262.P229561336246168644

`(n+1)*(n+5)*(37-27*cos((n+1)*π)-6*cos((n+1)*π/2))/64`
-/

namespace A070262.P229561336246168644
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 5) : ℝ) * (37 - 27 * Real.cos ((n + 1 : ℝ) * Real.pi) - 6 * Real.cos ((n + 1 : ℝ) * Real.pi / 2)) / 64

end

end A070262.P229561336246168644

namespace A070262

/-- `(n+1)*(n+5)*(37-27*cos((n+1)*π)-6*cos((n+1)*π/2))/64` -/
def P229561336246168644.Spec : Prop :=
  ∀ n, P229561336246168644.a n = (A070262 (n + 1) : ℝ)

end A070262

/-! ## A070262.P10858551785595446

`(n+1)*(n+5)/gcd(4, n+1)²`
-/

namespace A070262.P10858551785595446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 5 : ℚ) / (Nat.gcd 4 (n + 1) ^ 2 : ℚ))

end

end A070262.P10858551785595446

namespace A070262

/-- `(n+1)*(n+5)/gcd(4, n+1)²` -/
def P10858551785595446.Spec : Prop :=
  ∀ n, P10858551785595446.a n = (A070262 (n + 1) : ℚ)

end A070262

/-! ## A070262.P9765521484477883052

`A061037(n+3)`
-/

namespace A070262.P9765521484477883052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (n + 3)

end

end A070262.P9765521484477883052

namespace A070262

/-- `A061037(n+3)` -/
def P9765521484477883052.Spec : Prop :=
  ∀ n, P9765521484477883052.a n = A070262 (n + 1)

end A070262

/-! ## A070262.P16276964146790352735

`sqrt(A181763(n+3))`
-/

namespace A070262.P16276964146790352735
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A181763 (n + 3) : ℝ)

end

end A070262.P16276964146790352735

namespace A070262

/-- `sqrt(A181763(n+3))` -/
def P16276964146790352735.Spec : Prop :=
  ∀ n, P16276964146790352735.a n = (A070262 (n + 1) : ℝ)

end A070262

/-! ## A070262.P14155725364673394952

`A188134(n+1)+A181318(n+1)`
-/

namespace A070262.P14155725364673394952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (n + 1) + A181318 (n + 1)

end

end A070262.P14155725364673394952

namespace A070262

/-- `A188134(n+1)+A181318(n+1)` -/
def P14155725364673394952.Spec : Prop :=
  ∀ n, P14155725364673394952.a n = A070262 (n + 1)

end A070262

/-! ## A070262.P2160154480241670555

`A191567(n+1)-A181318(n+1)`
-/

namespace A070262.P2160154480241670555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191567 (n + 1) - A181318 (n + 1)

end

end A070262.P2160154480241670555

namespace A070262

/-- `A191567(n+1)-A181318(n+1)` -/
def P2160154480241670555.Spec : Prop :=
  ∀ n, P2160154480241670555.a n = A070262 (n + 1)

end A070262

/-! ## A070262.P10124155748279706910

`A246416(n+1)*A247617(n+1)`
-/

namespace A070262.P10124155748279706910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246416 (n + 1) * A247617 (n + 1)

end

end A070262.P10124155748279706910

namespace A070262

/-- `A246416(n+1)*A247617(n+1)` -/
def P10124155748279706910.Spec : Prop :=
  ∀ n, P10124155748279706910.a n = A070262 (n + 1)

end A070262

/-! ## A070262.P11757374263911522679

`A028347(n+3)/A010156(n+1)`
-/

namespace A070262.P11757374263911522679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028347 (n + 3) : ℚ) / (A010156 (n + 1) : ℚ)

end

end A070262.P11757374263911522679

namespace A070262

/-- `A028347(n+3)/A010156(n+1)` -/
def P11757374263911522679.Spec : Prop :=
  ∀ n, P11757374263911522679.a n = (A070262 (n + 1) : ℚ)

end A070262

/-! ## A070262.P6147782850928591219

`A028347(n+3)/A146160(n+1)`
-/

namespace A070262.P6147782850928591219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028347 (n + 3) : ℚ) / (A146160 (n + 1) : ℚ)

end

end A070262.P6147782850928591219

namespace A070262

/-- `A028347(n+3)/A146160(n+1)` -/
def P6147782850928591219.Spec : Prop :=
  ∀ n, P6147782850928591219.a n = (A070262 (n + 1) : ℚ)

end A070262

/-! ## A070262.P9858797091963214856

`A171621(n+3)/A010121(n+1)`
-/

namespace A070262.P9858797091963214856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171621 (n + 3) : ℚ) / (A010121 (n + 1) : ℚ)

end

end A070262.P9858797091963214856

namespace A070262

/-- `A171621(n+3)/A010121(n+1)` -/
def P9858797091963214856.Spec : Prop :=
  ∀ n, P9858797091963214856.a n = (A070262 (n + 1) : ℚ)

end A070262

/-! ## A070262.P1873230628110823979

`A142883(n+1)-2*A181318(n+1)`
-/

namespace A070262.P1873230628110823979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142883 (n + 1) - 2 * A181318 (n + 1)

end

end A070262.P1873230628110823979

namespace A070262

/-- `A142883(n+1)-2*A181318(n+1)` -/
def P1873230628110823979.Spec : Prop :=
  ∀ n, P1873230628110823979.a n = A070262 (n + 1)

end A070262

/-! ## A070262.P17295244107213057772

`(A191567(n+1)+A188134(n+1))/2`
-/

namespace A070262.P17295244107213057772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191567 (n + 1) + A188134 (n + 1) : ℚ) / 2

end

end A070262.P17295244107213057772

namespace A070262

/-- `(A191567(n+1)+A188134(n+1))/2` -/
def P17295244107213057772.Spec : Prop :=
  ∀ n, P17295244107213057772.a n = (A070262 (n + 1) : ℚ)

end A070262

/-! ## A070262.P5580605792766613666

`A188134(n+1)+A026741(A026741(n+1))²`
-/

namespace A070262.P5580605792766613666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (n + 1) + A026741 (A026741 (n + 1)).toNat ^ 2

end

end A070262.P5580605792766613666

namespace A070262

/-- `A188134(n+1)+A026741(A026741(n+1))²` -/
def P5580605792766613666.Spec : Prop :=
  ∀ n, P5580605792766613666.a n = A070262 (n + 1)

end A070262

/-! ## A070262.P12394842627882043030

`A188134(n+1)+A060819(n+1)*A060819(n+1)`
-/

namespace A070262.P12394842627882043030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (n + 1) + A060819 (n + 1) * A060819 (n + 1)

end

end A070262.P12394842627882043030

namespace A070262

/-- `A188134(n+1)+A060819(n+1)*A060819(n+1)` -/
def P12394842627882043030.Spec : Prop :=
  ∀ n, P12394842627882043030.a n = A070262 (n + 1)

end A070262

/-! ## A070262.P267593388002947298

`(A145979(n+1)-A060819(n+1))*A060819(n+1)`
-/

namespace A070262.P267593388002947298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A145979 (n + 1) - A060819 (n + 1)) * A060819 (n + 1)

end

end A070262.P267593388002947298

namespace A070262

/-- `(A145979(n+1)-A060819(n+1))*A060819(n+1)` -/
def P267593388002947298.Spec : Prop :=
  ∀ n, P267593388002947298.a n = A070262 (n + 1)

end A070262

/-! ## A070262.P16753392645007180910

`A191567(n+1)-A060819(n+1)*A060819(n+1)`
-/

namespace A070262.P16753392645007180910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191567 (n + 1) - A060819 (n + 1) * A060819 (n + 1)

end

end A070262.P16753392645007180910

namespace A070262

/-- `A191567(n+1)-A060819(n+1)*A060819(n+1)` -/
def P16753392645007180910.Spec : Prop :=
  ∀ n, P16753392645007180910.a n = A070262 (n + 1)

end A070262

/-! ## A070262.P8151637034775893544

`∑[A185688(n+4)]`
-/

namespace A070262.P8151637034775893544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185688 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070262.P8151637034775893544

namespace A070262

/-- `∑[A185688(n+4)]` -/
def P8151637034775893544.Spec : Prop :=
  ∀ n, P8151637034775893544.a n = A070262 (n + 1)

end A070262

/-! ## A070262.P1170609080849455182

`A005565(n)/A227168(n+4)`
-/

namespace A070262.P1170609080849455182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005565 n : ℚ) / (A227168 (n + 4) : ℚ)

end

end A070262.P1170609080849455182

namespace A070262

/-- `A005565(n)/A227168(n+4)` -/
def P1170609080849455182.Spec : Prop :=
  ∀ n, P1170609080849455182.a n = (A070262 (n + 1) : ℚ)

end A070262

/-! ## A070262.P3705854731659872616

`A060819(n+1)*A060819(n+5)`
-/

namespace A070262.P3705854731659872616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (n + 1) * A060819 (n + 5)

end

end A070262.P3705854731659872616

namespace A070262

/-- `A060819(n+1)*A060819(n+5)` -/
def P3705854731659872616.Spec : Prop :=
  ∀ n, P3705854731659872616.a n = A070262 (n + 1)

end A070262

/-!
# A070263: Triangle T(n,k), n >= 0, 1 <= k <= 2^n, read by rows, giving minimal distance-sum of any set of k binary vectors of length n.

The programs for A070263, there is no canonical definition to state claims against.
-/

/-! ## A070263.P9164165696540582699

`A022560(A053645(n+1))`
-/

namespace A070263.P9164165696540582699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022560 (A053645 (n + 1)).toNat

end

end A070263.P9164165696540582699

/-! ## A070263.P15550962506100166916

`A022560(A062050(n+1)-1)`
-/

namespace A070263.P15550962506100166916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022560 (A062050 (n + 1) - 1).toNat

end

end A070263.P15550962506100166916

/-! ## A070263.P12226403542031601774

`A022560(n+1-A053644(n+1))`
-/

namespace A070263.P12226403542031601774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022560 ((n + 1 : ℤ) - A053644 (n + 1)).toNat

end

end A070263.P12226403542031601774

/-! ## A070263.P3234843149958104138

`A022560(and(n+1, A004756(n+1)))`
-/

namespace A070263.P3234843149958104138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022560 (Int.land (n + 1 : ℤ) (A004756 (n + 1))).toNat

end

end A070263.P3234843149958104138

/-! ## A070263.P16161741133669695477

`A022560(xor(n+1, A053644(n+1)))`
-/

namespace A070263.P16161741133669695477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022560 (Int.xor (n + 1 : ℤ) (A053644 (n + 1))).toNat

end

end A070263.P16161741133669695477

/-!
# A070264: Inverse permutation to that in A026098.

The programs for A070264, there is no canonical definition to state claims against.
-/

/-! ## A070264.P7316833015479229367

`A161680(A026099(n+1))+A026100(n+1)`
-/

namespace A070264.P7316833015479229367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A026099 (n + 1)).toNat + A026100 (n + 1)

end

end A070264.P7316833015479229367

/-! ## A070264.P2030738288574863939

`A161680(A026099(n+1))+A070939(A000203(2^n)%(2*(n+1)))`
-/

namespace A070264.P2030738288574863939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A026099 (n + 1)).toNat + A070939 (Int.tmod (A000203 (2 ^ n)) (2 * (n + 1) : ℤ)).toNat

end

end A070264.P2030738288574863939

/-! ## A070264.P7470365197146086183

`A161680(A026099(n+1))+A002326((2^n-1)%A187829(n+1))`
-/

namespace A070264.P7470365197146086183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A026099 (n + 1)).toNat + A002326 (Int.tmod ((2 ^ n : ℤ) - 1) (A187829 (n + 1))).toNat

end

end A070264.P7470365197146086183

/-!
# A070265: Odd powers: numbers n = m^e with e > 1 odd.

The programs for A070265, there is no canonical definition to state claims against.
-/

/-! ## A070265.P10964241231151913615

`A057521(∪[A097054(n+1), A354178(n+1)])`
-/

namespace A070265.P10964241231151913615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354178 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A070265.P10964241231151913615

/-! ## A070265.P16278039848597926482

`record[n^A005087(A253641(n))]`
-/

namespace A070265.P16278039848597926482
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A005087 (A253641 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070265.P16278039848597926482

/-! ## A070265.P12270245410552417711

`lt[A060576(n), A003602(A253641(n))]`
-/

namespace A070265.P12270245410552417711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A253641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070265.P12270245410552417711

/-! ## A070265.P6271435580091215186

`record[A003963(A056824(n+1))]`
-/

namespace A070265.P6271435580091215186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A056824 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070265.P6271435580091215186

/-! ## A070265.P5214050554955671326

`record[A003963(A097054(n+1))]`
-/

namespace A070265.P5214050554955671326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A097054 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070265.P5214050554955671326

/-!
# A070268: Numbers k such that mu(k) + mu(k+1) + mu(k+2) = -3.

The programs for A070268, the canonical program `A070268.P2383266410601260933` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070268 has offset 1).

The definition of A070268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1032 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070268.P2383266410601260933

`record[A080305(A114180(n+1))]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A070268

/-- `record[A080305(A114180(n+1))]` -/
def P2383266410601260933.Spec : Prop :=
  ∀ n, P2383266410601260933.a n = A070268 (n + 1)

theorem P2383266410601260933.correct : P2383266410601260933.Spec := by
  intro n
  simp only [A070268, Nat.add_sub_cancel]

end A070268

/-! ## A070268.P3902257722968134672

`filter[A114180(n+1), A252233(#)]`
-/

namespace A070268.P3902257722968134672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A070268.P3902257722968134672

namespace A070268

/-- `filter[A114180(n+1), A252233(#)]` -/
def P3902257722968134672.Spec : Prop :=
  ∀ n, P3902257722968134672.a n = A070268 (n + 1)

end A070268

/-! ## A070268.P2234725935460160276

`eq[2, a(n-1)*A008683(n+2)+n-1]` with `a(0)=0`
-/

namespace A070268.P2234725935460160276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) * A008683 (n + 2) + ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070268.P2234725935460160276

namespace A070268

/-- `eq[2, a(n-1)*A008683(n+2)+n-1]` -/
def P2234725935460160276.Spec : Prop :=
  ∀ n, (P2234725935460160276.a n : ℤ) = A070268 (n + 1)

end A070268

/-! ## A070268.P10895678096148963569

`∩[A056912(n+1), A114180(n+1)]`
-/

namespace A070268.P10895678096148963569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070268.P10895678096148963569

namespace A070268

/-- `∩[A056912(n+1), A114180(n+1)]` -/
def P10895678096148963569.Spec : Prop :=
  ∀ n, (P10895678096148963569.a n : ℤ) = A070268 (n + 1)

end A070268

/-! ## A070268.P16097332538565077764

`∩[A030059(n+1), A114180(n+1)]`
-/

namespace A070268.P16097332538565077764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070268.P16097332538565077764

namespace A070268

/-- `∩[A030059(n+1), A114180(n+1)]` -/
def P16097332538565077764.Spec : Prop :=
  ∀ n, (P16097332538565077764.a n : ℤ) = A070268 (n + 1)

end A070268

/-! ## A070268.P2168597093887995908

`record[A159075(n)-A062953(A114180(n+1))]`
-/

namespace A070268.P2168597093887995908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n - A062953 (A114180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070268.P2168597093887995908

namespace A070268

/-- `record[A159075(n)-A062953(A114180(n+1))]` -/
def P2168597093887995908.Spec : Prop :=
  ∀ n, P2168597093887995908.a n = A070268 (n + 1)

end A070268

/-! ## A070268.P17964644037551899626

`record[(3*n-A016777(n))*A062953(A114180(n+1))]`
-/

namespace A070268.P17964644037551899626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) - A016777 n) * A062953 (A114180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070268.P17964644037551899626

namespace A070268

/-- `record[(3*n-A016777(n))*A062953(A114180(n+1))]` -/
def P17964644037551899626.Spec : Prop :=
  ∀ n, P17964644037551899626.a n = A070268 (n + 1)

end A070268

/-!
# A070270: Primes for which the smallest positive primitive root is even and nonprime.

The programs for A070270, there is no canonical definition to state claims against.
-/

/-! ## A070270.P13045784540342717943

`A047936(A032555(n+1)+1)`
-/

namespace A070270.P13045784540342717943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047936 (A032555 (n + 1) + 1).toNat

end

end A070270.P13045784540342717943

/-! ## A070270.P8085623246258225579

`A047936(A032559(n+1)+1)`
-/

namespace A070270.P8085623246258225579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047936 (A032559 (n + 1) + 1).toNat

end

end A070270.P8085623246258225579

/-! ## A070270.P15680069466062383611

`A047936(A276142(n+1)+1)`
-/

namespace A070270.P15680069466062383611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047936 (A276142 (n + 1) + 1).toNat

end

end A070270.P15680069466062383611

/-! ## A070270.P8638508237457362213

`A047936(A227549(n+2)+1)`
-/

namespace A070270.P8638508237457362213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047936 (A227549 (n + 2) + 1).toNat

end

end A070270.P8638508237457362213

/-! ## A070270.P13800737854259863697

`∩[A357170(n+1), A047936(n+1)]`
-/

namespace A070270.P13800737854259863697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070270.P13800737854259863697

/-!
# A070271: a(n) = n^reverse(n) (ignore leading 0's).

The programs for A070271, there is no canonical definition to state claims against.
-/

/-! ## A070271.P3311474467176029782

`(n+1)^A004086(n+1)`
-/

namespace A070271.P3311474467176029782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A004086 (n + 1) : ℤ)

end

end A070271.P3311474467176029782

/-! ## A070271.P12096062295038887631

`(n+1)^A084011(n+1)`
-/

namespace A070271.P12096062295038887631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A084011 (n + 1) : ℤ)

end

end A070271.P12096062295038887631

/-! ## A070271.P3611643877700228325

`(n+1)^A121760(n+1)`
-/

namespace A070271.P3611643877700228325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A121760 (n + 1) : ℤ)

end

end A070271.P3611643877700228325

/-! ## A070271.P18334311831608606798

`(n+1)^A345110(n+1)`
-/

namespace A070271.P18334311831608606798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A345110 (n + 1) : ℤ)

end

end A070271.P18334311831608606798

/-! ## A070271.P2348804977738552511

`(n+1)^A135020(2*(n+1))`
-/

namespace A070271.P2348804977738552511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A135020 (2 * (n + 1)) : ℤ)

end

end A070271.P2348804977738552511

/-!
# A070274: Numbers n such that sum of digits of n equals the squarefree part of n.

The programs for A070274, there is no canonical definition to state claims against.
-/

/-! ## A070274.P9448526757239557063

`∩[A001102(n+1), A295389(n+1)]`
-/

namespace A070274.P9448526757239557063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070274.P9448526757239557063

/-! ## A070274.P4217862518204427817

`∩[A236750(n+1), A295389(n+1)]`
-/

namespace A070274.P4217862518204427817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070274.P4217862518204427817

/-! ## A070274.P7905288411402552730

`eq[A007913(A028310(n)), A007953(n)]`
-/

namespace A070274.P7905288411402552730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070274.P7905288411402552730

/-! ## A070274.P16059081118895665161

`eq[A053143(A028310(n)), A057147(n)]`
-/

namespace A070274.P16059081118895665161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070274.P16059081118895665161

/-! ## A070274.P2341882641737550575

`eq[A007913(A008574(n)), A007953(n)]`
-/

namespace A070274.P2341882641737550575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070274.P2341882641737550575

/-!
# A070275: Numbers k such that the sum of the digits of k equals the sum of the prime divisors of k.

The programs for A070275, there is no canonical definition to state claims against.
-/

/-! ## A070275.P7138578688903051895

`eq[A062028(n), A075653(A028310(n))]`
-/

namespace A070275.P7138578688903051895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075653 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070275.P7138578688903051895

/-! ## A070275.P6361542835897714083

`eq[A066568(n), A076694(A028310(n))]`
-/

namespace A070275.P6361542835897714083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076694 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070275.P6361542835897714083

/-! ## A070275.P6617589050424905342

`eq[A160939(n+1), A254340(A028310(n))]`
-/

namespace A070275.P6617589050424905342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254340 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070275.P6617589050424905342

/-! ## A070275.P17537100812189588089

`eq[A007953(n), A008472(A233583(n+1))]`
-/

namespace A070275.P17537100812189588089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070275.P17537100812189588089

/-! ## A070275.P18267872031082045631

`eq[A160939(n+1), A254340(A233583(n+1))]`
-/

namespace A070275.P18267872031082045631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254340 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070275.P18267872031082045631

/-!
# A070276: Numbers n such that sum of digits of n equals the sum of digits of n^3.

The programs for A070276, there is no canonical definition to state claims against.
-/

/-! ## A070276.P7059324516216524011

`eq[A004164(n), A007953(n)]`
-/

namespace A070276.P7059324516216524011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070276.P7059324516216524011

/-! ## A070276.P13278819650257409002

`eq[A004164(n), A326746(n)]`
-/

namespace A070276.P13278819650257409002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070276.P13278819650257409002

/-! ## A070276.P16182312757305274974

`eq[A004164(n)², A118881(n)]`
-/

namespace A070276.P16182312757305274974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070276.P16182312757305274974

/-! ## A070276.P8954225094387875253

`eq[A004164(n)+n, A062028(n)]`
-/

namespace A070276.P8954225094387875253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070276.P8954225094387875253

/-! ## A070276.P12343208542318367947

`eq[2*A004164(n), A169805(n)]`
-/

namespace A070276.P12343208542318367947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070276.P12343208542318367947

/-!
# A070277: Smallest prime ending in n, or 0 if no such prime exists.

The programs for A070277, there is no canonical definition to state claims against.
-/

/-! ## A070277.P18002518464670487392

`A008966(A027306(n))*A068164(n+1)`
-/

namespace A070277.P18002518464670487392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A027306 n).toNat * A068164 (n + 1)

end

end A070277.P18002518464670487392

/-! ## A070277.P7567467386360036218

`A008966(A027306(n))*A089754(n+1)`
-/

namespace A070277.P7567467386360036218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A027306 n).toNat * A089754 (n + 1)

end

end A070277.P7567467386360036218

/-! ## A070277.P4955882831477673607

`lcm(A008683(A137954(n)), A068164(n+1))`
-/

namespace A070277.P4955882831477673607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A137954 n).toNat) (A068164 (n + 1))

end

end A070277.P4955882831477673607

/-!
# A070279: Sum of digits of n equals the sum of digits of 2n.

The programs for A070279, the canonical program `A070279.P16026357053581798392` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070279 has offset 1).

The definition of A070279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 791 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070279.P6277398150552552565

`eq[2, A180011(n+1)]+1`
-/

namespace A070279.P6277398150552552565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180011 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070279.P6277398150552552565

namespace A070279

/-- `eq[2, A180011(n+1)]+1` -/
def P6277398150552552565.Spec : Prop :=
  ∀ n, (P6277398150552552565.a n : ℤ) = A070279 (n + 1)

end A070279

/-! ## A070279.P17514171449531016457

`eq[2, A180011(A028310(n))]`
-/

namespace A070279.P17514171449531016457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180011 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070279.P17514171449531016457

namespace A070279

/-- `eq[2, A180011(A028310(n))]` -/
def P17514171449531016457.Spec : Prop :=
  ∀ n, (P17514171449531016457.a n : ℤ) = A070279 (n + 1)

end A070279

/-! ## A070279.P16026357053581798392

`eq[A004092(n+1), A007953(n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A070279

/-- `eq[A004092(n+1), A007953(n+1)]+1` -/
def P16026357053581798392.Spec : Prop :=
  ∀ n, (P16026357053581798392.a n : ℤ) = A070279 (n + 1)

theorem P16026357053581798392.correct : P16026357053581798392.Spec := by
  intro n
  simp only [A070279, Nat.add_sub_cancel]

end A070279

/-! ## A070279.P16244064368348644865

`eq[A004092(n), A028310(A007953(n))]`
-/

namespace A070279.P16244064368348644865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070279.P16244064368348644865

namespace A070279

/-- `eq[A004092(n), A028310(A007953(n))]` -/
def P16244064368348644865.Spec : Prop :=
  ∀ n, (P16244064368348644865.a n : ℤ) = A070279 (n + 1)

end A070279

/-! ## A070279.P14836005382752824663

`eq[A007953(n), A233583(A004155(n))]`
-/

namespace A070279.P14836005382752824663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A004155 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070279.P14836005382752824663

namespace A070279

/-- `eq[A007953(n), A233583(A004155(n))]` -/
def P14836005382752824663.Spec : Prop :=
  ∀ n, (P14836005382752824663.a n : ℤ) = A070279 (n + 1)

end A070279

/-! ## A070279.P6552724388275934083

`eq[A007953(A004277(n)), A007953(n)]`
-/

namespace A070279.P6552724388275934083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070279.P6552724388275934083

namespace A070279

/-- `eq[A007953(A004277(n)), A007953(n)]` -/
def P6552724388275934083.Spec : Prop :=
  ∀ n, (P6552724388275934083.a n : ℤ) = A070279 (n + 1)

end A070279

/-! ## A070279.P7808492326390607071

`eq[A118880(A004277(n)), A118880(n)]`
-/

namespace A070279.P7808492326390607071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070279.P7808492326390607071

namespace A070279

/-- `eq[A118880(A004277(n)), A118880(n)]` -/
def P7808492326390607071.Spec : Prop :=
  ∀ n, (P7808492326390607071.a n : ℤ) = A070279 (n + 1)

end A070279

/-! ## A070279.P8150300062621716426

`eq[A118881(A004277(n)), A118881(n)]`
-/

namespace A070279.P8150300062621716426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070279.P8150300062621716426

namespace A070279

/-- `eq[A118881(A004277(n)), A118881(n)]` -/
def P8150300062621716426.Spec : Prop :=
  ∀ n, (P8150300062621716426.a n : ℤ) = A070279 (n + 1)

end A070279

/-! ## A070279.P14953240087282476913

`eq[A169805(A004277(n)), A169805(n)]`
-/

namespace A070279.P14953240087282476913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070279.P14953240087282476913

namespace A070279

/-- `eq[A169805(A004277(n)), A169805(n)]` -/
def P14953240087282476913.Spec : Prop :=
  ∀ n, (P14953240087282476913.a n : ℤ) = A070279 (n + 1)

end A070279

/-! ## A070279.P4791067511473915192

`eq[A329562(A004277(n)), A329562(n)]`
-/

namespace A070279.P4791067511473915192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070279.P4791067511473915192

namespace A070279

/-- `eq[A329562(A004277(n)), A329562(n)]` -/
def P4791067511473915192.Spec : Prop :=
  ∀ n, (P4791067511473915192.a n : ℤ) = A070279 (n + 1)

end A070279

/-! ## A070279.P4357059965342084411

`eq[A007953(A004275(n+1)), A007953(n)]`
-/

namespace A070279.P4357059965342084411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A004275 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070279.P4357059965342084411

namespace A070279

/-- `eq[A007953(A004275(n+1)), A007953(n)]` -/
def P4357059965342084411.Spec : Prop :=
  ∀ n, (P4357059965342084411.a n : ℤ) = A070279 (n + 1)

end A070279

/-! ## A070279.P12310596281029199225

`eq[A007953(A004273(n)+1), A007953(n)]`
-/

namespace A070279.P12310596281029199225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A004273 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070279.P12310596281029199225

namespace A070279

/-- `eq[A007953(A004273(n)+1), A007953(n)]` -/
def P12310596281029199225.Spec : Prop :=
  ∀ n, (P12310596281029199225.a n : ℤ) = A070279 (n + 1)

end A070279

/-! ## A070279.P4589871244042890037

`eq[A007953(2*n), A028310(A007953(n))]`
-/

namespace A070279.P4589871244042890037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070279.P4589871244042890037

namespace A070279

/-- `eq[A007953(2*n), A028310(A007953(n))]` -/
def P4589871244042890037.Spec : Prop :=
  ∀ n, (P4589871244042890037.a n : ℤ) = A070279 (n + 1)

end A070279

/-! ## A070279.P15141325780370728776

`eq[2*A057147(n), A057147(A004277(n))]`
-/

namespace A070279.P15141325780370728776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057147 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070279.P15141325780370728776

namespace A070279

/-- `eq[2*A057147(n), A057147(A004277(n))]` -/
def P15141325780370728776.Spec : Prop :=
  ∀ n, (P15141325780370728776.a n : ℤ) = A070279 (n + 1)

end A070279

/-! ## A070279.P15525266227764200325

`eq[A118880(A028310(2*n)), A118880(n)]`
-/

namespace A070279.P15525266227764200325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 (A028310 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070279.P15525266227764200325

namespace A070279

/-- `eq[A118880(A028310(2*n)), A118880(n)]` -/
def P15525266227764200325.Spec : Prop :=
  ∀ n, (P15525266227764200325.a n : ℤ) = A070279 (n + 1)

end A070279

/-! ## A070279.P15075368515846708010

`eq[A118881(A028310(2*n)), A118881(n)]`
-/

namespace A070279.P15075368515846708010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (A028310 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070279.P15075368515846708010

namespace A070279

/-- `eq[A118881(A028310(2*n)), A118881(n)]` -/
def P15075368515846708010.Spec : Prop :=
  ∀ n, (P15075368515846708010.a n : ℤ) = A070279 (n + 1)

end A070279

/-! ## A070279.P3281750849440555486

`eq[A169805(A028310(2*n)), A169805(n)]`
-/

namespace A070279.P3281750849440555486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 (A028310 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070279.P3281750849440555486

namespace A070279

/-- `eq[A169805(A028310(2*n)), A169805(n)]` -/
def P3281750849440555486.Spec : Prop :=
  ∀ n, (P3281750849440555486.a n : ℤ) = A070279 (n + 1)

end A070279

/-! ## A070279.P15671267809859584465

`eq[A007953(n), A007953(A028310(n)+n)]`
-/

namespace A070279.P15671267809859584465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A028310 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070279.P15671267809859584465

namespace A070279

/-- `eq[A007953(n), A007953(A028310(n)+n)]` -/
def P15671267809859584465.Spec : Prop :=
  ∀ n, (P15671267809859584465.a n : ℤ) = A070279 (n + 1)

end A070279

/-! ## A070279.P8612097346114637521

`eq[A007953(2*n), A007953(A123108(2*n))]`
-/

namespace A070279.P8612097346114637521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070279.P8612097346114637521

namespace A070279

/-- `eq[A007953(2*n), A007953(A123108(2*n))]` -/
def P8612097346114637521.Spec : Prop :=
  ∀ n, (P8612097346114637521.a n : ℤ) = A070279 (n + 1)

end A070279

/-! ## A070279.P5921320222791519849

`eq[A004092(n), A004092(A008706(n))]`
-/

namespace A070279.P5921320222791519849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070279.P5921320222791519849

namespace A070279

/-- `eq[A004092(n), A004092(A008706(n))]` -/
def P5921320222791519849.Spec : Prop :=
  ∀ n, (P5921320222791519849.a n : ℤ) = A070279 (n + 1)

end A070279

/-!
# A070280: a(1) = 1; a(n) = a(n-1) + product of the digits of n-1.

The programs for A070280, the canonical program `A070280.P4239363578348049834` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070280 has offset 1).

The definition of A070280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070280.P4239363578348049834

`∑[∏{digits}[n, #]]+1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070280

/-- `∑[∏{digits}[n, #]]+1` -/
def P4239363578348049834.Spec : Prop :=
  ∀ n, (P4239363578348049834.a n : ℤ) = A070280 (n + 1)

theorem P4239363578348049834.correct : P4239363578348049834.Spec := by
  intro n
  simp only [A070280, Nat.add_sub_cancel]

end A070280

/-! ## A070280.P2761789946785318094

`∏{digits}[n, #]+a(n-1)` with `a(0)=1`
-/

namespace A070280.P2761789946785318094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod + a (n - 1)

end

end A070280.P2761789946785318094

namespace A070280

/-- `∏{digits}[n, #]+a(n-1)` -/
def P2761789946785318094.Spec : Prop :=
  ∀ n, (P2761789946785318094.a n : ℤ) = A070280 (n + 1)

end A070280

/-! ## A070280.P10508410512090322010

`∑[n%10*a(floor(n/10))]` with `a(0)=1`
-/

namespace A070280.P10508410512090322010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n % 10 * f1 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070280.P10508410512090322010

namespace A070280

/-- `∑[n%10*a(floor(n/10))]` -/
def P10508410512090322010.Spec : Prop :=
  ∀ n, (P10508410512090322010.a n : ℤ) = A070280 (n + 1)

end A070280

/-! ## A070280.P14980817710326317824

`∏{digits}[n, #]-floor(-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A070280.P14980817710326317824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ) - (-a (n - 1))

end

end A070280.P14980817710326317824

namespace A070280

/-- `∏{digits}[n, #]-floor(-a(n-1))` -/
def P14980817710326317824.Spec : Prop :=
  ∀ n, P14980817710326317824.a n = A070280 (n + 1)

end A070280

/-! ## A070280.P9427147511733022157

`∏{digits}[n, #]-ceil(-a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A070280.P9427147511733022157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ) - (-a (n - 1))

end

end A070280.P9427147511733022157

namespace A070280

/-- `∏{digits}[n, #]-ceil(-a(n-1))` -/
def P9427147511733022157.Spec : Prop :=
  ∀ n, P9427147511733022157.a n = A070280 (n + 1)

end A070280

/-! ## A070280.P3471648133356286578

`∑[A007954(n)]+1`
-/

namespace A070280.P3471648133356286578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A070280.P3471648133356286578

namespace A070280

/-- `∑[A007954(n)]+1` -/
def P3471648133356286578.Spec : Prop :=
  ∀ n, P3471648133356286578.a n = A070280 (n + 1)

end A070280

/-! ## A070280.P16535369758777445273

`∑[∏{digits}[A028310(n), #]]`
-/

namespace A070280.P16535369758777445273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070280.P16535369758777445273

namespace A070280

/-- `∑[∏{digits}[A028310(n), #]]` -/
def P16535369758777445273.Spec : Prop :=
  ∀ n, (P16535369758777445273.a n : ℤ) = A070280 (n + 1)

end A070280

/-! ## A070280.P17725261127850332201

`∑[abs(A187844(n))]+1`
-/

namespace A070280.P17725261127850332201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187844 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A070280.P17725261127850332201

namespace A070280

/-- `∑[abs(A187844(n))]+1` -/
def P17725261127850332201.Spec : Prop :=
  ∀ n, P17725261127850332201.a n = A070280 (n + 1)

end A070280

/-! ## A070280.P12631640101741724752

`∑[n-A070565(n)]+1`
-/

namespace A070280.P12631640101741724752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A070565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A070280.P12631640101741724752

namespace A070280

/-- `∑[n-A070565(n)]+1` -/
def P12631640101741724752.Spec : Prop :=
  ∀ n, P12631640101741724752.a n = A070280 (n + 1)

end A070280

/-! ## A070280.P9428417317055631178

`∑[A230099(n)-n]+1`
-/

namespace A070280.P9428417317055631178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230099 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A070280.P9428417317055631178

namespace A070280

/-- `∑[A230099(n)-n]+1` -/
def P9428417317055631178.Spec : Prop :=
  ∀ n, P9428417317055631178.a n = A070280 (n + 1)

end A070280

/-! ## A070280.P3353229423803638087

`ceil((∑[A005408(∏{digits}[n, #])]-n)/2)`
-/

namespace A070280.P3353229423803638087
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) : ℤ) : ℚ) / 2⌉

end

end A070280.P3353229423803638087

namespace A070280

/-- `ceil((∑[A005408(∏{digits}[n, #])]-n)/2)` -/
def P3353229423803638087.Spec : Prop :=
  ∀ n, P3353229423803638087.a n = A070280 (n + 1)

end A070280

/-! ## A070280.P10196243935991120256

`∑[A007954(A028310(n))]`
-/

namespace A070280.P10196243935991120256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070280.P10196243935991120256

namespace A070280

/-- `∑[A007954(A028310(n))]` -/
def P10196243935991120256.Spec : Prop :=
  ∀ n, P10196243935991120256.a n = A070280 (n + 1)

end A070280

/-! ## A070280.P10589381227512687309

`∑[A007953(n)-A062329(n)]+1`
-/

namespace A070280.P10589381227512687309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - A062329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A070280.P10589381227512687309

namespace A070280

/-- `∑[A007953(n)-A062329(n)]+1` -/
def P10589381227512687309.Spec : Prop :=
  ∀ n, P10589381227512687309.a n = A070280 (n + 1)

end A070280

/-!
# A070281: Smallest prime which is the sum of n consecutive primes, or 0 if no such prime exists.

The programs for A070281, there is no canonical definition to state claims against.
-/

/-! ## A070281.P7216229125234909202

`p?[A122203(n+2)+A057163(A123493(n+3))]`
-/

namespace A070281.P7216229125234909202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122203 (n + 2) + A057163 (A123493 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070281.P7216229125234909202

/-!
# A070282: a(1) = 1; a(2) = 2; a(n) = [sum of digits of a(n-1)]^[sum of digits of a(n-2)] for n > 2.

The programs for A070282, there is no canonical definition to state claims against.
-/

/-! ## A070282.P13697788949291540967

`A000120(A151162(n))^A005251(n)`
-/

namespace A070282.P13697788949291540967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 (A151162 n).toNat : ℚ) ^ (A005251 n : ℤ)

end

end A070282.P13697788949291540967

/-! ## A070282.P10169036555032839014

`A000124(A071626(n+1))^A117707(A292215(n))`
-/

namespace A070282.P10169036555032839014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000124 (A071626 (n + 1)).toNat : ℚ) ^ (A117707 (A292215 n).toNat : ℤ)

end

end A070282.P10169036555032839014

/-! ## A070282.P11548994466962443377

`A000124(A071626(n+1))^A117707(A292216(n))`
-/

namespace A070282.P11548994466962443377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000124 (A071626 (n + 1)).toNat : ℚ) ^ (A117707 (A292216 n).toNat : ℤ)

end

end A070282.P11548994466962443377

/-!
# A070283: a(1) = 1; a(2) = 2; a(n) = [product of digits of a(n-1)]^[product of digits of a(n-2)] for n > 2.

The programs for A070283, there is no canonical definition to state claims against.
-/

/-! ## A070283.P13385801558373908544

`(a(n-2)+2)^(a(n-1)/a(n-2))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A070283.P13385801558373908544
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  (a (n - 2) + 2) ^ (a (n - 1) / a (n - 2))

end

end A070283.P13385801558373908544

/-! ## A070283.P13507299846354210794

`A175809(A018910(n))`
-/

namespace A070283.P13507299846354210794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175809 (A018910 n).toNat

end

end A070283.P13507299846354210794

/-!
# A070284: Smallest of 4 consecutive numbers each divisible by a square.

The programs for A070284, there is no canonical definition to state claims against.
-/

/-! ## A070284.P10778131535753794925

`∩[A070258(n+1)-1, A070258(n+1)]`
-/

namespace A070284.P10778131535753794925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070258 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070284.P10778131535753794925

/-! ## A070284.P10691639447703636485

`∩[A114180(n+1)-1, A114180(n+1)]`
-/

namespace A070284.P10691639447703636485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114180 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070284.P10691639447703636485

/-! ## A070284.P2098637042606243580

`∩[A281192(n+1)+1, A281192(n+1)]-2`
-/

namespace A070284.P2098637042606243580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A070284.P2098637042606243580

/-! ## A070284.P17529198077352468914

`∩[A068781(n+1)-2, A068781(n+1)]`
-/

namespace A070284.P17529198077352468914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068781 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070284.P17529198077352468914

/-! ## A070284.P13358374326592840461

`∩[A070258(n+1), A066182(A070258(n+1))]`
-/

namespace A070284.P13358374326592840461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A070258 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070284.P13358374326592840461

/-!
# A070285: a(n) = n^(n-2) * (n-1)^(n-1).

The programs for A070285, the canonical program `A070285.P17042730788052653744` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070285 has offset 2).

The definition of A070285 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)^n*(n+1)^(n+1)` (program `A070285.P17042730788052653744`, by `A070285.P17042730788052653744.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070285.P17042730788052653744

`(n+2)^n*(n+1)^(n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070285

/-- `(n+2)^n*(n+1)^(n+1)` -/
def P17042730788052653744.Spec : Prop :=
  ∀ n, (P17042730788052653744.a n : ℤ) = A070285 (n + 2)

theorem P17042730788052653744.correct : P17042730788052653744.Spec := by
  intro n
  simp only [A070285, Nat.add_sub_cancel]

end A070285

/-! ## A070285.P16033679556780138728

`lcm((n+1)^(n+1), (n+2)^n)`
-/

namespace A070285.P16033679556780138728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((n + 1) ^ (n + 1)) ((n + 2) ^ n)

end

end A070285.P16033679556780138728

namespace A070285

/-- `lcm((n+1)^(n+1), (n+2)^n)` -/
def P16033679556780138728.Spec : Prop :=
  ∀ n, (P16033679556780138728.a n : ℤ) = A070285 (n + 2)

end A070285

/-! ## A070285.P4570790956682063546

`A072590(2*(n+1)²)`
-/

namespace A070285.P4570790956682063546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072590 (2 * (n + 1) ^ 2)

end

end A070285.P4570790956682063546

namespace A070285

/-- `A072590(2*(n+1)²)` -/
def P4570790956682063546.Spec : Prop :=
  ∀ n, P4570790956682063546.a n = A070285 (n + 2)

end A070285

/-! ## A070285.P6511856004084975794

`record[A071207(n)*A088956(n)]`
-/

namespace A070285.P6511856004084975794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071207 n * A088956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070285.P6511856004084975794

namespace A070285

/-- `record[A071207(n)*A088956(n)]` -/
def P6511856004084975794.Spec : Prop :=
  ∀ n, P6511856004084975794.a n = A070285 (n + 2)

end A070285

/-! ## A070285.P17149690403744444048

`record[A000312(A002024(n+1))*A338280(n+2)]`
-/

namespace A070285.P17149690403744444048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A002024 (n + 1)).toNat * A338280 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070285.P17149690403744444048

namespace A070285

/-- `record[A000312(A002024(n+1))*A338280(n+2)]` -/
def P17149690403744444048.Spec : Prop :=
  ∀ n, P17149690403744444048.a n = A070285 (n + 2)

end A070285

/-!
# A070286: Numbers k such that the equation sigma(sigma(x)) = k has solutions.

The programs for A070286, the canonical program `A070286.P10750249744303801205` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070286 has offset 1).

The definition of A070286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 690 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070286.P10091178762254556887

`record[A007609(n+1)*A175192(A085790(n+1))]`
-/

namespace A070286.P10091178762254556887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007609 (n + 1) * A175192 (A085790 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070286.P10091178762254556887

namespace A070286

/-- `record[A007609(n+1)*A175192(A085790(n+1))]` -/
def P10091178762254556887.Spec : Prop :=
  ∀ n, P10091178762254556887.a n = A070286 (n + 1)

end A070286

/-! ## A070286.P15285563835833152414

`lt[ceil(sin(n)²), A286011(n+1)]+1`
-/

namespace A070286.P15285563835833152414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286011 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A070286.P15285563835833152414

namespace A070286

/-- `lt[ceil(sin(n)²), A286011(n+1)]+1` -/
def P15285563835833152414.Spec : Prop :=
  ∀ n, (P15285563835833152414.a n : ℤ) = A070286 (n + 1)

end A070286

/-! ## A070286.P10750249744303801205

`lt[0, char[A000203(A000203(n+1))]]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A070286

/-- `lt[0, char[A000203(A000203(n+1))]]` -/
def P10750249744303801205.Spec : Prop :=
  ∀ n, (P10750249744303801205.a n : ℤ) = A070286 (n + 1)

theorem P10750249744303801205.correct : P10750249744303801205.Spec := by
  intro n
  simp only [A070286, Nat.add_sub_cancel]

end A070286

/-! ## A070286.P4225749980114060362

`lt[A057427(n), A286011(n+1)]+1`
-/

namespace A070286.P4225749980114060362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286011 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A070286.P4225749980114060362

namespace A070286

/-- `lt[A057427(n), A286011(n+1)]+1` -/
def P4225749980114060362.Spec : Prop :=
  ∀ n, (P4225749980114060362.a n : ℤ) = A070286 (n + 1)

end A070286

/-! ## A070286.P1759434587341949023

`lt[A070750(n+1)², A286011(n+1)]+1`
-/

namespace A070286.P1759434587341949023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286011 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A070286.P1759434587341949023

namespace A070286

/-- `lt[A070750(n+1)², A286011(n+1)]+1` -/
def P1759434587341949023.Spec : Prop :=
  ∀ n, (P1759434587341949023.a n : ℤ) = A070286 (n + 1)

end A070286

/-! ## A070286.P14333275873244257310

`lt[A303280(A006530(n+1)), A286011(n+1)]+1`
-/

namespace A070286.P14333275873244257310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303280 (A006530 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286011 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A070286.P14333275873244257310

namespace A070286

/-- `lt[A303280(A006530(n+1)), A286011(n+1)]+1` -/
def P14333275873244257310.Spec : Prop :=
  ∀ n, (P14333275873244257310.a n : ℤ) = A070286 (n + 1)

end A070286

/-! ## A070286.P6129727372202463852

`lt[0, char[A051027(n+1)]]`
-/

namespace A070286.P6129727372202463852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070286.P6129727372202463852

namespace A070286

/-- `lt[0, char[A051027(n+1)]]` -/
def P6129727372202463852.Spec : Prop :=
  ∀ n, (P6129727372202463852.a n : ℤ) = A070286 (n + 1)

end A070286

/-!
# A070287: Numbers k such that the equation lcm(sigma(x),phi(x))=k has solutions.

The programs for A070287, the canonical program `A070287.P15555425564075004326` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070287 has offset 1).

The definition of A070287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070287.P15555425564075004326

`eq[1, char[A009286(n+1)]]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A070287

/-- `eq[1, char[A009286(n+1)]]` -/
def P15555425564075004326.Spec : Prop :=
  ∀ n, (P15555425564075004326.a n : ℤ) = A070287 (n + 1)

theorem P15555425564075004326.correct : P15555425564075004326.Spec := by
  intro n
  simp only [A070287, Nat.add_sub_cancel]

end A070287

/-! ## A070287.P8508460755415931011

`record[(n-1)*char[A009286(n+2)]+1]`
-/

namespace A070287.P8508460755415931011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009286 (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070287.P8508460755415931011

namespace A070287

/-- `record[(n-1)*char[A009286(n+2)]+1]` -/
def P8508460755415931011.Spec : Prop :=
  ∀ n, P8508460755415931011.a n = A070287 (n + 1)

end A070287

/-! ## A070287.P11317830285029908290

`lt[A000007(n), char[A009286(n+1)]]`
-/

namespace A070287.P11317830285029908290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009286 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A070287.P11317830285029908290

namespace A070287

/-- `lt[A000007(n), char[A009286(n+1)]]` -/
def P11317830285029908290.Spec : Prop :=
  ∀ n, (P11317830285029908290.a n : ℤ) = A070287 (n + 1)

end A070287

/-! ## A070287.P16986816239757288924

`lt[π/7, char[A009286(A000027(n+1))]]`
-/

namespace A070287.P16986816239757288924
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.pi / 7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009286 (A000027 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A070287.P16986816239757288924

namespace A070287

/-- `lt[π/7, char[A009286(A000027(n+1))]]` -/
def P16986816239757288924.Spec : Prop :=
  ∀ n, (P16986816239757288924.a n : ℤ) = A070287 (n + 1)

end A070287

/-! ## A070287.P3517446496673060535

`lt[1, A000005(n*char[A009286(n+1)]+1)²]`
-/

namespace A070287.P3517446496673060535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009286 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n * (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A070287.P3517446496673060535

namespace A070287

/-- `lt[1, A000005(n*char[A009286(n+1)]+1)²]` -/
def P3517446496673060535.Spec : Prop :=
  ∀ n, (P3517446496673060535.a n : ℤ) = A070287 (n + 1)

end A070287

/-!
# A070288: a(n) = Sum_{d|n} omega(d)*omega(n/d).

The programs for A070288, the canonical program `A070288.P3694749558382140942` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070288 has offset 1).

The definition of A070288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070288.P15750899607823827463

`∑{d}[n+1, A345354(#)]`
-/

namespace A070288.P15750899607823827463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A345354 d

end

end A070288.P15750899607823827463

namespace A070288

/-- `∑{d}[n+1, A345354(#)]` -/
def P15750899607823827463.Spec : Prop :=
  ∀ n, P15750899607823827463.a n = A070288 (n + 1)

end A070288

/-! ## A070288.P3694749558382140942

`∑{p}[n+1, A062799((n+1)/#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A070288

/-- `∑{p}[n+1, A062799((n+1)/#)]` -/
def P3694749558382140942.Spec : Prop :=
  ∀ n, P3694749558382140942.a n = A070288 (n + 1)

theorem P3694749558382140942.correct : P3694749558382140942.Spec := by
  intro n
  simp only [A070288, Nat.add_sub_cancel]

end A070288

/-! ## A070288.P9783894621138580445

`∑{d}[n+1, A001221(#)*A001221((n+1)/#)]`
-/

namespace A070288.P9783894621138580445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A070288.P9783894621138580445

namespace A070288

/-- `∑{d}[n+1, A001221(#)*A001221((n+1)/#)]` -/
def P9783894621138580445.Spec : Prop :=
  ∀ n, P9783894621138580445.a n = A070288 (n + 1)

end A070288

/-! ## A070288.P12076475030522275786

`∑{d}[n+1, A010051(#)*A062799((n+1)/#)]`
-/

namespace A070288.P12076475030522275786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A062799 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A070288.P12076475030522275786

namespace A070288

/-- `∑{d}[n+1, A010051(#)*A062799((n+1)/#)]` -/
def P12076475030522275786.Spec : Prop :=
  ∀ n, P12076475030522275786.a n = A070288 (n + 1)

end A070288

/-! ## A070288.P3767872257226457356

`∑{d}[n+1, A000005(#)*A230595((n+1)/#)]`
-/

namespace A070288.P3767872257226457356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A230595 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A070288.P3767872257226457356

namespace A070288

/-- `∑{d}[n+1, A000005(#)*A230595((n+1)/#)]` -/
def P3767872257226457356.Spec : Prop :=
  ∀ n, P3767872257226457356.a n = A070288 (n + 1)

end A070288

/-!
# A070289: Number of distinct values of multinomial coefficients ( n / (p1, p2, p3, ...) ) where (p1, p2, p3, ...) runs over all partitions of n.

The programs for A070289, there is no canonical definition to state claims against.
-/

/-! ## A070289.P3659626018057667232

`A215520(∑[n]+floor(acot(n)))`
-/

namespace A070289.P3659626018057667232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215520 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A070289.P3659626018057667232

/-! ## A070289.P16301921316276572096

`A215520(∑[n-char[1]]+1)`
-/

namespace A070289.P16301921316276572096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215520 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A070289.P16301921316276572096

/-! ## A070289.P15391624085924314083

`A000041(n)-A309897(n)`
-/

namespace A070289.P15391624085924314083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A309897 n

end

end A070289.P15391624085924314083

/-! ## A070289.P922814122903285726

`A215521(A028310(2*n²))`
-/

namespace A070289.P922814122903285726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215521 (A028310 (2 * n ^ 2)).toNat

end

end A070289.P922814122903285726

/-! ## A070289.P18249752873622580972

`A215521(record[A176889(n+1)])`
-/

namespace A070289.P18249752873622580972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176889 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215521 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A070289.P18249752873622580972

/-! ## A070289.P18159733426965387487

`A215521(n²+A028310(n²))`
-/

namespace A070289.P18159733426965387487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215521 ((n ^ 2 : ℤ) + A028310 (n ^ 2)).toNat

end

end A070289.P18159733426965387487

/-! ## A070289.P1975077854815650614

`A215521(A038722(C(2*n, 2)+n+1))`
-/

namespace A070289.P1975077854815650614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215521 (A038722 (Nat.choose (2 * n) 2 + n + 1)).toNat

end

end A070289.P1975077854815650614

/-! ## A070289.P11543288350839283734

`A215521(A028310(2*n)*A028310(n))`
-/

namespace A070289.P11543288350839283734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215521 (A028310 (2 * n) * A028310 n).toNat

end

end A070289.P11543288350839283734

/-! ## A070289.P14365380898046055996

`A215521(∑[4*n]+1)`
-/

namespace A070289.P14365380898046055996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215521 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A070289.P14365380898046055996

/-! ## A070289.P17014950023967576348

`A215521(A001844(n))%p?[round(8*n/7)]²`
-/

namespace A070289.P17014950023967576348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215521 (A001844 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2)

end

end A070289.P17014950023967576348

/-!
# A070290: a(n) = lcm(8,n)/gcd(8,n).

The programs for A070290, the canonical program `A070290.P4086161650100029925` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070290 has offset 1).

The definition of A070290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070290.P4086161650100029925

`lcm(8, n+1)/gcd(8, n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070290

/-- `lcm(8, n+1)/gcd(8, n+1)` -/
def P4086161650100029925.Spec : Prop :=
  ∀ n, P4086161650100029925.a n = (A070290 (n + 1) : ℚ)

end A070290

/-! ## A070290.P15849211138370463138

`A109049(n+1)/A109011(n+1)`
-/

namespace A070290.P15849211138370463138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109049 (n + 1) : ℚ) / (A109011 (n + 1) : ℚ)

end

end A070290.P15849211138370463138

namespace A070290

/-- `A109049(n+1)/A109011(n+1)` -/
def P15849211138370463138.Spec : Prop :=
  ∀ n, P15849211138370463138.a n = (A070290 (n + 1) : ℚ)

end A070290

/-! ## A070290.P10021256512324526278

`8*(n+1)/gcd(64, (n+1)²)`
-/

namespace A070290.P10021256512324526278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * ((n + 1 : ℚ) / (Nat.gcd 64 ((n + 1) ^ 2) : ℚ))

end

end A070290.P10021256512324526278

namespace A070290

/-- `8*(n+1)/gcd(64, (n+1)²)` -/
def P10021256512324526278.Spec : Prop :=
  ∀ n, P10021256512324526278.a n = (A070290 (n + 1) : ℚ)

end A070290

/-! ## A070290.P10044218933034269734

`A139098(A060819(A026741(n+1)))/(n+1)`
-/

namespace A070290.P10044218933034269734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139098 (A060819 (A026741 (n + 1)).toNat).toNat : ℚ) / (n + 1 : ℚ)

end

end A070290.P10044218933034269734

namespace A070290

/-- `A139098(A060819(A026741(n+1)))/(n+1)` -/
def P10044218933034269734.Spec : Prop :=
  ∀ n, P10044218933034269734.a n = (A070290 (n + 1) : ℚ)

end A070290

/-! ## A070290.P536176903332895533

`A022144(A106609(n+1))²/A022144(n+1)`
-/

namespace A070290.P536176903332895533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022144 (A106609 (n + 1)).toNat ^ 2 : ℚ) / (A022144 (n + 1) : ℚ)

end

end A070290.P536176903332895533

namespace A070290

/-- `A022144(A106609(n+1))²/A022144(n+1)` -/
def P536176903332895533.Spec : Prop :=
  ∀ n, P536176903332895533.a n = (A070290 (n + 1) : ℚ)

end A070290

/-! ## A070290.P12888445493608751196

`A205382(n+1)/A109011(n+1)`
-/

namespace A070290.P12888445493608751196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205382 (n + 1) : ℚ) / (A109011 (n + 1) : ℚ)

end

end A070290.P12888445493608751196

namespace A070290

/-- `A205382(n+1)/A109011(n+1)` -/
def P12888445493608751196.Spec : Prop :=
  ∀ n, P12888445493608751196.a n = (A070290 (n + 1) : ℚ)

end A070290

/-! ## A070290.P2779454766809227529

`A008590(n+1)/A109011(n+1)²`
-/

namespace A070290.P2779454766809227529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008590 (n + 1) : ℚ) / (A109011 (n + 1) ^ 2 : ℚ)

end

end A070290.P2779454766809227529

namespace A070290

/-- `A008590(n+1)/A109011(n+1)²` -/
def P2779454766809227529.Spec : Prop :=
  ∀ n, P2779454766809227529.a n = (A070290 (n + 1) : ℚ)

end A070290

/-! ## A070290.P3863211113572226483

`A064680(A060819(n+1))*A176895(n+1)`
-/

namespace A070290.P3863211113572226483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A060819 (n + 1)).toNat * A176895 (n + 1)

end

end A070290.P3863211113572226483

namespace A070290

/-- `A064680(A060819(n+1))*A176895(n+1)` -/
def P3863211113572226483.Spec : Prop :=
  ∀ n, P3863211113572226483.a n = A070290 (n + 1)

end A070290

/-! ## A070290.P949913634962671430

`A008590(A106609(n+1))²/A008590(n+1)`
-/

namespace A070290.P949913634962671430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008590 (A106609 (n + 1)).toNat ^ 2 : ℚ) / (A008590 (n + 1) : ℚ)

end

end A070290.P949913634962671430

namespace A070290

/-- `A008590(A106609(n+1))²/A008590(n+1)` -/
def P949913634962671430.Spec : Prop :=
  ∀ n, P949913634962671430.a n = (A070290 (n + 1) : ℚ)

end A070290

/-! ## A070290.P4071709282970590460

`A106609(n+1)*A205383(n+1)`
-/

namespace A070290.P4071709282970590460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (n + 1) * A205383 (n + 1)

end

end A070290.P4071709282970590460

namespace A070290

/-- `A106609(n+1)*A205383(n+1)` -/
def P4071709282970590460.Spec : Prop :=
  ∀ n, P4071709282970590460.a n = A070290 (n + 1)

end A070290

/-! ## A070290.P1215394652923045462

`A001971(lcm(8, n+1))/(n+1)`
-/

namespace A070290.P1215394652923045462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001971 (Nat.lcm 8 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A070290.P1215394652923045462

namespace A070290

/-- `A001971(lcm(8, n+1))/(n+1)` -/
def P1215394652923045462.Spec : Prop :=
  ∀ n, P1215394652923045462.a n = (A070290 (n + 1) : ℚ)

end A070290

/-! ## A070290.P16270112464195307788

`A316431(Δ[19*A007504(n)])`
-/

namespace A070290.P16270112464195307788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (f1 (n + 1) - f1 n).toNat

end

end A070290.P16270112464195307788

namespace A070290

/-- `A316431(Δ[19*A007504(n)])` -/
def P16270112464195307788.Spec : Prop :=
  ∀ n, P16270112464195307788.a n = A070290 (n + 1)

end A070290

/-! ## A070290.P17376961673827983448

`A316431(19*p?[A166711(n)])`
-/

namespace A070290.P17376961673827983448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166711 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (19 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A070290.P17376961673827983448

namespace A070290

/-- `A316431(19*p?[A166711(n)])` -/
def P17376961673827983448.Spec : Prop :=
  ∀ n, P17376961673827983448.a n = A070290 (n + 1)

end A070290

/-! ## A070290.P549597313977220409

`A316431(19*A000040(n+1))`
-/

namespace A070290.P549597313977220409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (19 * A000040 (n + 1)).toNat

end

end A070290.P549597313977220409

namespace A070290

/-- `A316431(19*A000040(n+1))` -/
def P549597313977220409.Spec : Prop :=
  ∀ n, P549597313977220409.a n = A070290 (n + 1)

end A070290

/-! ## A070290.P2521328393423117317

`A106609((n+1)*A226044(n+1))`
-/

namespace A070290.P2521328393423117317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 ((n + 1 : ℤ) * A226044 (n + 1)).toNat

end

end A070290.P2521328393423117317

namespace A070290

/-- `A106609((n+1)*A226044(n+1))` -/
def P2521328393423117317.Spec : Prop :=
  ∀ n, P2521328393423117317.a n = A070290 (n + 1)

end A070290

/-!
# A070291: a(n) = lcm(10,n)/gcd(10,n).

The programs for A070291, the canonical program `A070291.P8242243017987582003` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070291 has offset 1).

The definition of A070291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070291.P8242243017987582003

`lcm(10, n+1)/gcd(10, n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070291

/-- `lcm(10, n+1)/gcd(10, n+1)` -/
def P8242243017987582003.Spec : Prop :=
  ∀ n, P8242243017987582003.a n = (A070291 (n + 1) : ℚ)

end A070291

/-! ## A070291.P14836971156964523976

`A109051(n+1)/A109013(n+1)`
-/

namespace A070291.P14836971156964523976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109051 (n + 1) : ℚ) / (A109013 (n + 1) : ℚ)

end

end A070291.P14836971156964523976

namespace A070291

/-- `A109051(n+1)/A109013(n+1)` -/
def P14836971156964523976.Spec : Prop :=
  ∀ n, P14836971156964523976.a n = (A070291 (n + 1) : ℚ)

end A070291

/-! ## A070291.P16521869840920643958

`A008592(n+1)/A109013(n+1)²`
-/

namespace A070291.P16521869840920643958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 (n + 1) : ℚ) / (A109013 (n + 1) ^ 2 : ℚ)

end

end A070291.P16521869840920643958

namespace A070291

/-- `A008592(n+1)/A109013(n+1)²` -/
def P16521869840920643958.Spec : Prop :=
  ∀ n, P16521869840920643958.a n = (A070291 (n + 1) : ℚ)

end A070291

/-! ## A070291.P3704539413423683731

`A008592(A106611(n+1))²/A008592(n+1)`
-/

namespace A070291.P3704539413423683731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 (A106611 (n + 1)).toNat ^ 2 : ℚ) / (A008592 (n + 1) : ℚ)

end

end A070291.P3704539413423683731

namespace A070291

/-- `A008592(A106611(n+1))²/A008592(n+1)` -/
def P3704539413423683731.Spec : Prop :=
  ∀ n, P3704539413423683731.a n = (A070291 (n + 1) : ℚ)

end A070291

/-! ## A070291.P10765283937951450261

`A064680(n+1)*A070293(n+1)/A283443(n+1)`
-/

namespace A070291.P10765283937951450261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064680 (n + 1) * A070293 (n + 1) : ℚ) / (A283443 (n + 1) : ℚ)

end

end A070291.P10765283937951450261

namespace A070291

/-- `A064680(n+1)*A070293(n+1)/A283443(n+1)` -/
def P10765283937951450261.Spec : Prop :=
  ∀ n, P10765283937951450261.a n = (A070291 (n + 1) : ℚ)

end A070291

/-! ## A070291.P10154374490314315458

`A174012(n+1)/A008585(n+1)*A283442(n+1)`
-/

namespace A070291.P10154374490314315458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174012 (n + 1) : ℚ) / (A008585 (n + 1) : ℚ) * (A283442 (n + 1) : ℚ)

end

end A070291.P10154374490314315458

namespace A070291

/-- `A174012(n+1)/A008585(n+1)*A283442(n+1)` -/
def P10154374490314315458.Spec : Prop :=
  ∀ n, P10154374490314315458.a n = (A070291 (n + 1) : ℚ)

end A070291

/-! ## A070291.P13528314028704285276

`A283442(n+1)/A130724(n+1)*A283443(n+1)`
-/

namespace A070291.P13528314028704285276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283442 (n + 1) : ℚ) / (A130724 (n + 1) : ℚ) * (A283443 (n + 1) : ℚ)

end

end A070291.P13528314028704285276

namespace A070291

/-- `A283442(n+1)/A130724(n+1)*A283443(n+1)` -/
def P13528314028704285276.Spec : Prop :=
  ∀ n, P13528314028704285276.a n = (A070291 (n + 1) : ℚ)

end A070291

/-! ## A070291.P12554984621664634569

`A283442(A064680(n+1))`
-/

namespace A070291.P12554984621664634569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283442 (A064680 (n + 1)).toNat

end

end A070291.P12554984621664634569

namespace A070291

/-- `A283442(A064680(n+1))` -/
def P12554984621664634569.Spec : Prop :=
  ∀ n, P12554984621664634569.a n = A070291 (n + 1)

end A070291

/-! ## A070291.P9630158545554986780

`A283442(∑[Δ[A176447(n)]+1])`
-/

namespace A070291.P9630158545554986780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176447 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283442 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A070291.P9630158545554986780

namespace A070291

/-- `A283442(∑[Δ[A176447(n)]+1])` -/
def P9630158545554986780.Spec : Prop :=
  ∀ n, P9630158545554986780.a n = A070291 (n + 1)

end A070291

/-! ## A070291.P12852748139418117475

`A109046(A064680(n+1))/A109009(n+1)`
-/

namespace A070291.P12852748139418117475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109046 (A064680 (n + 1)).toNat : ℚ) / (A109009 (n + 1) : ℚ)

end

end A070291.P12852748139418117475

namespace A070291

/-- `A109046(A064680(n+1))/A109009(n+1)` -/
def P12852748139418117475.Spec : Prop :=
  ∀ n, P12852748139418117475.a n = (A070291 (n + 1) : ℚ)

end A070291

/-! ## A070291.P327410368264793001

`A109046(A109043(n+1))/A109013(n+1)`
-/

namespace A070291.P327410368264793001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109046 (A109043 (n + 1)).toNat : ℚ) / (A109013 (n + 1) : ℚ)

end

end A070291.P327410368264793001

namespace A070291

/-- `A109046(A109043(n+1))/A109013(n+1)` -/
def P327410368264793001.Spec : Prop :=
  ∀ n, P327410368264793001.a n = (A070291 (n + 1) : ℚ)

end A070291

/-! ## A070291.P11108824347646620227

`A283442(A188134(2*(n+1)))`
-/

namespace A070291.P11108824347646620227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283442 (A188134 (2 * (n + 1))).toNat

end

end A070291.P11108824347646620227

namespace A070291

/-- `A283442(A188134(2*(n+1)))` -/
def P11108824347646620227.Spec : Prop :=
  ∀ n, P11108824347646620227.a n = A070291 (n + 1)

end A070291

/-! ## A070291.P17700038878060832327

`A070293(3*(n+1))`
-/

namespace A070291.P17700038878060832327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070293 (3 * (n + 1))

end

end A070291.P17700038878060832327

namespace A070291

/-- `A070293(3*(n+1))` -/
def P17700038878060832327.Spec : Prop :=
  ∀ n, P17700038878060832327.a n = A070291 (n + 1)

end A070291

/-! ## A070291.P13756320133766774966

`A188134(A283442(n+2+n))`
-/

namespace A070291.P13756320133766774966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (A283442 (n + 2 + n)).toNat

end

end A070291.P13756320133766774966

namespace A070291

/-- `A188134(A283442(n+2+n))` -/
def P13756320133766774966.Spec : Prop :=
  ∀ n, P13756320133766774966.a n = A070291 (n + 1)

end A070291

/-! ## A070291.P8955116074259213930

`A283443(A283442(2*n+n+3))`
-/

namespace A070291.P8955116074259213930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283443 (A283442 (2 * n + (n + 3))).toNat

end

end A070291.P8955116074259213930

namespace A070291

/-- `A283443(A283442(2*n+n+3))` -/
def P8955116074259213930.Spec : Prop :=
  ∀ n, P8955116074259213930.a n = A070291 (n + 1)

end A070291

/-! ## A070291.P16169221048671302315

`A316431(29*A000040(n+1))`
-/

namespace A070291.P16169221048671302315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (29 * A000040 (n + 1)).toNat

end

end A070291.P16169221048671302315

namespace A070291

/-- `A316431(29*A000040(n+1))` -/
def P16169221048671302315.Spec : Prop :=
  ∀ n, P16169221048671302315.a n = A070291 (n + 1)

end A070291

/-! ## A070291.P15942523079714759780

`A316431(lcm(29, A000040(n+1)))`
-/

namespace A070291.P15942523079714759780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (Int.lcm 29 (A000040 (n + 1)))

end

end A070291.P15942523079714759780

namespace A070291

/-- `A316431(lcm(29, A000040(n+1)))` -/
def P15942523079714759780.Spec : Prop :=
  ∀ n, P15942523079714759780.a n = A070291 (n + 1)

end A070291

/-!
# A070292: a(n) = lcm(12,n)/gcd(12,n).

The programs for A070292, the canonical program `A070292.P12027537870379567925` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070292 has offset 1).

The definition of A070292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070292.P12027537870379567925

`lcm(12, n+1)/gcd(12, n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070292

/-- `lcm(12, n+1)/gcd(12, n+1)` -/
def P12027537870379567925.Spec : Prop :=
  ∀ n, P12027537870379567925.a n = (A070292 (n + 1) : ℚ)

end A070292

/-! ## A070292.P4820775358451514428

`12*(n+1)/A109015(n+1)²`
-/

namespace A070292.P4820775358451514428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 * (n + 1) : ℚ) / (A109015 (n + 1) ^ 2 : ℚ)

end

end A070292.P4820775358451514428

namespace A070292

/-- `12*(n+1)/A109015(n+1)²` -/
def P4820775358451514428.Spec : Prop :=
  ∀ n, P4820775358451514428.a n = (A070292 (n + 1) : ℚ)

end A070292

/-! ## A070292.P17448163205549612823

`A109053(n+1)/A109015(n+1)`
-/

namespace A070292.P17448163205549612823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109053 (n + 1) : ℚ) / (A109015 (n + 1) : ℚ)

end

end A070292.P17448163205549612823

namespace A070292

/-- `A109053(n+1)/A109015(n+1)` -/
def P17448163205549612823.Spec : Prop :=
  ∀ n, P17448163205549612823.a n = (A070292 (n + 1) : ℚ)

end A070292

/-! ## A070292.P715396106956602752

`A008594(A051724(n+1))²/A008594(n+1)`
-/

namespace A070292.P715396106956602752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008594 (A051724 (n + 1)).toNat ^ 2 : ℚ) / (A008594 (n + 1) : ℚ)

end

end A070292.P715396106956602752

namespace A070292

/-- `A008594(A051724(n+1))²/A008594(n+1)` -/
def P715396106956602752.Spec : Prop :=
  ∀ n, P715396106956602752.a n = (A070292 (n + 1) : ℚ)

end A070292

/-! ## A070292.P671830300101582431

`A188134(A130724(n+1))`
-/

namespace A070292.P671830300101582431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (A130724 (n + 1)).toNat

end

end A070292.P671830300101582431

namespace A070292

/-- `A188134(A130724(n+1))` -/
def P671830300101582431.Spec : Prop :=
  ∀ n, P671830300101582431.a n = A070292 (n + 1)

end A070292

/-! ## A070292.P16509529791773676315

`A188134(A283443(2*(n+1)))`
-/

namespace A070292.P16509529791773676315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (A283443 (2 * (n + 1))).toNat

end

end A070292.P16509529791773676315

namespace A070292

/-- `A188134(A283443(2*(n+1)))` -/
def P16509529791773676315.Spec : Prop :=
  ∀ n, P16509529791773676315.a n = A070292 (n + 1)

end A070292

/-! ## A070292.P17758851798853981861

`A130724(A070290(2*(n+1)))`
-/

namespace A070292.P17758851798853981861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 (A070290 (2 * (n + 1))).toNat

end

end A070292.P17758851798853981861

namespace A070292

/-- `A130724(A070290(2*(n+1)))` -/
def P17758851798853981861.Spec : Prop :=
  ∀ n, P17758851798853981861.a n = A070292 (n + 1)

end A070292

/-! ## A070292.P16107038257367364952

`A070290(A130724(n+2+n))`
-/

namespace A070292.P16107038257367364952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070290 (A130724 (n + 2 + n)).toNat

end

end A070292.P16107038257367364952

namespace A070292

/-- `A070290(A130724(n+2+n))` -/
def P16107038257367364952.Spec : Prop :=
  ∀ n, P16107038257367364952.a n = A070292 (n + 1)

end A070292

/-! ## A070292.P6714203855903863145

`A283443(2/(n+1)*A064680(n+1)²)`
-/

namespace A070292.P6714203855903863145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283443 (SequenceMachineLib.roundAway (2 / (n + 1 : ℚ) * (A064680 (n + 1) ^ 2 : ℚ))).toNat

end

end A070292.P6714203855903863145

namespace A070292

/-- `A283443(2/(n+1)*A064680(n+1)²)` -/
def P6714203855903863145.Spec : Prop :=
  ∀ n, P6714203855903863145.a n = A070292 (n + 1)

end A070292

/-! ## A070292.P13571255029113755427

`A283443(A188134(n+1)+A188134(n+1))`
-/

namespace A070292.P13571255029113755427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283443 (A188134 (n + 1) + A188134 (n + 1)).toNat

end

end A070292.P13571255029113755427

namespace A070292

/-- `A283443(A188134(n+1)+A188134(n+1))` -/
def P13571255029113755427.Spec : Prop :=
  ∀ n, P13571255029113755427.a n = A070292 (n + 1)

end A070292

/-! ## A070292.P18026164173628852345

`A051724(n+1)+A051724(A109053(n+1)-(n+1))`
-/

namespace A070292.P18026164173628852345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (n + 1) + A051724 (A109053 (n + 1) - (n + 1 : ℤ)).toNat

end

end A070292.P18026164173628852345

namespace A070292

/-- `A051724(n+1)+A051724(A109053(n+1)-(n+1))` -/
def P18026164173628852345.Spec : Prop :=
  ∀ n, P18026164173628852345.a n = A070292 (n + 1)

end A070292

/-! ## A070292.P9278590243949104750

`A316431(37*A000040(n+1))`
-/

namespace A070292.P9278590243949104750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (37 * A000040 (n + 1)).toNat

end

end A070292.P9278590243949104750

namespace A070292

/-- `A316431(37*A000040(n+1))` -/
def P9278590243949104750.Spec : Prop :=
  ∀ n, P9278590243949104750.a n = A070292 (n + 1)

end A070292

/-!
# A070293: a(n) = lcm(30,n)/gcd(30,n).

The programs for A070293, the canonical program `A070293.P11789546069594536792` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070293 has offset 1).

The definition of A070293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070293.P11789546069594536792

`lcm(30, n+1)/gcd(30, n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070293

/-- `lcm(30, n+1)/gcd(30, n+1)` -/
def P11789546069594536792.Spec : Prop :=
  ∀ n, P11789546069594536792.a n = (A070293 (n + 1) : ℚ)

end A070293

/-! ## A070293.P3621604672378102492

`A070291(A130724(n+1))`
-/

namespace A070293.P3621604672378102492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070291 (A130724 (n + 1)).toNat

end

end A070293.P3621604672378102492

namespace A070293

/-- `A070291(A130724(n+1))` -/
def P3621604672378102492.Spec : Prop :=
  ∀ n, P3621604672378102492.a n = A070293 (n + 1)

end A070293

/-! ## A070293.P12985564813563374755

`A070291(A283443(2*(n+1)))`
-/

namespace A070293.P12985564813563374755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070291 (A283443 (2 * (n + 1))).toNat

end

end A070293.P12985564813563374755

namespace A070293

/-- `A070291(A283443(2*(n+1)))` -/
def P12985564813563374755.Spec : Prop :=
  ∀ n, P12985564813563374755.a n = A070293 (n + 1)

end A070293

/-! ## A070293.P7651308596759905067

`A283443(A283442(n+1))`
-/

namespace A070293.P7651308596759905067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283443 (A283442 (n + 1)).toNat

end

end A070293.P7651308596759905067

namespace A070293

/-- `A283443(A283442(n+1))` -/
def P7651308596759905067.Spec : Prop :=
  ∀ n, P7651308596759905067.a n = A070293 (n + 1)

end A070293

/-! ## A070293.P18175006786418977982

`A283443(A109046(n+1)/A109009(n+1))`
-/

namespace A070293.P18175006786418977982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283443 (SequenceMachineLib.roundAway ((A109046 (n + 1) : ℚ) / (A109009 (n + 1) : ℚ))).toNat

end

end A070293.P18175006786418977982

namespace A070293

/-- `A283443(A109046(n+1)/A109009(n+1))` -/
def P18175006786418977982.Spec : Prop :=
  ∀ n, P18175006786418977982.a n = A070293 (n + 1)

end A070293

/-! ## A070293.P17379729552033232045

`A283442(A070292(2*(n+1)))`
-/

namespace A070293.P17379729552033232045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283442 (A070292 (2 * (n + 1))).toNat

end

end A070293.P17379729552033232045

namespace A070293

/-- `A283442(A070292(2*(n+1)))` -/
def P17379729552033232045.Spec : Prop :=
  ∀ n, P17379729552033232045.a n = A070293 (n + 1)

end A070293

/-! ## A070293.P8638838690092309062

`A283442(A130724(A064680(n+1)))`
-/

namespace A070293.P8638838690092309062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283442 (A130724 (A064680 (n + 1)).toNat).toNat

end

end A070293.P8638838690092309062

namespace A070293

/-- `A283442(A130724(A064680(n+1)))` -/
def P8638838690092309062.Spec : Prop :=
  ∀ n, P8638838690092309062.a n = A070293 (n + 1)

end A070293

/-! ## A070293.P2162793146084294793

`A283442(A188134(A130724(2*(n+1))))`
-/

namespace A070293.P2162793146084294793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283442 (A188134 (A130724 (2 * (n + 1))).toNat).toNat

end

end A070293.P2162793146084294793

namespace A070293

/-- `A283442(A188134(A130724(2*(n+1))))` -/
def P2162793146084294793.Spec : Prop :=
  ∀ n, P2162793146084294793.a n = A070293 (n + 1)

end A070293

/-! ## A070293.P4573292931958160747

`A283442(A109047(n+1)/A089128(n+1))`
-/

namespace A070293.P4573292931958160747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283442 (SequenceMachineLib.roundAway ((A109047 (n + 1) : ℚ) / (A089128 (n + 1) : ℚ))).toNat

end

end A070293.P4573292931958160747

namespace A070293

/-- `A283442(A109047(n+1)/A089128(n+1))` -/
def P4573292931958160747.Spec : Prop :=
  ∀ n, P4573292931958160747.a n = A070293 (n + 1)

end A070293

/-! ## A070293.P13553173078591064634

`A070292(A283442(n+2+n))`
-/

namespace A070293.P13553173078591064634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070292 (A283442 (n + 2 + n)).toNat

end

end A070293.P13553173078591064634

namespace A070293

/-- `A070292(A283442(n+2+n))` -/
def P13553173078591064634.Spec : Prop :=
  ∀ n, P13553173078591064634.a n = A070293 (n + 1)

end A070293

/-! ## A070293.P16396594040191610318

`A070292(2*A070291(2*(n+1)))`
-/

namespace A070293.P16396594040191610318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070292 (2 * A070291 (2 * (n + 1))).toNat

end

end A070293.P16396594040191610318

namespace A070293

/-- `A070292(2*A070291(2*(n+1)))` -/
def P16396594040191610318.Spec : Prop :=
  ∀ n, P16396594040191610318.a n = A070293 (n + 1)

end A070293

/-! ## A070293.P80678411707605066

`A130724(A109051(n+1)/A109013(n+1))`
-/

namespace A070293.P80678411707605066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 (SequenceMachineLib.roundAway ((A109051 (n + 1) : ℚ) / (A109013 (n + 1) : ℚ))).toNat

end

end A070293.P80678411707605066

namespace A070293

/-- `A130724(A109051(n+1)/A109013(n+1))` -/
def P80678411707605066.Spec : Prop :=
  ∀ n, P80678411707605066.a n = A070293 (n + 1)

end A070293

/-!
# A070297: Smallest number with n unrelated numbers (numbers which are neither coprime nor a divisor), or 0 if no such number exists.

The programs for A070297, there is no canonical definition to state claims against.
-/

/-! ## A070297.P16053022312876118377

`A073764(A028310(n))/(floor(acot(n))+1)`
-/

namespace A070297.P16053022312876118377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073764 (A028310 n).toNat : ℚ) / (⌊SequenceMachineLib.acot (n : ℝ)⌋ + 1 : ℚ)

end

end A070297.P16053022312876118377

/-! ## A070297.P2736694885435763744

`A073764(round(sqrt(n²+1)))/A054977(n)`
-/

namespace A070297.P2736694885435763744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073764 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / (A054977 n : ℚ)

end

end A070297.P2736694885435763744

/-! ## A070297.P13219460045687184317

`A073764(A028310(n))/(A000007(n)+1)`
-/

namespace A070297.P13219460045687184317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073764 (A028310 n).toNat : ℚ) / (A000007 n + 1 : ℚ)

end

end A070297.P13219460045687184317

/-! ## A070297.P5115343408852516453

`A073764(A028310(n))-A000007(n)*A062731(n+1)`
-/

namespace A070297.P5115343408852516453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073764 (A028310 n).toNat - A000007 n * A062731 (n + 1)

end

end A070297.P5115343408852516453

/-! ## A070297.P13864307751458606793

`A073764(A028310(n))-A000007(n)*A165079(n+5)`
-/

namespace A070297.P13864307751458606793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073764 (A028310 n).toNat - A000007 n * A165079 (n + 5)

end

end A070297.P13864307751458606793

/-! ## A070297.P13626227804992480355

`A073764(A028310(n))-A000007(n)*A086920(n+5)`
-/

namespace A070297.P13626227804992480355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073764 (A028310 n).toNat - A000007 n * A086920 (n + 5)

end

end A070297.P13626227804992480355

/-!
# A070299: Numbers n such that sigma(n+x) = sigma(n-x) for some 0 < x < n.

The programs for A070299, there is no canonical definition to state claims against.
-/

/-! ## A070299.P4246437236063320226

`lt[A217768(n+1), 10]+1`
-/

namespace A070299.P4246437236063320226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217768 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A070299.P4246437236063320226

/-! ## A070299.P10914449482899936203

`lt[A217768(A028310(n)), 10]`
-/

namespace A070299.P10914449482899936203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217768 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A070299.P10914449482899936203

/-! ## A070299.P8383065980078381083

`A011760(lt[A217768(n+1), 10])`
-/

namespace A070299.P8383065980078381083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217768 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A070299.P8383065980078381083

/-! ## A070299.P4787921343101585298

`A066181(lt[A217768(n+1), 10])`
-/

namespace A070299.P4787921343101585298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217768 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066181 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A070299.P4787921343101585298

