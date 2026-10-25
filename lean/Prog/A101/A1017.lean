import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
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
# A101704: Numbers n such that reversal(n)=2n/3.

The programs for A101704, there is no canonical definition to state claims against.
-/

/-! ## A101704.P6837263995169581099

`2*A101706(n+1)`
-/

namespace A101704.P6837263995169581099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101706 (n + 1)

end

end A101704.P6837263995169581099

/-! ## A101704.P10268921505100240313

`A102277(n+1)/10`
-/

namespace A101704.P10268921505100240313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102277 (n + 1) : ℚ) / 10

end

end A101704.P10268921505100240313

/-! ## A101704.P6776357866390946559

`lcm(2, A101706(A000027(n+1)))`
-/

namespace A101704.P6776357866390946559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A101706 (A000027 (n + 1)).toNat)

end

end A101704.P6776357866390946559

/-! ## A101704.P13512797400716405094

`lcm(A010696(n), A101706(n+1))`
-/

namespace A101704.P13512797400716405094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010696 n) (A101706 (n + 1))

end

end A101704.P13512797400716405094

/-! ## A101704.P14863625708315005803

`A101706(xor(1, xor(1, n+1)))+A101706(n+1)`
-/

namespace A101704.P14863625708315005803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101706 (Nat.xor 1 (Nat.xor 1 (n + 1))) + A101706 (n + 1)

end

end A101704.P14863625708315005803

/-! ## A101704.P2350915658165867809

`A101706(n+1)+A101706(n%(n+1)+1)`
-/

namespace A101704.P2350915658165867809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101706 (n + 1) + A101706 (n % (n + 1) + 1)

end

end A101704.P2350915658165867809

/-! ## A101704.P4964193134455522118

`A101706(A000027(n+1))+A101706(n+1)`
-/

namespace A101704.P4964193134455522118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101706 (A000027 (n + 1)).toNat + A101706 (n + 1)

end

end A101704.P4964193134455522118

/-!
# A101705: Numbers n such that n = 12*reversal(n).

The programs for A101705, the canonical program `A101705.P9918575441970631908` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101705 has offset 1).

The definition of A101705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101705.P9918575441970631908

`9*60*A057148(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A101705

/-- `9*60*A057148(n+1)` -/
def P9918575441970631908.Spec : Prop :=
  ∀ n, P9918575441970631908.a n = A101705 (n + 1)

theorem P9918575441970631908.correct : P9918575441970631908.Spec := by
  intro n
  simp only [A101705, Nat.add_sub_cancel]

end A101705

/-! ## A101705.P7556312829556836631

`60*A097256(A006995(n+1))`
-/

namespace A101705.P7556312829556836631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  60 * A097256 (A006995 (n + 1)).toNat

end

end A101705.P7556312829556836631

namespace A101705

/-- `60*A097256(A006995(n+1))` -/
def P7556312829556836631.Spec : Prop :=
  ∀ n, P7556312829556836631.a n = A101705 (n + 1)

end A101705

/-!
# A101706: Numbers n such that reversal(n)=(7/3)*n.

The programs for A101706, there is no canonical definition to state claims against.
-/

/-! ## A101706.P3933578668196410127

`A101704(n+1)/2`
-/

namespace A101706.P3933578668196410127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101704 (n + 1) : ℚ) / 2

end

end A101706.P3933578668196410127

/-! ## A101706.P10258517097437309207

`A102277(n+1)/20`
-/

namespace A101706.P10258517097437309207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102277 (n + 1) : ℚ) / 20

end

end A101706.P10258517097437309207

/-! ## A101706.P14578152969417788867

`ceil(A101704(ceil(Δ[n²]/2))/2)`
-/

namespace A101706.P14578152969417788867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A101704 ⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 2⌉.toNat : ℚ) / 2⌉

end

end A101706.P14578152969417788867

/-! ## A101706.P15251669308091662560

`record[A101704(A152271(n))/2]`
-/

namespace A101706.P15251669308091662560
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101704 (A152271 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101706.P15251669308091662560

/-! ## A101706.P17081646091994261555

`record[A031877(n+1)%A072141(n+1)]`
-/

namespace A101706.P17081646091994261555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031877 (n + 1)) (A072141 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101706.P17081646091994261555

/-!
# A101707: Number of partitions of n having positive odd rank (the rank of a partition is the largest part minus the number of parts).

The programs for A101707, there is no canonical definition to state claims against.
-/

/-! ## A101707.P2846761091428009973

`(A000041(n)-A000025(n))/4`
-/

namespace A101707.P2846761091428009973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n - A000025 n : ℚ) / 4

end

end A101707.P2846761091428009973

/-! ## A101707.P10570312872198092540

`A340692(n)/2`
-/

namespace A101707.P10570312872198092540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340692 n : ℚ) / 2

end

end A101707.P10570312872198092540

/-! ## A101707.P12992101266695186993

`(A340601(n)-A000025(n))/2`
-/

namespace A101707.P12992101266695186993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340601 n - A000025 n : ℚ) / 2

end

end A101707.P12992101266695186993

/-! ## A101707.P12685134959676182859

`(A000041(n)-A340601(n))/2`
-/

namespace A101707.P12685134959676182859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n - A340601 n : ℚ) / 2

end

end A101707.P12685134959676182859

/-! ## A101707.P15297020250071584669

`(∑[A002865(n)]-A340601(n))/2`
-/

namespace A101707.P15297020250071584669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A340601 n : ℤ) : ℚ) / 2

end

end A101707.P15297020250071584669

/-! ## A101707.P16522439386091302267

`(∑[A085811(n+3)]-A340601(n))/2`
-/

namespace A101707.P16522439386091302267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A340601 n : ℤ) : ℚ) / 2

end

end A101707.P16522439386091302267

/-! ## A101707.P6244671001458802440

`(A139582(n)/2-A340601(n))/2`
-/

namespace A101707.P6244671001458802440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A139582 n : ℚ) / 2 - (A340601 n : ℚ)) / 2

end

end A101707.P6244671001458802440

/-! ## A101707.P3094893949453968522

`A064173(A028310(n))-A101708(n)`
-/

namespace A101707.P3094893949453968522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064173 (A028310 n).toNat - A101708 n

end

end A101707.P3094893949453968522

/-! ## A101707.P16189918891649971207

`(A103923(∑[n])-A340601(n))/2`
-/

namespace A101707.P16189918891649971207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103923 (∑ j ∈ Finset.range (n + 1), f1 j) - A340601 n : ℚ) / 2

end

end A101707.P16189918891649971207

/-! ## A101707.P5703338958198933648

`A014682(A340692(n))`
-/

namespace A101707.P5703338958198933648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A340692 n).toNat

end

end A101707.P5703338958198933648

/-!
# A101708: Number of partitions of n having positive even rank (the rank of a partition is the largest part minus the number of parts).

The programs for A101708, there is no canonical definition to state claims against.
-/

/-! ## A101708.P4860691392292436306

`A064173(floor(acot(n)+n))-A101707(n)`
-/

namespace A101708.P4860691392292436306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064173 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat - A101707 n

end

end A101708.P4860691392292436306

/-! ## A101708.P583158912258149355

`A064173(round(sqrt(n²+1)))-A101707(n)`
-/

namespace A101708.P583158912258149355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064173 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A101707 n

end

end A101708.P583158912258149355

/-! ## A101708.P11846677432727730741

`A340601(n)-A101709(round(sqrt(n²+1)))`
-/

namespace A101708.P11846677432727730741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340601 n - A101709 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A101708.P11846677432727730741

/-! ## A101708.P14749310630790643824

`A064173(A028310(n))-(A340601(n)-A000025(n))/2`
-/

namespace A101708.P14749310630790643824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064173 (A028310 n).toNat : ℚ) - (A340601 n - A000025 n : ℚ) / 2

end

end A101708.P14749310630790643824

/-! ## A101708.P2723587526589455463

`A064173(A028310(n))-(A000041(n)-A340601(n))/2`
-/

namespace A101708.P2723587526589455463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064173 (A028310 n).toNat : ℚ) - (A000041 n - A340601 n : ℚ) / 2

end

end A101708.P2723587526589455463

/-! ## A101708.P15576785346573191038

`A064173(A028310(n))-(A000041(n)-A000025(n))/4`
-/

namespace A101708.P15576785346573191038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064173 (A028310 n).toNat : ℚ) - (A000041 n - A000025 n : ℚ) / 4

end

end A101708.P15576785346573191038

/-!
# A101709: Number of partitions of n having nonnegative even rank (the rank of a partition is the largest part minus the number of parts).

The programs for A101709, there is no canonical definition to state claims against.
-/

/-! ## A101709.P9369713504106194890

`A064174(n+1)-A101707(n+1)`
-/

namespace A101709.P9369713504106194890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064174 (n + 1) - A101707 (n + 1)

end

end A101709.P9369713504106194890

/-! ## A101709.P9532117215620946987

`A000041(n+1)-(A101707(n+1)+A064173(n+1))`
-/

namespace A101709.P9532117215620946987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A101707 (n + 1) + A064173 (n + 1))

end

end A101709.P9532117215620946987

/-! ## A101709.P8236593293145096750

`A047993(n+1)+A064173(n+1)-A101707(n+1)`
-/

namespace A101709.P8236593293145096750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047993 (n + 1) + (A064173 (n + 1) - A101707 (n + 1))

end

end A101709.P8236593293145096750

/-! ## A101709.P12920205290266931119

`A101707(n+1)+A340601(n+1)-A064173(n+1)`
-/

namespace A101709.P12920205290266931119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101707 (n + 1) + (A340601 (n + 1) - A064173 (n + 1))

end

end A101709.P12920205290266931119

/-! ## A101709.P8949289865739322299

`A101708(n+1)+A047993(n+1)`
-/

namespace A101709.P8949289865739322299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101708 (n + 1) + A047993 (n + 1)

end

end A101709.P8949289865739322299

/-! ## A101709.P2582477762217279951

`A340601(n+1)-A101708(n+1)`
-/

namespace A101709.P2582477762217279951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340601 (n + 1) - A101708 (n + 1)

end

end A101709.P2582477762217279951

/-!
# A101711: Main diagonal of A101646.

The programs for A101711, the canonical program `A101711.P11623907111669908469` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101711 has offset 1).

The definition of A101711 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101711.P11623907111669908469

`(n+1)²-floor((n+2)/ϕ²)²`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101711

/-- `(n+1)²-floor((n+2)/ϕ²)²` -/
def P11623907111669908469.Spec : Prop :=
  ∀ n, P11623907111669908469.a n = A101711 (n + 1)

theorem P11623907111669908469.correct : P11623907111669908469.Spec := by
  intro n
  simp only [A101711, Nat.add_sub_cancel]

end A101711

/-! ## A101711.P1086783680349245107

`floor(A101332(n+1)/ϕ²)`
-/

namespace A101711.P1086783680349245107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101332 (n + 1) : ℝ) / Real.goldenRatio ^ 2⌋

end

end A101711.P1086783680349245107

namespace A101711

/-- `floor(A101332(n+1)/ϕ²)` -/
def P1086783680349245107.Spec : Prop :=
  ∀ n, P1086783680349245107.a n = A101711 (n + 1)

end A101711

/-! ## A101711.P6069233178609279459

`floor((n+2)/ϕ)*∑[A003842(n)]`
-/

namespace A101711.P6069233178609279459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / Real.goldenRatio⌋ * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101711.P6069233178609279459

namespace A101711

/-- `floor((n+2)/ϕ)*∑[A003842(n)]` -/
def P6069233178609279459.Spec : Prop :=
  ∀ n, P6069233178609279459.a n = A101711 (n + 1)

end A101711

/-! ## A101711.P5891331983089721590

`round(A101332(gcd(n, 2*n)+1)/ϕ²)`
-/

namespace A101711.P5891331983089721590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A101332 (Nat.gcd n (2 * n) + 1) : ℝ) / Real.goldenRatio ^ 2)

end

end A101711.P5891331983089721590

namespace A101711

/-- `round(A101332(gcd(n, 2*n)+1)/ϕ²)` -/
def P5891331983089721590.Spec : Prop :=
  ∀ n, P5891331983089721590.a n = A101711 (n + 1)

end A101711

/-! ## A101711.P13805413343885325758

`∑[2-Δ[floor((n+1)/ϕ)]]*A005206(n+1)`
-/

namespace A101711.P13805413343885325758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A005206 (n + 1)

end

end A101711.P13805413343885325758

namespace A101711

/-- `∑[2-Δ[floor((n+1)/ϕ)]]*A005206(n+1)` -/
def P13805413343885325758.Spec : Prop :=
  ∀ n, P13805413343885325758.a n = A101711 (n + 1)

end A101711

/-! ## A101711.P15194364471982080154

`∑[2-Δ[floor((n+1)/ϕ)]]*A060143(n+2)`
-/

namespace A101711.P15194364471982080154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A060143 (n + 2)

end

end A101711.P15194364471982080154

namespace A101711

/-- `∑[2-Δ[floor((n+1)/ϕ)]]*A060143(n+2)` -/
def P15194364471982080154.Spec : Prop :=
  ∀ n, P15194364471982080154.a n = A101711 (n + 1)

end A101711

/-! ## A101711.P10529262998769345247

`A060144(A101332(n+1))`
-/

namespace A101711.P10529262998769345247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A101332 (n + 1)).toNat

end

end A101711.P10529262998769345247

namespace A101711

/-- `A060144(A101332(n+1))` -/
def P10529262998769345247.Spec : Prop :=
  ∀ n, P10529262998769345247.a n = A101711 (n + 1)

end A101711

/-! ## A101711.P2841588083050736383

`A026242(A101332(n+1)-1)`
-/

namespace A101711.P2841588083050736383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026242 (A101332 (n + 1) - 1).toNat

end

end A101711.P2841588083050736383

namespace A101711

/-- `A026242(A101332(n+1)-1)` -/
def P2841588083050736383.Spec : Prop :=
  ∀ n, P2841588083050736383.a n = A101711 (n + 1)

end A101711

/-! ## A101711.P11845026319627170596

`∑[A003842(n)]*∑[A005614(n)]`
-/

namespace A101711.P11845026319627170596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A101711.P11845026319627170596

namespace A101711

/-- `∑[A003842(n)]*∑[A005614(n)]` -/
def P11845026319627170596.Spec : Prop :=
  ∀ n, P11845026319627170596.a n = A101711 (n + 1)

end A101711

/-! ## A101711.P14053632716116106276

`A060143(n+2)*A063732(n+2)`
-/

namespace A101711.P14053632716116106276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (n + 2) * A063732 (n + 2)

end

end A101711.P14053632716116106276

namespace A101711

/-- `A060143(n+2)*A063732(n+2)` -/
def P14053632716116106276.Spec : Prop :=
  ∀ n, P14053632716116106276.a n = A101711 (n + 1)

end A101711

/-!
# A101712: Indices of primes in sequence defined by A(0) = 41, A(n) = 10*A(n-1) - 9 for n > 0.

The programs for A101712, there is no canonical definition to state claims against.
-/

/-! ## A101712.P16427199560783620081

`A056806(n+2)-1`
-/

namespace A101712.P16427199560783620081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056806 (n + 2) - 1

end

end A101712.P16427199560783620081

/-! ## A101712.P12247630586418655695

`∑[Δ[A056806(n+1)]%(10^n)]`
-/

namespace A101712.P12247630586418655695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056806 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (10 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101712.P12247630586418655695

/-! ## A101712.P8226383754465312169

`A057428(n+1)+A056806(n+2)`
-/

namespace A101712.P8226383754465312169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A056806 (n + 2)

end

end A101712.P8226383754465312169

/-! ## A101712.P16405407462016739417

`A099837(3*n+2)+A056806(n+2)`
-/

namespace A101712.P16405407462016739417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (3 * n + 2) + A056806 (n + 2)

end

end A101712.P16405407462016739417

/-! ## A101712.P7125522412684215249

`A321804(C(2, n+2))+A056806(n+2)`
-/

namespace A101712.P7125522412684215249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (Nat.choose 2 (n + 2)) + A056806 (n + 2)

end

end A101712.P7125522412684215249

/-!
# A101713: Indices of primes in sequence defined by A(0) = 43, A(n) = 10*A(n-1) - 27 for n > 0.

The programs for A101713, there is no canonical definition to state claims against.
-/

/-! ## A101713.P1911034210908509774

`A101397(n+2)-1`
-/

namespace A101713.P1911034210908509774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101397 (n + 2) - 1

end

end A101713.P1911034210908509774

/-! ## A101713.P17035363119824230097

`∑[A087156(Δ[A101397(n+1)])]`
-/

namespace A101713.P17035363119824230097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101397 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101713.P17035363119824230097

/-! ## A101713.P10148173774205047712

`∑[Δ[A101397(n+1)]%A000533(n)]`
-/

namespace A101713.P10148173774205047712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101397 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000533 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101713.P10148173774205047712

/-! ## A101713.P2262462055263034413

`A106400(gcd(n, n+1))+A101397(n+2)`
-/

namespace A101713.P2262462055263034413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (Nat.gcd n (n + 1)) + A101397 (n + 2)

end

end A101713.P2262462055263034413

/-! ## A101713.P11329294289761443921

`A143374(A008480(n+1))+A101397(n+2)`
-/

namespace A101713.P11329294289761443921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143374 (A008480 (n + 1)).toNat + A101397 (n + 2)

end

end A101713.P11329294289761443921

/-!
# A101714: Indices of primes in the sequence defined by A(0) = 47, A(n) = 10*A(n-1) - 63 for n > 0.

The programs for A101714, there is no canonical definition to state claims against.
-/

/-! ## A101714.P14771856855098792827

`A101395(n+2)-1`
-/

namespace A101714.P14771856855098792827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101395 (n + 2) - 1

end

end A101714.P14771856855098792827

/-!
# A101715: Indices of primes in the sequence defined by A(0) = 49, A(n) = 10*A(n-1) - 81 for n > 0.

The programs for A101715, there is no canonical definition to state claims against.
-/

/-! ## A101715.P1951683212389198791

`A101394(n+2)-1`
-/

namespace A101715.P1951683212389198791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101394 (n + 2) - 1

end

end A101715.P1951683212389198791

/-! ## A101715.P4225136327997159226

`record[A260196(n)+A101394(n+1)]`
-/

namespace A101715.P4225136327997159226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A101394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101715.P4225136327997159226

/-! ## A101715.P4749017221044890930

`A134824(n+2)+A101394(n+2)`
-/

namespace A101715.P4749017221044890930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A101394 (n + 2)

end

end A101715.P4749017221044890930

/-! ## A101715.P14017617440655708178

`A321804(A000005(n+1))+A101394(n+2)`
-/

namespace A101715.P14017617440655708178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A000005 (n + 1)).toNat + A101394 (n + 2)

end

end A101715.P14017617440655708178

/-! ## A101715.P11881013706703145178

`A349920(A000040(n+1))+A101394(n+2)`
-/

namespace A101715.P11881013706703145178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349920 (A000040 (n + 1)).toNat + A101394 (n + 2)

end

end A101715.P11881013706703145178

/-!
# A101716: Indices of primes in sequence defined by A(0) = 43, A(n) = 10*A(n-1) - 17 for n > 0.

The programs for A101716, there is no canonical definition to state claims against.
-/

/-! ## A101716.P13788144656708370922

`A102981(n+1)-1`
-/

namespace A101716.P13788144656708370922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102981 (n + 1) - 1

end

end A101716.P13788144656708370922

/-! ## A101716.P50020704846340910

`record[A102981(A344180(n))-1]`
-/

namespace A101716.P50020704846340910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102981 (A344180 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101716.P50020704846340910

/-! ## A101716.P7127816151354701320

`A308778(n²)+A102981(n+1)`
-/

namespace A101716.P7127816151354701320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A102981 (n + 1)

end

end A101716.P7127816151354701320

/-! ## A101716.P12443883274098479425

`A134824(n+2)+A102981(n+1)`
-/

namespace A101716.P12443883274098479425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A102981 (n + 1)

end

end A101716.P12443883274098479425

/-! ## A101716.P14903383332587364592

`(A102981(n+1)+3^n)%A034472(n)`
-/

namespace A101716.P14903383332587364592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102981 (n + 1) + (3 ^ n : ℤ)) (A034472 n)

end

end A101716.P14903383332587364592

/-!
# A101717: Indices of primes in sequence defined by A(0) = 47, A(n) = 10*A(n-1) - 53 for n > 0.

The programs for A101717, there is no canonical definition to state claims against.
-/

/-! ## A101717.P8606754080035953809

`A102982(n+1)-1`
-/

namespace A101717.P8606754080035953809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102982 (n + 1) - 1

end

end A101717.P8606754080035953809

/-! ## A101717.P9581656243390446591

`record[Δ[A102982(A152271(n))]]`
-/

namespace A101717.P9581656243390446591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102982 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101717.P9581656243390446591

/-! ## A101717.P11845606489313911093

`record[Δ[A102982(A158416(n))]]`
-/

namespace A101717.P11845606489313911093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102982 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101717.P11845606489313911093

/-! ## A101717.P12904741309970857560

`record[A102982(A344180(n))-1]`
-/

namespace A101717.P12904741309970857560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102982 (A344180 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101717.P12904741309970857560

/-! ## A101717.P13882494657161559398

`A260196(n+2)+A102982(n+1)`
-/

namespace A101717.P13882494657161559398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A102982 (n + 1)

end

end A101717.P13882494657161559398

/-!
# A101718: Indices of primes in sequence defined by A(0) = 49, A(n) = 10*A(n-1) - 71 for n > 0.

The programs for A101718, there is no canonical definition to state claims against.
-/

/-! ## A101718.P12816888413840137945

`A102983(n+1)-1`
-/

namespace A101718.P12816888413840137945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102983 (n + 1) - 1

end

end A101718.P12816888413840137945

/-! ## A101718.P14714147795354577345

`abs(1-A102983(A077168(n)))`
-/

namespace A101718.P14714147795354577345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A102983 (A077168 n).toNat|

end

end A101718.P14714147795354577345

/-! ## A101718.P10486720919670380074

`record[A102983(A344180(n))-1]`
-/

namespace A101718.P10486720919670380074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102983 (A344180 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101718.P10486720919670380074

/-! ## A101718.P16215546214548779684

`A308778(n²)+A102983(n+1)`
-/

namespace A101718.P16215546214548779684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A102983 (n + 1)

end

end A101718.P16215546214548779684

/-! ## A101718.P8283354326594732648

`A134824(n+2)+A102983(n+1)`
-/

namespace A101718.P8283354326594732648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A102983 (n + 1)

end

end A101718.P8283354326594732648

/-!
# A101719: Indices of primes in sequence defined by A(0) = 41, A(n) = 10*A(n-1) + 11 for n > 0.

The programs for A101719, there is no canonical definition to state claims against.
-/

/-! ## A101719.P15684568407969349168

`A102984(n+2)-1`
-/

namespace A101719.P15684568407969349168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102984 (n + 2) - 1

end

end A101719.P15684568407969349168

/-! ## A101719.P12874545053044612144

`A352371(A007318(n))+A102984(n+2)`
-/

namespace A101719.P12874545053044612144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352371 (A007318 n).toNat + A102984 (n + 2)

end

end A101719.P12874545053044612144

/-! ## A101719.P16265351449169014889

`abs(A102984(n+2)+A008683(A073026(n+1)))`
-/

namespace A101719.P16265351449169014889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A102984 (n + 2) + A008683 (A073026 (n + 1)).toNat|

end

end A101719.P16265351449169014889

/-! ## A101719.P17726922522134066518

`A146306(A020639(2*(n+1)))+A102984(n+2)`
-/

namespace A101719.P17726922522134066518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146306 (A020639 (2 * (n + 1))).toNat + A102984 (n + 2)

end

end A101719.P17726922522134066518

/-!
# A101720: Indices of primes in sequence defined by A(0) = 43, A(n) = 10*A(n-1) - 7 for n > 0.

The programs for A101720, there is no canonical definition to state claims against.
-/

/-! ## A101720.P9790396384028387581

`A102985(n+2)-1`
-/

namespace A101720.P9790396384028387581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102985 (n + 2) - 1

end

end A101720.P9790396384028387581

/-! ## A101720.P1511276525531386126

`∑[Δ[A102985(n+1)]%A001079(n)]`
-/

namespace A101720.P1511276525531386126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102985 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A001079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101720.P1511276525531386126

/-! ## A101720.P1339951240385901978

`A160949(A000005(n+1))+A102985(n+2)`
-/

namespace A101720.P1339951240385901978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160949 (A000005 (n + 1)).toNat + A102985 (n + 2)

end

end A101720.P1339951240385901978

/-! ## A101720.P15711876844910064269

`A316441(A000040(n+1))+A102985(n+2)`
-/

namespace A101720.P15711876844910064269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + A102985 (n + 2)

end

end A101720.P15711876844910064269

/-!
# A101721: Indices of primes in sequence defined by A(0) = 47, A(n) = 10*A(n-1) - 43 for n > 0.

The programs for A101721, there is no canonical definition to state claims against.
-/

/-! ## A101721.P765803696282383251

`A102986(n+1)-1`
-/

namespace A101721.P765803696282383251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102986 (n + 1) - 1

end

end A101721.P765803696282383251

/-! ## A101721.P15932104354410418779

`A153881(n+2)+A102986(n+1)`
-/

namespace A101721.P15932104354410418779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A102986 (n + 1)

end

end A101721.P15932104354410418779

/-! ## A101721.P17608270927911361795

`A110514(4*n+5)+A102986(n+1)`
-/

namespace A101721.P17608270927911361795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (4 * n + 5) + A102986 (n + 1)

end

end A101721.P17608270927911361795

/-! ## A101721.P12454154939863884458

`A246027(A056558(n))+A102986(n+1)`
-/

namespace A101721.P12454154939863884458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246027 (A056558 n).toNat + A102986 (n + 1)

end

end A101721.P12454154939863884458

/-! ## A101721.P2273572736657051303

`A252748(A143343(n))+A102986(n+1)`
-/

namespace A101721.P2273572736657051303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (A143343 n).toNat + A102986 (n + 1)

end

end A101721.P2273572736657051303

/-!
# A101723: Indices of primes in the sequence defined by A(0) = 41, A(n) = 10*A(n-1) + 21 for n > 0.

The programs for A101723, there is no canonical definition to state claims against.
-/

/-! ## A101723.P14730276670527643144

`A102988(n+1)-1`
-/

namespace A101723.P14730276670527643144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102988 (n + 1) - 1

end

end A101723.P14730276670527643144

/-! ## A101723.P14986468801704493642

`A300547(2*n+1)+A102988(n+1)`
-/

namespace A101723.P14986468801704493642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300547 (2 * n + 1) + A102988 (n + 1)

end

end A101723.P14986468801704493642

/-! ## A101723.P538831343288258796

`A001478(n+1)+A102988(n+1)+n`
-/

namespace A101723.P538831343288258796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A102988 (n + 1) + (n : ℤ))

end

end A101723.P538831343288258796

/-! ## A101723.P11739032220385702739

`abs(A102988(n+1)+A057428(2*n+1))`
-/

namespace A101723.P11739032220385702739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A102988 (n + 1) + A057428 (2 * n + 1)|

end

end A101723.P11739032220385702739

/-! ## A101723.P15700417546458698729

`A316441(A103811(n+1))+A102988(n+1)`
-/

namespace A101723.P15700417546458698729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A103811 (n + 1)).toNat + A102988 (n + 1)

end

end A101723.P15700417546458698729

/-!
# A101724: Indices of primes in the sequence defined by A(0) = 47, A(n) = 10*A(n-1) - 33 for n > 0.

The programs for A101724, there is no canonical definition to state claims against.
-/

/-! ## A101724.P15156026389716518472

`A102989(n+1)-1`
-/

namespace A101724.P15156026389716518472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102989 (n + 1) - 1

end

end A101724.P15156026389716518472

/-! ## A101724.P9187393977293041594

`record[A102989(A344180(n))-1]`
-/

namespace A101724.P9187393977293041594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102989 (A344180 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101724.P9187393977293041594

/-! ## A101724.P4948683002854635889

`A165326(2*(n+1))+A102989(n+1)`
-/

namespace A101724.P4948683002854635889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (2 * (n + 1)) + A102989 (n + 1)

end

end A101724.P4948683002854635889

/-! ## A101724.P14459190289762684625

`A168361(2*(n+2))+A102989(n+1)`
-/

namespace A101724.P14459190289762684625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168361 (2 * (n + 2)) + A102989 (n + 1)

end

end A101724.P14459190289762684625

/-! ## A101724.P10232411804811833336

`abs(A102989(n+1)+A033999(2*n+3))`
-/

namespace A101724.P10232411804811833336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A102989 (n + 1) + A033999 (2 * n + 3)|

end

end A101724.P10232411804811833336

/-!
# A101725: Indices of primes in sequence defined by A(0) = 49, A(n) = 10*A(n-1) - 51 for n > 0.

The programs for A101725, there is no canonical definition to state claims against.
-/

/-! ## A101725.P17962189878663474305

`A102990(n+1)-1`
-/

namespace A101725.P17962189878663474305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102990 (n + 1) - 1

end

end A101725.P17962189878663474305

/-! ## A101725.P12298919739911729682

`record[A102990(A344180(n))-1]`
-/

namespace A101725.P12298919739911729682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102990 (A344180 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101725.P12298919739911729682

/-! ## A101725.P9452445812176407524

`A260196(n+2)+A102990(n+1)`
-/

namespace A101725.P9452445812176407524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A102990 (n + 1)

end

end A101725.P9452445812176407524

/-! ## A101725.P8751668674935005614

`A153881(2*(n+2))+A102990(n+1)`
-/

namespace A101725.P8751668674935005614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (2 * (n + 2)) + A102990 (n + 1)

end

end A101725.P8751668674935005614

/-! ## A101725.P10082557753856459184

`A105811(C(n, n²)!)+A102990(n+1)`
-/

namespace A101725.P10082557753856459184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105811 (Nat.factorial (Nat.choose n (n ^ 2))) + A102990 (n + 1)

end

end A101725.P10082557753856459184

/-!
# A101726: Indices of primes in sequence defined by A(0) = 43, A(n) = 10*A(n-1) + 23 for n > 0.

The programs for A101726, there is no canonical definition to state claims against.
-/

/-! ## A101726.P7851961056094489603

`A102991(n+2)-1`
-/

namespace A101726.P7851961056094489603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102991 (n + 2) - 1

end

end A101726.P7851961056094489603

/-! ## A101726.P6860373528063003686

`∑[Δ[A102991(n+1)]*A057427(n)]`
-/

namespace A101726.P6860373528063003686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102991 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101726.P6860373528063003686

/-! ## A101726.P2277931831236454317

`∑[Δ[A102991(n+1)]%A051740(n)]`
-/

namespace A101726.P2277931831236454317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102991 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A051740 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101726.P2277931831236454317

/-! ## A101726.P9797258744174829308

`A307445(A056157(n+1))+A102991(n+2)`
-/

namespace A101726.P9797258744174829308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A056157 (n + 1)).toNat + A102991 (n + 2)

end

end A101726.P9797258744174829308

/-! ## A101726.P4222472675025256497

`A307445(A112804(n+1))+A102991(n+2)`
-/

namespace A101726.P4222472675025256497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A112804 (n + 1)).toNat + A102991 (n + 2)

end

end A101726.P4222472675025256497

/-!
# A101727: Indices of primes in sequence defined by A(0) = 47, A(n) = 10*A(n-1) - 13 for n > 0.

The programs for A101727, there is no canonical definition to state claims against.
-/

/-! ## A101727.P18056466391902044569

`A102992(n+1)-1`
-/

namespace A101727.P18056466391902044569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102992 (n + 1) - 1

end

end A101727.P18056466391902044569

/-! ## A101727.P7021738736009555575

`record[Δ[A102992(A152271(n))]]`
-/

namespace A101727.P7021738736009555575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102992 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101727.P7021738736009555575

/-! ## A101727.P8944752867662131507

`record[A102992(A133310(n))-1]`
-/

namespace A101727.P8944752867662131507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102992 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101727.P8944752867662131507

/-! ## A101727.P11523648583989167833

`record[A102992(A344180(n))-1]`
-/

namespace A101727.P11523648583989167833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102992 (A344180 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101727.P11523648583989167833

/-! ## A101727.P16347011456935012931

`floor(tanh(A061579(n))*A102992(n+1))`
-/

namespace A101727.P16347011456935012931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tanh (A061579 n : ℝ) * (A102992 (n + 1) : ℝ)⌋

end

end A101727.P16347011456935012931

/-!
# A101728: Indices of primes in sequence defined by A(0) = 49, A(n) = 10*A(n-1) - 31 for n > 0.

The programs for A101728, there is no canonical definition to state claims against.
-/

/-! ## A101728.P423823540327122572

`A102993(n+1)-1`
-/

namespace A101728.P423823540327122572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102993 (n + 1) - 1

end

end A101728.P423823540327122572

/-! ## A101728.P2176489016963837668

`record[A102993(A133310(n))-1]`
-/

namespace A101728.P2176489016963837668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102993 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101728.P2176489016963837668

/-! ## A101728.P15876708411804447827

`record[A102993(A344180(n))-1]`
-/

namespace A101728.P15876708411804447827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102993 (A344180 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101728.P15876708411804447827

/-! ## A101728.P2803898717518773635

`A260196(n+2)+A102993(n+1)`
-/

namespace A101728.P2803898717518773635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A102993 (n + 1)

end

end A101728.P2803898717518773635

/-! ## A101728.P15620118908363460656

`abs(A102993(n+1)+A057428(n+1))`
-/

namespace A101728.P15620118908363460656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A102993 (n + 1) + A057428 (n + 1)|

end

end A101728.P15620118908363460656

/-!
# A101729: Indices of primes in sequence defined by A(0) = 41, A(n) = 10*A(n-1) + 51 for n > 0.

The programs for A101729, there is no canonical definition to state claims against.
-/

/-! ## A101729.P132833734163892303

`A102994(n+1)-1`
-/

namespace A101729.P132833734163892303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102994 (n + 1) - 1

end

end A101729.P132833734163892303

/-! ## A101729.P8975688305823241582

`record[Δ[A102994(A152271(n))]]`
-/

namespace A101729.P8975688305823241582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102994 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101729.P8975688305823241582

/-! ## A101729.P8574473097566765542

`A134824(n+2)+A102994(n+1)`
-/

namespace A101729.P8574473097566765542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A102994 (n + 1)

end

end A101729.P8574473097566765542

/-! ## A101729.P893668980390380878

`abs(A102994(n+1)+A057428(n+1))`
-/

namespace A101729.P893668980390380878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A102994 (n + 1) + A057428 (n + 1)|

end

end A101729.P893668980390380878

/-! ## A101729.P5756659543377919943

`A137569(A047996(n))+A102994(n+1)`
-/

namespace A101729.P5756659543377919943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137569 (A047996 n).toNat + A102994 (n + 1)

end

end A101729.P5756659543377919943

/-!
# A101730: Indices of primes in sequence defined by A(0) = 43, A(n) = 10*A(n-1) + 33 for n > 0.

The programs for A101730, there is no canonical definition to state claims against.
-/

/-! ## A101730.P18269946620073011353

`A099005(n+1)-1`
-/

namespace A101730.P18269946620073011353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099005 (n + 1) - 1

end

end A101730.P18269946620073011353

/-! ## A101730.P16574952728151619705

`record[A099005(A109785(n))-1]`
-/

namespace A101730.P16574952728151619705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099005 (A109785 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101730.P16574952728151619705

/-! ## A101730.P3051467938141824126

`A153881(n+2)+A099005(n+1)`
-/

namespace A101730.P3051467938141824126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A099005 (n + 1)

end

end A101730.P3051467938141824126

/-! ## A101730.P12756274500792710552

`A168361(2*(n+2))+A099005(n+1)`
-/

namespace A101730.P12756274500792710552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168361 (2 * (n + 2)) + A099005 (n + 1)

end

end A101730.P12756274500792710552

/-! ## A101730.P8653467192383020295

`A306861(gcd(n, n+1))+A099005(n+1)`
-/

namespace A101730.P8653467192383020295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306861 (Nat.gcd n (n + 1)) + A099005 (n + 1)

end

end A101730.P8653467192383020295

/-!
# A101731: Indices of primes in sequence defined by A(0) = 47, A(n) = 10*A(n-1) - 3 for n > 0.

The programs for A101731, there is no canonical definition to state claims against.
-/

/-! ## A101731.P170118897782357290

`A099017(n+2)-1`
-/

namespace A101731.P170118897782357290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099017 (n + 2) - 1

end

end A101731.P170118897782357290

/-! ## A101731.P2476585908017376307

`∑[Δ[A099017(n+1)]%A000244(n)]`
-/

namespace A101731.P2476585908017376307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099017 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000244 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101731.P2476585908017376307

/-! ## A101731.P12568174188412408090

`A260196(2*(n+2))+A099017(n+2)`
-/

namespace A101731.P12568174188412408090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (2 * (n + 2)) + A099017 (n + 2)

end

end A101731.P12568174188412408090

/-! ## A101731.P5070372953794515800

`(A099017(n+2)+A064754(n+1))%(8^n)`
-/

namespace A101731.P5070372953794515800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099017 (n + 2) + A064754 (n + 1)) (8 ^ n : ℤ)

end

end A101731.P5070372953794515800

/-! ## A101731.P11583241208486914565

`A023443(A099017(n+2))`
-/

namespace A101731.P11583241208486914565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A099017 (n + 2)).toNat

end

end A101731.P11583241208486914565

/-!
# A101732: Indices of primes in sequence defined by A(0) = 41, A(n) = 10*A(n-1) + 61 for n > 0.

The programs for A101732, there is no canonical definition to state claims against.
-/

/-! ## A101732.P10401414728936947150

`A102995(n+1)-1`
-/

namespace A101732.P10401414728936947150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102995 (n + 1) - 1

end

end A101732.P10401414728936947150

/-! ## A101732.P13292466621919289224

`record[Δ[A102995(A050603(n))]]`
-/

namespace A101732.P13292466621919289224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102995 (A050603 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101732.P13292466621919289224

/-! ## A101732.P13737875941809868209

`record[Δ[A102995(A193592(n))]]`
-/

namespace A101732.P13737875941809868209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102995 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101732.P13737875941809868209

/-! ## A101732.P2468995927477940778

`record[Δ[A102995(A193739(n))]]`
-/

namespace A101732.P2468995927477940778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102995 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101732.P2468995927477940778

/-!
# A101733: Indices of primes in sequence defined by A(0) = 49, A(n) = 10*A(n-1) - 11 for n > 0.

The programs for A101733, there is no canonical definition to state claims against.
-/

/-! ## A101733.P7602972249032023004

`A102996(n+1)-1`
-/

namespace A101733.P7602972249032023004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102996 (n + 1) - 1

end

end A101733.P7602972249032023004

/-! ## A101733.P15121142342845385241

`A308778(n²)+A102996(n+1)`
-/

namespace A101733.P15121142342845385241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A102996 (n + 1)

end

end A101733.P15121142342845385241

/-! ## A101733.P18256805253090139596

`A280193(2*n+1)+A102996(n+1)`
-/

namespace A101733.P18256805253090139596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A102996 (n + 1)

end

end A101733.P18256805253090139596

/-! ## A101733.P1355618031731541919

`abs(A102996(n+1)+A057428(2*(n+1)))`
-/

namespace A101733.P1355618031731541919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A102996 (n + 1) + A057428 (2 * (n + 1))|

end

end A101733.P1355618031731541919

/-! ## A101733.P3733065376655489537

`A111785(val(n+1, 5)+1)+A102996(n+1)`
-/

namespace A101733.P3733065376655489537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111785 (SequenceMachineLib.valuation (n + 1) 5 + 1) + A102996 (n + 1)

end

end A101733.P3733065376655489537

/-!
# A101735: Indices of primes in sequence defined by A(0) = 43, A(n) = 10*A(n-1) + 53 for n > 0.

The programs for A101735, there is no canonical definition to state claims against.
-/

/-! ## A101735.P4247191110018577793

`A102998(n+1)-1`
-/

namespace A101735.P4247191110018577793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102998 (n + 1) - 1

end

end A101735.P4247191110018577793

/-! ## A101735.P3948140145836996969

`record[Δ[A102998(gcd(xor(1, n²), ∑[n]))]]`
-/

namespace A101735.P3948140145836996969
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102998 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f3 j))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101735.P3948140145836996969

/-! ## A101735.P3791084821490709310

`record[Δ[A102998(ceil(C(or(1, n), n)/2))]]`
-/

namespace A101735.P3791084821490709310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102998 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101735.P3791084821490709310

/-! ## A101735.P3858375713214671290

`record[Δ[A102998(A152271(n))]]`
-/

namespace A101735.P3858375713214671290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102998 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101735.P3858375713214671290

/-! ## A101735.P511263664922387154

`record[Δ[A102998(A158416(n))]]`
-/

namespace A101735.P511263664922387154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102998 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101735.P511263664922387154

/-!
# A101736: Indices of primes in sequence defined by A(0) = 47, A(n) = 10*A(n-1) + 17 for n > 0.

The programs for A101736, there is no canonical definition to state claims against.
-/

/-! ## A101736.P6095128477254129904

`A102999(n+2)-1`
-/

namespace A101736.P6095128477254129904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102999 (n + 2) - 1

end

end A101736.P6095128477254129904

/-! ## A101736.P15707986377892840638

`record[A102999(A028920(n))-and(1, n)]`
-/

namespace A101736.P15707986377892840638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102999 (A028920 n).toNat - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101736.P15707986377892840638

/-! ## A101736.P10400795187205808121

`record[A102999(A005378(n))-A057427(n)]`
-/

namespace A101736.P10400795187205808121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102999 (A005378 n).toNat - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101736.P10400795187205808121

/-! ## A101736.P7046319089126957471

`record[A102999(A028310(n))-A057427(n)]`
-/

namespace A101736.P7046319089126957471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102999 (A028310 n).toNat - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101736.P7046319089126957471

/-! ## A101736.P4284159746692680426

`record[A102999(A028920(n))-A057427(n)]`
-/

namespace A101736.P4284159746692680426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102999 (A028920 n).toNat - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101736.P4284159746692680426

/-!
# A101737: Indices of primes in sequence defined by A(0) = 49, A(n) = 10*A(n-1) - 1 for n > 0.

The programs for A101737, there is no canonical definition to state claims against.
-/

/-! ## A101737.P3033777074867083598

`A103000(n+2)-1`
-/

namespace A101737.P3033777074867083598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103000 (n + 2) - 1

end

end A101737.P3033777074867083598

/-! ## A101737.P16785948754133786790

`A153881(n+2)+A103000(n+2)`
-/

namespace A101737.P16785948754133786790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A103000 (n + 2)

end

end A101737.P16785948754133786790

/-! ## A101737.P15080745290168848089

`A209615(8*n+2)+A103000(n+2)`
-/

namespace A101737.P15080745290168848089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (8 * n + 2) + A103000 (n + 2)

end

end A101737.P15080745290168848089

/-! ## A101737.P10703403242729112825

`A292952(A271838(n))+A103000(n+2)`
-/

namespace A101737.P10703403242729112825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292952 (A271838 n).toNat + A103000 (n + 2)

end

end A101737.P10703403242729112825

/-! ## A101737.P8158934233377293185

`A292952(A327924(n+1))+A103000(n+2)`
-/

namespace A101737.P8158934233377293185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292952 (A327924 (n + 1)).toNat + A103000 (n + 2)

end

end A101737.P8158934233377293185

/-!
# A101738: Indices of primes in sequence defined by A(0) = 41, A(n) = 10*A(n-1) + 81 for n > 0.

The programs for A101738, there is no canonical definition to state claims against.
-/

/-! ## A101738.P4058890359322681776

`A103001(n+1)-1`
-/

namespace A101738.P4058890359322681776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103001 (n + 1) - 1

end

end A101738.P4058890359322681776

/-! ## A101738.P9587213285900048434

`record[Δ[A103001(A152271(n))]]`
-/

namespace A101738.P9587213285900048434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103001 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101738.P9587213285900048434

/-! ## A101738.P10358934528456825740

`abs(A103001(n+1)+A057428(n+1))`
-/

namespace A101738.P10358934528456825740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103001 (n + 1) + A057428 (n + 1)|

end

end A101738.P10358934528456825740

/-! ## A101738.P4279172852600951933

`A164117(A073024(n+1))+A103001(n+1)`
-/

namespace A101738.P4279172852600951933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164117 (A073024 (n + 1)).toNat + A103001 (n + 1)

end

end A101738.P4279172852600951933

/-! ## A101738.P17403089195524859973

`A164117(A073037(n+1))+A103001(n+1)`
-/

namespace A101738.P17403089195524859973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164117 (A073037 (n + 1)).toNat + A103001 (n + 1)

end

end A101738.P17403089195524859973

/-!
# A101739: Indices of primes in sequence defined by A(0) = 43, A(n) = 10*A(n-1) + 63 for n > 0.

The programs for A101739, there is no canonical definition to state claims against.
-/

/-! ## A101739.P1424457763352494651

`A103002(n+1)-1`
-/

namespace A101739.P1424457763352494651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103002 (n + 1) - 1

end

end A101739.P1424457763352494651

/-! ## A101739.P11160241736901454811

`record[Δ[A103002(A152271(n))]]`
-/

namespace A101739.P11160241736901454811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103002 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101739.P11160241736901454811

/-! ## A101739.P16488041116702370628

`record[A103002(A137734(n))-1]`
-/

namespace A101739.P16488041116702370628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103002 (A137734 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101739.P16488041116702370628

/-! ## A101739.P2179715971812660349

`record[A103002(A284548(n))-1]`
-/

namespace A101739.P2179715971812660349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103002 (A284548 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101739.P2179715971812660349

/-! ## A101739.P13548516011425755745

`record[A103002(A344180(n))-1]`
-/

namespace A101739.P13548516011425755745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103002 (A344180 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101739.P13548516011425755745

/-!
# A101740: Indices of primes in sequence defined by A(0) = 47, A(n) = 10*A(n-1) + 27 for n > 0.

The programs for A101740, there is no canonical definition to state claims against.
-/

/-! ## A101740.P6475214212148728024

`A103003(n+2)-1`
-/

namespace A101740.P6475214212148728024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103003 (n + 2) - 1

end

end A101740.P6475214212148728024

/-! ## A101740.P14355102251421382737

`A118830(Δ[n²])+A103003(n+2)`
-/

namespace A101740.P14355102251421382737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A103003 (n + 2)

end

end A101740.P14355102251421382737

/-! ## A101740.P10330028391124967749

`A001478(n+1)+A103003(n+2)+n`
-/

namespace A101740.P10330028391124967749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A103003 (n + 2) + (n : ℤ))

end

end A101740.P10330028391124967749

/-! ## A101740.P299125100673773630

`A321800(A032741(n))+A103003(n+2)`
-/

namespace A101740.P299125100673773630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A032741 n).toNat + A103003 (n + 2)

end

end A101740.P299125100673773630

/-! ## A101740.P11077226358246959108

`A359763(A077065(n+1))+A103003(n+2)`
-/

namespace A101740.P11077226358246959108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359763 (A077065 (n + 1)).toNat + A103003 (n + 2)

end

end A101740.P11077226358246959108

/-!
# A101741: 4th row of A101646.

The programs for A101741, there is no canonical definition to state claims against.
-/

/-! ## A101741.P9103089325253477608

`floor((n+ϕ)*ϕ²+n)`
-/

namespace A101741.P9103089325253477608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℝ) + Real.goldenRatio) * Real.goldenRatio ^ 2 + (n : ℝ)⌋

end

end A101741.P9103089325253477608

/-! ## A101741.P1329512772974855528

`∑[gcd(2, record[xor(n, 2*n)])+2]`
-/

namespace A101741.P1329512772974855528
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101741.P1329512772974855528

/-! ## A101741.P16666388847510640266

`∑[4-and(1, record[xor(n, 2*n)])]`
-/

namespace A101741.P16666388847510640266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (Nat.land 1 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101741.P16666388847510640266

/-! ## A101741.P15080677975946607233

`record[xor(1, n)]+floor(ϕ*(n+2))`
-/

namespace A101741.P15080677975946607233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) + ⌊Real.goldenRatio * (n + 2 : ℝ)⌋

end

end A101741.P15080677975946607233

/-! ## A101741.P18070906396477308773

`∑[Δ[floor(ϕ*(n+1))]!+2]`
-/

namespace A101741.P18070906396477308773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (n + 1) - f2 n).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101741.P18070906396477308773

/-! ## A101741.P15344769276788646214

`∑[dr(Δ[floor((ϕ+2)*(n+1))])]`
-/

namespace A101741.P15344769276788646214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio + 2) * (n + 1 : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101741.P15344769276788646214

/-! ## A101741.P1366537089869036388

`∑[dr(Δ[ceil((n+1)/ϕ)])+3]`
-/

namespace A101741.P1366537089869036388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.goldenRatio⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101741.P1366537089869036388

/-! ## A101741.P14127054906471754213

`ceil(lcm(n, 2*n)+ϕ*(n+2))`
-/

namespace A101741.P14127054906471754213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm n (2 * n) : ℝ) + Real.goldenRatio * (n + 2 : ℝ)⌉

end

end A101741.P14127054906471754213

/-! ## A101741.P1695377754294298150

`ceil(2*n+ϕ*C(n+2, n+1))`
-/

namespace A101741.P1695377754294298150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) + Real.goldenRatio * (Nat.choose (n + 2) (n + 1) : ℝ)⌉

end

end A101741.P1695377754294298150

/-!
# A101743: A000005(A101742(n)).

The programs for A101743, there is no canonical definition to state claims against.
-/

/-! ## A101743.P12484093267435810412

`A000005(A101742(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101743.P12484093267435810412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A101742 (n + 1)).toNat

end

end A101743.P12484093267435810412

/-! ## A101743.P17771399489168335246

`A183063(2*A101742(n+1))`
-/

namespace A101743.P17771399489168335246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A101742 (n + 1)).toNat

end

end A101743.P17771399489168335246

/-! ## A101743.P15960891061164836447

`A320111(2*A101742(n+1))`
-/

namespace A101743.P15960891061164836447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A101742 (n + 1)).toNat

end

end A101743.P15960891061164836447

/-! ## A101743.P16082302000710727991

`A299480(4*A101742(n+1))`
-/

namespace A101743.P16082302000710727991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (4 * A101742 (n + 1)).toNat

end

end A101743.P16082302000710727991

/-! ## A101743.P11360091140564401151

`∑{d}[A101742(n+1), A054977(#)]`
-/

namespace A101743.P11360091140564401151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054977 d

end

end A101743.P11360091140564401151

/-! ## A101743.P16291205061912816987

`∑{d}[A101742(n+1), A057427(#)]`
-/

namespace A101743.P16291205061912816987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A101743.P16291205061912816987

/-! ## A101743.P5832968753880042618

`∑{d}[A101742(n+1), abs(A057428(#))]`
-/

namespace A101743.P5832968753880042618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, |A057428 d|

end

end A101743.P5832968753880042618

/-! ## A101743.P6664324554137080402

`∑{d}[A101742(n+1), A000041(C(#%5, #))]`
-/

namespace A101743.P6664324554137080402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000041 (Nat.choose (d % 5) d)

end

end A101743.P6664324554137080402

/-!
# A101744: Triangular numbers which are 10-almost primes.

The programs for A101744, there is no canonical definition to state claims against.
-/

/-! ## A101744.P14242078930883313876

`C(A101745(n+1)+1, 2)`
-/

namespace A101744.P14242078930883313876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A101745 (n + 1) + 1).toNat 2

end

end A101744.P14242078930883313876

/-! ## A101744.P10358160567317002414

`A000217(A101745(n+1))`
-/

namespace A101744.P10358160567317002414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A101745 (n + 1)).toNat

end

end A101744.P10358160567317002414

/-! ## A101744.P15750736019469412073

`A161680(A101745(n+1)+1)`
-/

namespace A101744.P15750736019469412073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A101745 (n + 1) + 1).toNat

end

end A101744.P15750736019469412073

/-! ## A101744.P8014668351668340018

`A179865(A101745(n+1)+1)`
-/

namespace A101744.P8014668351668340018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A101745 (n + 1) + 1).toNat

end

end A101744.P8014668351668340018

/-! ## A101744.P15792808443315098061

`A253145(A101745(n+1)-1)`
-/

namespace A101744.P15792808443315098061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A101745 (n + 1) - 1).toNat

end

end A101744.P15792808443315098061

/-! ## A101744.P9844849890210268367

`A000124(A101745(n+1))-char[A035327(n)]`
-/

namespace A101744.P9844849890210268367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A101745 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A101744.P9844849890210268367

/-!
# A101745: Indices of triangular numbers which are 10-almost primes. Indices of A101744.

The programs for A101745, there is no canonical definition to state claims against.
-/

/-! ## A101745.P10485012116816722853

`floor(sqrt(2*A101744(n+1)))`
-/

namespace A101745.P10485012116816722853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A101744 (n + 1))

end

end A101745.P10485012116816722853

/-! ## A101745.P5880269885670944669

`round(sqrt(2*A101744(n%(4*n+1)+1)))`
-/

namespace A101745.P5880269885670944669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A101744 (n % (4 * n + 1) + 1) : ℝ))

end

end A101745.P5880269885670944669

/-! ## A101745.P10212688495403534803

`round(sqrt(2*A101744(n+1)))%A341891(n+1)`
-/

namespace A101745.P10212688495403534803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A101744 (n + 1) : ℝ))) (A341891 (n + 1))

end

end A101745.P10212688495403534803

/-! ## A101745.P47364139750043997

`round(sqrt(2*A101744(n+1)-A000010(n+1)+1))`
-/

namespace A101745.P47364139750043997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A101744 (n + 1) - A000010 (n + 1) + 1 : ℝ))

end

end A101745.P47364139750043997

/-! ## A101745.P177428193437948674

`round(sqrt(2*A101744(n+1)-A000040(n+1)+1))`
-/

namespace A101745.P177428193437948674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A101744 (n + 1) - A000040 (n + 1) + 1 : ℝ))

end

end A101745.P177428193437948674

/-! ## A101745.P18094861223275523879

`round(sqrt(2*A101744(n+1)-A054725(n+1)+1))`
-/

namespace A101745.P18094861223275523879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A101744 (n + 1) - A054725 (n + 1) + 1 : ℝ))

end

end A101745.P18094861223275523879

/-! ## A101745.P5010599799033251765

`round(sqrt(2*A101744(n+1)-A076610(n+1)+1))`
-/

namespace A101745.P5010599799033251765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A101744 (n + 1) - A076610 (n + 1) + 1 : ℝ))

end

end A101745.P5010599799033251765

/-! ## A101745.P10955358428740699851

`round(sqrt(2*A101744(n+1)*A057427(n+1)))`
-/

namespace A101745.P10955358428740699851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A101744 (n + 1) * A057427 (n + 1) : ℝ))

end

end A101745.P10955358428740699851

/-! ## A101745.P11380896633290274202

`eq[10, A069904(A028310(n))]`
-/

namespace A101745.P11380896633290274202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101745.P11380896633290274202

/-!
# A101746: Primes of the form ((0!)^2+(1!)^2+(2!)^2+...+(n!)^2)/6.

The programs for A101746, there is no canonical definition to state claims against.
-/

/-! ## A101746.P14254473333181442686

`A061062(A101747(n+1))/6`
-/

namespace A101746.P14254473333181442686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061062 (A101747 (n + 1)).toNat : ℚ) / 6

end

end A101746.P14254473333181442686

/-!
# A101753: Numbers m such that Sum_{k=0..m} m^k is prime.

The programs for A101753, there is no canonical definition to state claims against.
-/

/-! ## A101753.P6862476633368738333

`A088856(n+1)-1`
-/

namespace A101753.P6862476633368738333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088856 (n + 1) - 1

end

end A101753.P6862476633368738333

/-!
# A101754: Numbers n such that the sum of the first n decimal places of Catalan's constant is prime.

The programs for A101754, there is no canonical definition to state claims against.
-/

/-! ## A101754.P4251316220033094286

`eq[1, A001222(A099616(n+1))]+1`
-/

namespace A101754.P4251316220033094286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A099616 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A101754.P4251316220033094286

/-!
# A101755: Indices of highly composite triangular numbers.

The programs for A101755, there is no canonical definition to state claims against.
-/

/-! ## A101755.P14240027342923009926

`floor(sqrt(2*A076711(n+1)))`
-/

namespace A101755.P14240027342923009926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A076711 (n + 1))

end

end A101755.P14240027342923009926

/-! ## A101755.P16630043799191476273

`round(sqrt(2*A076711(n+1)))%A168609(n)`
-/

namespace A101755.P16630043799191476273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A076711 (n + 1) : ℝ))) (A168609 n)

end

end A101755.P16630043799191476273

/-! ## A101755.P10771373405266415190

`ceil(sqrt(A008619(n)+2*A076711(n+1)))-1`
-/

namespace A101755.P10771373405266415190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A008619 n + 2 * A076711 (n + 1) : ℝ)⌉ - 1

end

end A101755.P10771373405266415190

/-! ## A101755.P7633053097151137444

`ceil(sqrt(A057427(n)+2*A076711(n+1)))-1`
-/

namespace A101755.P7633053097151137444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A057427 n + 2 * A076711 (n + 1) : ℝ)⌉ - 1

end

end A101755.P7633053097151137444

/-! ## A101755.P9065300086242685806

`ceil(sqrt(2*A076711(n+1))-A209615(n+1)²)`
-/

namespace A101755.P9065300086242685806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A076711 (n + 1) : ℝ) - (A209615 (n + 1) ^ 2 : ℝ)⌉

end

end A101755.P9065300086242685806

/-! ## A101755.P9603352208409457783

`ceil(sqrt(A183138(n+1)+2*A076711(n+1)))-1`
-/

namespace A101755.P9603352208409457783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A183138 (n + 1) + 2 * A076711 (n + 1) : ℝ)⌉ - 1

end

end A101755.P9603352208409457783

/-!
# A101756: Number of divisors of highly composite triangular numbers.

The programs for A101756, there is no canonical definition to state claims against.
-/

/-! ## A101756.P5979512452017907543

`A000005(A076711(n+1))`
-/

namespace A101756.P5979512452017907543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A076711 (n + 1)).toNat

end

end A101756.P5979512452017907543

/-! ## A101756.P5605377932394048893

`A000005(A000217(A101755(n+1)))`
-/

namespace A101756.P5605377932394048893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000217 (A101755 (n + 1)).toNat).toNat

end

end A101756.P5605377932394048893

/-! ## A101756.P7531916977133045790

`record[A320111(n+1)*A320111(n+2)]`
-/

namespace A101756.P7531916977133045790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (n + 1) * A320111 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101756.P7531916977133045790

/-! ## A101756.P81458311179337235

`record[A063440(n+1)]`
-/

namespace A101756.P81458311179337235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101756.P81458311179337235

/-! ## A101756.P6233712024503284782

`A063440(A101755(n+1))`
-/

namespace A101756.P6233712024503284782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (A101755 (n + 1)).toNat

end

end A101756.P6233712024503284782

/-!
# A101757: Indices of semiprimes in A000073.

The programs for A101757, there is no canonical definition to state claims against.
-/

/-! ## A101757.P9654168601730513361

`eq[2, A366781(n+2)]+2`
-/

namespace A101757.P9654168601730513361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366781 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A101757.P9654168601730513361

/-! ## A101757.P16127636502677464878

`eq[2, A366781(A233583(n+1))]`
-/

namespace A101757.P16127636502677464878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366781 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101757.P16127636502677464878

/-!
# A101758: Semiprime tribonacci numbers.

The programs for A101758, there is no canonical definition to state claims against.
-/

/-! ## A101758.P4624074487423466792

`A000073(A101757(n+1))`
-/

namespace A101758.P4624074487423466792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A101757 (n + 1)).toNat

end

end A101758.P4624074487423466792

/-! ## A101758.P8401523863889911277

`A282718(A101757(n+1)-2)`
-/

namespace A101758.P8401523863889911277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282718 (A101757 (n + 1) - 2).toNat

end

end A101758.P8401523863889911277

/-! ## A101758.P10491626900275952114

`A000073(eq[2, A366781(n+2)]+2)`
-/

namespace A101758.P10491626900275952114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366781 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A101758.P10491626900275952114

/-!
# A101767: Numbers n such that n, 2n+1, 3n+2, 4n+3, 5n+4, 6n+5 are primes.

The programs for A101767, there is no canonical definition to state claims against.
-/

/-! ## A101767.P5636619096757270388

`2*A124489(n+1)-1`
-/

namespace A101767.P5636619096757270388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124489 (n + 1) - 1

end

end A101767.P5636619096757270388

/-! ## A101767.P907567229146943144

`A057428(A131762(n))+2*A124489(n+1)`
-/

namespace A101767.P907567229146943144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A131762 n).toNat + 2 * A124489 (n + 1)

end

end A101767.P907567229146943144

/-! ## A101767.P2085058428101767811

`A057428(A247371(n+1))+2*A124489(n+1)`
-/

namespace A101767.P2085058428101767811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A247371 (n + 1)).toNat + 2 * A124489 (n + 1)

end

end A101767.P2085058428101767811

/-! ## A101767.P17382897538361459821

`A057428(A247379(n+1))+2*A124489(n+1)`
-/

namespace A101767.P17382897538361459821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A247379 (n + 1)).toNat + 2 * A124489 (n + 1)

end

end A101767.P17382897538361459821

/-! ## A101767.P14810272746255933651

`A124489(n+1)+A124489(n+1)-A054906(n+1)%2`
-/

namespace A101767.P14810272746255933651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124489 (n + 1) + (A124489 (n + 1) - Int.tmod (A054906 (n + 1)) 2)

end

end A101767.P14810272746255933651

/-! ## A101767.P18379314808152553943

`A124489(n+1)+A124489(n+1)-A241099(n+1)%2`
-/

namespace A101767.P18379314808152553943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124489 (n + 1) + (A124489 (n + 1) - Int.tmod (A241099 (n + 1)) 2)

end

end A101767.P18379314808152553943

/-! ## A101767.P1079681793197419315

`A008683(A104272(n+1))+2*A124489(n+1)`
-/

namespace A101767.P1079681793197419315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A104272 (n + 1)).toNat + 2 * A124489 (n + 1)

end

end A101767.P1079681793197419315

/-!
# A101768: Numbers k such that k, 2*k+1, 3*k+2, 4*k+3, 5*k+4, 6*k+5, 7*k+6 are primes.

The programs for A101768, there is no canonical definition to state claims against.
-/

/-! ## A101768.P16143244203000915666

`2*A124490(n+1)-1`
-/

namespace A101768.P16143244203000915666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124490 (n + 1) - 1

end

end A101768.P16143244203000915666

/-! ## A101768.P10924945658217273034

`A057428(n+1)+2*A124490(n+1)`
-/

namespace A101768.P10924945658217273034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + 2 * A124490 (n + 1)

end

end A101768.P10924945658217273034

/-! ## A101768.P2067563235331447826

`A260196((n+2)²)+2*A124490(n+1)`
-/

namespace A101768.P2067563235331447826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 ((n + 2) ^ 2) + 2 * A124490 (n + 1)

end

end A101768.P2067563235331447826

/-! ## A101768.P3689413908717270448

`or(-1, A000041(n))+2*A124490(n+1)`
-/

namespace A101768.P3689413908717270448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-1) (A000041 n) + 2 * A124490 (n + 1)

end

end A101768.P3689413908717270448

/-! ## A101768.P3293532902514571610

`A008683(A020483(n))+2*A124490(n+1)`
-/

namespace A101768.P3293532902514571610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020483 n).toNat + 2 * A124490 (n + 1)

end

end A101768.P3293532902514571610

/-!
# A101769: Numbers p such that p, 2p+1, 3p+2, 4p+3, 5p+4, 6p+5, 7p+6, 8p+7 are primes.

The programs for A101769, there is no canonical definition to state claims against.
-/

/-! ## A101769.P11242947874887040125

`2*A124491(n+1)-1`
-/

namespace A101769.P11242947874887040125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124491 (n + 1) - 1

end

end A101769.P11242947874887040125

/-! ## A101769.P1771026386422952191

`A008683(A007918(n))+2*A124491(n+1)`
-/

namespace A101769.P1771026386422952191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007918 n).toNat + 2 * A124491 (n + 1)

end

end A101769.P1771026386422952191

/-! ## A101769.P10769218770422047185

`A008683(A000043(n+1))+2*A124491(n+1)`
-/

namespace A101769.P10769218770422047185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000043 (n + 1)).toNat + 2 * A124491 (n + 1)

end

end A101769.P10769218770422047185

/-! ## A101769.P16170603042382032151

`A008836(A000040(n+1))+2*A124491(n+1)`
-/

namespace A101769.P16170603042382032151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A000040 (n + 1)).toNat + 2 * A124491 (n + 1)

end

end A101769.P16170603042382032151

/-! ## A101769.P8089100097571743513

`A008683(A006512(n+1))+2*A124491(n+1)`
-/

namespace A101769.P8089100097571743513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006512 (n + 1)).toNat + 2 * A124491 (n + 1)

end

end A101769.P8089100097571743513

/-!
# A101771: Smallest k such that k^2 is equal to the sum of n distinct primes plus 1.

The programs for A101771, there is no canonical definition to state claims against.
-/

/-! ## A101771.P11252932225053975233

`sqrt(A100498(n))`
-/

namespace A101771.P11252932225053975233
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A100498 n : ℝ)

end

end A101771.P11252932225053975233

/-! ## A101771.P5274452717076730787

`comp[A101774(n+1)-1]+1`
-/

namespace A101771.P5274452717076730787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101774 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A101771.P5274452717076730787

/-! ## A101771.P15740562165444989469

`A000194(A100498(n)+1)`
-/

namespace A101771.P15740562165444989469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A100498 n + 1).toNat

end

end A101771.P15740562165444989469

/-! ## A101771.P1113453778812150612

`A000196(A100498(n)+1)`
-/

namespace A101771.P1113453778812150612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A100498 n + 1).toNat

end

end A101771.P1113453778812150612

/-!
# A101773: Last term in each row of triangle referenced in A101772.

The programs for A101773, there is no canonical definition to state claims against.
-/

/-! ## A101773.P10215403888480135827

`A101772(A000217(n+1))`
-/

namespace A101773.P10215403888480135827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101772 (A000217 (n + 1)).toNat

end

end A101773.P10215403888480135827

/-! ## A101773.P5680563073525954256

`A101772(∑[n+1])`
-/

namespace A101773.P5680563073525954256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101772 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101773.P5680563073525954256

/-! ## A101773.P3954290496415826923

`p?[A101772(∑[A291769(n)])]`
-/

namespace A101773.P3954290496415826923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101772 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101773.P3954290496415826923

/-! ## A101773.P3141064306408172461

`A109613(A101772(C(n+2, 2)))`
-/

namespace A101773.P3141064306408172461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A101772 (Nat.choose (n + 2) 2)).toNat

end

end A101773.P3141064306408172461

/-! ## A101773.P8570981330545809704

`p?[A101772(record[A038722(n+1)])]`
-/

namespace A101773.P8570981330545809704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101772 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101773.P8570981330545809704

/-!
# A101774: Positive integers not in A101771.

The programs for A101774, there is no canonical definition to state claims against.
-/

/-! ## A101774.P16618068660897110399

`sqrt(A101775(n+1))`
-/

namespace A101774.P16618068660897110399
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A101775 (n + 1) : ℝ)

end

end A101774.P16618068660897110399

/-! ## A101774.P14283794245577767807

`A028310(root(A101775(n+1), 2))`
-/

namespace A101774.P14283794245577767807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A101775 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A101774.P14283794245577767807

/-! ## A101774.P1680260713063500214

`root(A101775(n+1), ratio[A000079(n)])`
-/

namespace A101774.P1680260713063500214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A101775 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A101774.P1680260713063500214

/-! ## A101774.P12449107497786616086

`∑{d}[root(A101775(n+1), 2), A000010(#)]`
-/

namespace A101774.P12449107497786616086
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A101775 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000010 d

end

end A101774.P12449107497786616086

/-! ## A101774.P8655815603786640366

`root(A101775(n+1), 2)*A007318(∑[n])`
-/

namespace A101774.P8655815603786640366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A101775 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A101774.P8655815603786640366

/-!
# A101775: Positive squares not in A100498.

The programs for A101775, there is no canonical definition to state claims against.
-/

/-! ## A101775.P15029301539459505661

`A101774(n+1)²`
-/

namespace A101775.P15029301539459505661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101774 (n + 1) ^ 2

end

end A101775.P15029301539459505661

/-! ## A101775.P10712781943548098004

`record[A101774(A291769(n))²]`
-/

namespace A101775.P10712781943548098004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101774 (A291769 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101775.P10712781943548098004

/-! ## A101775.P2742424536921512162

`A101774(A000027(n+1))^2`
-/

namespace A101775.P2742424536921512162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101774 (A000027 (n + 1)).toNat ^ 2

end

end A101775.P2742424536921512162

/-! ## A101775.P2322457268964968594

`A106230(A101774(n+1)+1)+1`
-/

namespace A101775.P2322457268964968594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106230 (A101774 (n + 1) + 1).toNat + 1

end

end A101775.P2322457268964968594

/-! ## A101775.P12283231031552930466

`A000290(abs(A101774(n+1)-1)+1)`
-/

namespace A101775.P12283231031552930466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (|A101774 (n + 1) - 1| + 1).toNat

end

end A101775.P12283231031552930466

/-!
# A101776: Smallest k such that k^2 is equal to the sum of n not-necessarily-distinct primes plus 1.

The programs for A101776, the canonical program `A101776.P7591987110136871603` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101776 has offset 0).

The definition of A101776 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101776.P7591987110136871603

`ceil(sqrt(2*n+1))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101776

/-- `ceil(sqrt(2*n+1))` -/
def P7591987110136871603.Spec : Prop :=
  ∀ n, P7591987110136871603.a n = A101776 n

theorem P7591987110136871603.correct : P7591987110136871603.Spec := by
  intro n
  simp only [A101776]

end A101776

/-! ## A101776.P4822511932977602079

`sqrt(A100555(n))`
-/

namespace A101776.P4822511932977602079
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A100555 n : ℝ)

end

end A101776.P4822511932977602079

namespace A101776

/-- `sqrt(A100555(n))` -/
def P4822511932977602079.Spec : Prop :=
  ∀ n, P4822511932977602079.a n = (A101776 n : ℝ)

end A101776

/-! ## A101776.P17992875129106382028

`comp[∑[and(n, -2)]]-n`
-/

namespace A101776.P17992875129106382028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A101776.P17992875129106382028

namespace A101776

/-- `comp[∑[and(n, -2)]]-n` -/
def P17992875129106382028.Spec : Prop :=
  ∀ n, P17992875129106382028.a n = A101776 n

end A101776

/-! ## A101776.P6582063916139469284

`floor(sqrt(comp[or(1, n)]))+1`
-/

namespace A101776.P6582063916139469284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1

end

end A101776.P6582063916139469284

namespace A101776

/-- `floor(sqrt(comp[or(1, n)]))+1` -/
def P6582063916139469284.Spec : Prop :=
  ∀ n, (P6582063916139469284.a n : ℤ) = A101776 n

end A101776

/-! ## A101776.P15093171369228296286

`∑[char[∑[or(1, n)]]]+1`
-/

namespace A101776.P15093171369228296286
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A101776.P15093171369228296286

namespace A101776

/-- `∑[char[∑[or(1, n)]]]+1` -/
def P15093171369228296286.Spec : Prop :=
  ∀ n, (P15093171369228296286.a n : ℤ) = A101776 n

end A101776

/-! ## A101776.P4800422852771780058

`round(sqrt(comp[n^gcd(2, n)]))`
-/

namespace A101776.P4800422852771780058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.gcd 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ))

end

end A101776.P4800422852771780058

namespace A101776

/-- `round(sqrt(comp[n^gcd(2, n)]))` -/
def P4800422852771780058.Spec : Prop :=
  ∀ n, P4800422852771780058.a n = A101776 n

end A101776

/-! ## A101776.P11149477252433662272

`abs(ceil(cot(Δ[sqrt(2*n)])))`
-/

namespace A101776.P11149477252433662272
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈Real.cot (f1 (n + 1) - f1 n)⌉|

end

end A101776.P11149477252433662272

namespace A101776

/-- `abs(ceil(cot(Δ[sqrt(2*n)])))` -/
def P11149477252433662272.Spec : Prop :=
  ∀ n, P11149477252433662272.a n = A101776 n

end A101776

/-! ## A101776.P3323921431878847025

`floor(sqrt(lcm(n, 2*n)))+1`
-/

namespace A101776.P3323921431878847025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.lcm n (2 * n)) + 1

end

end A101776.P3323921431878847025

namespace A101776

/-- `floor(sqrt(lcm(n, 2*n)))+1` -/
def P3323921431878847025.Spec : Prop :=
  ∀ n, (P3323921431878847025.a n : ℤ) = A101776 n

end A101776

/-! ## A101776.P16956669650814858885

`abs(xor(-1, floor(sqrt(2*n))))`
-/

namespace A101776.P16956669650814858885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (Nat.sqrt (2 * n) : ℤ)|

end

end A101776.P16956669650814858885

namespace A101776

/-- `abs(xor(-1, floor(sqrt(2*n))))` -/
def P16956669650814858885.Spec : Prop :=
  ∀ n, P16956669650814858885.a n = A101776 n

end A101776

/-! ## A101776.P3295475993318313780

`-xor(-1, floor(sqrt(2*n)))`
-/

namespace A101776.P3295475993318313780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (Nat.sqrt (2 * n) : ℤ)

end

end A101776.P3295475993318313780

namespace A101776

/-- `-xor(-1, floor(sqrt(2*n)))` -/
def P3295475993318313780.Spec : Prop :=
  ∀ n, P3295475993318313780.a n = A101776 n

end A101776

/-! ## A101776.P15057622180356515612

`∑[and(1, char[ceil(n²/2)])]`
-/

namespace A101776.P15057622180356515612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101776.P15057622180356515612

namespace A101776

/-- `∑[and(1, char[ceil(n²/2)])]` -/
def P15057622180356515612.Spec : Prop :=
  ∀ n, (P15057622180356515612.a n : ℤ) = A101776 n

end A101776

/-! ## A101776.P13159392493924030540

`floor(sqrt(2*n))-cos(-π)`
-/

namespace A101776.P13159392493924030540
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (2 * n) : ℝ) - Real.cos (-Real.pi)

end

end A101776.P13159392493924030540

namespace A101776

/-- `floor(sqrt(2*n))-cos(-π)` -/
def P13159392493924030540.Spec : Prop :=
  ∀ n, P13159392493924030540.a n = (A101776 n : ℝ)

end A101776

/-! ## A101776.P7778200884577211961

`floor(sqrt(tan(7)+2*n))+1`
-/

namespace A101776.P7778200884577211961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.tan (7 : ℝ) + (2 * n : ℝ))⌋ + 1

end

end A101776.P7778200884577211961

namespace A101776

/-- `floor(sqrt(tan(7)+2*n))+1` -/
def P7778200884577211961.Spec : Prop :=
  ∀ n, P7778200884577211961.a n = A101776 n

end A101776

/-! ## A101776.P3196458154925357764

`floor(sqrt(2*n))-or(n, -1)`
-/

namespace A101776.P3196458154925357764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (2 * n) : ℤ) - Int.lor (n : ℤ) (-1)

end

end A101776.P3196458154925357764

namespace A101776

/-- `floor(sqrt(2*n))-or(n, -1)` -/
def P3196458154925357764.Spec : Prop :=
  ∀ n, P3196458154925357764.a n = A101776 n

end A101776

/-! ## A101776.P11277410994267573270

`char[xor(1, n)]+floor(sqrt(2*n))`
-/

namespace A101776.P11277410994267573270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + Nat.sqrt (2 * n)

end

end A101776.P11277410994267573270

namespace A101776

/-- `char[xor(1, n)]+floor(sqrt(2*n))` -/
def P11277410994267573270.Spec : Prop :=
  ∀ n, (P11277410994267573270.a n : ℤ) = A101776 n

end A101776

/-! ## A101776.P377770065236630856

`floor(sqrt(2*(a(n-1)+n)+1))` with `a(0)=1`
-/

namespace A101776.P377770065236630856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.sqrt (2 * (a (n - 1) + n) + 1)

end

end A101776.P377770065236630856

namespace A101776

/-- `floor(sqrt(2*(a(n-1)+n)+1))` -/
def P377770065236630856.Spec : Prop :=
  ∀ n, (P377770065236630856.a n : ℤ) = A101776 n

end A101776

/-! ## A101776.P450105122777999396

`round(a(n-1)+n/a(n-1)²)` with `a(0)=1`
-/

namespace A101776.P450105122777999396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (n : ℚ) / (a (n - 1) ^ 2 : ℚ))

end

end A101776.P450105122777999396

namespace A101776

/-- `round(a(n-1)+n/a(n-1)²)` -/
def P450105122777999396.Spec : Prop :=
  ∀ n, P450105122777999396.a n = A101776 n

end A101776

/-! ## A101776.P12750581104216964443

`floor(a(n-1)/2+n/a(n-1)+1)` with `a(0)=1`
-/

namespace A101776.P12750581104216964443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) / 2 + ((n : ℚ) / (a (n - 1) : ℚ) + 1)⌋

end

end A101776.P12750581104216964443

namespace A101776

/-- `floor(a(n-1)/2+n/a(n-1)+1)` -/
def P12750581104216964443.Spec : Prop :=
  ∀ n, P12750581104216964443.a n = A101776 n

end A101776

/-! ## A101776.P17099222157420394165

`floor(n/a(n-1)-((2-a(n-1))/2-2))` with `a(0)=1`
-/

namespace A101776.P17099222157420394165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℚ) / (a (n - 1) : ℚ) - ((2 - a (n - 1) : ℚ) / 2 - 2)⌋

end

end A101776.P17099222157420394165

namespace A101776

/-- `floor(n/a(n-1)-((2-a(n-1))/2-2))` -/
def P17099222157420394165.Spec : Prop :=
  ∀ n, P17099222157420394165.a n = A101776 n

end A101776

/-! ## A101776.P5897155089457403416

`A172471(n)+1`
-/

namespace A101776.P5897155089457403416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 n + 1

end

end A101776.P5897155089457403416

namespace A101776

/-- `A172471(n)+1` -/
def P5897155089457403416.Spec : Prop :=
  ∀ n, P5897155089457403416.a n = A101776 n

end A101776

/-!
# A101778: Last term in each row of triangle referenced in A101777.

The programs for A101778, there is no canonical definition to state claims against.
-/

/-! ## A101778.P17393008921462151509

`A101777(A000217(n+1))`
-/

namespace A101778.P17393008921462151509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101777 (A000217 (n + 1)).toNat

end

end A101778.P17393008921462151509

/-! ## A101778.P6922396624411264844

`A101777(∑[n+1])`
-/

namespace A101778.P6922396624411264844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101777 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101778.P6922396624411264844

/-! ## A101778.P16122738856111460965

`p?[A101777(A025747(n))]`
-/

namespace A101778.P16122738856111460965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101777 (A025747 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101778.P16122738856111460965

/-! ## A101778.P7919304384292814243

`p?[A101777(∑[A348553(n)])]`
-/

namespace A101778.P7919304384292814243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101777 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101778.P7919304384292814243

/-! ## A101778.P191242831770763631

`p?[A101777(Δ[A000292(n)])]`
-/

namespace A101778.P191242831770763631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101777 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101778.P191242831770763631

/-!
# A101779: a(n) = least k such that all of k, 2k+1, 3k+2, ..., nk+n-1 are primes, or 0 if no such k is found.

The programs for A101779, there is no canonical definition to state claims against.
-/

/-! ## A101779.P9202470167822248866

`A088651(n+1)-1`
-/

namespace A101779.P9202470167822248866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088651 (n + 1) - 1

end

end A101779.P9202470167822248866

/-! ## A101779.P13236325199729300479

`A134824(n+2)+A088651(n+1)`
-/

namespace A101779.P13236325199729300479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A088651 (n + 1)

end

end A101779.P13236325199729300479

/-! ## A101779.P5244348269280607794

`A158052(A009571(n+1))+A088651(n+1)`
-/

namespace A101779.P5244348269280607794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158052 (A009571 (n + 1)).toNat + A088651 (n + 1)

end

end A101779.P5244348269280607794

/-! ## A101779.P3900967038116974788

`A158052(A088652(n+1))+A088651(n+1)`
-/

namespace A101779.P3900967038116974788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158052 (A088652 (n + 1)).toNat + A088651 (n + 1)

end

end A101779.P3900967038116974788

/-! ## A101779.P13898148376958530856

`A301849(A059159(n+1))+A088651(n+1)`
-/

namespace A101779.P13898148376958530856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301849 (A059159 (n + 1)).toNat + A088651 (n + 1)

end

end A101779.P13898148376958530856

/-!
# A101780: Primes of the form 100*n + 3.

The programs for A101780, the canonical program `A101780.P5426429691116946271` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101780 has offset 1).

The definition of A101780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1969 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101780.P12362854082379599526

`∩[A105854(n+1), A141929(n+1)]`
-/

namespace A101780.P12362854082379599526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101780.P12362854082379599526

namespace A101780

/-- `∩[A105854(n+1), A141929(n+1)]` -/
def P12362854082379599526.Spec : Prop :=
  ∀ n, (P12362854082379599526.a n : ℤ) = A101780 (n + 1)

end A101780

/-! ## A101780.P5426429691116946271

`p?[10*10*n+3]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101780

/-- `p?[10*10*n+3]` -/
def P5426429691116946271.Spec : Prop :=
  ∀ n, (P5426429691116946271.a n : ℤ) = A101780 (n + 1)

theorem P5426429691116946271.correct : P5426429691116946271.Spec := by
  intro n
  simp only [A101780, Nat.add_sub_cancel]

end A101780

/-! ## A101780.P17299656055119141887

`A000027(p?[A102439(n)-1])`
-/

namespace A101780.P17299656055119141887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102439 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A101780.P17299656055119141887

namespace A101780

/-- `A000027(p?[A102439(n)-1])` -/
def P17299656055119141887.Spec : Prop :=
  ∀ n, P17299656055119141887.a n = A101780 (n + 1)

end A101780

/-! ## A101780.P8833617544040022767

`∩[A106865(n+1), A141929(n+1)]`
-/

namespace A101780.P8833617544040022767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101780.P8833617544040022767

namespace A101780

/-- `∩[A106865(n+1), A141929(n+1)]` -/
def P8833617544040022767.Spec : Prop :=
  ∀ n, (P8833617544040022767.a n : ℤ) = A101780 (n + 1)

end A101780

/-! ## A101780.P5464291219581171141

`∩[A122870(n+1), A141929(n+1)]`
-/

namespace A101780.P5464291219581171141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101780.P5464291219581171141

namespace A101780

/-- `∩[A122870(n+1), A141929(n+1)]` -/
def P5464291219581171141.Spec : Prop :=
  ∀ n, (P5464291219581171141.a n : ℤ) = A101780 (n + 1)

end A101780

/-! ## A101780.P10157558066601783861

`∩[A053027(n+1), A141929(n+1)]`
-/

namespace A101780.P10157558066601783861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101780.P10157558066601783861

namespace A101780

/-- `∩[A053027(n+1), A141929(n+1)]` -/
def P10157558066601783861.Spec : Prop :=
  ∀ n, (P10157558066601783861.a n : ℤ) = A101780 (n + 1)

end A101780

/-! ## A101780.P6514259099248360860

`∩[A141929(n+1), A385225(n+1)]`
-/

namespace A101780.P6514259099248360860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101780.P6514259099248360860

namespace A101780

/-- `∩[A141929(n+1), A385225(n+1)]` -/
def P6514259099248360860.Spec : Prop :=
  ∀ n, (P6514259099248360860.a n : ℤ) = A101780 (n + 1)

end A101780

/-! ## A101780.P2509439808453245070

`∩[A030431(n+1), A045802(n+1)]`
-/

namespace A101780.P2509439808453245070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101780.P2509439808453245070

namespace A101780

/-- `∩[A030431(n+1), A045802(n+1)]` -/
def P2509439808453245070.Spec : Prop :=
  ∀ n, (P2509439808453245070.a n : ℤ) = A101780 (n + 1)

end A101780

/-! ## A101780.P16055858612433517337

`∩[A045414(n+1), A045802(n+1)]`
-/

namespace A101780.P16055858612433517337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101780.P16055858612433517337

namespace A101780

/-- `∩[A045414(n+1), A045802(n+1)]` -/
def P16055858612433517337.Spec : Prop :=
  ∀ n, (P16055858612433517337.a n : ℤ) = A101780 (n + 1)

end A101780

/-! ## A101780.P55794429825783656

`∩[A045802(n+1), A105854(n+1)]`
-/

namespace A101780.P55794429825783656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101780.P55794429825783656

namespace A101780

/-- `∩[A045802(n+1), A105854(n+1)]` -/
def P55794429825783656.Spec : Prop :=
  ∀ n, (P55794429825783656.a n : ℤ) = A101780 (n + 1)

end A101780

/-! ## A101780.P14816530642434780150

`∩[A045802(n+1), A141929(n+1)]`
-/

namespace A101780.P14816530642434780150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101780.P14816530642434780150

namespace A101780

/-- `∩[A045802(n+1), A141929(n+1)]` -/
def P14816530642434780150.Spec : Prop :=
  ∀ n, (P14816530642434780150.a n : ℤ) = A101780 (n + 1)

end A101780

/-! ## A101780.P9670337886301938775

`∩[A030431(n+1), A045800(n+1)+2]`
-/

namespace A101780.P9670337886301938775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045800 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101780.P9670337886301938775

namespace A101780

/-- `∩[A030431(n+1), A045800(n+1)+2]` -/
def P9670337886301938775.Spec : Prop :=
  ∀ n, (P9670337886301938775.a n : ℤ) = A101780 (n + 1)

end A101780

/-! ## A101780.P4077234803241712809

`∩[A045414(n+1), A045800(n+1)+2]`
-/

namespace A101780.P4077234803241712809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045800 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101780.P4077234803241712809

namespace A101780

/-- `∩[A045414(n+1), A045800(n+1)+2]` -/
def P4077234803241712809.Spec : Prop :=
  ∀ n, (P4077234803241712809.a n : ℤ) = A101780 (n + 1)

end A101780

/-! ## A101780.P13791222009109106170

`∩[A045800(n+1)+2, A105854(n+1)]`
-/

namespace A101780.P13791222009109106170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045800 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101780.P13791222009109106170

namespace A101780

/-- `∩[A045800(n+1)+2, A105854(n+1)]` -/
def P13791222009109106170.Spec : Prop :=
  ∀ n, (P13791222009109106170.a n : ℤ) = A101780 (n + 1)

end A101780

/-! ## A101780.P17933378589166464017

`∩[A139513(n+1), A141929(n+1)]`
-/

namespace A101780.P17933378589166464017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101780.P17933378589166464017

namespace A101780

/-- `∩[A139513(n+1), A141929(n+1)]` -/
def P17933378589166464017.Spec : Prop :=
  ∀ n, (P17933378589166464017.a n : ℤ) = A101780 (n + 1)

end A101780

/-! ## A101780.P11495442187897739135

`∩[A141929(n+1), A240920(n+1)]`
-/

namespace A101780.P11495442187897739135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101780.P11495442187897739135

namespace A101780

/-- `∩[A141929(n+1), A240920(n+1)]` -/
def P11495442187897739135.Spec : Prop :=
  ∀ n, (P11495442187897739135.a n : ℤ) = A101780 (n + 1)

end A101780

/-! ## A101780.P4889935910857189718

`∩[A141929(n+1), A296922(n+1)]`
-/

namespace A101780.P4889935910857189718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101780.P4889935910857189718

namespace A101780

/-- `∩[A141929(n+1), A296922(n+1)]` -/
def P4889935910857189718.Spec : Prop :=
  ∀ n, (P4889935910857189718.a n : ℤ) = A101780 (n + 1)

end A101780

/-! ## A101780.P9104206882872683454

`∩[A002145(n+1), A141929(n+1)]`
-/

namespace A101780.P9104206882872683454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101780.P9104206882872683454

namespace A101780

/-- `∩[A002145(n+1), A141929(n+1)]` -/
def P9104206882872683454.Spec : Prop :=
  ∀ n, (P9104206882872683454.a n : ℤ) = A101780 (n + 1)

end A101780

/-! ## A101780.P13728372992079232184

`∩[A045326(n+1), A141929(n+1)]`
-/

namespace A101780.P13728372992079232184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101780.P13728372992079232184

namespace A101780

/-- `∩[A045326(n+1), A141929(n+1)]` -/
def P13728372992079232184.Spec : Prop :=
  ∀ n, (P13728372992079232184.a n : ℤ) = A101780 (n + 1)

end A101780

/-! ## A101780.P13038651262666581523

`∩[A091727(n+1), A141929(n+1)]`
-/

namespace A101780.P13038651262666581523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101780.P13038651262666581523

namespace A101780

/-- `∩[A091727(n+1), A141929(n+1)]` -/
def P13038651262666581523.Spec : Prop :=
  ∀ n, (P13038651262666581523.a n : ℤ) = A101780 (n + 1)

end A101780

/-!
# A101781: Lower bound b of twin primes pairs such that b's digital reverse is also prime.

The programs for A101781, there is no canonical definition to state claims against.
-/

/-! ## A101781.P5211038243961049887

`p?[A007500(n+1)+2]-2`
-/

namespace A101781.P5211038243961049887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A101781.P5211038243961049887

/-! ## A101781.P3328382670253661450

`∩[A001359(n+1), A007500(n+1)]`
-/

namespace A101781.P3328382670253661450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101781.P3328382670253661450

/-! ## A101781.P17031220975834145805

`∩[A001838(n+1), A007500(n+1)]`
-/

namespace A101781.P17031220975834145805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101781.P17031220975834145805

/-! ## A101781.P17853149602505315589

`∩[A007500(n+1), A054799(n+1)]`
-/

namespace A101781.P17853149602505315589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101781.P17853149602505315589

/-! ## A101781.P9047942648965051838

`∩[A007500(n+1), A063693(n+1)]`
-/

namespace A101781.P9047942648965051838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101781.P9047942648965051838

/-! ## A101781.P12791723690915865359

`∩[A007500(n+1), A063700(n+1)]`
-/

namespace A101781.P12791723690915865359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101781.P12791723690915865359

/-! ## A101781.P2814525507956721090

`∩[A007500(n+1), A181747(n+1)]`
-/

namespace A101781.P2814525507956721090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101781.P2814525507956721090

/-! ## A101781.P12936910294103300687

`∩[A007500(n+1), A280255(n+1)]`
-/

namespace A101781.P12936910294103300687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101781.P12936910294103300687

/-! ## A101781.P16030571215499872947

`∩[A007500(n+1), A280590(n+1)]`
-/

namespace A101781.P16030571215499872947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101781.P16030571215499872947

/-! ## A101781.P16686260040819299384

`∩[A006512(n+1)-2, A007500(n+1)]`
-/

namespace A101781.P16686260040819299384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101781.P16686260040819299384

/-! ## A101781.P4384848579937453419

`∩[A007500(n+1), A320391(n+1)-2]`
-/

namespace A101781.P4384848579937453419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320391 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101781.P4384848579937453419

/-! ## A101781.P9737282648285666770

`A137830(ceil(1/(n+1)))+p?[A007500(n+2)+2]`
-/

namespace A101781.P9737282648285666770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137830 ⌈1 / (n + 1 : ℚ)⌉.toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101781.P9737282648285666770

/-! ## A101781.P14997312498067279517

`A140946(gcd(n+1, n+2))+p?[A007500(n+1)+2]`
-/

namespace A101781.P14997312498067279517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140946 (Nat.gcd (n + 1) (n + 2)) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101781.P14997312498067279517

/-! ## A101781.P9374023380814778577

`A258292(A094267(4*n))+p?[A007500(n+2)+2]`
-/

namespace A101781.P9374023380814778577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258292 (A094267 (4 * n)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101781.P9374023380814778577

/-! ## A101781.P2335019841850821426

`∩[A007500(n+1), A274212(n+1)]`
-/

namespace A101781.P2335019841850821426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101781.P2335019841850821426

/-! ## A101781.P15764824480390653029

`∩[A007500(n+1), A066147(n+1)]`
-/

namespace A101781.P15764824480390653029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101781.P15764824480390653029

/-! ## A101781.P14124949174605506957

`∩[A007500(n+1), A065873(n+1)]`
-/

namespace A101781.P14124949174605506957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101781.P14124949174605506957

/-! ## A101781.P17779941143114212206

`∩[A007500(n+1), A072282(n+1)]`
-/

namespace A101781.P17779941143114212206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101781.P17779941143114212206

/-! ## A101781.P148240197150661990

`∩[A007500(n+1), A067532(n+1)]`
-/

namespace A101781.P148240197150661990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101781.P148240197150661990

/-! ## A101781.P5932239720418374226

`∩[A001359(n+1), A085869(n+1)]`
-/

namespace A101781.P5932239720418374226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101781.P5932239720418374226

/-!
# A101782: Upper bound of twin prime pairs whose digital reverse is prime.

The programs for A101782, there is no canonical definition to state claims against.
-/

/-! ## A101782.P6514279900281293087

`p?[A007500(n+1)-2]+2`
-/

namespace A101782.P6514279900281293087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A101782.P6514279900281293087

/-! ## A101782.P14133274454965816397

`∩[A006512(n+1), A007500(n+1)]`
-/

namespace A101782.P14133274454965816397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101782.P14133274454965816397

/-! ## A101782.P2589616769657548591

`∩[A001359(n+1)+2, A007500(n+1)]`
-/

namespace A101782.P2589616769657548591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101782.P2589616769657548591

/-! ## A101782.P13577841530121071550

`∩[A007500(n+1), A054799(n+1)+2]`
-/

namespace A101782.P13577841530121071550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101782.P13577841530121071550

/-! ## A101782.P153314065898024363

`∩[A007500(n+1), A063693(n+1)+2]`
-/

namespace A101782.P153314065898024363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101782.P153314065898024363

/-! ## A101782.P1893589035226030934

`∩[A007500(n+1), A280255(n+1)+2]`
-/

namespace A101782.P1893589035226030934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101782.P1893589035226030934

/-! ## A101782.P11138550072991949340

`∩[A007500(n+1), A320391(n+1)]`
-/

namespace A101782.P11138550072991949340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101782.P11138550072991949340

/-! ## A101782.P11183890892475790110

`∩[A001838(n+1)+2, A007500(n+1)]`
-/

namespace A101782.P11183890892475790110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101782.P11183890892475790110

/-! ## A101782.P16062420467025814826

`∩[A007500(n+1), A274242(n+1)]`
-/

namespace A101782.P16062420467025814826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101782.P16062420467025814826

/-! ## A101782.P9791978696061685943

`∩[A007500(n+1), A139690(n+1)]`
-/

namespace A101782.P9791978696061685943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101782.P9791978696061685943

/-! ## A101782.P11968232490287303620

`∩[A007500(n+1), A218011(n+1)]`
-/

namespace A101782.P11968232490287303620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101782.P11968232490287303620

/-! ## A101782.P10477187840107254589

`∩[A007500(n+1), A072281(n+1)]`
-/

namespace A101782.P10477187840107254589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101782.P10477187840107254589

/-! ## A101782.P11816627778137974043

`∩[A007500(n+1), A067531(n+1)]`
-/

namespace A101782.P11816627778137974043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101782.P11816627778137974043

/-! ## A101782.P1791510041638326860

`p?[p?[A085869(n+1)]-2]+2`
-/

namespace A101782.P1791510041638326860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085869 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A101782.P1791510041638326860

/-! ## A101782.P3495901361327208125

`∩[A006512(n+1), A085869(n+1)]`
-/

namespace A101782.P3495901361327208125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101782.P3495901361327208125

/-! ## A101782.P15779037848460593150

`∩[A001359(n+1)+2, A085869(n+1)]`
-/

namespace A101782.P15779037848460593150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101782.P15779037848460593150

/-! ## A101782.P15619587659959329794

`∩[A007500(n+1), A048974(n+1)]`
-/

namespace A101782.P15619587659959329794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101782.P15619587659959329794

/-! ## A101782.P17285828856004410210

`∩[A007500(n+1), A052147(n+1)]`
-/

namespace A101782.P17285828856004410210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101782.P17285828856004410210

/-! ## A101782.P7152525741073466072

`∩[A007500(n+1), A067187(n+1)]`
-/

namespace A101782.P7152525741073466072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101782.P7152525741073466072

/-! ## A101782.P12663710063223227629

`∩[A007500(n+1), A088685(n+1)]`
-/

namespace A101782.P12663710063223227629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101782.P12663710063223227629

/-!
# A101783: Lower bound twin primes such that their digital reverse is prime and a lower bound twin prime.

The programs for A101783, there is no canonical definition to state claims against.
-/

/-! ## A101783.P14182010049453703513

`∩[A001359(n+1), A333207(n+1)]`
-/

namespace A101783.P14182010049453703513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101783.P14182010049453703513

/-! ## A101783.P603944361513400448

`∩[A333207(n+1), A378983(n+1)]`
-/

namespace A101783.P603944361513400448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101783.P603944361513400448

/-! ## A101783.P7020369276079636762

`∩[A165446(n+1), A333207(n+1)]`
-/

namespace A101783.P7020369276079636762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101783.P7020369276079636762

/-! ## A101783.P17469109035552191842

`∩[A054799(n+1), A333207(n+1)]`
-/

namespace A101783.P17469109035552191842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101783.P17469109035552191842

/-! ## A101783.P7049495572733420207

`∩[A063700(n+1), A333207(n+1)]`
-/

namespace A101783.P7049495572733420207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101783.P7049495572733420207

/-! ## A101783.P10739748284671399376

`∩[A124588(n+1), A333207(n+1)]`
-/

namespace A101783.P10739748284671399376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101783.P10739748284671399376

/-! ## A101783.P1740485139871837410

`∩[A181747(n+1), A333207(n+1)]`
-/

namespace A101783.P1740485139871837410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101783.P1740485139871837410

/-! ## A101783.P14327029611513457183

`∩[A280255(n+1), A333207(n+1)]`
-/

namespace A101783.P14327029611513457183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101783.P14327029611513457183

/-! ## A101783.P7873741742872825577

`∩[A063693(n+1), A333207(n+1)]`
-/

namespace A101783.P7873741742872825577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101783.P7873741742872825577

/-! ## A101783.P5458609340665107135

`∩[A333207(n+1), A394509(n+1)]`
-/

namespace A101783.P5458609340665107135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101783.P5458609340665107135

/-! ## A101783.P1747005113913081950

`∩[A333207(n+1), A395788(n+1)]`
-/

namespace A101783.P1747005113913081950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101783.P1747005113913081950

/-! ## A101783.P3012389026814457447

`∩[A073534(n+1), A333207(n+1)]`
-/

namespace A101783.P3012389026814457447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101783.P3012389026814457447

/-! ## A101783.P7701390772629351949

`∩[A280590(n+1), A333207(n+1)]`
-/

namespace A101783.P7701390772629351949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101783.P7701390772629351949

/-! ## A101783.P12965380802849216762

`∩[A001838(n+1), A333207(n+1)]`
-/

namespace A101783.P12965380802849216762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101783.P12965380802849216762

/-! ## A101783.P5927272566822483875

`∩[A101781(n+1), A165446(n+1)]`
-/

namespace A101783.P5927272566822483875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101783.P5927272566822483875

/-! ## A101783.P5027028877012230964

`∩[A101781(n+1), A333207(n+1)]`
-/

namespace A101783.P5027028877012230964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101783.P5027028877012230964

/-! ## A101783.P11045490647268893282

`∩[A045309(n+1), A333207(n+1)]`
-/

namespace A101783.P11045490647268893282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101783.P11045490647268893282

/-! ## A101783.P4888479737716026703

`∩[A045410(n+1), A333207(n+1)]`
-/

namespace A101783.P4888479737716026703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101783.P4888479737716026703

/-! ## A101783.P8807506668946283916

`∩[A274212(n+1), A333207(n+1)]`
-/

namespace A101783.P8807506668946283916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101783.P8807506668946283916

/-! ## A101783.P8727896830001007525

`∩[A066147(n+1), A333207(n+1)]`
-/

namespace A101783.P8727896830001007525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101783.P8727896830001007525

/-!
# A101784: Primes which remain prime after omitting maximal digit.

The programs for A101784, there is no canonical definition to state claims against.
-/

/-! ## A101784.P15366507966260018892

`A101802(A062399(n+1))`
-/

namespace A101784.P15366507966260018892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101802 (A062399 (n + 1)).toNat

end

end A101784.P15366507966260018892

/-! ## A101784.P10508995062195333764

`A118759(A101802(n+1))`
-/

namespace A101784.P10508995062195333764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A101802 (n + 1)).toNat

end

end A101784.P10508995062195333764

/-! ## A101784.P13610230299916114440

`A101802(A120126(n+1))`
-/

namespace A101784.P13610230299916114440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101802 (A120126 (n + 1)).toNat

end

end A101784.P13610230299916114440

/-! ## A101784.P17410085065315174430

`A101802(A351870(n+1))`
-/

namespace A101784.P17410085065315174430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101802 (A351870 (n + 1)).toNat

end

end A101784.P17410085065315174430

/-!
# A101785: G.f. satisfies: A(x) = 1 + x*A(x)/(1 - x^2*A(x)^2).

The programs for A101785, there is no canonical definition to state claims against.
-/

/-! ## A101785.P5143872137849932246

`A212382(∑[n+3])`
-/

namespace A101785.P5143872137849932246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212382 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101785.P5143872137849932246

/-! ## A101785.P8275389600405498710

`char[A004442(n)]*A212382(A055998(n+1))`
-/

namespace A101785.P8275389600405498710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A212382 (A055998 (n + 1)).toNat

end

end A101785.P8275389600405498710

/-! ## A101785.P10288017785503999321

`char[A062828(n+2)-2]*A212382(A055998(n+1))`
-/

namespace A101785.P10288017785503999321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062828 (n + 2) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A212382 (A055998 (n + 1)).toNat

end

end A101785.P10288017785503999321

/-! ## A101785.P16880704313792923132

`A212382(A055998(n+1))^A048766(A048766(n))`
-/

namespace A101785.P16880704313792923132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212382 (A055998 (n + 1)).toNat : ℚ) ^ (A048766 (A048766 n).toNat : ℤ)

end

end A101785.P16880704313792923132

/-! ## A101785.P18391838866880139148

`A001221(A106535(n+1))*A212382(A055998(n+1))`
-/

namespace A101785.P18391838866880139148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A106535 (n + 1)).toNat * A212382 (A055998 (n + 1)).toNat

end

end A101785.P18391838866880139148

/-! ## A101785.P2613638210449824834

`A001222(A020482(n+2))*A212382(A055998(n+1))`
-/

namespace A101785.P2613638210449824834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A020482 (n + 2)).toNat * A212382 (A055998 (n + 1)).toNat

end

end A101785.P2613638210449824834

/-!
# A101786: G.f. satisfies: A(x) = 1 + x*A(x)/(1 - 2*x^2*A(x)^2).

The programs for A101786, there is no canonical definition to state claims against.
-/

/-! ## A101786.P15264401752735279974

`A022553(n)+A007949(A128086(n))`
-/

namespace A101786.P15264401752735279974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022553 n + A007949 (A128086 n).toNat

end

end A101786.P15264401752735279974

/-! ## A101786.P16711936643637547359

`A024417(∑[abs(ceil((-2)^(n-2)))²])`
-/

namespace A101786.P16711936643637547359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉| ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A101786.P16711936643637547359

/-! ## A101786.P16519500732089864421

`A001462(A007823(n))-n`
-/

namespace A101786.P16519500732089864421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A007823 n).toNat - (n : ℤ)

end

end A101786.P16519500732089864421

/-! ## A101786.P18158950432868620905

`round(A248609(A000108(n))/3)`
-/

namespace A101786.P18158950432868620905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A248609 (A000108 n).toNat : ℚ) / 3)

end

end A101786.P18158950432868620905

/-!
# A101787: a(n) = |S(n)| where S(n) = {i : 1 <= i <= n and 4*i-1 and 8*i-1 are primes}.

The programs for A101787, there is no canonical definition to state claims against.
-/

/-! ## A101787.P6144073649764439540

`∑[char[A244087(n+1)]]`
-/

namespace A101787.P6144073649764439540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244087 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101787.P6144073649764439540

/-! ## A101787.P4742579870274077960

`∑[A156660(record[xor(3, n)])]`
-/

namespace A101787.P4742579870274077960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156660 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101787.P4742579870274077960

/-! ## A101787.P13335676008202360966

`∑[A156660(4*n+3)]`
-/

namespace A101787.P13335676008202360966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156660 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101787.P13335676008202360966

/-! ## A101787.P8016673033936712950

`∑[C(A056562(4*n+2), 2)]`
-/

namespace A101787.P8016673033936712950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A056562 (4 * n + 2)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101787.P8016673033936712950

/-! ## A101787.P1780307181156068858

`∑[A156659(A004771(n))]`
-/

namespace A101787.P1780307181156068858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156659 (A004771 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101787.P1780307181156068858

/-! ## A101787.P3646775640004167202

`∑[A156659(record[A004448(n)])]`
-/

namespace A101787.P3646775640004167202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004448 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156659 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101787.P3646775640004167202

/-! ## A101787.P2358494407021538128

`∑[char[A002265(A002515(n+1))]]`
-/

namespace A101787.P2358494407021538128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A002515 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101787.P2358494407021538128

/-! ## A101787.P4540346794682981363

`∑[A064911(A000010(8*n+7))]`
-/

namespace A101787.P4540346794682981363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A000010 (8 * n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101787.P4540346794682981363

/-! ## A101787.P12352806086912808718

`∑[A101264(A094897(n))]`
-/

namespace A101787.P12352806086912808718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A094897 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101787.P12352806086912808718

/-!
# A101788: a(n) = n - A101787(n).

The programs for A101788, there is no canonical definition to state claims against.
-/

/-! ## A101788.P17385504345156813959

`n+1-A101787(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101788.P17385504345156813959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A101787 (n + 1)

end

end A101788.P17385504345156813959

/-! ## A101788.P15246499446626037903

`∑[char[comp[A244087(n+1)]]]`
-/

namespace A101788.P15246499446626037903
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244087 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101788.P15246499446626037903

/-! ## A101788.P9388906750054487410

`∑[1-A156660(record[xor(3, n)])]`
-/

namespace A101788.P9388906750054487410
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A156660 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101788.P9388906750054487410

/-! ## A101788.P6241034717740179608

`∑[1-A156660(4*n+3)]`
-/

namespace A101788.P6241034717740179608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A156660 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101788.P6241034717740179608

/-! ## A101788.P16094121624835914607

`1-(A101787(Δ[n²]-n)-n)`
-/

namespace A101788.P16094121624835914607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A101787 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - (n : ℤ))

end

end A101788.P16094121624835914607

/-! ## A101788.P15443896674650763860

`∑[1-A156659(A004771(n))]`
-/

namespace A101788.P15443896674650763860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A156659 (A004771 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101788.P15443896674650763860

/-! ## A101788.P447705243239006225

`∑[1-A101264(A094897(n))]`
-/

namespace A101788.P447705243239006225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A101264 (A094897 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101788.P447705243239006225

/-! ## A101788.P6524140371712757869

`∑[1-A156659(record[A004448(n)])]`
-/

namespace A101788.P6524140371712757869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004448 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A156659 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101788.P6524140371712757869

/-! ## A101788.P13398988939710475846

`∑[1-char[A244087(A007318(n))]]`
-/

namespace A101788.P13398988939710475846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244087 (A007318 n).toNat

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101788.P13398988939710475846

/-! ## A101788.P7337818470386704364

`∑[1-A064911(A000010(8*n+7))]`
-/

namespace A101788.P7337818470386704364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A064911 (A000010 (8 * n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101788.P7337818470386704364

/-!
# A101789: Safe primes of the form 8*k-1: primes of the form 8*k-1 such that 4*k-1 is also a prime.

The programs for A101789, there is no canonical definition to state claims against.
-/

/-! ## A101789.P3734294623909384897

`2*A002515(n+1)+1`
-/

namespace A101789.P3734294623909384897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002515 (n + 1) + 1

end

end A101789.P3734294623909384897

/-! ## A101789.P12667557627734072164

`record[2*A137332(n+2)]+1`
-/

namespace A101789.P12667557627734072164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137332 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A101789.P12667557627734072164

/-! ## A101789.P7182384609336909076

`∩[A005385(n+1), A122094(n+1)]`
-/

namespace A101789.P7182384609336909076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101789.P7182384609336909076

/-! ## A101789.P5818220796770124864

`∩[A090865(n+1), A122094(n+1)]`
-/

namespace A101789.P5818220796770124864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101789.P5818220796770124864

/-! ## A101789.P10920809321564009133

`∩[A065966(n+1), A122094(n+1)]`
-/

namespace A101789.P10920809321564009133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101789.P10920809321564009133

/-! ## A101789.P4712810326933020448

`p?[or(4, A005385(n+2))]`
-/

namespace A101789.P4712810326933020448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A005385 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101789.P4712810326933020448

/-! ## A101789.P15281209006071786307

`∩[A005385(n+1), A139035(n+1)]`
-/

namespace A101789.P15281209006071786307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101789.P15281209006071786307

/-! ## A101789.P8776341531917302659

`∩[A058500(n+1), A139035(n+1)]`
-/

namespace A101789.P8776341531917302659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101789.P8776341531917302659

/-! ## A101789.P9006493233266121346

`∩[A065966(n+1), A139035(n+1)]`
-/

namespace A101789.P9006493233266121346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101789.P9006493233266121346

/-! ## A101789.P7839460700601547423

`∩[A079148(n+1), A139035(n+1)]`
-/

namespace A101789.P7839460700601547423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101789.P7839460700601547423

/-! ## A101789.P14913984808144800124

`2*p?[A186302(n+1)]+1`
-/

namespace A101789.P14913984808144800124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A101789.P14913984808144800124

/-! ## A101789.P9950569188459624078

`∩[A005385(n+1), A007522(n+1)]`
-/

namespace A101789.P9950569188459624078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101789.P9950569188459624078

/-! ## A101789.P16025791312772235521

`∩[A005385(n+1), A045382(n+1)]`
-/

namespace A101789.P16025791312772235521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101789.P16025791312772235521

/-! ## A101789.P7568808200387242836

`∩[A007522(n+1), A058500(n+1)]`
-/

namespace A101789.P7568808200387242836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101789.P7568808200387242836

/-! ## A101789.P15163793883535464146

`∩[A007522(n+1), A065966(n+1)]`
-/

namespace A101789.P15163793883535464146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101789.P15163793883535464146

/-! ## A101789.P7670364931635501649

`∩[A007522(n+1), A074781(n+1)]`
-/

namespace A101789.P7670364931635501649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101789.P7670364931635501649

/-! ## A101789.P9292195076756163967

`∩[A007522(n+1), A079148(n+1)]`
-/

namespace A101789.P9292195076756163967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101789.P9292195076756163967

/-! ## A101789.P5279494627214650176

`∩[A007522(n+1), A079149(n+1)]`
-/

namespace A101789.P5279494627214650176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101789.P5279494627214650176

/-! ## A101789.P13799364337491133858

`∩[A007522(n+1), A090865(n+1)]`
-/

namespace A101789.P13799364337491133858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101789.P13799364337491133858

/-! ## A101789.P6217291746984052711

`∩[A045382(n+1), A058500(n+1)]`
-/

namespace A101789.P6217291746984052711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101789.P6217291746984052711

/-!
# A101790: Numbers k such that 4*k-1, 8*k-1 and 16*k-1 are all primes.

The programs for A101790, there is no canonical definition to state claims against.
-/

/-! ## A101790.P14517028643003845388

`ceil(A101791(n+1)/4)`
-/

namespace A101790.P14517028643003845388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A101791 (n + 1) : ℚ) / 4⌉

end

end A101790.P14517028643003845388

/-! ## A101790.P15640190982576838916

`A101791(n+1)/4+A033999(n)²/4`
-/

namespace A101790.P15640190982576838916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101791 (n + 1) : ℚ) / 4 + (A033999 n ^ 2 : ℚ) / 4

end

end A101790.P15640190982576838916

/-! ## A101790.P3421136973012863556

`round(A101791(n+1)/4*A001221(A023509(n+1)))`
-/

namespace A101790.P3421136973012863556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A101791 (n + 1) : ℚ) / 4 * (A001221 (A023509 (n + 1)).toNat : ℚ))

end

end A101790.P3421136973012863556

/-! ## A101790.P10253743023768266203

`floor(A316789(4*n+2)+A101791(n+1)/4)`
-/

namespace A101790.P10253743023768266203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A316789 (4 * n + 2) : ℚ) + (A101791 (n + 1) : ℚ) / 4⌋

end

end A101790.P10253743023768266203

/-! ## A101790.P2891916491185652714

`round(A101791(n+1)/A278254(A023592(n+1)))`
-/

namespace A101790.P2891916491185652714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A101791 (n + 1) : ℚ) / (A278254 (A023592 (n + 1)).toNat : ℚ))

end

end A101790.P2891916491185652714

/-! ## A101790.P11926817166005746150

`A014682((A101791(n+1)+1)/2)`
-/

namespace A101790.P11926817166005746150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A101791 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A101790.P11926817166005746150

/-! ## A101790.P6948907364231383050

`A103391(A101791(n+1)-4)`
-/

namespace A101790.P6948907364231383050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A101791 (n + 1) - 4).toNat

end

end A101790.P6948907364231383050

/-! ## A101790.P2739562679800453449

`∑{d}[A101791(n+1), A318317(#)/2]`
-/

namespace A101790.P2739562679800453449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101791 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A318317 d : ℚ) / 2

end

end A101790.P2739562679800453449

/-! ## A101790.P17452219136883896100

`A014682(∑{d}[A101791(n+1), A318317(#)])`
-/

namespace A101790.P17452219136883896100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ d ∈ Nat.divisors (f1 n).natAbs, A318317 d).toNat

end

end A101790.P17452219136883896100

/-! ## A101790.P331332259964117003

`A103391(∑{d}[A101791(n+1), A297381(#)])`
-/

namespace A101790.P331332259964117003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (∑ d ∈ Nat.divisors (f1 n).natAbs, A297381 d).toNat

end

end A101790.P331332259964117003

/-!
# A101791: Primes of the form 4*k-1 such that 8*k-1 and 16*k-1 are also primes.

The programs for A101791, there is no canonical definition to state claims against.
-/

/-! ## A101791.P11499947189446248896

`4*A101790(n+1)-1`
-/

namespace A101791.P11499947189446248896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A101790 (n + 1) - 1

end

end A101791.P11499947189446248896

/-! ## A101791.P8311239293399821296

`(A101792(n+1)-1)/2`
-/

namespace A101791.P8311239293399821296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101792 (n + 1) - 1 : ℚ) / 2

end

end A101791.P8311239293399821296

/-! ## A101791.P18359452529403593766

`(A101793(n+1)-3)/4`
-/

namespace A101791.P18359452529403593766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101793 (n + 1) - 3 : ℚ) / 4

end

end A101791.P18359452529403593766

/-! ## A101791.P16412926692551589544

`A001489(A007318(C(2, n)))+4*A101790(n+1)`
-/

namespace A101791.P16412926692551589544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A007318 (Nat.choose 2 n)).toNat + 4 * A101790 (n + 1)

end

end A101791.P16412926692551589544

/-! ## A101791.P4436703964521042538

`A008683(A002144(n+1))+4*A101790(n+1)`
-/

namespace A101791.P4436703964521042538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002144 (n + 1)).toNat + 4 * A101790 (n + 1)

end

end A101791.P4436703964521042538

/-! ## A101791.P6485271956077061352

`∩[A002515(n+1), A007700(n+1)]`
-/

namespace A101791.P6485271956077061352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101791.P6485271956077061352

/-! ## A101791.P17565482883275146495

`A008683(record[A014963(n+2)])+4*A101790(n+1)`
-/

namespace A101791.P17565482883275146495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 4 * A101790 (n + 1)

end

end A101791.P17565482883275146495

/-! ## A101791.P9345643721512405085

`A008683(A001359(n+1))+4*A101790(n+1)`
-/

namespace A101791.P9345643721512405085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001359 (n + 1)).toNat + 4 * A101790 (n + 1)

end

end A101791.P9345643721512405085

/-! ## A101791.P13873571953636335485

`A008683(A001097(2*n+1))+4*A101790(n+1)`
-/

namespace A101791.P13873571953636335485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001097 (2 * n + 1)).toNat + 4 * A101790 (n + 1)

end

end A101791.P13873571953636335485

/-! ## A101791.P1648471134017047749

`∩[A007700(n+1), A141302(n+1)]`
-/

namespace A101791.P1648471134017047749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101791.P1648471134017047749

/-! ## A101791.P12336882477097902608

`∩[A002515(n+1), A075521(n+1)]`
-/

namespace A101791.P12336882477097902608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101791.P12336882477097902608

/-! ## A101791.P11252394380529718354

`∩[A005384(n+1), A075521(n+1)]`
-/

namespace A101791.P11252394380529718354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101791.P11252394380529718354

/-! ## A101791.P12568393141689718747

`∩[A007700(n+1), A075521(n+1)]`
-/

namespace A101791.P12568393141689718747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101791.P12568393141689718747

/-! ## A101791.P17181262691350148375

`∩[A075521(n+1), A246857(n+1)]`
-/

namespace A101791.P17181262691350148375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101791.P17181262691350148375

/-! ## A101791.P16546294457977906670

`∩[A075521(n+1), A348511(n+1)]`
-/

namespace A101791.P16546294457977906670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101791.P16546294457977906670

/-! ## A101791.P4731809505978765714

`∩[A075521(n+1), A364926(n+1)]`
-/

namespace A101791.P4731809505978765714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101791.P4731809505978765714

/-! ## A101791.P5397082756077520026

`∩[A075521(n+1), A374914(n+1)]`
-/

namespace A101791.P5397082756077520026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101791.P5397082756077520026

/-! ## A101791.P10663558175288369897

`∩[A002515(n+1), A023213(n+1)]`
-/

namespace A101791.P10663558175288369897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101791.P10663558175288369897

/-! ## A101791.P9030960802684851312

`∩[A007700(n+1), A068231(n+1)]`
-/

namespace A101791.P9030960802684851312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101791.P9030960802684851312

/-! ## A101791.P1550662936269607172

`∩[A007700(n+1), A122869(n+1)]`
-/

namespace A101791.P1550662936269607172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101791.P1550662936269607172

/-!
# A101792: Primes of the form 8*k-1 such that 4*k-1 and 16*k-1 are also primes.

The programs for A101792, there is no canonical definition to state claims against.
-/

/-! ## A101792.P11508836566015310953

`2*A101791(n+1)+1`
-/

namespace A101792.P11508836566015310953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101791 (n + 1) + 1

end

end A101792.P11508836566015310953

/-! ## A101792.P16080792168108244080

`8*A101790(n+1)-1`
-/

namespace A101792.P16080792168108244080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A101790 (n + 1) - 1

end

end A101792.P16080792168108244080

/-! ## A101792.P11497275954670282264

`(A101793(n+1)-1)/2`
-/

namespace A101792.P11497275954670282264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101793 (n + 1) - 1 : ℚ) / 2

end

end A101792.P11497275954670282264

/-! ## A101792.P15991037591160225216

`∩[A005384(n+1), A101789(n+1)]`
-/

namespace A101792.P15991037591160225216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101792.P15991037591160225216

/-! ## A101792.P613086175981074079

`∩[A059455(n+1), A101789(n+1)]`
-/

namespace A101792.P613086175981074079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101792.P613086175981074079

/-! ## A101792.P3663706600234272115

`∩[A059455(n+1), A122094(n+1)]`
-/

namespace A101792.P3663706600234272115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101792.P3663706600234272115

/-! ## A101792.P2387411885950429842

`∩[A002515(n+1), A101789(n+1)]`
-/

namespace A101792.P2387411885950429842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101792.P2387411885950429842

/-! ## A101792.P15467101397382095343

`∩[A101789(n+1), A374914(n+1)]`
-/

namespace A101792.P15467101397382095343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101792.P15467101397382095343

/-! ## A101792.P15413197135713283376

`∩[A059455(n+1), A395931(n+1)]`
-/

namespace A101792.P15413197135713283376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101792.P15413197135713283376

/-! ## A101792.P18163885219637161591

`∩[A101789(n+1), A348511(n+1)]`
-/

namespace A101792.P18163885219637161591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101792.P18163885219637161591

/-! ## A101792.P11638668378117839654

`∩[A101789(n+1), A364926(n+1)]`
-/

namespace A101792.P11638668378117839654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101792.P11638668378117839654

/-! ## A101792.P8471572301240292324

`∩[A101789(n+1), A246857(n+1)]`
-/

namespace A101792.P8471572301240292324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101792.P8471572301240292324

/-! ## A101792.P14713817198320509370

`∩[A101789(n+1), A372113(n+1)]`
-/

namespace A101792.P14713817198320509370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101792.P14713817198320509370

/-! ## A101792.P16742983369782642035

`∩[A122094(n+1), A372113(n+1)]`
-/

namespace A101792.P16742983369782642035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101792.P16742983369782642035

/-! ## A101792.P8874533877654046984

`∩[A372113(n+1), A395931(n+1)]`
-/

namespace A101792.P8874533877654046984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101792.P8874533877654046984

/-! ## A101792.P12901004531849555983

`∩[A059455(n+1), A392845(n+1)]`
-/

namespace A101792.P12901004531849555983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101792.P12901004531849555983

/-! ## A101792.P8058820460803058358

`∩[A059455(n+1), A134517(n+1)]`
-/

namespace A101792.P8058820460803058358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101792.P8058820460803058358

/-! ## A101792.P5058538144303940830

`∩[A134517(n+1), A372113(n+1)]`
-/

namespace A101792.P5058538144303940830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101792.P5058538144303940830

/-! ## A101792.P18195731044587107074

`p?[or(4, A059455(n+2))]`
-/

namespace A101792.P18195731044587107074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A059455 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101792.P18195731044587107074

/-! ## A101792.P15324816814883161880

`∩[A059455(n+1), A139035(n+1)]`
-/

namespace A101792.P15324816814883161880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101792.P15324816814883161880

/-!
# A101793: Primes of the form 16*k-1 such that 4*k-1 and 8*k-1 are also primes.

The programs for A101793, there is no canonical definition to state claims against.
-/

/-! ## A101793.P2537505020066897062

`2*A101792(n+1)+1`
-/

namespace A101793.P2537505020066897062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101792 (n + 1) + 1

end

end A101793.P2537505020066897062

/-! ## A101793.P11071679579962880242

`4*A101791(n+1)+3`
-/

namespace A101793.P11071679579962880242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A101791 (n + 1) + 3

end

end A101793.P11071679579962880242

/-! ## A101793.P14816363394458598590

`16*A101790(n+1)-1`
-/

namespace A101793.P14816363394458598590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A101790 (n + 1) - 1

end

end A101793.P14816363394458598590

/-! ## A101793.P13739877570460599320

`∩[A066179(n+1), A349678(n+1)]`
-/

namespace A101793.P13739877570460599320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101793.P13739877570460599320

/-! ## A101793.P5097151087588518962

`∩[A066179(n+1), A142413(n+1)]`
-/

namespace A101793.P5097151087588518962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101793.P5097151087588518962

/-! ## A101793.P5158013581966282867

`∩[A066179(n+1), A127576(n+1)]`
-/

namespace A101793.P5158013581966282867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101793.P5158013581966282867

/-! ## A101793.P3234168580623266191

`p?[2*A101789(n+1)+1]`
-/

namespace A101793.P3234168580623266191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101789 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101793.P3234168580623266191

/-! ## A101793.P8438650397819683828

`p?[2*A158035(n+1)+1]`
-/

namespace A101793.P8438650397819683828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158035 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101793.P8438650397819683828

/-! ## A101793.P3926308984286220158

`∩[A005385(n+1), A075520(n+1)]`
-/

namespace A101793.P3926308984286220158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101793.P3926308984286220158

/-! ## A101793.P4804715745708950386

`∩[A048184(n+1), A075520(n+1)]`
-/

namespace A101793.P4804715745708950386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101793.P4804715745708950386

/-!
# A101794: Numbers k such that 4*k-1, 8*k-1, 16*k-1 and 32*k-1 are all primes.

The programs for A101794, there is no canonical definition to state claims against.
-/

/-! ## A101794.P10117829970948783876

`ceil(A101795(n+1)/4)`
-/

namespace A101794.P10117829970948783876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A101795 (n + 1) : ℚ) / 4⌉

end

end A101794.P10117829970948783876

/-! ## A101794.P288162708877863355

`ceil(A101797(n+1)/16)`
-/

namespace A101794.P288162708877863355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A101797 (n + 1) : ℚ) / 16⌉

end

end A101794.P288162708877863355

/-! ## A101794.P4738086099055851184

`round(A101795(n+1)²/A101797(n+1))`
-/

namespace A101794.P4738086099055851184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A101795 (n + 1) ^ 2 : ℚ) / (A101797 (n + 1) : ℚ))

end

end A101794.P4738086099055851184

/-! ## A101794.P7146148009026233714

`floor(A000188(∏{p}[n+1, #])+A101795(n+1)/4)`
-/

namespace A101794.P7146148009026233714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000188 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) + (A101795 (n + 1) : ℚ) / 4⌋

end

end A101794.P7146148009026233714

/-! ## A101794.P2042688077587132565

`(A101795(n+1)+A000035(2*n+1))/4`
-/

namespace A101794.P2042688077587132565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101795 (n + 1) + A000035 (2 * n + 1) : ℚ) / 4

end

end A101794.P2042688077587132565

/-! ## A101794.P17844130408768543165

`floor(A286852(A000040(n+1))+A101795(n+1)/4)`
-/

namespace A101794.P17844130408768543165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A286852 (A000040 (n + 1)).toNat : ℚ) + (A101795 (n + 1) : ℚ) / 4⌋

end

end A101794.P17844130408768543165

/-! ## A101794.P15535999498443058579

`floor(A101795(n+1)/4)+A007318(A000096(n))`
-/

namespace A101794.P15535999498443058579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101795 (n + 1) : ℚ) / 4⌋ + A007318 (A000096 n).toNat

end

end A101794.P15535999498443058579

/-!
# A101795: Primes of the form 4*k-1 such that 8*k-1, 16*k-1 and 32*k-1 are also primes.

The programs for A101795, there is no canonical definition to state claims against.
-/

/-! ## A101795.P13281660459863715231

`4*A101794(n+1)-1`
-/

namespace A101795.P13281660459863715231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A101794 (n + 1) - 1

end

end A101795.P13281660459863715231

/-! ## A101795.P5060549084610017692

`floor(A101797(n+1)/4)`
-/

namespace A101795.P5060549084610017692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101797 (n + 1) : ℚ) / 4⌋

end

end A101795.P5060549084610017692

/-! ## A101795.P15360044321245571389

`(A101796(n+1)-1)/2`
-/

namespace A101795.P15360044321245571389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101796 (n + 1) - 1 : ℚ) / 2

end

end A101795.P15360044321245571389

/-! ## A101795.P14039570140335767240

`floor((A118438(ceil(1/(n+1)))+16*A101794(n+1))/4)`
-/

namespace A101795.P14039570140335767240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A118438 ⌈1 / (n + 1 : ℚ)⌉.toNat + 16 * A101794 (n + 1) : ℚ) / 4⌋

end

end A101795.P14039570140335767240

/-! ## A101795.P13246032485184403975

`A033999(2*n+1)+4*A101794(n+1)`
-/

namespace A101795.P13246032485184403975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + 4 * A101794 (n + 1)

end

end A101795.P13246032485184403975

/-! ## A101795.P2089136813023988372

`floor((A008683(A007519(n+1))+16*A101794(n+1))/4)`
-/

namespace A101795.P2089136813023988372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008683 (A007519 (n + 1)).toNat + 16 * A101794 (n + 1) : ℚ) / 4⌋

end

end A101795.P2089136813023988372

/-! ## A101795.P17149052890753081085

`∩[A023272(n+1), A101791(n+1)]`
-/

namespace A101795.P17149052890753081085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101795.P17149052890753081085

/-! ## A101795.P13094736981248285558

`∩[A002515(n+1), A023272(n+1)]`
-/

namespace A101795.P13094736981248285558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101795.P13094736981248285558

/-! ## A101795.P2400599299059833140

`∩[A023272(n+1), A142799(n+1)]`
-/

namespace A101795.P2400599299059833140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101795.P2400599299059833140

/-! ## A101795.P1396411699354231169

`∩[A023231(n+1), A101791(n+1)]`
-/

namespace A101795.P1396411699354231169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101795.P1396411699354231169

/-!
# A101796: Primes of the form 8*k-1 such that 4*k-1, 16*k-1 and 32*k-1 are also primes.

The programs for A101796, there is no canonical definition to state claims against.
-/

/-! ## A101796.P3000239937990097537

`2*A101795(n+1)+1`
-/

namespace A101796.P3000239937990097537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101795 (n + 1) + 1

end

end A101796.P3000239937990097537

/-! ## A101796.P5223574031237756835

`8*A101794(n+1)-1`
-/

namespace A101796.P5223574031237756835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A101794 (n + 1) - 1

end

end A101796.P5223574031237756835

/-! ## A101796.P3049940685655026790

`floor(A101797(n+1)/2)`
-/

namespace A101796.P3049940685655026790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101797 (n + 1) : ℚ) / 2⌋

end

end A101796.P3049940685655026790

/-! ## A101796.P9356175160277746545

`floor(A101798(n+1)/4)`
-/

namespace A101796.P9356175160277746545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101798 (n + 1) : ℚ) / 4⌋

end

end A101796.P9356175160277746545

/-! ## A101796.P3598568003378790063

`∩[A101791(n+1), A101792(n+1)]`
-/

namespace A101796.P3598568003378790063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101796.P3598568003378790063

/-! ## A101796.P2059309937468795953

`∩[A007700(n+1), A101792(n+1)]`
-/

namespace A101796.P2059309937468795953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101796.P2059309937468795953

/-! ## A101796.P2327484336997187985

`∩[A007700(n+1), A101789(n+1)]`
-/

namespace A101796.P2327484336997187985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101796.P2327484336997187985

/-! ## A101796.P189015026012166252

`∩[A101789(n+1), A101791(n+1)]`
-/

namespace A101796.P189015026012166252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101796.P189015026012166252

/-!
# A101797: Primes of the form 16*k-1 such that 4*k-1, 8*k-1 and 32*k-1 are also primes.

The programs for A101797, there is no canonical definition to state claims against.
-/

/-! ## A101797.P2345040769321165361

`2*A101796(n+1)+1`
-/

namespace A101797.P2345040769321165361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101796 (n + 1) + 1

end

end A101797.P2345040769321165361

/-! ## A101797.P10178767344945057040

`4*A101795(n+1)+3`
-/

namespace A101797.P10178767344945057040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A101795 (n + 1) + 3

end

end A101797.P10178767344945057040

/-! ## A101797.P5703514859896710689

`16*A101794(n+1)-1`
-/

namespace A101797.P5703514859896710689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A101794 (n + 1) - 1

end

end A101797.P5703514859896710689

/-! ## A101797.P4031718866406756091

`floor(A101798(n+1)/2)`
-/

namespace A101797.P4031718866406756091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101798 (n + 1) : ℚ) / 2⌋

end

end A101797.P4031718866406756091

/-! ## A101797.P2765126410634002251

`ratio[A009001(2*n)]+16*A101794(n+1)`
-/

namespace A101797.P2765126410634002251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) + (16 * A101794 (n + 1) : ℚ)

end

end A101797.P2765126410634002251

/-! ## A101797.P5063401595285014381

`A118438(ceil(1/(n+1)))+16*A101794(n+1)`
-/

namespace A101797.P5063401595285014381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118438 ⌈1 / (n + 1 : ℚ)⌉.toNat + 16 * A101794 (n + 1)

end

end A101797.P5063401595285014381

/-! ## A101797.P3346094904034318396

`A008683(A007519(n+1))+16*A101794(n+1)`
-/

namespace A101797.P3346094904034318396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007519 (n + 1)).toNat + 16 * A101794 (n + 1)

end

end A101797.P3346094904034318396

/-! ## A101797.P3448861552110008832

`∩[A101792(n+1), A101793(n+1)]`
-/

namespace A101797.P3448861552110008832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101797.P3448861552110008832

/-! ## A101797.P6788138422919524453

`∩[A059455(n+1), A101793(n+1)]`
-/

namespace A101797.P6788138422919524453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101797.P6788138422919524453

/-! ## A101797.P3115341366153409501

`A008683(A002385(n+1))+16*A101794(n+1)`
-/

namespace A101797.P3115341366153409501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002385 (n + 1)).toNat + 16 * A101794 (n + 1)

end

end A101797.P3115341366153409501

/-!
# A101798: Primes of the form 32*k-1 such that 4*k-1, 8*k-1 and 16*k-1 are also primes.

The programs for A101798, there is no canonical definition to state claims against.
-/

/-! ## A101798.P9965908500322054020

`2*A101797(n+1)+1`
-/

namespace A101798.P9965908500322054020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101797 (n + 1) + 1

end

end A101798.P9965908500322054020

/-! ## A101798.P12005862326196283874

`4*A101796(n+1)+3`
-/

namespace A101798.P12005862326196283874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A101796 (n + 1) + 3

end

end A101798.P12005862326196283874

/-! ## A101798.P10037346582765393679

`8*A101795(n+1)+7`
-/

namespace A101798.P10037346582765393679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A101795 (n + 1) + 7

end

end A101798.P10037346582765393679

/-! ## A101798.P17790601100796937661

`32*A101794(n+1)-1`
-/

namespace A101798.P17790601100796937661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A101794 (n + 1) - 1

end

end A101798.P17790601100796937661

/-! ## A101798.P10238989740382894639

`or(1, 2*A101797(A005408(n)-n))`
-/

namespace A101798.P10238989740382894639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A101797 (A005408 n - (n : ℤ)).toNat)

end

end A101798.P10238989740382894639

/-!
# A101799: a(n)= det[A000522(i+j+1)], i,j=0...n, is the Hankel determinant of order n+1 of the arrangements numbers, s. A000522; a(n) = product( (p!)^2,p=0..n )*(n+1)!*LaguerreL(n+1,0,-1), n=0,1..., where LaguerreL(n,lambda,x) are generalized Laguerre polynomials; a(n)=A055209(n)*A002720(n+1);.

The programs for A101799, the canonical program `A101799.P18286270317429535391` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101799 has offset 0).

The definition of A101799 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101799.P18286270317429535391

`A055209(n)*A002720(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A101799

/-- `A055209(n)*A002720(n+1)` -/
def P18286270317429535391.Spec : Prop :=
  ∀ n, P18286270317429535391.a n = A101799 n

theorem P18286270317429535391.correct : P18286270317429535391.Spec := by
  intro n
  simp only [A101799]

end A101799

