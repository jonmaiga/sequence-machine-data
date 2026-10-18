import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
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
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C002
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C014
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
# A387301: a(n) = Sum_{k=0..floor(n/2)} binomial(n+k-1,k) * binomial(n+k-1,n-2*k).

The programs for A387301, there is no canonical definition to state claims against.
-/

/-! ## A387301.P14493636514412168759

`A204444(n+1)%(A387360(n+5)+1)`
-/

namespace A387301.P14493636514412168759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204444 (n + 1)) (A387360 (n + 5) + 1)

end

end A387301.P14493636514412168759

/-! ## A387301.P12392941420337334113

`A349464(A002415(n))+A079978(n)`
-/

namespace A387301.P12392941420337334113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349464 (A002415 n).toNat + A079978 n

end

end A387301.P12392941420337334113

/-!
# A387302: Numbers k that can be written as k = s_1^x_1 + ... + s_t^x_t, with 1 < s_1 < ... < s_t and {s_1,..., s_t} = {x_1,..., x_t} for some t > 0 such that for all possible representations of k the permutations connecting (s_1,...,s_t) with (x_1,...,x_t) are cyclic.

The programs for A387302, there is no canonical definition to state claims against.
-/

/-! ## A387302.P5643744060220707218

`∩[A184429(n+1), A385969(n+1)]`
-/

namespace A387302.P5643744060220707218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387302.P5643744060220707218

/-!
# A387304: a(n) is the least integer k such that 7^k begins with n!.

The programs for A387304, there is no canonical definition to state claims against.
-/

/-! ## A387304.P13971053124934080094

`A018866(n!)`
-/

namespace A387304.P13971053124934080094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018866 (Nat.factorial n)

end

end A387304.P13971053124934080094

/-! ## A387304.P13874252570212593343

`A018866(A000142(n))`
-/

namespace A387304.P13874252570212593343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018866 (A000142 n).toNat

end

end A387304.P13874252570212593343

/-! ## A387304.P2838665401701859838

`A018866(A033646(n))`
-/

namespace A387304.P2838665401701859838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018866 (A033646 n).toNat

end

end A387304.P2838665401701859838

/-! ## A387304.P15051008910807737341

`A018866(A033647(n))`
-/

namespace A387304.P15051008910807737341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018866 (A033647 n).toNat

end

end A387304.P15051008910807737341

/-!
# A387305: Least k such that the Hamming weight (A000120) of n*k is prime.

The programs for A387305, there is no canonical definition to state claims against.
-/

/-! ## A387305.P7637242184214012846

`A160899(n+1)/(n+1)`
-/

namespace A387305.P7637242184214012846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160899 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A387305.P7637242184214012846

/-!
# A387308: a(n) = Sum_{k=0..n} 2^k * binomial(n+3,k+3) * binomial(2*k+6,k+6).

The programs for A387308, there is no canonical definition to state claims against.
-/

/-! ## A387308.P5672387960371578004

`A021594(n)*A189006(A169980(n))`
-/

namespace A387308.P5672387960371578004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021594 n * A189006 (A169980 n).toNat

end

end A387308.P5672387960371578004

/-! ## A387308.P5826664169270886848

`A021594(n)^A189006(A145546(n+1))`
-/

namespace A387308.P5826664169270886848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021594 n : ℚ) ^ (A189006 (A145546 (n + 1)).toNat : ℤ)

end

end A387308.P5826664169270886848

/-!
# A387309: a(n) = Sum_{k=0..n} 3^k * binomial(n+1,k+1) * binomial(2*k+2,k+2).

The programs for A387309, there is no canonical definition to state claims against.
-/

/-! ## A387309.P6688776298011385467

`(n+1)*A386362(n)`
-/

namespace A387309.P6688776298011385467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A386362 n

end

end A387309.P6688776298011385467

/-! ## A387309.P1239333981695414085

`(A337167(n+1)-A337167(n))/3*(n+1)`
-/

namespace A387309.P1239333981695414085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337167 (n + 1) - A337167 n : ℚ) / 3 * (n + 1 : ℚ)

end

end A387309.P1239333981695414085

/-!
# A387312: a(n) is the action of "Rule 30" elementary cellular automaton on the binary representation of n if the cells may only expand into the significant bit.

The programs for A387312, the canonical program `A387312.P4428100148096621254` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387312 has offset 0).

The definition of A387312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387312.P4428100148096621254

`xor(A004526(n), A163617(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A387312

/-- `xor(A004526(n), A163617(n))` -/
def P4428100148096621254.Spec : Prop :=
  ∀ n, P4428100148096621254.a n = A387312 n

theorem P4428100148096621254.correct : P4428100148096621254.Spec := by
  intro n
  simp only [A387312]

end A387312

/-! ## A387312.P9047020558634178753

`xor(A003188(n), A213064(n))`
-/

namespace A387312.P9047020558634178753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003188 n) (A213064 n)

end

end A387312.P9047020558634178753

namespace A387312

/-- `xor(A003188(n), A213064(n))` -/
def P9047020558634178753.Spec : Prop :=
  ∀ n, P9047020558634178753.a n = A387312 n

end A387312

/-! ## A387312.P14922628112281710577

`xor(A229763(n), A396059(n))`
-/

namespace A387312.P14922628112281710577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A229763 n) (A396059 n)

end

end A387312.P14922628112281710577

namespace A387312

/-- `xor(A229763(n), A396059(n))` -/
def P14922628112281710577.Spec : Prop :=
  ∀ n, P14922628112281710577.a n = A387312 n

end A387312

/-! ## A387312.P5697952871283079121

`A004526(xor(n, 2*or(n, 2*n)))`
-/

namespace A387312.P5697952871283079121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Nat.xor n (2 * Nat.lor n (2 * n)))

end

end A387312.P5697952871283079121

namespace A387312

/-- `A004526(xor(n, 2*or(n, 2*n)))` -/
def P5697952871283079121.Spec : Prop :=
  ∀ n, P5697952871283079121.a n = A387312 n

end A387312

/-! ## A387312.P6954795175070439987

`A004526(A269160(n))`
-/

namespace A387312.P6954795175070439987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A269160 n).toNat

end

end A387312.P6954795175070439987

namespace A387312

/-- `A004526(A269160(n))` -/
def P6954795175070439987.Spec : Prop :=
  ∀ n, P6954795175070439987.a n = A387312 n

end A387312

/-! ## A387312.P13534443879975631231

`A028242(or(1, A269160(n)))`
-/

namespace A387312.P13534443879975631231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A269160 n)).toNat

end

end A387312.P13534443879975631231

namespace A387312

/-- `A028242(or(1, A269160(n)))` -/
def P13534443879975631231.Spec : Prop :=
  ∀ n, P13534443879975631231.a n = A387312 n

end A387312

/-!
# A387313: Expansion of 1/((1-x) * (1-9*x))^(5/2).

The programs for A387313, there is no canonical definition to state claims against.
-/

/-! ## A387313.P14062147011858993709

`∑[∑[∑[A387229(n)]]]`
-/

namespace A387313.P14062147011858993709
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387229 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387313.P14062147011858993709

/-!
# A387315: Expansion of 1/((1-x) * (1-13*x))^(5/2).

The programs for A387315, there is no canonical definition to state claims against.
-/

/-! ## A387315.P6397285765343055359

`∑[∑[∑[A387230(n)]]]`
-/

namespace A387315.P6397285765343055359
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387230 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387315.P6397285765343055359

/-!
# A387318: a(n) is the maximum number of water-pouring moves needed to reach (1, 1, ..., 1) from any valid initial configuration for n bottles.

The programs for A387318, there is no canonical definition to state claims against.
-/

/-! ## A387318.P4177871365185194884

`comp[∑[gcd(2, ∑[n])+2]]`
-/

namespace A387318.P4177871365185194884
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f3 j) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A387318.P4177871365185194884

/-! ## A387318.P122917349463301262

`comp[ceil(log((n+3)!²))]`
-/

namespace A387318.P122917349463301262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (Nat.factorial (n + 3) ^ 2 : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A387318.P122917349463301262

/-! ## A387318.P2111789893363110019

`comp[∑[comp[∑[n]]-n]+2]`
-/

namespace A387318.P2111789893363110019
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A387318.P2111789893363110019

/-!
# A387319: Numbers k for which modulo 3 and modulo another multiple of 3 are coincident among the fractions (2*k mod m)/m for 1 <= m <= k.

The programs for A387319, the canonical program `A387319.P17597783198726216255` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387319 has offset 1).

The definition of A387319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387319.P8257288981389445470

`A343311(n+1)+A159075(n)`
-/

namespace A387319.P8257288981389445470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1) + A159075 n

end

end A387319.P8257288981389445470

namespace A387319

/-- `A343311(n+1)+A159075(n)` -/
def P8257288981389445470.Spec : Prop :=
  ∀ n, P8257288981389445470.a n = A387319 (n + 1)

end A387319

/-! ## A387319.P17597783198726216255

`A343311(n+1)-A063524(n)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A387319

/-- `A343311(n+1)-A063524(n)` -/
def P17597783198726216255.Spec : Prop :=
  ∀ n, P17597783198726216255.a n = A387319 (n + 1)

theorem P17597783198726216255.correct : P17597783198726216255.Spec := by
  intro n
  simp only [A387319, Nat.add_sub_cancel]

end A387319

/-! ## A387319.P2442433390106032837

`lt[floor(5*(n+1)/3)-floor(5*n/3), A167865(n)]`
-/

namespace A387319.P2442433390106032837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((n + 1 : ℚ) / 3)⌋ - ⌊5 * ((n : ℚ) / 3)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387319.P2442433390106032837

namespace A387319

/-- `lt[floor(5*(n+1)/3)-floor(5*n/3), A167865(n)]` -/
def P2442433390106032837.Spec : Prop :=
  ∀ n, (P2442433390106032837.a n : ℤ) = A387319 (n + 1)

end A387319

/-! ## A387319.P4892475872933919596

`lt[A001222(2*n+5), A000041(A167865(n))]`
-/

namespace A387319.P4892475872933919596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A167865 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387319.P4892475872933919596

namespace A387319

/-- `lt[A001222(2*n+5), A000041(A167865(n))]` -/
def P4892475872933919596.Spec : Prop :=
  ∀ n, (P4892475872933919596.a n : ℤ) = A387319 (n + 1)

end A387319

/-! ## A387319.P15743057773582472749

`lt[A331857(n+3), A074635(A167865(n))]`
-/

namespace A387319.P15743057773582472749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331857 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074635 (A167865 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387319.P15743057773582472749

namespace A387319

/-- `lt[A331857(n+3), A074635(A167865(n))]` -/
def P15743057773582472749.Spec : Prop :=
  ∀ n, (P15743057773582472749.a n : ℤ) = A387319 (n + 1)

end A387319

/-!
# A387325: Self-inverse permutation of the nonnegative integers, by swapping and converting the head and tail parts of n in binary and using the rightmost 0-bit as their separator.

The programs for A387325, the canonical program `A387325.P12366465277394037670` is in `Seq.B007.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387325 has offset 0).

The definition of A387325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387325.P12366465277394037670

`A117303(n+1)-1`

The canonical program, it is in `Seq.B007.C002`.
-/

namespace A387325

/-- `A117303(n+1)-1` -/
def P12366465277394037670.Spec : Prop :=
  ∀ n, P12366465277394037670.a n = A387325 n

theorem P12366465277394037670.correct : P12366465277394037670.Spec := by
  intro n
  simp only [A387325]

end A387325

/-! ## A387325.P10602867737513576169

`A153881(n+2)+A117303(n+1)`
-/

namespace A387325.P10602867737513576169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A117303 (n + 1)

end

end A387325.P10602867737513576169

namespace A387325

/-- `A153881(n+2)+A117303(n+1)` -/
def P10602867737513576169.Spec : Prop :=
  ∀ n, P10602867737513576169.a n = A387325 n

end A387325

/-! ## A387325.P3470590897878273988

`A348508(floor(1/(n+1))+1)+A117303(n+1)`
-/

namespace A387325.P3470590897878273988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348508 (⌊1 / (n + 1 : ℚ)⌋ + 1).toNat + A117303 (n + 1)

end

end A387325.P3470590897878273988

namespace A387325

/-- `A348508(floor(1/(n+1))+1)+A117303(n+1)` -/
def P3470590897878273988.Spec : Prop :=
  ∀ n, P3470590897878273988.a n = A387325 n

end A387325

/-! ## A387325.P10761749827791638625

`A339792(A231232(n+1))+A117303(n+1)`
-/

namespace A387325.P10761749827791638625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339792 (A231232 (n + 1)).toNat + A117303 (n + 1)

end

end A387325.P10761749827791638625

namespace A387325

/-- `A339792(A231232(n+1))+A117303(n+1)` -/
def P10761749827791638625.Spec : Prop :=
  ∀ n, P10761749827791638625.a n = A387325 n

end A387325

/-! ## A387325.P17565844899140443938

`A075300(A075303(n))`
-/

namespace A387325.P17565844899140443938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075300 (A075303 n).toNat

end

end A387325.P17565844899140443938

namespace A387325

/-- `A075300(A075303(n))` -/
def P17565844899140443938.Spec : Prop :=
  ∀ n, P17565844899140443938.a n = A387325 n

end A387325

/-! ## A387325.P16979070788052339964

`A075302(A075301(n))`
-/

namespace A387325.P16979070788052339964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075302 (A075301 n).toNat

end

end A387325.P16979070788052339964

namespace A387325

/-- `A075302(A075301(n))` -/
def P16979070788052339964.Spec : Prop :=
  ∀ n, P16979070788052339964.a n = A387325 n

end A387325

/-! ## A387325.P9356943277197760688

`A346241(A141166(n+1))+A117303(n+1)`
-/

namespace A387325.P9356943277197760688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346241 (A141166 (n + 1)).toNat + A117303 (n + 1)

end

end A387325.P9356943277197760688

namespace A387325

/-- `A346241(A141166(n+1))+A117303(n+1)` -/
def P9356943277197760688.Spec : Prop :=
  ∀ n, P9356943277197760688.a n = A387325 n

end A387325

/-! ## A387325.P3589999984697234856

`A346241(A096478(n+1))+A117303(n+1)`
-/

namespace A387325.P3589999984697234856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346241 (A096478 (n + 1)).toNat + A117303 (n + 1)

end

end A387325.P3589999984697234856

namespace A387325

/-- `A346241(A096478(n+1))+A117303(n+1)` -/
def P3589999984697234856.Spec : Prop :=
  ∀ n, P3589999984697234856.a n = A387325 n

end A387325

/-!
# A387326: Numbers whose prime factors do not have choosable sets of integer partitions.

The programs for A387326, there is no canonical definition to state claims against.
-/

/-! ## A387326.P10141068466620859251

`∑[gcd(8, C(n, 10))]`
-/

namespace A387326.P10141068466620859251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 8 (Nat.choose n 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387326.P10141068466620859251

/-! ## A387326.P14924145600532635761

`∑[xor(8, n-∑{digits}[n, #])]`
-/

namespace A387326.P14924145600532635761
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 8 ((n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387326.P14924145600532635761

/-! ## A387326.P523143103716659415

`∑[dr(2^(n+3-dr(n)))]`
-/

namespace A387326.P523143103716659415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n + 3 : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ) : ℤ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387326.P523143103716659415

/-! ## A387326.P17403790381527101230

`∪[8*(n+1), (n+2)^4]`
-/

namespace A387326.P17403790381527101230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A387326.P17403790381527101230

/-! ## A387326.P9629927096303531953

`∑[8^∏{p}[n+1, val(dr(#), #)]]`
-/

namespace A387326.P9629927096303531953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ (∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation (SequenceMachineLib.digitalRoot (p : ℤ)) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387326.P9629927096303531953

/-!
# A387327: Number of ways to choose an integer partition of each prime factor of n (with multiplicity).

The programs for A387327, there is no canonical definition to state claims against.
-/

/-! ## A387327.P15003469750405627122

`A003964(A290641(n+1))`
-/

namespace A387327.P15003469750405627122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003964 (A290641 (n + 1)).toNat

end

end A387327.P15003469750405627122

/-! ## A387327.P10125597269387070365

`A299200(A064988(n+1))`
-/

namespace A387327.P10125597269387070365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (A064988 (n + 1)).toNat

end

end A387327.P10125597269387070365

/-! ## A387327.P2760166742733601071

`∏{e}[A074736(n+1), A000041(#)]`
-/

namespace A387327.P2760166742733601071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000041 (Nat.factorization (f1 n).natAbs p)

end

end A387327.P2760166742733601071

/-! ## A387327.P15401719573164400635

`A000688(A074736(n+1))`
-/

namespace A387327.P15401719573164400635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A074736 (n + 1)).toNat

end

end A387327.P15401719573164400635

/-!
# A387328: Number of integer partitions of n whose parts have choosable sets of integer partitions.

The programs for A387328, there is no canonical definition to state claims against.
-/

/-! ## A387328.P9077565539524135399

`A000041(n)-A387134(n)`
-/

namespace A387328.P9077565539524135399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A387134 n

end

end A387328.P9077565539524135399

/-! ## A387328.P4378210728822161402

`∑[A002865(n)]-A387134(n)`
-/

namespace A387328.P4378210728822161402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A387134 n

end

end A387328.P4378210728822161402

/-! ## A387328.P2587587229607002116

`A133041(n)-n-A387134(n)`
-/

namespace A387328.P2587587229607002116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (n : ℤ) - A387134 n

end

end A387328.P2587587229607002116

/-! ## A387328.P4811466071713894658

`A039900(n)+A003106(n)-A387134(n)`
-/

namespace A387328.P4811466071713894658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039900 n + A003106 n - A387134 n

end

end A387328.P4811466071713894658

/-! ## A387328.P11883790409333782707

`A238873(n)+A387118(n)-A387134(n)`
-/

namespace A387328.P11883790409333782707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238873 n + (A387118 n - A387134 n)

end

end A387328.P11883790409333782707

/-!
# A387329: Number of integer partitions of n such that it is not possible to choose a different constant integer partition of each part.

The programs for A387329, there is no canonical definition to state claims against.
-/

/-! ## A387329.P16760954537344065464

`A000041(n)-A387330(n)`
-/

namespace A387329.P16760954537344065464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A387330 n

end

end A387329.P16760954537344065464

/-! ## A387329.P1934420646398027873

`A238873(n)+A387118(n)-A387330(n)`
-/

namespace A387329.P1934420646398027873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238873 n + (A387118 n - A387330 n)

end

end A387329.P1934420646398027873

/-! ## A387329.P13359629816100710518

`A000041(n)-A143824(A000213(n))`
-/

namespace A387329.P13359629816100710518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A143824 (A000213 n).toNat

end

end A387329.P13359629816100710518

/-!
# A387330: Number of integer partitions of n such that it is possible to choose a different constant integer partition of each part.

The programs for A387330, there is no canonical definition to state claims against.
-/

/-! ## A387330.P2085329278233891436

`A000041(n)-A387329(n)`
-/

namespace A387330.P2085329278233891436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A387329 n

end

end A387330.P2085329278233891436

/-! ## A387330.P574917834208257564

`∑[A002865(n)]-A387329(n)`
-/

namespace A387330.P574917834208257564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A387329 n

end

end A387330.P574917834208257564

/-! ## A387330.P13770338640318245648

`A238873(n)+A387118(n)-A387329(n)`
-/

namespace A387330.P13770338640318245648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238873 n + (A387118 n - A387329 n)

end

end A387330.P13770338640318245648

/-! ## A387330.P15382190646961093550

`A263846(A128695(n+1))`
-/

namespace A387330.P15382190646961093550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263846 (A128695 (n + 1)).toNat

end

end A387330.P15382190646961093550

/-! ## A387330.P14306723364094207896

`A000196(A325545(n+1)%A060752(n))`
-/

namespace A387330.P14306723364094207896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A325545 (n + 1)) (A060752 n)).toNat

end

end A387330.P14306723364094207896

/-!
# A387332: Number of binary strings of length n that contain at least one maximal run of ones of even length.

The programs for A387332, the canonical program `A387332.P6355845914133237599` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387332 has offset 0).

The definition of A387332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387332.P12319182836575121635

`ogf((x^2-x^3)/(1-3x+5x^3-2x^4))`
-/

namespace A387332.P12319182836575121635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, -1] [1, -3, 0, 5, -2] n

end

end A387332.P12319182836575121635

namespace A387332

/-- `ogf((x^2-x^3)/(1-3x+5x^3-2x^4))` -/
def P12319182836575121635.Spec : Prop :=
  ∀ n, P12319182836575121635.a n = A387332 n

end A387332

/-! ## A387332.P6355845914133237599

`2^n-A028495(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A387332

/-- `2^n-A028495(n+1)` -/
def P6355845914133237599.Spec : Prop :=
  ∀ n, P6355845914133237599.a n = A387332 n

theorem P6355845914133237599.correct : P6355845914133237599.Spec := by
  intro n
  simp only [A387332]

end A387332

/-! ## A387332.P6727817048789122208

`A217038(A148749(n))`
-/

namespace A387332.P6727817048789122208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (A148749 n).toNat

end

end A387332.P6727817048789122208

namespace A387332

/-- `A217038(A148749(n))` -/
def P6727817048789122208.Spec : Prop :=
  ∀ n, P6727817048789122208.a n = A387332 n

end A387332

/-! ## A387332.P17475092347432414463

`A363743(A354963(n))`
-/

namespace A387332.P17475092347432414463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363743 (A354963 n).toNat

end

end A387332.P17475092347432414463

namespace A387332

/-- `A363743(A354963(n))` -/
def P17475092347432414463.Spec : Prop :=
  ∀ n, P17475092347432414463.a n = A387332 n

end A387332

/-!
# A387335: 1, 2, 4, along with numbers divisible by at least two distinct primes.

The programs for A387335, the canonical program `A387335.P18233147024188934057` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387335 has offset 1).

The definition of A387335 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387335.P18233147024188934057

`∪[A024619(n+1), A000123(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A387335

/-- `∪[A024619(n+1), A000123(n)]` -/
def P18233147024188934057.Spec : Prop :=
  ∀ n, (P18233147024188934057.a n : ℤ) = A387335 (n + 1)

theorem P18233147024188934057.correct : P18233147024188934057.Spec := by
  intro n
  simp only [A387335, Nat.add_sub_cancel]

end A387335

/-! ## A387335.P13377619284808005637

`∪[A024619(n+1), A008804(n)]`
-/

namespace A387335.P13377619284808005637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387335.P13377619284808005637

namespace A387335

/-- `∪[A024619(n+1), A008804(n)]` -/
def P13377619284808005637.Spec : Prop :=
  ∀ n, (P13377619284808005637.a n : ℤ) = A387335 (n + 1)

end A387335

/-! ## A387335.P1940482458004046382

`∪[A006314(n+1), A361102(n+1)]`
-/

namespace A387335.P1940482458004046382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387335.P1940482458004046382

namespace A387335

/-- `∪[A006314(n+1), A361102(n+1)]` -/
def P1940482458004046382.Spec : Prop :=
  ∀ n, (P1940482458004046382.a n : ℤ) = A387335 (n + 1)

end A387335

/-! ## A387335.P1809520914548269465

`lt[n-floor(sqrt(2*n+1)-1/2), A205959(n+1)]+1`
-/

namespace A387335.P1809520914548269465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊Real.sqrt (2 * n + 1 : ℝ) - ((1 : ℚ) / 2 : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205959 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A387335.P1809520914548269465

namespace A387335

/-- `lt[n-floor(sqrt(2*n+1)-1/2), A205959(n+1)]+1` -/
def P1809520914548269465.Spec : Prop :=
  ∀ n, (P1809520914548269465.a n : ℤ) = A387335 (n + 1)

end A387335

/-! ## A387335.P10840351071589320624

`lt[(1-n)², ∏{e}[n, #*(n+1)]]`
-/

namespace A387335.P10840351071589320624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A387335.P10840351071589320624

namespace A387335

/-- `lt[(1-n)², ∏{e}[n, #*(n+1)]]` -/
def P10840351071589320624.Spec : Prop :=
  ∀ n, (P10840351071589320624.a n : ℤ) = A387335 (n + 1)

end A387335

/-! ## A387335.P10492298621442353214

`lt[A165012(A006987(n+1)), A062319(n)]`
-/

namespace A387335.P10492298621442353214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165012 (A006987 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062319 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387335.P10492298621442353214

namespace A387335

/-- `lt[A165012(A006987(n+1)), A062319(n)]` -/
def P10492298621442353214.Spec : Prop :=
  ∀ n, (P10492298621442353214.a n : ℤ) = A387335 (n + 1)

end A387335

/-!
# A387337: a(n) = Sum_{k=0..n} 2^k * binomial(n+2,k) * binomial(n+2,k+2).

The programs for A387337, there is no canonical definition to state claims against.
-/

/-! ## A387337.P7835586354041448699

`A118384(A000124(n+2)+1)`
-/

namespace A387337.P7835586354041448699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118384 (A000124 (n + 2) + 1).toNat

end

end A387337.P7835586354041448699

/-! ## A387337.P750159855536307729

`A118384(A000217(n+2)+2)`
-/

namespace A387337.P750159855536307729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118384 (A000217 (n + 2) + 2).toNat

end

end A387337.P750159855536307729

/-! ## A387337.P5605042700437394252

`A064861(A090288(n+1))`
-/

namespace A387337.P5605042700437394252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064861 (A090288 (n + 1)).toNat

end

end A387337.P5605042700437394252

/-! ## A387337.P1171025149285719829

`A064861(eq[n+5, A038722(n+1)])`
-/

namespace A387337.P1171025149285719829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A387337.P1171025149285719829

/-! ## A387337.P1794667254008956974

`A200536(A028552(n+1))`
-/

namespace A387337.P1794667254008956974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200536 (A028552 (n + 1)).toNat

end

end A387337.P1794667254008956974

/-!
# A387338: a(n) = Sum_{k=0..n} 2^k * binomial(n+3,k) * binomial(n+3,k+3).

The programs for A387338, there is no canonical definition to state claims against.
-/

/-! ## A387338.P5941724591704896707

`A118384(A167614(n+2))`
-/

namespace A387338.P5941724591704896707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118384 (A167614 (n + 2)).toNat

end

end A387338.P5941724591704896707

/-! ## A387338.P14275503802208557532

`A118384(A000217(n+4)-(n+1))`
-/

namespace A387338.P14275503802208557532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118384 (A000217 (n + 4) - (n + 1 : ℤ)).toNat

end

end A387338.P14275503802208557532

/-!
# A387339: a(n) = Sum_{k=0..n} 3^k * binomial(n+2,k) * binomial(n+2,k+2).

The programs for A387339, there is no canonical definition to state claims against.
-/

/-! ## A387339.P4723678590042005717

`A299989(A102305(n+2))`
-/

namespace A387339.P4723678590042005717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299989 (A102305 (n + 2)).toNat

end

end A387339.P4723678590042005717

/-! ## A387339.P10245853628126943241

`A152842(A090288(n+1))`
-/

namespace A387339.P10245853628126943241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152842 (A090288 (n + 1)).toNat

end

end A387339.P10245853628126943241

/-! ## A387339.P18432332302218665081

`A152842(A132209(n+1)+A005408(2*n+3))`
-/

namespace A387339.P18432332302218665081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152842 (A132209 (n + 1) + A005408 (2 * n + 3)).toNat

end

end A387339.P18432332302218665081

/-!
# A387340: a(n) = Sum_{k=0..n} 3^k * binomial(n+3,k) * binomial(n+3,k+3).

The programs for A387340, there is no canonical definition to state claims against.
-/

/-! ## A387340.P6064762884564010156

`A299989((n+4)²+3)`
-/

namespace A387340.P6064762884564010156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299989 ((n + 4) ^ 2 + 3)

end

end A387340.P6064762884564010156

/-!
# A387341: Expansion of 1/(1 - 6*x + x^2)^(5/2).

The programs for A387341, the canonical program `A387341.P2794587713551805196` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387341 has offset 0).

The definition of A387341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387341.P2794587713551805196

`A277660(n+2)/2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A387341

/-- `A277660(n+2)/2` -/
def P2794587713551805196.Spec : Prop :=
  ∀ n, P2794587713551805196.a n = (A387341 n : ℚ)

end A387341

/-!
# A387348: a(n) = W(n,2) - S(n,2) where W is the Wythoff array (A035513) and S is the Stolarsky array (A035506).

The programs for A387348, the canonical program `A387348.P10737065631606712067` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387348 has offset 1).

The definition of A387348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387348.P10737065631606712067

`A096270(n)-A327174(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A387348

/-- `A096270(n)-A327174(n)` -/
def P10737065631606712067.Spec : Prop :=
  ∀ n, P10737065631606712067.a n = A387348 (n + 1)

theorem P10737065631606712067.correct : P10737065631606712067.Spec := by
  intro n
  simp only [A387348, Nat.add_sub_cancel]

end A387348

/-! ## A387348.P7176302905056362897

`A075317(n+1)-A342279(n)`
-/

namespace A387348.P7176302905056362897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075317 (n + 1) - A342279 n

end

end A387348.P7176302905056362897

namespace A387348

/-- `A075317(n+1)-A342279(n)` -/
def P7176302905056362897.Spec : Prop :=
  ∀ n, P7176302905056362897.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P4864666536542811228

`A089809(n+1)-A339824(n)`
-/

namespace A387348.P4864666536542811228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (n + 1) - A339824 n

end

end A387348.P4864666536542811228

namespace A387348

/-- `A089809(n+1)-A339824(n)` -/
def P4864666536542811228.Spec : Prop :=
  ∀ n, P4864666536542811228.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P8448122598350653747

`A035336(n+1)-A035487(n+1)`
-/

namespace A387348.P8448122598350653747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1) - A035487 (n + 1)

end

end A387348.P8448122598350653747

namespace A387348

/-- `A035336(n+1)-A035487(n+1)` -/
def P8448122598350653747.Spec : Prop :=
  ∀ n, P8448122598350653747.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P1580682340695022603

`A075318(n+1)-A184517(n+1)`
-/

namespace A387348.P1580682340695022603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075318 (n + 1) - A184517 (n + 1)

end

end A387348.P1580682340695022603

namespace A387348

/-- `A075318(n+1)-A184517(n+1)` -/
def P1580682340695022603.Spec : Prop :=
  ∀ n, P1580682340695022603.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P7529488256733370625

`A005206(n)+A005206(n)-A001965(n)`
-/

namespace A387348.P7529488256733370625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n + (A005206 n - A001965 n)

end

end A387348.P7529488256733370625

namespace A387348

/-- `A005206(n)+A005206(n)-A001965(n)` -/
def P7529488256733370625.Spec : Prop :=
  ∀ n, P7529488256733370625.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P10437154529755865947

`(A339052(n)-A005614(n))*A005614(n+1)`
-/

namespace A387348.P10437154529755865947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A339052 n - A005614 n) * A005614 (n + 1)

end

end A387348.P10437154529755865947

namespace A387348

/-- `(A339052(n)-A005614(n))*A005614(n+1)` -/
def P10437154529755865947.Spec : Prop :=
  ∀ n, P10437154529755865947.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P9905722245245550890

`A000201(n+1)+A022342(n+1)-A342279(n)`
-/

namespace A387348.P9905722245245550890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) + (A022342 (n + 1) - A342279 n)

end

end A387348.P9905722245245550890

namespace A387348

/-- `A000201(n+1)+A022342(n+1)-A342279(n)` -/
def P9905722245245550890.Spec : Prop :=
  ∀ n, P9905722245245550890.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P1763622217651180625

`A001950(A000201(n+1))-A035487(n+1)`
-/

namespace A387348.P1763622217651180625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A000201 (n + 1)).toNat - A035487 (n + 1)

end

end A387348.P1763622217651180625

namespace A387348

/-- `A001950(A000201(n+1))-A035487(n+1)` -/
def P1763622217651180625.Spec : Prop :=
  ∀ n, P1763622217651180625.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P12270003836556787727

`A005614(2*n)-A078588(n+1)`
-/

namespace A387348.P12270003836556787727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (2 * n) - A078588 (n + 1)

end

end A387348.P12270003836556787727

namespace A387348

/-- `A005614(2*n)-A078588(n+1)` -/
def P12270003836556787727.Spec : Prop :=
  ∀ n, P12270003836556787727.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P17872432399157876450

`A163801(2*n)-A005206(2*n)`
-/

namespace A387348.P17872432399157876450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163801 (2 * n) - A005206 (2 * n)

end

end A387348.P17872432399157876450

namespace A387348

/-- `A163801(2*n)-A005206(2*n)` -/
def P17872432399157876450.Spec : Prop :=
  ∀ n, P17872432399157876450.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P143052611231477719

`A163873(2*n)-A005206(2*n)`
-/

namespace A387348.P143052611231477719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163873 (2 * n) - A005206 (2 * n)

end

end A387348.P143052611231477719

namespace A387348

/-- `A163873(2*n)-A005206(2*n)` -/
def P143052611231477719.Spec : Prop :=
  ∀ n, P143052611231477719.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P16253022008893333391

`A075317(n+1)-A000201(2*n+1)`
-/

namespace A387348.P16253022008893333391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075317 (n + 1) - A000201 (2 * n + 1)

end

end A387348.P16253022008893333391

namespace A387348

/-- `A075317(n+1)-A000201(2*n+1)` -/
def P16253022008893333391.Spec : Prop :=
  ∀ n, P16253022008893333391.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P14915252510322360739

`A005614(2*n)-A171587(2*n+1)`
-/

namespace A387348.P14915252510322360739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (2 * n) - A171587 (2 * n + 1)

end

end A387348.P14915252510322360739

namespace A387348

/-- `A005614(2*n)-A171587(2*n+1)` -/
def P14915252510322360739.Spec : Prop :=
  ∀ n, P14915252510322360739.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P13532152601532080908

`A137708(2*n+1)-A000201(2*n+1)`
-/

namespace A387348.P13532152601532080908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137708 (2 * n + 1) - A000201 (2 * n + 1)

end

end A387348.P13532152601532080908

namespace A387348

/-- `A137708(2*n+1)-A000201(2*n+1)` -/
def P13532152601532080908.Spec : Prop :=
  ∀ n, P13532152601532080908.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P2099659758287472977

`A096270(2*n+1)-A171587(2*n+1)`
-/

namespace A387348.P2099659758287472977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (2 * n + 1) - A171587 (2 * n + 1)

end

end A387348.P2099659758287472977

namespace A387348

/-- `A096270(2*n+1)-A171587(2*n+1)` -/
def P2099659758287472977.Spec : Prop :=
  ∀ n, P2099659758287472977.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P15287170897596219558

`A273129(2*n)-A003849(2*n)`
-/

namespace A387348.P15287170897596219558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273129 (2 * n) - A003849 (2 * n)

end

end A387348.P15287170897596219558

namespace A387348

/-- `A273129(2*n)-A003849(2*n)` -/
def P15287170897596219558.Spec : Prop :=
  ∀ n, P15287170897596219558.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P7558438902905607084

`A014677(A000201(2*n+1)+n+2)`
-/

namespace A387348.P7558438902905607084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014677 (A000201 (2 * n + 1) + (n + 2 : ℤ)).toNat

end

end A387348.P7558438902905607084

namespace A387348

/-- `A014677(A000201(2*n+1)+n+2)` -/
def P7558438902905607084.Spec : Prop :=
  ∀ n, P7558438902905607084.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P16308383461154488668

`A156596(2*n+1)-A171587(2*n+1)`
-/

namespace A387348.P16308383461154488668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156596 (2 * n + 1) - A171587 (2 * n + 1)

end

end A387348.P16308383461154488668

namespace A387348

/-- `A156596(2*n+1)-A171587(2*n+1)` -/
def P16308383461154488668.Spec : Prop :=
  ∀ n, P16308383461154488668.a n = A387348 (n + 1)

end A387348

/-! ## A387348.P1497957987715944299

`A143667(A003622(n+1))-1`
-/

namespace A387348.P1497957987715944299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143667 (A003622 (n + 1)).toNat - 1

end

end A387348.P1497957987715944299

namespace A387348

/-- `A143667(A003622(n+1))-1` -/
def P1497957987715944299.Spec : Prop :=
  ∀ n, P1497957987715944299.a n = A387348 (n + 1)

end A387348

/-!
# A387349: Positions of 0's in A387348.

The programs for A387349, the canonical program `A387349.P7395513142153534106` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387349 has offset 1).

The definition of A387349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387349.P7395513142153534106

`comp[A190429(n+1)]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A387349

/-- `comp[A190429(n+1)]+1` -/
def P7395513142153534106.Spec : Prop :=
  ∀ n, (P7395513142153534106.a n : ℤ) = A387349 (n + 1)

theorem P7395513142153534106.correct : P7395513142153534106.Spec := by
  intro n
  simp only [A387349, Nat.add_sub_cancel]

end A387349

/-! ## A387349.P8457853871164443617

`∪[A007064(n+1), A380804(n+1)]`
-/

namespace A387349.P8457853871164443617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387349.P8457853871164443617

namespace A387349

/-- `∪[A007064(n+1), A380804(n+1)]` -/
def P8457853871164443617.Spec : Prop :=
  ∀ n, (P8457853871164443617.a n : ℤ) = A387349 (n + 1)

end A387349

/-! ## A387349.P15073876514314702136

`filter[n+1, A380151(#)]`
-/

namespace A387349.P15073876514314702136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380151 (f1 j) = 1) n)

end

end A387349.P15073876514314702136

namespace A387349

/-- `filter[n+1, A380151(#)]` -/
def P15073876514314702136.Spec : Prop :=
  ∀ n, (P15073876514314702136.a n : ℤ) = A387349 (n + 1)

end A387349

/-! ## A387349.P6869429366985032723

`record[A062157(A000201(2*n+1))+n]`
-/

namespace A387349.P6869429366985032723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A000201 (2 * n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387349.P6869429366985032723

namespace A387349

/-- `record[A062157(A000201(2*n+1))+n]` -/
def P6869429366985032723.Spec : Prop :=
  ∀ n, P6869429366985032723.a n = A387349 (n + 1)

end A387349

/-! ## A387349.P10411754678478391773

`ceil(A086843(n+1)/2)`
-/

namespace A387349.P10411754678478391773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A086843 (n + 1) : ℚ) / 2⌉

end

end A387349.P10411754678478391773

namespace A387349

/-- `ceil(A086843(n+1)/2)` -/
def P10411754678478391773.Spec : Prop :=
  ∀ n, P10411754678478391773.a n = A387349 (n + 1)

end A387349

/-! ## A387349.P14417417069776354324

`A000463(A086843(n+1))`
-/

namespace A387349.P14417417069776354324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A086843 (n + 1)).toNat

end

end A387349.P14417417069776354324

namespace A387349

/-- `A000463(A086843(n+1))` -/
def P14417417069776354324.Spec : Prop :=
  ∀ n, P14417417069776354324.a n = A387349 (n + 1)

end A387349

/-! ## A387349.P2199154121566074807

`A004525(A086843(n+1)+1)`
-/

namespace A387349.P2199154121566074807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A086843 (n + 1) + 1).toNat

end

end A387349.P2199154121566074807

namespace A387349

/-- `A004525(A086843(n+1)+1)` -/
def P2199154121566074807.Spec : Prop :=
  ∀ n, P2199154121566074807.a n = A387349 (n + 1)

end A387349

/-!
# A387350: Positions of 1's in A387348.

The programs for A387350, the canonical program `A387350.P5346268956136855131` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387350 has offset 1).

The definition of A387350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387350.P5549148996991750227

`A387351(n+1)-A005652(n+1)`
-/

namespace A387350.P5549148996991750227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387351 (n + 1) - A005652 (n + 1)

end

end A387350.P5549148996991750227

namespace A387350

/-- `A387351(n+1)-A005652(n+1)` -/
def P5549148996991750227.Spec : Prop :=
  ∀ n, P5549148996991750227.a n = A387350 (n + 1)

end A387350

/-! ## A387350.P5346268956136855131

`A002251(A005652(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A387350

/-- `A002251(A005652(n+1))` -/
def P5346268956136855131.Spec : Prop :=
  ∀ n, P5346268956136855131.a n = A387350 (n + 1)

theorem P5346268956136855131.correct : P5346268956136855131.Spec := by
  intro n
  simp only [A387350, Nat.add_sub_cancel]

end A387350

/-! ## A387350.P10334051407714201594

`A022342(A279934(n+1))`
-/

namespace A387350.P10334051407714201594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A279934 (n + 1)).toNat

end

end A387350.P10334051407714201594

namespace A387350

/-- `A022342(A279934(n+1))` -/
def P10334051407714201594.Spec : Prop :=
  ∀ n, P10334051407714201594.a n = A387350 (n + 1)

end A387350

/-! ## A387350.P3277966158858549272

`∩[A007067(n), A026351(n)]`
-/

namespace A387350.P3277966158858549272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387350.P3277966158858549272

namespace A387350

/-- `∩[A007067(n), A026351(n)]` -/
def P3277966158858549272.Spec : Prop :=
  ∀ n, (P3277966158858549272.a n : ℤ) = A387350 (n + 1)

end A387350

/-! ## A387350.P7666060149968556449

`∩[A001950(n+1), A007067(n)]`
-/

namespace A387350.P7666060149968556449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387350.P7666060149968556449

namespace A387350

/-- `∩[A001950(n+1), A007067(n)]` -/
def P7666060149968556449.Spec : Prop :=
  ∀ n, (P7666060149968556449.a n : ℤ) = A387350 (n + 1)

end A387350

/-! ## A387350.P9635946956517671868

`∩[A005653(n+1), A007067(n)]`
-/

namespace A387350.P9635946956517671868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387350.P9635946956517671868

namespace A387350

/-- `∩[A005653(n+1), A007067(n)]` -/
def P9635946956517671868.Spec : Prop :=
  ∀ n, (P9635946956517671868.a n : ℤ) = A387350 (n + 1)

end A387350

/-! ## A387350.P6539050949806573571

`∩[A140398(n+1), A007067(n)]`
-/

namespace A387350.P6539050949806573571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387350.P6539050949806573571

namespace A387350

/-- `∩[A140398(n+1), A007067(n)]` -/
def P6539050949806573571.Spec : Prop :=
  ∀ n, (P6539050949806573571.a n : ℤ) = A387350 (n + 1)

end A387350

/-! ## A387350.P15878173623517170022

`∩[A181713(n+1), A007067(n)]`
-/

namespace A387350.P15878173623517170022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387350.P15878173623517170022

namespace A387350

/-- `∩[A181713(n+1), A007067(n)]` -/
def P15878173623517170022.Spec : Prop :=
  ∀ n, (P15878173623517170022.a n : ℤ) = A387350 (n + 1)

end A387350

/-! ## A387350.P17017963633264862612

`∩[A187951(n+1), A007067(n)]`
-/

namespace A387350.P17017963633264862612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387350.P17017963633264862612

namespace A387350

/-- `∩[A187951(n+1), A007067(n)]` -/
def P17017963633264862612.Spec : Prop :=
  ∀ n, (P17017963633264862612.a n : ℤ) = A387350 (n + 1)

end A387350

/-! ## A387350.P8744828444911774208

`∩[A188016(n+1), A007067(n)]`
-/

namespace A387350.P8744828444911774208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387350.P8744828444911774208

namespace A387350

/-- `∩[A188016(n+1), A007067(n)]` -/
def P8744828444911774208.Spec : Prop :=
  ∀ n, (P8744828444911774208.a n : ℤ) = A387350 (n + 1)

end A387350

/-! ## A387350.P4632690658027635324

`∩[A188025(n+1), A007067(n)]`
-/

namespace A387350.P4632690658027635324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387350.P4632690658027635324

namespace A387350

/-- `∩[A188025(n+1), A007067(n)]` -/
def P4632690658027635324.Spec : Prop :=
  ∀ n, (P4632690658027635324.a n : ℤ) = A387350 (n + 1)

end A387350

/-! ## A387350.P11160695874294953129

`∩[A188029(n+1), A007067(n)]`
-/

namespace A387350.P11160695874294953129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387350.P11160695874294953129

namespace A387350

/-- `∩[A188029(n+1), A007067(n)]` -/
def P11160695874294953129.Spec : Prop :=
  ∀ n, (P11160695874294953129.a n : ℤ) = A387350 (n + 1)

end A387350

/-! ## A387350.P9516823670815634943

`∩[A188036(n+1), A007067(n)]`
-/

namespace A387350.P9516823670815634943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387350.P9516823670815634943

namespace A387350

/-- `∩[A188036(n+1), A007067(n)]` -/
def P9516823670815634943.Spec : Prop :=
  ∀ n, (P9516823670815634943.a n : ℤ) = A387350 (n + 1)

end A387350

/-! ## A387350.P15990208247073613051

`∩[A188468(n+1), A007067(n)]`
-/

namespace A387350.P15990208247073613051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387350.P15990208247073613051

namespace A387350

/-- `∩[A188468(n+1), A007067(n)]` -/
def P15990208247073613051.Spec : Prop :=
  ∀ n, (P15990208247073613051.a n : ℤ) = A387350 (n + 1)

end A387350

/-! ## A387350.P6513876251858808893

`A005206(A387351(n+1))`
-/

namespace A387350.P6513876251858808893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A387351 (n + 1)).toNat

end

end A387350.P6513876251858808893

namespace A387350

/-- `A005206(A387351(n+1))` -/
def P6513876251858808893.Spec : Prop :=
  ∀ n, P6513876251858808893.a n = A387350 (n + 1)

end A387350

/-! ## A387350.P12177460783152345978

`filter[A026351(n), A166946(#)]`
-/

namespace A387350.P12177460783152345978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166946 (f1 j).toNat = 1) n)

end

end A387350.P12177460783152345978

namespace A387350

/-- `filter[A026351(n), A166946(#)]` -/
def P12177460783152345978.Spec : Prop :=
  ∀ n, P12177460783152345978.a n = A387350 (n + 1)

end A387350

/-! ## A387350.P2297396342331769237

`filter[A007067(n+1), A089809(#)]`
-/

namespace A387350.P2297396342331769237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089809 (f1 j).toNat = 1) n)

end

end A387350.P2297396342331769237

namespace A387350

/-- `filter[A007067(n+1), A089809(#)]` -/
def P2297396342331769237.Spec : Prop :=
  ∀ n, P2297396342331769237.a n = A387350 (n + 1)

end A387350

/-! ## A387350.P10948564128800318730

`filter[A001950(n+1), A166946(#)]`
-/

namespace A387350.P10948564128800318730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166946 (f1 j).toNat = 1) n)

end

end A387350.P10948564128800318730

namespace A387350

/-- `filter[A001950(n+1), A166946(#)]` -/
def P10948564128800318730.Spec : Prop :=
  ∀ n, P10948564128800318730.a n = A387350 (n + 1)

end A387350

/-! ## A387350.P12015547122385895396

`filter[A004956(n+1), A166946(#)]`
-/

namespace A387350.P12015547122385895396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166946 (f1 j).toNat = 1) n)

end

end A387350.P12015547122385895396

namespace A387350

/-- `filter[A004956(n+1), A166946(#)]` -/
def P12015547122385895396.Spec : Prop :=
  ∀ n, P12015547122385895396.a n = A387350 (n + 1)

end A387350

/-! ## A387350.P16449411882424028362

`filter[A005653(n+1), A166946(#)]`
-/

namespace A387350.P16449411882424028362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166946 (f1 j).toNat = 1) n)

end

end A387350.P16449411882424028362

namespace A387350

/-- `filter[A005653(n+1), A166946(#)]` -/
def P16449411882424028362.Spec : Prop :=
  ∀ n, P16449411882424028362.a n = A387350 (n + 1)

end A387350

/-!
# A387351: Positions of -1's in A387348.

The programs for A387351, the canonical program `A387351.P5126227165797472721` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387351 has offset 1).

The definition of A387351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387351.P5126227165797472721

`A387350(n+1)+A005652(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A387351

/-- `A387350(n+1)+A005652(n+1)` -/
def P5126227165797472721.Spec : Prop :=
  ∀ n, P5126227165797472721.a n = A387351 (n + 1)

theorem P5126227165797472721.correct : P5126227165797472721.Spec := by
  intro n
  simp only [A387351, Nat.add_sub_cancel]

end A387351

/-! ## A387351.P17024719472433896661

`A004937(A005652(n+1))`
-/

namespace A387351.P17024719472433896661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (A005652 (n + 1)).toNat

end

end A387351.P17024719472433896661

namespace A387351

/-- `A004937(A005652(n+1))` -/
def P17024719472433896661.Spec : Prop :=
  ∀ n, P17024719472433896661.a n = A387351 (n + 1)

end A387351

/-! ## A387351.P3558974259610693016

`filter[A004937(n), A327174(#)]`
-/

namespace A387351.P3558974259610693016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327174 (f1 j).toNat = 1) n)

end

end A387351.P3558974259610693016

namespace A387351

/-- `filter[A004937(n), A327174(#)]` -/
def P3558974259610693016.Spec : Prop :=
  ∀ n, P3558974259610693016.a n = A387351 (n + 1)

end A387351

/-! ## A387351.P3416015597339096984

`∩[A004937(n), A026352(n)]`
-/

namespace A387351.P3416015597339096984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387351.P3416015597339096984

namespace A387351

/-- `∩[A004937(n), A026352(n)]` -/
def P3416015597339096984.Spec : Prop :=
  ∀ n, (P3416015597339096984.a n : ℤ) = A387351 (n + 1)

end A387351

/-! ## A387351.P1143861484124723771

`A001950(A279934(n+1))-2`
-/

namespace A387351.P1143861484124723771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A279934 (n + 1)).toNat - 2

end

end A387351.P1143861484124723771

namespace A387351

/-- `A001950(A279934(n+1))-2` -/
def P1143861484124723771.Spec : Prop :=
  ∀ n, P1143861484124723771.a n = A387351 (n + 1)

end A387351

/-! ## A387351.P4403192413541570688

`∩[A003234(n+1), A004937(n)]`
-/

namespace A387351.P4403192413541570688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387351.P4403192413541570688

namespace A387351

/-- `∩[A003234(n+1), A004937(n)]` -/
def P4403192413541570688.Spec : Prop :=
  ∀ n, (P4403192413541570688.a n : ℤ) = A387351 (n + 1)

end A387351

/-! ## A387351.P5279318687993413551

`∩[A003623(n+1), A004937(n)]`
-/

namespace A387351.P5279318687993413551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387351.P5279318687993413551

namespace A387351

/-- `∩[A003623(n+1), A004937(n)]` -/
def P5279318687993413551.Spec : Prop :=
  ∀ n, (P5279318687993413551.a n : ℤ) = A387351 (n + 1)

end A387351

/-! ## A387351.P2897654634189329475

`∩[A140400(n+1), A004937(n)]`
-/

namespace A387351.P2897654634189329475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387351.P2897654634189329475

namespace A387351

/-- `∩[A140400(n+1), A004937(n)]` -/
def P2897654634189329475.Spec : Prop :=
  ∀ n, (P2897654634189329475.a n : ℤ) = A387351 (n + 1)

end A387351

/-! ## A387351.P648977640974652513

`∩[A188018(n+1), A004937(n)]`
-/

namespace A387351.P648977640974652513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387351.P648977640974652513

namespace A387351

/-- `∩[A188018(n+1), A004937(n)]` -/
def P648977640974652513.Spec : Prop :=
  ∀ n, (P648977640974652513.a n : ℤ) = A387351 (n + 1)

end A387351

/-! ## A387351.P13185231304675587169

`∩[A188032(n+1), A004937(n)]`
-/

namespace A387351.P13185231304675587169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387351.P13185231304675587169

namespace A387351

/-- `∩[A188032(n+1), A004937(n)]` -/
def P13185231304675587169.Spec : Prop :=
  ∀ n, (P13185231304675587169.a n : ℤ) = A387351 (n + 1)

end A387351

/-! ## A387351.P9064266398655300057

`∩[A190435(n+1), A004937(n)]`
-/

namespace A387351.P9064266398655300057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387351.P9064266398655300057

namespace A387351

/-- `∩[A190435(n+1), A004937(n)]` -/
def P9064266398655300057.Spec : Prop :=
  ∀ n, (P9064266398655300057.a n : ℤ) = A387351 (n + 1)

end A387351

/-! ## A387351.P17074871694954992207

`∩[A190463(n+1), A004937(n)]`
-/

namespace A387351.P17074871694954992207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387351.P17074871694954992207

namespace A387351

/-- `∩[A190463(n+1), A004937(n)]` -/
def P17074871694954992207.Spec : Prop :=
  ∀ n, (P17074871694954992207.a n : ℤ) = A387351 (n + 1)

end A387351

/-! ## A387351.P2930202663534839913

`∩[A188028(n+1), A004937(n)]`
-/

namespace A387351.P2930202663534839913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387351.P2930202663534839913

namespace A387351

/-- `∩[A188028(n+1), A004937(n)]` -/
def P2930202663534839913.Spec : Prop :=
  ∀ n, (P2930202663534839913.a n : ℤ) = A387351 (n + 1)

end A387351

/-! ## A387351.P11361098390187327305

`∩[A187952(n+1), A004937(n)]`
-/

namespace A387351.P11361098390187327305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387351.P11361098390187327305

namespace A387351

/-- `∩[A187952(n+1), A004937(n)]` -/
def P11361098390187327305.Spec : Prop :=
  ∀ n, (P11361098390187327305.a n : ℤ) = A387351 (n + 1)

end A387351

/-! ## A387351.P10206708893376192248

`∩[A188259(n+1), A004937(n)]`
-/

namespace A387351.P10206708893376192248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387351.P10206708893376192248

namespace A387351

/-- `∩[A188259(n+1), A004937(n)]` -/
def P10206708893376192248.Spec : Prop :=
  ∀ n, (P10206708893376192248.a n : ℤ) = A387351 (n + 1)

end A387351

/-! ## A387351.P7867045149882286931

`∩[A181714(n+1), A004937(n)]`
-/

namespace A387351.P7867045149882286931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387351.P7867045149882286931

namespace A387351

/-- `∩[A181714(n+1), A004937(n)]` -/
def P7867045149882286931.Spec : Prop :=
  ∀ n, (P7867045149882286931.a n : ℤ) = A387351 (n + 1)

end A387351

/-! ## A387351.P16452739185963848134

`filter[A004937(n), A096270(#)]`
-/

namespace A387351.P16452739185963848134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096270 (f1 j).toNat = 1) n)

end

end A387351.P16452739185963848134

namespace A387351

/-- `filter[A004937(n), A096270(#)]` -/
def P16452739185963848134.Spec : Prop :=
  ∀ n, P16452739185963848134.a n = A387351 (n + 1)

end A387351

/-! ## A387351.P3477006918902831851

`filter[A004937(n), A339051(#)]`
-/

namespace A387351.P3477006918902831851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A339051 (f1 j).toNat = 1) n)

end

end A387351.P3477006918902831851

namespace A387351

/-- `filter[A004937(n), A339051(#)]` -/
def P3477006918902831851.Spec : Prop :=
  ∀ n, P3477006918902831851.a n = A387351 (n + 1)

end A387351

/-! ## A387351.P16630833205058297895

`∩[A188015(n+1), A004937(n)]`
-/

namespace A387351.P16630833205058297895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387351.P16630833205058297895

namespace A387351

/-- `∩[A188015(n+1), A004937(n)]` -/
def P16630833205058297895.Spec : Prop :=
  ∀ n, (P16630833205058297895.a n : ℤ) = A387351 (n + 1)

end A387351

/-! ## A387351.P7098116470708125267

`∩[A188190(n+1), A004937(n)]`
-/

namespace A387351.P7098116470708125267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387351.P7098116470708125267

namespace A387351

/-- `∩[A188190(n+1), A004937(n)]` -/
def P7098116470708125267.Spec : Prop :=
  ∀ n, (P7098116470708125267.a n : ℤ) = A387351 (n + 1)

end A387351

/-!
# A387353: a(n) = Sum_{k=0..floor(n/2)} binomial(n+k-1,k) * binomial(n+2*k-1,n-2*k).

The programs for A387353, there is no canonical definition to state claims against.
-/

/-! ## A387353.P4723610265107873995

`A165006(A011769(n))`
-/

namespace A387353.P4723610265107873995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165006 (A011769 n).toNat

end

end A387353.P4723610265107873995

/-! ## A387353.P14295262785354335365

`A241683(n+1)+A008683(A001018(n))`
-/

namespace A387353.P14295262785354335365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241683 (n + 1) + A008683 (A001018 n).toNat

end

end A387353.P14295262785354335365

/-!
# A387354: a(n) = least prime m such that m/prime(n) > a(n-1)/prime(n-1), where a(1) = 3.

The programs for A387354, there is no canonical definition to state claims against.
-/

/-! ## A387354.P3652505360255822685

`A079603(A348811(n)+A079603(n+1))`
-/

namespace A387354.P3652505360255822685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (A348811 n + A079603 (n + 1)).toNat

end

end A387354.P3652505360255822685

/-! ## A387354.P15610785889592724115

`A079603(A079603(n+1)^A079596(n))`
-/

namespace A387354.P15610785889592724115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (SequenceMachineLib.roundAway ((A079603 (n + 1) : ℚ) ^ (A079596 n : ℤ))).toNat

end

end A387354.P15610785889592724115

/-! ## A387354.P5978552913334999442

`A079603(C(A079603(n+1), A079596(n)))`
-/

namespace A387354.P5978552913334999442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (Nat.choose (A079603 (n + 1)).toNat (A079596 n).toNat)

end

end A387354.P5978552913334999442

/-! ## A387354.P10418751371952972047

`A079603(A079603(n+1)%A079625(2*(n+2)))`
-/

namespace A387354.P10418751371952972047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (Int.tmod (A079603 (n + 1)) (A079625 (2 * (n + 2)))).toNat

end

end A387354.P10418751371952972047

/-! ## A387354.P7837369942185238515

`A087243(A257644(n))`
-/

namespace A387354.P7837369942185238515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087243 (A257644 n).toNat

end

end A387354.P7837369942185238515

/-!
# A387355: Upper (1/2)-midsequence of square numbers and triangular numbers; see Comments.

The programs for A387355, the canonical program `A387355.P16162145547914331822` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387355 has offset 0).

The definition of A387355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387355.P16162145547914331822

`ceil((3*n²+n)/4)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A387355

/-- `ceil((3*n²+n)/4)` -/
def P16162145547914331822.Spec : Prop :=
  ∀ n, P16162145547914331822.a n = A387355 n

theorem P16162145547914331822.correct : P16162145547914331822.Spec := by
  intro n
  simp only [A387355]

end A387355

/-! ## A387355.P10151736856417456728

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=8, a(4)=13`
-/

namespace A387355.P10151736856417456728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 8, 13] fun n a =>
  3 * a (n - 1) - 4 * a (n - 2) + 4 * a (n - 3) - 3 * a (n - 4) + a (n - 5)

end

end A387355.P10151736856417456728

namespace A387355

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P10151736856417456728.Spec : Prop :=
  ∀ n, P10151736856417456728.a n = A387355 n

end A387355

/-! ## A387355.P4795220288528004440

`n²-floor(C(n, 2)/2)`
-/

namespace A387355.P4795220288528004440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ⌊(Nat.choose n 2 : ℚ) / 2⌋

end

end A387355.P4795220288528004440

namespace A387355

/-- `n²-floor(C(n, 2)/2)` -/
def P4795220288528004440.Spec : Prop :=
  ∀ n, P4795220288528004440.a n = A387355 n

end A387355

/-! ## A387355.P16351636170670287003

`∑[comp[∑[2*gcd(2, n+1)]]]`
-/

namespace A387355.P16351636170670287003
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd 2 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387355.P16351636170670287003

namespace A387355

/-- `∑[comp[∑[2*gcd(2, n+1)]]]` -/
def P16351636170670287003.Spec : Prop :=
  ∀ n, (P16351636170670287003.a n : ℤ) = A387355 n

end A387355

/-! ## A387355.P3866104125741764645

`∑[comp[∑[2*(n+1)%3]]]`
-/

namespace A387355.P3866104125741764645
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1) % 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387355.P3866104125741764645

namespace A387355

/-- `∑[comp[∑[2*(n+1)%3]]]` -/
def P3866104125741764645.Spec : Prop :=
  ∀ n, (P3866104125741764645.a n : ℤ) = A387355 n

end A387355

/-! ## A387355.P16229300030310987007

`floor(∑[(n+1)/2]+C(n, 2))`
-/

namespace A387355.P16229300030310987007
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose n 2 : ℚ)⌋

end

end A387355.P16229300030310987007

namespace A387355

/-- `floor(∑[(n+1)/2]+C(n, 2))` -/
def P16229300030310987007.Spec : Prop :=
  ∀ n, P16229300030310987007.a n = A387355 n

end A387355

/-! ## A387355.P14575627649243371704

`∑[a(n-4)+6]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A387355.P14575627649243371704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 4, 5] fun n f1 =>
  f1 (n - 4) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387355.P14575627649243371704

namespace A387355

/-- `∑[a(n-4)+6]` -/
def P14575627649243371704.Spec : Prop :=
  ∀ n, (P14575627649243371704.a n : ℤ) = A387355 n

end A387355

/-! ## A387355.P9714842912746500184

`∑[∑[3-a(n-2)]]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A387355.P9714842912746500184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 1] fun n f2 =>
  3 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387355.P9714842912746500184

namespace A387355

/-- `∑[∑[3-a(n-2)]]` -/
def P9714842912746500184.Spec : Prop :=
  ∀ n, P9714842912746500184.a n = A387355 n

end A387355

/-! ## A387355.P9007234833922308336

`round(lcm(n, 2*n+1+n)/4)`
-/

namespace A387355.P9007234833922308336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm n (2 * n + 1 + n) : ℚ) / 4)

end

end A387355.P9007234833922308336

namespace A387355

/-- `round(lcm(n, 2*n+1+n)/4)` -/
def P9007234833922308336.Spec : Prop :=
  ∀ n, P9007234833922308336.a n = A387355 n

end A387355

/-! ## A387355.P7417409230418094341

`floor(Δ[C(n+1, 2)²/(n+3)])`
-/

namespace A387355.P7417409230418094341
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 ^ 2 : ℚ) / (n + 3 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A387355.P7417409230418094341

namespace A387355

/-- `floor(Δ[C(n+1, 2)²/(n+3)])` -/
def P7417409230418094341.Spec : Prop :=
  ∀ n, P7417409230418094341.a n = A387355 n

end A387355

/-! ## A387355.P12491441998950621154

`∑[∪[2*n, 3*(n-1)]]+n+3`
-/

namespace A387355.P12491441998950621154
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 3)

end

end A387355.P12491441998950621154

namespace A387355

/-- `∑[∪[2*n, 3*(n-1)]]+n+3` -/
def P12491441998950621154.Spec : Prop :=
  ∀ n, (P12491441998950621154.a n : ℤ) = A387355 n

end A387355

/-! ## A387355.P6459186830775807343

`n²-A011848(n)`
-/

namespace A387355.P6459186830775807343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A011848 n

end

end A387355.P6459186830775807343

namespace A387355

/-- `n²-A011848(n)` -/
def P6459186830775807343.Spec : Prop :=
  ∀ n, P6459186830775807343.a n = A387355 n

end A387355

/-! ## A387355.P485958938738777190

`A054925(n)+∑[n]`
-/

namespace A387355.P485958938738777190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A387355.P485958938738777190

namespace A387355

/-- `A054925(n)+∑[n]` -/
def P485958938738777190.Spec : Prop :=
  ∀ n, P485958938738777190.a n = A387355 n

end A387355

/-! ## A387355.P16352548735233441419

`A249852(n)-∑[n]`
-/

namespace A387355.P16352548735233441419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249852 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A387355.P16352548735233441419

namespace A387355

/-- `A249852(n)-∑[n]` -/
def P16352548735233441419.Spec : Prop :=
  ∀ n, P16352548735233441419.a n = A387355 n

end A387355

/-! ## A387355.P8730797831708752067

`n²-∑[A004524(n)]`
-/

namespace A387355.P8730797831708752067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387355.P8730797831708752067

namespace A387355

/-- `n²-∑[A004524(n)]` -/
def P8730797831708752067.Spec : Prop :=
  ∀ n, P8730797831708752067.a n = A387355 n

end A387355

/-! ## A387355.P3135011014015386984

`∑[A047262(n+1)]-n`
-/

namespace A387355.P3135011014015386984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A387355.P3135011014015386984

namespace A387355

/-- `∑[A047262(n+1)]-n` -/
def P3135011014015386984.Spec : Prop :=
  ∀ n, P3135011014015386984.a n = A387355 n

end A387355

/-! ## A387355.P15840114884178332598

`(n+1)²-∑[A092038(n+1)]`
-/

namespace A387355.P15840114884178332598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387355.P15840114884178332598

namespace A387355

/-- `(n+1)²-∑[A092038(n+1)]` -/
def P15840114884178332598.Spec : Prop :=
  ∀ n, P15840114884178332598.a n = A387355 n

end A387355

/-! ## A387355.P9574695239005728858

`A038707(n)+A008811(n)`
-/

namespace A387355.P9574695239005728858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038707 n + A008811 n

end

end A387355.P9574695239005728858

namespace A387355

/-- `A038707(n)+A008811(n)` -/
def P9574695239005728858.Spec : Prop :=
  ∀ n, P9574695239005728858.a n = A387355 n

end A387355

/-! ## A387355.P16427786286034345497

`A082643(n)+A002620(n)`
-/

namespace A387355.P16427786286034345497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082643 n + A002620 n

end

end A387355.P16427786286034345497

namespace A387355

/-- `A082643(n)+A002620(n)` -/
def P16427786286034345497.Spec : Prop :=
  ∀ n, P16427786286034345497.a n = A387355 n

end A387355

/-! ## A387355.P1974056695798048516

`A330707(n)+A021913(n)`
-/

namespace A387355.P1974056695798048516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330707 n + A021913 n

end

end A387355.P1974056695798048516

namespace A387355

/-- `A330707(n)+A021913(n)` -/
def P1974056695798048516.Spec : Prop :=
  ∀ n, P1974056695798048516.a n = A387355 n

end A387355

/-!
# A387356: Numbers whose set of cyclic permutations has GCD = 1.

The programs for A387356, there is no canonical definition to state claims against.
-/

/-! ## A387356.P8489731107560352434

`∩[A069715(n+1), A192817(n+1)]`
-/

namespace A387356.P8489731107560352434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387356.P8489731107560352434

/-!
# A387357: a(n) is the first number with a total of exactly n 1's in the decimal digits of its divisors.

The programs for A387357, there is no canonical definition to state claims against.
-/

/-! ## A387357.P2283037797167254701

`A120240(A132127(n+1))`
-/

namespace A387357.P2283037797167254701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120240 (A132127 (n + 1)).toNat

end

end A387357.P2283037797167254701

/-!
# A387358: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(3*k,n-k).

The programs for A387358, there is no canonical definition to state claims against.
-/

/-! ## A387358.P6304421706289941804

`A109802(A012864(n))`
-/

namespace A387358.P6304421706289941804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109802 (A012864 n).toNat

end

end A387358.P6304421706289941804

/-!
# A387360: Maximum number of diagonal transversals in an extended self-orthogonal diagonal Latin square of order n.

The programs for A387360, there is no canonical definition to state claims against.
-/

/-! ## A387360.P11490322269205560074

`and(A287648(n+1), A301686(A063049(n+3)))`
-/

namespace A387360.P11490322269205560074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A287648 (n + 1)) (A301686 (A063049 (n + 3)).toNat)

end

end A387360.P11490322269205560074

/-!
# A387361: Number of 2n-step walks from (0, 0) to (0, 0) on square lattice with winding number zero around (1/2, 1/2).

The programs for A387361, there is no canonical definition to state claims against.
-/

/-! ## A387361.P16403103181072363723

`A066182(A274344(n+1)+A001222(2*n+1))`
-/

namespace A387361.P16403103181072363723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A274344 (n + 1) + A001222 (2 * n + 1)).toNat

end

end A387361.P16403103181072363723

/-!
# A387362: Cyclic numbers k such that k+2 is also a cyclic number.

The programs for A387362, the canonical program `A387362.P10061794841326187916` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387362 has offset 1).

The definition of A387362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387362.P10061794841326187916

`∩[A003277(n+1)-2, A003277(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A387362

/-- `∩[A003277(n+1)-2, A003277(n+1)]` -/
def P10061794841326187916.Spec : Prop :=
  ∀ n, (P10061794841326187916.a n : ℤ) = A387362 (n + 1)

theorem P10061794841326187916.correct : P10061794841326187916.Spec := by
  intro n
  simp only [A387362, Nat.add_sub_cancel]

end A387362

/-! ## A387362.P14398335360526271167

`record[A109395(n+1)%A109395(n+3)]`
-/

namespace A387362.P14398335360526271167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109395 (n + 1)) (A109395 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387362.P14398335360526271167

namespace A387362

/-- `record[A109395(n+1)%A109395(n+3)]` -/
def P14398335360526271167.Spec : Prop :=
  ∀ n, P14398335360526271167.a n = A387362 (n + 1)

end A387362

/-! ## A387362.P951928575417437339

`eq[A000001(n+2), A000384(A000001(n))]`
-/

namespace A387362.P951928575417437339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (A000001 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387362.P951928575417437339

namespace A387362

/-- `eq[A000001(n+2), A000384(A000001(n))]` -/
def P951928575417437339.Spec : Prop :=
  ∀ n, (P951928575417437339.a n : ℤ) = A387362 (n + 1)

end A387362

/-! ## A387362.P10212891346786724994

`record[A000265(A291171(n+1))]`
-/

namespace A387362.P10212891346786724994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A291171 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387362.P10212891346786724994

namespace A387362

/-- `record[A000265(A291171(n+1))]` -/
def P10212891346786724994.Spec : Prop :=
  ∀ n, P10212891346786724994.a n = A387362 (n + 1)

end A387362

/-! ## A387362.P11670372133493113767

`A109613(eq[A178117(2*n), A287630(n)])`
-/

namespace A387362.P11670372133493113767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178117 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A387362.P11670372133493113767

namespace A387362

/-- `A109613(eq[A178117(2*n), A287630(n)])` -/
def P11670372133493113767.Spec : Prop :=
  ∀ n, P11670372133493113767.a n = A387362 (n + 1)

end A387362

/-!
# A387365: a(n) = (n+1) * 2^abs(n - 1 - c*(c-1)) / 2, where c = ceiling(sqrt(n)).

The programs for A387365, the canonical program `A387365.P13850223624109421705` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387365 has offset 1).

The definition of A387365 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387365.P13850223624109421705

`(n/2+1)*A082693(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A387365

/-- `(n/2+1)*A082693(n)` -/
def P13850223624109421705.Spec : Prop :=
  ∀ n, P13850223624109421705.a n = (A387365 (n + 1) : ℚ)

end A387365

/-!
# A387366: Expansion of 1/(1 - 10*x + x^2)^(3/2).

The programs for A387366, there is no canonical definition to state claims against.
-/

/-! ## A387366.P4636976032307659673

`(n+2)/2*A387368(n)`
-/

namespace A387366.P4636976032307659673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A387368 n : ℚ)

end

end A387366.P4636976032307659673

/-! ## A387366.P13692226355214977455

`∑[n+1]*A269730(n+1)`
-/

namespace A387366.P13692226355214977455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A269730 (n + 1)

end

end A387366.P13692226355214977455

/-!
# A387368: a(n) = Sum_{k=0..n} 2^k * 3^(n-k) * binomial(n+1,k) * binomial(n+1,n-k).

The programs for A387368, there is no canonical definition to state claims against.
-/

/-! ## A387368.P8842640685623974975

`(n+1)*A269730(n+1)`
-/

namespace A387368.P8842640685623974975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A269730 (n + 1)

end

end A387368.P8842640685623974975

/-!
# A387371: Number of compositions of n such that the maximal cardinality of C is 1, where C is a subset of the set of parts such that all elements in C appear in weakly increasing order within the composition.

The programs for A387371, there is no canonical definition to state claims against.
-/

/-! ## A387371.P6713021685077090919

`record[A386891(n+1)]`
-/

namespace A387371.P6713021685077090919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387371.P6713021685077090919

/-! ## A387371.P15341840305746760212

`A386891(∑[a(n-a(n-1))+1])` with `a(0)=1, a(1)=1`
-/

namespace A387371.P15341840305746760212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - f1 (n - 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386891 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A387371.P15341840305746760212

/-! ## A387371.P16719548170312480668

`A386891(A075349(n+1))`
-/

namespace A387371.P16719548170312480668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386891 (A075349 (n + 1)).toNat

end

end A387371.P16719548170312480668

/-! ## A387371.P11451576114620871700

`A135664(A000778(n))`
-/

namespace A387371.P11451576114620871700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A000778 n).toNat

end

end A387371.P11451576114620871700

/-! ## A387371.P12467583289911042177

`A003056(A291886(n))`
-/

namespace A387371.P12467583289911042177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A291886 n).toNat

end

end A387371.P12467583289911042177

/-!
# A387376: a(n) = 2 + 4^n + 2*n*(n - 1).

The programs for A387376, the canonical program `A387376.P9603944509621171991` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387376 has offset 1).

The definition of A387376 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2+4^(n+1)+2*(n+1)*n` (program `A387376.P9603944509621171991`, by `A387376.P9603944509621171991.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387376.P9603944509621171991

`2+4^(n+1)+2*(n+1)*n`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A387376

/-- `2+4^(n+1)+2*(n+1)*n` -/
def P9603944509621171991.Spec : Prop :=
  ∀ n, (P9603944509621171991.a n : ℤ) = A387376 (n + 1)

theorem P9603944509621171991.correct : P9603944509621171991.Spec := by
  intro n
  simp only [A387376, Nat.add_sub_cancel]

end A387376

/-! ## A387376.P1438353915687278101

`or(A046092(n), A052548(2*(n+1)))`
-/

namespace A387376.P1438353915687278101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046092 n) (A052548 (2 * (n + 1)))

end

end A387376.P1438353915687278101

namespace A387376

/-- `or(A046092(n), A052548(2*(n+1)))` -/
def P1438353915687278101.Spec : Prop :=
  ∀ n, P1438353915687278101.a n = A387376 (n + 1)

end A387376

/-! ## A387376.P9523321089201389916

`or(A046092(n), A056469(2*n+3))`
-/

namespace A387376.P9523321089201389916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046092 n) (A056469 (2 * n + 3))

end

end A387376.P9523321089201389916

namespace A387376

/-- `or(A046092(n), A056469(2*n+3))` -/
def P9523321089201389916.Spec : Prop :=
  ∀ n, P9523321089201389916.a n = A387376 (n + 1)

end A387376

/-! ## A387376.P15968598711851308083

`(A078370(n)+A051049(2*n+3))/2`
-/

namespace A387376.P15968598711851308083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078370 n + A051049 (2 * n + 3) : ℚ) / 2

end

end A387376.P15968598711851308083

namespace A387376

/-- `(A078370(n)+A051049(2*n+3))/2` -/
def P15968598711851308083.Spec : Prop :=
  ∀ n, P15968598711851308083.a n = (A387376 (n + 1) : ℚ)

end A387376

/-!
# A387377: In the prime factorization of n, replace 2's with 3's, replace 3's with 5's and replace 5's with 2's.

The programs for A387377, the canonical program `A387377.P768530691220600906` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387377 has offset 1).

The definition of A387377 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387377.P768530691220600906

`A181351(A064614(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A387377

/-- `A181351(A064614(n+1))` -/
def P768530691220600906.Spec : Prop :=
  ∀ n, P768530691220600906.a n = A387377 (n + 1)

theorem P768530691220600906.correct : P768530691220600906.Spec := by
  intro n
  simp only [A387377, Nat.add_sub_cancel]

end A387377

/-! ## A387377.P12148845524863682348

`A072028(A072027(A072029(n+1)))`
-/

namespace A387377.P12148845524863682348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072028 (A072027 (A072029 (n + 1)).toNat).toNat

end

end A387377.P12148845524863682348

namespace A387377

/-- `A072028(A072027(A072029(n+1)))` -/
def P12148845524863682348.Spec : Prop :=
  ∀ n, P12148845524863682348.a n = A387377 (n + 1)

end A387377

/-! ## A387377.P13177021665298509560

`A181351(A235200(A181351(A235200(n+1))))`
-/

namespace A387377.P13177021665298509560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181351 (A235200 (A181351 (A235200 (n + 1)).toNat).toNat).toNat

end

end A387377.P13177021665298509560

namespace A387377

/-- `A181351(A235200(A181351(A235200(n+1))))` -/
def P13177021665298509560.Spec : Prop :=
  ∀ n, P13177021665298509560.a n = A387377 (n + 1)

end A387377

/-! ## A387377.P2768899241125880956

`A300955(A181351(A300955(A181351(n+1))))`
-/

namespace A387377.P2768899241125880956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300955 (A181351 (A300955 (A181351 (n + 1)).toNat).toNat).toNat

end

end A387377.P2768899241125880956

namespace A387377

/-- `A300955(A181351(A300955(A181351(n+1))))` -/
def P2768899241125880956.Spec : Prop :=
  ∀ n, P2768899241125880956.a n = A387377 (n + 1)

end A387377

/-!
# A387381: Least prime p such that p+x_1, ..., p+x_1+...+x_k are prime, where (x_1, ..., x_k) is the n-th composition in graded reverse lexicographic order ("standard order", see A066099); or 0 if no such prime exists.

The programs for A387381, there is no canonical definition to state claims against.
-/

/-! ## A387381.P13694376227077570498

`A307200(C(A260739(2*(n+2)), A344859(n)))`
-/

namespace A387381.P13694376227077570498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307200 (Nat.choose (A260739 (2 * (n + 2))).toNat (A344859 n).toNat)

end

end A387381.P13694376227077570498

/-! ## A387381.P14161949811157154948

`A108352(A026624(n+1))`
-/

namespace A387381.P14161949811157154948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108352 (A026624 (n + 1)).toNat

end

end A387381.P14161949811157154948

/-! ## A387381.P18045407741890433760

`A170942(A000740(n+1)+1)`
-/

namespace A387381.P18045407741890433760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170942 (A000740 (n + 1) + 1).toNat

end

end A387381.P18045407741890433760

/-! ## A387381.P10347685793774823780

`A004595(A374682(n)+A007677(n))`
-/

namespace A387381.P10347685793774823780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004595 (A374682 n + A007677 n).toNat

end

end A387381.P10347685793774823780

/-! ## A387381.P2500841533065967399

`A267263(lcm(A027641(n), A153041(n+1)))`
-/

namespace A387381.P2500841533065967399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (Int.lcm (A027641 n) (A153041 (n + 1)))

end

end A387381.P2500841533065967399

/-!
# A387382: Numbers k such that there exists a prime p for which p+x_1, ..., p+x_1+...+x_j are prime, where (x_1, ..., x_j) is the k-th composition in graded reverse lexicographic order ("standard order", see A066099), i.e., such that A387381(k) != 0.

The programs for A387382, there is no canonical definition to state claims against.
-/

/-! ## A387382.P14202946515165744835

`lt[0, A387381(n)]`
-/

namespace A387382.P14202946515165744835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A387382.P14202946515165744835

/-! ## A387382.P6708850791723012884

`A227992(A077168(n))`
-/

namespace A387382.P6708850791723012884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227992 (A077168 n).toNat

end

end A387382.P6708850791723012884

/-! ## A387382.P2452929151515107560

`eq[A015772(n), A072347(n)]`
-/

namespace A387382.P2452929151515107560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015772 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387382.P2452929151515107560

/-! ## A387382.P151241712904632927

`eq[A015936(n), A072347(n)]`
-/

namespace A387382.P151241712904632927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015936 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387382.P151241712904632927

/-! ## A387382.P3928368242258933316

`A227992(n+1)%A079374(n+5)`
-/

namespace A387382.P3928368242258933316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227992 (n + 1)) (A079374 (n + 5))

end

end A387382.P3928368242258933316

/-!
# A387383: Numbers k such that the cumulative sums of the k-th composition in graded reverse lexicographic order ("standard order", see A066099) do not cover all residue classes modulo p for any prime p; i.e., such that (0, x_1, ..., x_1+...+x_j) is an admissible prime tuple pattern, where (x_1, ..., x_j) is the k-th composition.

The programs for A387383, there is no canonical definition to state claims against.
-/

/-! ## A387383.P18286942414582464057

`(A000695(A161781(n))-1)/2`
-/

namespace A387383.P18286942414582464057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000695 (A161781 n).toNat - 1 : ℚ) / 2

end

end A387383.P18286942414582464057

/-! ## A387383.P17501661714197858489

`A212591(A161781(n))`
-/

namespace A387383.P17501661714197858489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212591 (A161781 n).toNat

end

end A387383.P17501661714197858489

/-! ## A387383.P3707224365260026229

`A270804(A161781(n)-1)`
-/

namespace A387383.P3707224365260026229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270804 (A161781 n - 1).toNat

end

end A387383.P3707224365260026229

/-! ## A387383.P5130212362937631162

`and(A061547(3*n+4), A270804(A161781(n)))`
-/

namespace A387383.P5130212362937631162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061547 (3 * n + 4)) (A270804 (A161781 n).toNat)

end

end A387383.P5130212362937631162

/-! ## A387383.P5304001250154631166

`A123108(∩[A000695(n), A161781(n)])`
-/

namespace A387383.P5304001250154631166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161781 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A387383.P5304001250154631166

/-!
# A387385: Least prime p such that p+x_1, ..., p+x_1+...+x_k are prime, where (x_1, ..., x_k) is the n-th composition corresponding to an admissible prime tuple pattern (see A387383); i.e., first column of A387384.

The programs for A387385, there is no canonical definition to state claims against.
-/

/-! ## A387385.P9950488318486563986

`A387384(∑[n+1])`
-/

namespace A387385.P9950488318486563986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387384 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A387385.P9950488318486563986

/-! ## A387385.P18354232602052247962

`A387384(A000217(n+1))%A096399(n+1)`
-/

namespace A387385.P18354232602052247962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387384 (A000217 (n + 1)).toNat) (A096399 (n + 1))

end

end A387385.P18354232602052247962

/-! ## A387385.P12205969135264655365

`or(A354996(n+1), A387384(A000217(n+1)))`
-/

namespace A387385.P12205969135264655365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A354996 (n + 1)) (A387384 (A000217 (n + 1)).toNat)

end

end A387385.P12205969135264655365

/-! ## A387385.P10521152075256789866

`A387384(A000217(n+1))+A000007(2*n+3)`
-/

namespace A387385.P10521152075256789866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387384 (A000217 (n + 1)).toNat + A000007 (2 * n + 3)

end

end A387385.P10521152075256789866

/-! ## A387385.P6809902340873718530

`A387384(A000217(n+1))+A361465(3*n+5)`
-/

namespace A387385.P6809902340873718530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387384 (A000217 (n + 1)).toNat + A361465 (3 * n + 5)

end

end A387385.P6809902340873718530

/-!
# A387387: Least prime p such that p, p+x_1, ..., p+x_1+...+x_k are consecutive primes, where (x_1, ..., x_k) is the n-th composition corresponding to an admissible prime tuple pattern (see A387383); i.e., first column of A387386.

The programs for A387387, there is no canonical definition to state claims against.
-/

/-! ## A387387.P102128049323166349

`A387386(∑[n+1])`
-/

namespace A387387.P102128049323166349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387386 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A387387.P102128049323166349

/-! ## A387387.P7995412918594489874

`A387386(A000217(n+1))%A330932(n+1)`
-/

namespace A387387.P7995412918594489874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387386 (A000217 (n + 1)).toNat) (A330932 (n + 1))

end

end A387387.P7995412918594489874

/-! ## A387387.P17335044884868640902

`or(A354996(n+1), A387386(A000217(n+1)))`
-/

namespace A387387.P17335044884868640902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A354996 (n + 1)) (A387386 (A000217 (n + 1)).toNat)

end

end A387387.P17335044884868640902

/-! ## A387387.P15556458396545623740

`A387386(A000217(n+1))+A000007(2*n+3)`
-/

namespace A387387.P15556458396545623740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387386 (A000217 (n + 1)).toNat + A000007 (2 * n + 3)

end

end A387387.P15556458396545623740

/-! ## A387387.P14694304369114910157

`or(A332671(3*n+2), A387386(A000217(n+1)))`
-/

namespace A387387.P14694304369114910157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A332671 (3 * n + 2)) (A387386 (A000217 (n + 1)).toNat)

end

end A387387.P14694304369114910157

/-!
# A387391: a(n) = 49*2^n - 3*n - 18.

The programs for A387391, the canonical program `A387391.P16540200533215578290` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387391 has offset 0).

The definition of A387391 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `49*2^n-3*n-18` (program `A387391.P16540200533215578290`, by `A387391.P16540200533215578290.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387391.P16540200533215578290

`49*2^n-3*n-18`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A387391

/-- `49*2^n-3*n-18` -/
def P16540200533215578290.Spec : Prop :=
  ∀ n, P16540200533215578290.a n = A387391 n

theorem P16540200533215578290.correct : P16540200533215578290.Spec := by
  intro n
  simp only [A387391]

end A387391

/-!
# A387394: Total number of 2's in the decimal digits of the divisors of n.

The programs for A387394, the canonical program `A387394.P3160881083450002832` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387394 has offset 1).

The definition of A387394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387394.P3160881083450002832

`∑{d}[n+1, A316863(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A387394

/-- `∑{d}[n+1, A316863(#)]` -/
def P3160881083450002832.Spec : Prop :=
  ∀ n, P3160881083450002832.a n = A387394 (n + 1)

theorem P3160881083450002832.correct : P3160881083450002832.Spec := by
  intro n
  simp only [A387394, Nat.add_sub_cancel]

end A387394

/-! ## A387394.P16053460046466469153

`A333627(A184945(n)+∑{d}[n+1, val(#², n+1+#)])`
-/

namespace A387394.P16053460046466469153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (A184945 n + ((∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (d ^ 2) (n + 1 + d) : ℕ) : ℤ)).toNat

end

end A387394.P16053460046466469153

namespace A387394

/-- `A333627(A184945(n)+∑{d}[n+1, val(#², n+1+#)])` -/
def P16053460046466469153.Spec : Prop :=
  ∀ n, P16053460046466469153.a n = A387394 (n + 1)

end A387394

/-!
# A387397: Number of edges in the prime-intersection graph on the Boolean lattice of rank n.

The programs for A387397, there is no canonical definition to state claims against.
-/

/-! ## A387397.P14678894953784630827

`A322337(A028387(n+1))`
-/

namespace A387397.P14678894953784630827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322337 (A028387 (n + 1)).toNat

end

end A387397.P14678894953784630827

/-! ## A387397.P10327967017151319743

`xor(1, A001055(A305306(n)))`
-/

namespace A387397.P10327967017151319743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A001055 (A305306 n).toNat)

end

end A387397.P10327967017151319743

