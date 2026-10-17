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
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A273300: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 633", based on the 5-celled von Neumann neighborhood.

The programs for A273300, there is no canonical definition to state claims against.
-/

/-! ## A273300.P7938310244847052405

`A273299(2^n-1)`
-/

namespace A273300.P7938310244847052405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273299 (2 ^ n - 1)

end

end A273300.P7938310244847052405

/-! ## A273300.P15340319242634760023

`record[A273299(A038573(n))]`
-/

namespace A273300.P15340319242634760023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273299 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273300.P15340319242634760023

/-! ## A273300.P13299156460204214956

`record[A273299(A091264(n))]`
-/

namespace A273300.P13299156460204214956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273299 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273300.P13299156460204214956

/-! ## A273300.P965414400618317309

`record[A273299(A227351(n))]`
-/

namespace A273300.P965414400618317309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273299 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273300.P965414400618317309

/-! ## A273300.P11536796464331519

`record[A273299(A232751(n))]`
-/

namespace A273300.P11536796464331519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273299 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273300.P11536796464331519

/-!
# A273301: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 633", based on the 5-celled von Neumann neighborhood.

The programs for A273301, there is no canonical definition to state claims against.
-/

/-! ## A273301.P15716791316897567510

`∑[A273299(n)]`
-/

namespace A273301.P15716791316897567510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273301.P15716791316897567510

/-! ## A273301.P12633977866516347107

`∑[A273303(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273301.P12633977866516347107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273303 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273301.P12633977866516347107

/-! ## A273301.P3982884369813684344

`∑[∑[A273303(n)]-A273303(n)+1]`
-/

namespace A273301.P3982884369813684344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273303 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A273303 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273301.P3982884369813684344

/-! ## A273301.P12259355443881022175

`a(n-1)+A273299(n)+A000007(n)` with `a(0)=1`
-/

namespace A273301.P12259355443881022175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273299 n + A000007 n)

end

end A273301.P12259355443881022175

/-! ## A273301.P5090627305145730109

`a(n-1)+A273299(n)%A016754(n)` with `a(0)=1`
-/

namespace A273301.P5090627305145730109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273299 n) (A016754 n)

end

end A273301.P5090627305145730109

/-! ## A273301.P8797924931775357306

`A273299(n%A273299(n))+a(n-1)` with `a(0)=1`
-/

namespace A273301.P8797924931775357306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273299 (Int.tmod (n : ℤ) (A273299 n)).toNat + a (n - 1)

end

end A273301.P8797924931775357306

/-! ## A273301.P15553360531036339619

`A273299(n+1)+a(n-1)-A273303(n)` with `a(0)=1`
-/

namespace A273301.P15553360531036339619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273299 (n + 1) + (a (n - 1) - A273303 n)

end

end A273301.P15553360531036339619

/-! ## A273301.P1448652857662145158

`a(n-1)-or(-1, A008619(n))*A273299(n)` with `a(0)=1`
-/

namespace A273301.P1448652857662145158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - Int.lor (-1) (A008619 n) * A273299 n

end

end A273301.P1448652857662145158

/-! ## A273301.P7225335142849274684

`∑[A181385(A016825(n))-A271598(n)]`
-/

namespace A273301.P7225335142849274684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A271598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273301.P7225335142849274684

/-! ## A273301.P15993552394891212291

`∑[A181385(A016825(n))]-A271600(n)`
-/

namespace A273301.P15993552394891212291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A271600 n

end

end A273301.P15993552394891212291

/-! ## A273301.P4472854247397129007

`∑[A016754(n)-A271598(n)%A016754(n)]`
-/

namespace A273301.P4472854247397129007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - Int.tmod (A271598 n) (A016754 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273301.P4472854247397129007

/-!
# A273302: Least nonnegative integer x such that n = x^2 + y^2 + z^2 + w^2 for some nonnegative integer y,z,w with x + 3*y + 5*z a square.

The programs for A273302, there is no canonical definition to state claims against.
-/

/-! ## A273302.P9919795438865573951

`A000586(gcd(A030717(n+1), A057513(n)))`
-/

namespace A273302.P9919795438865573951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (Int.gcd (A030717 (n + 1)) (A057513 n))

end

end A273302.P9919795438865573951

/-! ## A273302.P13624820030622244262

`and(A032741(n), A322092(A185419(n+1)))`
-/

namespace A273302.P13624820030622244262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032741 n) (A322092 (A185419 (n + 1)).toNat)

end

end A273302.P13624820030622244262

/-! ## A273302.P8273503774164234758

`A056170(A254963(2*(n+2))-1)`
-/

namespace A273302.P8273503774164234758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A254963 (2 * (n + 2)) - 1).toNat

end

end A273302.P8273503774164234758

/-! ## A273302.P10616279471251483625

`and(A004525(n), A287160(A001845(n)))`
-/

namespace A273302.P10616279471251483625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004525 n) (A287160 (A001845 n).toNat)

end

end A273302.P10616279471251483625

/-! ## A273302.P10446652092462993177

`and(A006003(n), A287160(A001845(n)))`
-/

namespace A273302.P10446652092462993177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006003 n) (A287160 (A001845 n).toNat)

end

end A273302.P10446652092462993177

/-!
# A273303: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 633", based on the 5-celled von Neumann neighborhood.

The programs for A273303, there is no canonical definition to state claims against.
-/

/-! ## A273303.P8347628706460763803

`Δ[A016754(n)-A271598(n)%A016754(n)]`
-/

namespace A273303.P8347628706460763803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - Int.tmod (A271598 n) (A016754 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273303.P8347628706460763803

/-! ## A273303.P8336217975142404052

`Δ[A273299(n)]`
-/

namespace A273303.P8336217975142404052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273303.P8336217975142404052

/-! ## A273303.P15704711563622030530

`A273299(n+1)-A273299(n)`
-/

namespace A273303.P15704711563622030530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273299 (n + 1) - A273299 n

end

end A273303.P15704711563622030530

/-! ## A273303.P2115615416833050558

`Δ[A181385(A016825(n))-A271598(n)]`
-/

namespace A273303.P2115615416833050558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A271598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273303.P2115615416833050558

/-! ## A273303.P16214014481398498068

`Δ[A008740(A008458(n))-A271598(n)]`
-/

namespace A273303.P16214014481398498068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A271598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273303.P16214014481398498068

/-! ## A273303.P15629697758803358610

`Δ[A008740(A008458(n))]-A271601(n)`
-/

namespace A273303.P15629697758803358610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271601 n

end

end A273303.P15629697758803358610

/-!
# A273304: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 637", based on the 5-celled von Neumann neighborhood.

The programs for A273304, there is no canonical definition to state claims against.
-/

/-! ## A273304.P13032838105931488674

`A273307(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273304.P13032838105931488674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273307 (n - 1) + a (n - 1)

end

end A273304.P13032838105931488674

/-! ## A273304.P14175225598584722678

`Δ[A273306(n)]-A273307(n)`
-/

namespace A273304.P14175225598584722678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273307 n

end

end A273304.P14175225598584722678

/-! ## A273304.P16718046796202664401

`A273306(n+1)-(A273307(n)+A273306(n))`
-/

namespace A273304.P16718046796202664401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273306 (n + 1) - (A273307 n + A273306 n)

end

end A273304.P16718046796202664401

/-! ## A273304.P17641472756083175375

`A273306(C(n+1, n))%(A273307(n)+A273306(n))`
-/

namespace A273304.P17641472756083175375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273306 (Nat.choose (n + 1) n)) (A273307 n + A273306 n)

end

end A273304.P17641472756083175375

/-! ## A273304.P8376165908759807525

`A273306(A008619(2*n))%(A273307(n)+A273306(n))`
-/

namespace A273304.P8376165908759807525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273306 (A008619 (2 * n)).toNat) (A273307 n + A273306 n)

end

end A273304.P8376165908759807525

/-! ## A273304.P10643234950961615613

`A273306(n+1)%((A273307(n)+A273306(n))*A062157(n+1))`
-/

namespace A273304.P10643234950961615613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273306 (n + 1)) ((A273307 n + A273306 n) * A062157 (n + 1))

end

end A273304.P10643234950961615613

/-!
# A273305: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 637", based on the 5-celled von Neumann neighborhood.

The programs for A273305, there is no canonical definition to state claims against.
-/

/-! ## A273305.P3710756364848718548

`A273304(2^n-1)`
-/

namespace A273305.P3710756364848718548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273304 (2 ^ n - 1)

end

end A273305.P3710756364848718548

/-! ## A273305.P17432883054961280799

`record[A273304(A153151(n))]`
-/

namespace A273305.P17432883054961280799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273304 (A153151 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273305.P17432883054961280799

/-! ## A273305.P5321604654482911874

`record[A273304(A173787(n))]`
-/

namespace A273305.P5321604654482911874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273304 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273305.P5321604654482911874

/-! ## A273305.P11495854835871370138

`record[A273304(A232751(n))]`
-/

namespace A273305.P11495854835871370138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273304 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273305.P11495854835871370138

/-! ## A273305.P15940053106335305176

`record[A273304(A255067(n))]`
-/

namespace A273305.P15940053106335305176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273304 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273305.P15940053106335305176

/-!
# A273306: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 637", based on the 5-celled von Neumann neighborhood.

The programs for A273306, there is no canonical definition to state claims against.
-/

/-! ## A273306.P12796450907172460066

`∑[A273307(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273306.P12796450907172460066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273307 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273306.P12796450907172460066

/-! ## A273306.P7538386494931107866

`∑[∑[A273307(n)]+1-A273307(n)]`
-/

namespace A273306.P7538386494931107866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273307 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273307 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273306.P7538386494931107866

/-! ## A273306.P12652273267490842419

`∑[A273304(n)]`
-/

namespace A273306.P12652273267490842419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273306.P12652273267490842419

/-! ## A273306.P14755835054292417601

`A273304(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A273306.P14755835054292417601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273304 n + a (A023443 n).toNat

end

end A273306.P14755835054292417601

/-! ## A273306.P151298144068540711

`A273304(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A273306.P151298144068540711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273304 n + a (A004273 n - (n : ℤ)).toNat

end

end A273306.P151298144068540711

/-!
# A273307: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 637", based on the 5-celled von Neumann neighborhood.

The programs for A273307, there is no canonical definition to state claims against.
-/

/-! ## A273307.P15727423741996258039

`Δ[A273304(n)]`
-/

namespace A273307.P15727423741996258039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273307.P15727423741996258039

/-! ## A273307.P3151926908884304792

`A273304(n+1)-A273304(n)`
-/

namespace A273307.P3151926908884304792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273304 (n + 1) - A273304 n

end

end A273307.P3151926908884304792

/-!
# A273308: Maximum population of a 2 X n still life in Conway's Game of Life.

The programs for A273308, the canonical program `A273308.P1266086608549206382` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273308 has offset 1).

The definition of A273308 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273308.P1266086608549206382

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=4, a(3)=6, a(4)=8`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A273308

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P1266086608549206382.Spec : Prop :=
  ∀ n, P1266086608549206382.a n = A273308 (n + 1)

theorem P1266086608549206382.correct : P1266086608549206382.Spec := by
  intro n
  simp only [A273308, Nat.add_sub_cancel]

end A273308

/-! ## A273308.P9509864818969503946

`a(n-3)+4` with `a(0)=0, a(1)=4, a(2)=4, a(3)=6`
-/

namespace A273308.P9509864818969503946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 4, 6] fun n a =>
  a (n - 3) + 4

end

end A273308.P9509864818969503946

namespace A273308

/-- `a(n-3)+4` -/
def P9509864818969503946.Spec : Prop :=
  ∀ n, (P9509864818969503946.a n : ℤ) = A273308 (n + 1)

end A273308

/-! ## A273308.P4220427153682963121

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=4, a(2)=0, a(3)=2, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A273308.P4220427153682963121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 0, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273308.P4220427153682963121

namespace A273308

/-- `∑[floor(a(n-3))]` -/
def P4220427153682963121.Spec : Prop :=
  ∀ n, (P4220427153682963121.a n : ℤ) = A273308 (n + 1)

end A273308

/-! ## A273308.P15303121277519430411

`∑[a(n-3)%3]` with `a(0)=0, a(1)=4, a(2)=0, a(3)=2, a(4)=2`
-/

namespace A273308.P15303121277519430411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 0, 2, 2] fun n f1 =>
  f1 (n - 3) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273308.P15303121277519430411

namespace A273308

/-- `∑[a(n-3)%3]` -/
def P15303121277519430411.Spec : Prop :=
  ∀ n, (P15303121277519430411.a n : ℤ) = A273308 (n + 1)

end A273308

/-! ## A273308.P11389185203160336928

`∑[a((n+1)²%3)/2]` with `a(0)=0, a(1)=4`
-/

namespace A273308.P11389185203160336928
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  f1 ((n + 1) ^ 2 % 3) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273308.P11389185203160336928

namespace A273308

/-- `∑[a((n+1)²%3)/2]` -/
def P11389185203160336928.Spec : Prop :=
  ∀ n, P11389185203160336928.a n = (A273308 (n + 1) : ℚ)

end A273308

/-! ## A273308.P10802755417206627132

`∑[∑[n+2]%3]%∑[n+2]`
-/

namespace A273308.P10802755417206627132
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A273308.P10802755417206627132

namespace A273308

/-- `∑[∑[n+2]%3]%∑[n+2]` -/
def P10802755417206627132.Spec : Prop :=
  ∀ n, (P10802755417206627132.a n : ℤ) = A273308 (n + 1)

end A273308

/-! ## A273308.P17664749412196563638

`2*∑[a(n-3)²]` with `a(0)=0, a(1)=2, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A273308.P17664749412196563638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 0, 1, 1] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273308.P17664749412196563638

namespace A273308

/-- `2*∑[a(n-3)²]` -/
def P17664749412196563638.Spec : Prop :=
  ∀ n, (P17664749412196563638.a n : ℤ) = A273308 (n + 1)

end A273308

/-! ## A273308.P3633545117412421747

`∑[a(n-3)²/2]` with `a(0)=0, a(1)=4, a(2)=0, a(3)=2, a(4)=2`
-/

namespace A273308.P3633545117412421747
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 4, 0, 2, 2] fun n f1 =>
  f1 (n - 3) ^ 2 / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273308.P3633545117412421747

namespace A273308

/-- `∑[a(n-3)²/2]` -/
def P3633545117412421747.Spec : Prop :=
  ∀ n, P3633545117412421747.a n = (A273308 (n + 1) : ℚ)

end A273308

/-! ## A273308.P3482493632267270222

`3-(gcd(3, 2-n)-a(n-1))` with `a(0)=0, a(1)=4`
-/

namespace A273308.P3482493632267270222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  3 - ((Int.gcd 3 (2 - (n : ℤ)) : ℤ) - a (n - 1))

end

end A273308.P3482493632267270222

namespace A273308

/-- `3-(gcd(3, 2-n)-a(n-1))` -/
def P3482493632267270222.Spec : Prop :=
  ∀ n, P3482493632267270222.a n = A273308 (n + 1)

end A273308

/-! ## A273308.P11777946777033555010

`2*(1-floor(a(n-1)/4-n))` with `a(0)=0`
-/

namespace A273308.P11777946777033555010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * (1 - ⌊(a (n - 1) : ℚ) / 4 - (n : ℚ)⌋)

end

end A273308.P11777946777033555010

namespace A273308

/-- `2*(1-floor(a(n-1)/4-n))` -/
def P11777946777033555010.Spec : Prop :=
  ∀ n, P11777946777033555010.a n = A273308 (n + 1)

end A273308

/-! ## A273308.P11976325344283313775

`2*(n+2-ceil(abs(1-n)/3))-2`
-/

namespace A273308.P11976325344283313775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 2 : ℤ) - ⌈(|1 - (n : ℤ)| : ℚ) / 3⌉) - 2

end

end A273308.P11976325344283313775

namespace A273308

/-- `2*(n+2-ceil(abs(1-n)/3))-2` -/
def P11976325344283313775.Spec : Prop :=
  ∀ n, P11976325344283313775.a n = A273308 (n + 1)

end A273308

/-! ## A273308.P5033122974507886072

`∑[4-a(n-1)-a(n-2)]` with `a(0)=0, a(1)=4, a(2)=0, a(3)=2`
-/

namespace A273308.P5033122974507886072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 0, 2] fun n f1 =>
  4 - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273308.P5033122974507886072

namespace A273308

/-- `∑[4-a(n-1)-a(n-2)]` -/
def P5033122974507886072.Spec : Prop :=
  ∀ n, P5033122974507886072.a n = A273308 (n + 1)

end A273308

/-! ## A273308.P2034871566915627322

`abs(abs(1-n)-A047376(n+1))`
-/

namespace A273308.P2034871566915627322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|1 - (n : ℤ)| - A047376 (n + 1))|

end

end A273308.P2034871566915627322

namespace A273308

/-- `abs(abs(1-n)-A047376(n+1))` -/
def P2034871566915627322.Spec : Prop :=
  ∀ n, P2034871566915627322.a n = A273308 (n + 1)

end A273308

/-! ## A273308.P9324951526989997371

`2*∑[A000045(a(n-3))]` with `a(0)=0, a(1)=2, a(2)=0, a(3)=1`
-/

namespace A273308.P9324951526989997371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 0, 1] fun n f1 =>
  A000045 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273308.P9324951526989997371

namespace A273308

/-- `2*∑[A000045(a(n-3))]` -/
def P9324951526989997371.Spec : Prop :=
  ∀ n, P9324951526989997371.a n = A273308 (n + 1)

end A273308

/-! ## A273308.P13308421236574528877

`A017545(n)%A219529(n)`
-/

namespace A273308.P13308421236574528877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017545 n) (A219529 n)

end

end A273308.P13308421236574528877

namespace A273308

/-- `A017545(n)%A219529(n)` -/
def P13308421236574528877.Spec : Prop :=
  ∀ n, P13308421236574528877.a n = A273308 (n + 1)

end A273308

/-! ## A273308.P8124237423738271966

`2*(A057427(n)+A004396(n))`
-/

namespace A273308.P8124237423738271966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A057427 n + A004396 n)

end

end A273308.P8124237423738271966

namespace A273308

/-- `2*(A057427(n)+A004396(n))` -/
def P8124237423738271966.Spec : Prop :=
  ∀ n, P8124237423738271966.a n = A273308 (n + 1)

end A273308

/-! ## A273308.P3893900496960841274

`2*(A004396(n)-A057428(n))`
-/

namespace A273308.P3893900496960841274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A004396 n - A057428 n)

end

end A273308.P3893900496960841274

namespace A273308

/-- `2*(A004396(n)-A057428(n))` -/
def P3893900496960841274.Spec : Prop :=
  ∀ n, P3893900496960841274.a n = A273308 (n + 1)

end A273308

/-! ## A273308.P6738556358871650268

`A063098(n+1)%A219529(n)`
-/

namespace A273308.P6738556358871650268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063098 (n + 1)) (A219529 n)

end

end A273308.P6738556358871650268

namespace A273308

/-- `A063098(n+1)%A219529(n)` -/
def P6738556358871650268.Spec : Prop :=
  ∀ n, P6738556358871650268.a n = A273308 (n + 1)

end A273308

/-! ## A273308.P4607925751545185399

`A063327(n+2)%A114698(n+1)`
-/

namespace A273308.P4607925751545185399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063327 (n + 2)) (A114698 (n + 1))

end

end A273308.P4607925751545185399

namespace A273308

/-- `A063327(n+2)%A114698(n+1)` -/
def P4607925751545185399.Spec : Prop :=
  ∀ n, P4607925751545185399.a n = A273308 (n + 1)

end A273308

/-! ## A273308.P11985289705319429028

`A063224(A065475(n+1))`
-/

namespace A273308.P11985289705319429028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063224 (A065475 (n + 1)).toNat

end

end A273308.P11985289705319429028

namespace A273308

/-- `A063224(A065475(n+1))` -/
def P11985289705319429028.Spec : Prop :=
  ∀ n, P11985289705319429028.a n = A273308 (n + 1)

end A273308

/-!
# A273309: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 641", based on the 5-celled von Neumann neighborhood.

The programs for A273309, the canonical program `A273309.P8169876199379165272` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273309 has offset 0).

The definition of A273309 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273309.P8169876199379165272

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=17, a(3)=40, a(4)=73, a(5)=112`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A273309

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P8169876199379165272.Spec : Prop :=
  ∀ n, P8169876199379165272.a n = A273309 n

theorem P8169876199379165272.correct : P8169876199379165272.Spec := by
  intro n
  simp only [A273309]

end A273309

/-! ## A273309.P9671321249587929683

`∑[A005943(2*n)-a(n-1)]` with `a(0)=1`
-/

namespace A273309.P9671321249587929683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A005943 (2 * n) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273309.P9671321249587929683

namespace A273309

/-- `∑[A005943(2*n)-a(n-1)]` -/
def P9671321249587929683.Spec : Prop :=
  ∀ n, P9671321249587929683.a n = A273309 n

end A273309

/-! ## A273309.P13184154160003622005

`A211623(n)+A116728(n+1)`
-/

namespace A273309.P13184154160003622005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211623 n + A116728 (n + 1)

end

end A273309.P13184154160003622005

namespace A273309

/-- `A211623(n)+A116728(n+1)` -/
def P13184154160003622005.Spec : Prop :=
  ∀ n, P13184154160003622005.a n = A273309 n

end A273309

/-! ## A273309.P10660903031467873228

`A002939(n)+A360927(n)+1`
-/

namespace A273309.P10660903031467873228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n + (A360927 n + 1)

end

end A273309.P10660903031467873228

namespace A273309

/-- `A002939(n)+A360927(n)+1` -/
def P10660903031467873228.Spec : Prop :=
  ∀ n, P10660903031467873228.a n = A273309 n

end A273309

/-! ## A273309.P11473921635507522863

`A360927(n)+A054554(n+1)`
-/

namespace A273309.P11473921635507522863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360927 n + A054554 (n + 1)

end

end A273309.P11473921635507522863

namespace A273309

/-- `A360927(n)+A054554(n+1)` -/
def P11473921635507522863.Spec : Prop :=
  ∀ n, P11473921635507522863.a n = A273309 n

end A273309

/-! ## A273309.P1342908514122173520

`A273312(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273309.P1342908514122173520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273312 (n - 1) + a (n - 1)

end

end A273309.P1342908514122173520

namespace A273309

/-- `A273312(n-1)+a(n-1)` -/
def P1342908514122173520.Spec : Prop :=
  ∀ n, P1342908514122173520.a n = A273309 n

end A273309

/-! ## A273309.P18026184734157172930

`∑[A273312(n-a(n-1)%2)]` with `a(0)=1`
-/

namespace A273309.P18026184734157172930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273312 ((n : ℤ) - Int.tmod (f1 (n - 1)) 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273309.P18026184734157172930

namespace A273309

/-- `∑[A273312(n-a(n-1)%2)]` -/
def P18026184734157172930.Spec : Prop :=
  ∀ n, P18026184734157172930.a n = A273309 n

end A273309

/-! ## A273309.P3621283369858142855

`∑[A273312(n-and(1, a(n-1)))]` with `a(0)=1`
-/

namespace A273309.P3621283369858142855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273312 ((n : ℤ) - Int.land 1 (f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273309.P3621283369858142855

namespace A273309

/-- `∑[A273312(n-and(1, a(n-1)))]` -/
def P3621283369858142855.Spec : Prop :=
  ∀ n, P3621283369858142855.a n = A273309 n

end A273309

/-! ## A273309.P6370675799902784024

`∑[A273312(n)]+1-A273312(n)`
-/

namespace A273309.P6370675799902784024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A273312 n)

end

end A273309.P6370675799902784024

namespace A273309

/-- `∑[A273312(n)]+1-A273312(n)` -/
def P6370675799902784024.Spec : Prop :=
  ∀ n, P6370675799902784024.a n = A273309 n

end A273309

/-! ## A273309.P15600110616435545972

`A273311(n+1)-(A273312(n)+A273311(n))`
-/

namespace A273309.P15600110616435545972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273311 (n + 1) - (A273312 n + A273311 n)

end

end A273309.P15600110616435545972

namespace A273309

/-- `A273311(n+1)-(A273312(n)+A273311(n))` -/
def P15600110616435545972.Spec : Prop :=
  ∀ n, P15600110616435545972.a n = A273309 n

end A273309

/-! ## A273309.P16065797410112409866

`A273405(n)-4%A008574(n)`
-/

namespace A273309.P16065797410112409866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273405 n - Int.tmod 4 (A008574 n)

end

end A273309.P16065797410112409866

namespace A273309

/-- `A273405(n)-4%A008574(n)` -/
def P16065797410112409866.Spec : Prop :=
  ∀ n, P16065797410112409866.a n = A273309 n

end A273309

/-! ## A273309.P15595893217146073015

`A273405(n)-(2%A002061(n))²`
-/

namespace A273309.P15595893217146073015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273405 n - Int.tmod 2 (A002061 n) ^ 2

end

end A273309.P15595893217146073015

namespace A273309

/-- `A273405(n)-(2%A002061(n))²` -/
def P15595893217146073015.Spec : Prop :=
  ∀ n, P15595893217146073015.a n = A273309 n

end A273309

/-! ## A273309.P5906865817441636071

`4*A004275(∑[n])+1-n%2`
-/

namespace A273309.P5906865817441636071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A004275 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 - ((n % 2 : ℕ) : ℤ)

end

end A273309.P5906865817441636071

namespace A273309

/-- `4*A004275(∑[n])+1-n%2` -/
def P5906865817441636071.Spec : Prop :=
  ∀ n, P5906865817441636071.a n = A273309 n

end A273309

/-! ## A273309.P4742944319308007407

`A059841(n)+4*A004275(∑[n])`
-/

namespace A273309.P4742944319308007407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + 4 * A004275 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273309.P4742944319308007407

namespace A273309

/-- `A059841(n)+4*A004275(∑[n])` -/
def P4742944319308007407.Spec : Prop :=
  ∀ n, P4742944319308007407.a n = A273309 n

end A273309

/-! ## A273309.P14061942856487578259

`A056594(n)²+4*A004275(∑[n])`
-/

namespace A273309.P14061942856487578259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n ^ 2 + 4 * A004275 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273309.P14061942856487578259

namespace A273309

/-- `A056594(n)²+4*A004275(∑[n])` -/
def P14061942856487578259.Spec : Prop :=
  ∀ n, P14061942856487578259.a n = A273309 n

end A273309

/-! ## A273309.P10792294115637320042

`Δ[A110654(n)]+4*A004275(∑[n])`
-/

namespace A273309.P10792294115637320042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 4 * A004275 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A273309.P10792294115637320042

namespace A273309

/-- `Δ[A110654(n)]+4*A004275(∑[n])` -/
def P10792294115637320042.Spec : Prop :=
  ∀ n, P10792294115637320042.a n = A273309 n

end A273309

/-! ## A273309.P1931154651635057123

`char[A005843(n)]+4*A004275(∑[n])`
-/

namespace A273309.P1931154651635057123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + 4 * A004275 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A273309.P1931154651635057123

namespace A273309

/-- `char[A005843(n)]+4*A004275(∑[n])` -/
def P1931154651635057123.Spec : Prop :=
  ∀ n, P1931154651635057123.a n = A273309 n

end A273309

/-! ## A273309.P6854996050595507944

`char[A253885(n)]+4*A004275(∑[n])`
-/

namespace A273309.P6854996050595507944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + 4 * A004275 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A273309.P6854996050595507944

namespace A273309

/-- `char[A253885(n)]+4*A004275(∑[n])` -/
def P6854996050595507944.Spec : Prop :=
  ∀ n, P6854996050595507944.a n = A273309 n

end A273309

/-! ## A273309.P15952692442341884390

`4*A004275(∑[n])+1-A000035(n)`
-/

namespace A273309.P15952692442341884390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A004275 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 - A000035 n

end

end A273309.P15952692442341884390

namespace A273309

/-- `4*A004275(∑[n])+1-A000035(n)` -/
def P15952692442341884390.Spec : Prop :=
  ∀ n, P15952692442341884390.a n = A273309 n

end A273309

/-!
# A273310: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 641", based on the 5-celled von Neumann neighborhood.

The programs for A273310, the canonical program `A273310.P2645729378442460177` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273310 has offset 0).

The definition of A273310 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273310.P2645729378442460177

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=4, a(2)=40, a(3)=216, a(4)=952`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A273310

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P2645729378442460177.Spec : Prop :=
  ∀ n, P2645729378442460177.a n = A273310 n

theorem P2645729378442460177.correct : P2645729378442460177.Spec := by
  intro n
  simp only [A273310]

end A273310

/-! ## A273310.P4172597231035839745

`A271092(n)-char[1]`
-/

namespace A273310.P4172597231035839745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271092 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A273310.P4172597231035839745

namespace A273310

/-- `A271092(n)-char[1]` -/
def P4172597231035839745.Spec : Prop :=
  ∀ n, P4172597231035839745.a n = A273310 n

end A273310

/-! ## A273310.P6313600837468254110

`floor(A273313(n)-n/(n+1))`
-/

namespace A273310.P6313600837468254110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A273313 n : ℚ) - (n : ℚ) / (n + 1 : ℚ)⌋

end

end A273310.P6313600837468254110

namespace A273310

/-- `floor(A273313(n)-n/(n+1))` -/
def P6313600837468254110.Spec : Prop :=
  ∀ n, P6313600837468254110.a n = A273310 n

end A273310

/-! ## A273310.P3516757922701001509

`A273313(n)+A057428(n)`
-/

namespace A273310.P3516757922701001509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273313 n + A057428 n

end

end A273310.P3516757922701001509

namespace A273310

/-- `A273313(n)+A057428(n)` -/
def P3516757922701001509.Spec : Prop :=
  ∀ n, P3516757922701001509.a n = A273310 n

end A273310

/-! ## A273310.P7836693938140349976

`A273313(n)-A057427(n)`
-/

namespace A273310.P7836693938140349976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273313 n - A057427 n

end

end A273310.P7836693938140349976

namespace A273310

/-- `A273313(n)-A057427(n)` -/
def P7836693938140349976.Spec : Prop :=
  ∀ n, P7836693938140349976.a n = A273310 n

end A273310

/-! ## A273310.P4011752345989000847

`A273418(n)-A157928(n)`
-/

namespace A273310.P4011752345989000847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273418 n - A157928 n

end

end A273310.P4011752345989000847

namespace A273310

/-- `A273418(n)-A157928(n)` -/
def P4011752345989000847.Spec : Prop :=
  ∀ n, P4011752345989000847.a n = A273310 n

end A273310

/-! ## A273310.P9058999847372325733

`and(A269907(n), A271092(n))`
-/

namespace A273310.P9058999847372325733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A269907 n) (A271092 n)

end

end A273310.P9058999847372325733

namespace A273310

/-- `and(A269907(n), A271092(n))` -/
def P9058999847372325733.Spec : Prop :=
  ∀ n, P9058999847372325733.a n = A273310 n

end A273310

/-! ## A273310.P15623606494761857059

`and(A269907(n), A273313(n))`
-/

namespace A273310.P15623606494761857059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A269907 n) (A273313 n)

end

end A273310.P15623606494761857059

namespace A273310

/-- `and(A269907(n), A273313(n))` -/
def P15623606494761857059.Spec : Prop :=
  ∀ n, P15623606494761857059.a n = A273310 n

end A273310

/-! ## A273310.P10563433024679031315

`and(A269907(n), A273418(n))`
-/

namespace A273310.P10563433024679031315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A269907 n) (A273418 n)

end

end A273310.P10563433024679031315

namespace A273310

/-- `and(A269907(n), A273418(n))` -/
def P10563433024679031315.Spec : Prop :=
  ∀ n, P10563433024679031315.a n = A273310 n

end A273310

/-! ## A273310.P1215986790429773939

`and(A271092(n), A273418(n))`
-/

namespace A273310.P1215986790429773939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A271092 n) (A273418 n)

end

end A273310.P1215986790429773939

namespace A273310

/-- `and(A271092(n), A273418(n))` -/
def P1215986790429773939.Spec : Prop :=
  ∀ n, P1215986790429773939.a n = A273310 n

end A273310

/-! ## A273310.P3345464810034537021

`and(A271092(n), A273832(n))`
-/

namespace A273310.P3345464810034537021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A271092 n) (A273832 n)

end

end A273310.P3345464810034537021

namespace A273310

/-- `and(A271092(n), A273832(n))` -/
def P3345464810034537021.Spec : Prop :=
  ∀ n, P3345464810034537021.a n = A273310 n

end A273310

/-! ## A273310.P14167431220926106460

`xor(A063524(n), A271092(n))`
-/

namespace A273310.P14167431220926106460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A271092 n)

end

end A273310.P14167431220926106460

namespace A273310

/-- `xor(A063524(n), A271092(n))` -/
def P14167431220926106460.Spec : Prop :=
  ∀ n, P14167431220926106460.a n = A273310 n

end A273310

/-! ## A273310.P16519599321368734201

`and(-A000689(n), A273313(n))`
-/

namespace A273310.P16519599321368734201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000689 n) (A273313 n)

end

end A273310.P16519599321368734201

namespace A273310

/-- `and(-A000689(n), A273313(n))` -/
def P16519599321368734201.Spec : Prop :=
  ∀ n, P16519599321368734201.a n = A273310 n

end A273310

/-! ## A273310.P18420930243419770121

`A000007(n)+A273313(n)-1`
-/

namespace A273310.P18420930243419770121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A273313 n - 1)

end

end A273310.P18420930243419770121

namespace A273310

/-- `A000007(n)+A273313(n)-1` -/
def P18420930243419770121.Spec : Prop :=
  ∀ n, P18420930243419770121.a n = A273310 n

end A273310

/-! ## A273310.P5038767789645583074

`A273313(n)-A157928(n+1)`
-/

namespace A273310.P5038767789645583074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273313 n - A157928 (n + 1)

end

end A273310.P5038767789645583074

namespace A273310

/-- `A273313(n)-A157928(n+1)` -/
def P5038767789645583074.Spec : Prop :=
  ∀ n, P5038767789645583074.a n = A273310 n

end A273310

/-! ## A273310.P17095801945423963991

`A269907(n)-4*A157928(n)`
-/

namespace A273310.P17095801945423963991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269907 n - 4 * A157928 n

end

end A273310.P17095801945423963991

namespace A273310

/-- `A269907(n)-4*A157928(n)` -/
def P17095801945423963991.Spec : Prop :=
  ∀ n, P17095801945423963991.a n = A273310 n

end A273310

/-! ## A273310.P5114260843256174741

`A273313(n)-char[A000463(n+1)]`
-/

namespace A273310.P5114260843256174741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273313 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A273310.P5114260843256174741

namespace A273310

/-- `A273313(n)-char[A000463(n+1)]` -/
def P5114260843256174741.Spec : Prop :=
  ∀ n, P5114260843256174741.a n = A273310 n

end A273310

/-! ## A273310.P6488440083764431434

`A008683((n+1)²)+A273313(n)-1`
-/

namespace A273310.P6488440083764431434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + (A273313 n - 1)

end

end A273310.P6488440083764431434

namespace A273310

/-- `A008683((n+1)²)+A273313(n)-1` -/
def P6488440083764431434.Spec : Prop :=
  ∀ n, P6488440083764431434.a n = A273310 n

end A273310

/-! ## A273310.P11788945187452300770

`A273313(n)-A001221(A008578(n+1))`
-/

namespace A273310.P11788945187452300770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273313 n - A001221 (A008578 (n + 1)).toNat

end

end A273310.P11788945187452300770

namespace A273310

/-- `A273313(n)-A001221(A008578(n+1))` -/
def P11788945187452300770.Spec : Prop :=
  ∀ n, P11788945187452300770.a n = A273310 n

end A273310

/-! ## A273310.P8104348887539463679

`A269906(n)+A270935(n)-A272007(n)`
-/

namespace A273310.P8104348887539463679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269906 n + (A270935 n - A272007 n)

end

end A273310.P8104348887539463679

namespace A273310

/-- `A269906(n)+A270935(n)-A272007(n)` -/
def P8104348887539463679.Spec : Prop :=
  ∀ n, P8104348887539463679.a n = A273310 n

end A273310

/-!
# A273311: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 641", based on the 5-celled von Neumann neighborhood.

The programs for A273311, the canonical program `A273311.P7967218362444120176` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273311 has offset 0).

The definition of A273311 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273311.P7967218362444120176

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=5, a(2)=22, a(3)=62, a(4)=135, a(5)=247`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A273311

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P7967218362444120176.Spec : Prop :=
  ∀ n, P7967218362444120176.a n = A273311 n

theorem P7967218362444120176.correct : P7967218362444120176.Spec := by
  intro n
  simp only [A273311]

end A273311

/-! ## A273311.P13989382712417949341

`∑[A273309(n)]`
-/

namespace A273311.P13989382712417949341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273311.P13989382712417949341

namespace A273311

/-- `∑[A273309(n)]` -/
def P13989382712417949341.Spec : Prop :=
  ∀ n, P13989382712417949341.a n = A273311 n

end A273311

/-! ## A273311.P7630486790520767662

`floor(A273314(n)-n/2)`
-/

namespace A273311.P7630486790520767662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A273314 n : ℚ) - (n : ℚ) / 2⌋

end

end A273311.P7630486790520767662

namespace A273311

/-- `floor(A273314(n)-n/2)` -/
def P7630486790520767662.Spec : Prop :=
  ∀ n, P7630486790520767662.a n = A273311 n

end A273311

/-! ## A273311.P17380063513350631120

`A273314(n)-A110654(n)`
-/

namespace A273311.P17380063513350631120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273314 n - A110654 n

end

end A273311.P17380063513350631120

namespace A273311

/-- `A273314(n)-A110654(n)` -/
def P17380063513350631120.Spec : Prop :=
  ∀ n, P17380063513350631120.a n = A273311 n

end A273311

/-! ## A273311.P17457188642831149632

`A273314(n)-abs(A001057(n))`
-/

namespace A273311.P17457188642831149632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273314 n - |A001057 n|

end

end A273311.P17457188642831149632

namespace A273311

/-- `A273314(n)-abs(A001057(n))` -/
def P17457188642831149632.Spec : Prop :=
  ∀ n, P17457188642831149632.a n = A273311 n

end A273311

/-! ## A273311.P5907397946696979301

`A273314(n)-∑[A000035(n)]`
-/

namespace A273311.P5907397946696979301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273314 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273311.P5907397946696979301

namespace A273311

/-- `A273314(n)-∑[A000035(n)]` -/
def P5907397946696979301.Spec : Prop :=
  ∀ n, P5907397946696979301.a n = A273311 n

end A273311

/-! ## A273311.P16293281169968207259

`A273314(n)-Δ[A002620(n)]`
-/

namespace A273311.P16293281169968207259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273314 n - (f1 (n + 1) - f1 n)

end

end A273311.P16293281169968207259

namespace A273311

/-- `A273314(n)-Δ[A002620(n)]` -/
def P16293281169968207259.Spec : Prop :=
  ∀ n, P16293281169968207259.a n = A273311 n

end A273311

/-! ## A273311.P82485200595421931

`A273314(n)-A004526(n+1)`
-/

namespace A273311.P82485200595421931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273314 n - A004526 (n + 1)

end

end A273311.P82485200595421931

namespace A273311

/-- `A273314(n)-A004526(n+1)` -/
def P82485200595421931.Spec : Prop :=
  ∀ n, P82485200595421931.a n = A273311 n

end A273311

/-! ## A273311.P7811635417988822691

`A273314(n)-(n-A004526(n))`
-/

namespace A273311.P7811635417988822691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273314 n - ((n : ℤ) - A004526 n)

end

end A273311.P7811635417988822691

namespace A273311

/-- `A273314(n)-(n-A004526(n))` -/
def P7811635417988822691.Spec : Prop :=
  ∀ n, P7811635417988822691.a n = A273311 n

end A273311

/-! ## A273311.P12536266912069627331

`∑[A211623(n)+A116728(n+1)]`
-/

namespace A273311.P12536266912069627331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211623 n + A116728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273311.P12536266912069627331

namespace A273311

/-- `∑[A211623(n)+A116728(n+1)]` -/
def P12536266912069627331.Spec : Prop :=
  ∀ n, P12536266912069627331.a n = A273311 n

end A273311

/-! ## A273311.P7598579446416326472

`A273309(A005843(n)-n)+a(n-1)` with `a(0)=1`
-/

namespace A273311.P7598579446416326472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273309 (A005843 n - (n : ℤ)).toNat + a (n - 1)

end

end A273311.P7598579446416326472

namespace A273311

/-- `A273309(A005843(n)-n)+a(n-1)` -/
def P7598579446416326472.Spec : Prop :=
  ∀ n, P7598579446416326472.a n = A273311 n

end A273311

/-! ## A273311.P7758098798917204600

`A273314(n)-A065033(n)%A273314(n)`
-/

namespace A273311.P7758098798917204600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273314 n - Int.tmod (A065033 n) (A273314 n)

end

end A273311.P7758098798917204600

namespace A273311

/-- `A273314(n)-A065033(n)%A273314(n)` -/
def P7758098798917204600.Spec : Prop :=
  ∀ n, P7758098798917204600.a n = A273311 n

end A273311

/-! ## A273311.P5543319503047645502

`∑[A273312(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273311.P5543319503047645502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273312 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273311.P5543319503047645502

namespace A273311

/-- `∑[A273312(n-1)+a(n-1)]` -/
def P5543319503047645502.Spec : Prop :=
  ∀ n, P5543319503047645502.a n = A273311 n

end A273311

/-! ## A273311.P11736488256480308353

`∑[A273405(n)-(2%(n+1))²]`
-/

namespace A273311.P11736488256480308353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273405 n - (((2 % (n + 1)) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273311.P11736488256480308353

namespace A273311

/-- `∑[A273405(n)-(2%(n+1))²]` -/
def P11736488256480308353.Spec : Prop :=
  ∀ n, P11736488256480308353.a n = A273311 n

end A273311

/-! ## A273311.P3277566964043126551

`∑[4*A004275(∑[n])+1-n%2]`
-/

namespace A273311.P3277566964043126551
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A004275 (∑ j ∈ Finset.range (n + 1), f2 j) + 1 - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273311.P3277566964043126551

namespace A273311

/-- `∑[4*A004275(∑[n])+1-n%2]` -/
def P3277566964043126551.Spec : Prop :=
  ∀ n, P3277566964043126551.a n = A273311 n

end A273311

/-! ## A273311.P3080374476795519525

`∑[4*A004275(∑[n])+1-A000035(n)]`
-/

namespace A273311.P3080374476795519525
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A004275 (∑ j ∈ Finset.range (n + 1), f2 j) + 1 - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273311.P3080374476795519525

namespace A273311

/-- `∑[4*A004275(∑[n])+1-A000035(n)]` -/
def P3080374476795519525.Spec : Prop :=
  ∀ n, P3080374476795519525.a n = A273311 n

end A273311

/-!
# A273312: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 641", based on the 5-celled von Neumann neighborhood.

The programs for A273312, the canonical program `A273312.P7603145436069608143` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273312 has offset 0).

The definition of A273312 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273312.P7603145436069608143

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=3, a(1)=13, a(2)=23, a(3)=33, a(4)=39`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A273312

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P7603145436069608143.Spec : Prop :=
  ∀ n, P7603145436069608143.a n = A273312 n

theorem P7603145436069608143.correct : P7603145436069608143.Spec := by
  intro n
  simp only [A273312]

end A273312

/-! ## A273312.P13157111167432625050

`∑[floor(a(n-2))]` with `a(0)=3, a(1)=10, a(2)=10, a(3)=10, a(4)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A273312.P13157111167432625050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 10, 10, 10, 6] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273312.P13157111167432625050

namespace A273312

/-- `∑[floor(a(n-2))]` -/
def P13157111167432625050.Spec : Prop :=
  ∀ n, (P13157111167432625050.a n : ℤ) = A273312 n

end A273312

/-! ## A273312.P13418776730253839396

`Δ[A273309(n)]`
-/

namespace A273312.P13418776730253839396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273312.P13418776730253839396

namespace A273312

/-- `Δ[A273309(n)]` -/
def P13418776730253839396.Spec : Prop :=
  ∀ n, P13418776730253839396.a n = A273312 n

end A273312

/-! ## A273312.P14874167497106471097

`A273315(n)-(-1)^n`
-/

namespace A273312.P14874167497106471097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273315 n - (-1) ^ n

end

end A273312.P14874167497106471097

namespace A273312

/-- `A273315(n)-(-1)^n` -/
def P14874167497106471097.Spec : Prop :=
  ∀ n, P14874167497106471097.a n = A273312 n

end A273312

/-! ## A273312.P3373266599530405058

`A005943(2*(n+1))-a(n-1)` with `a(0)=3`
-/

namespace A273312.P3373266599530405058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A005943 (2 * (n + 1)) - a (n - 1)

end

end A273312.P3373266599530405058

namespace A273312

/-- `A005943(2*(n+1))-a(n-1)` -/
def P3373266599530405058.Spec : Prop :=
  ∀ n, P3373266599530405058.a n = A273312 n

end A273312

/-! ## A273312.P17237133357629766593

`A273309(n+1)-A273309(n)`
-/

namespace A273312.P17237133357629766593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273309 (n + 1) - A273309 n

end

end A273312.P17237133357629766593

namespace A273312

/-- `A273309(n+1)-A273309(n)` -/
def P17237133357629766593.Spec : Prop :=
  ∀ n, P17237133357629766593.a n = A273312 n

end A273312

/-! ## A273312.P6046501549204863259

`Δ[A211623(n)+A116728(n+1)]`
-/

namespace A273312.P6046501549204863259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211623 n + A116728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273312.P6046501549204863259

namespace A273312

/-- `Δ[A211623(n)+A116728(n+1)]` -/
def P6046501549204863259.Spec : Prop :=
  ∀ n, P6046501549204863259.a n = A273312 n

end A273312

/-! ## A273312.P8581236894970273027

`A017101(n)+A017137(n)%A047461(n+1)`
-/

namespace A273312.P8581236894970273027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n + Int.tmod (A017137 n) (A047461 (n + 1))

end

end A273312.P8581236894970273027

namespace A273312

/-- `A017101(n)+A017137(n)%A047461(n+1)` -/
def P8581236894970273027.Spec : Prop :=
  ∀ n, P8581236894970273027.a n = A273312 n

end A273312

/-! ## A273312.P18119082181155227102

`Δ[A273405(n)-(2%(n+1))²]`
-/

namespace A273312.P18119082181155227102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273405 n - (((2 % (n + 1)) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273312.P18119082181155227102

namespace A273312

/-- `Δ[A273405(n)-(2%(n+1))²]` -/
def P18119082181155227102.Spec : Prop :=
  ∀ n, P18119082181155227102.a n = A273312 n

end A273312

/-! ## A273312.P13061222317961105323

`A004277(A158478(n)+4*n+1)+1`
-/

namespace A273312.P13061222317961105323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A158478 n + (4 * n + 1 : ℤ)).toNat + 1

end

end A273312.P13061222317961105323

namespace A273312

/-- `A004277(A158478(n)+4*n+1)+1` -/
def P13061222317961105323.Spec : Prop :=
  ∀ n, P13061222317961105323.a n = A273312 n

end A273312

/-! ## A273312.P8799694370632554683

`A005408(A158478(n)+A016813(n))`
-/

namespace A273312.P8799694370632554683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A158478 n + A016813 n).toNat

end

end A273312.P8799694370632554683

namespace A273312

/-- `A005408(A158478(n)+A016813(n))` -/
def P8799694370632554683.Spec : Prop :=
  ∀ n, P8799694370632554683.a n = A273312 n

end A273312

/-! ## A273312.P16918433246773226504

`A005408(A158478(n)+A005408(2*n))`
-/

namespace A273312.P16918433246773226504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A158478 n + A005408 (2 * n)).toNat

end

end A273312.P16918433246773226504

namespace A273312

/-- `A005408(A158478(n)+A005408(2*n))` -/
def P16918433246773226504.Spec : Prop :=
  ∀ n, P16918433246773226504.a n = A273312 n

end A273312

/-! ## A273312.P10344164625194005528

`A005408(A005408(n)+A267460(n)+n)`
-/

namespace A273312.P10344164625194005528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005408 n + (A267460 n + (n : ℤ))).toNat

end

end A273312.P10344164625194005528

namespace A273312

/-- `A005408(A005408(n)+A267460(n)+n)` -/
def P10344164625194005528.Spec : Prop :=
  ∀ n, P10344164625194005528.a n = A273312 n

end A273312

/-! ## A273312.P12672955040715060875

`A004273(A158478(n)+A016825(n))`
-/

namespace A273312.P12672955040715060875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A158478 n + A016825 n).toNat

end

end A273312.P12672955040715060875

namespace A273312

/-- `A004273(A158478(n)+A016825(n))` -/
def P12672955040715060875.Spec : Prop :=
  ∀ n, P12672955040715060875.a n = A273312 n

end A273312

/-! ## A273312.P16157960117306876513

`A004273(A267460(n)+A016789(n))`
-/

namespace A273312.P16157960117306876513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A267460 n + A016789 n).toNat

end

end A273312.P16157960117306876513

namespace A273312

/-- `A004273(A267460(n)+A016789(n))` -/
def P16157960117306876513.Spec : Prop :=
  ∀ n, P16157960117306876513.a n = A273312 n

end A273312

/-!
# A273313: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 643", based on the 5-celled von Neumann neighborhood.

The programs for A273313, the canonical program `A273313.P15542650037905279331` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273313 has offset 0).

The definition of A273313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273313.P15542650037905279331

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=5, a(2)=41, a(3)=217, a(4)=953`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A273313

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P15542650037905279331.Spec : Prop :=
  ∀ n, P15542650037905279331.a n = A273313 n

theorem P15542650037905279331.correct : P15542650037905279331.Spec := by
  intro n
  simp only [A273313]

end A273313

/-! ## A273313.P6387177290524517392

`or(1, A271092(n))`
-/

namespace A273313.P6387177290524517392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A271092 n)

end

end A273313.P6387177290524517392

namespace A273313

/-- `or(1, A271092(n))` -/
def P6387177290524517392.Spec : Prop :=
  ∀ n, P6387177290524517392.a n = A273313 n

end A273313

/-! ## A273313.P4746209946504195356

`or(1, A273310(n))`
-/

namespace A273313.P4746209946504195356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273310 n)

end

end A273313.P4746209946504195356

namespace A273313

/-- `or(1, A273310(n))` -/
def P4746209946504195356.Spec : Prop :=
  ∀ n, P4746209946504195356.a n = A273313 n

end A273313

/-! ## A273313.P4071120082698755272

`or(1, A273418(n))`
-/

namespace A273313.P4071120082698755272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273418 n)

end

end A273313.P4071120082698755272

namespace A273313

/-- `or(1, A273418(n))` -/
def P4071120082698755272.Spec : Prop :=
  ∀ n, P4071120082698755272.a n = A273313 n

end A273313

/-! ## A273313.P16098674700443749901

`A273310(n)+A057427(n)`
-/

namespace A273313.P16098674700443749901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273310 n + A057427 n

end

end A273313.P16098674700443749901

namespace A273313

/-- `A273310(n)+A057427(n)` -/
def P16098674700443749901.Spec : Prop :=
  ∀ n, P16098674700443749901.a n = A273313 n

end A273313

/-! ## A273313.P9241109845527902489

`A273418(n)+A063524(n)`
-/

namespace A273313.P9241109845527902489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273418 n + A063524 n

end

end A273313.P9241109845527902489

namespace A273313

/-- `A273418(n)+A063524(n)` -/
def P9241109845527902489.Spec : Prop :=
  ∀ n, P9241109845527902489.a n = A273313 n

end A273313

/-! ## A273313.P4658378029624716457

`A271092(n)+A157928(n)`
-/

namespace A273313.P4658378029624716457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271092 n + A157928 n

end

end A273313.P4658378029624716457

namespace A273313

/-- `A271092(n)+A157928(n)` -/
def P4658378029624716457.Spec : Prop :=
  ∀ n, P4658378029624716457.a n = A273313 n

end A273313

/-! ## A273313.P17124229583177098569

`A273310(n)-A057428(n)`
-/

namespace A273313.P17124229583177098569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273310 n - A057428 n

end

end A273313.P17124229583177098569

namespace A273313

/-- `A273310(n)-A057428(n)` -/
def P17124229583177098569.Spec : Prop :=
  ∀ n, P17124229583177098569.a n = A273313 n

end A273313

/-! ## A273313.P8025069268781611982

`A273418(n)-A159075(n)`
-/

namespace A273313.P8025069268781611982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273418 n - A159075 n

end

end A273313.P8025069268781611982

namespace A273313

/-- `A273418(n)-A159075(n)` -/
def P8025069268781611982.Spec : Prop :=
  ∀ n, P8025069268781611982.a n = A273313 n

end A273313

/-! ## A273313.P8511554574391125611

`A273310(n)+A157928(n+1)`
-/

namespace A273313.P8511554574391125611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273310 n + A157928 (n + 1)

end

end A273313.P8511554574391125611

namespace A273313

/-- `A273310(n)+A157928(n+1)` -/
def P8511554574391125611.Spec : Prop :=
  ∀ n, P8511554574391125611.a n = A273313 n

end A273313

/-! ## A273313.P10288799890353979168

`A273310(n)+1-A000007(n)`
-/

namespace A273313.P10288799890353979168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273310 n + (1 - A000007 n)

end

end A273313.P10288799890353979168

namespace A273313

/-- `A273310(n)+1-A000007(n)` -/
def P10288799890353979168.Spec : Prop :=
  ∀ n, P10288799890353979168.a n = A273313 n

end A273313

/-! ## A273313.P11329527784804274229

`A273310(n)+A019426(2*n)`
-/

namespace A273313.P11329527784804274229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273310 n + A019426 (2 * n)

end

end A273313.P11329527784804274229

namespace A273313

/-- `A273310(n)+A019426(2*n)` -/
def P11329527784804274229.Spec : Prop :=
  ∀ n, P11329527784804274229.a n = A273313 n

end A273313

/-! ## A273313.P887100390716109592

`A273310(n)+char[A038722(n+1)]`
-/

namespace A273313.P887100390716109592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273310 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A273313.P887100390716109592

namespace A273313

/-- `A273310(n)+char[A038722(n+1)]` -/
def P887100390716109592.Spec : Prop :=
  ∀ n, P887100390716109592.a n = A273313 n

end A273313

/-! ## A273313.P11905381755215170191

`A273310(n)+A001221(A000015(n+1))`
-/

namespace A273313.P11905381755215170191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273310 n + A001221 (A000015 (n + 1)).toNat

end

end A273313.P11905381755215170191

namespace A273313

/-- `A273310(n)+A001221(A000015(n+1))` -/
def P11905381755215170191.Spec : Prop :=
  ∀ n, P11905381755215170191.a n = A273313 n

end A273313

/-! ## A273313.P14080710547035686402

`A271092(n)+A057427(n-A057427(n))`
-/

namespace A273313.P14080710547035686402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271092 n + A057427 ((n : ℤ) - A057427 n).toNat

end

end A273313.P14080710547035686402

namespace A273313

/-- `A271092(n)+A057427(n-A057427(n))` -/
def P14080710547035686402.Spec : Prop :=
  ∀ n, P14080710547035686402.a n = A273313 n

end A273313

/-!
# A273314: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 643", based on the 5-celled von Neumann neighborhood.

The programs for A273314, the canonical program `A273314.P3518847398812258515` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273314 has offset 0).

The definition of A273314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273314.P3518847398812258515

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=23, a(3)=64, a(4)=137`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A273314

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P3518847398812258515.Spec : Prop :=
  ∀ n, P3518847398812258515.a n = A273314 n

theorem P3518847398812258515.correct : P3518847398812258515.Spec := by
  intro n
  simp only [A273314]

end A273314

/-! ## A273314.P18179603702631506904

`∑[∑[a(n-1)+8]]` with `a(0)=1, a(1)=4, a(2)=12, a(3)=24`
-/

namespace A273314.P18179603702631506904
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 12, 24] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273314.P18179603702631506904

namespace A273314

/-- `∑[∑[a(n-1)+8]]` -/
def P18179603702631506904.Spec : Prop :=
  ∀ n, (P18179603702631506904.a n : ℤ) = A273314 n

end A273314

/-! ## A273314.P15033909388174636225

`∑[(2*n+1)²]-record[lcm(4, n)]`
-/

namespace A273314.P15033909388174636225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

end

end A273314.P15033909388174636225

namespace A273314

/-- `∑[(2*n+1)²]-record[lcm(4, n)]` -/
def P15033909388174636225.Spec : Prop :=
  ∀ n, P15033909388174636225.a n = A273314 n

end A273314

/-! ## A273314.P1321799486033279168

`a(n-1)+(2*n+1)²-8` with `a(0)=1, a(1)=6`
-/

namespace A273314.P1321799486033279168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) + ((2 * n + 1) ^ 2 : ℤ) - 8

end

end A273314.P1321799486033279168

namespace A273314

/-- `a(n-1)+(2*n+1)²-8` -/
def P1321799486033279168.Spec : Prop :=
  ∀ n, P1321799486033279168.a n = A273314 n

end A273314

/-! ## A273314.P5657201359532026642

`∑[(2*n+1)²]-record[and(n, -and(4, n))]`
-/

namespace A273314.P5657201359532026642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(Nat.land 4 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A273314.P5657201359532026642

namespace A273314

/-- `∑[(2*n+1)²]-record[and(n, -and(4, n))]` -/
def P5657201359532026642.Spec : Prop :=
  ∀ n, P5657201359532026642.a n = A273314 n

end A273314

/-! ## A273314.P4361452685667936647

`A166147(n)+a(n-1)` with `a(0)=1, a(1)=6`
-/

namespace A273314.P4361452685667936647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  A166147 n + a (n - 1)

end

end A273314.P4361452685667936647

namespace A273314

/-- `A166147(n)+a(n-1)` -/
def P4361452685667936647.Spec : Prop :=
  ∀ n, P4361452685667936647.a n = A273314 n

end A273314

/-! ## A273314.P1797231095145289197

`C(2*n+3, 3)-record[4*A006257(n)]`
-/

namespace A273314.P1797231095145289197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 3) 3 : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273314.P1797231095145289197

namespace A273314

/-- `C(2*n+3, 3)-record[4*A006257(n)]` -/
def P1797231095145289197.Spec : Prop :=
  ∀ n, P1797231095145289197.a n = A273314 n

end A273314

/-! ## A273314.P9280530388851312173

`∑[A004280(n+1)²]+A004273(n)²`
-/

namespace A273314.P9280530388851312173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A004273 n ^ 2

end

end A273314.P9280530388851312173

namespace A273314

/-- `∑[A004280(n+1)²]+A004273(n)²` -/
def P9280530388851312173.Spec : Prop :=
  ∀ n, P9280530388851312173.a n = A273314 n

end A273314

/-! ## A273314.P12337131945147574992

`A000447(n+1)-2*A004275(2*n)`
-/

namespace A273314.P12337131945147574992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (n + 1) - 2 * A004275 (2 * n)

end

end A273314.P12337131945147574992

namespace A273314

/-- `A000447(n+1)-2*A004275(2*n)` -/
def P12337131945147574992.Spec : Prop :=
  ∀ n, P12337131945147574992.a n = A273314 n

end A273314

/-! ## A273314.P4616989859006108735

`A000292(2*n+1)-2*A004275(2*n)`
-/

namespace A273314.P4616989859006108735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (2 * n + 1) - 2 * A004275 (2 * n)

end

end A273314.P4616989859006108735

namespace A273314

/-- `A000292(2*n+1)-2*A004275(2*n)` -/
def P4616989859006108735.Spec : Prop :=
  ∀ n, P4616989859006108735.a n = A273314 n

end A273314

/-! ## A273314.P12504250918909667993

`∑[or(1, A273309(n))]`
-/

namespace A273314.P12504250918909667993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273309 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273314.P12504250918909667993

namespace A273314

/-- `∑[or(1, A273309(n))]` -/
def P12504250918909667993.Spec : Prop :=
  ∀ n, P12504250918909667993.a n = A273314 n

end A273314

/-! ## A273314.P4064635144356258597

`∑[A273309(n)+A000035(n)]`
-/

namespace A273314.P4064635144356258597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273309 n + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273314.P4064635144356258597

namespace A273314

/-- `∑[A273309(n)+A000035(n)]` -/
def P4064635144356258597.Spec : Prop :=
  ∀ n, P4064635144356258597.a n = A273314 n

end A273314

/-! ## A273314.P8961158490700394713

`A273311(n)+A110654(n)`
-/

namespace A273314.P8961158490700394713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273311 n + A110654 n

end

end A273314.P8961158490700394713

namespace A273314

/-- `A273311(n)+A110654(n)` -/
def P8961158490700394713.Spec : Prop :=
  ∀ n, P8961158490700394713.a n = A273314 n

end A273314

/-! ## A273314.P12407830387894021546

`A000292(2*n+1)-A058992(A058992(2*(n+1)))`
-/

namespace A273314.P12407830387894021546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (2 * n + 1) - A058992 (A058992 (2 * (n + 1))).toNat

end

end A273314.P12407830387894021546

namespace A273314

/-- `A000292(2*n+1)-A058992(A058992(2*(n+1)))` -/
def P12407830387894021546.Spec : Prop :=
  ∀ n, P12407830387894021546.a n = A273314 n

end A273314

/-! ## A273314.P187745658633120826

`∑[4*A004275(∑[n])+1]`
-/

namespace A273314.P187745658633120826
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A004275 (∑ j ∈ Finset.range (n + 1), f2 j) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273314.P187745658633120826

namespace A273314

/-- `∑[4*A004275(∑[n])+1]` -/
def P187745658633120826.Spec : Prop :=
  ∀ n, P187745658633120826.a n = A273314 n

end A273314

/-! ## A273314.P9712112492736538207

`∑[4*record[2*n/A004736(n+1)]+1]`
-/

namespace A273314.P9712112492736538207
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (A004736 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273314.P9712112492736538207

namespace A273314

/-- `∑[4*record[2*n/A004736(n+1)]+1]` -/
def P9712112492736538207.Spec : Prop :=
  ∀ n, P9712112492736538207.a n = (A273314 n : ℚ)

end A273314

/-!
# A273315: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 643", based on the 5-celled von Neumann neighborhood.

The programs for A273315, the canonical program `A273315.P9174528616511418044` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273315 has offset 0).

The definition of A273315 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273315.P9174528616511418044

`2*a(n-1)-a(n-2)` with `a(0)=4, a(1)=12, a(2)=24, a(3)=32`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A273315

/-- `2*a(n-1)-a(n-2)` -/
def P9174528616511418044.Spec : Prop :=
  ∀ n, P9174528616511418044.a n = A273315 n

theorem P9174528616511418044.correct : P9174528616511418044.Spec := by
  intro n
  simp only [A273315]

end A273315

/-!
# A273316: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 645", based on the 5-celled von Neumann neighborhood.

The programs for A273316, the canonical program `A273316.P698485891696351456` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273316 has offset 0).

The definition of A273316 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273316.P4193951680918840200

`(4*n^3+12*n²+8*n+3)/3`
-/

namespace A273316.P4193951680918840200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n ^ 3 + 12 * n ^ 2 + 8 * n + 3 : ℚ) / 3

end

end A273316.P4193951680918840200

namespace A273316

/-- `(4*n^3+12*n²+8*n+3)/3` -/
def P4193951680918840200.Spec : Prop :=
  ∀ n, P4193951680918840200.a n = (A273316 n : ℚ)

end A273316

/-! ## A273316.P698485891696351456

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=9, a(2)=33, a(3)=81`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A273316

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P698485891696351456.Spec : Prop :=
  ∀ n, P698485891696351456.a n = A273316 n

theorem P698485891696351456.correct : P698485891696351456.Spec := by
  intro n
  simp only [A273316]

end A273316

/-! ## A273316.P16867364665830560234

`or(1, ∑[∑[8*n]])`
-/

namespace A273316.P16867364665830560234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273316.P16867364665830560234

namespace A273316

/-- `or(1, ∑[∑[8*n]])` -/
def P16867364665830560234.Spec : Prop :=
  ∀ n, (P16867364665830560234.a n : ℤ) = A273316 n

end A273316

/-! ## A273316.P6759419372943456738

`xor(1, ∑[∑[8*n]])`
-/

namespace A273316.P6759419372943456738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273316.P6759419372943456738

namespace A273316

/-- `xor(1, ∑[∑[8*n]])` -/
def P6759419372943456738.Spec : Prop :=
  ∀ n, (P6759419372943456738.a n : ℤ) = A273316 n

end A273316

/-! ## A273316.P13487227214207386975

`C(2*n+3, 3)-n`
-/

namespace A273316.P13487227214207386975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 3) 3 : ℤ) - (n : ℤ)

end

end A273316.P13487227214207386975

namespace A273316

/-- `C(2*n+3, 3)-n` -/
def P13487227214207386975.Spec : Prop :=
  ∀ n, P13487227214207386975.a n = A273316 n

end A273316

/-! ## A273316.P13229974721848170077

`∑[record[xor(-n², (-1)^n)]]`
-/

namespace A273316.P13229974721848170077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(n ^ 2 : ℤ)) ((-1) ^ n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273316.P13229974721848170077

namespace A273316

/-- `∑[record[xor(-n², (-1)^n)]]` -/
def P13229974721848170077.Spec : Prop :=
  ∀ n, P13229974721848170077.a n = A273316 n

end A273316

/-! ## A273316.P6299433032103623410

`∑[∑[a(n-1)+8]]` with `a(0)=1, a(1)=7, a(2)=16`
-/

namespace A273316.P6299433032103623410
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 16] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273316.P6299433032103623410

namespace A273316

/-- `∑[∑[a(n-1)+8]]` -/
def P6299433032103623410.Spec : Prop :=
  ∀ n, (P6299433032103623410.a n : ℤ) = A273316 n

end A273316

/-! ## A273316.P15333936160732009759

`∑[8*n²-a(n-1)]` with `a(0)=1, a(1)=8`
-/

namespace A273316.P15333936160732009759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  (8 * n ^ 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273316.P15333936160732009759

namespace A273316

/-- `∑[8*n²-a(n-1)]` -/
def P15333936160732009759.Spec : Prop :=
  ∀ n, P15333936160732009759.a n = A273316 n

end A273316

/-! ## A273316.P10324122168771925619

`a(n-1)+4*(n²+n)` with `a(0)=1`
-/

namespace A273316.P10324122168771925619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 4 * (n ^ 2 + n)

end

end A273316.P10324122168771925619

namespace A273316

/-- `a(n-1)+4*(n²+n)` -/
def P10324122168771925619.Spec : Prop :=
  ∀ n, (P10324122168771925619.a n : ℤ) = A273316 n

end A273316

/-! ## A273316.P1024542801424729506

`and(∑[(2*n+1)²]-n, -3)`
-/

namespace A273316.P1024542801424729506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) (-3)

end

end A273316.P1024542801424729506

namespace A273316

/-- `and(∑[(2*n+1)²]-n, -3)` -/
def P1024542801424729506.Spec : Prop :=
  ∀ n, P1024542801424729506.a n = A273316 n

end A273316

/-! ## A273316.P13933916896292168682

`(n+1+n)²+a(n-1)-1` with `a(0)=1`
-/

namespace A273316.P13933916896292168682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1 + n) ^ 2 : ℤ) + (a (n - 1) - 1)

end

end A273316.P13933916896292168682

namespace A273316

/-- `(n+1+n)²+a(n-1)-1` -/
def P13933916896292168682.Spec : Prop :=
  ∀ n, P13933916896292168682.a n = A273316 n

end A273316

/-! ## A273316.P13047761778495331205

`∑[(2*n+1)²-n²%(n+1)]`
-/

namespace A273316.P13047761778495331205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - ((n ^ 2 % (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273316.P13047761778495331205

namespace A273316

/-- `∑[(2*n+1)²-n²%(n+1)]` -/
def P13047761778495331205.Spec : Prop :=
  ∀ n, P13047761778495331205.a n = A273316 n

end A273316

/-! ## A273316.P16823273604813550341

`4*(a(n-1)/4+n*(n+1))` with `a(0)=1`
-/

namespace A273316.P16823273604813550341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * (a (n - 1) / 4 + (n * (n + 1) : ℚ))

end

end A273316.P16823273604813550341

namespace A273316

/-- `4*(a(n-1)/4+n*(n+1))` -/
def P16823273604813550341.Spec : Prop :=
  ∀ n, P16823273604813550341.a n = (A273316 n : ℚ)

end A273316

/-! ## A273316.P17729316980200025434

`gcd(∑[(2*n+1)²]-n, and(1, 2*n))`
-/

namespace A273316.P17729316980200025434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) (Nat.land 1 (2 * n) : ℤ)

end

end A273316.P17729316980200025434

namespace A273316

/-- `gcd(∑[(2*n+1)²]-n, and(1, 2*n))` -/
def P17729316980200025434.Spec : Prop :=
  ∀ n, (P17729316980200025434.a n : ℤ) = A273316 n

end A273316

/-! ## A273316.P10284770553045084942

`(∑[(2*n+1)²]-n)*gcd(n, n+1)`
-/

namespace A273316.P10284770553045084942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) * (Nat.gcd n (n + 1) : ℤ)

end

end A273316.P10284770553045084942

namespace A273316

/-- `(∑[(2*n+1)²]-n)*gcd(n, n+1)` -/
def P10284770553045084942.Spec : Prop :=
  ∀ n, P10284770553045084942.a n = A273316 n

end A273316

/-! ## A273316.P4501264008624065054

`floor(a(n-1)+2*(n+1)*2*n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A273316.P4501264008624065054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * ((n + 1) * (2 * n))

end

end A273316.P4501264008624065054

namespace A273316

/-- `floor(a(n-1)+2*(n+1)*2*n)` -/
def P4501264008624065054.Spec : Prop :=
  ∀ n, (P4501264008624065054.a n : ℤ) = A273316 n

end A273316

/-! ## A273316.P18225095514955943029

`∑[A033996(n)]+1`
-/

namespace A273316.P18225095514955943029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A273316.P18225095514955943029

namespace A273316

/-- `∑[A033996(n)]+1` -/
def P18225095514955943029.Spec : Prop :=
  ∀ n, P18225095514955943029.a n = A273316 n

end A273316

/-! ## A273316.P16152740626287406618

`∑[A016754(n)]-n`
-/

namespace A273316.P16152740626287406618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A273316.P16152740626287406618

namespace A273316

/-- `∑[A016754(n)]-n` -/
def P16152740626287406618.Spec : Prop :=
  ∀ n, P16152740626287406618.a n = A273316 n

end A273316

/-!
# A273319: a(n) = ((2*n+1)^(n+1) + (-1)^n)/(n+1)^2.

The programs for A273319, the canonical program `A273319.P12900120918908300898` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273319 has offset 0).

The definition of A273319 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273319.P12900120918908300898

`((2*n+1)^(n+1)+(-1)^n)/(n+1)²`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A273319

/-- `((2*n+1)^(n+1)+(-1)^n)/(n+1)²` -/
def P12900120918908300898.Spec : Prop :=
  ∀ n, P12900120918908300898.a n = (A273319 n : ℚ)

end A273319

/-!
# A273320: G.f. A(x) satisfies: A(x)^2 - 2*A(x)^3 = -A(-x^2).

The programs for A273320, there is no canonical definition to state claims against.
-/

/-! ## A273320.P2557949509981884534

`A209081(A149343(n))`
-/

namespace A273320.P2557949509981884534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209081 (A149343 n).toNat

end

end A273320.P2557949509981884534

/-! ## A273320.P950847047661608243

`A187186(A149973(n+1))`
-/

namespace A273320.P950847047661608243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187186 (A149973 (n + 1)).toNat

end

end A273320.P950847047661608243

/-!
# A273321: Wiener index of graph of b.c.c. unit cells in a line = Sum of distances in a b.c.c. row graph.

The programs for A273321, the canonical program `A273321.P13151398585970775755` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273321 has offset 1).

The definition of A273321 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273321.P13151398585970775755

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=64, a(1)=206, a(2)=488, a(3)=960`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A273321

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P13151398585970775755.Spec : Prop :=
  ∀ n, P13151398585970775755.a n = A273321 (n + 1)

theorem P13151398585970775755.correct : P13151398585970775755.Spec := by
  intro n
  simp only [A273321, Nat.add_sub_cancel]

end A273321

/-! ## A273321.P8881250809862884677

`∑[A028994(n+1)]+3*A114364(n+2)`
-/

namespace A273321.P8881250809862884677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3 * A114364 (n + 2)

end

end A273321.P8881250809862884677

namespace A273321

/-- `∑[A028994(n+1)]+3*A114364(n+2)` -/
def P8881250809862884677.Spec : Prop :=
  ∀ n, P8881250809862884677.a n = A273321 (n + 1)

end A273321

/-! ## A273321.P8637031189475027223

`A046092(2*(n+2))+∑[A157514(n+1)]`
-/

namespace A273321.P8637031189475027223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (2 * (n + 2)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273321.P8637031189475027223

namespace A273321

/-- `A046092(2*(n+2))+∑[A157514(n+1)]` -/
def P8637031189475027223.Spec : Prop :=
  ∀ n, P8637031189475027223.a n = A273321 (n + 1)

end A273321

/-! ## A273321.P8835775173201704516

`A008253(2*(n+2))+∑[A014206(5*n+4)]`
-/

namespace A273321.P8835775173201704516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 (5 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008253 (2 * (n + 2)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273321.P8835775173201704516

namespace A273321

/-- `A008253(2*(n+2))+∑[A014206(5*n+4)]` -/
def P8835775173201704516.Spec : Prop :=
  ∀ n, P8835775173201704516.a n = A273321 (n + 1)

end A273321

/-! ## A273321.P3764371726343539669

`A017317(Δ[A007715(n+1)])+2*n`
-/

namespace A273321.P3764371726343539669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 (f1 (n + 1) - f1 n).toNat + (2 * n : ℤ)

end

end A273321.P3764371726343539669

namespace A273321

/-- `A017317(Δ[A007715(n+1)])+2*n` -/
def P3764371726343539669.Spec : Prop :=
  ∀ n, P3764371726343539669.a n = A273321 (n + 1)

end A273321

/-!
# A273324: Integers m such that m^2 + 3 is the sum of 4 but no fewer nonzero squares.

The programs for A273324, the canonical program `A273324.P11441205994710050702` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273324 has offset 1).

The definition of A273324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273324.P11441205994710050702

`∑[4-a(n-3)%4]` with `a(0)=2, a(1)=3, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A273324

/-- `∑[4-a(n-3)%4]` -/
def P11441205994710050702.Spec : Prop :=
  ∀ n, P11441205994710050702.a n = A273324 (n + 1)

theorem P11441205994710050702.correct : P11441205994710050702.Spec := by
  intro n
  simp only [A273324, Nat.add_sub_cancel]

end A273324

/-! ## A273324.P16950289388122716008

`∑[floor(a(a(n-3)))]+n` with `a(0)=2, a(1)=2, a(2)=0, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A273324.P16950289388122716008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 0, 3] fun n f1 =>
  f1 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A273324.P16950289388122716008

namespace A273324

/-- `∑[floor(a(a(n-3)))]+n` -/
def P16950289388122716008.Spec : Prop :=
  ∀ n, (P16950289388122716008.a n : ℤ) = A273324 (n + 1)

end A273324

/-! ## A273324.P8906391447545336232

`ceil(sqrt(A278491(n+1)))`
-/

namespace A273324.P8906391447545336232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A278491 (n + 1) : ℝ)⌉

end

end A273324.P8906391447545336232

namespace A273324

/-- `ceil(sqrt(A278491(n+1)))` -/
def P8906391447545336232.Spec : Prop :=
  ∀ n, P8906391447545336232.a n = A273324 (n + 1)

end A273324

/-! ## A273324.P11282034381302845106

`A278536(n)+a(n-1)` with `a(0)=2`
-/

namespace A273324.P11282034381302845106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A278536 n + a (n - 1)

end

end A273324.P11282034381302845106

namespace A273324

/-- `A278536(n)+a(n-1)` -/
def P11282034381302845106.Spec : Prop :=
  ∀ n, P11282034381302845106.a n = A273324 (n + 1)

end A273324

/-! ## A273324.P1981850692428371315

`∑[A174828(a(n-3)+3)]` with `a(0)=2, a(1)=3, a(2)=1`
-/

namespace A273324.P1981850692428371315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 1] fun n f1 =>
  A174828 (f1 (n - 3) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273324.P1981850692428371315

namespace A273324

/-- `∑[A174828(a(n-3)+3)]` -/
def P1981850692428371315.Spec : Prop :=
  ∀ n, P1981850692428371315.a n = A273324 (n + 1)

end A273324

/-! ## A273324.P18004626496191655935

`∑[A249783(a(n-3)+10)]` with `a(0)=2, a(1)=3, a(2)=1`
-/

namespace A273324.P18004626496191655935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 1] fun n f1 =>
  A249783 (f1 (n - 3) + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273324.P18004626496191655935

namespace A273324

/-- `∑[A249783(a(n-3)+10)]` -/
def P18004626496191655935.Spec : Prop :=
  ∀ n, P18004626496191655935.a n = A273324 (n + 1)

end A273324

/-! ## A273324.P13401022705053148894

`A359380(n+1)+A130823(n+1)`
-/

namespace A273324.P13401022705053148894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359380 (n + 1) + A130823 (n + 1)

end

end A273324.P13401022705053148894

namespace A273324

/-- `A359380(n+1)+A130823(n+1)` -/
def P13401022705053148894.Spec : Prop :=
  ∀ n, P13401022705053148894.a n = A273324 (n + 1)

end A273324

/-! ## A273324.P8069212390065769935

`A047556(n+1)-Δ[A047549(n+1)]`
-/

namespace A273324.P8069212390065769935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047556 (n + 1) - (f1 (n + 1) - f1 n)

end

end A273324.P8069212390065769935

namespace A273324

/-- `A047556(n+1)-Δ[A047549(n+1)]` -/
def P8069212390065769935.Spec : Prop :=
  ∀ n, P8069212390065769935.a n = A273324 (n + 1)

end A273324

/-! ## A273324.P16374084956205206675

`A302402(A109613(n+1)+1)+A047240(n+1)`
-/

namespace A273324.P16374084956205206675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302402 (A109613 (n + 1) + 1).toNat + A047240 (n + 1)

end

end A273324.P16374084956205206675

namespace A273324

/-- `A302402(A109613(n+1)+1)+A047240(n+1)` -/
def P16374084956205206675.Spec : Prop :=
  ∀ n, P16374084956205206675.a n = A273324 (n + 1)

end A273324

/-! ## A273324.P9090364063966706355

`A047556(n+1)-Δ[A047581(n+5)]`
-/

namespace A273324.P9090364063966706355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047581 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047556 (n + 1) - (f1 (n + 1) - f1 n)

end

end A273324.P9090364063966706355

namespace A273324

/-- `A047556(n+1)-Δ[A047581(n+5)]` -/
def P9090364063966706355.Spec : Prop :=
  ∀ n, P9090364063966706355.a n = A273324 (n + 1)

end A273324

/-! ## A273324.P2993728571487256089

`A047447(A047428(n+2))`
-/

namespace A273324.P2993728571487256089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047447 (A047428 (n + 2)).toNat

end

end A273324.P2993728571487256089

namespace A273324

/-- `A047447(A047428(n+2))` -/
def P2993728571487256089.Spec : Prop :=
  ∀ n, P2993728571487256089.a n = A273324 (n + 1)

end A273324

/-! ## A273324.P4300260035986733107

`A047514(A047503(n+1)+1)-1`
-/

namespace A273324.P4300260035986733107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047514 (A047503 (n + 1) + 1).toNat - 1

end

end A273324.P4300260035986733107

namespace A273324

/-- `A047514(A047503(n+1)+1)-1` -/
def P4300260035986733107.Spec : Prop :=
  ∀ n, P4300260035986733107.a n = A273324 (n + 1)

end A273324

/-! ## A273324.P18261291111608674168

`A047593(A359380(n+1))`
-/

namespace A273324.P18261291111608674168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047593 (A359380 (n + 1)).toNat

end

end A273324.P18261291111608674168

namespace A273324

/-- `A047593(A359380(n+1))` -/
def P18261291111608674168.Spec : Prop :=
  ∀ n, P18261291111608674168.a n = A273324 (n + 1)

end A273324

/-! ## A273324.P5422336651510812883

`A008611(2*n)+record[A237109(n+1)]`
-/

namespace A273324.P5422336651510812883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (2 * n) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273324.P5422336651510812883

namespace A273324

/-- `A008611(2*n)+record[A237109(n+1)]` -/
def P5422336651510812883.Spec : Prop :=
  ∀ n, P5422336651510812883.a n = A273324 (n + 1)

end A273324

/-! ## A273324.P5112000957654540566

`eq[0, A253414(n)+1]`
-/

namespace A273324.P5112000957654540566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253414 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273324.P5112000957654540566

namespace A273324

/-- `eq[0, A253414(n)+1]` -/
def P5112000957654540566.Spec : Prop :=
  ∀ n, (P5112000957654540566.a n : ℤ) = A273324 (n + 1)

end A273324

/-! ## A273324.P10448321058174514687

`filter[A255068(n), A082410(#)]`
-/

namespace A273324.P10448321058174514687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A082410 (f1 j).toNat = 1) n)

end

end A273324.P10448321058174514687

namespace A273324

/-- `filter[A255068(n), A082410(#)]` -/
def P10448321058174514687.Spec : Prop :=
  ∀ n, P10448321058174514687.a n = A273324 (n + 1)

end A273324

/-! ## A273324.P11634503043284278448

`eq[A010216(n), A014707(n)]`
-/

namespace A273324.P11634503043284278448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273324.P11634503043284278448

namespace A273324

/-- `eq[A010216(n), A014707(n)]` -/
def P11634503043284278448.Spec : Prop :=
  ∀ n, (P11634503043284278448.a n : ℤ) = A273324 (n + 1)

end A273324

/-! ## A273324.P10314123758168625531

`eq[A010216(n), A043545(n)]`
-/

namespace A273324.P10314123758168625531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273324.P10314123758168625531

namespace A273324

/-- `eq[A010216(n), A043545(n)]` -/
def P10314123758168625531.Spec : Prop :=
  ∀ n, (P10314123758168625531.a n : ℤ) = A273324 (n + 1)

end A273324

/-!
# A273325: Number of endofunctions on [2n] such that the minimal cardinality of the nonempty preimages equals n.

The programs for A273325, the canonical program `A273325.P16843386311213055868` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273325 has offset 0).

The definition of A273325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273325.P16843386311213055868

`2*(2*n-1)²*a(n-1)/((n-1)*(2*n-3))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A273325

/-- `2*(2*n-1)²*a(n-1)/((n-1)*(2*n-3))` -/
def P16843386311213055868.Spec : Prop :=
  ∀ n, P16843386311213055868.a n = (A273325 n : ℚ)

end A273325

/-! ## A273325.P6098645173632794741

`A088218(n)*A118239(n+1)`
-/

namespace A273325.P6098645173632794741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n * A118239 (n + 1)

end

end A273325.P6098645173632794741

namespace A273325

/-- `A088218(n)*A118239(n+1)` -/
def P6098645173632794741.Spec : Prop :=
  ∀ n, P6098645173632794741.a n = A273325 n

end A273325

/-! ## A273325.P11512204987652946119

`A088218(n)*A103505(2*n)`
-/

namespace A273325.P11512204987652946119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n * A103505 (2 * n)

end

end A273325.P11512204987652946119

namespace A273325

/-- `A088218(n)*A103505(2*n)` -/
def P11512204987652946119.Spec : Prop :=
  ∀ n, P11512204987652946119.a n = A273325 n

end A273325

/-! ## A273325.P6170052589649741624

`A000384(A028310(n))*A000984(n)`
-/

namespace A273325.P6170052589649741624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (A028310 n).toNat * A000984 n

end

end A273325.P6170052589649741624

namespace A273325

/-- `A000384(A028310(n))*A000984(n)` -/
def P6170052589649741624.Spec : Prop :=
  ∀ n, P6170052589649741624.a n = A273325 n

end A273325

/-! ## A273325.P799924392855415807

`A056040(A004273(n))*A111284(n+1)`
-/

namespace A273325.P799924392855415807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (A004273 n).toNat * A111284 (n + 1)

end

end A273325.P799924392855415807

namespace A273325

/-- `A056040(A004273(n))*A111284(n+1)` -/
def P799924392855415807.Spec : Prop :=
  ∀ n, P799924392855415807.a n = A273325 n

end A273325

/-! ## A273325.P7307005124332405672

`A000384(A000007(n)+n)*A000984(n)`
-/

namespace A273325.P7307005124332405672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (A000007 n + (n : ℤ)).toNat * A000984 n

end

end A273325.P7307005124332405672

namespace A273325

/-- `A000384(A000007(n)+n)*A000984(n)` -/
def P7307005124332405672.Spec : Prop :=
  ∀ n, P7307005124332405672.a n = A273325 n

end A273325

/-! ## A273325.P6656334788043414595

`A068875(n)*A171822(∑[A028310(n)])`
-/

namespace A273325.P6656334788043414595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n * A171822 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A273325.P6656334788043414595

namespace A273325

/-- `A068875(n)*A171822(∑[A028310(n)])` -/
def P6656334788043414595.Spec : Prop :=
  ∀ n, P6656334788043414595.a n = A273325 n

end A273325

/-! ## A273325.P9482469260200688658

`A132813(A000124(n))*A214775(A000124(n))`
-/

namespace A273325.P9482469260200688658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132813 (A000124 n).toNat * A214775 (A000124 n).toNat

end

end A273325.P9482469260200688658

namespace A273325

/-- `A132813(A000124(n))*A214775(A000124(n))` -/
def P9482469260200688658.Spec : Prop :=
  ∀ n, P9482469260200688658.a n = A273325 n

end A273325

/-!
# A273326: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 646", based on the 5-celled von Neumann neighborhood.

The programs for A273326, there is no canonical definition to state claims against.
-/

/-! ## A273326.P14068731314848874961

`A273329(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273326.P14068731314848874961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273329 (n - 1) + a (n - 1)

end

end A273326.P14068731314848874961

/-! ## A273326.P11649163604974311720

`Δ[A273328(n)]-A273329(n)`
-/

namespace A273326.P11649163604974311720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273329 n

end

end A273326.P11649163604974311720

/-! ## A273326.P13325448711588081585

`A273328(n+1)-(A273329(n)+A273328(n))`
-/

namespace A273326.P13325448711588081585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273328 (n + 1) - (A273329 n + A273328 n)

end

end A273326.P13325448711588081585

/-! ## A273326.P2856482786093141655

`A020985(n)²+∑[A273329(n)]-A273329(n)`
-/

namespace A273326.P2856482786093141655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273329 n)

end

end A273326.P2856482786093141655

/-! ## A273326.P13900151349852787050

`A057427(n+1)+∑[A273329(n)]-A273329(n)`
-/

namespace A273326.P13900151349852787050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A273329 n)

end

end A273326.P13900151349852787050

/-! ## A273326.P8774412825843904069

`A000034(2*n)+∑[A273329(n)]-A273329(n)`
-/

namespace A273326.P8774412825843904069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j - A273329 n)

end

end A273326.P8774412825843904069

/-! ## A273326.P12887859933247420803

`A093178(n)%2+∑[A273329(n)]-A273329(n)`
-/

namespace A273326.P12887859933247420803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093178 n) 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273329 n)

end

end A273326.P12887859933247420803

/-! ## A273326.P8031098350330656581

`(∑[A273329(n)]-A273329(n)+1)%A089549(n+1)`
-/

namespace A273326.P8031098350330656581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A273329 n + 1) (A089549 (n + 1))

end

end A273326.P8031098350330656581

/-! ## A273326.P2122976304466276330

`(∑[A273329(n)]-A273329(n))%A255412(n+1)+1`
-/

namespace A273326.P2122976304466276330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A273329 n) (A255412 (n + 1)) + 1

end

end A273326.P2122976304466276330

/-! ## A273326.P9571517776067155333

`(A002939(n)+1)%2+∑[A273329(n)]-A273329(n)`
-/

namespace A273326.P9571517776067155333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002939 n + 1) 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273329 n)

end

end A273326.P9571517776067155333

/-! ## A273326.P17463710051266428981

`(1-2*A000035(n))²+∑[A273329(n)]-A273329(n)`
-/

namespace A273326.P17463710051266428981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A000035 n) ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273329 n)

end

end A273326.P17463710051266428981

/-! ## A273326.P6376632048881592059

`A000027(∑[A273329(n)]-A273329(n)+1)`
-/

namespace A273326.P6376632048881592059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j - A273329 n + 1).toNat

end

end A273326.P6376632048881592059

/-! ## A273326.P9730999570947211479

`A000265(∑[A273329(n)]-A273329(n)+1)`
-/

namespace A273326.P9730999570947211479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j - A273329 n + 1).toNat

end

end A273326.P9730999570947211479

/-! ## A273326.P3557346167235097882

`A009001(∑[A273329(n)]-A273329(n)+1)`
-/

namespace A273326.P3557346167235097882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (∑ j ∈ Finset.range (n + 1), f1 j - A273329 n + 1).toNat

end

end A273326.P3557346167235097882

/-! ## A273326.P420835310843478975

`A005408((∑[A273329(n)]-A273329(n))/2)`
-/

namespace A273326.P420835310843478975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j - A273329 n : ℤ) : ℚ) / 2)).toNat

end

end A273326.P420835310843478975

/-! ## A273326.P7323589683735248131

`A141310(∑[A273329(n)]-A273329(n))`
-/

namespace A273326.P7323589683735248131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (∑ j ∈ Finset.range (n + 1), f1 j - A273329 n).toNat

end

end A273326.P7323589683735248131

/-! ## A273326.P11261960963909300375

`A109613(∑[A273329(n)]-A273329(n))`
-/

namespace A273326.P11261960963909300375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (∑ j ∈ Finset.range (n + 1), f1 j - A273329 n).toNat

end

end A273326.P11261960963909300375

/-!
# A273327: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 646", based on the 5-celled von Neumann neighborhood.

The programs for A273327, there is no canonical definition to state claims against.
-/

/-! ## A273327.P14690358217516706689

`A273326(2^n-1)`
-/

namespace A273327.P14690358217516706689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273326 (2 ^ n - 1)

end

end A273327.P14690358217516706689

/-! ## A273327.P16379115214190210976

`record[A273326(A173787(n))]`
-/

namespace A273327.P16379115214190210976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273326 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273327.P16379115214190210976

/-! ## A273327.P18106243261799804277

`record[A273326(A218616(n))]`
-/

namespace A273327.P18106243261799804277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273326 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273327.P18106243261799804277

/-! ## A273327.P4164515424283422131

`record[A273326(A303763(n))]`
-/

namespace A273327.P4164515424283422131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273326 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273327.P4164515424283422131

/-! ## A273327.P4915484130361642702

`or(1, A273326(A000225(n)))`
-/

namespace A273327.P4915484130361642702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273326 (A000225 n).toNat)

end

end A273327.P4915484130361642702

/-!
# A273328: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 646", based on the 5-celled von Neumann neighborhood.

The programs for A273328, there is no canonical definition to state claims against.
-/

/-! ## A273328.P3232473093439364987

`∑[∑[A273329(n)]-A273329(n)+1]`
-/

namespace A273328.P3232473093439364987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273329 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A273329 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273328.P3232473093439364987

/-! ## A273328.P4803590216701688668

`∑[A273326(n)]`
-/

namespace A273328.P4803590216701688668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273328.P4803590216701688668

/-! ## A273328.P15980163811168206078

`A273326(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A273328.P15980163811168206078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273326 n + a (A023443 n).toNat

end

end A273328.P15980163811168206078

/-! ## A273328.P4967306442627632206

`a(n-1)+or(A098457(2*(n+1)), A273326(n))` with `a(0)=1`
-/

namespace A273328.P4967306442627632206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lor (A098457 (2 * (n + 1))) (A273326 n)

end

end A273328.P4967306442627632206

/-! ## A273328.P7295968651396246620

`a(n-1)+A273326(n)+A000007(A054397(n+1))` with `a(0)=1`
-/

namespace A273328.P7295968651396246620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273326 n + A000007 (A054397 (n + 1)).toNat)

end

end A273328.P7295968651396246620

/-!
# A273329: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 646", based on the 5-celled von Neumann neighborhood.

The programs for A273329, there is no canonical definition to state claims against.
-/

/-! ## A273329.P15721285637335035564

`Δ[A273326(n)]`
-/

namespace A273329.P15721285637335035564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273329.P15721285637335035564

/-! ## A273329.P12500313924004771091

`A273326(n+1)-A273326(n)`
-/

namespace A273329.P12500313924004771091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273326 (n + 1) - A273326 n

end

end A273329.P12500313924004771091

/-! ## A273329.P8876609590143189545

`A273424(n)-A184955(A135017(n+1))`
-/

namespace A273329.P8876609590143189545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273424 n - A184955 (A135017 (n + 1)).toNat

end

end A273329.P8876609590143189545

/-! ## A273329.P13563580903804425291

`A273424(n)-A184955(A303431(n+1))`
-/

namespace A273329.P13563580903804425291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273424 n - A184955 (A303431 (n + 1)).toNat

end

end A273329.P13563580903804425291

/-! ## A273329.P2637443605065655142

`Δ[A273421(n)]-A184955(A135017(n+1))`
-/

namespace A273329.P2637443605065655142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A184955 (A135017 (n + 1)).toNat

end

end A273329.P2637443605065655142

/-!
# A273330: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 654", based on the 5-celled von Neumann neighborhood.

The programs for A273330, there is no canonical definition to state claims against.
-/

/-! ## A273330.P12193384450008473238

`∑[A273333(abs(1-n))]-3`
-/

namespace A273330.P12193384450008473238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273333 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A273330.P12193384450008473238

/-! ## A273330.P16779174809378056906

`A273333(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273330.P16779174809378056906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273333 (n - 1) + a (n - 1)

end

end A273330.P16779174809378056906

/-! ## A273330.P6210933108946669373

`Δ[A273332(n)]-A273333(n)`
-/

namespace A273330.P6210933108946669373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273333 n

end

end A273330.P6210933108946669373

/-! ## A273330.P4537997908205611425

`A273332(n+1)-(A273333(n)+A273332(n))`
-/

namespace A273330.P4537997908205611425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273332 (n + 1) - (A273333 n + A273332 n)

end

end A273330.P4537997908205611425

/-! ## A273330.P11834028886799230380

`A005408((∑[A273333(n)]-A273333(n))/2)`
-/

namespace A273330.P11834028886799230380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j - A273333 n : ℤ) : ℚ) / 2)).toNat

end

end A273330.P11834028886799230380

/-! ## A273330.P9417153574491265794

`A004442(∑[A273333(n)]-A273333(n))`
-/

namespace A273330.P9417153574491265794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (∑ j ∈ Finset.range (n + 1), f1 j - A273333 n).toNat

end

end A273330.P9417153574491265794

/-!
# A273331: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 654", based on the 5-celled von Neumann neighborhood.

The programs for A273331, there is no canonical definition to state claims against.
-/

/-! ## A273331.P10533687382814023298

`2*2*xor(3%n, a(n-1))+1` with `a(0)=1`
-/

namespace A273331.P10533687382814023298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 * Nat.xor (3 % n) (a (n - 1))) + 1

end

end A273331.P10533687382814023298

/-! ## A273331.P10667065322203593028

`A273330(2^n-1)`
-/

namespace A273331.P10667065322203593028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273330 (2 ^ n - 1)

end

end A273331.P10667065322203593028

/-! ## A273331.P17975282455525956702

`record[A273330(A006068(n))]`
-/

namespace A273331.P17975282455525956702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273330 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273331.P17975282455525956702

/-! ## A273331.P11671900479193243582

`A273330(A000079(n))-4`
-/

namespace A273331.P11671900479193243582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273330 (A000079 n).toNat - 4

end

end A273331.P11671900479193243582

/-!
# A273332: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 654", based on the 5-celled von Neumann neighborhood.

The programs for A273332, there is no canonical definition to state claims against.
-/

/-! ## A273332.P14991674209401500550

`∑[A273330(n)]`
-/

namespace A273332.P14991674209401500550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273332.P14991674209401500550

/-! ## A273332.P13579056654749007955

`A273330(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A273332.P13579056654749007955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273330 n + a (A004273 n - (n : ℤ)).toNat

end

end A273332.P13579056654749007955

/-! ## A273332.P8181945826685135445

`∑[∑[A273333(abs(1-n))]-3]`
-/

namespace A273332.P8181945826685135445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273333 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273332.P8181945826685135445

/-! ## A273332.P8133458655491213348

`∑[∑[A273333(n)]-A273333(n)+1]`
-/

namespace A273332.P8133458655491213348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273333 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A273333 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273332.P8133458655491213348

/-! ## A273332.P12874739028951660292

`a(-A024000(n))-A001489(A273330(n))` with `a(0)=1`
-/

namespace A273332.P12874739028951660292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (-A024000 n).toNat - A001489 (A273330 n).toNat

end

end A273332.P12874739028951660292

/-!
# A273333: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 654", based on the 5-celled von Neumann neighborhood.

The programs for A273333, there is no canonical definition to state claims against.
-/

/-! ## A273333.P7605425363766426100

`Δ[A273330(n)]`
-/

namespace A273333.P7605425363766426100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273333.P7605425363766426100

/-! ## A273333.P17982698066244497697

`A273330(n+1)-A273330(n)`
-/

namespace A273333.P17982698066244497697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273330 (n + 1) - A273330 n

end

end A273333.P17982698066244497697

/-! ## A273333.P12436350117118456200

`or(2, A173452(2*(n+2)))+2`
-/

namespace A273333.P12436350117118456200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A173452 (2 * (n + 2))) + 2

end

end A273333.P12436350117118456200

/-! ## A273333.P13252586634115237459

`A071051(A288808(n+1))`
-/

namespace A273333.P13252586634115237459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071051 (A288808 (n + 1)).toNat

end

end A273333.P13252586634115237459

/-! ## A273333.P13840119778579721016

`A267584(A283909(n+1))`
-/

namespace A273333.P13840119778579721016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 (A283909 (n + 1)).toNat

end

end A273333.P13840119778579721016

/-!
# A273334: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 657", based on the 5-celled von Neumann neighborhood.

The programs for A273334, the canonical program `A273334.P16083105356873057138` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273334 has offset 0).

The definition of A273334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273334.P16083105356873057138

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=17, a(3)=48, a(4)=80, a(5)=120`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A273334

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P16083105356873057138.Spec : Prop :=
  ∀ n, P16083105356873057138.a n = A273334 n

theorem P16083105356873057138.correct : P16083105356873057138.Spec := by
  intro n
  simp only [A273334]

end A273334

/-! ## A273334.P9716222607970921813

`A273337(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273334.P9716222607970921813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273337 (n - 1) + a (n - 1)

end

end A273334.P9716222607970921813

namespace A273334

/-- `A273337(n-1)+a(n-1)` -/
def P9716222607970921813.Spec : Prop :=
  ∀ n, P9716222607970921813.a n = A273334 n

end A273334

/-! ## A273334.P12990172190549241104

`A273336(n+1)-(A273337(n)+A273336(n))`
-/

namespace A273334.P12990172190549241104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273336 (n + 1) - (A273337 n + A273336 n)

end

end A273334.P12990172190549241104

namespace A273334

/-- `A273336(n+1)-(A273337(n)+A273336(n))` -/
def P12990172190549241104.Spec : Prop :=
  ∀ n, P12990172190549241104.a n = A273334 n

end A273334

/-! ## A273334.P9324093658433856889

`A273766(n)-A130543(n)`
-/

namespace A273334.P9324093658433856889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273766 n - A130543 n

end

end A273334.P9324093658433856889

namespace A273334

/-- `A273766(n)-A130543(n)` -/
def P9324093658433856889.Spec : Prop :=
  ∀ n, P9324093658433856889.a n = A273334 n

end A273334

/-! ## A273334.P18441336431829752226

`A273766(n)-A015325(C(3, n))`
-/

namespace A273334.P18441336431829752226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273766 n - A015325 (Nat.choose 3 n)

end

end A273334.P18441336431829752226

namespace A273334

/-- `A273766(n)-A015325(C(3, n))` -/
def P18441336431829752226.Spec : Prop :=
  ∀ n, P18441336431829752226.a n = A273334 n

end A273334

/-! ## A273334.P1028974410189852059

`and(-gcd(2, A273769(n)), A273766(n))`
-/

namespace A273334.P1028974410189852059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(Int.gcd 2 (A273769 n) : ℤ)) (A273766 n)

end

end A273334.P1028974410189852059

namespace A273334

/-- `and(-gcd(2, A273769(n)), A273766(n))` -/
def P1028974410189852059.Spec : Prop :=
  ∀ n, P1028974410189852059.a n = A273334 n

end A273334

/-! ## A273334.P9189466218006626771

`A273766(n)-A057427(A002265(n))`
-/

namespace A273334.P9189466218006626771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273766 n - A057427 (A002265 n).toNat

end

end A273334.P9189466218006626771

namespace A273334

/-- `A273766(n)-A057427(A002265(n))` -/
def P9189466218006626771.Spec : Prop :=
  ∀ n, P9189466218006626771.a n = A273334 n

end A273334

/-! ## A273334.P13152112963661069624

`A273766(n)-A060576(A008621(n))`
-/

namespace A273334.P13152112963661069624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273766 n - A060576 (A008621 n).toNat

end

end A273334.P13152112963661069624

namespace A273334

/-- `A273766(n)-A060576(A008621(n))` -/
def P13152112963661069624.Spec : Prop :=
  ∀ n, P13152112963661069624.a n = A273334 n

end A273334

/-! ## A273334.P4326135807108236953

`A273766(n)-A055396(A092533(n))`
-/

namespace A273334.P4326135807108236953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273766 n - A055396 (A092533 n).toNat

end

end A273334.P4326135807108236953

namespace A273334

/-- `A273766(n)-A055396(A092533(n))` -/
def P4326135807108236953.Spec : Prop :=
  ∀ n, P4326135807108236953.a n = A273334 n

end A273334

/-! ## A273334.P14387511237647731133

`A273766(n)-A060576(A129756(n))`
-/

namespace A273334.P14387511237647731133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273766 n - A060576 (A129756 n).toNat

end

end A273334.P14387511237647731133

namespace A273334

/-- `A273766(n)-A060576(A129756(n))` -/
def P14387511237647731133.Spec : Prop :=
  ∀ n, P14387511237647731133.a n = A273334 n

end A273334

/-! ## A273334.P17984504093925764703

`A273766(n)-A057427(A172264(n))`
-/

namespace A273334.P17984504093925764703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273766 n - A057427 (A172264 n).toNat

end

end A273334.P17984504093925764703

namespace A273334

/-- `A273766(n)-A057427(A172264(n))` -/
def P17984504093925764703.Spec : Prop :=
  ∀ n, P17984504093925764703.a n = A273334 n

end A273334

/-! ## A273334.P3260962882481564991

`A273766(n)-A035263(A230775(n+1))`
-/

namespace A273334.P3260962882481564991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273766 n - A035263 (A230775 (n + 1)).toNat

end

end A273334.P3260962882481564991

namespace A273334

/-- `A273766(n)-A035263(A230775(n+1))` -/
def P3260962882481564991.Spec : Prop :=
  ∀ n, P3260962882481564991.a n = A273334 n

end A273334

/-! ## A273334.P15928919081920446688

`A273766(n)-A273766(n)%A065033(n)`
-/

namespace A273334.P15928919081920446688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273766 n - Int.tmod (A273766 n) (A065033 n)

end

end A273334.P15928919081920446688

namespace A273334

/-- `A273766(n)-A273766(n)%A065033(n)` -/
def P15928919081920446688.Spec : Prop :=
  ∀ n, P15928919081920446688.a n = A273334 n

end A273334

/-! ## A273334.P7250493291409080379

`A273384(n)-A267870(n+1)`
-/

namespace A273334.P7250493291409080379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273384 n - A267870 (n + 1)

end

end A273334.P7250493291409080379

namespace A273334

/-- `A273384(n)-A267870(n+1)` -/
def P7250493291409080379.Spec : Prop :=
  ∀ n, P7250493291409080379.a n = A273334 n

end A273334

/-! ## A273334.P5672802039993266854

`A273384(n)-floor(atan(A160016(n)))`
-/

namespace A273334.P5672802039993266854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273384 n - ⌊Real.arctan (A160016 n : ℝ)⌋

end

end A273334.P5672802039993266854

namespace A273334

/-- `A273384(n)-floor(atan(A160016(n)))` -/
def P5672802039993266854.Spec : Prop :=
  ∀ n, P5672802039993266854.a n = A273334 n

end A273334

/-! ## A273334.P3768686196933230450

`A273766(n)-A165471(A295643(n))`
-/

namespace A273334.P3768686196933230450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273766 n - A165471 (A295643 n).toNat

end

end A273334.P3768686196933230450

namespace A273334

/-- `A273766(n)-A165471(A295643(n))` -/
def P3768686196933230450.Spec : Prop :=
  ∀ n, P3768686196933230450.a n = A273334 n

end A273334

/-! ## A273334.P2895233522465808670

`A273384(n)-A049240(A077169(n))`
-/

namespace A273334.P2895233522465808670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273384 n - A049240 (A077169 n).toNat

end

end A273334.P2895233522465808670

namespace A273334

/-- `A273384(n)-A049240(A077169(n))` -/
def P2895233522465808670.Spec : Prop :=
  ∀ n, P2895233522465808670.a n = A273334 n

end A273334

/-! ## A273334.P16194242959767319915

`A273384(n)-A049240(A082562(n))`
-/

namespace A273334.P16194242959767319915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273384 n - A049240 (A082562 n).toNat

end

end A273334.P16194242959767319915

namespace A273334

/-- `A273384(n)-A049240(A082562(n))` -/
def P16194242959767319915.Spec : Prop :=
  ∀ n, P16194242959767319915.a n = A273334 n

end A273334

/-!
# A273335: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 657", based on the 5-celled von Neumann neighborhood.

The programs for A273335, the canonical program `A273335.P4923644614604299063` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273335 has offset 0).

The definition of A273335 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273335.P4923644614604299063

`6*a(n-1)-8*a(n-2)` with `a(0)=1, a(1)=4, a(2)=48, a(3)=224`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A273335

/-- `6*a(n-1)-8*a(n-2)` -/
def P4923644614604299063.Spec : Prop :=
  ∀ n, P4923644614604299063.a n = A273335 n

theorem P4923644614604299063.correct : P4923644614604299063.Spec := by
  intro n
  simp only [A273335]

end A273335

/-! ## A273335.P12322215249746211564

`4*or(a(n-1), A007283(n))` with `a(0)=1, a(1)=4`
-/

namespace A273335.P12322215249746211564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * Int.lor (a (n - 1)) (A007283 n)

end

end A273335.P12322215249746211564

namespace A273335

/-- `4*or(a(n-1), A007283(n))` -/
def P12322215249746211564.Spec : Prop :=
  ∀ n, P12322215249746211564.a n = A273335 n

end A273335

/-! ## A273335.P18414729756212375756

`4*or(a(n-1), A003945(n+1))` with `a(0)=1, a(1)=4`
-/

namespace A273335.P18414729756212375756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * Int.lor (a (n - 1)) (A003945 (n + 1))

end

end A273335.P18414729756212375756

namespace A273335

/-- `4*or(a(n-1), A003945(n+1))` -/
def P18414729756212375756.Spec : Prop :=
  ∀ n, P18414729756212375756.a n = A273335 n

end A273335

/-! ## A273335.P741438535884973493

`A273385(n)+A057428(n)`
-/

namespace A273335.P741438535884973493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273385 n + A057428 n

end

end A273335.P741438535884973493

namespace A273335

/-- `A273385(n)+A057428(n)` -/
def P741438535884973493.Spec : Prop :=
  ∀ n, P741438535884973493.a n = A273335 n

end A273335

/-! ## A273335.P1479374733772391672

`A267851(n)+A087291(n)`
-/

namespace A273335.P1479374733772391672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267851 n + A087291 n

end

end A273335.P1479374733772391672

namespace A273335

/-- `A267851(n)+A087291(n)` -/
def P1479374733772391672.Spec : Prop :=
  ∀ n, P1479374733772391672.a n = A273335 n

end A273335

/-! ## A273335.P12138094639964655444

`A273385(n)-A057427(n)`
-/

namespace A273335.P12138094639964655444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273385 n - A057427 n

end

end A273335.P12138094639964655444

namespace A273335

/-- `A273385(n)-A057427(n)` -/
def P12138094639964655444.Spec : Prop :=
  ∀ n, P12138094639964655444.a n = A273335 n

end A273335

/-! ## A273335.P9816648028567580941

`A271061(n)/A373565(n)`
-/

namespace A273335.P9816648028567580941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271061 n : ℚ) / (A373565 n : ℚ)

end

end A273335.P9816648028567580941

namespace A273335

/-- `A271061(n)/A373565(n)` -/
def P9816648028567580941.Spec : Prop :=
  ∀ n, P9816648028567580941.a n = (A273335 n : ℚ)

end A273335

/-! ## A273335.P17770489799436676289

`and(A157823(n), A273767(n))`
-/

namespace A273335.P17770489799436676289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157823 n) (A273767 n)

end

end A273335.P17770489799436676289

namespace A273335

/-- `and(A157823(n), A273767(n))` -/
def P17770489799436676289.Spec : Prop :=
  ∀ n, P17770489799436676289.a n = A273335 n

end A273335

/-! ## A273335.P17078847912380105628

`and(A165751(n), A273385(n))`
-/

namespace A273335.P17078847912380105628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165751 n) (A273385 n)

end

end A273335.P17078847912380105628

namespace A273335

/-- `and(A165751(n), A273385(n))` -/
def P17078847912380105628.Spec : Prop :=
  ∀ n, P17078847912380105628.a n = A273335 n

end A273335

/-! ## A273335.P13831797249700664180

`and(A165751(n), A273767(n))`
-/

namespace A273335.P13831797249700664180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165751 n) (A273767 n)

end

end A273335.P13831797249700664180

namespace A273335

/-- `and(A165751(n), A273767(n))` -/
def P13831797249700664180.Spec : Prop :=
  ∀ n, P13831797249700664180.a n = A273335 n

end A273335

/-! ## A273335.P8795018937551861973

`and(A171499(n), A273385(n))`
-/

namespace A273335.P8795018937551861973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171499 n) (A273385 n)

end

end A273335.P8795018937551861973

namespace A273335

/-- `and(A171499(n), A273385(n))` -/
def P8795018937551861973.Spec : Prop :=
  ∀ n, P8795018937551861973.a n = A273335 n

end A273335

/-! ## A273335.P13995380512570007879

`and(A171499(n), A273767(n))`
-/

namespace A273335.P13995380512570007879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171499 n) (A273767 n)

end

end A273335.P13995380512570007879

namespace A273335

/-- `and(A171499(n), A273767(n))` -/
def P13995380512570007879.Spec : Prop :=
  ∀ n, P13995380512570007879.a n = A273335 n

end A273335

/-! ## A273335.P847211768477400825

`and(A186100(n), A273385(n))`
-/

namespace A273335.P847211768477400825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A186100 n) (A273385 n)

end

end A273335.P847211768477400825

namespace A273335

/-- `and(A186100(n), A273385(n))` -/
def P847211768477400825.Spec : Prop :=
  ∀ n, P847211768477400825.a n = A273335 n

end A273335

/-! ## A273335.P13403216767855781242

`and(A186100(n), A273767(n))`
-/

namespace A273335.P13403216767855781242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A186100 n) (A273767 n)

end

end A273335.P13403216767855781242

namespace A273335

/-- `and(A186100(n), A273767(n))` -/
def P13403216767855781242.Spec : Prop :=
  ∀ n, P13403216767855781242.a n = A273335 n

end A273335

/-! ## A273335.P1307249083837190741

`and(A230057(n), A273385(n))`
-/

namespace A273335.P1307249083837190741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A230057 n) (A273385 n)

end

end A273335.P1307249083837190741

namespace A273335

/-- `and(A230057(n), A273385(n))` -/
def P1307249083837190741.Spec : Prop :=
  ∀ n, P1307249083837190741.a n = A273335 n

end A273335

/-! ## A273335.P6946880472802739233

`and(A230057(n), A273767(n))`
-/

namespace A273335.P6946880472802739233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A230057 n) (A273767 n)

end

end A273335.P6946880472802739233

namespace A273335

/-- `and(A230057(n), A273767(n))` -/
def P6946880472802739233.Spec : Prop :=
  ∀ n, P6946880472802739233.a n = A273335 n

end A273335

/-! ## A273335.P4447860272469966001

`and(A256624(n), A273385(n))`
-/

namespace A273335.P4447860272469966001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A256624 n) (A273385 n)

end

end A273335.P4447860272469966001

namespace A273335

/-- `and(A256624(n), A273385(n))` -/
def P4447860272469966001.Spec : Prop :=
  ∀ n, P4447860272469966001.a n = A273335 n

end A273335

/-! ## A273335.P2969083994851624765

`and(A256624(n), A273767(n))`
-/

namespace A273335.P2969083994851624765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A256624 n) (A273767 n)

end

end A273335.P2969083994851624765

namespace A273335

/-- `and(A256624(n), A273767(n))` -/
def P2969083994851624765.Spec : Prop :=
  ∀ n, P2969083994851624765.a n = A273335 n

end A273335

/-! ## A273335.P10403304800610838568

`A269907(n)+4*A157928(n)`
-/

namespace A273335.P10403304800610838568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269907 n + 4 * A157928 n

end

end A273335.P10403304800610838568

namespace A273335

/-- `A269907(n)+4*A157928(n)` -/
def P10403304800610838568.Spec : Prop :=
  ∀ n, P10403304800610838568.a n = A273335 n

end A273335

/-! ## A273335.P11007629140070847198

`and(-record[A006530(n+2)+1], A273385(n))`
-/

namespace A273335.P11007629140070847198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A273385 n)

end

end A273335.P11007629140070847198

namespace A273335

/-- `and(-record[A006530(n+2)+1], A273385(n))` -/
def P11007629140070847198.Spec : Prop :=
  ∀ n, P11007629140070847198.a n = A273335 n

end A273335

/-!
# A273336: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 657", based on the 5-celled von Neumann neighborhood.

The programs for A273336, the canonical program `A273336.P13409179200167229508` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273336 has offset 0).

The definition of A273336 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273336.P13409179200167229508

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=22, a(3)=70, a(4)=150, a(5)=270`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A273336

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P13409179200167229508.Spec : Prop :=
  ∀ n, P13409179200167229508.a n = A273336 n

theorem P13409179200167229508.correct : P13409179200167229508.Spec := by
  intro n
  simp only [A273336]

end A273336

/-! ## A273336.P14916451512163760206

`∑[A273334(n)]`
-/

namespace A273336.P14916451512163760206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273336.P14916451512163760206

namespace A273336

/-- `∑[A273334(n)]` -/
def P14916451512163760206.Spec : Prop :=
  ∀ n, P14916451512163760206.a n = A273336 n

end A273336

/-! ## A273336.P5905492345958688532

`A273334(n%A273334(n))+a(n-1)` with `a(0)=1`
-/

namespace A273336.P5905492345958688532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273334 (Int.tmod (n : ℤ) (A273334 n)).toNat + a (n - 1)

end

end A273336.P5905492345958688532

namespace A273336

/-- `A273334(n%A273334(n))+a(n-1)` -/
def P5905492345958688532.Spec : Prop :=
  ∀ n, P5905492345958688532.a n = A273336 n

end A273336

/-! ## A273336.P6404361165448695945

`A273790(n)-A171892(n+1)`
-/

namespace A273336.P6404361165448695945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273790 n - A171892 (n + 1)

end

end A273336.P6404361165448695945

namespace A273336

/-- `A273790(n)-A171892(n+1)` -/
def P6404361165448695945.Spec : Prop :=
  ∀ n, P6404361165448695945.a n = A273336 n

end A273336

/-! ## A273336.P10489036612618054880

`∑[A273766(n)-A130543(n)]`
-/

namespace A273336.P10489036612618054880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273766 n - A130543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273336.P10489036612618054880

namespace A273336

/-- `∑[A273766(n)-A130543(n)]` -/
def P10489036612618054880.Spec : Prop :=
  ∀ n, P10489036612618054880.a n = A273336 n

end A273336

/-! ## A273336.P14968842267822514177

`∑[A273766(n)-A057427(A002265(n))]`
-/

namespace A273336.P14968842267822514177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273766 n - A057427 (A002265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273336.P14968842267822514177

namespace A273336

/-- `∑[A273766(n)-A057427(A002265(n))]` -/
def P14968842267822514177.Spec : Prop :=
  ∀ n, P14968842267822514177.a n = A273336 n

end A273336

/-! ## A273336.P8422454813114036720

`∑[A273766(n)-A060576(A008621(n))]`
-/

namespace A273336.P8422454813114036720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273766 n - A060576 (A008621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273336.P8422454813114036720

namespace A273336

/-- `∑[A273766(n)-A060576(A008621(n))]` -/
def P8422454813114036720.Spec : Prop :=
  ∀ n, P8422454813114036720.a n = A273336 n

end A273336

/-! ## A273336.P3999857571634192358

`∑[A273766(n)-A055396(A092533(n))]`
-/

namespace A273336.P3999857571634192358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273766 n - A055396 (A092533 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273336.P3999857571634192358

namespace A273336

/-- `∑[A273766(n)-A055396(A092533(n))]` -/
def P3999857571634192358.Spec : Prop :=
  ∀ n, P3999857571634192358.a n = A273336 n

end A273336

/-! ## A273336.P14776136925361731721

`∑[A273766(n)-A060576(A129756(n))]`
-/

namespace A273336.P14776136925361731721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273766 n - A060576 (A129756 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273336.P14776136925361731721

namespace A273336

/-- `∑[A273766(n)-A060576(A129756(n))]` -/
def P14776136925361731721.Spec : Prop :=
  ∀ n, P14776136925361731721.a n = A273336 n

end A273336

/-! ## A273336.P17612945578831390729

`∑[A273766(n)-A057427(A172264(n))]`
-/

namespace A273336.P17612945578831390729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273766 n - A057427 (A172264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273336.P17612945578831390729

namespace A273336

/-- `∑[A273766(n)-A057427(A172264(n))]` -/
def P17612945578831390729.Spec : Prop :=
  ∀ n, P17612945578831390729.a n = A273336 n

end A273336

/-! ## A273336.P17683048134607397884

`∑[A273384(n)-A267870(n+1)]`
-/

namespace A273336.P17683048134607397884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273384 n - A267870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273336.P17683048134607397884

namespace A273336

/-- `∑[A273384(n)-A267870(n+1)]` -/
def P17683048134607397884.Spec : Prop :=
  ∀ n, P17683048134607397884.a n = A273336 n

end A273336

/-! ## A273336.P10895277938611135750

`∑[A273384(n)]-A004525(A004275(n))`
-/

namespace A273336.P10895277938611135750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004525 (A004275 n).toNat

end

end A273336.P10895277938611135750

namespace A273336

/-- `∑[A273384(n)]-A004525(A004275(n))` -/
def P10895277938611135750.Spec : Prop :=
  ∀ n, P10895277938611135750.a n = A273336 n

end A273336

/-! ## A273336.P14225219514058836070

`A273386(n)-A004525(A004275(n))`
-/

namespace A273336.P14225219514058836070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273386 n - A004525 (A004275 n).toNat

end

end A273336.P14225219514058836070

namespace A273336

/-- `A273386(n)-A004525(A004275(n))` -/
def P14225219514058836070.Spec : Prop :=
  ∀ n, P14225219514058836070.a n = A273336 n

end A273336

/-! ## A273336.P18115710509271735863

`∑[A273384(n)-A049240(A077169(n))]`
-/

namespace A273336.P18115710509271735863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273384 n - A049240 (A077169 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273336.P18115710509271735863

namespace A273336

/-- `∑[A273384(n)-A049240(A077169(n))]` -/
def P18115710509271735863.Spec : Prop :=
  ∀ n, P18115710509271735863.a n = A273336 n

end A273336

/-! ## A273336.P11259977214471485410

`∑[A273384(n)-A049240(A082562(n))]`
-/

namespace A273336.P11259977214471485410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273384 n - A049240 (A082562 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273336.P11259977214471485410

namespace A273336

/-- `∑[A273384(n)-A049240(A082562(n))]` -/
def P11259977214471485410.Spec : Prop :=
  ∀ n, P11259977214471485410.a n = A273336 n

end A273336

/-!
# A273337: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 657", based on the 5-celled von Neumann neighborhood.

The programs for A273337, the canonical program `A273337.P12541212181579512733` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273337 has offset 0).

The definition of A273337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273337.P12541212181579512733

`2*a(n-1)-a(n-2)` with `a(0)=3, a(1)=13, a(2)=31, a(3)=32, a(4)=40`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A273337

/-- `2*a(n-1)-a(n-2)` -/
def P12541212181579512733.Spec : Prop :=
  ∀ n, P12541212181579512733.a n = A273337 n

theorem P12541212181579512733.correct : P12541212181579512733.Spec := by
  intro n
  simp only [A273337]

end A273337

/-!
# A273339: Smallest composite c such that n^(c-1) != 1 (mod c^2), i.e., smallest composite c that is not a "Wieferich pseudoprime" to base n.

The programs for A273339, there is no canonical definition to state claims against.
-/

/-! ## A273339.P3481483698382659167

`A160995(lcm(2, A000188(n+1)))`
-/

namespace A273339.P3481483698382659167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160995 (Int.lcm 2 (A000188 (n + 1)))

end

end A273339.P3481483698382659167

/-! ## A273339.P14923556153723439089

`A007400(lcm(or(7, n+1), or(7, n)))`
-/

namespace A273339.P14923556153723439089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007400 (Nat.lcm (Nat.lor 7 (n + 1)) (Nat.lor 7 n))

end

end A273339.P14923556153723439089

/-! ## A273339.P7600654747264160565

`A155874(lcm(7, ∏{p}[n+1, #^val(n+1, #²)]²-1))`
-/

namespace A273339.P7600654747264160565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155874 (Int.lcm 7 ((((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℤ) - 1))

end

end A273339.P7600654747264160565

/-! ## A273339.P16128936026835453066

`A007400((A000188(n+1)²+1)²+1)`
-/

namespace A273339.P16128936026835453066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007400 ((A000188 (n + 1) ^ 2 + 1) ^ 2 + 1).toNat

end

end A273339.P16128936026835453066

/-! ## A273339.P4528027816108702715

`A000689(A000096(∏{p}[n+1, #^val(n+1, #²)]²))`
-/

namespace A273339.P4528027816108702715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000689 (A000096 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2)).toNat

end

end A273339.P4528027816108702715

/-! ## A273339.P1741208401246010747

`A130753(A259100(∏{p}[n+1, #^val(n+1, #²)])!)`
-/

namespace A273339.P1741208401246010747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130753 (Nat.factorial (A259100 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))).toNat)

end

end A273339.P1741208401246010747

/-! ## A273339.P16104220402039825148

`A351126(A039771(∏{p}[n+1, #^val(n+1, #²)]²+1)+1)`
-/

namespace A273339.P16104220402039825148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351126 (A039771 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 + 1) + 1).toNat

end

end A273339.P16104220402039825148

/-! ## A273339.P13415525469384131725

`A000790(A155212(∏{p}[n+1, #^val(n+1, #²)]²+5)+2)`
-/

namespace A273339.P13415525469384131725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000790 (A155212 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 + 5) + 2).toNat

end

end A273339.P13415525469384131725

/-! ## A273339.P7019187097163016663

`A090086(A155212(∏{p}[n+1, #^val(n+1, #²)]²+5)+2)`
-/

namespace A273339.P7019187097163016663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090086 (A155212 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 + 5) + 2).toNat

end

end A273339.P7019187097163016663

/-! ## A273339.P2816051615048570778

`A160995(A000096(A008833(n+1)))`
-/

namespace A273339.P2816051615048570778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160995 (A000096 (A008833 (n + 1)).toNat).toNat

end

end A273339.P2816051615048570778

/-! ## A273339.P6078286862445231322

`A007400(A014681(A008833(n+1))²)`
-/

namespace A273339.P6078286862445231322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007400 (A014681 (A008833 (n + 1)).toNat ^ 2).toNat

end

end A273339.P6078286862445231322

/-! ## A273339.P7236707815087868780

`A090088(A008835(n+1)^A178334(n))`
-/

namespace A273339.P7236707815087868780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090088 (SequenceMachineLib.roundAway ((A008835 (n + 1) : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A273339.P7236707815087868780

/-! ## A273339.P5614525428921411930

`A112046(val(n+1, 4)+1)*A112046(n²+1)`
-/

namespace A273339.P5614525428921411930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112046 (SequenceMachineLib.valuation (n + 1) 4 + 1) * A112046 (n ^ 2 + 1)

end

end A273339.P5614525428921411930

/-! ## A273339.P625358842673065416

`2*A227196(A051724(n+1)*A051724(n+1)+1)`
-/

namespace A273339.P625358842673065416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A227196 (A051724 (n + 1) * A051724 (n + 1) + 1).toNat

end

end A273339.P625358842673065416

/-! ## A273339.P9889241643833789150

`A063776(val(n+1, 4)+1)+A035214(∑[n])`
-/

namespace A273339.P9889241643833789150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063776 (SequenceMachineLib.valuation (n + 1) 4 + 1) + A035214 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273339.P9889241643833789150

/-! ## A273339.P429292555237764987

`A002808(val(n+1, A133985(∑[n])+16)+1)`
-/

namespace A273339.P429292555237764987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.valuation (n + 1) (A133985 (∑ j ∈ Finset.range (n + 1), f1 j) + 16).toNat + 1)

end

end A273339.P429292555237764987

/-!
# A273340: Smallest base b such that A273339(b) = A002808(n); i.e., smallest base b > 1 such that the n-th composite number is the smallest "non-Wieferich pseudoprime" to base b, or -1 if no such b exists.

The programs for A273340, there is no canonical definition to state claims against.
-/

/-! ## A273340.P14052491039950913429

`∏{e}[∏[∑[5*n]+1], #+1]²+1`
-/

namespace A273340.P14052491039950913429
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) ^ 2 + 1

end

end A273340.P14052491039950913429

/-!
# A273342: Triangle read by rows: T(n,k) is the number of bargraphs of semiperimeter n having length of first column k (n>=2, k>=1).

The programs for A273342, there is no canonical definition to state claims against.
-/

/-! ## A273342.P13206196848463807962

`A121460(n+1)+A025469(A164162(n))`
-/

namespace A273342.P13206196848463807962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121460 (n + 1) + A025469 (A164162 n).toNat

end

end A273342.P13206196848463807962

/-! ## A273342.P14868648355547499638

`A185236(A208153(n))+A121460(n+1)`
-/

namespace A273342.P14868648355547499638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185236 (A208153 n).toNat + A121460 (n + 1)

end

end A273342.P14868648355547499638

/-! ## A273342.P14875125614620111406

`A185236(A348013(n+1))+A121460(n+1)`
-/

namespace A273342.P14875125614620111406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185236 (A348013 (n + 1)).toNat + A121460 (n + 1)

end

end A273342.P14875125614620111406

/-! ## A273342.P5981409946615360060

`A229164(A034253(n+2))+A121460(n+1)`
-/

namespace A273342.P5981409946615360060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229164 (A034253 (n + 2)).toNat + A121460 (n + 1)

end

end A273342.P5981409946615360060

/-!
# A273343: The sum of the first-column lengths of all bargraphs of semiperimeter n (n>=2).

The programs for A273343, there is no canonical definition to state claims against.
-/

/-! ## A273343.P16628202740688902314

`A086581(n+2)-A105633(n)`
-/

namespace A273343.P16628202740688902314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086581 (n + 2) - A105633 n

end

end A273343.P16628202740688902314

/-! ## A273343.P4436262786310472245

`A082582(n+3)-A105633(n)`
-/

namespace A273343.P4436262786310472245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082582 (n + 3) - A105633 n

end

end A273343.P4436262786310472245

/-! ## A273343.P8755708083758066811

`A025242(n+4)-A105633(n)`
-/

namespace A273343.P8755708083758066811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025242 (n + 4) - A105633 n

end

end A273343.P8755708083758066811

/-! ## A273343.P8659449902878309461

`∑[A188464(n)-A086581(n)]+1`
-/

namespace A273343.P8659449902878309461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188464 n - A086581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A273343.P8659449902878309461

/-! ## A273343.P13333937601646566696

`A086581(n+2)-∑[A086581(n)]`
-/

namespace A273343.P13333937601646566696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086581 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273343.P13333937601646566696

/-! ## A273343.P11072605268404258431

`A273351(n+2)+A273351(n+3)-A271943(n+3)`
-/

namespace A273343.P11072605268404258431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273351 (n + 2) + (A273351 (n + 3) - A271943 (n + 3))

end

end A273343.P11072605268404258431

/-!
# A273345: Number of levels in all bargraphs having semiperimeter n (n>=2). A level in a bargraph is a maximal sequence of two or more adjacent horizontal steps; it is preceded and followed by either an up step or a down step.

The programs for A273345, there is no canonical definition to state claims against.
-/

/-! ## A273345.P10010263460501458388

`char[1]+Δ[A271943(A233583(n+1))]`
-/

namespace A273345.P10010263460501458388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271943 (A233583 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A273345.P10010263460501458388

/-! ## A273345.P2637666195511156882

`Δ[A047086(n)%A294159(n)]`
-/

namespace A273345.P2637666195511156882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047086 n) (A294159 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273345.P2637666195511156882

/-! ## A273345.P13224837876660094609

`Δ[Δ[A294159(n)]%A047085(n)]`
-/

namespace A273345.P13224837876660094609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294159 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A047085 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273345.P13224837876660094609

/-! ## A273345.P2086969828507436361

`∑[A274492(n+2)]-A274492(n+2)`
-/

namespace A273345.P2086969828507436361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274492 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A274492 (n + 2)

end

end A273345.P2086969828507436361

/-! ## A273345.P4446594393947777180

`Δ[A271943(A233583(n+1))%A047085(n)]`
-/

namespace A273345.P4446594393947777180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271943 (A233583 (n + 1)).toNat) (A047085 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273345.P4446594393947777180

/-! ## A273345.P1108651032024574259

`Δ[Δ[A047085(n)]%A047086(n)]`
-/

namespace A273345.P1108651032024574259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047085 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A047086 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273345.P1108651032024574259

/-!
# A273346: Triangle read by rows: T(n,k) is the number of bargraphs of semiperimeter n having area k (n>=2, k>=1).

The programs for A273346, there is no canonical definition to state claims against.
-/

/-! ## A273346.P9550869352870614475

`A328114(C(A094064(n), n+2))`
-/

namespace A273346.P9550869352870614475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (Nat.choose (A094064 n).toNat (n + 2))

end

end A273346.P9550869352870614475

/-!
# A273347: The sum of the areas of the bargraphs of semiperimeter n (n>=2).

The programs for A273347, there is no canonical definition to state claims against.
-/

/-! ## A273347.P12472930818738148640

`A135974(A114277(n))-2^n`
-/

namespace A273347.P12472930818738148640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135974 (A114277 n).toNat - (2 ^ n : ℤ)

end

end A273347.P12472930818738148640

/-! ## A273347.P12149891347234043064

`Δ[A189635(A189604(n+1))]-1`
-/

namespace A273347.P12149891347234043064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189635 (A189604 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A273347.P12149891347234043064

/-!
# A273348: The sum of the semiperimeters of the bargraphs of area n (n>=1).

The programs for A273348, the canonical program `A273348.P7248465168665721304` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273348 has offset 1).

The definition of A273348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273348.P7248465168665721304

`A001792(n)+∑[A172481(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A273348

/-- `A001792(n)+∑[A172481(n)]` -/
def P7248465168665721304.Spec : Prop :=
  ∀ n, P7248465168665721304.a n = A273348 (n + 1)

theorem P7248465168665721304.correct : P7248465168665721304.Spec := by
  intro n
  simp only [A273348, Nat.add_sub_cancel]

end A273348

/-! ## A273348.P1932411922631724246

`∑[A172481(n)+A045623(n)]`
-/

namespace A273348.P1932411922631724246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 n + A045623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273348.P1932411922631724246

namespace A273348

/-- `∑[A172481(n)+A045623(n)]` -/
def P1932411922631724246.Spec : Prop :=
  ∀ n, P1932411922631724246.a n = A273348 (n + 1)

end A273348

/-! ## A273348.P6612147643945431326

`A127985(n)+A045623(n+1)`
-/

namespace A273348.P6612147643945431326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127985 n + A045623 (n + 1)

end

end A273348.P6612147643945431326

namespace A273348

/-- `A127985(n)+A045623(n+1)` -/
def P6612147643945431326.Spec : Prop :=
  ∀ n, P6612147643945431326.a n = A273348 (n + 1)

end A273348

/-! ## A273348.P16166549990996588400

`A172481(n)+A127985(n+1)`
-/

namespace A273348.P16166549990996588400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 n + A127985 (n + 1)

end

end A273348.P16166549990996588400

namespace A273348

/-- `A172481(n)+A127985(n+1)` -/
def P16166549990996588400.Spec : Prop :=
  ∀ n, P16166549990996588400.a n = A273348 (n + 1)

end A273348

/-! ## A273348.P10440789364295704917

`A045883(n+1)+∑[A136298(n)]`
-/

namespace A273348.P10440789364295704917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045883 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273348.P10440789364295704917

namespace A273348

/-- `A045883(n+1)+∑[A136298(n)]` -/
def P10440789364295704917.Spec : Prop :=
  ∀ n, P10440789364295704917.a n = A273348 (n + 1)

end A273348

/-! ## A273348.P17476260422726811462

`∑[A136298(n)+A059570(n+1)]`
-/

namespace A273348.P17476260422726811462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136298 n + A059570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273348.P17476260422726811462

namespace A273348

/-- `∑[A136298(n)+A059570(n+1)]` -/
def P17476260422726811462.Spec : Prop :=
  ∀ n, P17476260422726811462.a n = A273348 (n + 1)

end A273348

/-! ## A273348.P17258683233768245663

`A172481(n)+∑[A127984(n+1)]`
-/

namespace A273348.P17258683233768245663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273348.P17258683233768245663

namespace A273348

/-- `A172481(n)+∑[A127984(n+1)]` -/
def P17258683233768245663.Spec : Prop :=
  ∀ n, P17258683233768245663.a n = A273348 (n + 1)

end A273348

/-! ## A273348.P15612612239114855960

`A045883(n+1)+A127985(n+1)-A001787(n)`
-/

namespace A273348.P15612612239114855960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045883 (n + 1) + (A127985 (n + 1) - A001787 n)

end

end A273348.P15612612239114855960

namespace A273348

/-- `A045883(n+1)+A127985(n+1)-A001787(n)` -/
def P15612612239114855960.Spec : Prop :=
  ∀ n, P15612612239114855960.a n = A273348 (n + 1)

end A273348

/-! ## A273348.P5070343765864498690

`A002064(n)+∑[A136299(n)]`
-/

namespace A273348.P5070343765864498690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273348.P5070343765864498690

namespace A273348

/-- `A002064(n)+∑[A136299(n)]` -/
def P5070343765864498690.Spec : Prop :=
  ∀ n, P5070343765864498690.a n = A273348 (n + 1)

end A273348

/-! ## A273348.P10425719400637225947

`A127985(n)+Δ[A001792(n)]`
-/

namespace A273348.P10425719400637225947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127985 n + (f1 (n + 1) - f1 n)

end

end A273348.P10425719400637225947

namespace A273348

/-- `A127985(n)+Δ[A001792(n)]` -/
def P10425719400637225947.Spec : Prop :=
  ∀ n, P10425719400637225947.a n = A273348 (n + 1)

end A273348

/-! ## A273348.P15187424729022393288

`A139790(n)+A127981(n+1)`
-/

namespace A273348.P15187424729022393288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139790 n + A127981 (n + 1)

end

end A273348.P15187424729022393288

namespace A273348

/-- `A139790(n)+A127981(n+1)` -/
def P15187424729022393288.Spec : Prop :=
  ∀ n, P15187424729022393288.a n = A273348 (n + 1)

end A273348

/-! ## A273348.P13478543307565236958

`A000225(n+1)+A102301(n)-A001787(n)`
-/

namespace A273348.P13478543307565236958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (A102301 n - A001787 n)

end

end A273348.P13478543307565236958

namespace A273348

/-- `A000225(n+1)+A102301(n)-A001787(n)` -/
def P13478543307565236958.Spec : Prop :=
  ∀ n, P13478543307565236958.a n = A273348 (n + 1)

end A273348

/-! ## A273348.P4772723317109500662

`A127985(n)+Δ[Δ[A001787(n)]]`
-/

namespace A273348.P4772723317109500662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127985 n + (f1 (n + 1) - f1 n)

end

end A273348.P4772723317109500662

namespace A273348

/-- `A127985(n)+Δ[Δ[A001787(n)]]` -/
def P4772723317109500662.Spec : Prop :=
  ∀ n, P4772723317109500662.a n = A273348 (n + 1)

end A273348

/-! ## A273348.P8219088197109474039

`A172160(n+1)+A058922(n+2)-A102301(n+1)`
-/

namespace A273348.P8219088197109474039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172160 (n + 1) + (A058922 (n + 2) - A102301 (n + 1))

end

end A273348.P8219088197109474039

namespace A273348

/-- `A172160(n+1)+A058922(n+2)-A102301(n+1)` -/
def P8219088197109474039.Spec : Prop :=
  ∀ n, P8219088197109474039.a n = A273348 (n + 1)

end A273348

/-!
# A273349: Triangle read by rows: T(n,k) is the number of bargraphs of semiperimeter n having k level steps (n>=2,k>=0). A level step in a bargraph is any pair of adjacent horizontal steps at the same height.

The programs for A273349, there is no canonical definition to state claims against.
-/

/-! ## A273349.P14477836766079663172

`A234951(A104710(n+1))`
-/

namespace A273349.P14477836766079663172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234951 (A104710 (n + 1)).toNat

end

end A273349.P14477836766079663172

/-! ## A273349.P16551686364286111019

`∏{e}[A014601(A047922(n)²), #]`
-/

namespace A273349.P16551686364286111019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A047922 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A273349.P16551686364286111019

/-!
# A273350: Triangle read by rows: T(n,k) is the number of bargraphs of semiperimeter n having k up steps (n >= 2, k >= 1).

The programs for A273350, there is no canonical definition to state claims against.
-/

/-! ## A273350.P1196793392132024585

`A271942(∑[char[∑[n]]]²+1-n)`
-/

namespace A273350.P1196793392132024585
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271942 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 - n)

end

end A273350.P1196793392132024585

/-!
# A273351: Number of up steps in all bargraphs of semiperimeter n (n>=2).

The programs for A273351, there is no canonical definition to state claims against.
-/

/-! ## A273351.P15999662864068471581

`A047086(n+1)-A108626(n)`
-/

namespace A273351.P15999662864068471581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047086 (n + 1) - A108626 n

end

end A273351.P15999662864068471581

/-! ## A273351.P5285973123152957566

`A108626(n+1)-A105633(n)`
-/

namespace A273351.P5285973123152957566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108626 (n + 1) - A105633 n

end

end A273351.P5285973123152957566

/-! ## A273351.P11874579633984440130

`A047086(n+1)-∑[A047085(n)]`
-/

namespace A273351.P11874579633984440130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047086 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273351.P11874579633984440130

/-! ## A273351.P6641358424532547775

`A108626(n+1)-∑[A086581(n)]`
-/

namespace A273351.P6641358424532547775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108626 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273351.P6641358424532547775

/-! ## A273351.P5863171782301606082

`A273905(2*n+3)-A108626(n)`
-/

namespace A273351.P5863171782301606082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273905 (2 * n + 3) - A108626 n

end

end A273351.P5863171782301606082

/-! ## A273351.P1874208786236452634

`Δ[A191794(2*n+1)]-A191794(2*n)`
-/

namespace A273351.P1874208786236452634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191794 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A191794 (2 * n)

end

end A273351.P1874208786236452634

/-!
# A273352: a(n) = 2^(2n+2) F(n) where F(n) is Ramanujan's F(n) = Sum_{k>=1} k^(4n-1)/(e^(Pi*k)-1) - 16^n* Sum_{k>=1} k^(4n-1)/(e^(4*Pi*k)-1).

The programs for A273352, there is no canonical definition to state claims against.
-/

/-! ## A273352.P1935015599632729512

`A008301(Δ[n²]²)`
-/

namespace A273352.P1935015599632729512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008301 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A273352.P1935015599632729512

/-! ## A273352.P12725440687468365212

`A002105(2*(n+1))`
-/

namespace A273352.P12725440687468365212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002105 (2 * (n + 1))

end

end A273352.P12725440687468365212

/-! ## A273352.P12119737048583359164

`record[A008301(n²)^(n%2)]`
-/

namespace A273352.P12119737048583359164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008301 (n ^ 2) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273352.P12119737048583359164

/-! ## A273352.P17184430567510257998

`A210108((n+1)*(2*n+1))`
-/

namespace A273352.P17184430567510257998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210108 ((n + 1) * (2 * n + 1))

end

end A273352.P17184430567510257998

/-! ## A273352.P5789074529655514193

`A087736((2*n+1)*(n+2))`
-/

namespace A273352.P5789074529655514193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087736 ((2 * n + 1) * (n + 2))

end

end A273352.P5789074529655514193

/-!
# A273353: Number of divisors of A067128(n).

The programs for A273353, there is no canonical definition to state claims against.
-/

/-! ## A273353.P3010468570484438119

`∏{e}[A034287(n+1), #+1]`
-/

namespace A273353.P3010468570484438119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034287 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A273353.P3010468570484438119

/-! ## A273353.P5742838593300648954

`∑{d}[A034287(n+1), A288197(A034287(n+1)%#)]`
-/

namespace A273353.P5742838593300648954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A288197 (Int.tmod (A034287 (n + 1)) (d : ℤ)).toNat

end

end A273353.P5742838593300648954

/-! ## A273353.P4860171701139162618

`A000005(A034287(n+1))`
-/

namespace A273353.P4860171701139162618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A034287 (n + 1)).toNat

end

end A273353.P4860171701139162618

/-!
# A273357: Numbers n such that the decimal number concat(2,n) is a square.

The programs for A273357, there is no canonical definition to state claims against.
-/

/-! ## A273357.P8619593182644855003

`A362689(n+1)+A327097(A000327(n+3))`
-/

namespace A273357.P8619593182644855003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362689 (n + 1) + A327097 (A000327 (n + 3)).toNat

end

end A273357.P8619593182644855003

/-!
# A273358: Numbers n such that the decimal number concat(3,n) is a square.

The programs for A273358, there is no canonical definition to state claims against.
-/

/-! ## A273358.P16825580252825714078

`A140114(∑[A162426(3*n+2)])+3`
-/

namespace A273358.P16825580252825714078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162426 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140114 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 3

end

end A273358.P16825580252825714078

/-!
# A273363: Numbers m such that the decimal number concat(8,m) is a square.

The programs for A273363, there is no canonical definition to state claims against.
-/

/-! ## A273363.P5487522551627049262

`A217657(A045792(n+1))`
-/

namespace A273363.P5487522551627049262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (A045792 (n + 1)).toNat

end

end A273363.P5487522551627049262

/-! ## A273363.P15678257816868989545

`A217657(A045862(n+1)²)`
-/

namespace A273363.P15678257816868989545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (A045862 (n + 1) ^ 2).toNat

end

end A273363.P15678257816868989545

/-! ## A273363.P1528392563144971121

`A217657(A045862(n+1)*A045862(n+1))`
-/

namespace A273363.P1528392563144971121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (A045862 (n + 1) * A045862 (n + 1)).toNat

end

end A273363.P1528392563144971121

/-!
# A273365: Numbers k such that 10*k+4 is a perfect square.

The programs for A273365, the canonical program `A273365.P1572173019296041654` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273365 has offset 0).

The definition of A273365 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273365.P1572173019296041654

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=6, a(2)=14, a(3)=32, a(4)=48`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A273365

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P1572173019296041654.Spec : Prop :=
  ∀ n, P1572173019296041654.a n = A273365 n

theorem P1572173019296041654.correct : P1572173019296041654.Spec := by
  intro n
  simp only [A273365]

end A273365

/-! ## A273365.P9858250893184374597

`∑[2*(lcm(2, n)+n)]`
-/

namespace A273365.P9858250893184374597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.lcm 2 n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273365.P9858250893184374597

namespace A273365

/-- `∑[2*(lcm(2, n)+n)]` -/
def P9858250893184374597.Spec : Prop :=
  ∀ n, (P9858250893184374597.a n : ℤ) = A273365 n

end A273365

/-! ## A273365.P7689572528753641254

`∑[n*(5-(-1)^n)]`
-/

namespace A273365.P7689572528753641254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (5 - (-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273365.P7689572528753641254

namespace A273365

/-- `∑[n*(5-(-1)^n)]` -/
def P7689572528753641254.Spec : Prop :=
  ∀ n, P7689572528753641254.a n = A273365 n

end A273365

/-! ## A273365.P10736508007982506076

`a(n-1)+2*n*(n%2+2)` with `a(0)=0`
-/

namespace A273365.P10736508007982506076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * (n * (n % 2 + 2))

end

end A273365.P10736508007982506076

namespace A273365

/-- `a(n-1)+2*n*(n%2+2)` -/
def P10736508007982506076.Spec : Prop :=
  ∀ n, (P10736508007982506076.a n : ℤ) = A273365 n

end A273365

/-! ## A273365.P15071465587928287301

`2*n+a(n-1)+lcm(4, 2*n)` with `a(0)=0`
-/

namespace A273365.P15071465587928287301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * n + (a (n - 1) + Nat.lcm 4 (2 * n))

end

end A273365.P15071465587928287301

namespace A273365

/-- `2*n+a(n-1)+lcm(4, 2*n)` -/
def P15071465587928287301.Spec : Prop :=
  ∀ n, (P15071465587928287301.a n : ℤ) = A273365 n

end A273365

/-! ## A273365.P14140525547004003196

`2*A036666(n+1)`
-/

namespace A273365.P14140525547004003196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036666 (n + 1)

end

end A273365.P14140525547004003196

namespace A273365

/-- `2*A036666(n+1)` -/
def P14140525547004003196.Spec : Prop :=
  ∀ n, P14140525547004003196.a n = A273365 n

end A273365

/-! ## A273365.P12970263347326150298

`A274681(n+1)+∑[n]`
-/

namespace A273365.P12970263347326150298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274681 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A273365.P12970263347326150298

namespace A273365

/-- `A274681(n+1)+∑[n]` -/
def P12970263347326150298.Spec : Prop :=
  ∀ n, P12970263347326150298.a n = A273365 n

end A273365

/-! ## A273365.P6782625474331330625

`2*(A152749(n)+∑[n])`
-/

namespace A273365.P6782625474331330625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A152749 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A273365.P6782625474331330625

namespace A273365

/-- `2*(A152749(n)+∑[n])` -/
def P6782625474331330625.Spec : Prop :=
  ∀ n, P6782625474331330625.a n = A273365 n

end A273365

/-! ## A273365.P5305548021514319237

`Δ[n²]²-A186424(n)`
-/

namespace A273365.P5305548021514319237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - A186424 n

end

end A273365.P5305548021514319237

namespace A273365

/-- `Δ[n²]²-A186424(n)` -/
def P5305548021514319237.Spec : Prop :=
  ∀ n, P5305548021514319237.a n = A273365 n

end A273365

/-! ## A273365.P10062107136801068005

`2*(A298950(n+1)-1)`
-/

namespace A273365.P10062107136801068005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A298950 (n + 1) - 1)

end

end A273365.P10062107136801068005

namespace A273365

/-- `2*(A298950(n+1)-1)` -/
def P10062107136801068005.Spec : Prop :=
  ∀ n, P10062107136801068005.a n = A273365 n

end A273365

/-! ## A273365.P15823655914880452889

`A057029(n+1)+∑[n]-1`
-/

namespace A273365.P15823655914880452889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057029 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A273365.P15823655914880452889

namespace A273365

/-- `A057029(n+1)+∑[n]-1` -/
def P15823655914880452889.Spec : Prop :=
  ∀ n, P15823655914880452889.a n = A273365 n

end A273365

/-! ## A273365.P2214708093689881568

`A062717(n+1)+∑[2*n]`
-/

namespace A273365.P2214708093689881568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062717 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A273365.P2214708093689881568

namespace A273365

/-- `A062717(n+1)+∑[2*n]` -/
def P2214708093689881568.Spec : Prop :=
  ∀ n, P2214708093689881568.a n = A273365 n

end A273365

/-! ## A273365.P3761137648490854688

`2*(A008794(n+1)+n²+n)`
-/

namespace A273365.P3761137648490854688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008794 (n + 1) + (n ^ 2 + n : ℤ))

end

end A273365.P3761137648490854688

namespace A273365

/-- `2*(A008794(n+1)+n²+n)` -/
def P3761137648490854688.Spec : Prop :=
  ∀ n, P3761137648490854688.a n = A273365 n

end A273365

/-! ## A273365.P8019294815387213598

`A028895(n)+A001057(n)`
-/

namespace A273365.P8019294815387213598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028895 n + A001057 n

end

end A273365.P8019294815387213598

namespace A273365

/-- `A028895(n)+A001057(n)` -/
def P8019294815387213598.Spec : Prop :=
  ∀ n, P8019294815387213598.a n = A273365 n

end A273365

/-! ## A273365.P442449488031920437

`A074378(n)+A045943(n)`
-/

namespace A273365.P442449488031920437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074378 n + A045943 n

end

end A273365.P442449488031920437

namespace A273365

/-- `A074378(n)+A045943(n)` -/
def P442449488031920437.Spec : Prop :=
  ∀ n, P442449488031920437.a n = A273365 n

end A273365

/-! ## A273365.P5141882882391694105

`A147875(n)+A014682(n)`
-/

namespace A273365.P5141882882391694105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n + A014682 n

end

end A273365.P5141882882391694105

namespace A273365

/-- `A147875(n)+A014682(n)` -/
def P5141882882391694105.Spec : Prop :=
  ∀ n, P5141882882391694105.a n = A273365 n

end A273365

/-! ## A273365.P18359838616276479041

`A195015(n)+A066104(n)`
-/

namespace A273365.P18359838616276479041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195015 n + A066104 n

end

end A273365.P18359838616276479041

namespace A273365

/-- `A195015(n)+A066104(n)` -/
def P18359838616276479041.Spec : Prop :=
  ∀ n, P18359838616276479041.a n = A273365 n

end A273365

/-! ## A273365.P9045237410497866237

`A289870(n)+A212959(n)`
-/

namespace A273365.P9045237410497866237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289870 n + A212959 n

end

end A273365.P9045237410497866237

namespace A273365

/-- `A289870(n)+A212959(n)` -/
def P9045237410497866237.Spec : Prop :=
  ∀ n, P9045237410497866237.a n = A273365 n

end A273365

/-! ## A273365.P16133314519134527869

`A024966(n)-A074377(n)`
-/

namespace A273365.P16133314519134527869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024966 n - A074377 n

end

end A273365.P16133314519134527869

namespace A273365

/-- `A024966(n)-A074377(n)` -/
def P16133314519134527869.Spec : Prop :=
  ∀ n, P16133314519134527869.a n = A273365 n

end A273365

/-! ## A273365.P15094722199945111038

`A028895(n)-A130472(n)`
-/

namespace A273365.P15094722199945111038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028895 n - A130472 n

end

end A273365.P15094722199945111038

namespace A273365

/-- `A028895(n)-A130472(n)` -/
def P15094722199945111038.Spec : Prop :=
  ∀ n, P15094722199945111038.a n = A273365 n

end A273365

/-!
# A273366: a(n) = 10*n^2 + 10*n + 2.

The programs for A273366, the canonical program `A273366.P15027353470211613559` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273366 has offset 0).

The definition of A273366 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*n²+10*n+2` (program `A273366.P15027353470211613559`, by `A273366.P15027353470211613559.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A273366.P15027353470211613559

`10*n²+10*n+2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A273366

/-- `10*n²+10*n+2` -/
def P15027353470211613559.Spec : Prop :=
  ∀ n, (P15027353470211613559.a n : ℤ) = A273366 n

theorem P15027353470211613559.correct : P15027353470211613559.Spec := by
  intro n
  simp only [A273366]

end A273366

/-! ## A273366.P13982494531938054963

`2*A062786(n+1)`
-/

namespace A273366.P13982494531938054963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062786 (n + 1)

end

end A273366.P13982494531938054963

namespace A273366

/-- `2*A062786(n+1)` -/
def P13982494531938054963.Spec : Prop :=
  ∀ n, P13982494531938054963.a n = A273366 n

end A273366

/-! ## A273366.P14419096783733624718

`or(2, ∑[20*n])`
-/

namespace A273366.P14419096783733624718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273366.P14419096783733624718

namespace A273366

/-- `or(2, ∑[20*n])` -/
def P14419096783733624718.Spec : Prop :=
  ∀ n, (P14419096783733624718.a n : ℤ) = A273366 n

end A273366

/-! ## A273366.P354584155195498429

`xor(2, ∑[20*n])`
-/

namespace A273366.P354584155195498429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273366.P354584155195498429

namespace A273366

/-- `xor(2, ∑[20*n])` -/
def P354584155195498429.Spec : Prop :=
  ∀ n, (P354584155195498429.a n : ℤ) = A273366 n

end A273366

/-! ## A273366.P7259495564984386509

`∑[a(n-1)+20]` with `a(0)=2, a(1)=20`
-/

namespace A273366.P7259495564984386509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 20] fun n f1 =>
  f1 (n - 1) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273366.P7259495564984386509

namespace A273366

/-- `∑[a(n-1)+20]` -/
def P7259495564984386509.Spec : Prop :=
  ∀ n, (P7259495564984386509.a n : ℤ) = A273366 n

end A273366

/-! ## A273366.P13999487898064056952

`floor(a(n-1)+20*n)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A273366.P13999487898064056952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 20 * n

end

end A273366.P13999487898064056952

namespace A273366

/-- `floor(a(n-1)+20*n)` -/
def P13999487898064056952.Spec : Prop :=
  ∀ n, (P13999487898064056952.a n : ℤ) = A273366 n

theorem P13999487898064056952.correct : P13999487898064056952.Spec := by
  intro n
  induction n with
  | zero => simp [A273366, A273366.P13999487898064056952.a, A273366.P15027353470211613559.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A273366, Nat.add_sub_cancel, A273366.P13999487898064056952.a, A273366.P15027353470211613559.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A273366

/-! ## A273366.P17283558493633775104

`2*(5*lcm(n, n+1)+1)`
-/

namespace A273366.P17283558493633775104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (5 * Nat.lcm n (n + 1) + 1)

end

end A273366.P17283558493633775104

namespace A273366

/-- `2*(5*lcm(n, n+1)+1)` -/
def P17283558493633775104.Spec : Prop :=
  ∀ n, (P17283558493633775104.a n : ℤ) = A273366 n

end A273366

/-! ## A273366.P15616430770211408929

`20*(a(n-1)/20+n)` with `a(0)=2`
-/

namespace A273366.P15616430770211408929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  20 * (a (n - 1) / 20 + (n : ℚ))

end

end A273366.P15616430770211408929

namespace A273366

/-- `20*(a(n-1)/20+n)` -/
def P15616430770211408929.Spec : Prop :=
  ∀ n, P15616430770211408929.a n = (A273366 n : ℚ)

theorem P15616430770211408929.correct : P15616430770211408929.Spec := by
  intro n
  induction n with
  | zero => simp [A273366, A273366.P15616430770211408929.a, A273366.P15027353470211613559.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A273366, Nat.add_sub_cancel, A273366.P15616430770211408929.a, A273366.P15027353470211613559.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A273366

/-! ## A273366.P5032856795765940547

`abs(a(n-1)+4*5*n)` with `a(0)=2`
-/

namespace A273366.P5032856795765940547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 4 * (5 * n)

end

end A273366.P5032856795765940547

namespace A273366

/-- `abs(a(n-1)+4*5*n)` -/
def P5032856795765940547.Spec : Prop :=
  ∀ n, (P5032856795765940547.a n : ℤ) = A273366 n

theorem P5032856795765940547.correct : P5032856795765940547.Spec := by
  intro n
  induction n with
  | zero => simp [A273366, A273366.P5032856795765940547.a, A273366.P15027353470211613559.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A273366, Nat.add_sub_cancel, A273366.P5032856795765940547.a, A273366.P15027353470211613559.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A273366

/-! ## A273366.P7222508009665462761

`ceil(a(n-1)+4*5*n)` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A273366.P7222508009665462761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 4 * (5 * n)

end

end A273366.P7222508009665462761

namespace A273366

/-- `ceil(a(n-1)+4*5*n)` -/
def P7222508009665462761.Spec : Prop :=
  ∀ n, (P7222508009665462761.a n : ℤ) = A273366 n

theorem P7222508009665462761.correct : P7222508009665462761.Spec := by
  intro n
  induction n with
  | zero => simp [A273366, A273366.P7222508009665462761.a, A273366.P15027353470211613559.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A273366, Nat.add_sub_cancel, A273366.P7222508009665462761.a, A273366.P15027353470211613559.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A273366

/-! ## A273366.P12042470927708194595

`round(a(n-1)+4*5*n)` with `a(0)=2`

`round` is left out, it is the identity on integers.
-/

namespace A273366.P12042470927708194595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 4 * (5 * n)

end

end A273366.P12042470927708194595

namespace A273366

/-- `round(a(n-1)+4*5*n)` -/
def P12042470927708194595.Spec : Prop :=
  ∀ n, (P12042470927708194595.a n : ℤ) = A273366 n

theorem P12042470927708194595.correct : P12042470927708194595.Spec := by
  intro n
  induction n with
  | zero => simp [A273366, A273366.P12042470927708194595.a, A273366.P15027353470211613559.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A273366, Nat.add_sub_cancel, A273366.P12042470927708194595.a, A273366.P15027353470211613559.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A273366

/-! ## A273366.P6466886317317339093

`2*Δ[10*C(n+1, 3)+n]`
-/

namespace A273366.P6466886317317339093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose (n + 1) 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A273366.P6466886317317339093

namespace A273366

/-- `2*Δ[10*C(n+1, 3)+n]` -/
def P6466886317317339093.Spec : Prop :=
  ∀ n, P6466886317317339093.a n = A273366 n

end A273366

/-! ## A273366.P10469910741598340369

`2*(A124080(n)+1)`
-/

namespace A273366.P10469910741598340369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A124080 n + 1)

end

end A273366.P10469910741598340369

namespace A273366

/-- `2*(A124080(n)+1)` -/
def P10469910741598340369.Spec : Prop :=
  ∀ n, P10469910741598340369.a n = A273366 n

end A273366

/-! ## A273366.P18438563533766275766

`A193448(n+1)/2`
-/

namespace A273366.P18438563533766275766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193448 (n + 1) : ℚ) / 2

end

end A273366.P18438563533766275766

namespace A273366

/-- `A193448(n+1)/2` -/
def P18438563533766275766.Spec : Prop :=
  ∀ n, P18438563533766275766.a n = (A273366 n : ℚ)

end A273366

/-! ## A273366.P8566365338672895396

`lcm(2, ∑[A008592(n)]+1)`
-/

namespace A273366.P8566365338672895396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A273366.P8566365338672895396

namespace A273366

/-- `lcm(2, ∑[A008592(n)]+1)` -/
def P8566365338672895396.Spec : Prop :=
  ∀ n, (P8566365338672895396.a n : ℤ) = A273366 n

end A273366

/-! ## A273366.P11199242451779647217

`2*(A033570(n)-n²)`
-/

namespace A273366.P11199242451779647217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A033570 n - (n ^ 2 : ℤ))

end

end A273366.P11199242451779647217

namespace A273366

/-- `2*(A033570(n)-n²)` -/
def P11199242451779647217.Spec : Prop :=
  ∀ n, P11199242451779647217.a n = A273366 n

end A273366

/-! ## A273366.P6439122458330967342

`2*(∑[A017281(n)]-n)`
-/

namespace A273366.P6439122458330967342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A273366.P6439122458330967342

namespace A273366

/-- `2*(∑[A017281(n)]-n)` -/
def P6439122458330967342.Spec : Prop :=
  ∀ n, P6439122458330967342.a n = A273366 n

end A273366

/-! ## A273366.P9925882228393496537

`(A195317(n+1)+3)/2`
-/

namespace A273366.P9925882228393496537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195317 (n + 1) + 3 : ℚ) / 2

end

end A273366.P9925882228393496537

namespace A273366

/-- `(A195317(n+1)+3)/2` -/
def P9925882228393496537.Spec : Prop :=
  ∀ n, P9925882228393496537.a n = (A273366 n : ℚ)

end A273366

/-!
# A273367: Numbers k such that 10*k+6 is a perfect square.

The programs for A273367, the canonical program `A273367.P5019708952506962620` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273367 has offset 0).

The definition of A273367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273367.P5019708952506962620

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=19, a(3)=25, a(4)=57`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A273367

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P5019708952506962620.Spec : Prop :=
  ∀ n, P5019708952506962620.a n = A273367 n

theorem P5019708952506962620.correct : P5019708952506962620.Spec := by
  intro n
  simp only [A273367]

end A273367

/-! ## A273367.P278199412427299198

`2*∑[n*gcd(2, n)²]+1`
-/

namespace A273367.P278199412427299198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A273367.P278199412427299198

namespace A273367

/-- `2*∑[n*gcd(2, n)²]+1` -/
def P278199412427299198.Spec : Prop :=
  ∀ n, (P278199412427299198.a n : ℤ) = A273367 n

end A273367

/-! ## A273367.P15981491383010366137

`∑[2*n*a(and(1, n+1))²]` with `a(0)=1`
-/

namespace A273367.P15981491383010366137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * n * f1 (Nat.land 1 (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273367.P15981491383010366137

namespace A273367

/-- `∑[2*n*a(and(1, n+1))²]` -/
def P15981491383010366137.Spec : Prop :=
  ∀ n, (P15981491383010366137.a n : ℤ) = A273367 n

end A273367

/-! ## A273367.P15795193706406244093

`∑[2*n*(char[2*n]+1)²]+1`
-/

namespace A273367.P15795193706406244093
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * ((if ∃ j, f2 j = n then 1 else 0) + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A273367.P15795193706406244093

namespace A273367

/-- `∑[2*n*(char[2*n]+1)²]+1` -/
def P15795193706406244093.Spec : Prop :=
  ∀ n, (P15795193706406244093.a n : ℤ) = A273367 n

end A273367

/-! ## A273367.P1154275644893770559

`∑[2*n*gcd(a(n-1)², n²)]` with `a(0)=1`
-/

namespace A273367.P1154275644893770559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * n * Nat.gcd (f1 (n - 1) ^ 2) (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273367.P1154275644893770559

namespace A273367

/-- `∑[2*n*gcd(a(n-1)², n²)]` -/
def P1154275644893770559.Spec : Prop :=
  ∀ n, (P1154275644893770559.a n : ℤ) = A273367 n

end A273367

/-! ## A273367.P14465275101540806130

`or(1, 2*A195162(n))`
-/

namespace A273367.P14465275101540806130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A195162 n)

end

end A273367.P14465275101540806130

namespace A273367

/-- `or(1, 2*A195162(n))` -/
def P14465275101540806130.Spec : Prop :=
  ∀ n, P14465275101540806130.a n = A273367 n

end A273367

/-! ## A273367.P6534138519322730524

`∑[2*n*A000041(and(2, a(n-1)))²]` with `a(0)=1`
-/

namespace A273367.P6534138519322730524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 * n : ℤ) * A000041 (Int.land 2 (f1 (n - 1))).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273367.P6534138519322730524

namespace A273367

/-- `∑[2*n*A000041(and(2, a(n-1)))²]` -/
def P6534138519322730524.Spec : Prop :=
  ∀ n, P6534138519322730524.a n = A273367 n

end A273367

/-! ## A273367.P2944457035186999477

`∑[A195161(A028310(n))+A195161(n)]`
-/

namespace A273367.P2944457035186999477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 (A028310 n).toNat + A195161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273367.P2944457035186999477

namespace A273367

/-- `∑[A195161(A028310(n))+A195161(n)]` -/
def P2944457035186999477.Spec : Prop :=
  ∀ n, P2944457035186999477.a n = A273367 n

end A273367

/-! ## A273367.P16639822177579554497

`A033437(A047221(n+1))`
-/

namespace A273367.P16639822177579554497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033437 (A047221 (n + 1)).toNat

end

end A273367.P16639822177579554497

namespace A273367

/-- `A033437(A047221(n+1))` -/
def P16639822177579554497.Spec : Prop :=
  ∀ n, P16639822177579554497.a n = A273367 n

end A273367

/-! ## A273367.P13792024064923693777

`∑[A004277(3*n*char[2*n]+n)]`
-/

namespace A273367.P13792024064923693777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (3 * n * (if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273367.P13792024064923693777

namespace A273367

/-- `∑[A004277(3*n*char[2*n]+n)]` -/
def P13792024064923693777.Spec : Prop :=
  ∀ n, P13792024064923693777.a n = A273367 n

end A273367

/-! ## A273367.P15601529403857023001

`A056865(A090773(n+1))`
-/

namespace A273367.P15601529403857023001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056865 (A090773 (n + 1)).toNat

end

end A273367.P15601529403857023001

namespace A273367

/-- `A056865(A090773(n+1))` -/
def P15601529403857023001.Spec : Prop :=
  ∀ n, P15601529403857023001.a n = A273367 n

end A273367

/-! ## A273367.P13805442794950680752

`∑[A028310(2*A195161(n))]`
-/

namespace A273367.P13805442794950680752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * A195161 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273367.P13805442794950680752

namespace A273367

/-- `∑[A028310(2*A195161(n))]` -/
def P13805442794950680752.Spec : Prop :=
  ∀ n, P13805442794950680752.a n = A273367 n

end A273367

/-! ## A273367.P5415248844401011936

`∩[2*n+1, floor((n+3)²/10)]`
-/

namespace A273367.P5415248844401011936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 3) ^ 2 : ℚ) / 10⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273367.P5415248844401011936

namespace A273367

/-- `∩[2*n+1, floor((n+3)²/10)]` -/
def P5415248844401011936.Spec : Prop :=
  ∀ n, (P5415248844401011936.a n : ℤ) = A273367 n

end A273367

/-!
# A273368: Numbers k such that 10*k+9 is a perfect square.

The programs for A273368, the canonical program `A273368.P9948727436950837733` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273368 has offset 0).

The definition of A273368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273368.P9948727436950837733

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=4, a(2)=16, a(3)=28, a(4)=52`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A273368

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P9948727436950837733.Spec : Prop :=
  ∀ n, P9948727436950837733.a n = A273368 n

theorem P9948727436950837733.correct : P9948727436950837733.Spec := by
  intro n
  simp only [A273368]

end A273368

/-! ## A273368.P677880051809931659

`4*A085787(n)`
-/

namespace A273368.P677880051809931659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A085787 n

end

end A273368.P677880051809931659

namespace A273368

/-- `4*A085787(n)` -/
def P677880051809931659.Spec : Prop :=
  ∀ n, P677880051809931659.a n = A273368 n

end A273368

/-! ## A273368.P1767861050748793686

`∑[n*C(4, gcd(2, n))]`
-/

namespace A273368.P1767861050748793686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose 4 (Nat.gcd 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273368.P1767861050748793686

namespace A273368

/-- `∑[n*C(4, gcd(2, n))]` -/
def P1767861050748793686.Spec : Prop :=
  ∀ n, (P1767861050748793686.a n : ℤ) = A273368 n

end A273368

/-! ## A273368.P3955967837705238486

`∑[n*((-1)^n+5)]`
-/

namespace A273368.P3955967837705238486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((-1) ^ n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273368.P3955967837705238486

namespace A273368

/-- `∑[n*((-1)^n+5)]` -/
def P3955967837705238486.Spec : Prop :=
  ∀ n, P3955967837705238486.a n = A273368 n

end A273368

/-! ## A273368.P8027097344326129748

`2*∑[n*(and(1, n+1)+2)]`
-/

namespace A273368.P8027097344326129748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.land 1 (n + 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273368.P8027097344326129748

namespace A273368

/-- `2*∑[n*(and(1, n+1)+2)]` -/
def P8027097344326129748.Spec : Prop :=
  ∀ n, (P8027097344326129748.a n : ℤ) = A273368 n

end A273368

/-! ## A273368.P429717600739992860

`4*∑[2*n-lcm(2, n)/2]`
-/

namespace A273368.P429717600739992860
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) - (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273368.P429717600739992860

namespace A273368

/-- `4*∑[2*n-lcm(2, n)/2]` -/
def P429717600739992860.Spec : Prop :=
  ∀ n, P429717600739992860.a n = (A273368 n : ℚ)

end A273368

/-! ## A273368.P4557378793650021418

`A220082(n+1)-1`
-/

namespace A273368.P4557378793650021418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220082 (n + 1) - 1

end

end A273368.P4557378793650021418

namespace A273368

/-- `A220082(n+1)-1` -/
def P4557378793650021418.Spec : Prop :=
  ∀ n, P4557378793650021418.a n = A273368 n

end A273368

/-! ## A273368.P7349524538228850708

`2*(A247643(n)-1)`
-/

namespace A273368.P7349524538228850708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A247643 n - 1)

end

end A273368.P7349524538228850708

namespace A273368

/-- `2*(A247643(n)-1)` -/
def P7349524538228850708.Spec : Prop :=
  ∀ n, P7349524538228850708.a n = A273368 n

end A273368

/-! ## A273368.P5004442910659130600

`2*(A239767(n)+n)`
-/

namespace A273368.P5004442910659130600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A239767 n + (n : ℤ))

end

end A273368.P5004442910659130600

namespace A273368

/-- `2*(A239767(n)+n)` -/
def P5004442910659130600.Spec : Prop :=
  ∀ n, P5004442910659130600.a n = A273368 n

end A273368

/-! ## A273368.P17657631270719276083

`A299645(n+1)+∑[n]`
-/

namespace A273368.P17657631270719276083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299645 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A273368.P17657631270719276083

namespace A273368

/-- `A299645(n+1)+∑[n]` -/
def P17657631270719276083.Spec : Prop :=
  ∀ n, P17657631270719276083.a n = A273368 n

end A273368

/-! ## A273368.P12975924991160593088

`∑[n]+A213399(n)-1`
-/

namespace A273368.P12975924991160593088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A213399 n - 1)

end

end A273368.P12975924991160593088

namespace A273368

/-- `∑[n]+A213399(n)-1` -/
def P12975924991160593088.Spec : Prop :=
  ∀ n, P12975924991160593088.a n = A273368 n

end A273368

/-! ## A273368.P2975362008184495008

`Δ[n²]²-A319384(n)`
-/

namespace A273368.P2975362008184495008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - A319384 n

end

end A273368.P2975362008184495008

namespace A273368

/-- `Δ[n²]²-A319384(n)` -/
def P2975362008184495008.Spec : Prop :=
  ∀ n, P2975362008184495008.a n = A273368 n

end A273368

/-! ## A273368.P8215513862645386199

`4*(A111711(n+1)-1)`
-/

namespace A273368.P8215513862645386199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A111711 (n + 1) - 1)

end

end A273368.P8215513862645386199

namespace A273368

/-- `4*(A111711(n+1)-1)` -/
def P8215513862645386199.Spec : Prop :=
  ∀ n, P8215513862645386199.a n = A273368 n

end A273368

/-! ## A273368.P8941546048916008982

`2*(A001082(n+1)+∑[n])`
-/

namespace A273368.P8941546048916008982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001082 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A273368.P8941546048916008982

namespace A273368

/-- `2*(A001082(n+1)+∑[n])` -/
def P8941546048916008982.Spec : Prop :=
  ∀ n, P8941546048916008982.a n = A273368 n

end A273368

/-! ## A273368.P3470865650311260114

`2*A032526(n)-a(n-1)` with `a(0)=0`
-/

namespace A273368.P3470865650311260114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * A032526 n - a (n - 1)

end

end A273368.P3470865650311260114

namespace A273368

/-- `2*A032526(n)-a(n-1)` -/
def P3470865650311260114.Spec : Prop :=
  ∀ n, P3470865650311260114.a n = A273368 n

end A273368

/-! ## A273368.P14952917101690100460

`A046092(floor(n/2))+∑[4*n]`
-/

namespace A273368.P14952917101690100460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 ⌊(n : ℚ) / 2⌋.toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A273368.P14952917101690100460

namespace A273368

/-- `A046092(floor(n/2))+∑[4*n]` -/
def P14952917101690100460.Spec : Prop :=
  ∀ n, P14952917101690100460.a n = A273368 n

end A273368

/-! ## A273368.P6786493557854803120

`∑[3*n+2*n]-A001057(n)`
-/

namespace A273368.P6786493557854803120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001057 n

end

end A273368.P6786493557854803120

namespace A273368

/-- `∑[3*n+2*n]-A001057(n)` -/
def P6786493557854803120.Spec : Prop :=
  ∀ n, P6786493557854803120.a n = A273368 n

end A273368

/-! ## A273368.P602716077924094717

`A074377(n)+A045943(n)`
-/

namespace A273368.P602716077924094717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074377 n + A045943 n

end

end A273368.P602716077924094717

namespace A273368

/-- `A074377(n)+A045943(n)` -/
def P602716077924094717.Spec : Prop :=
  ∀ n, P602716077924094717.a n = A273368 n

end A273368

/-! ## A273368.P15719525160591785664

`A130472(n)+A028895(n)`
-/

namespace A273368.P15719525160591785664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 n + A028895 n

end

end A273368.P15719525160591785664

namespace A273368

/-- `A130472(n)+A028895(n)` -/
def P15719525160591785664.Spec : Prop :=
  ∀ n, P15719525160591785664.a n = A273368 n

end A273368

/-! ## A273368.P10614982779989297559

`A147875(n)+A071045(n)`
-/

namespace A273368.P10614982779989297559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n + A071045 n

end

end A273368.P10614982779989297559

namespace A273368

/-- `A147875(n)+A071045(n)` -/
def P10614982779989297559.Spec : Prop :=
  ∀ n, P10614982779989297559.a n = A273368 n

end A273368

/-!
# A273370: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 822", based on the 5-celled von Neumann neighborhood.

The programs for A273370, there is no canonical definition to state claims against.
-/

/-! ## A273370.P9412910545438431710

`Δ[A269918(n)]`
-/

namespace A273370.P9412910545438431710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273370.P9412910545438431710

/-! ## A273370.P11700106795235567818

`A269918(n+1)-A269918(n)`
-/

namespace A273370.P11700106795235567818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269918 (n + 1) - A269918 n

end

end A273370.P11700106795235567818

/-!
# A273371: Numbers k such that (17*10^k - 77)/3 is prime.

The programs for A273371, there is no canonical definition to state claims against.
-/

/-! ## A273371.P16214296214466699909

`A247371(A032210(n))+ceil(n²/2)`
-/

namespace A273371.P16214296214466699909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247371 (A032210 n).toNat + ⌈(n ^ 2 : ℚ) / 2⌉

end

end A273371.P16214296214466699909

/-! ## A273371.P1494611092893148620

`A005135(A301987(n+1))+ceil(n²/2)`
-/

namespace A273371.P1494611092893148620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005135 (A301987 (n + 1)).toNat + ⌈(n ^ 2 : ℚ) / 2⌉

end

end A273371.P1494611092893148620

/-! ## A273371.P8420550396665287403

`A003557(A020114(n))+A000982(n)`
-/

namespace A273371.P8420550396665287403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A020114 n).toNat + A000982 n

end

end A273371.P8420550396665287403

/-! ## A273371.P15950176345305195332

`A305936(A000032(n))+A000982(n)`
-/

namespace A273371.P15950176345305195332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305936 (A000032 n).toNat + A000982 n

end

end A273371.P15950176345305195332

/-! ## A273371.P3706207430568300454

`A195825(A354169(n))+A000982(n)`
-/

namespace A273371.P3706207430568300454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195825 (A354169 n).toNat + A000982 n

end

end A273371.P3706207430568300454

/-!
# A273372: Squares ending in digit 1.

The programs for A273372, the canonical program `A273372.P12936546350182690504` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273372 has offset 1).

The definition of A273372 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273372.P12936546350182690504

`A090771(n+1)²`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A273372

/-- `A090771(n+1)²` -/
def P12936546350182690504.Spec : Prop :=
  ∀ n, P12936546350182690504.a n = A273372 (n + 1)

theorem P12936546350182690504.correct : P12936546350182690504.Spec := by
  intro n
  simp only [A273372, Nat.add_sub_cancel]

end A273372

/-! ## A273372.P6136221724484032770

`(∑[7^(n%2)]+n)²`
-/

namespace A273372.P6136221724484032770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A273372.P6136221724484032770

namespace A273372

/-- `(∑[7^(n%2)]+n)²` -/
def P6136221724484032770.Spec : Prop :=
  ∀ n, (P6136221724484032770.a n : ℤ) = A273372 (n + 1)

end A273372

/-! ## A273372.P9050000917952053268

`∑[10-a(n-1)]²` with `a(0)=1, a(1)=8`
-/

namespace A273372.P9050000917952053268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A273372.P9050000917952053268

namespace A273372

/-- `∑[10-a(n-1)]²` -/
def P9050000917952053268.Spec : Prop :=
  ∀ n, P9050000917952053268.a n = A273372 (n + 1)

end A273372

/-! ## A273372.P5103760142513770692

`(gcd(2, n+1)²+5*n)²`
-/

namespace A273372.P5103760142513770692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) ^ 2 + 5 * n) ^ 2

end

end A273372.P5103760142513770692

namespace A273372

/-- `(gcd(2, n+1)²+5*n)²` -/
def P5103760142513770692.Spec : Prop :=
  ∀ n, (P5103760142513770692.a n : ℤ) = A273372 (n + 1)

end A273372

/-! ## A273372.P13192279398287950433

`(10*n-sqrt(a(n-1)))²` with `a(0)=1`
-/

namespace A273372.P13192279398287950433
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  ((10 * n : ℝ) - Real.sqrt (a (n - 1))) ^ 2

end

end A273372.P13192279398287950433

namespace A273372

/-- `(10*n-sqrt(a(n-1)))²` -/
def P13192279398287950433.Spec : Prop :=
  ∀ n, P13192279398287950433.a n = (A273372 (n + 1) : ℝ)

end A273372

/-! ## A273372.P13195541168320857470

`(record[or(6, n-1)]+n+2)²`
-/

namespace A273372.P13195541168320857470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 2 : ℤ)) ^ 2

end

end A273372.P13195541168320857470

namespace A273372

/-- `(record[or(6, n-1)]+n+2)²` -/
def P13195541168320857470.Spec : Prop :=
  ∀ n, P13195541168320857470.a n = A273372 (n + 1)

end A273372

/-! ## A273372.P10845633338217908446

`(∑[gcd(7, (n+1)%2)]+n)²`
-/

namespace A273372.P10845633338217908446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 7 ((n + 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A273372.P10845633338217908446

namespace A273372

/-- `(∑[gcd(7, (n+1)%2)]+n)²` -/
def P10845633338217908446.Spec : Prop :=
  ∀ n, (P10845633338217908446.a n : ℤ) = A273372 (n + 1)

end A273372

/-! ## A273372.P1797352161705392902

`(Δ[n²]+6*round(n/2))²`
-/

namespace A273372.P1797352161705392902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 6 * SequenceMachineLib.roundAway ((n : ℚ) / 2)) ^ 2

end

end A273372.P1797352161705392902

namespace A273372

/-- `(Δ[n²]+6*round(n/2))²` -/
def P1797352161705392902.Spec : Prop :=
  ∀ n, P1797352161705392902.a n = A273372 (n + 1)

end A273372

/-! ## A273372.P14090423496402668176

`10*A132356(n)+1`
-/

namespace A273372.P14090423496402668176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A132356 n + 1

end

end A273372.P14090423496402668176

namespace A273372

/-- `10*A132356(n)+1` -/
def P14090423496402668176.Spec : Prop :=
  ∀ n, P14090423496402668176.a n = A273372 (n + 1)

end A273372

/-! ## A273372.P1970878832339251506

`40*A057569(n+1)+1`
-/

namespace A273372.P1970878832339251506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  40 * A057569 (n + 1) + 1

end

end A273372.P1970878832339251506

namespace A273372

/-- `40*A057569(n+1)+1` -/
def P1970878832339251506.Spec : Prop :=
  ∀ n, P1970878832339251506.a n = A273372 (n + 1)

end A273372

/-! ## A273372.P15218229901672755668

`∪[A017282(n), A017378(n)]`
-/

namespace A273372.P15218229901672755668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017282 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017378 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A273372.P15218229901672755668

namespace A273372

/-- `∪[A017282(n), A017378(n)]` -/
def P15218229901672755668.Spec : Prop :=
  ∀ n, (P15218229901672755668.a n : ℤ) = A273372 (n + 1)

end A273372

/-! ## A273372.P6447990232570641837

`A219396(n+1)+A061099(n+1)`
-/

namespace A273372.P6447990232570641837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219396 (n + 1) + A061099 (n + 1)

end

end A273372.P6447990232570641837

namespace A273372

/-- `A219396(n+1)+A061099(n+1)` -/
def P6447990232570641837.Spec : Prop :=
  ∀ n, P6447990232570641837.a n = A273372 (n + 1)

end A273372

/-! ## A273372.P6463651515940883939

`A219392(n+1)+A106390(n+1)`
-/

namespace A273372.P6463651515940883939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219392 (n + 1) + A106390 (n + 1)

end

end A273372.P6463651515940883939

namespace A273372

/-- `A219392(n+1)+A106390(n+1)` -/
def P6463651515940883939.Spec : Prop :=
  ∀ n, P6463651515940883939.a n = A273372 (n + 1)

end A273372

/-! ## A273372.P10770084908312918832

`(A195142(n+1)-A195142(n))*A090771(n+1)`
-/

namespace A273372.P10770084908312918832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A195142 (n + 1) - A195142 n) * A090771 (n + 1)

end

end A273372.P10770084908312918832

namespace A273372

/-- `(A195142(n+1)-A195142(n))*A090771(n+1)` -/
def P10770084908312918832.Spec : Prop :=
  ∀ n, P10770084908312918832.a n = A273372 (n + 1)

end A273372

/-! ## A273372.P6528616193139704341

`(A047208(n+1)+A008851(n+2))*A090771(n+1)`
-/

namespace A273372.P6528616193139704341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047208 (n + 1) + A008851 (n + 2)) * A090771 (n + 1)

end

end A273372.P6528616193139704341

namespace A273372

/-- `(A047208(n+1)+A008851(n+2))*A090771(n+1)` -/
def P6528616193139704341.Spec : Prop :=
  ∀ n, P6528616193139704341.a n = A273372 (n + 1)

end A273372

/-! ## A273372.P5486831723075887352

`A028375(A042948(n+1))`
-/

namespace A273372.P5486831723075887352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028375 (A042948 (n + 1)).toNat

end

end A273372.P5486831723075887352

namespace A273372

/-- `A028375(A042948(n+1))` -/
def P5486831723075887352.Spec : Prop :=
  ∀ n, P5486831723075887352.a n = A273372 (n + 1)

end A273372

/-! ## A273372.P7530748474079281878

`A028375(A042964(n+2)-2)`
-/

namespace A273372.P7530748474079281878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028375 (A042964 (n + 2) - 2).toNat

end

end A273372.P7530748474079281878

namespace A273372

/-- `A028375(A042964(n+2)-2)` -/
def P7530748474079281878.Spec : Prop :=
  ∀ n, P7530748474079281878.a n = A273372 (n + 1)

end A273372

/-! ## A273372.P18351789749999068692

`A090771(n+1)*A266297(2*(n+1))`
-/

namespace A273372.P18351789749999068692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1) * A266297 (2 * (n + 1))

end

end A273372.P18351789749999068692

namespace A273372

/-- `A090771(n+1)*A266297(2*(n+1))` -/
def P18351789749999068692.Spec : Prop :=
  ∀ n, P18351789749999068692.a n = A273372 (n + 1)

end A273372

/-! ## A273372.P5704749134852510179

`A266297(2*n+2)*A266297(2*n+2)`
-/

namespace A273372.P5704749134852510179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266297 (2 * n + 2) * A266297 (2 * n + 2)

end

end A273372.P5704749134852510179

namespace A273372

/-- `A266297(2*n+2)*A266297(2*n+2)` -/
def P5704749134852510179.Spec : Prop :=
  ∀ n, P5704749134852510179.a n = A273372 (n + 1)

end A273372

/-! ## A273372.P15572033262974794672

`A016754(A047208(n+1))`
-/

namespace A273372.P15572033262974794672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A047208 (n + 1)).toNat

end

end A273372.P15572033262974794672

namespace A273372

/-- `A016754(A047208(n+1))` -/
def P15572033262974794672.Spec : Prop :=
  ∀ n, P15572033262974794672.a n = A273372 (n + 1)

end A273372

/-!
# A273373: Squares ending in digit 6.

The programs for A273373, the canonical program `A273373.P16330932660018588641` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273373 has offset 1).

The definition of A273373 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273373.P16330932660018588641

`A090773(n+1)²`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A273373

/-- `A090773(n+1)²` -/
def P16330932660018588641.Spec : Prop :=
  ∀ n, P16330932660018588641.a n = A273373 (n + 1)

theorem P16330932660018588641.correct : P16330932660018588641.Spec := by
  intro n
  simp only [A273373, Nat.add_sub_cancel]

end A273373

/-! ## A273373.P17932359240796103894

`(gcd(2, n)²+5*n)²`
-/

namespace A273373.P17932359240796103894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ 2 + 5 * n) ^ 2

end

end A273373.P17932359240796103894

namespace A273373

/-- `(gcd(2, n)²+5*n)²` -/
def P17932359240796103894.Spec : Prop :=
  ∀ n, (P17932359240796103894.a n : ℤ) = A273373 (n + 1)

end A273373

/-! ## A273373.P1362656958180031510

`(record[or(6, n)-2]+n)²`
-/

namespace A273373.P1362656958180031510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 6 n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)) ^ 2

end

end A273373.P1362656958180031510

namespace A273373

/-- `(record[or(6, n)-2]+n)²` -/
def P1362656958180031510.Spec : Prop :=
  ∀ n, P1362656958180031510.a n = A273373 (n + 1)

end A273373

/-! ## A273373.P956617412004487711

`(record[xor(6, n)]+n-2)²`
-/

namespace A273373.P956617412004487711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) + ((n : ℤ) - 2)) ^ 2

end

end A273373.P956617412004487711

namespace A273373

/-- `(record[xor(6, n)]+n-2)²` -/
def P956617412004487711.Spec : Prop :=
  ∀ n, P956617412004487711.a n = A273373 (n + 1)

end A273373

/-! ## A273373.P16195761343485854311

`∑[10-a(n-1)]²` with `a(0)=4, a(1)=2`
-/

namespace A273373.P16195761343485854311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A273373.P16195761343485854311

namespace A273373

/-- `∑[10-a(n-1)]²` -/
def P16195761343485854311.Spec : Prop :=
  ∀ n, P16195761343485854311.a n = A273373 (n + 1)

end A273373

/-! ## A273373.P17137779997217498941

`(4-∑[2*gcd(4, n²)])²`
-/

namespace A273373.P17137779997217498941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd 4 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ^ 2

end

end A273373.P17137779997217498941

namespace A273373

/-- `(4-∑[2*gcd(4, n²)])²` -/
def P17137779997217498941.Spec : Prop :=
  ∀ n, P17137779997217498941.a n = A273373 (n + 1)

end A273373

/-! ## A273373.P11945541842100691877

`(∑[2^((-1)^n+2)]-4)²`
-/

namespace A273373.P11945541842100691877
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((-1) ^ n + 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - 4) ^ 2

end

end A273373.P11945541842100691877

namespace A273373

/-- `(∑[2^((-1)^n+2)]-4)²` -/
def P11945541842100691877.Spec : Prop :=
  ∀ n, P11945541842100691877.a n = (A273373 (n + 1) : ℚ)

end A273373

/-! ## A273373.P11897954179437954864

`A272914(n+1)^(1/3)`
-/

namespace A273373.P11897954179437954864
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A272914 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A273373.P11897954179437954864

namespace A273373

/-- `A272914(n+1)^(1/3)` -/
def P11897954179437954864.Spec : Prop :=
  ∀ n, P11897954179437954864.a n = (A273373 (n + 1) : ℝ)

end A273373

/-! ## A273373.P12760889624808560388

`∪[A017318(n), A017342(n)]`
-/

namespace A273373.P12760889624808560388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017342 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A273373.P12760889624808560388

namespace A273373

/-- `∪[A017318(n), A017342(n)]` -/
def P12760889624808560388.Spec : Prop :=
  ∀ n, (P12760889624808560388.a n : ℤ) = A273373 (n + 1)

end A273373

/-! ## A273373.P13240209295845615997

`A016742(A047221(n+1))`
-/

namespace A273373.P13240209295845615997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (A047221 (n + 1)).toNat

end

end A273373.P13240209295845615997

namespace A273373

/-- `A016742(A047221(n+1))` -/
def P13240209295845615997.Spec : Prop :=
  ∀ n, P13240209295845615997.a n = A273373 (n + 1)

end A273373

/-! ## A273373.P6769619137580531073

`A055808(A047204(n+1))`
-/

namespace A273373.P6769619137580531073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055808 (A047204 (n + 1)).toNat

end

end A273373.P6769619137580531073

namespace A273373

/-- `A055808(A047204(n+1))` -/
def P6769619137580531073.Spec : Prop :=
  ∀ n, P6769619137580531073.a n = A273373 (n + 1)

end A273373

/-! ## A273373.P13333058951192052563

`A000290(2*A047221(n+1))`
-/

namespace A273373.P13333058951192052563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A047221 (n + 1)).toNat

end

end A273373.P13333058951192052563

namespace A273373

/-- `A000290(2*A047221(n+1))` -/
def P13333058951192052563.Spec : Prop :=
  ∀ n, P13333058951192052563.a n = A273373 (n + 1)

end A273373

/-! ## A273373.P18195721502835010372

`A000290(A014601(A042963(n+1))+n+1)`
-/

namespace A273373.P18195721502835010372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A014601 (A042963 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A273373.P18195721502835010372

namespace A273373

/-- `A000290(A014601(A042963(n+1))+n+1)` -/
def P18195721502835010372.Spec : Prop :=
  ∀ n, P18195721502835010372.a n = A273373 (n + 1)

end A273373

/-! ## A273373.P1649255117060113279

`A004652(A008586(A047221(A028242(2*n))))`
-/

namespace A273373.P1649255117060113279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (A008586 (A047221 (A028242 (2 * n)).toNat).toNat).toNat

end

end A273373.P1649255117060113279

namespace A273373

/-- `A004652(A008586(A047221(A028242(2*n))))` -/
def P1649255117060113279.Spec : Prop :=
  ∀ n, P1649255117060113279.a n = A273373 (n + 1)

end A273373

/-! ## A273373.P4198028086156649530

`∩[10*n-4, n²]`
-/

namespace A273373.P4198028086156649530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n : ℤ) - 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A273373.P4198028086156649530

namespace A273373

/-- `∩[10*n-4, n²]` -/
def P4198028086156649530.Spec : Prop :=
  ∀ n, (P4198028086156649530.a n : ℤ) = A273373 (n + 1)

end A273373

/-!
# A273374: Squares ending in digit 9.

The programs for A273374, the canonical program `A273374.P17226260759646083903` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273374 has offset 1).

The definition of A273374 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063226, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A273374.P17226260759646083903

`A063226(n+1)²`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A273374

/-- `A063226(n+1)²` -/
def P17226260759646083903.Spec : Prop :=
  ∀ n, P17226260759646083903.a n = A273374 (n + 1)

theorem P17226260759646083903.correct : P17226260759646083903.Spec := by
  intro n
  simp only [A273374, Nat.add_sub_cancel]

end A273374

/-! ## A273374.P10938177938796840972

`or(1, 5*n+2)²`
-/

namespace A273374.P10938177938796840972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (5 * n + 2) ^ 2

end

end A273374.P10938177938796840972

namespace A273374

/-- `or(1, 5*n+2)²` -/
def P10938177938796840972.Spec : Prop :=
  ∀ n, (P10938177938796840972.a n : ℤ) = A273374 (n + 1)

end A273374

/-! ## A273374.P17816396478764199649

`(and(5*n, -2)+3)²`
-/

namespace A273374.P17816396478764199649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.land (5 * n : ℤ) (-2) + 3) ^ 2

end

end A273374.P17816396478764199649

namespace A273374

/-- `(and(5*n, -2)+3)²` -/
def P17816396478764199649.Spec : Prop :=
  ∀ n, P17816396478764199649.a n = A273374 (n + 1)

end A273374

/-! ## A273374.P17744865429177979912

`(3-∑[(-1)^n+5])²`
-/

namespace A273374.P17744865429177979912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A273374.P17744865429177979912

namespace A273374

/-- `(3-∑[(-1)^n+5])²` -/
def P17744865429177979912.Spec : Prop :=
  ∀ n, P17744865429177979912.a n = A273374 (n + 1)

end A273374

/-! ## A273374.P8050030697397222038

`A192328(n+1)/3`
-/

namespace A273374.P8050030697397222038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192328 (n + 1) : ℚ) / 3

end

end A273374.P8050030697397222038

namespace A273374

/-- `A192328(n+1)/3` -/
def P8050030697397222038.Spec : Prop :=
  ∀ n, P8050030697397222038.a n = (A273374 (n + 1) : ℚ)

end A273374

/-! ## A273374.P4670947712938991142

`∪[A017306(n), A017354(n)]`
-/

namespace A273374.P4670947712938991142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017354 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A273374.P4670947712938991142

namespace A273374

/-- `∪[A017306(n), A017354(n)]` -/
def P4670947712938991142.Spec : Prop :=
  ∀ n, (P4670947712938991142.a n : ℤ) = A273374 (n + 1)

end A273374

/-! ## A273374.P8931063867449379200

`A028375(A042964(n+1))`
-/

namespace A273374.P8931063867449379200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028375 (A042964 (n + 1)).toNat

end

end A273374.P8931063867449379200

namespace A273374

/-- `A028375(A042964(n+1))` -/
def P8931063867449379200.Spec : Prop :=
  ∀ n, P8931063867449379200.a n = A273374 (n + 1)

end A273374

/-! ## A273374.P7791552880777151989

`A028375(A053438(n+1))`
-/

namespace A273374.P7791552880777151989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028375 (A053438 (n + 1)).toNat

end

end A273374.P7791552880777151989

namespace A273374

/-- `A028375(A053438(n+1))` -/
def P7791552880777151989.Spec : Prop :=
  ∀ n, P7791552880777151989.a n = A273374 (n + 1)

end A273374

/-! ## A273374.P7663463964537743094

`A028375(A000035(n+1)+2*n+1)`
-/

namespace A273374.P7663463964537743094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028375 (A000035 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A273374.P7663463964537743094

namespace A273374

/-- `A028375(A000035(n+1)+2*n+1)` -/
def P7663463964537743094.Spec : Prop :=
  ∀ n, P7663463964537743094.a n = A273374 (n + 1)

end A273374

/-! ## A273374.P8837970467006239461

`A260181(2*(n+1))*A260181(2*(n+1))`
-/

namespace A273374.P8837970467006239461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (2 * (n + 1)) * A260181 (2 * (n + 1))

end

end A273374.P8837970467006239461

namespace A273374

/-- `A260181(2*(n+1))*A260181(2*(n+1))` -/
def P8837970467006239461.Spec : Prop :=
  ∀ n, P8837970467006239461.a n = A273374 (n + 1)

end A273374

/-! ## A273374.P2733345765693536036

`A016754(A047219(n+1))`
-/

namespace A273374.P2733345765693536036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A047219 (n + 1)).toNat

end

end A273374.P2733345765693536036

namespace A273374

/-- `A016754(A047219(n+1))` -/
def P2733345765693536036.Spec : Prop :=
  ∀ n, P2733345765693536036.a n = A273374 (n + 1)

end A273374

/-! ## A273374.P5905292815525114699

`A016754(A004526(n)+2*n+1)`
-/

namespace A273374.P5905292815525114699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A004526 n + (2 * n + 1 : ℤ)).toNat

end

end A273374.P5905292815525114699

namespace A273374

/-- `A016754(A004526(n)+2*n+1)` -/
def P5905292815525114699.Spec : Prop :=
  ∀ n, P5905292815525114699.a n = A273374 (n + 1)

end A273374

/-! ## A273374.P17388269911338449985

`A016754(A110654(n+1)+2*n)`
-/

namespace A273374.P17388269911338449985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A110654 (n + 1) + (2 * n : ℤ)).toNat

end

end A273374.P17388269911338449985

namespace A273374

/-- `A016754(A110654(n+1)+2*n)` -/
def P17388269911338449985.Spec : Prop :=
  ∀ n, P17388269911338449985.a n = A273374 (n + 1)

end A273374

/-! ## A273374.P2633452736014912944

`A016754(A140106(n+2)+2*n+1)`
-/

namespace A273374.P2633452736014912944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A140106 (n + 2) + (2 * n + 1 : ℤ)).toNat

end

end A273374.P2633452736014912944

namespace A273374

/-- `A016754(A140106(n+2)+2*n+1)` -/
def P2633452736014912944.Spec : Prop :=
  ∀ n, P2633452736014912944.a n = A273374 (n + 1)

end A273374

/-! ## A273374.P9293470446728076621

`A016754(A002265(2*n)+2*n+1)`
-/

namespace A273374.P9293470446728076621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A002265 (2 * n) + (2 * n + 1 : ℤ)).toNat

end

end A273374.P9293470446728076621

namespace A273374

/-- `A016754(A002265(2*n)+2*n+1)` -/
def P9293470446728076621.Spec : Prop :=
  ∀ n, P9293470446728076621.a n = A273374 (n + 1)

end A273374

/-! ## A273374.P6794293988406559707

`record[(2-A266084(2*n))²]`
-/

namespace A273374.P6794293988406559707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A266084 (2 * n)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273374.P6794293988406559707

namespace A273374

/-- `record[(2-A266084(2*n))²]` -/
def P6794293988406559707.Spec : Prop :=
  ∀ n, P6794293988406559707.a n = A273374 (n + 1)

end A273374

/-! ## A273374.P7308416096237456758

`A174679(A063093(n+2))`
-/

namespace A273374.P7308416096237456758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174679 (A063093 (n + 2)).toNat

end

end A273374.P7308416096237456758

namespace A273374

/-- `A174679(A063093(n+2))` -/
def P7308416096237456758.Spec : Prop :=
  ∀ n, P7308416096237456758.a n = A273374 (n + 1)

end A273374

/-! ## A273374.P10366491655065843815

`A000290(A260181(2*(n+1)))`
-/

namespace A273374.P10366491655065843815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A260181 (2 * (n + 1))).toNat

end

end A273374.P10366491655065843815

namespace A273374

/-- `A000290(A260181(2*(n+1)))` -/
def P10366491655065843815.Spec : Prop :=
  ∀ n, P10366491655065843815.a n = A273374 (n + 1)

end A273374

/-! ## A273374.P5090649625694054714

`A005563(A217562(2*n+1))+1`
-/

namespace A273374.P5090649625694054714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A217562 (2 * n + 1)).toNat + 1

end

end A273374.P5090649625694054714

namespace A273374

/-- `A005563(A217562(2*n+1))+1` -/
def P5090649625694054714.Spec : Prop :=
  ∀ n, P5090649625694054714.a n = A273374 (n + 1)

end A273374

/-! ## A273374.P2113283850819041954

`A000290(A047461(n+1)+n+2)`
-/

namespace A273374.P2113283850819041954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A047461 (n + 1) + (n + 2 : ℤ)).toNat

end

end A273374.P2113283850819041954

namespace A273374

/-- `A000290(A047461(n+1)+n+2)` -/
def P2113283850819041954.Spec : Prop :=
  ∀ n, P2113283850819041954.a n = A273374 (n + 1)

end A273374

/-!
# A273375: Squares ending in digit 4.

The programs for A273375, the canonical program `A273375.P1389492114506389311` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273375 has offset 1).

The definition of A273375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273375.P1389492114506389311

`Δ[floor(5/2*n²)]²`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A273375

/-- `Δ[floor(5/2*n²)]²` -/
def P1389492114506389311.Spec : Prop :=
  ∀ n, P1389492114506389311.a n = A273375 (n + 1)

theorem P1389492114506389311.correct : P1389492114506389311.Spec := by
  intro n
  simp only [A273375, Nat.add_sub_cancel]

end A273375

/-! ## A273375.P7668540314271734866

`4*A047209(n+1)²`
-/

namespace A273375.P7668540314271734866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A047209 (n + 1) ^ 2

end

end A273375.P7668540314271734866

namespace A273375

/-- `4*A047209(n+1)²` -/
def P7668540314271734866.Spec : Prop :=
  ∀ n, P7668540314271734866.a n = A273375 (n + 1)

end A273375

/-! ## A273375.P1637564608170182595

`lcm(2, A090772(n+1)²)`
-/

namespace A273375.P1637564608170182595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A090772 (n + 1) ^ 2)

end

end A273375.P1637564608170182595

namespace A273375

/-- `lcm(2, A090772(n+1)²)` -/
def P1637564608170182595.Spec : Prop :=
  ∀ n, (P1637564608170182595.a n : ℤ) = A273375 (n + 1)

end A273375

/-! ## A273375.P3239135198790573601

`4*∑[A020639(∏{p}[3*n, #])]²`
-/

namespace A273375.P3239135198790573601
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A273375.P3239135198790573601

namespace A273375

/-- `4*∑[A020639(∏{p}[3*n, #])]²` -/
def P3239135198790573601.Spec : Prop :=
  ∀ n, P3239135198790573601.a n = A273375 (n + 1)

end A273375

/-! ## A273375.P15091468068506455157

`∪[A017294(n), A017366(n)]`
-/

namespace A273375.P15091468068506455157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017294 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017366 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A273375.P15091468068506455157

namespace A273375

/-- `∪[A017294(n), A017366(n)]` -/
def P15091468068506455157.Spec : Prop :=
  ∀ n, (P15091468068506455157.a n : ℤ) = A273375 (n + 1)

end A273375

/-! ## A273375.P3604512817323114215

`A090772(n+1)²%A004676(n+4)`
-/

namespace A273375.P3604512817323114215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090772 (n + 1) ^ 2) (A004676 (n + 4))

end

end A273375.P3604512817323114215

namespace A273375

/-- `A090772(n+1)²%A004676(n+4)` -/
def P3604512817323114215.Spec : Prop :=
  ∀ n, P3604512817323114215.a n = A273375 (n + 1)

end A273375

/-! ## A273375.P15489605753047195032

`A235700(2*(n+1))*A235700(2*(n+1))`
-/

namespace A273375.P15489605753047195032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235700 (2 * (n + 1)) * A235700 (2 * (n + 1))

end

end A273375.P15489605753047195032

namespace A273375

/-- `A235700(2*(n+1))*A235700(2*(n+1))` -/
def P15489605753047195032.Spec : Prop :=
  ∀ n, P15489605753047195032.a n = A273375 (n + 1)

end A273375

/-! ## A273375.P4659039181527371782

`A016742(A047209(n+1))`
-/

namespace A273375.P4659039181527371782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (A047209 (n + 1)).toNat

end

end A273375.P4659039181527371782

namespace A273375

/-- `A016742(A047209(n+1))` -/
def P4659039181527371782.Spec : Prop :=
  ∀ n, P4659039181527371782.a n = A273375 (n + 1)

end A273375

/-! ## A273375.P12750302990152834438

`A144916(A256680(n+1))`
-/

namespace A273375.P12750302990152834438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144916 (A256680 (n + 1)).toNat

end

end A273375.P12750302990152834438

namespace A273375

/-- `A144916(A256680(n+1))` -/
def P12750302990152834438.Spec : Prop :=
  ∀ n, P12750302990152834438.a n = A273375 (n + 1)

end A273375

/-! ## A273375.P17432656298950721627

`A016742(A008619(n+1)+2*n)`
-/

namespace A273375.P17432656298950721627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (A008619 (n + 1) + (2 * n : ℤ)).toNat

end

end A273375.P17432656298950721627

namespace A273375

/-- `A016742(A008619(n+1)+2*n)` -/
def P17432656298950721627.Spec : Prop :=
  ∀ n, P17432656298950721627.a n = A273375 (n + 1)

end A273375

/-! ## A273375.P13125781773704531352

`A016742(A110654(n)+2*n+1)`
-/

namespace A273375.P13125781773704531352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (A110654 n + (2 * n + 1 : ℤ)).toNat

end

end A273375.P13125781773704531352

namespace A273375

/-- `A016742(A110654(n)+2*n+1)` -/
def P13125781773704531352.Spec : Prop :=
  ∀ n, P13125781773704531352.a n = A273375 (n + 1)

end A273375

/-! ## A273375.P516752887255194167

`A016742(A004526(n+3)+2*n)`
-/

namespace A273375.P516752887255194167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (A004526 (n + 3) + (2 * n : ℤ)).toNat

end

end A273375.P516752887255194167

namespace A273375

/-- `A016742(A004526(n+3)+2*n)` -/
def P516752887255194167.Spec : Prop :=
  ∀ n, P516752887255194167.a n = A273375 (n + 1)

end A273375

/-! ## A273375.P2020997112714037855

`4*A000290(A047203(2*n+1)+1)`
-/

namespace A273375.P2020997112714037855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000290 (A047203 (2 * n + 1) + 1).toNat

end

end A273375.P2020997112714037855

namespace A273375

/-- `4*A000290(A047203(2*n+1)+1)` -/
def P2020997112714037855.Spec : Prop :=
  ∀ n, P2020997112714037855.a n = A273375 (n + 1)

end A273375

/-! ## A273375.P10601049639780914352

`A016742(A002378(n+1)-A317186(n))`
-/

namespace A273375.P10601049639780914352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (A002378 (n + 1) - A317186 n).toNat

end

end A273375.P10601049639780914352

namespace A273375

/-- `A016742(A002378(n+1)-A317186(n))` -/
def P10601049639780914352.Spec : Prop :=
  ∀ n, P10601049639780914352.a n = A273375 (n + 1)

end A273375

/-! ## A273375.P436147018199414560

`A055808(A075328(n))`
-/

namespace A273375.P436147018199414560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055808 (A075328 n).toNat

end

end A273375.P436147018199414560

namespace A273375

/-- `A055808(A075328(n))` -/
def P436147018199414560.Spec : Prop :=
  ∀ n, P436147018199414560.a n = A273375 (n + 1)

end A273375

/-! ## A273375.P5613233353809519100

`A055808(A047215(n+1))`
-/

namespace A273375.P5613233353809519100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055808 (A047215 (n + 1)).toNat

end

end A273375.P5613233353809519100

namespace A273375

/-- `A055808(A047215(n+1))` -/
def P5613233353809519100.Spec : Prop :=
  ∀ n, P5613233353809519100.a n = A273375 (n + 1)

end A273375

/-! ## A273375.P16439736574926770180

`A000290(A090772(n+1))`
-/

namespace A273375.P16439736574926770180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A090772 (n + 1)).toNat

end

end A273375.P16439736574926770180

namespace A273375

/-- `A000290(A090772(n+1))` -/
def P16439736574926770180.Spec : Prop :=
  ∀ n, P16439736574926770180.a n = A273375 (n + 1)

end A273375

/-! ## A273375.P580080127594464618

`A081345(A131229(n+1))`
-/

namespace A273375.P580080127594464618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081345 (A131229 (n + 1)).toNat

end

end A273375.P580080127594464618

namespace A273375

/-- `A081345(A131229(n+1))` -/
def P580080127594464618.Spec : Prop :=
  ∀ n, P580080127594464618.a n = A273375 (n + 1)

end A273375

/-! ## A273375.P16223163717276919012

`A081350(A268044(n+1))`
-/

namespace A273375.P16223163717276919012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081350 (A268044 (n + 1)).toNat

end

end A273375.P16223163717276919012

namespace A273375

/-- `A081350(A268044(n+1))` -/
def P16223163717276919012.Spec : Prop :=
  ∀ n, P16223163717276919012.a n = A273375 (n + 1)

end A273375

/-! ## A273375.P13443602294618689435

`A000290(A146951(n)+2)`
-/

namespace A273375.P13443602294618689435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A146951 n + 2).toNat

end

end A273375.P13443602294618689435

namespace A273375

/-- `A000290(A146951(n)+2)` -/
def P13443602294618689435.Spec : Prop :=
  ∀ n, P13443602294618689435.a n = A273375 (n + 1)

end A273375

/-!
# A273379: Ramanujan's largely composite numbers n (A067128) which are not divisible by all the primes < p, where p is the greatest prime divisor of n.

The programs for A273379, there is no canonical definition to state claims against.
-/

/-! ## A273379.P16041223358320387027

`∩[A244353(n+1), A325284(n+1)]`
-/

namespace A273379.P16041223358320387027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273379.P16041223358320387027

/-! ## A273379.P4393482427956104754

`∩[A291899(n+1), A325284(n+1)]`
-/

namespace A273379.P4393482427956104754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273379.P4393482427956104754

/-!
# A273384: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 659", based on the 5-celled von Neumann neighborhood.

The programs for A273384, the canonical program `A273384.P13229125259195205705` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273384 has offset 0).

The definition of A273384 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273384.P13229125259195205705

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=5, a(2)=17, a(3)=49, a(4)=81, a(5)=121`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A273384

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P13229125259195205705.Spec : Prop :=
  ∀ n, P13229125259195205705.a n = A273384 n

theorem P13229125259195205705.correct : P13229125259195205705.Spec := by
  intro n
  simp only [A273384]

end A273384

/-! ## A273384.P17940726039956472053

`or(1, A273334(n))`
-/

namespace A273384.P17940726039956472053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273334 n)

end

end A273384.P17940726039956472053

namespace A273384

/-- `or(1, A273334(n))` -/
def P17940726039956472053.Spec : Prop :=
  ∀ n, P17940726039956472053.a n = A273384 n

end A273384

/-! ## A273384.P16576167663178431299

`or(1, A273766(n))`
-/

namespace A273384.P16576167663178431299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273766 n)

end

end A273384.P16576167663178431299

namespace A273384

/-- `or(1, A273766(n))` -/
def P16576167663178431299.Spec : Prop :=
  ∀ n, P16576167663178431299.a n = A273384 n

end A273384

/-! ## A273384.P4246746152688527382

`or(1, Δ[A082562(n)]²)`
-/

namespace A273384.P4246746152688527382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f1 (n + 1) - f1 n) ^ 2)

end

end A273384.P4246746152688527382

namespace A273384

/-- `or(1, Δ[A082562(n)]²)` -/
def P4246746152688527382.Spec : Prop :=
  ∀ n, P4246746152688527382.a n = A273384 n

end A273384

/-! ## A273384.P4646286164043496462

`or(1, (A326178(n)+n)²)`
-/

namespace A273384.P4646286164043496462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((A326178 n + (n : ℤ)) ^ 2)

end

end A273384.P4646286164043496462

namespace A273384

/-- `or(1, (A326178(n)+n)²)` -/
def P4646286164043496462.Spec : Prop :=
  ∀ n, P4646286164043496462.a n = A273384 n

end A273384

/-! ## A273384.P753182656791518136

`A273387(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273384.P753182656791518136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273387 (n - 1) + a (n - 1)

end

end A273384.P753182656791518136

namespace A273384

/-- `A273387(n-1)+a(n-1)` -/
def P753182656791518136.Spec : Prop :=
  ∀ n, P753182656791518136.a n = A273384 n

end A273384

/-! ## A273384.P13457205743962108010

`(2%A002024(n+1)+n+n)*2*n+1`
-/

namespace A273384.P13457205743962108010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod 2 (A002024 (n + 1)) + (n : ℤ) + (n : ℤ)) * (2 * n : ℤ) + 1

end

end A273384.P13457205743962108010

namespace A273384

/-- `(2%A002024(n+1)+n+n)*2*n+1` -/
def P13457205743962108010.Spec : Prop :=
  ∀ n, P13457205743962108010.a n = A273384 n

end A273384

/-! ## A273384.P13781180656845221697

`(2*n+1)²-C(4*n, A000041(2*n+1))`
-/

namespace A273384.P13781180656845221697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - (Nat.choose (4 * n) (A000041 (2 * n + 1)).toNat : ℤ)

end

end A273384.P13781180656845221697

namespace A273384

/-- `(2*n+1)²-C(4*n, A000041(2*n+1))` -/
def P13781180656845221697.Spec : Prop :=
  ∀ n, P13781180656845221697.a n = A273384 n

end A273384

/-! ## A273384.P638537955846341507

`A273334(n)+A267870(n+1)`
-/

namespace A273384.P638537955846341507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273334 n + A267870 (n + 1)

end

end A273384.P638537955846341507

namespace A273384

/-- `A273334(n)+A267870(n+1)` -/
def P638537955846341507.Spec : Prop :=
  ∀ n, P638537955846341507.a n = A273384 n

end A273384

/-! ## A273384.P9123576583685538426

`A273334(n)+A108340(C(2, n))`
-/

namespace A273384.P9123576583685538426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273334 n + A108340 (Nat.choose 2 n)

end

end A273384.P9123576583685538426

namespace A273384

/-- `A273334(n)+A108340(C(2, n))` -/
def P9123576583685538426.Spec : Prop :=
  ∀ n, P9123576583685538426.a n = A273384 n

end A273384

/-! ## A273384.P3456443995905383626

`A004277(A004277(n))*A326178(n)+1`
-/

namespace A273384.P3456443995905383626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A004277 n).toNat * A326178 n + 1

end

end A273384.P3456443995905383626

namespace A273384

/-- `A004277(A004277(n))*A326178(n)+1` -/
def P3456443995905383626.Spec : Prop :=
  ∀ n, P3456443995905383626.a n = A273384 n

end A273384

/-! ## A273384.P18176662734089766716

`Δ[A273386(n)]-A273387(n)`
-/

namespace A273384.P18176662734089766716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273387 n

end

end A273384.P18176662734089766716

namespace A273384

/-- `Δ[A273386(n)]-A273387(n)` -/
def P18176662734089766716.Spec : Prop :=
  ∀ n, P18176662734089766716.a n = A273384 n

end A273384

/-! ## A273384.P13320689281105029420

`A273386(n+1)-(A273387(n)+A273386(n))`
-/

namespace A273384.P13320689281105029420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273386 (n + 1) - (A273387 n + A273386 n)

end

end A273384.P13320689281105029420

namespace A273384

/-- `A273386(n+1)-(A273387(n)+A273386(n))` -/
def P13320689281105029420.Spec : Prop :=
  ∀ n, P13320689281105029420.a n = A273384 n

end A273384

/-! ## A273384.P17907434175016646204

`or(1, (2*n+1)²-C(2*n+n+2, A000032(n+2)))`
-/

namespace A273384.P17907434175016646204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((2 * n + 1) ^ 2 : ℤ) - (Nat.choose (2 * n + (n + 2)) (A000032 (n + 2)).toNat : ℤ))

end

end A273384.P17907434175016646204

namespace A273384

/-- `or(1, (2*n+1)²-C(2*n+n+2, A000032(n+2)))` -/
def P17907434175016646204.Spec : Prop :=
  ∀ n, P17907434175016646204.a n = A273384 n

end A273384

/-! ## A273384.P12865217830041500830

`(2*n+1)²-and(n-3, 2^(n+1))`
-/

namespace A273384.P12865217830041500830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - Int.land ((n : ℤ) - 3) (2 ^ (n + 1) : ℤ)

end

end A273384.P12865217830041500830

namespace A273384

/-- `(2*n+1)²-and(n-3, 2^(n+1))` -/
def P12865217830041500830.Spec : Prop :=
  ∀ n, P12865217830041500830.a n = A273384 n

end A273384

/-! ## A273384.P4770167453291057686

`(2*n+1)²-C(4*n, A000032(2*n))`
-/

namespace A273384.P4770167453291057686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - (Nat.choose (4 * n) (A000032 (2 * n)).toNat : ℤ)

end

end A273384.P4770167453291057686

namespace A273384

/-- `(2*n+1)²-C(4*n, A000032(2*n))` -/
def P4770167453291057686.Spec : Prop :=
  ∀ n, P4770167453291057686.a n = A273384 n

end A273384

/-! ## A273384.P10820436341860746600

`A080335(Δ[A004275(A161680(n))])`
-/

namespace A273384.P10820436341860746600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A161680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080335 (f1 (n + 1) - f1 n).toNat

end

end A273384.P10820436341860746600

namespace A273384

/-- `A080335(Δ[A004275(A161680(n))])` -/
def P10820436341860746600.Spec : Prop :=
  ∀ n, P10820436341860746600.a n = A273384 n

end A273384

/-! ## A273384.P1079400145008448319

`A273766(n)+A035263(A273766(n)+1)`
-/

namespace A273384.P1079400145008448319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273766 n + A035263 (A273766 n + 1).toNat

end

end A273384.P1079400145008448319

namespace A273384

/-- `A273766(n)+A035263(A273766(n)+1)` -/
def P1079400145008448319.Spec : Prop :=
  ∀ n, P1079400145008448319.a n = A273384 n

end A273384

/-!
# A273385: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 659", based on the 5-celled von Neumann neighborhood.

The programs for A273385, the canonical program `A273385.P981225417948812928` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273385 has offset 0).

The definition of A273385 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273385.P981225417948812928

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=5, a(2)=49, a(3)=225, a(4)=961`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A273385

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P981225417948812928.Spec : Prop :=
  ∀ n, P981225417948812928.a n = A273385 n

theorem P981225417948812928.correct : P981225417948812928.Spec := by
  intro n
  simp only [A273385]

end A273385

/-! ## A273385.P15841415453280542381

`∑[2^n]²-4*char[1]`
-/

namespace A273385.P15841415453280542381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ((4 * (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

end

end A273385.P15841415453280542381

namespace A273385

/-- `∑[2^n]²-4*char[1]` -/
def P15841415453280542381.Spec : Prop :=
  ∀ n, P15841415453280542381.a n = A273385 n

end A273385

/-! ## A273385.P6043661587889205386

`or(1, (char[1]-∑[2^n])²)`
-/

namespace A273385.P6043661587889205386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) ^ 2)

end

end A273385.P6043661587889205386

namespace A273385

/-- `or(1, (char[1]-∑[2^n])²)` -/
def P6043661587889205386.Spec : Prop :=
  ∀ n, P6043661587889205386.a n = A273385 n

end A273385

/-! ## A273385.P12453058543706865278

`∑[2^n]^(2%a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A273385.P12453058543706865278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (2 % a (n - 1))

end

end A273385.P12453058543706865278

namespace A273385

/-- `∑[2^n]^(2%a(n-1))` -/
def P12453058543706865278.Spec : Prop :=
  ∀ n, (P12453058543706865278.a n : ℤ) = A273385 n

end A273385

/-! ## A273385.P16863260844576905013

`(2^(n+1)-a(n-1)%2)²` with `a(0)=1, a(1)=5`
-/

namespace A273385.P16863260844576905013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ((2 ^ (n + 1) : ℤ) - Int.tmod (a (n - 1)) 2) ^ 2

end

end A273385.P16863260844576905013

namespace A273385

/-- `(2^(n+1)-a(n-1)%2)²` -/
def P16863260844576905013.Spec : Prop :=
  ∀ n, P16863260844576905013.a n = A273385 n

end A273385

/-! ## A273385.P15258122395201570517

`(2^(n+1)-gcd(2, a(n-1)))²` with `a(0)=1, a(1)=5`
-/

namespace A273385.P15258122395201570517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ((2 ^ (n + 1) : ℤ) - (Int.gcd 2 (a (n - 1)) : ℤ)) ^ 2

end

end A273385.P15258122395201570517

namespace A273385

/-- `(2^(n+1)-gcd(2, a(n-1)))²` -/
def P15258122395201570517.Spec : Prop :=
  ∀ n, P15258122395201570517.a n = A273385 n

end A273385

/-! ## A273385.P10511291722535335657

`xor(A057427(n), A273335(n))`
-/

namespace A273385.P10511291722535335657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A273335 n)

end

end A273385.P10511291722535335657

namespace A273385

/-- `xor(A057427(n), A273335(n))` -/
def P10511291722535335657.Spec : Prop :=
  ∀ n, P10511291722535335657.a n = A273385 n

end A273385

/-! ## A273385.P10871192389056809245

`xor(A171386(n+1), A273767(n))`
-/

namespace A273385.P10871192389056809245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A171386 (n + 1)) (A273767 n)

end

end A273385.P10871192389056809245

namespace A273385

/-- `xor(A171386(n+1), A273767(n))` -/
def P10871192389056809245.Spec : Prop :=
  ∀ n, P10871192389056809245.a n = A273385 n

end A273385

/-! ## A273385.P14327729730365505393

`xor(A279879(2*n)², A185012(n+1))`
-/

namespace A273385.P14327729730365505393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A279879 (2 * n) ^ 2) (A185012 (n + 1))

end

end A273385.P14327729730365505393

namespace A273385

/-- `xor(A279879(2*n)², A185012(n+1))` -/
def P14327729730365505393.Spec : Prop :=
  ∀ n, P14327729730365505393.a n = A273385 n

end A273385

/-! ## A273385.P7979252515879690586

`xor(A178334(A178334(n)²), A273335(n))`
-/

namespace A273385.P7979252515879690586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178334 (A178334 n ^ 2).toNat) (A273335 n)

end

end A273385.P7979252515879690586

namespace A273385

/-- `xor(A178334(A178334(n)²), A273335(n))` -/
def P7979252515879690586.Spec : Prop :=
  ∀ n, P7979252515879690586.a n = A273385 n

end A273385

/-!
# A273386: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 659", based on the 5-celled von Neumann neighborhood.

The programs for A273386, the canonical program `A273386.P16511862658586062519` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273386 has offset 0).

The definition of A273386 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273386.P16511862658586062519

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=23, a(3)=72, a(4)=153, a(5)=274`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A273386

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P16511862658586062519.Spec : Prop :=
  ∀ n, P16511862658586062519.a n = A273386 n

theorem P16511862658586062519.correct : P16511862658586062519.Spec := by
  intro n
  simp only [A273386]

end A273386

/-! ## A273386.P4204722542083109077

`∑[A273384(n)]`
-/

namespace A273386.P4204722542083109077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273386.P4204722542083109077

namespace A273386

/-- `∑[A273384(n)]` -/
def P4204722542083109077.Spec : Prop :=
  ∀ n, P4204722542083109077.a n = A273386 n

end A273386

/-! ## A273386.P15078222011750979948

`∑[or(1, A273334(n))]`
-/

namespace A273386.P15078222011750979948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273334 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273386.P15078222011750979948

namespace A273386

/-- `∑[or(1, A273334(n))]` -/
def P15078222011750979948.Spec : Prop :=
  ∀ n, P15078222011750979948.a n = A273386 n

end A273386

/-! ## A273386.P3481529969839303388

`∑[or(1, A273766(n))]`
-/

namespace A273386.P3481529969839303388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273766 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273386.P3481529969839303388

namespace A273386

/-- `∑[or(1, A273766(n))]` -/
def P3481529969839303388.Spec : Prop :=
  ∀ n, P3481529969839303388.a n = A273386 n

end A273386

/-! ## A273386.P10023776455038818202

`∑[or(1, Δ[A082562(n)]²)]`
-/

namespace A273386.P10023776455038818202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082562 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f2 (n + 1) - f2 n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273386.P10023776455038818202

namespace A273386

/-- `∑[or(1, Δ[A082562(n)]²)]` -/
def P10023776455038818202.Spec : Prop :=
  ∀ n, P10023776455038818202.a n = A273386 n

end A273386

/-! ## A273386.P7522969428418250931

`∑[(2*n+1)²-C(4*n, A000041(2*n+1))]`
-/

namespace A273386.P7522969428418250931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - (Nat.choose (4 * n) (A000041 (2 * n + 1)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273386.P7522969428418250931

namespace A273386

/-- `∑[(2*n+1)²-C(4*n, A000041(2*n+1))]` -/
def P7522969428418250931.Spec : Prop :=
  ∀ n, P7522969428418250931.a n = A273386 n

end A273386

/-! ## A273386.P4683671735394567118

`∑[A273334(n)+A267870(n+1)]`
-/

namespace A273386.P4683671735394567118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273334 n + A267870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273386.P4683671735394567118

namespace A273386

/-- `∑[A273334(n)+A267870(n+1)]` -/
def P4683671735394567118.Spec : Prop :=
  ∀ n, P4683671735394567118.a n = A273386 n

end A273386

/-! ## A273386.P10386570185562361382

`A000447(n+1)-4*3%A000125(n)`
-/

namespace A273386.P10386570185562361382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (n + 1) - 4 * Int.tmod 3 (A000125 n)

end

end A273386.P10386570185562361382

namespace A273386

/-- `A000447(n+1)-4*3%A000125(n)` -/
def P10386570185562361382.Spec : Prop :=
  ∀ n, P10386570185562361382.a n = A273386 n

end A273386

/-! ## A273386.P10246219241233930247

`A273336(n)+A110654(A004275(n))`
-/

namespace A273386.P10246219241233930247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273336 n + A110654 (A004275 n).toNat

end

end A273386.P10246219241233930247

namespace A273386

/-- `A273336(n)+A110654(A004275(n))` -/
def P10246219241233930247.Spec : Prop :=
  ∀ n, P10246219241233930247.a n = A273386 n

end A273386

/-! ## A273386.P11900051866334977195

`A000447(n+1)-12%A000125(A000203(n+1))`
-/

namespace A273386.P11900051866334977195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (n + 1) - Int.tmod 12 (A000125 (A000203 (n + 1)).toNat)

end

end A273386.P11900051866334977195

namespace A273386

/-- `A000447(n+1)-12%A000125(A000203(n+1))` -/
def P11900051866334977195.Spec : Prop :=
  ∀ n, P11900051866334977195.a n = A273386 n

end A273386

/-! ## A273386.P15457597786533485744

`A273768(n)+A046698(n)`
-/

namespace A273386.P15457597786533485744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273768 n + A046698 n

end

end A273386.P15457597786533485744

namespace A273386

/-- `A273768(n)+A046698(n)` -/
def P15457597786533485744.Spec : Prop :=
  ∀ n, P15457597786533485744.a n = A273386 n

end A273386

/-! ## A273386.P140145833322945346

`∑[(2*n+1)²-and(n-3, 2^(n+1))]`
-/

namespace A273386.P140145833322945346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - Int.land ((n : ℤ) - 3) (2 ^ (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273386.P140145833322945346

namespace A273386

/-- `∑[(2*n+1)²-and(n-3, 2^(n+1))]` -/
def P140145833322945346.Spec : Prop :=
  ∀ n, P140145833322945346.a n = A273386 n

end A273386

/-! ## A273386.P3276789963145844926

`∑[(2*n+1)²-C(4*n, A000032(2*n))]`
-/

namespace A273386.P3276789963145844926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - (Nat.choose (4 * n) (A000032 (2 * n)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273386.P3276789963145844926

namespace A273386

/-- `∑[(2*n+1)²-C(4*n, A000032(2*n))]` -/
def P3276789963145844926.Spec : Prop :=
  ∀ n, P3276789963145844926.a n = A273386 n

end A273386

/-!
# A273387: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 659", based on the 5-celled von Neumann neighborhood.

The programs for A273387, the canonical program `A273387.P9434941443498858836` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273387 has offset 0).

The definition of A273387 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273387.P9434941443498858836

`2*a(n-1)-a(n-2)` with `a(0)=4, a(1)=12, a(2)=32, a(3)=32, a(4)=40`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A273387

/-- `2*a(n-1)-a(n-2)` -/
def P9434941443498858836.Spec : Prop :=
  ∀ n, P9434941443498858836.a n = A273387 n

theorem P9434941443498858836.correct : P9434941443498858836.Spec := by
  intro n
  simp only [A273387]

end A273387

/-!
# A273388: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 662", based on the 5-celled von Neumann neighborhood.

The programs for A273388, there is no canonical definition to state claims against.
-/

/-! ## A273388.P925677889152537068

`A273391(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273388.P925677889152537068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273391 (n - 1) + a (n - 1)

end

end A273388.P925677889152537068

/-! ## A273388.P8549497183098769507

`Δ[A273390(n)]-A273391(n)`
-/

namespace A273388.P8549497183098769507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273391 n

end

end A273388.P8549497183098769507

/-! ## A273388.P2639183130155983882

`A273390(n+1)-(A273391(n)+A273390(n))`
-/

namespace A273388.P2639183130155983882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273390 (n + 1) - (A273391 n + A273390 n)

end

end A273388.P2639183130155983882

/-! ## A273388.P11297403055899459836

`A020985(n)²+∑[A273391(n)]-A273391(n)`
-/

namespace A273388.P11297403055899459836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273391 n)

end

end A273388.P11297403055899459836

/-! ## A273388.P11819150510180423963

`A065357(n)²+∑[A273391(n)]-A273391(n)`
-/

namespace A273388.P11819150510180423963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273391 n)

end

end A273388.P11819150510180423963

/-! ## A273388.P170186197938473279

`A057427(n+1)+∑[A273391(n)]-A273391(n)`
-/

namespace A273388.P170186197938473279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A273391 n)

end

end A273388.P170186197938473279

/-! ## A273388.P2751059534699227573

`A000034(2*n)+∑[A273391(n)]-A273391(n)`
-/

namespace A273388.P2751059534699227573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j - A273391 n)

end

end A273388.P2751059534699227573

/-! ## A273388.P16631636985796972489

`A028920(2*n)+∑[A273391(n)]-A273391(n)`
-/

namespace A273388.P16631636985796972489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j - A273391 n)

end

end A273388.P16631636985796972489

/-! ## A273388.P13949201689326792400

`A209615(n+1)²+∑[A273391(n)]-A273391(n)`
-/

namespace A273388.P13949201689326792400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (n + 1) ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273391 n)

end

end A273388.P13949201689326792400

/-! ## A273388.P2279710644486438853

`n+1+A001489(n)+∑[A273391(n)]-A273391(n)`
-/

namespace A273388.P2279710644486438853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A001489 n + (∑ j ∈ Finset.range (n + 1), f1 j - A273391 n))

end

end A273388.P2279710644486438853

/-! ## A273388.P17472943621536439584

`A008619(2*n)-n+∑[A273391(n)]-A273391(n)`
-/

namespace A273388.P17472943621536439584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - (n : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - A273391 n)

end

end A273388.P17472943621536439584

/-! ## A273388.P2147420112014564445

`A008683(n+1)²!+∑[A273391(n)]-A273391(n)`
-/

namespace A273388.P2147420112014564445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - A273391 n)

end

end A273388.P2147420112014564445

/-! ## A273388.P12546027463173885678

`A187307(3*n)²+∑[A273391(n)]-A273391(n)`
-/

namespace A273388.P12546027463173885678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187307 (3 * n) ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273391 n)

end

end A273388.P12546027463173885678

/-! ## A273388.P9641954712072403094

`A000027(∑[A273391(n)]-A273391(n)+1)`
-/

namespace A273388.P9641954712072403094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j - A273391 n + 1).toNat

end

end A273388.P9641954712072403094

/-! ## A273388.P453563359750584066

`A000265(∑[A273391(n)]-A273391(n)+1)`
-/

namespace A273388.P453563359750584066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j - A273391 n + 1).toNat

end

end A273388.P453563359750584066

/-! ## A273388.P1094982813888051642

`A141310(∑[A273391(n)]-A273391(n))`
-/

namespace A273388.P1094982813888051642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (∑ j ∈ Finset.range (n + 1), f1 j - A273391 n).toNat

end

end A273388.P1094982813888051642

/-!
# A273389: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 662", based on the 5-celled von Neumann neighborhood.

The programs for A273389, there is no canonical definition to state claims against.
-/

/-! ## A273389.P1044090965078338001

`A273388(2^n-1)`
-/

namespace A273389.P1044090965078338001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273388 (2 ^ n - 1)

end

end A273389.P1044090965078338001

/-! ## A273389.P14785842254830890417

`record[A273388(A173787(n))]`
-/

namespace A273389.P14785842254830890417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273388 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273389.P14785842254830890417

/-! ## A273389.P3061340256299668331

`or(1, A273388(A000225(n)))`
-/

namespace A273389.P3061340256299668331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273388 (A000225 n).toNat)

end

end A273389.P3061340256299668331

/-! ## A273389.P12960010392767657849

`record[A273388(Δ[A228693(n)])]`
-/

namespace A273389.P12960010392767657849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273388 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273389.P12960010392767657849

/-! ## A273389.P10041643349047770967

`record[A273388(A324865(n+1))]`
-/

namespace A273389.P10041643349047770967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273388 (A324865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273389.P10041643349047770967

/-!
# A273390: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 662", based on the 5-celled von Neumann neighborhood.

The programs for A273390, there is no canonical definition to state claims against.
-/

/-! ## A273390.P5962514650117394119

`∑[∑[A273391(n)]+1-A273391(n)]`
-/

namespace A273390.P5962514650117394119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273391 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273391 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273390.P5962514650117394119

/-! ## A273390.P10064282003954806774

`∑[A273388(n)]`
-/

namespace A273390.P10064282003954806774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273390.P10064282003954806774

/-! ## A273390.P4602626656131550226

`A273388(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A273390.P4602626656131550226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273388 n + a (A023443 n).toNat

end

end A273390.P4602626656131550226

/-! ## A273390.P7302978563462921990

`a(n-1)+A273388(n)+A000007(n)` with `a(0)=1`
-/

namespace A273390.P7302978563462921990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273388 n + A000007 n)

end

end A273390.P7302978563462921990

/-! ## A273390.P10406400297206071575

`a(n-1)+or(A183919(n+1), A273388(n))` with `a(0)=1`
-/

namespace A273390.P10406400297206071575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lor (A183919 (n + 1)) (A273388 n)

end

end A273390.P10406400297206071575

/-!
# A273391: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 662", based on the 5-celled von Neumann neighborhood.

The programs for A273391, there is no canonical definition to state claims against.
-/

/-! ## A273391.P11775978027986457187

`Δ[A273388(n)]`
-/

namespace A273391.P11775978027986457187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273391.P11775978027986457187

/-! ## A273391.P6359813012924452577

`A273388(n+1)-A273388(n)`
-/

namespace A273391.P6359813012924452577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273388 (n + 1) - A273388 n

end

end A273391.P6359813012924452577

/-! ## A273391.P2745931741810429285

`A273388(A000027(n+1))+A001489(A273388(n))`
-/

namespace A273391.P2745931741810429285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273388 (A000027 (n + 1)).toNat + A001489 (A273388 n).toNat

end

end A273391.P2745931741810429285

/-!
# A273392: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 670", based on the 5-celled von Neumann neighborhood.

The programs for A273392, there is no canonical definition to state claims against.
-/

/-! ## A273392.P1504449890804918732

`A273395(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273392.P1504449890804918732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273395 (n - 1) + a (n - 1)

end

end A273392.P1504449890804918732

/-! ## A273392.P5830943052133187380

`Δ[A273394(n)]-A273395(n)`
-/

namespace A273392.P5830943052133187380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273394 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273395 n

end

end A273392.P5830943052133187380

/-! ## A273392.P521777868823791701

`A273394(n+1)-(A273395(n)+A273394(n))`
-/

namespace A273392.P521777868823791701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273394 (n + 1) - (A273395 n + A273394 n)

end

end A273392.P521777868823791701

/-! ## A273392.P14620419897240104582

`A141310(∑[A273395(n)]-A273395(n))`
-/

namespace A273392.P14620419897240104582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (∑ j ∈ Finset.range (n + 1), f1 j - A273395 n).toNat

end

end A273392.P14620419897240104582

/-!
# A273393: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 670", based on the 5-celled von Neumann neighborhood.

The programs for A273393, there is no canonical definition to state claims against.
-/

/-! ## A273393.P1698792349275520515

`A273392(2^n-1)`
-/

namespace A273393.P1698792349275520515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273392 (2 ^ n - 1)

end

end A273393.P1698792349275520515

/-! ## A273393.P9317031163530878766

`or(1, A273392(A000225(n)))`
-/

namespace A273393.P9317031163530878766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273392 (A000225 n).toNat)

end

end A273393.P9317031163530878766

/-! ## A273393.P18178134717899089003

`record[A273392(Δ[A228693(n)])]`
-/

namespace A273393.P18178134717899089003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273392 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273393.P18178134717899089003

/-! ## A273393.P3361765528098214824

`record[A273392(A324865(n+1))]`
-/

namespace A273393.P3361765528098214824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273392 (A324865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273393.P3361765528098214824

/-! ## A273393.P13234116082183471358

`record[A273392(A324876(n+1))]`
-/

namespace A273393.P13234116082183471358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273392 (A324876 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273393.P13234116082183471358

/-!
# A273394: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 670", based on the 5-celled von Neumann neighborhood.

The programs for A273394, there is no canonical definition to state claims against.
-/

/-! ## A273394.P5474832377775678033

`∑[∑[A273395(n)]+1-A273395(n)]`
-/

namespace A273394.P5474832377775678033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273395 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273395 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273394.P5474832377775678033

/-! ## A273394.P6366856238258944338

`∑[A273392(n)]`
-/

namespace A273394.P6366856238258944338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273394.P6366856238258944338

/-! ## A273394.P10338257640729317741

`A273392(n)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A273394.P10338257640729317741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273392 n + a ((n : ℤ) - A057427 n).toNat

end

end A273394.P10338257640729317741

/-! ## A273394.P1363111986794745509

`a(n-1)+1+A273392(n)+A118821(A118821(2*n+1))` with `a(0)=1`
-/

namespace A273394.P1363111986794745509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 + (A273392 n + A118821 (A118821 (2 * n + 1)).toNat)

end

end A273394.P1363111986794745509

/-!
# A273395: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 670", based on the 5-celled von Neumann neighborhood.

The programs for A273395, there is no canonical definition to state claims against.
-/

/-! ## A273395.P5789633037751237320

`Δ[A273392(n)]`
-/

namespace A273395.P5789633037751237320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273395.P5789633037751237320

/-! ## A273395.P18338215415466549597

`A273392(n+1)-A273392(n)`
-/

namespace A273395.P18338215415466549597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273392 (n + 1) - A273392 n

end

end A273395.P18338215415466549597

/-! ## A273395.P11338380898926867466

`A273392(n+1)+A273392(n)/A260196(n+2)`
-/

namespace A273395.P11338380898926867466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273392 (n + 1) : ℚ) + (A273392 n : ℚ) / (A260196 (n + 2) : ℚ)

end

end A273395.P11338380898926867466

/-! ## A273395.P8177130011152801810

`A273392(n+1)+A273392(n)/A259965(gcd(n, n+1))`
-/

namespace A273395.P8177130011152801810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273392 (n + 1) : ℚ) + (A273392 n : ℚ) / (A259965 (Nat.gcd n (n + 1)) : ℚ)

end

end A273395.P8177130011152801810

/-! ## A273395.P10730072688468609837

`A000005(∑[record[A336818(2*(n+2))]])`
-/

namespace A273395.P10730072688468609837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336818 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A273395.P10730072688468609837

/-!
# A273396: Indecomposable collections of multisets with a total of n objects having entries {1,2,...,k} for some k<=n or INVERTi transform of A255906.

The programs for A273396, there is no canonical definition to state claims against.
-/

/-! ## A273396.P5675340030170818002

`3*A325362(a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A273396.P5675340030170818002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * A325362 (a (n - 1)).toNat

end

end A273396.P5675340030170818002

/-! ## A273396.P16953961069138044360

`3*A325399(a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A273396.P16953961069138044360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * A325399 (a (n - 1)).toNat

end

end A273396.P16953961069138044360

/-!
# A273397: a(n) = Fibonacci(Catalan(n)).

The programs for A273397, the canonical program `A273397.P6776923368005567381` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273397 has offset 0).

The definition of A273397 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273397.P6776923368005567381

`A000045(A000108(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A273397

/-- `A000045(A000108(n))` -/
def P6776923368005567381.Spec : Prop :=
  ∀ n, P6776923368005567381.a n = A273397 n

theorem P6776923368005567381.correct : P6776923368005567381.Spec := by
  intro n
  simp only [A273397]

end A273397

/-! ## A273397.P7661506700987869151

`A000045(C(2*n, n)/(n+1))`
-/

namespace A273397.P7661506700987869151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ))).toNat

end

end A273397.P7661506700987869151

namespace A273397

/-- `A000045(C(2*n, n)/(n+1))` -/
def P7661506700987869151.Spec : Prop :=
  ∀ n, P7661506700987869151.a n = A273397 n

end A273397

/-! ## A273397.P5066505283479915691

`A000045(A033191(n))`
-/

namespace A273397.P5066505283479915691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A033191 n).toNat

end

end A273397.P5066505283479915691

namespace A273397

/-- `A000045(A033191(n))` -/
def P5066505283479915691.Spec : Prop :=
  ∀ n, P5066505283479915691.a n = A273397 n

end A273397

/-! ## A273397.P2559806051833810737

`A000045(A036769(n))`
-/

namespace A273397.P2559806051833810737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A036769 n).toNat

end

end A273397.P2559806051833810737

namespace A273397

/-- `A000045(A036769(n))` -/
def P2559806051833810737.Spec : Prop :=
  ∀ n, P2559806051833810737.a n = A273397 n

end A273397

/-!
# A273398: a(n) = Catalan(Fibonacci(n)).

The programs for A273398, the canonical program `A273398.P14451358136939616418` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273398 has offset 0).

The definition of A273398 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273398.P14451358136939616418

`A000108(A000045(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A273398

/-- `A000108(A000045(n))` -/
def P14451358136939616418.Spec : Prop :=
  ∀ n, P14451358136939616418.a n = A273398 n

theorem P14451358136939616418.correct : P14451358136939616418.Spec := by
  intro n
  simp only [A273398]

end A273398

/-! ## A273398.P3537098353183995464

`A000108(A000044(n))`
-/

namespace A273398.P3537098353183995464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A000044 n).toNat

end

end A273398.P3537098353183995464

namespace A273398

/-- `A000108(A000044(n))` -/
def P3537098353183995464.Spec : Prop :=
  ∀ n, P3537098353183995464.a n = A273398 n

end A273398

/-! ## A273398.P898843994511849826

`A000108(A023442(n))`
-/

namespace A273398.P898843994511849826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A023442 n).toNat

end

end A273398.P898843994511849826

namespace A273398

/-- `A000108(A023442(n))` -/
def P898843994511849826.Spec : Prop :=
  ∀ n, P898843994511849826.a n = A273398 n

end A273398

/-! ## A273398.P16087358954009748526

`A028304(A055389(n))`
-/

namespace A273398.P16087358954009748526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (A055389 n).toNat

end

end A273398.P16087358954009748526

namespace A273398

/-- `A028304(A055389(n))` -/
def P16087358954009748526.Spec : Prop :=
  ∀ n, P16087358954009748526.a n = A273398 n

end A273398

/-! ## A273398.P18069635107256691356

`A089408(A001588(n))`
-/

namespace A273398.P18069635107256691356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (A001588 n).toNat

end

end A273398.P18069635107256691356

namespace A273398

/-- `A089408(A001588(n))` -/
def P18069635107256691356.Spec : Prop :=
  ∀ n, P18069635107256691356.a n = A273398 n

end A273398

/-!
# A273399: a(n) = Catalan(Catalan(n)).

The programs for A273399, the canonical program `A273399.P2234011479383046362` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273399 has offset 0).

The definition of A273399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273399.P2234011479383046362

`A000108(A000108(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A273399

/-- `A000108(A000108(n))` -/
def P2234011479383046362.Spec : Prop :=
  ∀ n, P2234011479383046362.a n = A273399 n

theorem P2234011479383046362.correct : P2234011479383046362.Spec := by
  intro n
  simp only [A273399]

end A273399

/-! ## A273399.P4328875158919344337

`A120588(1/(n+1)*C(2*n, n)+1)`
-/

namespace A273399.P4328875158919344337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (SequenceMachineLib.roundAway (1 / (n + 1 : ℚ) * (Nat.choose (2 * n) n : ℚ) + 1)).toNat

end

end A273399.P4328875158919344337

namespace A273399

/-- `A120588(1/(n+1)*C(2*n, n)+1)` -/
def P4328875158919344337.Spec : Prop :=
  ∀ n, P4328875158919344337.a n = A273399 n

end A273399

/-! ## A273399.P1684457341581977612

`A246604(1/(n+1)*C(2*n, n))+1/(n+1)*C(2*n, n)`
-/

namespace A273399.P1684457341581977612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246604 (SequenceMachineLib.roundAway (1 / (n + 1 : ℚ) * (Nat.choose (2 * n) n : ℚ))).toNat : ℚ) + 1 / (n + 1 : ℚ) * (Nat.choose (2 * n) n : ℚ)

end

end A273399.P1684457341581977612

namespace A273399

/-- `A246604(1/(n+1)*C(2*n, n))+1/(n+1)*C(2*n, n)` -/
def P1684457341581977612.Spec : Prop :=
  ∀ n, P1684457341581977612.a n = (A273399 n : ℚ)

end A273399

