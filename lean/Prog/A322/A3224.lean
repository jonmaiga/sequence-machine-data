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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A322400: Heinz numbers of integer partitions with vertex-connectivity 1.

The programs for A322400, there is no canonical definition to state claims against.
-/

/-! ## A322400.P7457632046506779064

`∪[A181782(A155212(2*(n+2))), A322553(n+2)]`
-/

namespace A322400.P7457632046506779064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181782 (A155212 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322553 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322400.P7457632046506779064

/-! ## A322400.P8472218095140039127

`A322553(n+2)%A108631(n+1)`
-/

namespace A322400.P8472218095140039127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322553 (n + 2)) (A108631 (n + 1))

end

end A322400.P8472218095140039127

/-! ## A322400.P16154755642789292983

`A322553(ceil(atan(A172015(n+4)+3)+n))`
-/

namespace A322400.P16154755642789292983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322553 ⌈Real.arctan (A172015 (n + 4) + 3 : ℝ) + (n : ℝ)⌉.toNat

end

end A322400.P16154755642789292983

/-! ## A322400.P6685344937751029155

`A057427(∑[A054728(n)])*A322553(n+2)`
-/

namespace A322400.P6685344937751029155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A322553 (n + 2)

end

end A322400.P6685344937751029155

/-! ## A322400.P6008366982326542090

`A322553(n+2)+A010893(A014963(n+2))`
-/

namespace A322400.P6008366982326542090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322553 (n + 2) + A010893 ((A014963 (n + 2)).toNat + 13)

end

end A322400.P6008366982326542090

/-! ## A322400.P18436039502603920805

`A001222(A107812(n+9))*A322553(n+2)`
-/

namespace A322400.P18436039502603920805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A107812 (n + 9)).toNat * A322553 (n + 2)

end

end A322400.P18436039502603920805

/-! ## A322400.P2565976429657257617

`A057427(∑[A005235(n+1)])*A322553(n+2)`
-/

namespace A322400.P2565976429657257617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A322553 (n + 2)

end

end A322400.P2565976429657257617

/-! ## A322400.P4722716636273539241

`A057427(∑[A017089(n)])*A322553(n+2)`
-/

namespace A322400.P4722716636273539241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A322553 (n + 2)

end

end A322400.P4722716636273539241

/-!
# A322401: Number of strict integer partitions of n with edge-connectivity 1.

The programs for A322401, there is no canonical definition to state claims against.
-/

/-! ## A322401.P10963155148333905340

`A105224(A105602(n+1))%record[A084193(n)]`
-/

namespace A322401.P10963155148333905340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105224 (A105602 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A322401.P10963155148333905340

/-! ## A322401.P1293935878440829494

`A105224(A105602(n+1))-A000007(A101137(n+1))`
-/

namespace A322401.P1293935878440829494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A105602 (n + 1)).toNat - A000007 (A101137 (n + 1)).toNat

end

end A322401.P1293935878440829494

/-! ## A322401.P1288251207846959437

`A023518(A319708(n+1))`
-/

namespace A322401.P1288251207846959437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023518 (A319708 (n + 1)).toNat

end

end A322401.P1288251207846959437

/-! ## A322401.P9633516814958733527

`gcd(comp[A000085(n+2)], A056817(2*n))`
-/

namespace A322401.P9633516814958733527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A056817 (2 * n))

end

end A322401.P9633516814958733527

/-! ## A322401.P10087841233607650143

`A256384(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)%A113462(n+1)`
-/

namespace A322401.P10087841233607650143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256384 (SequenceMachineLib.roundAway (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ))).toNat) (A113462 (n + 1))

end

end A322401.P10087841233607650143

/-!
# A322402: Triangle read by rows: The number of chord diagrams with n chords and k topologically connected components, 0 <= k <= n.

The programs for A322402, there is no canonical definition to state claims against.
-/

/-! ## A322402.P5994588646936585299

`A055572(A008550(n)*A094385(n))`
-/

namespace A322402.P5994588646936585299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (A008550 n * A094385 n).toNat

end

end A322402.P5994588646936585299

/-! ## A322402.P2789613979860981818

`A055572(A090182(n)*A094385(n))`
-/

namespace A322402.P2789613979860981818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (A090182 n * A094385 n).toNat

end

end A322402.P2789613979860981818

/-!
# A322403: Square array T(n, k) read by antidiagonals, n >= 0 and k >= 0: the lengths of runs in binary expansion of T(n, k) are obtained by multiplying those of n and of k (see Comments for precise definition).

The programs for A322403, there is no canonical definition to state claims against.
-/

/-! ## A322403.P7248401204171231019

`and(A080530(A185651(n)), A185651(n))`
-/

namespace A322403.P7248401204171231019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080530 (A185651 n).toNat) (A185651 n)

end

end A322403.P7248401204171231019

/-! ## A322403.P17597618308914168659

`and(A185651(n), A218403(A088520(3*n+2)))`
-/

namespace A322403.P17597618308914168659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185651 n) (A218403 (A088520 (3 * n + 2)).toNat)

end

end A322403.P17597618308914168659

/-! ## A322403.P3147988207413727649

`A109042(n)*A258280(A137178(A028276(n)))`
-/

namespace A322403.P3147988207413727649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109042 n * A258280 (A137178 (A028276 n).toNat).toNat

end

end A322403.P3147988207413727649

/-! ## A322403.P3662947392589775984

`A330237(A131235(n))`
-/

namespace A322403.P3662947392589775984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330237 (A131235 n).toNat

end

end A322403.P3662947392589775984

/-! ## A322403.P13673929776948858474

`A143974(A319251(n+1))`
-/

namespace A322403.P13673929776948858474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143974 (A319251 (n + 1)).toNat

end

end A322403.P13673929776948858474

/-!
# A322404: Square array T(n, k) read by antidiagonals, n >= 0 and k >= 0: the lengths of runs in binary expansion of T(n, k) are obtained by adding those of n and of k (see Comments for precise definition).

The programs for A322404, there is no canonical definition to state claims against.
-/

/-! ## A322404.P11546504969094643055

`A085211(n)*A230093(A284573(n))`
-/

namespace A322404.P11546504969094643055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085211 n * A230093 (A284573 n).toNat

end

end A322404.P11546504969094643055

/-! ## A322404.P8333357501198403361

`A085212(n)*A230093(A284573(n))`
-/

namespace A322404.P8333357501198403361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085212 n * A230093 (A284573 n).toNat

end

end A322404.P8333357501198403361

/-! ## A322404.P15299670613059621471

`lcm(A010121(A026621(n)), A085211(n))`
-/

namespace A322404.P15299670613059621471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010121 (A026621 n).toNat) (A085211 n)

end

end A322404.P15299670613059621471

/-! ## A322404.P15350212575962002710

`A085211(n)*A329332(A202168(n+1))`
-/

namespace A322404.P15350212575962002710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085211 n * A329332 (A202168 (n + 1)).toNat

end

end A322404.P15350212575962002710

/-! ## A322404.P3003753976972500110

`A085212(n)*A329332(A202168(n+1))`
-/

namespace A322404.P3003753976972500110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085212 n * A329332 (A202168 (n + 1)).toNat

end

end A322404.P3003753976972500110

/-!
# A322405: Number of compositions of n into parts 1, 8, 9.

The programs for A322405, the canonical program `A322405.P16647333280641722688` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322405 has offset 0).

The definition of A322405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322405.P16647333280641722688

`a(n-1)+a(n-8)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A322405

/-- `a(n-1)+a(n-8)+a(n-9)` -/
def P16647333280641722688.Spec : Prop :=
  ∀ n, (P16647333280641722688.a n : ℤ) = A322405 n

theorem P16647333280641722688.correct : P16647333280641722688.Spec := by
  intro n
  simp only [A322405]

end A322405

/-!
# A322406: a(n) = n + n*n^n.

The programs for A322406, the canonical program `A322406.P3130492305728550951` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322406 has offset 1).

The definition of A322406 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+(n+1)*(n+1)^(n+1)` (program `A322406.P3130492305728550951`, by `A322406.P3130492305728550951.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A322406.P3130492305728550951

`n+1+(n+1)*(n+1)^(n+1)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A322406

/-- `n+1+(n+1)*(n+1)^(n+1)` -/
def P3130492305728550951.Spec : Prop :=
  ∀ n, (P3130492305728550951.a n : ℤ) = A322406 (n + 1)

theorem P3130492305728550951.correct : P3130492305728550951.Spec := by
  intro n
  simp only [A322406, Nat.add_sub_cancel]

end A322406

/-! ## A322406.P1796751484035640962

`lcm(n+1, (n+1)^(n+1)+1)`
-/

namespace A322406.P1796751484035640962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) ((n + 1) ^ (n + 1) + 1)

end

end A322406.P1796751484035640962

namespace A322406

/-- `lcm(n+1, (n+1)^(n+1)+1)` -/
def P1796751484035640962.Spec : Prop :=
  ∀ n, (P1796751484035640962.a n : ℤ) = A322406 (n + 1)

end A322406

/-! ## A322406.P17409061267537299804

`xor(1, (n+1)^(n+2)+n+2)`
-/

namespace A322406.P17409061267537299804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((n + 1) ^ (n + 2) + (n + 2))

end

end A322406.P17409061267537299804

namespace A322406

/-- `xor(1, (n+1)^(n+2)+n+2)` -/
def P17409061267537299804.Spec : Prop :=
  ∀ n, (P17409061267537299804.a n : ℤ) = A322406 (n + 1)

end A322406

/-! ## A322406.P4597255388463261482

`and((n+1)^(n+2)+n+1, -2)`
-/

namespace A322406.P4597255388463261482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 1) ^ (n + 2) + (n + 1) : ℤ) (-2)

end

end A322406.P4597255388463261482

namespace A322406

/-- `and((n+1)^(n+2)+n+1, -2)` -/
def P4597255388463261482.Spec : Prop :=
  ∀ n, P4597255388463261482.a n = A322406 (n + 1)

end A322406

/-! ## A322406.P7559664610542231815

`2*A108398(n+1)`
-/

namespace A322406.P7559664610542231815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108398 (n + 1)

end

end A322406.P7559664610542231815

namespace A322406

/-- `2*A108398(n+1)` -/
def P7559664610542231815.Spec : Prop :=
  ∀ n, P7559664610542231815.a n = A322406 (n + 1)

end A322406

/-! ## A322406.P7427368475163014835

`(n+1)*A066846(∑[n])`
-/

namespace A322406.P7427368475163014835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A066846 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322406.P7427368475163014835

namespace A322406

/-- `(n+1)*A066846(∑[n])` -/
def P7427368475163014835.Spec : Prop :=
  ∀ n, P7427368475163014835.a n = A322406 (n + 1)

end A322406

/-! ## A322406.P4627985916745368429

`(n+1)*A014566(n+1)`
-/

namespace A322406.P4627985916745368429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A014566 (n + 1)

end

end A322406.P4627985916745368429

namespace A322406

/-- `(n+1)*A014566(n+1)` -/
def P4627985916745368429.Spec : Prop :=
  ∀ n, P4627985916745368429.a n = A322406 (n + 1)

theorem P4627985916745368429.correct : P4627985916745368429.Spec := by
  intro n
  simp only [A322406, Nat.add_sub_cancel, A322406.P4627985916745368429.a, A322406.P3130492305728550951.a, A014566, A014566.P17220125683731441908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322406

/-! ## A322406.P5111553113158431786

`(n+1)*(A048861(n+1)+2)`
-/

namespace A322406.P5111553113158431786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A048861 (n + 1) + 2)

end

end A322406.P5111553113158431786

namespace A322406

/-- `(n+1)*(A048861(n+1)+2)` -/
def P5111553113158431786.Spec : Prop :=
  ∀ n, P5111553113158431786.a n = A322406 (n + 1)

theorem P5111553113158431786.correct : P5111553113158431786.Spec := by
  intro n
  simp only [A322406, Nat.add_sub_cancel, A322406.P5111553113158431786.a, A322406.P3130492305728550951.a, A048861, A048861.P10845564465953315184.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A322406

/-! ## A322406.P16982332428868349443

`(n+1)*(A006091(n+1)+n+1)`
-/

namespace A322406.P16982332428868349443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A006091 (n + 1) + (n + 1 : ℤ))

end

end A322406.P16982332428868349443

namespace A322406

/-- `(n+1)*(A006091(n+1)+n+1)` -/
def P16982332428868349443.Spec : Prop :=
  ∀ n, P16982332428868349443.a n = A322406 (n + 1)

theorem P16982332428868349443.correct : P16982332428868349443.Spec := by
  intro n
  simp only [A322406, Nat.add_sub_cancel, A322406.P16982332428868349443.a, A322406.P3130492305728550951.a, A006091, A006091.P3894065017776291680.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A322406

/-!
# A322407: Compound sequence a(n) = A319198(A278039(n)), for n >= 0.

The programs for A322407, the canonical program `A322407.P48804603864531061` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322407 has offset 0).

The definition of A322407 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278039, A319198, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322407.P48804603864531061

`A319198(A278039(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A322407

/-- `A319198(A278039(n))` -/
def P48804603864531061.Spec : Prop :=
  ∀ n, P48804603864531061.a n = A322407 n

theorem P48804603864531061.correct : P48804603864531061.Spec := by
  intro n
  simp only [A322407]

end A322407

/-! ## A322407.P802645284369611056

`∑[A276790(n)]`
-/

namespace A322407.P802645284369611056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322407.P802645284369611056

namespace A322407

/-- `∑[A276790(n)]` -/
def P802645284369611056.Spec : Prop :=
  ∀ n, P802645284369611056.a n = A322407 n

end A322407

/-! ## A322407.P18005102134035920987

`∑[A277745(n+1)-1]`
-/

namespace A322407.P18005102134035920987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277745 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322407.P18005102134035920987

namespace A322407

/-- `∑[A277745(n+1)-1]` -/
def P18005102134035920987.Spec : Prop :=
  ∀ n, P18005102134035920987.a n = A322407 n

end A322407

/-! ## A322407.P6590476263382970116

`A319198(floor(11*n/6))`
-/

namespace A322407.P6590476263382970116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319198 ⌊11 * ((n : ℚ) / 6)⌋.toNat

end

end A322407.P6590476263382970116

namespace A322407

/-- `A319198(floor(11*n/6))` -/
def P6590476263382970116.Spec : Prop :=
  ∀ n, P6590476263382970116.a n = A322407 n

end A322407

/-! ## A322407.P6717498398236438021

`∑[gcd(4, A352103(n))%4]`
-/

namespace A322407.P6717498398236438021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A352103 n) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322407.P6717498398236438021

namespace A322407

/-- `∑[gcd(4, A352103(n))%4]` -/
def P6717498398236438021.Spec : Prop :=
  ∀ n, (P6717498398236438021.a n : ℤ) = A322407 n

end A322407

/-! ## A322407.P16920741298036256583

`∑[3-A275925(n+1)%4]`
-/

namespace A322407.P16920741298036256583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.tmod (A275925 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322407.P16920741298036256583

namespace A322407

/-- `∑[3-A275925(n+1)%4]` -/
def P16920741298036256583.Spec : Prop :=
  ∀ n, P16920741298036256583.a n = A322407 n

end A322407

/-! ## A322407.P12759172510955729767

`∑[A059835(Δ[A305373(n)])]`
-/

namespace A322407.P12759172510955729767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305373 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059835 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322407.P12759172510955729767

namespace A322407

/-- `∑[A059835(Δ[A305373(n)])]` -/
def P12759172510955729767.Spec : Prop :=
  ∀ n, P12759172510955729767.a n = A322407 n

end A322407

/-! ## A322407.P15734150380149878397

`A317192(A276796(n+1))+n`
-/

namespace A322407.P15734150380149878397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317192 (A276796 (n + 1)).toNat + (n : ℤ)

end

end A322407.P15734150380149878397

namespace A322407

/-- `A317192(A276796(n+1))+n` -/
def P15734150380149878397.Spec : Prop :=
  ∀ n, P15734150380149878397.a n = A322407 n

end A322407

/-! ## A322407.P14821309561208126845

`A140102(n+1)-A276798(n)`
-/

namespace A322407.P14821309561208126845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140102 (n + 1) - A276798 n

end

end A322407.P14821309561208126845

namespace A322407

/-- `A140102(n+1)-A276798(n)` -/
def P14821309561208126845.Spec : Prop :=
  ∀ n, P14821309561208126845.a n = A322407 n

end A322407

/-!
# A322408: Compound sequence with a(n) = A319198(A278041(n)), for n >= 0.

The programs for A322408, the canonical program `A322408.P5302957736886118289` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322408 has offset 0).

The definition of A322408 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278041, A319198, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322408.P5302957736886118289

`A319198(A278041(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A322408

/-- `A319198(A278041(n))` -/
def P5302957736886118289.Spec : Prop :=
  ∀ n, P5302957736886118289.a n = A322408 n

theorem P5302957736886118289.correct : P5302957736886118289.Spec := by
  intro n
  simp only [A322408]

end A322408

/-! ## A322408.P13866673199772551511

`∑[A305374(n)+1]`
-/

namespace A322408.P13866673199772551511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305374 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322408.P13866673199772551511

namespace A322408

/-- `∑[A305374(n)+1]` -/
def P13866673199772551511.Spec : Prop :=
  ∀ n, P13866673199772551511.a n = A322408 n

end A322408

/-! ## A322408.P14177108436925004627

`∑[4-A276791(n)]`
-/

namespace A322408.P14177108436925004627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A276791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322408.P14177108436925004627

namespace A322408

/-- `∑[4-A276791(n)]` -/
def P14177108436925004627.Spec : Prop :=
  ∀ n, P14177108436925004627.a n = A322408 n

end A322408

/-! ## A322408.P12488731790246637968

`comp[A319198(n)]+1`
-/

namespace A322408.P12488731790246637968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319198 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A322408.P12488731790246637968

namespace A322408

/-- `comp[A319198(n)]+1` -/
def P12488731790246637968.Spec : Prop :=
  ∀ n, (P12488731790246637968.a n : ℤ) = A322408 n

end A322408

/-! ## A322408.P17597660046427704693

`∑[Δ[A140101(n)]+1]`
-/

namespace A322408.P17597660046427704693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322408.P17597660046427704693

namespace A322408

/-- `∑[Δ[A140101(n)]+1]` -/
def P17597660046427704693.Spec : Prop :=
  ∀ n, P17597660046427704693.a n = A322408 n

end A322408

/-! ## A322408.P5833378138830175149

`n+1+A140101(n+1)`
-/

namespace A322408.P5833378138830175149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A140101 (n + 1)

end

end A322408.P5833378138830175149

namespace A322408

/-- `n+1+A140101(n+1)` -/
def P5833378138830175149.Spec : Prop :=
  ∀ n, P5833378138830175149.a n = A322408 n

end A322408

/-! ## A322408.P14442676090694875999

`2*n+A278039(n)+3`
-/

namespace A322408.P14442676090694875999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A278039 n + 3)

end

end A322408.P14442676090694875999

namespace A322408

/-- `2*n+A278039(n)+3` -/
def P14442676090694875999.Spec : Prop :=
  ∀ n, P14442676090694875999.a n = A322408 n

end A322408

/-! ## A322408.P11445322143653187352

`A003144(n+1)+2*(n+1)`
-/

namespace A322408.P11445322143653187352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (n + 1) + (2 * (n + 1) : ℤ)

end

end A322408.P11445322143653187352

namespace A322408

/-- `A003144(n+1)+2*(n+1)` -/
def P11445322143653187352.Spec : Prop :=
  ∀ n, P11445322143653187352.a n = A322408 n

end A322408

/-! ## A322408.P4777322338411238956

`A319198(A003146(n+1))`
-/

namespace A322408.P4777322338411238956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319198 (A003146 (n + 1)).toNat

end

end A322408.P4777322338411238956

namespace A322408

/-- `A319198(A003146(n+1))` -/
def P4777322338411238956.Spec : Prop :=
  ∀ n, P4777322338411238956.a n = A322408 n

end A322408

/-!
# A322409: Compound tribonacci sequence with a(n) = A278040(A278040(n)), for n >= 0.

The programs for A322409, the canonical program `A322409.P9722259027104702857` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322409 has offset 0).

The definition of A322409 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322409.P9722259027104702857

`A278040(A278040(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A322409

/-- `A278040(A278040(n))` -/
def P9722259027104702857.Spec : Prop :=
  ∀ n, P9722259027104702857.a n = A322409 n

theorem P9722259027104702857.correct : P9722259027104702857.Spec := by
  intro n
  simp only [A322409]

end A322409

/-! ## A322409.P7928569919264253532

`A322413(n)+2`
-/

namespace A322409.P7928569919264253532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322413 n + 2

end

end A322409.P7928569919264253532

namespace A322409

/-- `A322413(n)+2` -/
def P7928569919264253532.Spec : Prop :=
  ∀ n, P7928569919264253532.a n = A322409 n

end A322409

/-! ## A322409.P7330263066024225969

`A319970(n+1)+1`
-/

namespace A322409.P7330263066024225969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319970 (n + 1) + 1

end

end A322409.P7330263066024225969

namespace A322409

/-- `A319970(n+1)+1` -/
def P7330263066024225969.Spec : Prop :=
  ∀ n, P7330263066024225969.a n = A322409 n

end A322409

/-! ## A322409.P13532590279879979060

`A319968(n+1)-1`
-/

namespace A322409.P13532590279879979060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319968 (n + 1) - 1

end

end A322409.P13532590279879979060

namespace A322409

/-- `A319968(n+1)-1` -/
def P13532590279879979060.Spec : Prop :=
  ∀ n, P13532590279879979060.a n = A322409 n

end A322409

/-! ## A322409.P11307256104131527983

`A319966(n+1)-2`
-/

namespace A322409.P11307256104131527983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319966 (n + 1) - 2

end

end A322409.P11307256104131527983

namespace A322409

/-- `A319966(n+1)-2` -/
def P11307256104131527983.Spec : Prop :=
  ∀ n, P11307256104131527983.a n = A322409 n

end A322409

/-! ## A322409.P996027197557121006

`eq[0, A317950(n+1)]`
-/

namespace A322409.P996027197557121006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317950 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322409.P996027197557121006

namespace A322409

/-- `eq[0, A317950(n+1)]` -/
def P996027197557121006.Spec : Prop :=
  ∀ n, (P996027197557121006.a n : ℤ) = A322409 n

end A322409

/-! ## A322409.P13447140307269299398

`lt[A317950(n)², 1]-1`
-/

namespace A322409.P13447140307269299398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317950 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A322409.P13447140307269299398

namespace A322409

/-- `lt[A317950(n)², 1]-1` -/
def P13447140307269299398.Spec : Prop :=
  ∀ n, P13447140307269299398.a n = A322409 n

end A322409

/-! ## A322409.P6455743628561604857

`2*A278041(n)-(n+1)`
-/

namespace A322409.P6455743628561604857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A278041 n - (n + 1 : ℤ)

end

end A322409.P6455743628561604857

namespace A322409

/-- `2*A278041(n)-(n+1)` -/
def P6455743628561604857.Spec : Prop :=
  ∀ n, P6455743628561604857.a n = A322409 n

end A322409

/-! ## A322409.P631000072460900445

`2*A322410(n)+3-n`
-/

namespace A322409.P631000072460900445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A322410 n + 3 - (n : ℤ)

end

end A322409.P631000072460900445

namespace A322409

/-- `2*A322410(n)+3-n` -/
def P631000072460900445.Spec : Prop :=
  ∀ n, P631000072460900445.a n = A322409 n

end A322409

/-! ## A322409.P17236510100551738516

`2*A305373(n+1)+n-1`
-/

namespace A322409.P17236510100551738516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A305373 (n + 1) + ((n : ℤ) - 1)

end

end A322409.P17236510100551738516

namespace A322409

/-- `2*A305373(n+1)+n-1` -/
def P17236510100551738516.Spec : Prop :=
  ∀ n, P17236510100551738516.a n = A322409 n

end A322409

/-!
# A322410: Compound tribonacci sequence with a(n) = A278040(A278039(n)), for n >= 0.

The programs for A322410, the canonical program `A322410.P10476249854560897128` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322410 has offset 0).

The definition of A322410 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278039, A278040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322410.P14545296967406922624

`A319967(n+1)-1`
-/

namespace A322410.P14545296967406922624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319967 (n + 1) - 1

end

end A322410.P14545296967406922624

namespace A322410

/-- `A319967(n+1)-1` -/
def P14545296967406922624.Spec : Prop :=
  ∀ n, P14545296967406922624.a n = A322410 n

end A322410

/-! ## A322410.P10476249854560897128

`A278040(A278039(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A322410

/-- `A278040(A278039(n))` -/
def P10476249854560897128.Spec : Prop :=
  ∀ n, P10476249854560897128.a n = A322410 n

theorem P10476249854560897128.correct : P10476249854560897128.Spec := by
  intro n
  simp only [A322410]

end A322410

/-! ## A322410.P4325240702667867857

`A308200(n)+1`
-/

namespace A322410.P4325240702667867857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308200 n + 1

end

end A322410.P4325240702667867857

namespace A322410

/-- `A308200(n)+1` -/
def P4325240702667867857.Spec : Prop :=
  ∀ n, P4325240702667867857.a n = A322410 n

end A322410

/-! ## A322410.P15146872480357347194

`A278041(n)-2`
-/

namespace A322410.P15146872480357347194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n - 2

end

end A322410.P15146872480357347194

namespace A322410

/-- `A278041(n)-2` -/
def P15146872480357347194.Spec : Prop :=
  ∀ n, P15146872480357347194.a n = A322410 n

end A322410

/-! ## A322410.P11854832148659619879

`comp[n-A305374(n)]`
-/

namespace A322410.P11854832148659619879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A305374 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A322410.P11854832148659619879

namespace A322410

/-- `comp[n-A305374(n)]` -/
def P11854832148659619879.Spec : Prop :=
  ∀ n, (P11854832148659619879.a n : ℤ) = A322410 n

end A322410

/-! ## A322410.P8883300878691915671

`A003146(n+1)-3`
-/

namespace A322410.P8883300878691915671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (n + 1) - 3

end

end A322410.P8883300878691915671

namespace A322410

/-- `A003146(n+1)-3` -/
def P8883300878691915671.Spec : Prop :=
  ∀ n, P8883300878691915671.a n = A322410 n

end A322410

/-! ## A322410.P5686085798991951655

`eq[0, A276790(n+3)]`
-/

namespace A322410.P5686085798991951655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276790 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322410.P5686085798991951655

namespace A322410

/-- `eq[0, A276790(n+3)]` -/
def P5686085798991951655.Spec : Prop :=
  ∀ n, (P5686085798991951655.a n : ℤ) = A322410 n

end A322410

/-! ## A322410.P1773960613623348095

`eq[0, A317193(n+3)]`
-/

namespace A322410.P1773960613623348095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317193 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322410.P1773960613623348095

namespace A322410

/-- `eq[0, A317193(n+3)]` -/
def P1773960613623348095.Spec : Prop :=
  ∀ n, (P1773960613623348095.a n : ℤ) = A322410 n

end A322410

/-! ## A322410.P16664753761971041876

`lt[1, A317950(n+1)]`
-/

namespace A322410.P16664753761971041876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317950 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A322410.P16664753761971041876

namespace A322410

/-- `lt[1, A317950(n+1)]` -/
def P16664753761971041876.Spec : Prop :=
  ∀ n, (P16664753761971041876.a n : ℤ) = A322410 n

end A322410

/-!
# A322411: Compound tribonacci sequence with a(n) = A278040(A278041(n)), for n >= 0.

The programs for A322411, the canonical program `A322411.P3921655051849044303` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322411 has offset 0).

The definition of A322411 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278040, A278041, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322411.P15459100705828815568

`A319969(n+1)-1`
-/

namespace A322411.P15459100705828815568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319969 (n + 1) - 1

end

end A322411.P15459100705828815568

namespace A322411

/-- `A319969(n+1)-1` -/
def P15459100705828815568.Spec : Prop :=
  ∀ n, P15459100705828815568.a n = A322411 n

end A322411

/-! ## A322411.P3921655051849044303

`A278040(A278041(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A322411

/-- `A278040(A278041(n))` -/
def P3921655051849044303.Spec : Prop :=
  ∀ n, P3921655051849044303.a n = A322411 n

theorem P3921655051849044303.correct : P3921655051849044303.Spec := by
  intro n
  simp only [A322411]

end A322411

/-! ## A322411.P1477713307963864784

`A319971(n+1)+1`
-/

namespace A322411.P1477713307963864784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319971 (n + 1) + 1

end

end A322411.P1477713307963864784

namespace A322411

/-- `A319971(n+1)+1` -/
def P1477713307963864784.Spec : Prop :=
  ∀ n, P1477713307963864784.a n = A322411 n

end A322411

/-! ## A322411.P16792733092965536946

`A287000(A003146(n+1))`
-/

namespace A322411.P16792733092965536946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287000 (A003146 (n + 1)).toNat

end

end A322411.P16792733092965536946

namespace A322411

/-- `A287000(A003146(n+1))` -/
def P16792733092965536946.Spec : Prop :=
  ∀ n, P16792733092965536946.a n = A322411 n

end A322411

/-! ## A322411.P2313383309751343092

`A003144(A319966(n+1))`
-/

namespace A322411.P2313383309751343092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (A319966 (n + 1)).toNat

end

end A322411.P2313383309751343092

namespace A322411

/-- `A003144(A319966(n+1))` -/
def P2313383309751343092.Spec : Prop :=
  ∀ n, P2313383309751343092.a n = A322411 n

end A322411

/-! ## A322411.P10608989300070166981

`A020725(A319971(n+1))`
-/

namespace A322411.P10608989300070166981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A319971 (n + 1)).toNat

end

end A322411.P10608989300070166981

namespace A322411

/-- `A020725(A319971(n+1))` -/
def P10608989300070166981.Spec : Prop :=
  ∀ n, P10608989300070166981.a n = A322411 n

end A322411

/-! ## A322411.P3989195351366987239

`A023443(A319969(n+1))`
-/

namespace A322411.P3989195351366987239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A319969 (n + 1)).toNat

end

end A322411.P3989195351366987239

namespace A322411

/-- `A023443(A319969(n+1))` -/
def P3989195351366987239.Spec : Prop :=
  ∀ n, P3989195351366987239.a n = A322411 n

end A322411

/-! ## A322411.P16474501288070477830

`A287000(A278041(n)+1)`
-/

namespace A322411.P16474501288070477830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287000 (A278041 n + 1).toNat

end

end A322411.P16474501288070477830

namespace A322411

/-- `A287000(A278041(n)+1)` -/
def P16474501288070477830.Spec : Prop :=
  ∀ n, P16474501288070477830.a n = A322411 n

end A322411

/-! ## A322411.P15797725512439840899

`A003144(A322409(n)+2)`
-/

namespace A322411.P15797725512439840899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (A322409 n + 2).toNat

end

end A322411.P15797725512439840899

namespace A322411

/-- `A003144(A322409(n)+2)` -/
def P15797725512439840899.Spec : Prop :=
  ∀ n, P15797725512439840899.a n = A322411 n

end A322411

/-! ## A322411.P7702867290841920149

`A276796(A322414(n)-1)`
-/

namespace A322411.P7702867290841920149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (A322414 n - 1).toNat

end

end A322411.P7702867290841920149

namespace A322411

/-- `A276796(A322414(n)-1)` -/
def P7702867290841920149.Spec : Prop :=
  ∀ n, P7702867290841920149.a n = A322411 n

end A322411

/-!
# A322412: Compound tribonacci sequence with a(n) = A278041(A278040(n)), for n >= 0.

The programs for A322412, the canonical program `A322412.P6855962605056890163` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322412 has offset 0).

The definition of A322412 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278040, A278041, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322412.P6855962605056890163

`A278041(A278040(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A322412

/-- `A278041(A278040(n))` -/
def P6855962605056890163.Spec : Prop :=
  ∀ n, P6855962605056890163.a n = A322412 n

theorem P6855962605056890163.correct : P6855962605056890163.Spec := by
  intro n
  simp only [A322412]

end A322412

/-! ## A322412.P9420771212905530267

`A322411(n)-2`
-/

namespace A322412.P9420771212905530267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322411 n - 2

end

end A322412.P9420771212905530267

namespace A322412

/-- `A322411(n)-2` -/
def P9420771212905530267.Spec : Prop :=
  ∀ n, P9420771212905530267.a n = A322412 n

end A322412

/-! ## A322412.P11671842056247726519

`A319971(n+1)-1`
-/

namespace A322412.P11671842056247726519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319971 (n + 1) - 1

end

end A322412.P11671842056247726519

namespace A322412

/-- `A319971(n+1)-1` -/
def P11671842056247726519.Spec : Prop :=
  ∀ n, P11671842056247726519.a n = A322412 n

end A322412

/-! ## A322412.P343067090655948043

`A319969(n+1)-3`
-/

namespace A322412.P343067090655948043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319969 (n + 1) - 3

end

end A322412.P343067090655948043

namespace A322412

/-- `A319969(n+1)-3` -/
def P343067090655948043.Spec : Prop :=
  ∀ n, P343067090655948043.a n = A322412 n

end A322412

/-! ## A322412.P15284663894241602444

`abs(A319971(-xor(n, -1))-1)`
-/

namespace A322412.P15284663894241602444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A319971 (-Int.xor (n : ℤ) (-1)).toNat - 1|

end

end A322412.P15284663894241602444

namespace A322412

/-- `abs(A319971(-xor(n, -1))-1)` -/
def P15284663894241602444.Spec : Prop :=
  ∀ n, P15284663894241602444.a n = A322412 n

end A322412

/-! ## A322412.P4523151931932480110

`A023444(A322411(n))`
-/

namespace A322412.P4523151931932480110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A322411 n).toNat

end

end A322412.P4523151931932480110

namespace A322412

/-- `A023444(A322411(n))` -/
def P4523151931932480110.Spec : Prop :=
  ∀ n, P4523151931932480110.a n = A322412 n

end A322412

/-! ## A322412.P4449643176167715381

`A003145(A278041(n))+1`
-/

namespace A322412.P4449643176167715381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (A278041 n).toNat + 1

end

end A322412.P4449643176167715381

namespace A322412

/-- `A003145(A278041(n))+1` -/
def P4449643176167715381.Spec : Prop :=
  ∀ n, P4449643176167715381.a n = A322412 n

end A322412

/-! ## A322412.P581168987522750833

`A003144(A319968(n+1))`
-/

namespace A322412.P581168987522750833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (A319968 (n + 1)).toNat

end

end A322412.P581168987522750833

namespace A322412

/-- `A003144(A319968(n+1))` -/
def P581168987522750833.Spec : Prop :=
  ∀ n, P581168987522750833.a n = A322412 n

end A322412

/-! ## A322412.P9204108263414649935

`A003144(A322409(n)+1)`
-/

namespace A322412.P9204108263414649935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (A322409 n + 1).toNat

end

end A322412.P9204108263414649935

namespace A322412

/-- `A003144(A322409(n)+1)` -/
def P9204108263414649935.Spec : Prop :=
  ∀ n, P9204108263414649935.a n = A322412 n

end A322412

/-! ## A322412.P10566993953297044454

`A023445(A319969(n+1))`
-/

namespace A322412.P10566993953297044454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A319969 (n + 1)).toNat

end

end A322412.P10566993953297044454

namespace A322412

/-- `A023445(A319969(n+1))` -/
def P10566993953297044454.Spec : Prop :=
  ∀ n, P10566993953297044454.a n = A322412 n

end A322412

/-!
# A322413: Compound tribonacci sequence with a(n) = A278041(A278039(n)), for n >= 0.

The programs for A322413, the canonical program `A322413.P5536836903637108534` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322413 has offset 0).

The definition of A322413 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278039, A278041, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322413.P5536836903637108534

`A278041(A278039(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A322413

/-- `A278041(A278039(n))` -/
def P5536836903637108534.Spec : Prop :=
  ∀ n, P5536836903637108534.a n = A322413 n

theorem P5536836903637108534.correct : P5536836903637108534.Spec := by
  intro n
  simp only [A322413]

end A322413

/-! ## A322413.P15101551190774107906

`A322409(n)-2`
-/

namespace A322413.P15101551190774107906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322409 n - 2

end

end A322413.P15101551190774107906

namespace A322413

/-- `A322409(n)-2` -/
def P15101551190774107906.Spec : Prop :=
  ∀ n, P15101551190774107906.a n = A322413 n

end A322413

/-! ## A322413.P13705571187087439339

`A319970(n+1)-1`
-/

namespace A322413.P13705571187087439339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319970 (n + 1) - 1

end

end A322413.P13705571187087439339

namespace A322413

/-- `A319970(n+1)-1` -/
def P13705571187087439339.Spec : Prop :=
  ∀ n, P13705571187087439339.a n = A322413 n

end A322413

/-! ## A322413.P2852140174022356491

`A319968(n+1)-3`
-/

namespace A322413.P2852140174022356491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319968 (n + 1) - 3

end

end A322413.P2852140174022356491

namespace A322413

/-- `A319968(n+1)-3` -/
def P2852140174022356491.Spec : Prop :=
  ∀ n, P2852140174022356491.a n = A322413 n

end A322413

/-! ## A322413.P16261099221149393768

`A319966(n+1)-4`
-/

namespace A322413.P16261099221149393768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319966 (n + 1) - 4

end

end A322413.P16261099221149393768

namespace A322413

/-- `A319966(n+1)-4` -/
def P16261099221149393768.Spec : Prop :=
  ∀ n, P16261099221149393768.a n = A322413 n

end A322413

/-! ## A322413.P15273971122289568417

`eq[0, A317950(n+3)]`
-/

namespace A322413.P15273971122289568417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317950 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322413.P15273971122289568417

namespace A322413

/-- `eq[0, A317950(n+3)]` -/
def P15273971122289568417.Spec : Prop :=
  ∀ n, (P15273971122289568417.a n : ℤ) = A322413 n

end A322413

/-! ## A322413.P11832899194244802836

`2*A322410(n)-(n-1)`
-/

namespace A322413.P11832899194244802836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A322410 n - ((n : ℤ) - 1)

end

end A322413.P11832899194244802836

namespace A322413

/-- `2*A322410(n)-(n-1)` -/
def P11832899194244802836.Spec : Prop :=
  ∀ n, P11832899194244802836.a n = A322413 n

end A322413

/-! ## A322413.P3645871739498788842

`2*A278041(n)-(n+3)`
-/

namespace A322413.P3645871739498788842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A278041 n - (n + 3 : ℤ)

end

end A322413.P3645871739498788842

namespace A322413

/-- `2*A278041(n)-(n+3)` -/
def P3645871739498788842.Spec : Prop :=
  ∀ n, P3645871739498788842.a n = A322413 n

end A322413

/-! ## A322413.P1793927836476819428

`2*A308200(n)+3-n`
-/

namespace A322413.P1793927836476819428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308200 n + 3 - (n : ℤ)

end

end A322413.P1793927836476819428

namespace A322413

/-- `2*A308200(n)+3-n` -/
def P1793927836476819428.Spec : Prop :=
  ∀ n, P1793927836476819428.a n = A322413 n

end A322413

/-! ## A322413.P12338132444353574934

`2*A319967(n+1)-(n+1)`
-/

namespace A322413.P12338132444353574934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319967 (n + 1) - (n + 1 : ℤ)

end

end A322413.P12338132444353574934

namespace A322413

/-- `2*A319967(n+1)-(n+1)` -/
def P12338132444353574934.Spec : Prop :=
  ∀ n, P12338132444353574934.a n = A322413 n

end A322413

/-!
# A322414: Compound tribonacci sequence with a(n) = A278041(A278041(n)), for n >= 0.

The programs for A322414, the canonical program `A322414.P10929740956036606779` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322414 has offset 0).

The definition of A322414 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278041, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322414.P10929740956036606779

`A278041(A278041(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A322414

/-- `A278041(A278041(n))` -/
def P10929740956036606779.Spec : Prop :=
  ∀ n, P10929740956036606779.a n = A322414 n

theorem P10929740956036606779.correct : P10929740956036606779.Spec := by
  intro n
  simp only [A322414]

end A322414

/-! ## A322414.P9095471300296341843

`A319972(n+1)-1`
-/

namespace A322414.P9095471300296341843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319972 (n + 1) - 1

end

end A322414.P9095471300296341843

namespace A322414

/-- `A319972(n+1)-1` -/
def P9095471300296341843.Spec : Prop :=
  ∀ n, P9095471300296341843.a n = A322414 n

end A322414

/-! ## A322414.P17619057479819930440

`abs(1-A319972(-xor(n, -1)))`
-/

namespace A322414.P17619057479819930440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A319972 (-Int.xor (n : ℤ) (-1)).toNat|

end

end A322414.P17619057479819930440

namespace A322414

/-- `abs(1-A319972(-xor(n, -1)))` -/
def P17619057479819930440.Spec : Prop :=
  ∀ n, P17619057479819930440.a n = A322414 n

end A322414

/-! ## A322414.P5819864365875611365

`A003144(A319969(n+1))`
-/

namespace A322414.P5819864365875611365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (A319969 (n + 1)).toNat

end

end A322414.P5819864365875611365

namespace A322414

/-- `A003144(A319969(n+1))` -/
def P5819864365875611365.Spec : Prop :=
  ∀ n, P5819864365875611365.a n = A322414 n

end A322414

/-! ## A322414.P13969941180913003463

`A003144(A322411(n)+1)`
-/

namespace A322414.P13969941180913003463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (A322411 n + 1).toNat

end

end A322414.P13969941180913003463

namespace A322414

/-- `A003144(A322411(n)+1)` -/
def P13969941180913003463.Spec : Prop :=
  ∀ n, P13969941180913003463.a n = A322414 n

end A322414

/-! ## A322414.P7786519720168422276

`A023443(A319972(n+1))`
-/

namespace A322414.P7786519720168422276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A319972 (n + 1)).toNat

end

end A322414.P7786519720168422276

namespace A322414

/-- `A023443(A319972(n+1))` -/
def P7786519720168422276.Spec : Prop :=
  ∀ n, P7786519720168422276.a n = A322414 n

end A322414

/-! ## A322414.P15023744251494210239

`A277722(A319966(n+1))`
-/

namespace A322414.P15023744251494210239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277722 (A319966 (n + 1)).toNat

end

end A322414.P15023744251494210239

namespace A322414

/-- `A277722(A319966(n+1))` -/
def P15023744251494210239.Spec : Prop :=
  ∀ n, P15023744251494210239.a n = A322414 n

end A322414

/-! ## A322414.P3570818666342003621

`A287176(A322409(n)+2)`
-/

namespace A322414.P3570818666342003621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287176 (A322409 n + 2).toNat

end

end A322414.P3570818666342003621

namespace A322414

/-- `A287176(A322409(n)+2)` -/
def P3570818666342003621.Spec : Prop :=
  ∀ n, P3570818666342003621.a n = A322414 n

end A322414

/-! ## A322414.P10069318679494309278

`A319966(A278040(n))+16`
-/

namespace A322414.P10069318679494309278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319966 (A278040 n).toNat + 16

end

end A322414.P10069318679494309278

namespace A322414

/-- `A319966(A278040(n))+16` -/
def P10069318679494309278.Spec : Prop :=
  ∀ n, P10069318679494309278.a n = A322414 n

end A322414

/-! ## A322414.P949570628162300977

`A319967(A003146(n+1))+1`
-/

namespace A322414.P949570628162300977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319967 (A003146 (n + 1)).toNat + 1

end

end A322414.P949570628162300977

namespace A322414

/-- `A319967(A003146(n+1))+1` -/
def P949570628162300977.Spec : Prop :=
  ∀ n, P949570628162300977.a n = A322414 n

end A322414

/-!
# A322416: The number of exponentially odd numbers <= 10^n.

The programs for A322416, there is no canonical definition to state claims against.
-/

/-! ## A322416.P4913579419221238740

`A072586(A011557(n))+1`
-/

namespace A322416.P4913579419221238740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072586 (A011557 n).toNat + 1

end

end A322416.P4913579419221238740

/-!
# A322417: a(n) - 2*a(n-1) = period 2: repeat [3, 0] for n > 0, a(0)=5, a(1)=13.

The programs for A322417, the canonical program `A322417.P10735024254084951411` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322417 has offset 0).

The definition of A322417 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322417.P159494709599005650

`a(n-2)+21*2^(n-2)` with `a(0)=5, a(1)=13`
-/

namespace A322417.P159494709599005650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5, 13] fun n a =>
  a (n - 2) + 21 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A322417.P159494709599005650

namespace A322417

/-- `a(n-2)+21*2^(n-2)` -/
def P159494709599005650.Spec : Prop :=
  ∀ n, P159494709599005650.a n = (A322417 n : ℚ)

end A322417

/-! ## A322417.P10735024254084951411

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=5, a(1)=13, a(2)=26`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A322417

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P10735024254084951411.Spec : Prop :=
  ∀ n, P10735024254084951411.a n = A322417 n

theorem P10735024254084951411.correct : P10735024254084951411.Spec := by
  intro n
  simp only [A322417]

end A322417

/-! ## A322417.P2750854009953941278

`A166920(n)+A166920(n+1)+A166920(n+2)`
-/

namespace A322417.P2750854009953941278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166920 n + A166920 (n + 1) + A166920 (n + 2)

end

end A322417.P2750854009953941278

namespace A322417

/-- `A166920(n)+A166920(n+1)+A166920(n+2)` -/
def P2750854009953941278.Spec : Prop :=
  ∀ n, P2750854009953941278.a n = A322417 n

end A322417

/-! ## A322417.P964181666197240713

`7*2^n-gcd(2, n)`
-/

namespace A322417.P964181666197240713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * 2 ^ n : ℤ) - (Nat.gcd 2 n : ℤ)

end

end A322417.P964181666197240713

namespace A322417

/-- `7*2^n-gcd(2, n)` -/
def P964181666197240713.Spec : Prop :=
  ∀ n, P964181666197240713.a n = A322417 n

end A322417

/-! ## A322417.P17868737995707328789

`or(n, 7*2^n-2)`
-/

namespace A322417.P17868737995707328789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((7 * 2 ^ n : ℤ) - 2)

end

end A322417.P17868737995707328789

namespace A322417

/-- `or(n, 7*2^n-2)` -/
def P17868737995707328789.Spec : Prop :=
  ∀ n, P17868737995707328789.a n = A322417 n

end A322417

/-! ## A322417.P2257094098969457845

`ogf((5+3x-5x^2)/(1-2x-x^2+2x^3))`
-/

namespace A322417.P2257094098969457845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 3, -5] [1, -2, -1, 2] n

end

end A322417.P2257094098969457845

namespace A322417

/-- `ogf((5+3x-5x^2)/(1-2x-x^2+2x^3))` -/
def P2257094098969457845.Spec : Prop :=
  ∀ n, P2257094098969457845.a n = A322417 n

end A322417

/-! ## A322417.P8679782974564240848

`2*a(n-1)+3*n%2` with `a(0)=5`
-/

namespace A322417.P8679782974564240848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  2 * a (n - 1) + 3 * (n % 2)

end

end A322417.P8679782974564240848

namespace A322417

/-- `2*a(n-1)+3*n%2` -/
def P8679782974564240848.Spec : Prop :=
  ∀ n, (P8679782974564240848.a n : ℤ) = A322417 n

end A322417

/-! ## A322417.P5754049332318046998

`A176448(n)+and(1, n)`
-/

namespace A322417.P5754049332318046998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176448 n + (Nat.land 1 n : ℤ)

end

end A322417.P5754049332318046998

namespace A322417

/-- `A176448(n)+and(1, n)` -/
def P5754049332318046998.Spec : Prop :=
  ∀ n, P5754049332318046998.a n = A322417 n

end A322417

/-! ## A322417.P2154693396178833109

`A141023(n+3)-2^n`
-/

namespace A322417.P2154693396178833109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141023 (n + 3) - (2 ^ n : ℤ)

end

end A322417.P2154693396178833109

namespace A322417

/-- `A141023(n+3)-2^n` -/
def P2154693396178833109.Spec : Prop :=
  ∀ n, P2154693396178833109.a n = A322417 n

end A322417

/-! ## A322417.P9087270063593866048

`A086224(n)-and(1, n+1)`
-/

namespace A322417.P9087270063593866048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086224 n - (Nat.land 1 (n + 1) : ℤ)

end

end A322417.P9087270063593866048

namespace A322417

/-- `A086224(n)-and(1, n+1)` -/
def P9087270063593866048.Spec : Prop :=
  ∀ n, P9087270063593866048.a n = A322417 n

end A322417

/-! ## A322417.P8337534903837124368

`A321483(n-1)+a(n-1)` with `a(0)=5`
-/

namespace A322417.P8337534903837124368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A321483 (n - 1) + a (n - 1)

end

end A322417.P8337534903837124368

namespace A322417

/-- `A321483(n-1)+a(n-1)` -/
def P8337534903837124368.Spec : Prop :=
  ∀ n, P8337534903837124368.a n = A322417 n

end A322417

/-! ## A322417.P9434528563612144803

`A048489(n)+A010710(n)`
-/

namespace A322417.P9434528563612144803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048489 n + A010710 n

end

end A322417.P9434528563612144803

namespace A322417

/-- `A048489(n)+A010710(n)` -/
def P9434528563612144803.Spec : Prop :=
  ∀ n, P9434528563612144803.a n = A322417 n

end A322417

/-! ## A322417.P11976007912952100152

`A156127(n)+A000034(n)`
-/

namespace A322417.P11976007912952100152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156127 n + A000034 n

end

end A322417.P11976007912952100152

namespace A322417

/-- `A156127(n)+A000034(n)` -/
def P11976007912952100152.Spec : Prop :=
  ∀ n, P11976007912952100152.a n = A322417 n

end A322417

/-! ## A322417.P5753553210968456161

`A176448(n)+A000035(n)`
-/

namespace A322417.P5753553210968456161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176448 n + A000035 n

end

end A322417.P5753553210968456161

namespace A322417

/-- `A176448(n)+A000035(n)` -/
def P5753553210968456161.Spec : Prop :=
  ∀ n, P5753553210968456161.a n = A322417 n

end A322417

/-! ## A322417.P12106483988006441485

`A086224(n)-A059841(n)`
-/

namespace A322417.P12106483988006441485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086224 n - A059841 n

end

end A322417.P12106483988006441485

namespace A322417

/-- `A086224(n)-A059841(n)` -/
def P12106483988006441485.Spec : Prop :=
  ∀ n, P12106483988006441485.a n = A322417 n

end A322417

/-! ## A322417.P9352974392029650492

`A083686(n)-A176059(n)`
-/

namespace A322417.P9352974392029650492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083686 n - A176059 n

end

end A322417.P9352974392029650492

namespace A322417

/-- `A083686(n)-A176059(n)` -/
def P9352974392029650492.Spec : Prop :=
  ∀ n, P9352974392029650492.a n = A322417 n

end A322417

/-! ## A322417.P3456074055642324304

`A140253(n)+A007283(n+1)`
-/

namespace A322417.P3456074055642324304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140253 n + A007283 (n + 1)

end

end A322417.P3456074055642324304

namespace A322417

/-- `A140253(n)+A007283(n+1)` -/
def P3456074055642324304.Spec : Prop :=
  ∀ n, P3456074055642324304.a n = A322417 n

end A322417

/-! ## A322417.P13749856326954974766

`A140253(n)+A091629(n+1)`
-/

namespace A322417.P13749856326954974766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140253 n + A091629 (n + 1)

end

end A322417.P13749856326954974766

namespace A322417

/-- `A140253(n)+A091629(n+1)` -/
def P13749856326954974766.Spec : Prop :=
  ∀ n, P13749856326954974766.a n = A322417 n

end A322417

/-! ## A322417.P5782874413187633508

`A005009(n)-A000034(n+1)`
-/

namespace A322417.P5782874413187633508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005009 n - A000034 (n + 1)

end

end A322417.P5782874413187633508

namespace A322417

/-- `A005009(n)-A000034(n+1)` -/
def P5782874413187633508.Spec : Prop :=
  ∀ n, P5782874413187633508.a n = A322417 n

end A322417

/-! ## A322417.P8808878778111796560

`A134067(n+1)-A051049(n)`
-/

namespace A322417.P8808878778111796560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134067 (n + 1) - A051049 n

end

end A322417.P8808878778111796560

namespace A322417

/-- `A134067(n+1)-A051049(n)` -/
def P8808878778111796560.Spec : Prop :=
  ∀ n, P8808878778111796560.a n = A322417 n

end A322417

/-!
# A322418: Least k > 0 such that A014221(k) == A014221(k+1) mod n.

The programs for A322418, there is no canonical definition to state claims against.
-/

/-! ## A322418.P943882726133031107

`A185816(2*(n+1))-char[1]`
-/

namespace A322418.P943882726133031107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185816 (2 * (n + 1)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A322418.P943882726133031107

/-! ## A322418.P13776502604486705604

`a(A277030(n+1)-1)+1` with `a(0)=1, a(1)=1`
-/

namespace A322418.P13776502604486705604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A277030 (n + 1) - 1).toNat + 1

end

end A322418.P13776502604486705604

/-! ## A322418.P8311525059074152912

`A185816((a(C(n-1, n²))+1)*(n+1))` with `a(0)=1, a(1)=1`
-/

namespace A322418.P8311525059074152912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A185816 ((a (Nat.choose ((n : ℤ) - 1).toNat (n ^ 2)) + 1) * (n + 1 : ℤ)).toNat

end

end A322418.P8311525059074152912

/-! ## A322418.P17004442933231796115

`A185816(A227380(n+1))`
-/

namespace A322418.P17004442933231796115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185816 (A227380 (n + 1)).toNat

end

end A322418.P17004442933231796115

/-! ## A322418.P1963995183751471650

`A185816(A267872(n)+1)`
-/

namespace A322418.P1963995183751471650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185816 (A267872 n + 1).toNat

end

end A322418.P1963995183751471650

/-! ## A322418.P5877361689365607806

`A185816(Δ[A060798(n+1)])`
-/

namespace A322418.P5877361689365607806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185816 (f1 (n + 1) - f1 n).toNat

end

end A322418.P5877361689365607806

/-! ## A322418.P1558398826029284266

`(A185816(A011773(n+1))+1)%7`
-/

namespace A322418.P1558398826029284266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185816 (A011773 (n + 1)).toNat + 1) 7

end

end A322418.P1558398826029284266

/-! ## A322418.P6597842666373162636

`A185816(A191558(n+1)+1+n)`
-/

namespace A322418.P6597842666373162636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185816 (A191558 (n + 1) + 1 + (n : ℤ)).toNat

end

end A322418.P6597842666373162636

/-! ## A322418.P1942386045512818092

`A185816((n+1)*A001468(n+1))`
-/

namespace A322418.P1942386045512818092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185816 ((n + 1 : ℤ) * A001468 (n + 1)).toNat

end

end A322418.P1942386045512818092

/-! ## A322418.P8727217102427323739

`a(A277030(A277030(n+1)))+1` with `a(0)=1, a(1)=1`
-/

namespace A322418.P8727217102427323739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A277030 (A277030 (n + 1)).toNat).toNat + 1

end

end A322418.P8727217102427323739

/-!
# A322419: Number of n-step self-avoiding walks on L-lattice.

The programs for A322419, there is no canonical definition to state claims against.
-/

/-! ## A322419.P7844795135638634476

`2*A336662((n-1)%(2*a(n-1)))` with `a(0)=1`
-/

namespace A322419.P7844795135638634476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A336662 (Int.tmod ((n : ℤ) - 1) (2 * a (n - 1))).toNat

end

end A322419.P7844795135638634476

/-! ## A322419.P18031785626465495443

`2^ceil(atan(n))*A189722(A233583(n+1))`
-/

namespace A322419.P18031785626465495443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ) * (A189722 (A233583 (n + 1)).toNat : ℚ)

end

end A322419.P18031785626465495443

/-! ## A322419.P12219113092362549816

`A151798(n)*A189722(A233583(n+1))`
-/

namespace A322419.P12219113092362549816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151798 n * A189722 (A233583 (n + 1)).toNat

end

end A322419.P12219113092362549816

/-! ## A322419.P2875536202833198946

`ceil(A337353(n)/2)`
-/

namespace A322419.P2875536202833198946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337353 n : ℚ) / 2⌉

end

end A322419.P2875536202833198946

/-!
# A322420: Sum of the first n*(n+1) primes.

The programs for A322420, the canonical program `A322420.P4592221206710886228` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322420 has offset 0).

The definition of A322420 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322420.P4592221206710886228

`A007504(A002378(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A322420

/-- `A007504(A002378(n))` -/
def P4592221206710886228.Spec : Prop :=
  ∀ n, P4592221206710886228.a n = A322420 n

theorem P4592221206710886228.correct : P4592221206710886228.Spec := by
  intro n
  simp only [A322420]

end A322420

/-! ## A322420.P11116548312460075591

`∑[A109726(n)]`
-/

namespace A322420.P11116548312460075591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322420.P11116548312460075591

namespace A322420

/-- `∑[A109726(n)]` -/
def P11116548312460075591.Spec : Prop :=
  ∀ n, P11116548312460075591.a n = A322420 n

end A322420

/-! ## A322420.P17661332454500883715

`A007504(∑[2*n])`
-/

namespace A322420.P17661332454500883715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322420.P17661332454500883715

namespace A322420

/-- `A007504(∑[2*n])` -/
def P17661332454500883715.Spec : Prop :=
  ∀ n, P17661332454500883715.a n = A322420 n

end A322420

/-! ## A322420.P13491350968469025031

`∑[abs(Δ[A007504(n²-n)])]`
-/

namespace A322420.P13491350968469025031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n ^ 2 - n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322420.P13491350968469025031

namespace A322420

/-- `∑[abs(Δ[A007504(n²-n)])]` -/
def P13491350968469025031.Spec : Prop :=
  ∀ n, P13491350968469025031.a n = A322420 n

end A322420

/-! ## A322420.P4647099162663133251

`record[A007504(A115880(n+1))]`
-/

namespace A322420.P4647099162663133251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A115880 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322420.P4647099162663133251

namespace A322420

/-- `record[A007504(A115880(n+1))]` -/
def P4647099162663133251.Spec : Prop :=
  ∀ n, P4647099162663133251.a n = A322420 n

end A322420

/-! ## A322420.P13584467937271416596

`record[A007504(A002620(xor(1, n)))]`
-/

namespace A322420.P13584467937271416596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A002620 (Nat.xor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322420.P13584467937271416596

namespace A322420

/-- `record[A007504(A002620(xor(1, n)))]` -/
def P13584467937271416596.Spec : Prop :=
  ∀ n, P13584467937271416596.a n = A322420 n

end A322420

/-! ## A322420.P1681436598970933611

`record[A007504(2*A025796(n+1))]`
-/

namespace A322420.P1681436598970933611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (2 * A025796 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322420.P1681436598970933611

namespace A322420

/-- `record[A007504(2*A025796(n+1))]` -/
def P1681436598970933611.Spec : Prop :=
  ∀ n, P1681436598970933611.a n = A322420 n

end A322420

/-! ## A322420.P11968792401673921993

`A007504(n²+n)%A024448(n+1)`
-/

namespace A322420.P11968792401673921993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (n ^ 2 + n)) (A024448 (n + 1))

end

end A322420.P11968792401673921993

namespace A322420

/-- `A007504(n²+n)%A024448(n+1)` -/
def P11968792401673921993.Spec : Prop :=
  ∀ n, P11968792401673921993.a n = A322420 n

end A322420

/-! ## A322420.P9057179048022997356

`record[A007504(A128615(n)+A128615(n)²)]`
-/

namespace A322420.P9057179048022997356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A128615 n + A128615 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322420.P9057179048022997356

namespace A322420

/-- `record[A007504(A128615(n)+A128615(n)²)]` -/
def P9057179048022997356.Spec : Prop :=
  ∀ n, P9057179048022997356.a n = A322420 n

end A322420

/-! ## A322420.P6031306064468062088

`record[A007504(A128615(n)²-A128615(n))]`
-/

namespace A322420.P6031306064468062088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A128615 n ^ 2 - A128615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322420.P6031306064468062088

namespace A322420

/-- `record[A007504(A128615(n)²-A128615(n))]` -/
def P6031306064468062088.Spec : Prop :=
  ∀ n, P6031306064468062088.a n = A322420 n

end A322420

/-! ## A322420.P13019588001009367597

`record[A007504(A175676(n+1)+A175676(n+1)²)]`
-/

namespace A322420.P13019588001009367597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A175676 (n + 1) + A175676 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322420.P13019588001009367597

namespace A322420

/-- `record[A007504(A175676(n+1)+A175676(n+1)²)]` -/
def P13019588001009367597.Spec : Prop :=
  ∀ n, P13019588001009367597.a n = A322420 n

end A322420

/-! ## A322420.P16714404103541168611

`record[A007504(A260437(n+1)+A260437(n+1)²)]`
-/

namespace A322420.P16714404103541168611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A260437 (n + 1) + A260437 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322420.P16714404103541168611

namespace A322420

/-- `record[A007504(A260437(n+1)+A260437(n+1)²)]` -/
def P16714404103541168611.Spec : Prop :=
  ∀ n, P16714404103541168611.a n = A322420 n

end A322420

/-! ## A322420.P10690170162195703187

`A109722(∑[n])`
-/

namespace A322420.P10690170162195703187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109722 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322420.P10690170162195703187

namespace A322420

/-- `A109722(∑[n])` -/
def P10690170162195703187.Spec : Prop :=
  ∀ n, P10690170162195703187.a n = A322420 n

end A322420

/-! ## A322420.P12689804971260155520

`A262392(∑[2*n])-2`
-/

namespace A322420.P12689804971260155520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262392 (∑ j ∈ Finset.range (n + 1), f1 j) - 2

end

end A322420.P12689804971260155520

namespace A322420

/-- `A262392(∑[2*n])-2` -/
def P12689804971260155520.Spec : Prop :=
  ∀ n, P12689804971260155520.a n = A322420 n

end A322420

/-! ## A322420.P9651976611239610510

`A014284(∑[A028310(2*n)])-1`
-/

namespace A322420.P9651976611239610510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A322420.P9651976611239610510

namespace A322420

/-- `A014284(∑[A028310(2*n)])-1` -/
def P9651976611239610510.Spec : Prop :=
  ∀ n, P9651976611239610510.a n = A322420 n

end A322420

/-!
# A322421: Primes of the form A322420(k) or the sum of the first k*(k+1) primes.

The programs for A322421, there is no canonical definition to state claims against.
-/

/-! ## A322421.P12877915419967965897

`A322420(A322422(n+1))`
-/

namespace A322421.P12877915419967965897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322420 (A322422 (n + 1)).toNat

end

end A322421.P12877915419967965897

/-! ## A322421.P1936605743302218010

`∩[A013918(n+1), A322420(n)]`
-/

namespace A322421.P1936605743302218010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322420 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322421.P1936605743302218010

/-! ## A322421.P2162122520605595582

`A007504(2*A000217(A322422(n+1)))`
-/

namespace A322421.P2162122520605595582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (2 * A000217 (A322422 (n + 1)).toNat).toNat

end

end A322421.P2162122520605595582

/-! ## A322421.P15740524267770031554

`A007504(lcm(2, A002378(A322422(n+1))))`
-/

namespace A322421.P15740524267770031554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (Int.lcm 2 (A002378 (A322422 (n + 1)).toNat))

end

end A322421.P15740524267770031554

/-! ## A322421.P1941353063298390089

`A007504(A322422(n+1)+A322422(n+1)²)`
-/

namespace A322421.P1941353063298390089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A322422 (n + 1) + A322422 (n + 1) ^ 2).toNat

end

end A322421.P1941353063298390089

/-!
# A322422: Numbers k such that the sum of the first k*(k+1) primes is prime.

The programs for A322422, there is no canonical definition to state claims against.
-/

/-! ## A322422.P9730398896826540672

`lt[A105783((n+1)*(n+2)), 1]+1`
-/

namespace A322422.P9730398896826540672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105783 ((n + 1) * (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A322422.P9730398896826540672

/-! ## A322422.P15081575548474458196

`record[abs(A167407(A070301(n+1)))]`
-/

namespace A322422.P15081575548474458196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A167407 (A070301 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322422.P15081575548474458196

/-! ## A322422.P5138090216487822447

`lt[A105783((n+1)*A028310(n)), 1]`
-/

namespace A322422.P5138090216487822447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105783 ((n + 1 : ℤ) * A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A322422.P5138090216487822447

/-! ## A322422.P17747234137363648901

`lt[A105783(lcm(n+1, A028310(n))), 1]`
-/

namespace A322422.P17747234137363648901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105783 (Int.lcm (n + 1 : ℤ) (A028310 n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A322422.P17747234137363648901

/-! ## A322422.P7227511288380785350

`lt[A105783((A000007(n)+n)²+n), 1]`
-/

namespace A322422.P7227511288380785350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105783 ((A000007 n + (n : ℤ)) ^ 2 + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A322422.P7227511288380785350

/-!
# A322423: Start with (1, 2, 3); when the sequence has n terms, extend it by appending a(n) copies of a(1..n-1). (Cf. "Look to the left" sequence A293630.)

The programs for A322423, there is no canonical definition to state claims against.
-/

/-! ## A322423.P7794540357659308713

`A322426(∑[n+1]+3)`
-/

namespace A322423.P7794540357659308713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322426 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A322423.P7794540357659308713

/-! ## A322423.P9652000638312190737

`and(3, A322426(A152949(n+3)))`
-/

namespace A322423.P9652000638312190737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A322426 (A152949 (n + 3)).toNat)

end

end A322423.P9652000638312190737

/-! ## A322423.P11488395504561586547

`dr(A322426(A000217(n+1)+3))`
-/

namespace A322423.P11488395504561586547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A322426 (A000217 (n + 1) + 3).toNat)

end

end A322423.P11488395504561586547

/-! ## A322423.P6770739824137850050

`A322426(A000217(n)+n+4)%5`
-/

namespace A322423.P6770739824137850050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322426 (A000217 n + (n + 4 : ℤ)).toNat) 5

end

end A322423.P6770739824137850050

/-! ## A322423.P14973389183666934305

`A322426(A152949(n+3))%A000040(n+1)`
-/

namespace A322423.P14973389183666934305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322426 (A152949 (n + 3)).toNat) (A000040 (n + 1))

end

end A322423.P14973389183666934305

/-! ## A322423.P7060048286377711764

`A322426(A000217(n+1)+3)+A000007(n+1)`
-/

namespace A322423.P7060048286377711764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322426 (A000217 (n + 1) + 3).toNat + A000007 (n + 1)

end

end A322423.P7060048286377711764

/-! ## A322423.P12245873202050019913

`lcm(A260196(n+2), A322426(A000217(n+1)+3))`
-/

namespace A322423.P12245873202050019913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A260196 (n + 2)) (A322426 (A000217 (n + 1) + 3).toNat)

end

end A322423.P12245873202050019913

/-! ## A322423.P13488282132517404392

`A322426(A000217(n+1)+3)/(A004442(n)-n)²`
-/

namespace A322423.P13488282132517404392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322426 (A000217 (n + 1) + 3).toNat : ℚ) / ((A004442 n - (n : ℤ)) ^ 2 : ℚ)

end

end A322423.P13488282132517404392

/-! ## A322423.P13601530210803531361

`A322426(A000217(n+1)+3)+A008683(4*(n+1))`
-/

namespace A322423.P13601530210803531361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322426 (A000217 (n + 1) + 3).toNat + A008683 (4 * (n + 1))

end

end A322423.P13601530210803531361

/-! ## A322423.P10152397540231574193

`A014963(4*n+6)*A322426(A000217(n+1)+3)`
-/

namespace A322423.P10152397540231574193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A322426 (A000217 (n + 1) + 3).toNat

end

end A322423.P10152397540231574193

/-! ## A322423.P17232059349695932996

`A007318(a(n-1))*A322426(A000217(n+1)+3)` with `a(0)=1`
-/

namespace A322423.P17232059349695932996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007318 (a (n - 1)).toNat * A322426 (A000217 (n + 1) + 3).toNat

end

end A322423.P17232059349695932996

/-!
# A322424: Start with (1, 2, 3, 4); when the sequence has n terms, extend it by appending a(n) copies of a(1..n-1). (Cf. "Look to the left" sequence A293630.)

The programs for A322424, there is no canonical definition to state claims against.
-/

/-! ## A322424.P17094419509182061238

`A322426(∑[n+2]+5)`
-/

namespace A322424.P17094419509182061238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322426 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A322424.P17094419509182061238

/-! ## A322424.P6519092824741102592

`dr(A322426(A055998(n)+7))`
-/

namespace A322424.P6519092824741102592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A322426 (A055998 n + 7).toNat)

end

end A322424.P6519092824741102592

/-! ## A322424.P3510961691817086217

`dr(A322426(A167614(n+1)+1))`
-/

namespace A322424.P3510961691817086217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A322426 (A167614 (n + 1) + 1).toNat)

end

end A322424.P3510961691817086217

/-! ## A322424.P2042758865854398659

`A322426(A055998(n)+7)%A040042(n)`
-/

namespace A322424.P2042758865854398659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322426 (A055998 n + 7).toNat) (A040042 n)

end

end A322424.P2042758865854398659

/-! ## A322424.P14422054842636631619

`gcd(A000038(n), A322426(A167614(n+1)+1))`
-/

namespace A322424.P14422054842636631619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A322426 (A167614 (n + 1) + 1).toNat)

end

end A322424.P14422054842636631619

/-! ## A322424.P14283676582620722962

`or(A000007(n), A322426(A167614(n+1)+1))`
-/

namespace A322424.P14283676582620722962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A322426 (A167614 (n + 1) + 1).toNat)

end

end A322424.P14283676582620722962

/-! ## A322424.P4446242153532881098

`A322426(A167614(n+1)+1)+A000007(n+1)`
-/

namespace A322424.P4446242153532881098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322426 (A167614 (n + 1) + 1).toNat + A000007 (n + 1)

end

end A322424.P4446242153532881098

/-! ## A322424.P16291540177160186088

`A322426(A167614(n+1)+1)+A000038(n+1)`
-/

namespace A322424.P16291540177160186088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322426 (A167614 (n + 1) + 1).toNat + A000038 (n + 1)

end

end A322424.P16291540177160186088

/-! ## A322424.P8731283799476154300

`A001492(2*n)*A322426(A167614(n+1)+1)`
-/

namespace A322424.P8731283799476154300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001492 (2 * n) * A322426 (A167614 (n + 1) + 1).toNat

end

end A322424.P8731283799476154300

/-! ## A322424.P9379089585452532112

`A007877(2*n+1)*A322426(A167614(n+1)+1)`
-/

namespace A322424.P9379089585452532112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (2 * n + 1) * A322426 (A167614 (n + 1) + 1).toNat

end

end A322424.P9379089585452532112

/-! ## A322424.P16552258126624340746

`A322426(A167614(n+1)+1)^A014963(4*n+2)`
-/

namespace A322424.P16552258126624340746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322426 (A167614 (n + 1) + 1).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A322424.P16552258126624340746

/-! ## A322424.P8558325883756443443

`gcd(n, A000188(n+1))*A322426(A167614(n+1)+1)`
-/

namespace A322424.P8558325883756443443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A000188 (n + 1)) : ℤ) * A322426 (A167614 (n + 1) + 1).toNat

end

end A322424.P8558325883756443443

/-! ## A322424.P10719337579843361673

`A001222(A056206(n))*A322426(A167614(n+1)+1)`
-/

namespace A322424.P10719337579843361673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A056206 n).toNat * A322426 (A167614 (n + 1) + 1).toNat

end

end A322424.P10719337579843361673

/-! ## A322424.P5888658395177391380

`A322426(A167614(n+1)+1)+A008683(A000290(n+7))`
-/

namespace A322424.P5888658395177391380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322426 (A167614 (n + 1) + 1).toNat + A008683 (A000290 (n + 7)).toNat

end

end A322424.P5888658395177391380

/-! ## A322424.P1512075050482085564

`A322426(A167614(n+1)+1)^A007877(A000040(n+1))`
-/

namespace A322424.P1512075050482085564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322426 (A167614 (n + 1) + 1).toNat : ℚ) ^ (A007877 (A000040 (n + 1)).toNat : ℤ)

end

end A322424.P1512075050482085564

/-!
# A322425: Start with (1, 2, 3, 4, 5); if the sequence has n terms, extend it by appending a(n) copies of a(1..n-1): cf. "Look to the left" sequence A293630.

The programs for A322425, there is no canonical definition to state claims against.
-/

/-! ## A322425.P14844660206934070540

`A322426(C(n+5, 2)-n+1)`
-/

namespace A322425.P14844660206934070540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322426 ((Nat.choose (n + 5) 2 : ℤ) - (n : ℤ) + 1).toNat

end

end A322425.P14844660206934070540

/-! ## A322425.P14305262388390193924

`A322426(A167499(n+2))`
-/

namespace A322425.P14305262388390193924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322426 (A167499 (n + 2)).toNat

end

end A322425.P14305262388390193924

/-! ## A322425.P14958626520043056610

`A322426(A052905(n)+10)`
-/

namespace A322425.P14958626520043056610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322426 (A052905 n + 10).toNat

end

end A322425.P14958626520043056610

/-! ## A322425.P13447674106263306717

`A322426(A055999(n)+11)`
-/

namespace A322425.P13447674106263306717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322426 (A055999 n + 11).toNat

end

end A322425.P13447674106263306717

/-! ## A322425.P11370479593741896666

`A322426(A166136(n+2)-1)`
-/

namespace A322425.P11370479593741896666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322426 (A166136 (n + 2) - 1).toNat

end

end A322425.P11370479593741896666

/-! ## A322425.P12627609127180729081

`A322426(A167614(n+2)+2)`
-/

namespace A322425.P12627609127180729081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322426 (A167614 (n + 2) + 2).toNat

end

end A322425.P12627609127180729081

/-! ## A322425.P16199350078220465138

`A322426(A000124(n+3)+4)`
-/

namespace A322425.P16199350078220465138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322426 (A000124 (n + 3) + 4).toNat

end

end A322425.P16199350078220465138

/-! ## A322425.P8474300954503471232

`A322426(A000096(n+2)+6)`
-/

namespace A322425.P8474300954503471232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322426 (A000096 (n + 2) + 6).toNat

end

end A322425.P8474300954503471232

/-! ## A322425.P14693104632628958458

`A322426(A000217(n+3)+5)`
-/

namespace A322425.P14693104632628958458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322426 (A000217 (n + 3) + 5).toNat

end

end A322425.P14693104632628958458

/-! ## A322425.P9754790806460082270

`A322426(A046691(n+1)+9)`
-/

namespace A322425.P9754790806460082270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322426 (A046691 (n + 1) + 9).toNat

end

end A322425.P9754790806460082270

/-! ## A322425.P6433106156840546573

`A322426(A166136(n+1)+2+n)`
-/

namespace A322425.P6433106156840546573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322426 (A166136 (n + 1) + 2 + (n : ℤ)).toNat

end

end A322425.P6433106156840546573

/-!
# A322426: Array read by downwards antidiagonals: A(n, k) is the k-th term of a "Look to the left" sequence starting with 1,2,...,n (see A293630).

The programs for A322426, there is no canonical definition to state claims against.
-/

/-! ## A322426.P4532152481660302323

`A051127(n+2)%A081366(n+6)+1`
-/

namespace A322426.P4532152481660302323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051127 (n + 2)) (A081366 (n + 6)) + 1

end

end A322426.P4532152481660302323

/-! ## A322426.P8559964245614019451

`A292438(A347314(n+1))+A051127(n+2)`
-/

namespace A322426.P8559964245614019451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (A347314 (n + 1)).toNat + A051127 (n + 2)

end

end A322426.P8559964245614019451

/-! ## A322426.P9020111141840639500

`dr(A305864(A242133(n+1)))`
-/

namespace A322426.P9020111141840639500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A305864 (A242133 (n + 1)).toNat)

end

end A322426.P9020111141840639500

/-! ## A322426.P10933021722981260807

`A349056(A360571(2*(n+1))+4)`
-/

namespace A322426.P10933021722981260807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349056 (A360571 (2 * (n + 1)) + 4).toNat

end

end A322426.P10933021722981260807

/-! ## A322426.P8631051514212551567

`A296133(or(4, A360571(2*(n+1))))`
-/

namespace A322426.P8631051514212551567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296133 (Int.lor 4 (A360571 (2 * (n + 1)))).toNat

end

end A322426.P8631051514212551567

/-!
# A322429: Number of decomposable binary self-dual codes of length 2n (up to permutation equivalence).

The programs for A322429, there is no canonical definition to state claims against.
-/

/-! ## A322429.P6876195490510334337

`A003179(n+1)-A003178(n+1)`
-/

namespace A322429.P6876195490510334337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003179 (n + 1) - A003178 (n + 1)

end

end A322429.P6876195490510334337

/-!
# A322430: Numbers k such that the coefficient of x^k in the expansion of Product_{j>=1} (1-x^j)^8 is zero.

The programs for A322430, the canonical program `A322430.P13676474653024602128` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322430 has offset 1).

The definition of A322430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5866 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322430.P4903692601926512325

`eq[0, A096936(3*n+1)]`
-/

namespace A322430.P4903692601926512325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322430.P4903692601926512325

namespace A322430

/-- `eq[0, A096936(3*n+1)]` -/
def P4903692601926512325.Spec : Prop :=
  ∀ n, (P4903692601926512325.a n : ℤ) = A322430 (n + 1)

end A322430

/-! ## A322430.P266260802098547001

`eq[0, A115979(3*n+1)]`
-/

namespace A322430.P266260802098547001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115979 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322430.P266260802098547001

namespace A322430

/-- `eq[0, A115979(3*n+1)]` -/
def P266260802098547001.Spec : Prop :=
  ∀ n, (P266260802098547001.a n : ℤ) = A322430 (n + 1)

end A322430

/-! ## A322430.P16932659677463151897

`eq[1, A000041(A033716(3*n+1))]`
-/

namespace A322430.P16932659677463151897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A033716 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322430.P16932659677463151897

namespace A322430

/-- `eq[1, A000041(A033716(3*n+1))]` -/
def P16932659677463151897.Spec : Prop :=
  ∀ n, (P16932659677463151897.a n : ℤ) = A322430 (n + 1)

end A322430

/-! ## A322430.P11471102015595218437

`eq[0, A000731(n)]`
-/

namespace A322430.P11471102015595218437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000731 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322430.P11471102015595218437

namespace A322430

/-- `eq[0, A000731(n)]` -/
def P11471102015595218437.Spec : Prop :=
  ∀ n, (P11471102015595218437.a n : ℤ) = A322430 (n + 1)

end A322430

/-! ## A322430.P13676474653024602128

`eq[0, A005882(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A322430

/-- `eq[0, A005882(n)]` -/
def P13676474653024602128.Spec : Prop :=
  ∀ n, (P13676474653024602128.a n : ℤ) = A322430 (n + 1)

theorem P13676474653024602128.correct : P13676474653024602128.Spec := by
  intro n
  simp only [A322430, Nat.add_sub_cancel]

end A322430

/-! ## A322430.P5362102064889936704

`eq[0, A030206(n)]`
-/

namespace A322430.P5362102064889936704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322430.P5362102064889936704

namespace A322430

/-- `eq[0, A030206(n)]` -/
def P5362102064889936704.Spec : Prop :=
  ∀ n, (P5362102064889936704.a n : ℤ) = A322430 (n + 1)

end A322430

/-! ## A322430.P1631688838529030681

`eq[0, A033687(n)]`
-/

namespace A322430.P1631688838529030681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322430.P1631688838529030681

namespace A322430

/-- `eq[0, A033687(n)]` -/
def P1631688838529030681.Spec : Prop :=
  ∀ n, (P1631688838529030681.a n : ℤ) = A322430 (n + 1)

end A322430

/-! ## A322430.P13288440703037719832

`eq[0, A122861(n)]`
-/

namespace A322430.P13288440703037719832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322430.P13288440703037719832

namespace A322430

/-- `eq[0, A122861(n)]` -/
def P13288440703037719832.Spec : Prop :=
  ∀ n, (P13288440703037719832.a n : ℤ) = A322430 (n + 1)

end A322430

/-! ## A322430.P315292029303007569

`eq[0, A127863(n)]`
-/

namespace A322430.P315292029303007569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322430.P315292029303007569

namespace A322430

/-- `eq[0, A127863(n)]` -/
def P315292029303007569.Spec : Prop :=
  ∀ n, (P315292029303007569.a n : ℤ) = A322430 (n + 1)

end A322430

/-! ## A322430.P8111635761990352622

`eq[0, A129576(n)]`
-/

namespace A322430.P8111635761990352622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322430.P8111635761990352622

namespace A322430

/-- `eq[0, A129576(n)]` -/
def P8111635761990352622.Spec : Prop :=
  ∀ n, (P8111635761990352622.a n : ℤ) = A322430 (n + 1)

end A322430

/-! ## A322430.P5263588873064212801

`eq[0, A161969(n)]`
-/

namespace A322430.P5263588873064212801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161969 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322430.P5263588873064212801

namespace A322430

/-- `eq[0, A161969(n)]` -/
def P5263588873064212801.Spec : Prop :=
  ∀ n, (P5263588873064212801.a n : ℤ) = A322430 (n + 1)

end A322430

/-! ## A322430.P22558485801265218

`eq[0, A227696(n)]`
-/

namespace A322430.P22558485801265218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227696 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322430.P22558485801265218

namespace A322430

/-- `eq[0, A227696(n)]` -/
def P22558485801265218.Spec : Prop :=
  ∀ n, (P22558485801265218.a n : ℤ) = A322430 (n + 1)

end A322430

/-! ## A322430.P489755807912691652

`eq[0, A246650(n)]`
-/

namespace A322430.P489755807912691652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246650 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322430.P489755807912691652

namespace A322430

/-- `eq[0, A246650(n)]` -/
def P489755807912691652.Spec : Prop :=
  ∀ n, (P489755807912691652.a n : ℤ) = A322430 (n + 1)

end A322430

/-! ## A322430.P10174457466415566908

`eq[0, A246752(n)]`
-/

namespace A322430.P10174457466415566908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246752 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322430.P10174457466415566908

namespace A322430

/-- `eq[0, A246752(n)]` -/
def P10174457466415566908.Spec : Prop :=
  ∀ n, (P10174457466415566908.a n : ℤ) = A322430 (n + 1)

end A322430

/-! ## A322430.P5651024495332248880

`lt[A005882(n), A000122(n)!]`
-/

namespace A322430.P5651024495332248880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005882 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000122 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A322430.P5651024495332248880

namespace A322430

/-- `lt[A005882(n), A000122(n)!]` -/
def P5651024495332248880.Spec : Prop :=
  ∀ n, (P5651024495332248880.a n : ℤ) = A322430 (n + 1)

end A322430

/-! ## A322430.P10985011461470429732

`lt[A033687(n), gcd(2, A057521(n+1))]`
-/

namespace A322430.P10985011461470429732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A057521 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A322430.P10985011461470429732

namespace A322430

/-- `lt[A033687(n), gcd(2, A057521(n+1))]` -/
def P10985011461470429732.Spec : Prop :=
  ∀ n, (P10985011461470429732.a n : ℤ) = A322430 (n + 1)

end A322430

/-! ## A322430.P8543648446176927464

`eq[0, A113063(3*n+1)]`
-/

namespace A322430.P8543648446176927464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113063 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322430.P8543648446176927464

namespace A322430

/-- `eq[0, A113063(3*n+1)]` -/
def P8543648446176927464.Spec : Prop :=
  ∀ n, (P8543648446176927464.a n : ℤ) = A322430 (n + 1)

end A322430

/-! ## A322430.P3381047528223186667

`eq[0, A002324(3*n+1)]`
-/

namespace A322430.P3381047528223186667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322430.P3381047528223186667

namespace A322430

/-- `eq[0, A002324(3*n+1)]` -/
def P3381047528223186667.Spec : Prop :=
  ∀ n, (P3381047528223186667.a n : ℤ) = A322430 (n + 1)

end A322430

/-! ## A322430.P14263714348891756833

`eq[0, A035178(3*n+1)]`
-/

namespace A322430.P14263714348891756833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035178 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322430.P14263714348891756833

namespace A322430

/-- `eq[0, A035178(3*n+1)]` -/
def P14263714348891756833.Spec : Prop :=
  ∀ n, (P14263714348891756833.a n : ℤ) = A322430 (n + 1)

end A322430

/-!
# A322431: Numbers k such that the coefficient of x^k in the expansion of Product_{j>=1} (1-x^j)^10 is zero.

The programs for A322431, the canonical program `A322431.P11477619645148095533` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322431 has offset 1).

The definition of A322431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3981 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322431.P3468477272981754196

`eq[0, A010818(n)]`
-/

namespace A322431.P3468477272981754196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010818 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322431.P3468477272981754196

namespace A322431

/-- `eq[0, A010818(n)]` -/
def P3468477272981754196.Spec : Prop :=
  ∀ n, (P3468477272981754196.a n : ℤ) = A322431 (n + 1)

end A322431

/-! ## A322431.P11477619645148095533

`eq[0, A121444(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A322431

/-- `eq[0, A121444(n)]` -/
def P11477619645148095533.Spec : Prop :=
  ∀ n, (P11477619645148095533.a n : ℤ) = A322431 (n + 1)

theorem P11477619645148095533.correct : P11477619645148095533.Spec := by
  intro n
  simp only [A322431, Nat.add_sub_cancel]

end A322431

/-! ## A322431.P4370041382711952568

`eq[0, A258832(n)]`
-/

namespace A322431.P4370041382711952568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322431.P4370041382711952568

namespace A322431

/-- `eq[0, A258832(n)]` -/
def P4370041382711952568.Spec : Prop :=
  ∀ n, (P4370041382711952568.a n : ℤ) = A322431 (n + 1)

end A322431

/-! ## A322431.P8634488409638635422

`A000027(lt[A121444(n), 1])`
-/

namespace A322431.P8634488409638635422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121444 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A322431.P8634488409638635422

namespace A322431

/-- `A000027(lt[A121444(n), 1])` -/
def P8634488409638635422.Spec : Prop :=
  ∀ n, P8634488409638635422.a n = A322431 (n + 1)

end A322431

/-! ## A322431.P10733192972320736125

`lt[abs(A010818(n)), A055089(n)]`
-/

namespace A322431.P10733192972320736125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010818 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055089 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322431.P10733192972320736125

namespace A322431

/-- `lt[abs(A010818(n)), A055089(n)]` -/
def P10733192972320736125.Spec : Prop :=
  ∀ n, (P10733192972320736125.a n : ℤ) = A322431 (n + 1)

end A322431

/-! ## A322431.P5651823224678187071

`lt[abs(A010818(n)), A057512(n)]`
-/

namespace A322431.P5651823224678187071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010818 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057512 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322431.P5651823224678187071

namespace A322431

/-- `lt[abs(A010818(n)), A057512(n)]` -/
def P5651823224678187071.Spec : Prop :=
  ∀ n, (P5651823224678187071.a n : ℤ) = A322431 (n + 1)

end A322431

/-! ## A322431.P8479426229272412023

`lt[abs(A010818(n)), A250120(n)]`
-/

namespace A322431.P8479426229272412023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010818 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322431.P8479426229272412023

namespace A322431

/-- `lt[abs(A010818(n)), A250120(n)]` -/
def P8479426229272412023.Spec : Prop :=
  ∀ n, (P8479426229272412023.a n : ℤ) = A322431 (n + 1)

end A322431

/-! ## A322431.P9157890445349445626

`lt[abs(A010818(n)), A002375(n+1)]`
-/

namespace A322431.P9157890445349445626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010818 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322431.P9157890445349445626

namespace A322431

/-- `lt[abs(A010818(n)), A002375(n+1)]` -/
def P9157890445349445626.Spec : Prop :=
  ∀ n, (P9157890445349445626.a n : ℤ) = A322431 (n + 1)

end A322431

/-! ## A322431.P6360751180905924961

`lt[abs(A010818(n)), A013928(n+1)]`
-/

namespace A322431.P6360751180905924961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010818 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322431.P6360751180905924961

namespace A322431

/-- `lt[abs(A010818(n)), A013928(n+1)]` -/
def P6360751180905924961.Spec : Prop :=
  ∀ n, (P6360751180905924961.a n : ℤ) = A322431 (n + 1)

end A322431

/-! ## A322431.P1139772461284709739

`lt[ceil(A121444(n)/A286374(n)), 1]`
-/

namespace A322431.P1139772461284709739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A121444 n : ℚ) / (A286374 n : ℚ)⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A322431.P1139772461284709739

namespace A322431

/-- `lt[ceil(A121444(n)/A286374(n)), 1]` -/
def P1139772461284709739.Spec : Prop :=
  ∀ n, (P1139772461284709739.a n : ℤ) = A322431 (n + 1)

end A322431

/-! ## A322431.P4638639619380035968

`lt[A121444(n), A017834(floor(1/(n+1)))]`
-/

namespace A322431.P4638639619380035968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121444 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017834 ⌊1 / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322431.P4638639619380035968

namespace A322431

/-- `lt[A121444(n), A017834(floor(1/(n+1)))]` -/
def P4638639619380035968.Spec : Prop :=
  ∀ n, (P4638639619380035968.a n : ℤ) = A322431 (n + 1)

end A322431

/-! ## A322431.P12951644002739004807

`lt[ceil(A121444(n)/A000010(n+1)), 1]`
-/

namespace A322431.P12951644002739004807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A121444 n : ℚ) / (A000010 (n + 1) : ℚ)⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A322431.P12951644002739004807

namespace A322431

/-- `lt[ceil(A121444(n)/A000010(n+1)), 1]` -/
def P12951644002739004807.Spec : Prop :=
  ∀ n, (P12951644002739004807.a n : ℤ) = A322431 (n + 1)

end A322431

/-! ## A322431.P14222828532625646997

`lt[ceil(A121444(n)/A004736(n+1)), 1]`
-/

namespace A322431.P14222828532625646997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A121444 n : ℚ) / (A004736 (n + 1) : ℚ)⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A322431.P14222828532625646997

namespace A322431

/-- `lt[ceil(A121444(n)/A004736(n+1)), 1]` -/
def P14222828532625646997.Spec : Prop :=
  ∀ n, (P14222828532625646997.a n : ℤ) = A322431 (n + 1)

end A322431

/-! ## A322431.P2759614856518758011

`lt[ceil(A121444(n)/A061768(n+1)), 1]`
-/

namespace A322431.P2759614856518758011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A121444 n : ℚ) / (A061768 (n + 1) : ℚ)⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A322431.P2759614856518758011

namespace A322431

/-- `lt[ceil(A121444(n)/A061768(n+1)), 1]` -/
def P2759614856518758011.Spec : Prop :=
  ∀ n, (P2759614856518758011.a n : ℤ) = A322431 (n + 1)

end A322431

/-! ## A322431.P12986135503796285932

`lt[ceil(A121444(n)/A074592(n+1)), 1]`
-/

namespace A322431.P12986135503796285932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A121444 n : ℚ) / (A074592 (n + 1) : ℚ)⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A322431.P12986135503796285932

namespace A322431

/-- `lt[ceil(A121444(n)/A074592(n+1)), 1]` -/
def P12986135503796285932.Spec : Prop :=
  ∀ n, (P12986135503796285932.a n : ℤ) = A322431 (n + 1)

end A322431

/-! ## A322431.P4232720530748998006

`lt[ceil(A121444(n)/A156300(n+1)), 1]`
-/

namespace A322431.P4232720530748998006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A121444 n : ℚ) / (A156300 (n + 1) : ℚ)⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A322431.P4232720530748998006

namespace A322431

/-- `lt[ceil(A121444(n)/A156300(n+1)), 1]` -/
def P4232720530748998006.Spec : Prop :=
  ∀ n, (P4232720530748998006.a n : ℤ) = A322431 (n + 1)

end A322431

/-! ## A322431.P11656887459716734391

`lt[A121444(n), A001055(A020639(n+1))]`
-/

namespace A322431.P11656887459716734391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121444 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A020639 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322431.P11656887459716734391

namespace A322431

/-- `lt[A121444(n), A001055(A020639(n+1))]` -/
def P11656887459716734391.Spec : Prop :=
  ∀ n, (P11656887459716734391.a n : ℤ) = A322431 (n + 1)

end A322431

/-! ## A322431.P12950602144622844865

`lt[A121444(n), A126168(A027748(n+1))]`
-/

namespace A322431.P12950602144622844865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121444 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126168 (A027748 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322431.P12950602144622844865

namespace A322431

/-- `lt[A121444(n), A126168(A027748(n+1))]` -/
def P12950602144622844865.Spec : Prop :=
  ∀ n, (P12950602144622844865.a n : ℤ) = A322431 (n + 1)

end A322431

/-! ## A322431.P2994535081713030968

`eq[0, A000729(3*n+1)]`
-/

namespace A322431.P2994535081713030968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000729 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322431.P2994535081713030968

namespace A322431

/-- `eq[0, A000729(3*n+1)]` -/
def P2994535081713030968.Spec : Prop :=
  ∀ n, (P2994535081713030968.a n : ℤ) = A322431 (n + 1)

end A322431

/-! ## A322431.P17167114405243044888

`eq[0, A002171(3*n+1)]`
-/

namespace A322431.P17167114405243044888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002171 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322431.P17167114405243044888

namespace A322431

/-- `eq[0, A002171(3*n+1)]` -/
def P17167114405243044888.Spec : Prop :=
  ∀ n, (P17167114405243044888.a n : ℤ) = A322431 (n + 1)

end A322431

/-!
# A322432: Numbers k such that the coefficient of x^k in the expansion of Product_{j>=1} (1-x^j)^14 is zero.

The programs for A322432, the canonical program `A322432.P15750206088003482334` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322432 has offset 1).

The definition of A322432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322432.P702115952335094079

`eq[0, A010821(n)]`
-/

namespace A322432.P702115952335094079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010821 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322432.P702115952335094079

namespace A322432

/-- `eq[0, A010821(n)]` -/
def P702115952335094079.Spec : Prop :=
  ∀ n, (P702115952335094079.a n : ℤ) = A322432 (n + 1)

end A322432

/-! ## A322432.P15750206088003482334

`eq[0, A121361(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A322432

/-- `eq[0, A121361(n)]` -/
def P15750206088003482334.Spec : Prop :=
  ∀ n, (P15750206088003482334.a n : ℤ) = A322432 (n + 1)

theorem P15750206088003482334.correct : P15750206088003482334.Spec := by
  intro n
  simp only [A322432, Nat.add_sub_cancel]

end A322432

/-! ## A322432.P16480371695611131901

`eq[0, A187150(n)]`
-/

namespace A322432.P16480371695611131901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187150 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322432.P16480371695611131901

namespace A322432

/-- `eq[0, A187150(n)]` -/
def P16480371695611131901.Spec : Prop :=
  ∀ n, (P16480371695611131901.a n : ℤ) = A322432 (n + 1)

end A322432

/-! ## A322432.P11046003401465419196

`eq[0, A093949(n+1)]`
-/

namespace A322432.P11046003401465419196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093949 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322432.P11046003401465419196

namespace A322432

/-- `eq[0, A093949(n+1)]` -/
def P11046003401465419196.Spec : Prop :=
  ∀ n, (P11046003401465419196.a n : ℤ) = A322432 (n + 1)

end A322432

/-! ## A322432.P2667457977577918305

`A000027(lt[A121361(n), 1])`
-/

namespace A322432.P2667457977577918305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121361 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A322432.P2667457977577918305

namespace A322432

/-- `A000027(lt[A121361(n), 1])` -/
def P2667457977577918305.Spec : Prop :=
  ∀ n, P2667457977577918305.a n = A322432 (n + 1)

end A322432

/-! ## A322432.P13041059758029806744

`lt[A121361(n), dr(A106400(n))]`
-/

namespace A322432.P13041059758029806744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121361 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A106400 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A322432.P13041059758029806744

namespace A322432

/-- `lt[A121361(n), dr(A106400(n))]` -/
def P13041059758029806744.Spec : Prop :=
  ∀ n, (P13041059758029806744.a n : ℤ) = A322432 (n + 1)

end A322432

/-! ## A322432.P10737419591178144622

`lt[A010821(n)², A034444(n+1)]`
-/

namespace A322432.P10737419591178144622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010821 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322432.P10737419591178144622

namespace A322432

/-- `lt[A010821(n)², A034444(n+1)]` -/
def P10737419591178144622.Spec : Prop :=
  ∀ n, (P10737419591178144622.a n : ℤ) = A322432 (n + 1)

end A322432

/-! ## A322432.P4753215709912109409

`lt[A010821(n)², A034448(n+1)]`
-/

namespace A322432.P4753215709912109409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010821 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322432.P4753215709912109409

namespace A322432

/-- `lt[A010821(n)², A034448(n+1)]` -/
def P4753215709912109409.Spec : Prop :=
  ∀ n, (P4753215709912109409.a n : ℤ) = A322432 (n + 1)

end A322432

/-! ## A322432.P7201243331459328656

`eq[0, A000727(2*n+1)]`
-/

namespace A322432.P7201243331459328656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000727 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322432.P7201243331459328656

namespace A322432

/-- `eq[0, A000727(2*n+1)]` -/
def P7201243331459328656.Spec : Prop :=
  ∀ n, (P7201243331459328656.a n : ℤ) = A322432 (n + 1)

end A322432

/-! ## A322432.P5603575965489883311

`eq[0, A097195(2*n+1)]`
-/

namespace A322432.P5603575965489883311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097195 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322432.P5603575965489883311

namespace A322432

/-- `eq[0, A097195(2*n+1)]` -/
def P5603575965489883311.Spec : Prop :=
  ∀ n, (P5603575965489883311.a n : ℤ) = A322432 (n + 1)

end A322432

/-! ## A322432.P11972611001901743231

`eq[0, A129451(2*n+1)]`
-/

namespace A322432.P11972611001901743231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129451 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322432.P11972611001901743231

namespace A322432

/-- `eq[0, A129451(2*n+1)]` -/
def P11972611001901743231.Spec : Prop :=
  ∀ n, (P11972611001901743231.a n : ℤ) = A322432 (n + 1)

end A322432

/-! ## A322432.P13852181365025298225

`eq[0, A152243(2*n+1)]`
-/

namespace A322432.P13852181365025298225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152243 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322432.P13852181365025298225

namespace A322432

/-- `eq[0, A152243(2*n+1)]` -/
def P13852181365025298225.Spec : Prop :=
  ∀ n, (P13852181365025298225.a n : ℤ) = A322432 (n + 1)

end A322432

/-! ## A322432.P1145732097266526835

`eq[0, A153728(2*n+1)]`
-/

namespace A322432.P1145732097266526835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153728 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322432.P1145732097266526835

namespace A322432

/-- `eq[0, A153728(2*n+1)]` -/
def P1145732097266526835.Spec : Prop :=
  ∀ n, (P1145732097266526835.a n : ℤ) = A322432 (n + 1)

end A322432

/-! ## A322432.P5012141218552696531

`eq[0, A187076(2*n+1)]`
-/

namespace A322432.P5012141218552696531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187076 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322432.P5012141218552696531

namespace A322432

/-- `eq[0, A187076(2*n+1)]` -/
def P5012141218552696531.Spec : Prop :=
  ∀ n, (P5012141218552696531.a n : ℤ) = A322432 (n + 1)

end A322432

/-! ## A322432.P12804810420074949875

`eq[0, A318375(2*n+1)]`
-/

namespace A322432.P12804810420074949875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318375 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322432.P12804810420074949875

namespace A322432

/-- `eq[0, A318375(2*n+1)]` -/
def P12804810420074949875.Spec : Prop :=
  ∀ n, (P12804810420074949875.a n : ℤ) = A322432 (n + 1)

end A322432

/-! ## A322432.P9046414544332042921

`lt[(A187150(n)*A187153(n+1))², 1]`
-/

namespace A322432.P9046414544332042921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A187150 n * A187153 (n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A322432.P9046414544332042921

namespace A322432

/-- `lt[(A187150(n)*A187153(n+1))², 1]` -/
def P9046414544332042921.Spec : Prop :=
  ∀ n, (P9046414544332042921.a n : ℤ) = A322432 (n + 1)

end A322432

/-! ## A322432.P2512989893339097769

`eq[0, A173030(2*n+1)]`
-/

namespace A322432.P2512989893339097769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173030 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322432.P2512989893339097769

namespace A322432

/-- `eq[0, A173030(2*n+1)]` -/
def P2512989893339097769.Spec : Prop :=
  ∀ n, (P2512989893339097769.a n : ℤ) = A322432 (n + 1)

end A322432

/-!
# A322433: Numbers k such that the coefficient of x^k in the expansion of Product_{j>=1} (1-x^j)^26 is zero.

The programs for A322433, there is no canonical definition to state claims against.
-/

/-! ## A322433.P8313828009054093704

`eq[0, A010831(n)]`
-/

namespace A322433.P8313828009054093704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010831 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A322433.P8313828009054093704

/-! ## A322433.P13703021996378538221

`lt[abs(A010831(n)), A000124(n)]`
-/

namespace A322433.P13703021996378538221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010831 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322433.P13703021996378538221

/-! ## A322433.P12985554573166769395

`lt[abs(A010831(n)), A002620(n)]`
-/

namespace A322433.P12985554573166769395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010831 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322433.P12985554573166769395

/-! ## A322433.P9821473913046946650

`lt[abs(A010831(n)), A161680(n)]`
-/

namespace A322433.P9821473913046946650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010831 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322433.P9821473913046946650

/-! ## A322433.P11657976267198761606

`lt[abs(A010831(n)), A259934(n)]`
-/

namespace A322433.P11657976267198761606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010831 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322433.P11657976267198761606

/-! ## A322433.P13064503110382986543

`lt[A035214(n), acot(A010831(n))²]`
-/

namespace A322433.P13064503110382986543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A010831 n : ℝ) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A322433.P13064503110382986543

/-! ## A322433.P2453357479413100220

`lt[abs(A010831(n)), A001031(n+1)]`
-/

namespace A322433.P2453357479413100220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010831 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001031 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322433.P2453357479413100220

/-! ## A322433.P1407374820274982761

`lt[abs(A010831(n)), A010846(n+1)]`
-/

namespace A322433.P1407374820274982761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010831 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322433.P1407374820274982761

/-! ## A322433.P18034581567527812562

`lt[abs(A010831(n)), A010847(n+1)]`
-/

namespace A322433.P18034581567527812562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010831 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322433.P18034581567527812562

/-! ## A322433.P4990939503069104602

`lt[abs(A010831(n)), A010848(n+1)]`
-/

namespace A322433.P4990939503069104602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010831 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322433.P4990939503069104602

/-! ## A322433.P6928557949181031594

`lt[A035214(2*(n+1)), acot(A010831(n))]`
-/

namespace A322433.P6928557949181031594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (2 * (n + 1))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A010831 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A322433.P6928557949181031594

/-!
# A322434: Numbers k that are the numerator of a harmonic number such that k is divisible by the square of a prime >= 5.

The programs for A322434, there is no canonical definition to state claims against.
-/

/-! ## A322434.P17155062387741718496

`A001008(A326227(n+1))`
-/

namespace A322434.P17155062387741718496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (A326227 (n + 1)).toNat

end

end A322434.P17155062387741718496

/-! ## A322434.P9103379467866497207

`A035048(2*A326227(n+1))`
-/

namespace A322434.P9103379467866497207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035048 (2 * A326227 (n + 1)).toNat

end

end A322434.P9103379467866497207

/-! ## A322434.P466032042370949533

`A001008(eq[A010144(n+1), A117494(n+1)])`
-/

namespace A322434.P466032042370949533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A322434.P466032042370949533

/-! ## A322434.P12565090509110252494

`A001008(eq[A070032(n+1), A319699(n+1)])`
-/

namespace A322434.P12565090509110252494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A322434.P12565090509110252494

/-! ## A322434.P18170344276713777724

`A001008(eq[1, A326690(n+1)%A109244(n)])`
-/

namespace A322434.P18170344276713777724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326690 (n + 1)) (A109244 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322434.P18170344276713777724

/-!
# A322435: Number of pairs of factorizations of n into factors > 1 where no factor of the second divides any factor of the first.

The programs for A322435, there is no canonical definition to state claims against.
-/

/-! ## A322435.P16597488115389247705

`A028422(n+1)+A167688(n+1)^n²`
-/

namespace A322435.P16597488115389247705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1) + A167688 (n + 1) ^ n ^ 2

end

end A322435.P16597488115389247705

/-! ## A322435.P7248493554862458932

`A351700(A050340(n+1))-A001222(n+1)`
-/

namespace A322435.P7248493554862458932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351700 (A050340 (n + 1)).toNat - A001222 (n + 1)

end

end A322435.P7248493554862458932

/-! ## A322435.P4746359275968734788

`A320266(n+1)-A001221(A318476(n+1))`
-/

namespace A322435.P4746359275968734788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320266 (n + 1) - A001221 (A318476 (n + 1)).toNat

end

end A322435.P4746359275968734788

/-! ## A322435.P16044659873060481356

`A038499(A317141(n+1)%A106313(n+1))`
-/

namespace A322435.P16044659873060481356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038499 (Int.tmod (A317141 (n + 1)) (A106313 (n + 1))).toNat

end

end A322435.P16044659873060481356

/-! ## A322435.P7454734454561122850

`A169991(A046523(n+1)%A330107(2*(n+1)))`
-/

namespace A322435.P7454734454561122850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169991 (Int.tmod (A046523 (n + 1)) (A330107 (2 * (n + 1)))).toNat

end

end A322435.P7454734454561122850

/-!
# A322436: Number of pairs of factorizations of n into factors > 1 where no factor of the second properly divides any factor of the first.

The programs for A322436, there is no canonical definition to state claims against.
-/

/-! ## A322436.P2273536191429658184

`A052488(A001055(n+1))%Δ[A344776(n)]`
-/

namespace A322436.P2273536191429658184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052488 (A001055 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A322436.P2273536191429658184

/-! ## A322436.P3189625491573685711

`A157271(A301830(n+1)^A062513(n+1))`
-/

namespace A322436.P3189625491573685711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (SequenceMachineLib.roundAway ((A301830 (n + 1) : ℚ) ^ (A062513 (n + 1) : ℤ))).toNat

end

end A322436.P3189625491573685711

/-! ## A322436.P10394141574844548978

`A157271(A062513(n+1)²*A301830(n+1))`
-/

namespace A322436.P10394141574844548978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A062513 (n + 1) ^ 2 * A301830 (n + 1)).toNat

end

end A322436.P10394141574844548978

/-! ## A322436.P8772126808330904617

`A373503(A050356(n+1))`
-/

namespace A322436.P8772126808330904617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373503 (A050356 (n + 1)).toNat

end

end A322436.P8772126808330904617

/-! ## A322436.P1188826736160484321

`A014420(2^A050336(n+1))`
-/

namespace A322436.P1188826736160484321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014420 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A050336 (n + 1) : ℤ))).toNat

end

end A322436.P1188826736160484321

/-!
# A322437: Number of unordered pairs of factorizations of n into factors > 1 where no factor of one divides any factor of the other.

The programs for A322437, there is no canonical definition to state claims against.
-/

/-! ## A322437.P7671253026017017653

`A057515(A322438(n+1)^A366522(n+1))`
-/

namespace A322437.P7671253026017017653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (SequenceMachineLib.roundAway ((A322438 (n + 1) : ℚ) ^ (A366522 (n + 1) : ℤ))).toNat

end

end A322437.P7671253026017017653

/-! ## A322437.P4927996589001477944

`A103921(A322438(n+1)^A000120(n+4))`
-/

namespace A322437.P4927996589001477944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (SequenceMachineLib.roundAway ((A322438 (n + 1) : ℚ) ^ (A000120 (n + 4) : ℤ))).toNat

end

end A322437.P4927996589001477944

/-! ## A322437.P15741236363040828493

`A274912(A322438(n+1)%A299852(n+2))`
-/

namespace A322437.P15741236363040828493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274912 (Int.tmod (A322438 (n + 1)) (A299852 (n + 2))).toNat

end

end A322437.P15741236363040828493

/-! ## A322437.P3913937682514432292

`A103921(A322438(n+1)^A208244(2*n+3))`
-/

namespace A322437.P3913937682514432292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (SequenceMachineLib.roundAway ((A322438 (n + 1) : ℚ) ^ (A208244 (2 * n + 3) : ℤ))).toNat

end

end A322437.P3913937682514432292

/-! ## A322437.P5840753362515861034

`A222303(A322438(n+1)^4)`
-/

namespace A322437.P5840753362515861034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222303 (A322438 (n + 1) ^ 4).toNat

end

end A322437.P5840753362515861034

/-! ## A322437.P2439197581874555596

`A326702(A322438(n+1)^4)`
-/

namespace A322437.P2439197581874555596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 (A322438 (n + 1) ^ 4).toNat

end

end A322437.P2439197581874555596

/-! ## A322437.P4584321074787303153

`A005811(A322438(n+1)^7)`
-/

namespace A322437.P4584321074787303153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A322438 (n + 1) ^ 7).toNat

end

end A322437.P4584321074787303153

/-! ## A322437.P15689874459027606849

`A212663(15^A322438(n+1))`
-/

namespace A322437.P15689874459027606849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212663 (SequenceMachineLib.roundAway ((15 : ℚ) ^ (A322438 (n + 1) : ℤ))).toNat

end

end A322437.P15689874459027606849

/-! ## A322437.P12849172795624166568

`A322438(n+1)^A007318(n)`
-/

namespace A322437.P12849172795624166568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322438 (n + 1) : ℚ) ^ (A007318 n : ℤ)

end

end A322437.P12849172795624166568

/-! ## A322437.P5831488366026609236

`A322438(n+1)^A035343(n)`
-/

namespace A322437.P5831488366026609236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322438 (n + 1) : ℚ) ^ (A035343 n : ℤ)

end

end A322437.P5831488366026609236

/-! ## A322437.P6730668265832193716

`A322438(n+1)^A038207(n)`
-/

namespace A322437.P6730668265832193716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322438 (n + 1) : ℚ) ^ (A038207 n : ℤ)

end

end A322437.P6730668265832193716

/-! ## A322437.P8114043835267850304

`A322438(n+1)^A108299(n)²`
-/

namespace A322437.P8114043835267850304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322438 (n + 1) : ℚ) ^ (A108299 n ^ 2 : ℤ)

end

end A322437.P8114043835267850304

/-! ## A322437.P9961617546399564764

`A322438(n+1)^A283113(n+1)`
-/

namespace A322437.P9961617546399564764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322438 (n + 1) : ℚ) ^ (A283113 (n + 1) : ℤ)

end

end A322437.P9961617546399564764

/-! ## A322437.P13386084026778150005

`A322438(n+1)^A110243(2*n+3)²`
-/

namespace A322437.P13386084026778150005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322438 (n + 1) : ℚ) ^ (A110243 (2 * n + 3) ^ 2 : ℤ)

end

end A322437.P13386084026778150005

/-! ## A322437.P16014882965705143130

`A000065(A322452(n+1))^A007318(n)`
-/

namespace A322437.P16014882965705143130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000065 (A322452 (n + 1)).toNat : ℚ) ^ (A007318 n : ℤ)

end

end A322437.P16014882965705143130

/-! ## A322437.P271705295231361991

`A000065(A322452(n+1))^A008288(n)`
-/

namespace A322437.P271705295231361991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000065 (A322452 (n + 1)).toNat : ℚ) ^ (A008288 n : ℤ)

end

end A322437.P271705295231361991

/-! ## A322437.P12777556469897734630

`A000065(A322452(n+1))^A008459(n)`
-/

namespace A322437.P12777556469897734630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000065 (A322452 (n + 1)).toNat : ℚ) ^ (A008459 n : ℤ)

end

end A322437.P12777556469897734630

/-! ## A322437.P5364763126616921179

`A000065(A322452(n+1))^A009998(n)`
-/

namespace A322437.P5364763126616921179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000065 (A322452 (n + 1)).toNat : ℚ) ^ (A009998 n : ℤ)

end

end A322437.P5364763126616921179

/-! ## A322437.P11197540580299568017

`A000065(A322452(n+1))^A014421(n)`
-/

namespace A322437.P11197540580299568017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000065 (A322452 (n + 1)).toNat : ℚ) ^ (A014421 n : ℤ)

end

end A322437.P11197540580299568017

/-! ## A322437.P1433657190308316261

`A001222(A322452(n+1)!)^A007318(n)`
-/

namespace A322437.P1433657190308316261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (Nat.factorial (A322452 (n + 1)).toNat) : ℚ) ^ (A007318 n : ℤ)

end

end A322437.P1433657190308316261

/-!
# A322438: Number of unordered pairs of factorizations of n into factors > 1 where no factor of one properly divides any factor of the other.

The programs for A322438, there is no canonical definition to state claims against.
-/

/-! ## A322438.P10366809008525509143

`A145996(A322437(n+1)+1)`
-/

namespace A322438.P10366809008525509143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145996 (A322437 (n + 1) + 1).toNat

end

end A322438.P10366809008525509143

/-! ## A322438.P17624652179651054880

`A334033(3^A322437(n+1))`
-/

namespace A322438.P17624652179651054880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334033 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A322437 (n + 1) : ℤ))).toNat

end

end A322438.P17624652179651054880

/-! ## A322438.P15368452742567701082

`A007053(A322437(n+1)^A249095(n))`
-/

namespace A322438.P15368452742567701082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (SequenceMachineLib.roundAway ((A322437 (n + 1) : ℚ) ^ (A249095 n : ℤ))).toNat

end

end A322438.P15368452742567701082

/-! ## A322438.P3691645640748382946

`A131577(A322437(n+1)^A249095(n))`
-/

namespace A322438.P3691645640748382946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (SequenceMachineLib.roundAway ((A322437 (n + 1) : ℚ) ^ (A249095 n : ℤ))).toNat

end

end A322438.P3691645640748382946

/-! ## A322438.P11342030470564108542

`A056654(A322437(n+1)^A249095(n)+1)`
-/

namespace A322438.P11342030470564108542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056654 (SequenceMachineLib.roundAway ((A322437 (n + 1) : ℚ) ^ (A249095 n : ℤ) + 1)).toNat

end

end A322438.P11342030470564108542

/-! ## A322438.P13581923088806834140

`A160161(A322437(n+1)%A160161(3*n+2))`
-/

namespace A322438.P13581923088806834140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160161 (Int.tmod (A322437 (n + 1)) (A160161 (3 * n + 2))).toNat

end

end A322438.P13581923088806834140

/-! ## A322438.P6092108395408770982

`A160161(A322437(n+1)%A231227(n+1))`
-/

namespace A322438.P6092108395408770982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160161 (Int.tmod (A322437 (n + 1)) (A231227 (n + 1))).toNat

end

end A322438.P6092108395408770982

/-!
# A322439: Number of ordered pairs of integer partitions of n where no part of the first is greater than any part of the second.

The programs for A322439, there is no canonical definition to state claims against.
-/

/-! ## A322439.P174134703764537319

`A176572(A058331(n))`
-/

namespace A322439.P174134703764537319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176572 (A058331 n).toNat

end

end A322439.P174134703764537319

/-! ## A322439.P13268547408636946431

`A176572(A000124(2*n)-n)`
-/

namespace A322439.P13268547408636946431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176572 (A000124 (2 * n) - (n : ℤ)).toNat

end

end A322439.P13268547408636946431

/-! ## A322439.P10221768194633966535

`A119620(3*n)+A077267(A013529(n))`
-/

namespace A322439.P10221768194633966535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (3 * n) + A077267 (A013529 n).toNat

end

end A322439.P10221768194633966535

/-!
# A322440: Number of pairs of integer partitions of n where every part of the first is less than every part of the second.

The programs for A322440, there is no canonical definition to state claims against.
-/

/-! ## A322440.P1361725884924257101

`A000032(n)-A328114(A001901(n))`
-/

namespace A322440.P1361725884924257101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - A328114 (A001901 n).toNat

end

end A322440.P1361725884924257101

/-! ## A322440.P10868442964607717876

`A218153(n)-A122202(A120033(n))`
-/

namespace A322440.P10868442964607717876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218153 n - A122202 (A120033 n).toNat

end

end A322440.P10868442964607717876

/-! ## A322440.P5226783216521726781

`or(A285498(A113505(n+5)), A308922(3*n+4))`
-/

namespace A322440.P5226783216521726781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285498 (A113505 (n + 5)).toNat) (A308922 (3 * n + 4))

end

end A322440.P5226783216521726781

/-! ## A322440.P8321269472890421741

`A308922(3*n+4)+A010051(A073520(3*n+5))`
-/

namespace A322440.P8321269472890421741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308922 (3 * n + 4) + A010051 (A073520 (3 * n + 5)).toNat

end

end A322440.P8321269472890421741

/-!
# A322441: Number of pairs of set partitions of {1,...,n} where no block of one is a subset or equal to any block of the other.

The programs for A322441, there is no canonical definition to state claims against.
-/

/-! ## A322441.P6792711339010238047

`floor(acot(n))+2*A339626(n)`
-/

namespace A322441.P6792711339010238047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + 2 * A339626 n

end

end A322441.P6792711339010238047

/-! ## A322441.P11649559165833190636

`A000007(n)+2*A339626(n)`
-/

namespace A322441.P11649559165833190636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A339626 n

end

end A322441.P11649559165833190636

/-! ## A322441.P205036256922480848

`A017887(n)+2*A339626(n)`
-/

namespace A322441.P205036256922480848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 n + 2 * A339626 n

end

end A322441.P205036256922480848

/-! ## A322441.P13640416919406497238

`2*A339626(n)-A008683(2*(n+1)²)`
-/

namespace A322441.P13640416919406497238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339626 n - A008683 (2 * (n + 1) ^ 2)

end

end A322441.P13640416919406497238

/-! ## A322441.P5132528473637193803

`(2*A339626(n))^A001221(A000079(n))`
-/

namespace A322441.P5132528473637193803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A339626 n : ℚ) ^ (A001221 (A000079 n).toNat : ℤ)

end

end A322441.P5132528473637193803

/-!
# A322442: Number of pairs of set partitions of {1,...,n} where every block of one is a subset or superset of some block of the other.

The programs for A322442, there is no canonical definition to state claims against.
-/

/-! ## A322442.P15932990548126204749

`A000201(A241037(n)+A003692(n))`
-/

namespace A322442.P15932990548126204749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A241037 n + A003692 n).toNat

end

end A322442.P15932990548126204749

/-! ## A322442.P6804575182806339931

`A000201(A334222(n)+A003692(n))`
-/

namespace A322442.P6804575182806339931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A334222 n + A003692 n).toNat

end

end A322442.P6804575182806339931

/-!
# A322443: Base-8 deletable primes (written in base 10).

The programs for A322443, there is no canonical definition to state claims against.
-/

/-! ## A322443.P14170172473905276138

`A000040(lt[A078027(n), (n+1)²/∏{p}[n+1, #]])`
-/

namespace A322443.P14170172473905276138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A322443.P14170172473905276138

/-! ## A322443.P12586019021826788289

`A000040(lt[A334496(n+4), A165761(n+1)])`
-/

namespace A322443.P12586019021826788289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334496 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A322443.P12586019021826788289

/-! ## A322443.P16096533014829213022

`∩[A061022(n+1), A389482(n+1)]`
-/

namespace A322443.P16096533014829213022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322443.P16096533014829213022

/-! ## A322443.P7008949621521738643

`∩[A061022(n+1), A389483(n+1)]`
-/

namespace A322443.P7008949621521738643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322443.P7008949621521738643

/-! ## A322443.P200322062303512431

`∩[A062353(n+1), A389482(n+1)]`
-/

namespace A322443.P200322062303512431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322443.P200322062303512431

/-!
# A322444: Primes that are not base-8 deletable primes (written in base 10).

The programs for A322444, there is no canonical definition to state claims against.
-/

/-! ## A322444.P843062347177932927

`A057751(A321485(∑[(n+1)/∏{p}[n+1, #]]))`
-/

namespace A322444.P843062347177932927
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057751 (A321485 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A322444.P843062347177932927

/-! ## A322444.P3318584425718316748

`A359138(A054996(n+5)%A067822(n+2))`
-/

namespace A322444.P3318584425718316748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359138 (Int.tmod (A054996 (n + 5)) (A067822 (n + 2))).toNat

end

end A322444.P3318584425718316748

/-!
# A322445: Smallest positive integer m such that n divides A297707(m).

The programs for A322445, there is no canonical definition to state claims against.
-/

/-! ## A322445.P3341281361139252040

`A002034(A038388(n+1)%A141214(n))`
-/

namespace A322445.P3341281361139252040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (Int.tmod (A038388 (n + 1)) (A141214 n)).toNat

end

end A322445.P3341281361139252040

/-! ## A322445.P14766588211370765592

`A002034(lcm(A038388(n+1), A129116(n+1)))`
-/

namespace A322445.P14766588211370765592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (Int.lcm (A038388 (n + 1)) (A129116 (n + 1)))

end

end A322445.P14766588211370765592

/-! ## A322445.P9356760680551714033

`A002034(lcm(A002034(n+1), A098094(3*n+4)))`
-/

namespace A322445.P9356760680551714033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (Int.lcm (A002034 (n + 1)) (A098094 (3 * n + 4)))

end

end A322445.P9356760680551714033

/-! ## A322445.P823948284552969297

`A345931(A318672(A141214(n))*A345931(n+1))`
-/

namespace A322445.P823948284552969297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345931 (A318672 (A141214 n).toNat * A345931 (n + 1)).toNat

end

end A322445.P823948284552969297

/-! ## A322445.P10656602224560038358

`A345931(A333381(3*n+1)*A345931(n+1))`
-/

namespace A322445.P10656602224560038358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345931 (A333381 (3 * n + 1) * A345931 (n + 1)).toNat

end

end A322445.P10656602224560038358

/-!
# A322447: Numbers k where Sum_{d | k} 1/rad(d) increases to a record.

The programs for A322447, there is no canonical definition to state claims against.
-/

/-! ## A322447.P2771414413824792093

`record[A323506(A066490(A001972(n)))]`
-/

namespace A322447.P2771414413824792093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323506 (A066490 (A001972 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322447.P2771414413824792093

/-! ## A322447.P12058746262343263344

`record[A323506(n)/A003557(A065941(n))]`
-/

namespace A322447.P12058746262343263344
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323506 n : ℚ) / (A003557 (A065941 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322447.P12058746262343263344

/-! ## A322447.P6145014524449934856

`record[A323506(A334140(n+1)%A128852(n+1))]`
-/

namespace A322447.P6145014524449934856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323506 (Int.tmod (A334140 (n + 1)) (A128852 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322447.P6145014524449934856

/-! ## A322447.P7200081444722747337

`record[gcd(A151934(n), A323506(n))]`
-/

namespace A322447.P7200081444722747337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151934 n) (A323506 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322447.P7200081444722747337

/-! ## A322447.P7411217084681617315

`record[root(A323506(n), A184303(n+1))]`
-/

namespace A322447.P7411217084681617315
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A323506 n : ℝ) ^ (1 / (A184303 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322447.P7411217084681617315

/-!
# A322448: Numbers whose prime factorization contains at least one composite exponent.

The programs for A322448, there is no canonical definition to state claims against.
-/

/-! ## A322448.P8733178742729838162

`∪[A381213(n+1), A381400(n+1)]`
-/

namespace A322448.P8733178742729838162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322448.P8733178742729838162

/-! ## A322448.P18129905575796397578

`lt[A366994(n+1), n]+1`
-/

namespace A322448.P18129905575796397578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366994 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A322448.P18129905575796397578

/-! ## A322448.P17226451040875133740

`lt[A366994(A028310(n)), n]`
-/

namespace A322448.P17226451040875133740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366994 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A322448.P17226451040875133740

/-!
# A322450: Number of permutations of [2n] in which the size of the last cycle is n and the cycles are ordered by increasing smallest elements.

The programs for A322450, there is no canonical definition to state claims against.
-/

/-! ## A322450.P6515521848902252086

`(4-6/(n+1))*a(n-1)*round(1/acot(n²-n))` with `a(0)=1`
-/

namespace A322450.P6515521848902252086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 - 6 / (n + 1 : ℚ)) * a (n - 1) * (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot ((n ^ 2 : ℤ) - (n : ℤ) : ℝ)) : ℚ)

end

end A322450.P6515521848902252086

/-! ## A322450.P8404330140507775424

`A145888(A058331(n))`
-/

namespace A322450.P8404330140507775424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145888 (A058331 n).toNat

end

end A322450.P8404330140507775424

/-! ## A322450.P13503133093134876169

`A136125(A004277(n²))`
-/

namespace A322450.P13503133093134876169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136125 (A004277 (n ^ 2)).toNat

end

end A322450.P13503133093134876169

/-! ## A322450.P7557174610034259355

`A060593(n)/A028310(n)`
-/

namespace A322450.P7557174610034259355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060593 n : ℚ) / (A028310 n : ℚ)

end

end A322450.P7557174610034259355

/-! ## A322450.P5292684390940099053

`A001710(2*n)/A028310(∑[n])`
-/

namespace A322450.P5292684390940099053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001710 (2 * n) : ℚ) / (A028310 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A322450.P5292684390940099053

/-!
# A322452: Number of factorizations of n into factors > 1 not including any prime powers.

The programs for A322452, there is no canonical definition to state claims against.
-/

/-! ## A322452.P1705937610480188178

`∑{d}[n+1, A001055(#)*A129667((n+1)/#)]`
-/

namespace A322452.P1705937610480188178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001055 d * A129667 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322452.P1705937610480188178

/-! ## A322452.P13377767260401474696

`A320439(A064988(n+1))`
-/

namespace A322452.P13377767260401474696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320439 (A064988 (n + 1)).toNat

end

end A322452.P13377767260401474696

/-! ## A322452.P2277287767968017926

`A322454(A181819(n+1))`
-/

namespace A322452.P2277287767968017926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322454 (A181819 (n + 1)).toNat

end

end A322452.P2277287767968017926

/-! ## A322452.P11571953268085792856

`A078687(A050320(A064549(n+1))*A054977(n))`
-/

namespace A322452.P11571953268085792856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078687 (A050320 (A064549 (n + 1)).toNat * A054977 n).toNat

end

end A322452.P11571953268085792856

/-! ## A322452.P9042171960773091860

`A329903(A050320(n+1)*A219194(n+1))`
-/

namespace A322452.P9042171960773091860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329903 (A050320 (n + 1) * A219194 (n + 1)).toNat

end

end A322452.P9042171960773091860

/-! ## A322452.P13887876997856241400

`A318809(A046523(n+1))-A092248(n+1)`
-/

namespace A322452.P13887876997856241400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318809 (A046523 (n + 1)).toNat - A092248 (n + 1)

end

end A322452.P13887876997856241400

/-! ## A322452.P4201464742591094980

`A323436(A328855(n+1))-A069513(n+1)`
-/

namespace A322452.P4201464742591094980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323436 (A328855 (n + 1)).toNat - A069513 (n + 1)

end

end A322452.P4201464742591094980

/-! ## A322452.P7325644775479332441

`A318809(n+1)-A092248(n+1)`
-/

namespace A322452.P7325644775479332441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318809 (n + 1) - A092248 (n + 1)

end

end A322452.P7325644775479332441

/-! ## A322452.P2051102151554052365

`A318809(n+1)-A001221(n+1)%2`
-/

namespace A322452.P2051102151554052365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318809 (n + 1) - Int.tmod (A001221 (n + 1)) 2

end

end A322452.P2051102151554052365

/-! ## A322452.P5025656011219104328

`A371090(A354911(n+1)+A334933(n+1))`
-/

namespace A322452.P5025656011219104328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371090 (A354911 (n + 1) + A334933 (n + 1)).toNat

end

end A322452.P5025656011219104328

/-!
# A322453: Number of factorizations of n into factors > 1 using only primes and perfect powers.

The programs for A322453, there is no canonical definition to state claims against.
-/

/-! ## A322453.P3359133026542985060

`∑{d}[n+1, A294068(#)]`
-/

namespace A322453.P3359133026542985060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A294068 d

end

end A322453.P3359133026542985060

/-! ## A322453.P7238489115085219185

`A317946(A294875(n+1))+A000688(n+1)`
-/

namespace A322453.P7238489115085219185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317946 (A294875 (n + 1)).toNat + A000688 (n + 1)

end

end A322453.P7238489115085219185

/-! ## A322453.P11758842991508701858

`A000041(∑{e}[n+1, #%#²]%A298170(7*n+2))`
-/

namespace A322453.P11758842991508701858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.tmod ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p % Nat.factorization (f1 n) p ^ 2 : ℕ) : ℤ) (A298170 (7 * n + 2))).toNat

end

end A322453.P11758842991508701858

/-! ## A322453.P5668956730675119658

`A001055(A053812(n+1)^A091050(n+1))`
-/

namespace A322453.P5668956730675119658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (SequenceMachineLib.roundAway ((A053812 (n + 1) : ℚ) ^ (A091050 (n + 1) : ℤ))).toNat

end

end A322453.P5668956730675119658

/-! ## A322453.P2542245520039816555

`A000688(A063958(n+1)^A275812(n+1))`
-/

namespace A322453.P2542245520039816555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (SequenceMachineLib.roundAway ((A063958 (n + 1) : ℚ) ^ (A275812 (n + 1) : ℤ))).toNat

end

end A322453.P2542245520039816555

/-! ## A322453.P7455739560158166778

`A001055(p?[A005361(n+1)]^A091050(n+1))`
-/

namespace A322453.P7455739560158166778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A091050 (n + 1) : ℤ))).toNat

end

end A322453.P7455739560158166778

/-! ## A322453.P7532968642935287101

`A000041(A275812(n+1))%A005843(A344643(n+1))`
-/

namespace A322453.P7532968642935287101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A275812 (n + 1)).toNat) (A005843 (A344643 (n + 1)).toNat)

end

end A322453.P7532968642935287101

/-! ## A322453.P5990615836162823941

`A000041(A091050(n+1))%A000124(A000124(n))`
-/

namespace A322453.P5990615836162823941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A091050 (n + 1)).toNat) (A000124 (A000124 n).toNat)

end

end A322453.P5990615836162823941

/-! ## A322453.P15858009285738580815

`A331851(A324910(n+1))`
-/

namespace A322453.P15858009285738580815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331851 (A324910 (n + 1)).toNat

end

end A322453.P15858009285738580815

/-! ## A322453.P11561812230484806095

`A000041(∑{e}[n+1, A001222(A020639(#)^#)])`
-/

namespace A322453.P11561812230484806095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∑ p ∈ Nat.primeFactors (f1 n), A001222 (A020639 (Nat.factorization (f1 n) p) ^ Nat.factorization (f1 n) p).toNat).toNat

end

end A322453.P11561812230484806095

/-!
# A322454: Number of multiset partitions with no constant parts of a multiset whose multiplicities are the prime indices of n.

The programs for A322454, there is no canonical definition to state claims against.
-/

/-! ## A322454.P17041792097590862672

`A322452(A181821(n+1))`
-/

namespace A322454.P17041792097590862672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322452 (A181821 (n + 1)).toNat

end

end A322454.P17041792097590862672

/-! ## A322454.P15089023687166010091

`A322452(A304660(n+1))`
-/

namespace A322454.P15089023687166010091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322452 (A304660 (n + 1)).toNat

end

end A322454.P15089023687166010091

/-! ## A322454.P2019733603029122125

`A322452(∏{e}[A108951(n+1), A002110(#)])`
-/

namespace A322454.P2019733603029122125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322452 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002110 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A322454.P2019733603029122125

/-! ## A322454.P15859446398426918507

`∏{p}[n+1, C(#%n, #)]*A049107(A124827(n+5))`
-/

namespace A322454.P15859446398426918507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (p % n) p : ℕ) : ℤ) * A049107 (A124827 (n + 5)).toNat

end

end A322454.P15859446398426918507

/-! ## A322454.P5106159465045137804

`A002620(A091536(n)+A033676(n+1))`
-/

namespace A322454.P5106159465045137804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A091536 n + A033676 (n + 1)).toNat

end

end A322454.P5106159465045137804

/-!
# A322455: Sum of n-th powers of the roots of x^3 - 20*x^2 - 9*x - 1.

The programs for A322455, the canonical program `A322455.P14360329525439618554` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322455 has offset 0).

The definition of A322455 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322455.P14360329525439618554

`20*a(n-1)+9*a(n-2)+a(n-3)` with `a(0)=3, a(1)=20, a(2)=418`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A322455

/-- `20*a(n-1)+9*a(n-2)+a(n-3)` -/
def P14360329525439618554.Spec : Prop :=
  ∀ n, (P14360329525439618554.a n : ℤ) = A322455 n

theorem P14360329525439618554.correct : P14360329525439618554.Spec := by
  intro n
  simp only [A322455]

end A322455

/-!
# A322458: Sum of n-th powers of the roots of x^3 - 49*x + 49.

The programs for A322458, the canonical program `A322458.P9788055182211417769` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322458 has offset 0).

The definition of A322458 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322458.P9788055182211417769

`49*a(n-2)-49*a(n-3)` with `a(0)=3, a(1)=0, a(2)=98`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A322458

/-- `49*a(n-2)-49*a(n-3)` -/
def P9788055182211417769.Spec : Prop :=
  ∀ n, P9788055182211417769.a n = A322458 n

theorem P9788055182211417769.correct : P9788055182211417769.Spec := by
  intro n
  simp only [A322458]

end A322458

/-!
# A322459: Sum of n-th powers of the roots of x^3 + 7*x^2 + 14*x + 7.

The programs for A322459, there is no canonical definition to state claims against.
-/

/-! ## A322459.P15913783215654383391

`A008683(C(3*n, n)/(2*n+1)*C(2*n, n))-(4-2/n)*a(n-1)` with `a(0)=3`
-/

namespace A322459.P15913783215654383391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (A008683 (SequenceMachineLib.roundAway ((Nat.choose (3 * n) n : ℚ) / (2 * n + 1 : ℚ) * (Nat.choose (2 * n) n : ℚ))).toNat : ℚ) - (4 - 2 / (n : ℚ)) * a (n - 1)

end

end A322459.P15913783215654383391

/-! ## A322459.P5797989482987684672

`(2/n-4)*a(n-1)-A178225(A001761(n))` with `a(0)=3`
-/

namespace A322459.P5797989482987684672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (2 / (n : ℚ) - 4) * a (n - 1) - (A178225 (A001761 n).toNat : ℚ)

end

end A322459.P5797989482987684672

/-!
# A322462: Numbers on the 0-1-12 line in a spiral on a grid of equilateral triangles.

The programs for A322462, the canonical program `A322462.P17833374923224198763` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322462 has offset 0).

The definition of A322462 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322462.P17833374923224198763

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=12, a(3)=13, a(4)=36`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A322462

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P17833374923224198763.Spec : Prop :=
  ∀ n, P17833374923224198763.a n = A322462 n

theorem P17833374923224198763.correct : P17833374923224198763.Spec := by
  intro n
  simp only [A322462]

end A322462

/-! ## A322462.P3699157195731713477

`∑[(6*n-1)^((n+1)%2)]+1`
-/

namespace A322462.P3699157195731713477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((6 * n : ℤ) - 1) ^ ((n + 1) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A322462.P3699157195731713477

namespace A322462

/-- `∑[(6*n-1)^((n+1)%2)]+1` -/
def P3699157195731713477.Spec : Prop :=
  ∀ n, P3699157195731713477.a n = A322462 n

end A322462

/-! ## A322462.P5163316664992752255

`and(1, n)+6*A110660(n)`
-/

namespace A322462.P5163316664992752255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) + 6 * A110660 n

end

end A322462.P5163316664992752255

namespace A322462

/-- `and(1, n)+6*A110660(n)` -/
def P5163316664992752255.Spec : Prop :=
  ∀ n, P5163316664992752255.a n = A322462 n

end A322462

/-! ## A322462.P13222116604586273070

`A115067(or(1, n))+ceil(n/2)`
-/

namespace A322462.P13222116604586273070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115067 (Nat.lor 1 n) + ⌈(n : ℚ) / 2⌉

end

end A322462.P13222116604586273070

namespace A322462

/-- `A115067(or(1, n))+ceil(n/2)` -/
def P13222116604586273070.Spec : Prop :=
  ∀ n, P13222116604586273070.a n = A322462 n

end A322462

/-! ## A322462.P15305723437402846905

`floor((abs(Δ[2*A059029(n)])+n)*n/2)`
-/

namespace A322462.P15305723437402846905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|f1 (n + 1) - f1 n| + (n : ℤ) : ℚ) * ((n : ℚ) / 2)⌋

end

end A322462.P15305723437402846905

namespace A322462

/-- `floor((abs(Δ[2*A059029(n)])+n)*n/2)` -/
def P15305723437402846905.Spec : Prop :=
  ∀ n, P15305723437402846905.a n = A322462 n

end A322462

/-! ## A322462.P11239458796361688361

`A396652(n)+A317312(n)`
-/

namespace A322462.P11239458796361688361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396652 n + A317312 n

end

end A322462.P11239458796361688361

namespace A322462

/-- `A396652(n)+A317312(n)` -/
def P11239458796361688361.Spec : Prop :=
  ∀ n, P11239458796361688361.a n = A322462 n

end A322462

/-! ## A322462.P427349664369460568

`A062725(n)-A193866(n)`
-/

namespace A322462.P427349664369460568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062725 n - A193866 n

end

end A322462.P427349664369460568

namespace A322462

/-- `A062725(n)-A193866(n)` -/
def P427349664369460568.Spec : Prop :=
  ∀ n, P427349664369460568.a n = A322462 n

end A322462

/-! ## A322462.P5367990467810796881

`A298039(n)-A090381(n)`
-/

namespace A322462.P5367990467810796881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298039 n - A090381 n

end

end A322462.P5367990467810796881

namespace A322462

/-- `A298039(n)-A090381(n)` -/
def P5367990467810796881.Spec : Prop :=
  ∀ n, P5367990467810796881.a n = A322462 n

end A322462

/-! ## A322462.P8534411918698508614

`A273367(n)-A213041(n)`
-/

namespace A322462.P8534411918698508614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273367 n - A213041 n

end

end A322462.P8534411918698508614

namespace A322462

/-- `A273367(n)-A213041(n)` -/
def P8534411918698508614.Spec : Prop :=
  ∀ n, P8534411918698508614.a n = A322462 n

end A322462

/-! ## A322462.P16606250938254455488

`A212959(A052928(n))-1+n`
-/

namespace A322462.P16606250938254455488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212959 (A052928 n).toNat - 1 + (n : ℤ)

end

end A322462.P16606250938254455488

namespace A322462

/-- `A212959(A052928(n))-1+n` -/
def P16606250938254455488.Spec : Prop :=
  ∀ n, P16606250938254455488.a n = A322462 n

end A322462

/-! ## A322462.P5176027917151693463

`A220082(n+1)-A081345(n)`
-/

namespace A322462.P5176027917151693463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220082 (n + 1) - A081345 n

end

end A322462.P5176027917151693463

namespace A322462

/-- `A220082(n+1)-A081345(n)` -/
def P5176027917151693463.Spec : Prop :=
  ∀ n, P5176027917151693463.a n = A322462 n

end A322462

/-! ## A322462.P14745055104655270814

`A354594(A109613(n))-1+n`
-/

namespace A322462.P14745055104655270814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354594 (A109613 n).toNat - 1 + (n : ℤ)

end

end A322462.P14745055104655270814

namespace A322462

/-- `A354594(A109613(n))-1+n` -/
def P14745055104655270814.Spec : Prop :=
  ∀ n, P14745055104655270814.a n = A322462 n

end A322462

/-! ## A322462.P9115277988119923415

`2*A045944(A004526(n))+n`
-/

namespace A322462.P9115277988119923415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045944 (A004526 n).toNat + (n : ℤ)

end

end A322462.P9115277988119923415

namespace A322462

/-- `2*A045944(A004526(n))+n` -/
def P9115277988119923415.Spec : Prop :=
  ∀ n, P9115277988119923415.a n = A322462 n

end A322462

/-! ## A322462.P13957849340018137940

`∪[A003154(n+1), A049598(n)]`
-/

namespace A322462.P13957849340018137940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049598 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322462.P13957849340018137940

namespace A322462

/-- `∪[A003154(n+1), A049598(n)]` -/
def P13957849340018137940.Spec : Prop :=
  ∀ n, (P13957849340018137940.a n : ℤ) = A322462 n

end A322462

/-! ## A322462.P13095272267884495593

`A038608(n)+2*A001082(n+1)`
-/

namespace A322462.P13095272267884495593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n + 2 * A001082 (n + 1)

end

end A322462.P13095272267884495593

namespace A322462

/-- `A038608(n)+2*A001082(n+1)` -/
def P13095272267884495593.Spec : Prop :=
  ∀ n, P13095272267884495593.a n = A322462 n

end A322462

/-! ## A322462.P16620657689204059378

`A004526(n)*A168326(n+1)+n`
-/

namespace A322462.P16620657689204059378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n * A168326 (n + 1) + (n : ℤ)

end

end A322462.P16620657689204059378

namespace A322462

/-- `A004526(n)*A168326(n+1)+n` -/
def P16620657689204059378.Spec : Prop :=
  ∀ n, P16620657689204059378.a n = A322462 n

end A322462

/-! ## A322462.P11435064668051602405

`A354594(A109613(n))+A023443(n)`
-/

namespace A322462.P11435064668051602405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354594 (A109613 n).toNat + A023443 n

end

end A322462.P11435064668051602405

namespace A322462

/-- `A354594(A109613(n))+A023443(n)` -/
def P11435064668051602405.Spec : Prop :=
  ∀ n, P11435064668051602405.a n = A322462 n

end A322462

/-! ## A322462.P893997788557635300

`A266725(n)+2*A266725(A052928(n))`
-/

namespace A322462.P893997788557635300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266725 n + 2 * A266725 (A052928 n).toNat

end

end A322462.P893997788557635300

namespace A322462

/-- `A266725(n)+2*A266725(A052928(n))` -/
def P893997788557635300.Spec : Prop :=
  ∀ n, P893997788557635300.a n = A322462 n

end A322462

/-! ## A322462.P18230898934726507233

`A006370(A004442(n))*A006370(n)+n`
-/

namespace A322462.P18230898934726507233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A004442 n).toNat * A006370 n + (n : ℤ)

end

end A322462.P18230898934726507233

namespace A322462

/-- `A006370(A004442(n))*A006370(n)+n` -/
def P18230898934726507233.Spec : Prop :=
  ∀ n, P18230898934726507233.a n = A322462 n

end A322462

/-! ## A322462.P10360363127018176516

`∪[A032528(2*n+1)-1, A032528(2*n+1)]`
-/

namespace A322462.P10360363127018176516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 (2 * n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322462.P10360363127018176516

namespace A322462

/-- `∪[A032528(2*n+1)-1, A032528(2*n+1)]` -/
def P10360363127018176516.Spec : Prop :=
  ∀ n, (P10360363127018176516.a n : ℤ) = A322462 n

end A322462

/-!
# A322463: Reverse runs of zeros in binary expansion of n and convert back to decimal.

The programs for A322463, there is no canonical definition to state claims against.
-/

/-! ## A322463.P13431254896804229414

`A130920(A083928(3*n+4)+A057511(n))`
-/

namespace A322463.P13431254896804229414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130920 (A083928 (3 * n + 4) + A057511 n).toNat

end

end A322463.P13431254896804229414

/-!
# A322465: Numbers on the 0-9-10-line in a spiral on an equilateral triangular lattice.

The programs for A322465, the canonical program `A322465.P17806172642987201766` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322465 has offset 0).

The definition of A322465 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322465.P17806172642987201766

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=9, a(2)=10, a(3)=31, a(4)=32`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A322465

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P17806172642987201766.Spec : Prop :=
  ∀ n, P17806172642987201766.a n = A322465 n

theorem P17806172642987201766.correct : P17806172642987201766.Spec := by
  intro n
  simp only [A322465]

end A322465

/-! ## A322465.P17226050648106308671

`∑[(3*n+1)*Δ[or(1, n)]]+n`
-/

namespace A322465.P17226050648106308671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A322465.P17226050648106308671

namespace A322465

/-- `∑[(3*n+1)*Δ[or(1, n)]]+n` -/
def P17226050648106308671.Spec : Prop :=
  ∀ n, P17226050648106308671.a n = A322465 n

end A322465

/-! ## A322465.P12476616369788250153

`∑[A016945(n)^(n%2)]-1`
-/

namespace A322465.P12476616369788250153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A322465.P12476616369788250153

namespace A322465

/-- `∑[A016945(n)^(n%2)]-1` -/
def P12476616369788250153.Spec : Prop :=
  ∀ n, P12476616369788250153.a n = A322465 n

end A322465

/-! ## A322465.P12073675795004162678

`A033580(A110654(n))+n`
-/

namespace A322465.P12073675795004162678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033580 (A110654 n).toNat + (n : ℤ)

end

end A322465.P12073675795004162678

namespace A322465

/-- `A033580(A110654(n))+n` -/
def P12073675795004162678.Spec : Prop :=
  ∀ n, P12073675795004162678.a n = A322465 n

end A322465

/-! ## A322465.P4492128863116298453

`∑[(6*n+3)^A323879(A328579(n))]-1`
-/

namespace A322465.P4492128863116298453
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * n + 3 : ℚ) ^ (A323879 (A328579 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A322465.P4492128863116298453

namespace A322465

/-- `∑[(6*n+3)^A323879(A328579(n))]-1` -/
def P4492128863116298453.Spec : Prop :=
  ∀ n, P4492128863116298453.a n = (A322465 n : ℚ)

end A322465

/-! ## A322465.P16582883360104253040

`A274757(n+1)+A014601(n)-A045943(n)`
-/

namespace A322465.P16582883360104253040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274757 (n + 1) + (A014601 n - A045943 n)

end

end A322465.P16582883360104253040

namespace A322465

/-- `A274757(n+1)+A014601(n)-A045943(n)` -/
def P16582883360104253040.Spec : Prop :=
  ∀ n, P16582883360104253040.a n = A322465 n

end A322465

/-! ## A322465.P8344005981907818330

`A062717(A109613(n+1))+n`
-/

namespace A322465.P8344005981907818330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062717 (A109613 (n + 1)).toNat + (n : ℤ)

end

end A322465.P8344005981907818330

namespace A322465

/-- `A062717(A109613(n+1))+n` -/
def P8344005981907818330.Spec : Prop :=
  ∀ n, P8344005981907818330.a n = A322465 n

end A322465

/-! ## A322465.P1379491331388108335

`A062717(A000035(n)+1+n)+n`
-/

namespace A322465.P1379491331388108335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062717 (A000035 n + 1 + (n : ℤ)).toNat + (n : ℤ)

end

end A322465.P1379491331388108335

namespace A322465

/-- `A062717(A000035(n)+1+n)+n` -/
def P1379491331388108335.Spec : Prop :=
  ∀ n, P1379491331388108335.a n = A322465 n

end A322465

/-! ## A322465.P7858707965189981353

`A047838(n+2)+(n+1)*A097062(n+1)`
-/

namespace A322465.P7858707965189981353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (n + 2) + (n + 1 : ℤ) * A097062 (n + 1)

end

end A322465.P7858707965189981353

namespace A322465

/-- `A047838(n+2)+(n+1)*A097062(n+1)` -/
def P7858707965189981353.Spec : Prop :=
  ∀ n, P7858707965189981353.a n = A322465 n

end A322465

/-! ## A322465.P12420137946350109015

`A001281(n+1)*A001281(A004442(n+1))+n`
-/

namespace A322465.P12420137946350109015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (n + 1) * A001281 (A004442 (n + 1)).toNat + (n : ℤ)

end

end A322465.P12420137946350109015

namespace A322465

/-- `A001281(n+1)*A001281(A004442(n+1))+n` -/
def P12420137946350109015.Spec : Prop :=
  ∀ n, P12420137946350109015.a n = A322465 n

end A322465

/-! ## A322465.P7544431984963295290

`A062717(A004526(n+1)+A004526(n+1)+1)+n`
-/

namespace A322465.P7544431984963295290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062717 (A004526 (n + 1) + A004526 (n + 1) + 1).toNat + (n : ℤ)

end

end A322465.P7544431984963295290

namespace A322465

/-- `A062717(A004526(n+1)+A004526(n+1)+1)+n` -/
def P7544431984963295290.Spec : Prop :=
  ∀ n, P7544431984963295290.a n = A322465 n

end A322465

/-! ## A322465.P4450099136357846404

`A032528(n)+A059029(A059029(n))+n`
-/

namespace A322465.P4450099136357846404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n + (A059029 (A059029 n).toNat + (n : ℤ))

end

end A322465.P4450099136357846404

namespace A322465

/-- `A032528(n)+A059029(A059029(n))+n` -/
def P4450099136357846404.Spec : Prop :=
  ∀ n, P4450099136357846404.a n = A322465 n

end A322465

/-! ## A322465.P14790683589337364548

`A062717(A186422(2*n+1))+n`
-/

namespace A322465.P14790683589337364548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062717 (A186422 (2 * n + 1)).toNat + (n : ℤ)

end

end A322465.P14790683589337364548

namespace A322465

/-- `A062717(A186422(2*n+1))+n` -/
def P14790683589337364548.Spec : Prop :=
  ∀ n, P14790683589337364548.a n = A322465 n

end A322465

/-! ## A322465.P1039741023075408898

`A186423(A201629(2*n+1))+n`
-/

namespace A322465.P1039741023075408898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186423 (A201629 (2 * n + 1)).toNat + (n : ℤ)

end

end A322465.P1039741023075408898

namespace A322465

/-- `A186423(A201629(2*n+1))+n` -/
def P1039741023075408898.Spec : Prop :=
  ∀ n, P1039741023075408898.a n = A322465 n

end A322465

/-! ## A322465.P16359467466998569774

`A095894(n)-A001057(A016777(n))`
-/

namespace A322465.P16359467466998569774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095894 n - A001057 (A016777 n).toNat

end

end A322465.P16359467466998569774

namespace A322465

/-- `A095894(n)-A001057(A016777(n))` -/
def P16359467466998569774.Spec : Prop :=
  ∀ n, P16359467466998569774.a n = A322465 n

end A322465

/-! ## A322465.P11881587057940096291

`A062717(A193832(A186423(n+1)))+n`
-/

namespace A322465.P11881587057940096291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062717 (A193832 (A186423 (n + 1)).toNat).toNat + (n : ℤ)

end

end A322465.P11881587057940096291

namespace A322465

/-- `A062717(A193832(A186423(n+1)))+n` -/
def P11881587057940096291.Spec : Prop :=
  ∀ n, P11881587057940096291.a n = A322465 n

end A322465

/-!
# A322468: Numbers that are sums of consecutive tetrahedral numbers.

The programs for A322468, there is no canonical definition to state claims against.
-/

/-! ## A322468.P15037878582160963027

`lt[A341413(A093466(n+1)), A279278(n)]`
-/

namespace A322468.P15037878582160963027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341413 (A093466 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279278 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322468.P15037878582160963027

/-! ## A322468.P15177977676641591993

`lt[A096443(n), A055396(A250120(2*n+1))]`
-/

namespace A322468.P15177977676641591993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A250120 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322468.P15177977676641591993

/-!
# A322471: Base-9 deletable primes (written in base 10).

The programs for A322471, there is no canonical definition to state claims against.
-/

/-! ## A322471.P6189331664575694605

`eq[A051338(A129402(n)), A269252(n+1)]`
-/

namespace A322471.P6189331664575694605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051338 (A129402 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269252 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A322471.P6189331664575694605

/-! ## A322471.P3237015345721208984

`lt[A355739(A086571(2*(n+1))), A105700(2*n)]`
-/

namespace A322471.P3237015345721208984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355739 (A086571 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322471.P3237015345721208984

/-! ## A322471.P8958926021726809387

`eq[A211779(n+1), A325636(A360068(n)+1)]+1`
-/

namespace A322471.P8958926021726809387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211779 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325636 (A360068 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A322471.P8958926021726809387

/-! ## A322471.P978672023622347480

`∩[A176162(n+1), A346127(n+1)]`
-/

namespace A322471.P978672023622347480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322471.P978672023622347480

/-!
# A322472: Primes that are not base-9 deletable primes (written in base 10).

The programs for A322472, there is no canonical definition to state claims against.
-/

/-! ## A322472.P3767280220063476260

`∩[A058341(n+1), A100278(n+1)]`
-/

namespace A322472.P3767280220063476260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322472.P3767280220063476260

/-! ## A322472.P7951811534441582909

`∩[A100278(n+1), A111055(n+1)]`
-/

namespace A322472.P7951811534441582909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322472.P7951811534441582909

/-!
# A322474: 

The programs for A322474, there is no canonical definition to state claims against.
-/

/-! ## A322474.P14698000582920767594

`A336835(A109613(n))+A081027(n+1)`
-/

namespace A322474.P14698000582920767594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (A109613 n).toNat + A081027 (n + 1)

end

end A322474.P14698000582920767594

/-! ## A322474.P10191524163699394385

`A081027(n+1)%A001358(A023689(n+1))`
-/

namespace A322474.P10191524163699394385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081027 (n + 1)) (A001358 (A023689 (n + 1)).toNat)

end

end A322474.P10191524163699394385

/-! ## A322474.P1673647414408677540

`A271517(A001222(3*n+4))+A081027(n+1)`
-/

namespace A322474.P1673647414408677540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271517 (A001222 (3 * n + 4)).toNat + A081027 (n + 1)

end

end A322474.P1673647414408677540

/-!
# A322475: Base-11 deletable primes (written in base 10).

The programs for A322475, there is no canonical definition to state claims against.
-/

/-! ## A322475.P2624258426580491752

`p?[comp[A322476(n+1)]]`
-/

namespace A322475.P2624258426580491752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322476 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A322475.P2624258426580491752

/-! ## A322475.P13622261541684774995

`p?[∑[A001876(A135233(n))]]`
-/

namespace A322475.P13622261541684774995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A135233 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322475.P13622261541684774995

/-! ## A322475.P8690550090171391813

`∩[A235986(n+1), A042990(n)]`
-/

namespace A322475.P8690550090171391813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322475.P8690550090171391813

/-! ## A322475.P899145298838487692

`∩[A181172(n+1), A231238(n+1)]`
-/

namespace A322475.P899145298838487692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322475.P899145298838487692

/-!
# A322476: Primes that are not base-11 deletable primes (written in base 10).

The programs for A322476, there is no canonical definition to state claims against.
-/

/-! ## A322476.P13106111098761875666

`∩[A131396(n+1), A191055(n+1)]`
-/

namespace A322476.P13106111098761875666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322476.P13106111098761875666

/-!
# A322477: Base-12 deletable primes (written in base 10).

The programs for A322477, there is no canonical definition to state claims against.
-/

/-! ## A322477.P1503010991119790777

`A076805(lt[A076833(3*n+1), A076800(n+1)])`
-/

namespace A322477.P1503010991119790777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076833 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076805 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A322477.P1503010991119790777

/-! ## A322477.P2241453870971462562

`A000040(lt[A378373(3*(n+1)), A303841(3*n+4)])`
-/

namespace A322477.P2241453870971462562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378373 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303841 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A322477.P2241453870971462562

/-! ## A322477.P11458360255676438366

`A055398(lt[A378373(3*(n+1)), A303841(3*n+4)])`
-/

namespace A322477.P11458360255676438366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378373 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303841 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A322477.P11458360255676438366

/-! ## A322477.P13053979554523009392

`A000040(lt[A291137(n), A172119(3*(n+1))])`
-/

namespace A322477.P13053979554523009392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291137 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172119 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A322477.P13053979554523009392

/-! ## A322477.P3260052889421338965

`∩[A028809(n+1), A076805(n+1)]`
-/

namespace A322477.P3260052889421338965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322477.P3260052889421338965

/-!
# A322478: Primes that are not base-12 deletable primes (written in base 10).

The programs for A322478, there is no canonical definition to state claims against.
-/

/-! ## A322478.P15533249560388832866

`p?[A017533(n)*A081320(A081320(n+1))]`
-/

namespace A322478.P15533249560388832866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n * A081320 (A081320 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322478.P15533249560388832866

/-! ## A322478.P18173526412267801780

`A068228(lt[A103324(n+4), A060638(3*(n+1))])`
-/

namespace A322478.P18173526412267801780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103324 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060638 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A322478.P18173526412267801780

/-!
# A322479: Numbers that are sums of consecutive square pyramidal numbers.

The programs for A322479, there is no canonical definition to state claims against.
-/

/-! ## A322479.P5949741076855140120

`A289895(record[A279220(n)^A279278(n)])`
-/

namespace A322479.P5949741076855140120
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279220 n : ℚ) ^ (A279278 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289895 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A322479.P5949741076855140120

/-! ## A322479.P8635596103835132647

`record[A336870(2*n)]-A290103(n+4)`
-/

namespace A322479.P8635596103835132647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336870 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A290103 (n + 4)

end

end A322479.P8635596103835132647

/-! ## A322479.P13200714706798252103

`eq[A103450(A289386(n+1)), A298246(n)]`
-/

namespace A322479.P13200714706798252103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103450 (A289386 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298246 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A322479.P13200714706798252103

/-!
# A322480: Irregular triangular array read by rows: T(n,k), n>=1, is the number of ordered factorizations corresponding to each unordered factorization, indexed by k.

The programs for A322480, there is no canonical definition to state claims against.
-/

/-! ## A322480.P18309527568494062905

`gcd(A104608(A250120(n)), A213911(n))`
-/

namespace A322480.P18309527568494062905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A104608 (A250120 n).toNat) (A213911 n)

end

end A322480.P18309527568494062905

/-! ## A322480.P17934491362790015602

`A046951(A172528(n)+A165118(n+1))`
-/

namespace A322480.P17934491362790015602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A172528 n + A165118 (n + 1)).toNat

end

end A322480.P17934491362790015602

/-! ## A322480.P8552693271850991688

`A325614(A341466(n)+A325614(3*n+4))`
-/

namespace A322480.P8552693271850991688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325614 (A341466 (n + 50) + A325614 (3 * n + 4)).toNat

end

end A322480.P8552693271850991688

/-! ## A322480.P1265132817271066413

`A167489(gcd(A001440(n+1), A092000(n+1)))`
-/

namespace A322480.P1265132817271066413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (Int.gcd (A001440 (n + 1)) (A092000 (n + 1)))

end

end A322480.P1265132817271066413

/-! ## A322480.P12039495707904130958

`gcd(A001221(A295969(n+1)), A296018(n+1))`
-/

namespace A322480.P12039495707904130958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A295969 (n + 1)).toNat) (A296018 (n + 1))

end

end A322480.P12039495707904130958

/-!
# A322482: Table read by downward antidiagonals: T(n,k) is the greatest divisor of n which is a unitary divisor of k.

The programs for A322482, there is no canonical definition to state claims against.
-/

/-! ## A322482.P5680193426586881385

`gcd(1-A112543(n+1)², A193592(n))`
-/

namespace A322482.P5680193426586881385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A112543 (n + 1) ^ 2) (A193592 n)

end

end A322482.P5680193426586881385

/-! ## A322482.P14345302798041029894

`gcd(xor(1, A112543(n+1)), A003989(n+1))`
-/

namespace A322482.P14345302798041029894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor 1 (A112543 (n + 1))) (A003989 (n + 1))

end

end A322482.P14345302798041029894

/-! ## A322482.P13945122763607989320

`gcd(A004442(A112543(n+1)), A193592(n))`
-/

namespace A322482.P13945122763607989320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004442 (A112543 (n + 1)).toNat) (A193592 n)

end

end A322482.P13945122763607989320

/-! ## A322482.P8350347777628109289

`gcd(A004736(n+1), A024004(A112543(n+1)))`
-/

namespace A322482.P8350347777628109289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004736 (n + 1)) (A024004 (A112543 (n + 1)).toNat)

end

end A322482.P8350347777628109289

/-! ## A322482.P9122624059863114367

`A028310(and(A003989(n+1), A109626(n+1)))`
-/

namespace A322482.P9122624059863114367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.land (A003989 (n + 1)) (A109626 (n + 1))).toNat

end

end A322482.P9122624059863114367

/-! ## A322482.P1573041722192368112

`lcm(A128227(n), A322550(n+1))/A322550(n+1)`
-/

namespace A322482.P1573041722192368112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A128227 n) (A322550 (n + 1)) : ℚ) / (A322550 (n + 1) : ℚ)

end

end A322482.P1573041722192368112

/-! ## A322482.P7735785357847615704

`A002260(n+1)/gcd(A002260(n+1), A322550(n+1))`
-/

namespace A322482.P7735785357847615704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (Int.gcd (A002260 (n + 1)) (A322550 (n + 1)) : ℚ)

end

end A322482.P7735785357847615704

/-! ## A322482.P1342116555457493222

`gcd(A003989(n+1), A277147(A039599(n)))`
-/

namespace A322482.P1342116555457493222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003989 (n + 1)) (A277147 (A039599 n).toNat)

end

end A322482.P1342116555457493222

/-! ## A322482.P14156961336211995070

`gcd(A178602(n), A287957(n+1))`
-/

namespace A322482.P14156961336211995070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A178602 n) (A287957 (n + 1))

end

end A322482.P14156961336211995070

/-!
# A322483: The number of semi-unitary divisors of n.

The programs for A322483, the canonical program `A322483.P9877640992746448261` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322483 has offset 1).

The definition of A322483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322483.P9877640992746448261

`A000005(A019554(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A322483

/-- `A000005(A019554(n+1))` -/
def P9877640992746448261.Spec : Prop :=
  ∀ n, P9877640992746448261.a n = A322483 (n + 1)

theorem P9877640992746448261.correct : P9877640992746448261.Spec := by
  intro n
  simp only [A322483, Nat.add_sub_cancel]

end A322483

/-! ## A322483.P5883154012988644265

`∏{e}[n+1, ceil(#/2)+1]`
-/

namespace A322483.P5883154012988644265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (⌈(Nat.factorization (f1 n) p : ℚ) / 2⌉ + 1)

end

end A322483.P5883154012988644265

namespace A322483

/-- `∏{e}[n+1, ceil(#/2)+1]` -/
def P5883154012988644265.Spec : Prop :=
  ∀ n, P5883154012988644265.a n = A322483 (n + 1)

end A322483

/-! ## A322483.P17260627878626724169

`∑{d}[n+1, A295316(#)]`
-/

namespace A322483.P17260627878626724169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A295316 d

end

end A322483.P17260627878626724169

namespace A322483

/-- `∑{d}[n+1, A295316(#)]` -/
def P17260627878626724169.Spec : Prop :=
  ∀ n, P17260627878626724169.a n = A322483 (n + 1)

end A322483

/-! ## A322483.P6739891491483064878

`A366901(A350390(n+1))`
-/

namespace A322483.P6739891491483064878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366901 (A350390 (n + 1)).toNat

end

end A322483.P6739891491483064878

namespace A322483

/-- `A366901(A350390(n+1))` -/
def P6739891491483064878.Spec : Prop :=
  ∀ n, P6739891491483064878.a n = A322483 (n + 1)

end A322483

/-! ## A322483.P16064957104008775987

`A000005(sqrt(A053143(n+1)))`
-/

namespace A322483.P16064957104008775987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A053143 (n + 1) : ℝ))).toNat

end

end A322483.P16064957104008775987

namespace A322483

/-- `A000005(sqrt(A053143(n+1)))` -/
def P16064957104008775987.Spec : Prop :=
  ∀ n, P16064957104008775987.a n = A322483 (n + 1)

end A322483

/-! ## A322483.P3395428124893015872

`A320111(2*A019554(n+1))`
-/

namespace A322483.P3395428124893015872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A019554 (n + 1)).toNat

end

end A322483.P3395428124893015872

namespace A322483

/-- `A320111(2*A019554(n+1))` -/
def P3395428124893015872.Spec : Prop :=
  ∀ n, P3395428124893015872.a n = A322483 (n + 1)

end A322483

/-! ## A322483.P12682273226030767802

`A000005(A254732(n+1)-(n+1))`
-/

namespace A322483.P12682273226030767802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A254732 (n + 1) - (n + 1 : ℤ)).toNat

end

end A322483.P12682273226030767802

namespace A322483

/-- `A000005(A254732(n+1)-(n+1))` -/
def P12682273226030767802.Spec : Prop :=
  ∀ n, P12682273226030767802.a n = A322483 (n + 1)

end A322483

/-! ## A322483.P1431496026802777082

`A367987(n+1)*A368470(n+1)`
-/

namespace A322483.P1431496026802777082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367987 (n + 1) * A368470 (n + 1)

end

end A322483.P1431496026802777082

namespace A322483

/-- `A367987(n+1)*A368470(n+1)` -/
def P1431496026802777082.Spec : Prop :=
  ∀ n, P1431496026802777082.a n = A322483 (n + 1)

end A322483

/-! ## A322483.P5078652567680568583

`A000005((n+1)/A000188(n+1))`
-/

namespace A322483.P5078652567680568583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (n + 1) : ℚ))).toNat

end

end A322483.P5078652567680568583

namespace A322483

/-- `A000005((n+1)/A000188(n+1))` -/
def P5078652567680568583.Spec : Prop :=
  ∀ n, P5078652567680568583.a n = A322483 (n + 1)

end A322483

/-! ## A322483.P14832656128058499472

`A124315(n+1)/A046951(n+1)`
-/

namespace A322483.P14832656128058499472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124315 (n + 1) : ℚ) / (A046951 (n + 1) : ℚ)

end

end A322483.P14832656128058499472

namespace A322483

/-- `A124315(n+1)/A046951(n+1)` -/
def P14832656128058499472.Spec : Prop :=
  ∀ n, P14832656128058499472.a n = (A322483 (n + 1) : ℚ)

end A322483

/-! ## A322483.P18048650562247918267

`A368470(A350390(2*n+1-n))`
-/

namespace A322483.P18048650562247918267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368470 (A350390 (2 * n + 1 - n)).toNat

end

end A322483.P18048650562247918267

namespace A322483

/-- `A368470(A350390(2*n+1-n))` -/
def P18048650562247918267.Spec : Prop :=
  ∀ n, P18048650562247918267.a n = A322483 (n + 1)

end A322483

/-! ## A322483.P5115907149071213838

`∑{d}[n+1, A010052(#)*A056671((n+1)/#)]`
-/

namespace A322483.P5115907149071213838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A056671 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322483.P5115907149071213838

namespace A322483

/-- `∑{d}[n+1, A010052(#)*A056671((n+1)/#)]` -/
def P5115907149071213838.Spec : Prop :=
  ∀ n, P5115907149071213838.a n = A322483 (n + 1)

end A322483

/-! ## A322483.P8738404682468583700

`∑{d}[n+1, A046951(#)*A189021((n+1)/#)]`
-/

namespace A322483.P8738404682468583700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A189021 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322483.P8738404682468583700

namespace A322483

/-- `∑{d}[n+1, A046951(#)*A189021((n+1)/#)]` -/
def P8738404682468583700.Spec : Prop :=
  ∀ n, P8738404682468583700.a n = A322483 (n + 1)

end A322483

/-! ## A322483.P3215958992377990479

`∑{d}[n+1, A008683(#)*A332730((n+1)/#)]`
-/

namespace A322483.P3215958992377990479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A332730 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322483.P3215958992377990479

namespace A322483

/-- `∑{d}[n+1, A008683(#)*A332730((n+1)/#)]` -/
def P3215958992377990479.Spec : Prop :=
  ∀ n, P3215958992377990479.a n = A322483 (n + 1)

end A322483

/-! ## A322483.P13216197991330721972

`∑{d}[n+1, A008836(#)*A343443((n+1)/#)]`
-/

namespace A322483.P13216197991330721972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A343443 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322483.P13216197991330721972

namespace A322483

/-- `∑{d}[n+1, A008836(#)*A343443((n+1)/#)]` -/
def P13216197991330721972.Spec : Prop :=
  ∀ n, P13216197991330721972.a n = A322483 (n + 1)

end A322483

/-! ## A322483.P11951372723586966648

`∑{d}[n+1, A023900(#)*A385135((n+1)/#)]`
-/

namespace A322483.P11951372723586966648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A385135 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322483.P11951372723586966648

namespace A322483

/-- `∑{d}[n+1, A023900(#)*A385135((n+1)/#)]` -/
def P11951372723586966648.Spec : Prop :=
  ∀ n, P11951372723586966648.a n = A322483 (n + 1)

end A322483

/-! ## A322483.P16036424102566869075

`∑{d}[n+1, A130054(#)*A384041((n+1)/#)]`
-/

namespace A322483.P16036424102566869075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A384041 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322483.P16036424102566869075

namespace A322483

/-- `∑{d}[n+1, A130054(#)*A384041((n+1)/#)]` -/
def P16036424102566869075.Spec : Prop :=
  ∀ n, P16036424102566869075.a n = A322483 (n + 1)

end A322483

/-! ## A322483.P18212373505371789098

`A000005(A000188(n+1)*A007913(n+1))`
-/

namespace A322483.P18212373505371789098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000188 (n + 1) * A007913 (n + 1)).toNat

end

end A322483.P18212373505371789098

namespace A322483

/-- `A000005(A000188(n+1)*A007913(n+1))` -/
def P18212373505371789098.Spec : Prop :=
  ∀ n, P18212373505371789098.a n = A322483 (n + 1)

end A322483

/-! ## A322483.P3866416282711563285

`A000005(A071974(n+1)*A071975(n+1))`
-/

namespace A322483.P3866416282711563285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A071974 (n + 1) * A071975 (n + 1)).toNat

end

end A322483.P3866416282711563285

namespace A322483

/-- `A000005(A071974(n+1)*A071975(n+1))` -/
def P3866416282711563285.Spec : Prop :=
  ∀ n, P3866416282711563285.a n = A322483 (n + 1)

end A322483

/-!
# A322484: Semi-unitary highly composite numbers: where the number of semi-unitary divisors of n (A322483) increases to a record.

The programs for A322484, there is no canonical definition to state claims against.
-/

/-! ## A322484.P8355419981314646029

`A377710(A077168(n))`
-/

namespace A322484.P8355419981314646029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377710 (A077168 n).toNat

end

end A322484.P8355419981314646029

/-! ## A322484.P15921622984057396608

`A000027(A377710(n+1))`
-/

namespace A322484.P15921622984057396608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A377710 (n + 1)).toNat

end

end A322484.P15921622984057396608

/-! ## A322484.P4218848476453734723

`A377710(A043319(n+1))`
-/

namespace A322484.P4218848476453734723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377710 (A043319 (n + 1)).toNat

end

end A322484.P4218848476453734723

/-! ## A322484.P15673507336734220756

`A377710(A044916(n+1))`
-/

namespace A322484.P15673507336734220756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377710 (A044916 (n + 1)).toNat

end

end A322484.P15673507336734220756

/-! ## A322484.P11273377370654275002

`A377710(A065672(n+1))`
-/

namespace A322484.P11273377370654275002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377710 (A065672 (n + 1)).toNat

end

end A322484.P11273377370654275002

/-!
# A322485: The sum of the semi-unitary divisors of n.

The programs for A322485, there is no canonical definition to state claims against.
-/

/-! ## A322485.P948960372157661828

`A241405(n+1)+A136521(A010001(n))`
-/

namespace A322485.P948960372157661828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241405 (n + 1) + A136521 (A010001 n).toNat

end

end A322485.P948960372157661828

/-! ## A322485.P8056989674172042748

`or(A241405(n+1), A281497(A339948(n+1)))`
-/

namespace A322485.P8056989674172042748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A241405 (n + 1)) (A281497 (A339948 (n + 1)).toNat)

end

end A322485.P8056989674172042748

/-! ## A322485.P12070328231614787136

`A241405(n+1)+A088806(A006241(n+1))`
-/

namespace A322485.P12070328231614787136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241405 (n + 1) + A088806 (A006241 (n + 1)).toNat

end

end A322485.P12070328231614787136

/-! ## A322485.P12320318337243358270

`or(A000120(A023928(n)), A241405(n+1))`
-/

namespace A322485.P12320318337243358270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000120 (A023928 n).toNat) (A241405 (n + 1))

end

end A322485.P12320318337243358270

/-! ## A322485.P14135791220327235350

`A241405(n+1)+A105700(A056994(n+1))`
-/

namespace A322485.P14135791220327235350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241405 (n + 1) + A105700 (A056994 (n + 1)).toNat

end

end A322485.P14135791220327235350

/-!
# A322486: Semi-unitary perfect numbers: numbers k such that susigma(k) = 2k, where susigma(k) is the sum of the semi-unitary divisors of k (A322485).

The programs for A322486, there is no canonical definition to state claims against.
-/

/-! ## A322486.P14994526985561903405

`A323757(∑[(lcm(12, n)/12)!])`
-/

namespace A322486.P14994526985561903405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway ((Nat.lcm 12 n : ℚ) / 12)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323757 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322486.P14994526985561903405

/-!
# A322487: Number of (3*n) X n matrices with nonnegative integer entries and each column sum being 3 up to permutation of rows.

The programs for A322487, there is no canonical definition to state claims against.
-/

/-! ## A322487.P7746522414339091722

`A219727(A167614(n+2))`
-/

namespace A322487.P7746522414339091722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219727 (A167614 (n + 2)).toNat

end

end A322487.P7746522414339091722

/-! ## A322487.P112934642897627401

`A219727(A141214(n)+6)`
-/

namespace A322487.P112934642897627401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219727 (A141214 n + 6).toNat

end

end A322487.P112934642897627401

/-! ## A322487.P7536393493713345734

`A219727(A052905(n)+8)`
-/

namespace A322487.P7536393493713345734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219727 (A052905 n + 8).toNat

end

end A322487.P7536393493713345734

/-! ## A322487.P4182450167614801382

`A219727(A055999(n)+9)`
-/

namespace A322487.P4182450167614801382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219727 (A055999 n + 9).toNat

end

end A322487.P4182450167614801382

/-! ## A322487.P2430738896011195602

`A219727(eq[3, A002262(n)])`
-/

namespace A322487.P2430738896011195602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322487.P2430738896011195602

/-!
# A322488: Number of factorizations of the n-th power of the product of the first n primes.

The programs for A322488, there is no canonical definition to state claims against.
-/

/-! ## A322488.P414380599292686505

`A219727(∑[4*n])`
-/

namespace A322488.P414380599292686505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219727 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322488.P414380599292686505

/-!
# A322489: Numbers k such that k^k ends with 4.

The programs for A322489, the canonical program `A322489.P7018430486237923823` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322489 has offset 1).

The definition of A322489 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322489.P7018430486237923823

`10*(n+1)+3*(-1)^(n+1)-5`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A322489

/-- `10*(n+1)+3*(-1)^(n+1)-5` -/
def P7018430486237923823.Spec : Prop :=
  ∀ n, P7018430486237923823.a n = A322489 (n + 1)

theorem P7018430486237923823.correct : P7018430486237923823.Spec := by
  intro n
  simp only [A322489, Nat.add_sub_cancel]

end A322489

/-! ## A322489.P10376125500159133998

`∑[20-a(n-1)]` with `a(0)=2, a(1)=16`
-/

namespace A322489.P10376125500159133998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 16] fun n f1 =>
  20 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322489.P10376125500159133998

namespace A322489

/-- `∑[20-a(n-1)]` -/
def P10376125500159133998.Spec : Prop :=
  ∀ n, P10376125500159133998.a n = A322489 (n + 1)

end A322489

/-! ## A322489.P10972062506462059640

`∑[4^(a((n+1)%2)%3)]` with `a(0)=2`
-/

namespace A322489.P10972062506462059640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  4 ^ (f1 ((n + 1) % 2) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322489.P10972062506462059640

namespace A322489

/-- `∑[4^(a((n+1)%2)%3)]` -/
def P10972062506462059640.Spec : Prop :=
  ∀ n, (P10972062506462059640.a n : ℤ) = A322489 (n + 1)

end A322489

/-! ## A322489.P12579029333790061323

`Δ[2*A195142(n)]`
-/

namespace A322489.P12579029333790061323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A322489.P12579029333790061323

namespace A322489

/-- `Δ[2*A195142(n)]` -/
def P12579029333790061323.Spec : Prop :=
  ∀ n, P12579029333790061323.a n = A322489 (n + 1)

end A322489

/-! ## A322489.P15255784028947533475

`∑[2^A382713(n)]`
-/

namespace A322489.P15255784028947533475
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A382713 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322489.P15255784028947533475

namespace A322489

/-- `∑[2^A382713(n)]` -/
def P15255784028947533475.Spec : Prop :=
  ∀ n, P15255784028947533475.a n = (A322489 (n + 1) : ℚ)

end A322489

/-! ## A322489.P13086050588440744593

`2*A090771(n+1)`
-/

namespace A322489.P13086050588440744593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090771 (n + 1)

end

end A322489.P13086050588440744593

namespace A322489

/-- `2*A090771(n+1)` -/
def P13086050588440744593.Spec : Prop :=
  ∀ n, P13086050588440744593.a n = A322489 (n + 1)

end A322489

/-! ## A322489.P18279315395302195865

`∑[2*dr(A040762(n))]`
-/

namespace A322489.P18279315395302195865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.digitalRoot (A040762 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322489.P18279315395302195865

namespace A322489

/-- `∑[2*dr(A040762(n))]` -/
def P18279315395302195865.Spec : Prop :=
  ∀ n, (P18279315395302195865.a n : ℤ) = A322489 (n + 1)

end A322489

/-! ## A322489.P11118762209442600167

`Δ[A195146(n)+n²]`
-/

namespace A322489.P11118762209442600167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195146 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A322489.P11118762209442600167

namespace A322489

/-- `Δ[A195146(n)+n²]` -/
def P11118762209442600167.Spec : Prop :=
  ∀ n, P11118762209442600167.a n = A322489 (n + 1)

end A322489

/-! ## A322489.P16249759244421653672

`2*sqrt(A273372(n+1))`
-/

namespace A322489.P16249759244421653672
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A273372 (n + 1) : ℝ)

end

end A322489.P16249759244421653672

namespace A322489

/-- `2*sqrt(A273372(n+1))` -/
def P16249759244421653672.Spec : Prop :=
  ∀ n, P16249759244421653672.a n = (A322489 (n + 1) : ℝ)

end A322489

/-! ## A322489.P13731555041582955393

`2*(∑[A010698(n)]-1)`
-/

namespace A322489.P13731555041582955393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A322489.P13731555041582955393

namespace A322489

/-- `2*(∑[A010698(n)]-1)` -/
def P13731555041582955393.Spec : Prop :=
  ∀ n, P13731555041582955393.a n = A322489 (n + 1)

end A322489

/-! ## A322489.P7313925857028126317

`2*(Δ[A195015(n)]-1)`
-/

namespace A322489.P7313925857028126317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - 1)

end

end A322489.P7313925857028126317

namespace A322489

/-- `2*(Δ[A195015(n)]-1)` -/
def P7313925857028126317.Spec : Prop :=
  ∀ n, P7313925857028126317.a n = A322489 (n + 1)

end A322489

/-! ## A322489.P14885039758312120465

`2*(∑[A010688(n)]+n)`
-/

namespace A322489.P14885039758312120465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A322489.P14885039758312120465

namespace A322489

/-- `2*(∑[A010688(n)]+n)` -/
def P14885039758312120465.Spec : Prop :=
  ∀ n, P14885039758312120465.a n = A322489 (n + 1)

end A322489

/-! ## A322489.P4238494517359778073

`2*or(1, A306277(n+1))`
-/

namespace A322489.P4238494517359778073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor 1 (A306277 (n + 1))

end

end A322489.P4238494517359778073

namespace A322489

/-- `2*or(1, A306277(n+1))` -/
def P4238494517359778073.Spec : Prop :=
  ∀ n, P4238494517359778073.a n = A322489 (n + 1)

end A322489

/-! ## A322489.P15646798205897990098

`2*(A047521(n+1)+n+1)`
-/

namespace A322489.P15646798205897990098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047521 (n + 1) + (n + 1 : ℤ))

end

end A322489.P15646798205897990098

namespace A322489

/-- `2*(A047521(n+1)+n+1)` -/
def P15646798205897990098.Spec : Prop :=
  ∀ n, P15646798205897990098.a n = A322489 (n + 1)

end A322489

/-! ## A322489.P9116364670945126607

`A001545(n)/A047221(n+1)`
-/

namespace A322489.P9116364670945126607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001545 n : ℚ) / (A047221 (n + 1) : ℚ)

end

end A322489.P9116364670945126607

namespace A322489

/-- `A001545(n)/A047221(n+1)` -/
def P9116364670945126607.Spec : Prop :=
  ∀ n, P9116364670945126607.a n = (A322489 (n + 1) : ℚ)

end A322489

/-! ## A322489.P12675755129894326001

`xor(A010684(n), A322490(n+1))`
-/

namespace A322489.P12675755129894326001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010684 n) (A322490 (n + 1))

end

end A322489.P12675755129894326001

namespace A322489

/-- `xor(A010684(n), A322490(n+1))` -/
def P12675755129894326001.Spec : Prop :=
  ∀ n, P12675755129894326001.a n = A322489 (n + 1)

end A322489

/-! ## A322489.P12774761240031661489

`A159254(n+1)%A084967(n+1)`
-/

namespace A322489.P12774761240031661489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159254 (n + 1)) (A084967 (n + 1))

end

end A322489.P12774761240031661489

namespace A322489

/-- `A159254(n+1)%A084967(n+1)` -/
def P12774761240031661489.Spec : Prop :=
  ∀ n, P12774761240031661489.a n = A322489 (n + 1)

end A322489

/-! ## A322489.P1998968867612618139

`A241406(n+1)%A155098(n+1)`
-/

namespace A322489.P1998968867612618139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241406 (n + 1)) (A155098 (n + 1))

end

end A322489.P1998968867612618139

namespace A322489

/-- `A241406(n+1)%A155098(n+1)` -/
def P1998968867612618139.Spec : Prop :=
  ∀ n, P1998968867612618139.a n = A322489 (n + 1)

end A322489

/-! ## A322489.P9587156547825967672

`A016825(A047208(n+1))`
-/

namespace A322489.P9587156547825967672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A047208 (n + 1)).toNat

end

end A322489.P9587156547825967672

namespace A322489

/-- `A016825(A047208(n+1))` -/
def P9587156547825967672.Spec : Prop :=
  ∀ n, P9587156547825967672.a n = A322489 (n + 1)

end A322489

/-! ## A322489.P5426443917999493428

`A016825(A030451(n)+2*n)`
-/

namespace A322489.P5426443917999493428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A030451 n + (2 * n : ℤ)).toNat

end

end A322489.P5426443917999493428

namespace A322489

/-- `A016825(A030451(n)+2*n)` -/
def P5426443917999493428.Spec : Prop :=
  ∀ n, P5426443917999493428.a n = A322489 (n + 1)

end A322489

/-!
# A322490: Numbers k such that k^k ends with 7.

The programs for A322490, the canonical program `A322490.P17921866161295689927` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322490 has offset 1).

The definition of A322490 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322490.P17921866161295689927

`10*(n+1)+2*(-1)^(n+1)-5`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A322490

/-- `10*(n+1)+2*(-1)^(n+1)-5` -/
def P17921866161295689927.Spec : Prop :=
  ∀ n, P17921866161295689927.a n = A322490 (n + 1)

theorem P17921866161295689927.correct : P17921866161295689927.Spec := by
  intro n
  simp only [A322490, Nat.add_sub_cancel]

end A322490

/-! ## A322490.P8728093630601923487

`Δ[xor(1, 5*n²)]`
-/

namespace A322490.P8728093630601923487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (5 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A322490.P8728093630601923487

namespace A322490

/-- `Δ[xor(1, 5*n²)]` -/
def P8728093630601923487.Spec : Prop :=
  ∀ n, P8728093630601923487.a n = A322490 (n + 1)

end A322490

/-! ## A322490.P1921374511352710177

`∑[20-a(n-1)]` with `a(0)=3, a(1)=14`
-/

namespace A322490.P1921374511352710177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 14] fun n f1 =>
  20 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322490.P1921374511352710177

namespace A322490

/-- `∑[20-a(n-1)]` -/
def P1921374511352710177.Spec : Prop :=
  ∀ n, P1921374511352710177.a n = A322490 (n + 1)

end A322490

/-! ## A322490.P7992137054075568303

`record[ogf((3+x-x^2-3x^3+6x^4)/(1+2x+2x^2+2x^3+x^4))]`
-/

namespace A322490.P7992137054075568303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, -1, -3, 6] [1, 2, 2, 2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322490.P7992137054075568303

namespace A322490

/-- `record[ogf((3+x-x^2-3x^3+6x^4)/(1+2x+2x^2+2x^3+x^4))]` -/
def P7992137054075568303.Spec : Prop :=
  ∀ n, P7992137054075568303.a n = A322490 (n + 1)

end A322490

/-! ## A322490.P14211714573872615347

`Δ[or(2, (2*n+1)²+(2-n)²)]`
-/

namespace A322490.P14211714573872615347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (((2 * n + 1) ^ 2 : ℤ) + (2 - (n : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A322490.P14211714573872615347

namespace A322490

/-- `Δ[or(2, (2*n+1)²+(2-n)²)]` -/
def P14211714573872615347.Spec : Prop :=
  ∀ n, P14211714573872615347.a n = A322490 (n + 1)

end A322490

/-! ## A322490.P13573213169578688433

`xor(A010684(n), A322489(n+1))`
-/

namespace A322490.P13573213169578688433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010684 n) (A322489 (n + 1))

end

end A322490.P13573213169578688433

namespace A322490

/-- `xor(A010684(n), A322489(n+1))` -/
def P13573213169578688433.Spec : Prop :=
  ∀ n, P13573213169578688433.a n = A322490 (n + 1)

end A322490

/-! ## A322490.P8438306624168509507

`A322171(Δ[n²])`
-/

namespace A322490.P8438306624168509507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322171 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A322490.P8438306624168509507

namespace A322490

/-- `A322171(Δ[n²])` -/
def P8438306624168509507.Spec : Prop :=
  ∀ n, P8438306624168509507.a n = A322490 (n + 1)

end A322490

/-! ## A322490.P12908698732234473241

`or(1, A151980(2*(n+1))+1)`
-/

namespace A322490.P12908698732234473241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A151980 (2 * (n + 1)) + 1)

end

end A322490.P12908698732234473241

namespace A322490

/-- `or(1, A151980(2*(n+1))+1)` -/
def P12908698732234473241.Spec : Prop :=
  ∀ n, P12908698732234473241.a n = A322490 (n + 1)

end A322490

/-! ## A322490.P12435081924714938891

`A063226(A042948(n+1))`
-/

namespace A322490.P12435081924714938891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (A042948 (n + 1)).toNat

end

end A322490.P12435081924714938891

namespace A322490

/-- `A063226(A042948(n+1))` -/
def P12435081924714938891.Spec : Prop :=
  ∀ n, P12435081924714938891.a n = A322490 (n + 1)

end A322490

/-! ## A322490.P3805409907556792404

`A063226(A109613(n+1)+n)`
-/

namespace A322490.P3805409907556792404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (A109613 (n + 1) + (n : ℤ)).toNat

end

end A322490.P3805409907556792404

namespace A322490

/-- `A063226(A109613(n+1)+n)` -/
def P3805409907556792404.Spec : Prop :=
  ∀ n, P3805409907556792404.a n = A322490 (n + 1)

end A322490

/-! ## A322490.P9632753996126402776

`A063226(A063196(n+2)+n)`
-/

namespace A322490.P9632753996126402776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (A063196 (n + 2) + (n : ℤ)).toNat

end

end A322490.P9632753996126402776

namespace A322490

/-- `A063226(A063196(n+2)+n)` -/
def P9632753996126402776.Spec : Prop :=
  ∀ n, P9632753996126402776.a n = A322490 (n + 1)

end A322490

/-!
# A322492: Records in the number of ways to represent a number as truncated triangular number A008912.

The programs for A322492, there is no canonical definition to state claims against.
-/

/-! ## A322492.P2475335115612664687

`∪[2^n, A355578(n+4)]`
-/

namespace A322492.P2475335115612664687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355578 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322492.P2475335115612664687

/-! ## A322492.P12066128866991786994

`record[gcd(n+1, A166642(n+1)²)]`
-/

namespace A322492.P12066128866991786994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A166642 (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322492.P12066128866991786994

/-! ## A322492.P11347279199469974732

`record[gcd(xor(1, -n), A338461(n+1))]`
-/

namespace A322492.P11347279199469974732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor 1 (-(n : ℤ))) (A338461 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322492.P11347279199469974732

/-! ## A322492.P17920110760847787530

`A007694(lt[∏{p}[n+1, 1-#], (n+1)/7^val(n+1, 7)])`
-/

namespace A322492.P17920110760847787530
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (1 - (p : ℤ))

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (7 ^ SequenceMachineLib.valuation (n + 1) 7 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n)

end

end A322492.P17920110760847787530

/-! ## A322492.P9463921687646419236

`A007694(A107909(n)+1)`
-/

namespace A322492.P9463921687646419236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (A107909 n + 1).toNat

end

end A322492.P9463921687646419236

/-!
# A322493: Start of first occurrence of n consecutive odd squarefree composite numbers.

The programs for A322493, there is no canonical definition to state claims against.
-/

/-! ## A322493.P11211056012657582101

`A321617(n+1)-2*n`
-/

namespace A322493.P11211056012657582101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321617 (n + 1) - (2 * n : ℤ)

end

end A322493.P11211056012657582101

/-! ## A322493.P2975719252672528644

`abs(A321617(n+1)-A005843(n))`
-/

namespace A322493.P2975719252672528644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321617 (n + 1) - A005843 n|

end

end A322493.P2975719252672528644

/-! ## A322493.P16581124846413932883

`A000027(A321617(n+1)-n)-n`
-/

namespace A322493.P16581124846413932883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A321617 (n + 1) - (n : ℤ)).toNat - (n : ℤ)

end

end A322493.P16581124846413932883

/-! ## A322493.P11390131837031048741

`A321617(n+1)-n-A107909(n)`
-/

namespace A322493.P11390131837031048741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321617 (n + 1) - (n : ℤ) - A107909 n

end

end A322493.P11390131837031048741

/-!
# A322494: Number A(n,k) of tilings of a k X n rectangle using V (2m+1)-ominoes (m >= 0) in standard orientation; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A322494, there is no canonical definition to state claims against.
-/

/-! ## A322494.P1459116769548488632

`A331246(A333901(n))`
-/

namespace A322494.P1459116769548488632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331246 (A333901 n).toNat

end

end A322494.P1459116769548488632

/-! ## A322494.P3193716908074006645

`A387704(A374985(n))`
-/

namespace A322494.P3193716908074006645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387704 (A374985 n).toNat

end

end A322494.P3193716908074006645

/-! ## A322494.P18164622194989740231

`A260999(A113607(n+1))`
-/

namespace A322494.P18164622194989740231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (A113607 (n + 1)).toNat

end

end A322494.P18164622194989740231

/-! ## A322494.P15114869996169964539

`A161358(A333901(n)+1)`
-/

namespace A322494.P15114869996169964539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161358 (A333901 n + 1).toNat

end

end A322494.P15114869996169964539

/-! ## A322494.P12410576864831483019

`A079383(A219924(n))%9`
-/

namespace A322494.P12410576864831483019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079383 (A219924 n).toNat) 9

end

end A322494.P12410576864831483019

/-!
# A322495: Number of tilings of an n X n square using V (2m+1)-ominoes (m >= 0) in standard orientation.

The programs for A322495, there is no canonical definition to state claims against.
-/

/-! ## A322495.P563024078134914684

`A322494(∑[4*n])`
-/

namespace A322495.P563024078134914684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322495.P563024078134914684

/-! ## A322495.P14248119673626115398

`A322494(A046092(n))+A025443(n)`
-/

namespace A322495.P14248119673626115398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (A046092 n).toNat + A025443 n

end

end A322495.P14248119673626115398

/-! ## A322495.P7943585666132177828

`A322494(A046092(n))+A185037(n)`
-/

namespace A322495.P7943585666132177828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (A046092 n).toNat + A185037 n

end

end A322495.P7943585666132177828

/-! ## A322495.P16773336988674926801

`A322494(A046092(n))*A322494(n)`
-/

namespace A322495.P16773336988674926801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (A046092 n).toNat * A322494 n

end

end A322495.P16773336988674926801

/-! ## A322495.P18103253414926570444

`A322494(A046092(n))+A000005(n+1)%-1`
-/

namespace A322495.P18103253414926570444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (A046092 n).toNat + Int.tmod (A000005 (n + 1)) (-1)

end

end A322495.P18103253414926570444

/-!
# A322496: Number of tilings of a 3 X n rectangle using V (2m+1)-ominoes (m >= 0) in standard orientation.

The programs for A322496, the canonical program `A322496.P15569204734757494915` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322496 has offset 0).

The definition of A322496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322496.P15569204734757494915

`2*a(n-1)+a(n-2)+A049347(n)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A322496

/-- `2*a(n-1)+a(n-2)+A049347(n)` -/
def P15569204734757494915.Spec : Prop :=
  ∀ n, P15569204734757494915.a n = A322496 n

theorem P15569204734757494915.correct : P15569204734757494915.Spec := by
  intro n
  simp only [A322496]

end A322496

/-! ## A322496.P14699366264031279338

`ogf(-1/(-1+x+2x^2+3x^3+x^4))`
-/

namespace A322496.P14699366264031279338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -2, -3, -1] n

end

end A322496.P14699366264031279338

namespace A322496

/-- `ogf(-1/(-1+x+2x^2+3x^3+x^4))` -/
def P14699366264031279338.Spec : Prop :=
  ∀ n, P14699366264031279338.a n = A322496 n

end A322496

/-! ## A322496.P3417903412701086267

`A001333(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A322496.P3417903412701086267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A001333 n + a (n - 3)

end

end A322496.P3417903412701086267

namespace A322496

/-- `A001333(n)+a(n-3)` -/
def P3417903412701086267.Spec : Prop :=
  ∀ n, P3417903412701086267.a n = A322496 n

end A322496

/-! ## A322496.P2510206554085473837

`Δ[A000129(n)]+a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A322496.P2510206554085473837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  f1 (n + 1) - f1 n + a (n - 3)

end

end A322496.P2510206554085473837

namespace A322496

/-- `Δ[A000129(n)]+a(n-3)` -/
def P2510206554085473837.Spec : Prop :=
  ∀ n, P2510206554085473837.a n = A322496 n

end A322496

/-! ## A322496.P6574626208937770266

`A000129(n+1)-(a(n-2)+a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A322496.P6574626208937770266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000129 (n + 1) - (a (n - 2) + a (n - 1))

end

end A322496.P6574626208937770266

namespace A322496

/-- `A000129(n+1)-(a(n-2)+a(n-1))` -/
def P6574626208937770266.Spec : Prop :=
  ∀ n, P6574626208937770266.a n = A322496 n

end A322496

/-! ## A322496.P13281396109927556037

`ceil(ceil(A109803(n)/2)/2)`
-/

namespace A322496.P13281396109927556037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A109803 n : ℚ) / 2⌉ : ℚ) / 2⌉

end

end A322496.P13281396109927556037

namespace A322496

/-- `ceil(ceil(A109803(n)/2)/2)` -/
def P13281396109927556037.Spec : Prop :=
  ∀ n, P13281396109927556037.a n = A322496 n

end A322496

/-! ## A322496.P2068513441089825812

`round(A048654(n+1)/7)`
-/

namespace A322496.P2068513441089825812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A048654 (n + 1) : ℚ) / 7)

end

end A322496.P2068513441089825812

namespace A322496

/-- `round(A048654(n+1)/7)` -/
def P2068513441089825812.Spec : Prop :=
  ∀ n, P2068513441089825812.a n = A322496 n

end A322496

/-!
# A322497: Number of tilings of a 4 X n rectangle using V (2m+1)-ominoes (m >= 0) in standard orientation.

The programs for A322497, there is no canonical definition to state claims against.
-/

/-! ## A322497.P8611318307176962563

`A322494(A052905(n+2))`
-/

namespace A322497.P8611318307176962563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (A052905 (n + 2)).toNat

end

end A322497.P8611318307176962563

/-! ## A322497.P4730417458050675644

`A322494(A056000(n)+14)`
-/

namespace A322497.P4730417458050675644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (A056000 n + 14).toNat

end

end A322497.P4730417458050675644

/-! ## A322497.P13820788496155241413

`A322494(eq[4, A025581(n)])`
-/

namespace A322497.P13820788496155241413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322497.P13820788496155241413

/-! ## A322497.P7829417245529229249

`A322494(A167499(n+3)-1)`
-/

namespace A322497.P7829417245529229249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (A167499 (n + 3) - 1).toNat

end

end A322497.P7829417245529229249

/-! ## A322497.P3003740166099430719

`A322494(A000096(n+3)+5)`
-/

namespace A322497.P3003740166099430719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (A000096 (n + 3) + 5).toNat

end

end A322497.P3003740166099430719

/-!
# A322498: Number of tilings of a 5 X n rectangle using V (2m+1)-ominoes (m >= 0) in standard orientation.

The programs for A322498, there is no canonical definition to state claims against.
-/

/-! ## A322498.P14535124804238311015

`A322494(A055999(n+3))`
-/

namespace A322498.P14535124804238311015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (A055999 (n + 3)).toNat

end

end A322498.P14535124804238311015

/-! ## A322498.P9065473288912136696

`A322494(A167499(n+4))`
-/

namespace A322498.P9065473288912136696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (A167499 (n + 4)).toNat

end

end A322498.P9065473288912136696

/-! ## A322498.P341210981677056827

`A322494(eq[5, A025581(n)])`
-/

namespace A322498.P341210981677056827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322498.P341210981677056827

/-! ## A322498.P16283754421278786240

`A322494(Δ[A026054(n+3)])`
-/

namespace A322498.P16283754421278786240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (f1 (n + 1) - f1 n).toNat

end

end A322498.P16283754421278786240

/-! ## A322498.P6031794715305191701

`A322494(A000096(n+4)+6)`
-/

namespace A322498.P6031794715305191701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (A000096 (n + 4) + 6).toNat

end

end A322498.P6031794715305191701

/-!
# A322499: Number of tilings of a 6 X n rectangle using V (2m+1)-ominoes (m >= 0) in standard orientation.

The programs for A322499, there is no canonical definition to state claims against.
-/

/-! ## A322499.P14054232811958492210

`A322494(eq[6, A025581(n)])`
-/

namespace A322499.P14054232811958492210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322499.P14054232811958492210

/-! ## A322499.P6003543938445987908

`A322494(eq[7, A193739(n)])`
-/

namespace A322499.P6003543938445987908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322499.P6003543938445987908

/-! ## A322499.P1778526110499275751

`A322494(A055999(n+4)-1)`
-/

namespace A322499.P1778526110499275751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (A055999 (n + 4) - 1).toNat

end

end A322499.P1778526110499275751

/-! ## A322499.P3982362496759633232

`A322494(A000096(n+5)+7)`
-/

namespace A322499.P3982362496759633232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (A000096 (n + 5) + 7).toNat

end

end A322499.P3982362496759633232

/-! ## A322499.P4664251605020990107

`A322494(Δ[A026054(n+4)]-1)`
-/

namespace A322499.P4664251605020990107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 (f1 (n + 1) - f1 n - 1).toNat

end

end A322499.P4664251605020990107

