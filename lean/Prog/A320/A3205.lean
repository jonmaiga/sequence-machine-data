import SequenceMachineLib.Basic
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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

/-!
# A320501: Main diagonal of array in A320500.

The programs for A320501, there is no canonical definition to state claims against.
-/

/-! ## A320501.P13996429596064157171

`A320500(∑[4*n]+1)`
-/

namespace A320501.P13996429596064157171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320500 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A320501.P13996429596064157171

/-!
# A320502: a(n) = Sum_{k=0..n} (k!)^2 * abs(Stirling1(n,k)).

The programs for A320502, there is no canonical definition to state claims against.
-/

/-! ## A320502.P620093081014793168

`A145391(n!²)`
-/

namespace A320502.P620093081014793168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145391 (Nat.factorial n ^ 2)

end

end A320502.P620093081014793168

/-!
# A320506: First ionization energy (in kJ/mol) of the chemical elements, rounded to the nearest integer.

The programs for A320506, there is no canonical definition to state claims against.
-/

/-! ## A320506.P2390532354504090891

`A322834(∑[n]+1)`
-/

namespace A320506.P2390532354504090891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322834 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A320506.P2390532354504090891

/-! ## A320506.P4168785788144207927

`or(char[9], A322834(A000124(n)))`
-/

namespace A320506.P4168785788144207927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A322834 (A000124 n).toNat)

end

end A320506.P4168785788144207927

/-! ## A320506.P11172357472041167333

`A322834(A000124(n))%A080124(n+1)`
-/

namespace A320506.P11172357472041167333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322834 (A000124 n).toNat) (A080124 (n + 1))

end

end A320506.P11172357472041167333

/-! ## A320506.P1381896273186488815

`A007318(C(2, n))*A322834(A000124(n))`
-/

namespace A320506.P1381896273186488815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A322834 (A000124 n).toNat

end

end A320506.P1381896273186488815

/-! ## A320506.P3156995585094038546

`A322834(A000124(n))/A007318(C(n, 2))`
-/

namespace A320506.P3156995585094038546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322834 (A000124 n).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A320506.P3156995585094038546

/-!
# A320508: T(n,k) = binomial(n - k - 1, k), 0 <= k < n, and T(n,n) = (-1)^n, triangle read by rows.

The programs for A320508, there is no canonical definition to state claims against.
-/

/-! ## A320508.P2511041914834088398

`A055017(A164899(n+1))`
-/

namespace A320508.P2511041914834088398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A164899 (n + 1)).toNat

end

end A320508.P2511041914834088398

/-! ## A320508.P2711183817344741622

`A108561(n)-A333382(A008277(n+1))`
-/

namespace A320508.P2711183817344741622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 n - A333382 (A008277 (n + 1)).toNat

end

end A320508.P2711183817344741622

/-! ## A320508.P9782597167885316375

`A108561(n)%A356601(A007318(3*n))`
-/

namespace A320508.P9782597167885316375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108561 n) (A356601 (A007318 (3 * n)).toNat)

end

end A320508.P9782597167885316375

/-! ## A320508.P8585882143505907361

`A108561(n)%A000030(A049875(n))`
-/

namespace A320508.P8585882143505907361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108561 n) (A000030 (A049875 n).toNat)

end

end A320508.P8585882143505907361

/-!
# A320509: Number of partitions of n such that the successive differences of consecutive parts are nonincreasing, and first difference <= first part.

The programs for A320509, there is no canonical definition to state claims against.
-/

/-! ## A320509.P13872094412945441574

`A343378(2*n)-A102683(A241170(n+3))`
-/

namespace A320509.P13872094412945441574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343378 (2 * n) - A102683 (A241170 (n + 3)).toNat

end

end A320509.P13872094412945441574

/-! ## A320509.P13049683720072947037

`A343378(A064222(n)+A004907(n+1))`
-/

namespace A320509.P13049683720072947037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343378 (A064222 n + A004907 (n + 1)).toNat

end

end A320509.P13049683720072947037

/-!
# A320510: Number of partitions of n such that the successive differences of consecutive parts are decreasing, and first difference < first part.

The programs for A320510, there is no canonical definition to state claims against.
-/

/-! ## A320510.P17869024856950561774

`A257062(A000120(record[A207391(n+1)]))`
-/

namespace A320510.P17869024856950561774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257062 (A000120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A320510.P17869024856950561774

/-! ## A320510.P17387252423319207445

`A001227(A018382(n+1)%A018382(n+3))`
-/

namespace A320510.P17387252423319207445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (Int.tmod (A018382 (n + 1)) (A018382 (n + 3))).toNat

end

end A320510.P17387252423319207445

/-! ## A320510.P3498423215774351337

`A086597(A238375(n))+1`
-/

namespace A320510.P3498423215774351337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (A238375 n).toNat + 1

end

end A320510.P3498423215774351337

/-! ## A320510.P1363305850695100481

`A064547(Δ[A000322(n+4)])`
-/

namespace A320510.P1363305850695100481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000322 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (f1 (n + 1) - f1 n).toNat

end

end A320510.P1363305850695100481

/-! ## A320510.P9557680969924788631

`A069288((n+1)*A348433(n+1))`
-/

namespace A320510.P9557680969924788631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 ((n + 1 : ℤ) * A348433 (n + 1)).toNat

end

end A320510.P9557680969924788631

/-!
# A320511: Numbers k with the property that the symmetric representation of sigma(k) has six parts.

The programs for A320511, there is no canonical definition to state claims against.
-/

/-! ## A320511.P17255829491531385574

`eq[6, A237271(n+1)]+1`
-/

namespace A320511.P17255829491531385574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320511.P17255829491531385574

/-! ## A320511.P8492409159929645438

`eq[6, A237271(-xor(n, C(n, n²)-2))]`
-/

namespace A320511.P8492409159929645438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (-Int.xor (n : ℤ) ((Nat.choose n (n ^ 2) : ℤ) - 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320511.P8492409159929645438

/-! ## A320511.P16910443868288408262

`eq[6, A237271(A028310(n))]`
-/

namespace A320511.P16910443868288408262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320511.P16910443868288408262

/-! ## A320511.P3374159359789899870

`eq[6, A237271(A093178(n))]`
-/

namespace A320511.P3374159359789899870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320511.P3374159359789899870

/-! ## A320511.P2023370369870238658

`eq[6, A237271(A257088(n))]`
-/

namespace A320511.P2023370369870238658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320511.P2023370369870238658

/-! ## A320511.P7342224728734936634

`A004442(eq[6, A237271(n+1)])`
-/

namespace A320511.P7342224728734936634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320511.P7342224728734936634

/-! ## A320511.P10084342791904125255

`A007535(eq[6, A237271(n+1)])`
-/

namespace A320511.P10084342791904125255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007535 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320511.P10084342791904125255

/-! ## A320511.P8394224391917941618

`A020725(eq[6, A237271(n+1)])`
-/

namespace A320511.P8394224391917941618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320511.P8394224391917941618

/-! ## A320511.P1110563274516298475

`A065190(eq[6, A237271(n+1)])`
-/

namespace A320511.P1110563274516298475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320511.P1110563274516298475

/-! ## A320511.P12401245474948793403

`A141310(eq[6, A237271(n+1)])`
-/

namespace A320511.P12401245474948793403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320511.P12401245474948793403

/-!
# A320512: Total number of nodes summed over all self-avoiding planar walks starting at (0,0), ending at (n,0), remaining in the first quadrant and using steps (0,1), (1,0), (1,1), (-1,1), and (1,-1) such that (0,1) is never used directly before or after (1,0) or (1,1).

The programs for A320512, there is no canonical definition to state claims against.
-/

/-! ## A320512.P4528154740037960213

`A007957(or(A008486(n), A155666(n)))`
-/

namespace A320512.P4528154740037960213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007957 (Int.lor (A008486 n) (A155666 n)).toNat

end

end A320512.P4528154740037960213

/-!
# A320514: Numbers k such that sigma(sigma(k)) < 2*k + 1.

The programs for A320514, the canonical program `A320514.P1932751579605928193` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320514 has offset 1).

The definition of A320514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 495 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320514.P1932751579605928193

`lt[∑{d}[∑{d}[n, #], #], A001969(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A320514

/-- `lt[∑{d}[∑{d}[n, #], #], A001969(n+1)]` -/
def P1932751579605928193.Spec : Prop :=
  ∀ n, (P1932751579605928193.a n : ℤ) = A320514 (n + 1)

theorem P1932751579605928193.correct : P1932751579605928193.Spec := by
  intro n
  simp only [A320514, Nat.add_sub_cancel]

end A320514

/-! ## A320514.P13600102164235721226

`lt[A051027(n+1)-n-n, 3]+1`
-/

namespace A320514.P13600102164235721226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) - (n : ℤ) - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A320514.P13600102164235721226

namespace A320514

/-- `lt[A051027(n+1)-n-n, 3]+1` -/
def P13600102164235721226.Spec : Prop :=
  ∀ n, (P13600102164235721226.a n : ℤ) = A320514 (n + 1)

end A320514

/-! ## A320514.P6696785003212714414

`lt[A051027(C(2, n+2)+n), 2*n+1]`
-/

namespace A320514.P6696785003212714414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (Nat.choose 2 (n + 2) + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A320514.P6696785003212714414

namespace A320514

/-- `lt[A051027(C(2, n+2)+n), 2*n+1]` -/
def P6696785003212714414.Spec : Prop :=
  ∀ n, (P6696785003212714414.a n : ℤ) = A320514 (n + 1)

end A320514

/-! ## A320514.P5016782929959538804

`lt[A051027(A028310(n)), 2*n+1]`
-/

namespace A320514.P5016782929959538804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A320514.P5016782929959538804

namespace A320514

/-- `lt[A051027(A028310(n)), 2*n+1]` -/
def P5016782929959538804.Spec : Prop :=
  ∀ n, (P5016782929959538804.a n : ℤ) = A320514 (n + 1)

end A320514

/-! ## A320514.P3489759631960158868

`lt[A000203(A000203(n+1)), A285307(n+1)+2]+1`
-/

namespace A320514.P3489759631960158868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285307 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A320514.P3489759631960158868

namespace A320514

/-- `lt[A000203(A000203(n+1)), A285307(n+1)+2]+1` -/
def P3489759631960158868.Spec : Prop :=
  ∀ n, (P3489759631960158868.a n : ℤ) = A320514 (n + 1)

end A320514

/-! ## A320514.P17109420156170225426

`lt[A039653(A039653(n)+1), 2*n]`
-/

namespace A320514.P17109420156170225426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A039653 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A320514.P17109420156170225426

namespace A320514

/-- `lt[A039653(A039653(n)+1), 2*n]` -/
def P17109420156170225426.Spec : Prop :=
  ∀ n, (P17109420156170225426.a n : ℤ) = A320514 (n + 1)

end A320514

/-!
# A320515: Squarefree k > 1 with sigma(sigma(k)) < 2*k + 1.

The programs for A320515, the canonical program `A320515.P891390049597261690` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320515 has offset 1).

The definition of A320515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3608 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320515.P891390049597261690

`record[A007913(A320514(n+2))]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A320515

/-- `record[A007913(A320514(n+2))]` -/
def P891390049597261690.Spec : Prop :=
  ∀ n, P891390049597261690.a n = A320515 (n + 1)

theorem P891390049597261690.correct : P891390049597261690.Spec := by
  intro n
  simp only [A320515, Nat.add_sub_cancel]

end A320515

/-! ## A320515.P7301625023904191319

`filter[A320514(n+2), A008966(#)]`
-/

namespace A320515.P7301625023904191319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320514 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A320515.P7301625023904191319

namespace A320515

/-- `filter[A320514(n+2), A008966(#)]` -/
def P7301625023904191319.Spec : Prop :=
  ∀ n, P7301625023904191319.a n = A320515 (n + 1)

end A320515

/-! ## A320515.P5170960380284001003

`filter[A320514(n+1), A353471(#)]`
-/

namespace A320515.P5170960380284001003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A320515.P5170960380284001003

namespace A320515

/-- `filter[A320514(n+1), A353471(#)]` -/
def P5170960380284001003.Spec : Prop :=
  ∀ n, P5170960380284001003.a n = A320515 (n + 1)

end A320515

/-! ## A320515.P3996890895515069410

`filter[A320514(n+1), A353788(#)]`
-/

namespace A320515.P3996890895515069410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A320515.P3996890895515069410

namespace A320515

/-- `filter[A320514(n+1), A353788(#)]` -/
def P3996890895515069410.Spec : Prop :=
  ∀ n, P3996890895515069410.a n = A320515 (n + 1)

end A320515

/-! ## A320515.P13359777342305148617

`filter[A320514(n+2), A295316(#)]`
-/

namespace A320515.P13359777342305148617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320514 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A320515.P13359777342305148617

namespace A320515

/-- `filter[A320514(n+2), A295316(#)]` -/
def P13359777342305148617.Spec : Prop :=
  ∀ n, P13359777342305148617.a n = A320515 (n + 1)

end A320515

/-! ## A320515.P11663721275545827786

`∩[A167171(n+1), A320514(n+1)]`
-/

namespace A320515.P11663721275545827786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320515.P11663721275545827786

namespace A320515

/-- `∩[A167171(n+1), A320514(n+1)]` -/
def P11663721275545827786.Spec : Prop :=
  ∀ n, (P11663721275545827786.a n : ℤ) = A320515 (n + 1)

end A320515

/-! ## A320515.P7299064132658208977

`∩[A084116(n+1), A320514(n+1)]`
-/

namespace A320515.P7299064132658208977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320515.P7299064132658208977

namespace A320515

/-- `∩[A084116(n+1), A320514(n+1)]` -/
def P7299064132658208977.Spec : Prop :=
  ∀ n, (P7299064132658208977.a n : ℤ) = A320515 (n + 1)

end A320515

/-! ## A320515.P1888898364938850156

`∩[A072697(n+1), A320514(n+1)]`
-/

namespace A320515.P1888898364938850156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320515.P1888898364938850156

namespace A320515

/-- `∩[A072697(n+1), A320514(n+1)]` -/
def P1888898364938850156.Spec : Prop :=
  ∀ n, (P1888898364938850156.a n : ℤ) = A320515 (n + 1)

end A320515

/-! ## A320515.P9657983536416594792

`∩[A144338(n+1), A320514(n+1)]`
-/

namespace A320515.P9657983536416594792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320515.P9657983536416594792

namespace A320515

/-- `∩[A144338(n+1), A320514(n+1)]` -/
def P9657983536416594792.Spec : Prop :=
  ∀ n, (P9657983536416594792.a n : ℤ) = A320515 (n + 1)

end A320515

/-! ## A320515.P16312547725531920232

`∩[A320514(n+1), A394256(n+1)]`
-/

namespace A320515.P16312547725531920232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320515.P16312547725531920232

namespace A320515

/-- `∩[A320514(n+1), A394256(n+1)]` -/
def P16312547725531920232.Spec : Prop :=
  ∀ n, (P16312547725531920232.a n : ℤ) = A320515 (n + 1)

end A320515

/-! ## A320515.P6491474596667300839

`∩[A002035(n+1), A320514(n+1)]`
-/

namespace A320515.P6491474596667300839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320515.P6491474596667300839

namespace A320515

/-- `∩[A002035(n+1), A320514(n+1)]` -/
def P6491474596667300839.Spec : Prop :=
  ∀ n, (P6491474596667300839.a n : ℤ) = A320515 (n + 1)

end A320515

/-! ## A320515.P2949377059627889033

`∩[A109423(n+1), A320514(n+1)]`
-/

namespace A320515.P2949377059627889033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320515.P2949377059627889033

namespace A320515

/-- `∩[A109423(n+1), A320514(n+1)]` -/
def P2949377059627889033.Spec : Prop :=
  ∀ n, (P2949377059627889033.a n : ℤ) = A320515 (n + 1)

end A320515

/-! ## A320515.P2480830157145731839

`filter[A320514(n+2), A297086(#)]`
-/

namespace A320515.P2480830157145731839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320514 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A320515.P2480830157145731839

namespace A320515

/-- `filter[A320514(n+2), A297086(#)]` -/
def P2480830157145731839.Spec : Prop :=
  ∀ n, P2480830157145731839.a n = A320515 (n + 1)

end A320515

/-! ## A320515.P10278928392604370870

`p?[A249818(A320514(n+1))]`
-/

namespace A320515.P10278928392604370870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (A320514 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320515.P10278928392604370870

namespace A320515

/-- `p?[A249818(A320514(n+1))]` -/
def P10278928392604370870.Spec : Prop :=
  ∀ n, P10278928392604370870.a n = A320515 (n + 1)

end A320515

/-! ## A320515.P13263028307035041716

`p?[A320514(n+1)%A227511(n)]`
-/

namespace A320515.P13263028307035041716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320514 (n + 1)) (A227511 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320515.P13263028307035041716

namespace A320515

/-- `p?[A320514(n+1)%A227511(n)]` -/
def P13263028307035041716.Spec : Prop :=
  ∀ n, P13263028307035041716.a n = A320515 (n + 1)

end A320515

/-! ## A320515.P7579225960356151380

`A250246(p?[A250246(A320514(n+1))])`
-/

namespace A320515.P7579225960356151380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (A320514 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A320515.P7579225960356151380

namespace A320515

/-- `A250246(p?[A250246(A320514(n+1))])` -/
def P7579225960356151380.Spec : Prop :=
  ∀ n, P7579225960356151380.a n = A320515 (n + 1)

end A320515

/-! ## A320515.P7427974079472778787

`p?[A320514(n+1)]*A000034(A086301(n+1))`
-/

namespace A320515.P7427974079472778787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000034 (A086301 (n + 1)).toNat

end

end A320515.P7427974079472778787

namespace A320515

/-- `p?[A320514(n+1)]*A000034(A086301(n+1))` -/
def P7427974079472778787.Spec : Prop :=
  ∀ n, P7427974079472778787.a n = A320515 (n + 1)

end A320515

/-! ## A320515.P1042909056693284642

`p?[A091255(A000217(n+8))*A320514(n+1)]`
-/

namespace A320515.P1042909056693284642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091255 (A000217 (n + 8)).toNat * A320514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320515.P1042909056693284642

namespace A320515

/-- `p?[A091255(A000217(n+8))*A320514(n+1)]` -/
def P1042909056693284642.Spec : Prop :=
  ∀ n, P1042909056693284642.a n = A320515 (n + 1)

end A320515

/-! ## A320515.P5472183547415749523

`p?[A320514(A061395(A033286(n+1)))]`
-/

namespace A320515.P5472183547415749523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320514 (A061395 (A033286 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320515.P5472183547415749523

namespace A320515

/-- `p?[A320514(A061395(A033286(n+1)))]` -/
def P5472183547415749523.Spec : Prop :=
  ∀ n, P5472183547415749523.a n = A320515 (n + 1)

end A320515

/-! ## A320515.P230205700003566683

`eq[A341702(n), A378550(n+1)]`
-/

namespace A320515.P230205700003566683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341702 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378550 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320515.P230205700003566683

namespace A320515

/-- `eq[A341702(n), A378550(n+1)]` -/
def P230205700003566683.Spec : Prop :=
  ∀ n, (P230205700003566683.a n : ℤ) = A320515 (n + 1)

end A320515

/-!
# A320517: Prime k with sigma(sigma(sigma(k))) < 3*k + 1.

The programs for A320517, there is no canonical definition to state claims against.
-/

/-! ## A320517.P14550494000777890830

`∩[A256917(n+1), A320513(n+1)]`
-/

namespace A320517.P14550494000777890830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320517.P14550494000777890830

/-! ## A320517.P16271414753437525423

`∩[A320513(n+1), A128223(n)]`
-/

namespace A320517.P16271414753437525423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128223 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320517.P16271414753437525423

/-! ## A320517.P9756387516465320995

`∩[A320513(n+1), A047838(n+2)]`
-/

namespace A320517.P9756387516465320995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320517.P9756387516465320995

/-! ## A320517.P16997776784337114333

`∩[A171886(n+1), A320513(n+1)]`
-/

namespace A320517.P16997776784337114333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320517.P16997776784337114333

/-! ## A320517.P8195380820374357481

`∩[A188551(n+1), A320513(n+1)]`
-/

namespace A320517.P8195380820374357481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320517.P8195380820374357481

/-! ## A320517.P4585548435973025509

`∩[A320513(n+1), A374482(n+1)]`
-/

namespace A320517.P4585548435973025509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320517.P4585548435973025509

/-! ## A320517.P6032835900902407215

`p?[A320513(n+1)]`
-/

namespace A320517.P6032835900902407215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320517.P6032835900902407215

/-! ## A320517.P1515560513688315115

`p?[record[A320513(A133310(n))]]`
-/

namespace A320517.P1515560513688315115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320513 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320517.P1515560513688315115

/-! ## A320517.P7428212091149652401

`p?[record[A320513(A158416(n))]]`
-/

namespace A320517.P7428212091149652401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320513 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320517.P7428212091149652401

/-! ## A320517.P11366116677275897536

`p?[record[A320513(A291769(n))]]`
-/

namespace A320517.P11366116677275897536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320513 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320517.P11366116677275897536

/-!
# A320518: Zumkeller primes: k is prime and k + 1 is Zumkeller.

The programs for A320518, there is no canonical definition to state claims against.
-/

/-! ## A320518.P7485874527275108840

`p?[A083207(n+1)-1]`
-/

namespace A320518.P7485874527275108840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320518.P7485874527275108840

/-! ## A320518.P10518228269360649686

`p?[A246198(n+1)-1]`
-/

namespace A320518.P10518228269360649686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246198 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320518.P10518228269360649686

/-! ## A320518.P370541271513445225

`p?[A337399(n+1)]`
-/

namespace A320518.P370541271513445225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320518.P370541271513445225

/-! ## A320518.P14656664448744050930

`filter[A337399(n+1), A010051(#)]`
-/

namespace A320518.P14656664448744050930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A320518.P14656664448744050930

/-! ## A320518.P17012695439095418200

`filter[A337399(n+1), A302777(#)]`
-/

namespace A320518.P17012695439095418200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A320518.P17012695439095418200

/-! ## A320518.P2237318261720378218

`filter[A337399(n+1), A355937(#)]`
-/

namespace A320518.P2237318261720378218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A320518.P2237318261720378218

/-! ## A320518.P13558252489812464211

`∩[A000040(n+1), A337399(n+1)]`
-/

namespace A320518.P13558252489812464211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320518.P13558252489812464211

/-! ## A320518.P2951201945182625682

`∩[A000430(n+1), A337399(n+1)]`
-/

namespace A320518.P2951201945182625682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320518.P2951201945182625682

/-! ## A320518.P7959752771609650462

`∩[A006005(n+1), A337399(n+1)]`
-/

namespace A320518.P7959752771609650462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320518.P7959752771609650462

/-! ## A320518.P2365500991265705308

`∩[A008578(n+1), A337399(n+1)]`
-/

namespace A320518.P2365500991265705308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320518.P2365500991265705308

/-! ## A320518.P17433356631175134319

`∩[A009087(n+1), A337399(n+1)]`
-/

namespace A320518.P17433356631175134319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320518.P17433356631175134319

/-! ## A320518.P13454793238398320966

`∩[A033946(n+1), A337399(n+1)]`
-/

namespace A320518.P13454793238398320966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320518.P13454793238398320966

/-! ## A320518.P11504327317388147198

`∩[A045344(n+1), A337399(n+1)]`
-/

namespace A320518.P11504327317388147198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320518.P11504327317388147198

/-! ## A320518.P9188290550902081302

`∩[A046022(n+1), A337399(n+1)]`
-/

namespace A320518.P9188290550902081302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320518.P9188290550902081302

/-! ## A320518.P2209627442710998911

`∩[A050150(n+1), A337399(n+1)]`
-/

namespace A320518.P2209627442710998911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320518.P2209627442710998911

/-! ## A320518.P5551724303633327304

`∩[A050376(n+1), A337399(n+1)]`
-/

namespace A320518.P5551724303633327304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320518.P5551724303633327304

/-! ## A320518.P6076223883425035491

`∩[A062090(n+1), A337399(n+1)]`
-/

namespace A320518.P6076223883425035491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320518.P6076223883425035491

/-! ## A320518.P944680016747831190

`∩[A065091(n+1), A337399(n+1)]`
-/

namespace A320518.P944680016747831190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320518.P944680016747831190

/-! ## A320518.P10103315860513965148

`∩[A065396(n+1), A337399(n+1)]`
-/

namespace A320518.P10103315860513965148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320518.P10103315860513965148

/-! ## A320518.P3029694382745749863

`∩[A066050(n+1), A337399(n+1)]`
-/

namespace A320518.P3029694382745749863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320518.P3029694382745749863

/-!
# A320521: a(n) is the smallest even number k such that the symmetric representation of sigma(k) has n parts.

The programs for A320521, there is no canonical definition to state claims against.
-/

/-! ## A320521.P13113203149974130743

`A320537(∑[n+1])`
-/

namespace A320521.P13113203149974130743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320537 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A320521.P13113203149974130743

/-! ## A320521.P6147135135853490844

`record[A320537(comp[∑[n-1]])]`
-/

namespace A320521.P6147135135853490844
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320537 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320521.P6147135135853490844

/-! ## A320521.P38774677801588997

`or(2, A320537(A119663(n+1)))`
-/

namespace A320521.P38774677801588997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A320537 (A119663 (n + 1)).toNat)

end

end A320521.P38774677801588997

/-! ## A320521.P13302650643879635909

`record[A023531(n)*A320537(n+1)]`
-/

namespace A320521.P13302650643879635909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A320537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320521.P13302650643879635909

/-! ## A320521.P17111966463128304799

`record[A049310(n)*A320537(n+1)]`
-/

namespace A320521.P17111966463128304799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n * A320537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320521.P17111966463128304799

/-!
# A320522: Numbers k such that k^10 divides 10^k.

The programs for A320522, there is no canonical definition to state claims against.
-/

/-! ## A320522.P14262217047536588561

`record[A003592(n+4)%A051627(2*(n+1))]`
-/

namespace A320522.P14262217047536588561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003592 (n + 4)) (A051627 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320522.P14262217047536588561

/-! ## A320522.P9076152876892292751

`∩[A003592(n+1), A075775(n+1)]`
-/

namespace A320522.P9076152876892292751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320522.P9076152876892292751

/-! ## A320522.P10570141005642732705

`record[gcd(n, A011557(A059995(n)))]`
-/

namespace A320522.P10570141005642732705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A011557 (A059995 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320522.P10570141005642732705

/-! ## A320522.P1933877497436866046

`record[gcd(A010785(n-dr(n))+1, n-1)]`
-/

namespace A320522.P1933877497436866046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010785 (n - SequenceMachineLib.digitalRoot (n : ℤ)) + 1) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320522.P1933877497436866046

/-! ## A320522.P7653783018769306439

`record[gcd(1-n, A011557(A179051(n)))]`
-/

namespace A320522.P7653783018769306439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) (A011557 (A179051 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320522.P7653783018769306439

/-!
# A320524: Number of chiral pairs of a row of n colors using 6 or fewer colors.

The programs for A320524, the canonical program `A320524.P17637620607097104473` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320524 has offset 1).

The definition of A320524 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A320524.P9011440849562782741

`(6^(n+1)-6^ceil((n+1)/2))/2`
-/

namespace A320524.P9011440849562782741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 ^ (n + 1) : ℚ) - (6 : ℚ) ^ (⌈(n + 1 : ℚ) / 2⌉ : ℤ)) / 2

end

end A320524.P9011440849562782741

namespace A320524

/-- `(6^(n+1)-6^ceil((n+1)/2))/2` -/
def P9011440849562782741.Spec : Prop :=
  ∀ n, P9011440849562782741.a n = (A320524 (n + 1) : ℚ)

end A320524

/-! ## A320524.P17637620607097104473

`A000400(n+1)-A056308(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A320524

/-- `A000400(n+1)-A056308(n+1)` -/
def P17637620607097104473.Spec : Prop :=
  ∀ n, P17637620607097104473.a n = A320524 (n + 1)

theorem P17637620607097104473.correct : P17637620607097104473.Spec := by
  intro n
  simp only [A320524, Nat.add_sub_cancel]

end A320524

/-! ## A320524.P7003277904196965843

`A056308(n+1)-A056452(n+1)`
-/

namespace A320524.P7003277904196965843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056308 (n + 1) - A056452 (n + 1)

end

end A320524.P7003277904196965843

namespace A320524

/-- `A056308(n+1)-A056452(n+1)` -/
def P7003277904196965843.Spec : Prop :=
  ∀ n, P7003277904196965843.a n = A320524 (n + 1)

end A320524

/-! ## A320524.P1105468782905227485

`record[Δ[A081341(A117910(n))]]`
-/

namespace A320524.P1105468782905227485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081341 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320524.P1105468782905227485

namespace A320524

/-- `record[Δ[A081341(A117910(n))]]` -/
def P1105468782905227485.Spec : Prop :=
  ∀ n, P1105468782905227485.a n = A320524 (n + 1)

end A320524

/-! ## A320524.P1681701738624283601

`A056488(2*n+1)-A056308(n+1)`
-/

namespace A320524.P1681701738624283601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056488 (2 * n + 1) - A056308 (n + 1)

end

end A320524.P1681701738624283601

namespace A320524

/-- `A056488(2*n+1)-A056308(n+1)` -/
def P1681701738624283601.Spec : Prop :=
  ∀ n, P1681701738624283601.a n = A320524 (n + 1)

end A320524

/-! ## A320524.P17173904717239680813

`A166023(2*n+3)-A056308(n+1)`
-/

namespace A320524.P17173904717239680813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166023 (2 * n + 3) - A056308 (n + 1)

end

end A320524.P17173904717239680813

namespace A320524

/-- `A166023(2*n+3)-A056308(n+1)` -/
def P17173904717239680813.Spec : Prop :=
  ∀ n, P17173904717239680813.a n = A320524 (n + 1)

end A320524

/-! ## A320524.P6121545909602273984

`A169604(n)-A169604(A004526(n))`
-/

namespace A320524.P6121545909602273984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169604 n - A169604 (A004526 n).toNat

end

end A320524.P6121545909602273984

namespace A320524

/-- `A169604(n)-A169604(A004526(n))` -/
def P6121545909602273984.Spec : Prop :=
  ∀ n, P6121545909602273984.a n = A320524 (n + 1)

end A320524

/-! ## A320524.P1693608884021691688

`A199318(n)-A199318(A004526(n))`
-/

namespace A320524.P1693608884021691688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199318 n - A199318 (A004526 n).toNat

end

end A320524.P1693608884021691688

namespace A320524

/-- `A199318(n)-A199318(A004526(n))` -/
def P1693608884021691688.Spec : Prop :=
  ∀ n, P1693608884021691688.a n = A320524 (n + 1)

end A320524

/-! ## A320524.P10557001780369567973

`A081341(n+1)-A081341(A004526(n)+1)`
-/

namespace A320524.P10557001780369567973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081341 (n + 1) - A081341 (A004526 n + 1).toNat

end

end A320524.P10557001780369567973

namespace A320524

/-- `A081341(n+1)-A081341(A004526(n)+1)` -/
def P10557001780369567973.Spec : Prop :=
  ∀ n, P10557001780369567973.a n = A320524 (n + 1)

end A320524

/-! ## A320524.P9239982345065947438

`A166027(2*(n+2))-A056308(n+1)`
-/

namespace A320524.P9239982345065947438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166027 (2 * (n + 2)) - A056308 (n + 1)

end

end A320524.P9239982345065947438

namespace A320524

/-- `A166027(2*(n+2))-A056308(n+1)` -/
def P9239982345065947438.Spec : Prop :=
  ∀ n, P9239982345065947438.a n = A320524 (n + 1)

end A320524

/-!
# A320525: Triangle read by rows: T(n,k) = number of chiral pairs of color patterns (set partitions) in a row of length n using exactly k colors (subsets).

The programs for A320525, there is no canonical definition to state claims against.
-/

/-! ## A320525.P1277138832874301145

`A008277(n+1)-A284949(n+1)`
-/

namespace A320525.P1277138832874301145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - A284949 (n + 1)

end

end A320525.P1277138832874301145

/-! ## A320525.P4404952438267645670

`A284949(n+1)-A304972(n+1)`
-/

namespace A320525.P4404952438267645670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284949 (n + 1) - A304972 (n + 1)

end

end A320525.P4404952438267645670

/-! ## A320525.P16048802035989845174

`(A008277(n+1)-A304972(n+1))/2`
-/

namespace A320525.P16048802035989845174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008277 (n + 1) - A304972 (n + 1) : ℚ) / 2

end

end A320525.P16048802035989845174

/-! ## A320525.P1081829673258256797

`A008278(A038722(n+1))-A284949(n+1)`
-/

namespace A320525.P1081829673258256797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (A038722 (n + 1)).toNat - A284949 (n + 1)

end

end A320525.P1081829673258256797

/-! ## A320525.P1904074158871407657

`A048993(A014132(n+1))-A284949(n+1)`
-/

namespace A320525.P1904074158871407657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A014132 (n + 1)).toNat - A284949 (n + 1)

end

end A320525.P1904074158871407657

/-! ## A320525.P9085900755508927978

`A136011(A056537(n+1))-A284949(n+1)`
-/

namespace A320525.P9085900755508927978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136011 (A056537 (n + 1)).toNat - A284949 (n + 1)

end

end A320525.P9085900755508927978

/-! ## A320525.P818785680356091143

`gcd(A075502(n+1), A075504(n+1))-A284949(n+1)`
-/

namespace A320525.P818785680356091143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A075502 (n + 1)) (A075504 (n + 1)) : ℤ) - A284949 (n + 1)

end

end A320525.P818785680356091143

/-!
# A320526: a(n) is the number of chiral pairs of color patterns (set partitions) in a row of length n using exactly 3 colors (subsets).

The programs for A320526, the canonical program `A320526.P9336775028650900254` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320526 has offset 1).

The definition of A320526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A320526.P9336775028650900254

`A000392(n+1)-A056327(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A320526

/-- `A000392(n+1)-A056327(n+1)` -/
def P9336775028650900254.Spec : Prop :=
  ∀ n, P9336775028650900254.a n = A320526 (n + 1)

theorem P9336775028650900254.correct : P9336775028650900254.Spec := by
  intro n
  simp only [A320526, Nat.add_sub_cancel]

end A320526

/-! ## A320526.P2279586432677531032

`A056327(n+1)-A304973(n+1)`
-/

namespace A320526.P2279586432677531032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056327 (n + 1) - A304973 (n + 1)

end

end A320526.P2279586432677531032

namespace A320526

/-- `A056327(n+1)-A304973(n+1)` -/
def P2279586432677531032.Spec : Prop :=
  ∀ n, P2279586432677531032.a n = A320526 (n + 1)

end A320526

/-! ## A320526.P10619848895755948465

`(A000392(n+1)-A304973(n+1))/2`
-/

namespace A320526.P10619848895755948465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000392 (n + 1) - A304973 (n + 1) : ℚ) / 2

end

end A320526.P10619848895755948465

namespace A320526

/-- `(A000392(n+1)-A304973(n+1))/2` -/
def P10619848895755948465.Spec : Prop :=
  ∀ n, P10619848895755948465.a n = (A320526 (n + 1) : ℚ)

end A320526

/-! ## A320526.P10342045572734725213

`A056509(2*n+1)-A056327(n+1)`
-/

namespace A320526.P10342045572734725213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056509 (2 * n + 1) - A056327 (n + 1)

end

end A320526.P10342045572734725213

namespace A320526

/-- `A056509(2*n+1)-A056327(n+1)` -/
def P10342045572734725213.Spec : Prop :=
  ∀ n, P10342045572734725213.a n = A320526 (n + 1)

end A320526

/-! ## A320526.P4109956962013824624

`A003462(n)-(A056327(n+1)+A000225(n))`
-/

namespace A320526.P4109956962013824624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n - (A056327 (n + 1) + A000225 n)

end

end A320526.P4109956962013824624

namespace A320526

/-- `A003462(n)-(A056327(n+1)+A000225(n))` -/
def P4109956962013824624.Spec : Prop :=
  ∀ n, P4109956962013824624.a n = A320526 (n + 1)

end A320526

/-! ## A320526.P4834629905079006719

`A320525(∑[n]+3)`
-/

namespace A320526.P4834629905079006719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320525 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A320526.P4834629905079006719

namespace A320526

/-- `A320525(∑[n]+3)` -/
def P4834629905079006719.Spec : Prop :=
  ∀ n, P4834629905079006719.a n = A320526 (n + 1)

end A320526

/-!
# A320527: Number of chiral pairs of color patterns (set partitions) in a row of length n using exactly 4 colors (subsets).

The programs for A320527, the canonical program `A320527.P1973516301187565761` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320527 has offset 1).

The definition of A320527 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304974, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A320527.P1973516301187565761

`A056328(n+1)-A304974(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A320527

/-- `A056328(n+1)-A304974(n+1)` -/
def P1973516301187565761.Spec : Prop :=
  ∀ n, P1973516301187565761.a n = A320527 (n + 1)

theorem P1973516301187565761.correct : P1973516301187565761.Spec := by
  intro n
  simp only [A320527, Nat.add_sub_cancel]

end A320527

/-! ## A320527.P362730739007440270

`A320934(n+1)-∑[A167993(n)]`
-/

namespace A320527.P362730739007440270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320934 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320527.P362730739007440270

namespace A320527

/-- `A320934(n+1)-∑[A167993(n)]` -/
def P362730739007440270.Spec : Prop :=
  ∀ n, P362730739007440270.a n = A320527 (n + 1)

end A320527

/-! ## A320527.P6864532963935049339

`A320525(A077169(n+1)-1)`
-/

namespace A320527.P6864532963935049339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320525 (A077169 (n + 1) - 1).toNat

end

end A320527.P6864532963935049339

namespace A320527

/-- `A320525(A077169(n+1)-1)` -/
def P6864532963935049339.Spec : Prop :=
  ∀ n, P6864532963935049339.a n = A320527 (n + 1)

end A320527

/-! ## A320527.P18130611169936988860

`A320525(A238531(n)+2+n)`
-/

namespace A320527.P18130611169936988860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320525 (A238531 n + 2 + (n : ℤ)).toNat

end

end A320527.P18130611169936988860

namespace A320527

/-- `A320525(A238531(n)+2+n)` -/
def P18130611169936988860.Spec : Prop :=
  ∀ n, P18130611169936988860.a n = A320527 (n + 1)

end A320527

/-! ## A320527.P3756850280747100978

`A320525(A133263(n)+A130130(n))`
-/

namespace A320527.P3756850280747100978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320525 (A133263 n + A130130 n).toNat

end

end A320527.P3756850280747100978

namespace A320527

/-- `A320525(A133263(n)+A130130(n))` -/
def P3756850280747100978.Spec : Prop :=
  ∀ n, P3756850280747100978.a n = A320527 (n + 1)

end A320527

/-! ## A320527.P14682283007470162634

`A320525(A155212(n)-A113127(n))`
-/

namespace A320527.P14682283007470162634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320525 (A155212 n - A113127 n).toNat

end

end A320527.P14682283007470162634

namespace A320527

/-- `A320525(A155212(n)-A113127(n))` -/
def P14682283007470162634.Spec : Prop :=
  ∀ n, P14682283007470162634.a n = A320527 (n + 1)

end A320527

/-! ## A320527.P4319219639360274232

`A320525(A157928(n)+A152950(n+1))`
-/

namespace A320527.P4319219639360274232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320525 (A157928 n + A152950 (n + 1)).toNat

end

end A320527.P4319219639360274232

namespace A320527

/-- `A320525(A157928(n)+A152950(n+1))` -/
def P4319219639360274232.Spec : Prop :=
  ∀ n, P4319219639360274232.a n = A320527 (n + 1)

end A320527

/-!
# A320528: Number of chiral pairs of color patterns (set partitions) in a row of length n using exactly 5 colors (subsets).

The programs for A320528, the canonical program `A320528.P16363146703979691685` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320528 has offset 1).

The definition of A320528 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056329, A304975, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A320528.P16363146703979691685

`A056329(n+1)-A304975(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A320528

/-- `A056329(n+1)-A304975(n+1)` -/
def P16363146703979691685.Spec : Prop :=
  ∀ n, P16363146703979691685.a n = A320528 (n + 1)

theorem P16363146703979691685.correct : P16363146703979691685.Spec := by
  intro n
  simp only [A320528, Nat.add_sub_cancel]

end A320528

/-! ## A320528.P14069969294816381243

`A320935(n+1)-A320934(n+1)`
-/

namespace A320528.P14069969294816381243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320935 (n + 1) - A320934 (n + 1)

end

end A320528.P14069969294816381243

namespace A320528

/-- `A320935(n+1)-A320934(n+1)` -/
def P14069969294816381243.Spec : Prop :=
  ∀ n, P14069969294816381243.a n = A320528 (n + 1)

end A320528

/-! ## A320528.P14304579142791337412

`A320525(A077169(n+1))`
-/

namespace A320528.P14304579142791337412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320525 (A077169 (n + 1)).toNat

end

end A320528.P14304579142791337412

namespace A320528

/-- `A320525(A077169(n+1))` -/
def P14304579142791337412.Spec : Prop :=
  ∀ n, P14304579142791337412.a n = A320528 (n + 1)

end A320528

/-! ## A320528.P5272761196724650473

`A320525(A184218(n+1)+6)`
-/

namespace A320528.P5272761196724650473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320525 (A184218 (n + 1) + 6).toNat

end

end A320528.P5272761196724650473

namespace A320528

/-- `A320525(A184218(n+1)+6)` -/
def P5272761196724650473.Spec : Prop :=
  ∀ n, P5272761196724650473.a n = A320528 (n + 1)

end A320528

/-! ## A320528.P4856126428123009186

`A320525(A167499(A163985(n)-n))`
-/

namespace A320528.P4856126428123009186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320525 (A167499 (A163985 n - (n : ℤ)).toNat).toNat

end

end A320528.P4856126428123009186

namespace A320528

/-- `A320525(A167499(A163985(n)-n))` -/
def P4856126428123009186.Spec : Prop :=
  ∀ n, P4856126428123009186.a n = A320528 (n + 1)

end A320528

/-!
# A320529: Number of chiral pairs of color patterns (set partitions) in a row of length n using exactly 6 colors (subsets).

The programs for A320529, there is no canonical definition to state claims against.
-/

/-! ## A320529.P15127051391972276130

`A056330(n+1)-A304976(n+1)`
-/

namespace A320529.P15127051391972276130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056330 (n + 1) - A304976 (n + 1)

end

end A320529.P15127051391972276130

/-! ## A320529.P5074859188154254888

`A320936(n+1)-A320935(n+1)`
-/

namespace A320529.P5074859188154254888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320936 (n + 1) - A320935 (n + 1)

end

end A320529.P5074859188154254888

/-! ## A320529.P16076807860584330500

`A056475(2*n+1)-A056330(n+1)`
-/

namespace A320529.P16076807860584330500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056475 (2 * n + 1) - A056330 (n + 1)

end

end A320529.P16076807860584330500

/-! ## A320529.P4493513206013837688

`A056512(2*n+1)-A056330(n+1)`
-/

namespace A320529.P4493513206013837688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056512 (2 * n + 1) - A056330 (n + 1)

end

end A320529.P4493513206013837688

/-! ## A320529.P12864511135150458536

`A320936(n+1)-(A056324(n+1)-A305751(n+1))`
-/

namespace A320529.P12864511135150458536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320936 (n + 1) - (A056324 (n + 1) - A305751 (n + 1))

end

end A320529.P12864511135150458536

/-! ## A320529.P13735079527760068213

`A320525(A184218(n+1)+7)`
-/

namespace A320529.P13735079527760068213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320525 (A184218 (n + 1) + 7).toNat

end

end A320529.P13735079527760068213

/-! ## A320529.P13353986570960235927

`A320525(A077169(n)+1+n)`
-/

namespace A320529.P13353986570960235927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320525 (A077169 n + 1 + (n : ℤ)).toNat

end

end A320529.P13353986570960235927

/-! ## A320529.P17226260921481345264

`A320525(A131209(n)+A077169(n))`
-/

namespace A320529.P17226260921481345264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320525 (A131209 n + A077169 n).toNat

end

end A320529.P17226260921481345264

/-! ## A320529.P3460092926799384193

`A320525(A326178(A077169(n)+n))`
-/

namespace A320529.P3460092926799384193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320525 (A326178 (A077169 n + (n : ℤ)).toNat).toNat

end

end A320529.P3460092926799384193

/-!
# A320530: T(n,k) = k^n + k^(n - 2)*n*(n - 1)*(k*(k - 1) + 1)/2 for 0 < k <= n and T(n,0) = A154272(n+1), square array read by antidiagonals upwards.

The programs for A320530, there is no canonical definition to state claims against.
-/

/-! ## A320530.P513649002209545482

`A075172(lcm(A316674(n), A331277(n)))`
-/

namespace A320530.P513649002209545482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075172 (Int.lcm (A316674 n) (A331277 n))

end

end A320530.P513649002209545482

/-! ## A320530.P13455913508998770146

`A117707(A090981(n))-A008624(A129687(n))`
-/

namespace A320530.P13455913508998770146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A090981 n).toNat - A008624 (A129687 n).toNat

end

end A320530.P13455913508998770146

/-!
# A320531: T(n,k) = n*k^(n - 1), k > 0, with T(n,0) = A063524(n), square array read by antidiagonals upwards.

The programs for A320531, there is no canonical definition to state claims against.
-/

/-! ## A320531.P10238394558554338374

`(C(comp[∑[n]]-n, 2)-(n+1))*A004248(A083920(n))`
-/

namespace A320531.P10238394558554338374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)) * A004248 (A083920 n).toNat

end

end A320531.P10238394558554338374

/-! ## A320531.P5647903169487094477

`A004248(A083920(n))*A025581(n)`
-/

namespace A320531.P5647903169487094477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A083920 n).toNat * A025581 n

end

end A320531.P5647903169487094477

/-! ## A320531.P6654797661780309348

`A003992(A056943(n+1))*A025581(n)`
-/

namespace A320531.P6654797661780309348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 (A056943 (n + 1)).toNat * A025581 n

end

end A320531.P6654797661780309348

/-! ## A320531.P5288173125020557028

`A004248(A083920(n))*A025660(n+1)`
-/

namespace A320531.P5288173125020557028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A083920 n).toNat * A025660 (n + 1)

end

end A320531.P5288173125020557028

/-! ## A320531.P12307927335122625411

`A004248(A083920(n))*A025669(n+1)`
-/

namespace A320531.P12307927335122625411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A083920 n).toNat * A025669 (n + 1)

end

end A320531.P12307927335122625411

/-! ## A320531.P13780620212192125280

`A004248(∑[1-A010054(n)])*A025581(n)`
-/

namespace A320531.P13780620212192125280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A025581 n

end

end A320531.P13780620212192125280

/-! ## A320531.P8421336050976128267

`A002262(n)^A025581(n+1)*A025581(n)`
-/

namespace A320531.P8421336050976128267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n : ℚ) ^ (A025581 (n + 1) : ℤ) * (A025581 n : ℚ)

end

end A320531.P8421336050976128267

/-! ## A320531.P2865549746580554436

`A004248(∑[1-A010054(n)])*A025669(n+1)`
-/

namespace A320531.P2865549746580554436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A025669 (n + 1)

end

end A320531.P2865549746580554436

/-! ## A320531.P13048569324684197685

`A001222(A130321(n))*A004248(A083920(n))`
-/

namespace A320531.P13048569324684197685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A130321 n).toNat * A004248 (A083920 n).toNat

end

end A320531.P13048569324684197685

/-! ## A320531.P16794585914008886803

`A001222(A130321(n))*A003992(A056943(n+1))`
-/

namespace A320531.P16794585914008886803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A130321 n).toNat * A003992 (A056943 (n + 1)).toNat

end

end A320531.P16794585914008886803

/-!
# A320532: MM-numbers of labeled hypergraphs with multiset edges and no singletons spanning an initial interval of positive integers.

The programs for A320532, there is no canonical definition to state claims against.
-/

/-! ## A320532.P3844940927952609749

`record[∏{p}[A320533(n+1), #]]`
-/

namespace A320532.P3844940927952609749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320533 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320532.P3844940927952609749

/-! ## A320532.P4140439064884805603

`record[A007947(A320533(n+1))]`
-/

namespace A320532.P4140439064884805603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A320533 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320532.P4140439064884805603

/-! ## A320532.P15927093139907804179

`filter[A320533(n+1), A008966(#)]`
-/

namespace A320532.P15927093139907804179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A320532.P15927093139907804179

/-! ## A320532.P1783450715354582184

`filter[A320533(n+1), A323154(#)]`
-/

namespace A320532.P1783450715354582184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A320532.P1783450715354582184

/-! ## A320532.P5586087736760552326

`filter[A320533(n+1), A323239(#)]`
-/

namespace A320532.P5586087736760552326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A320532.P5586087736760552326

/-!
# A320533: MM-numbers of labeled multi-hypergraphs with multiset edges and no singletons spanning an initial interval of positive integers.

The programs for A320533, there is no canonical definition to state claims against.
-/

/-! ## A320533.P1876566990209651744

`record[A360329(A320634(n+1))]`
-/

namespace A320533.P1876566990209651744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360329 (A320634 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320533.P1876566990209651744

/-! ## A320533.P6148590223436033805

`∩[A236217(n+1), A320634(n+1)]`
-/

namespace A320533.P6148590223436033805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320533.P6148590223436033805

/-! ## A320533.P15911669873759875827

`∩[A320628(n+1), A320634(n+1)]`
-/

namespace A320533.P15911669873759875827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320533.P15911669873759875827

/-! ## A320533.P6491092949768826005

`∩[A320629(n+1), A320634(n+1)]`
-/

namespace A320533.P6491092949768826005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320533.P6491092949768826005

/-! ## A320533.P16731052891012220415

`record[A051724(A356955(n+1))]`
-/

namespace A320533.P16731052891012220415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A356955 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320533.P16731052891012220415

/-!
# A320534: a(n) = ((1 + sqrt(4*n^2 + 1))^n + (1 - sqrt(4*n^2 + 1))^n)/2^n.

The programs for A320534, the canonical program `A320534.P6666006208391968301` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320534 has offset 0).

The definition of A320534 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A320534.P6666006208391968301

`((1+sqrt(4*n²+1))^n+(1-sqrt(4*n²+1))^n)/2^n`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A320534

/-- `((1+sqrt(4*n²+1))^n+(1-sqrt(4*n²+1))^n)/2^n` -/
def P6666006208391968301.Spec : Prop :=
  ∀ n, P6666006208391968301.a n = (A320534 n : ℝ)

end A320534

/-!
# A320535: Number of solutions to (x+1)^p - x^p == 1 (mod p^2) in the range 1 <= x <= p - 2, p = prime(n).

The programs for A320535, there is no canonical definition to state claims against.
-/

/-! ## A320535.P2035511416461170484

`A036690(n+1)%A135399(A283666(n+1))`
-/

namespace A320535.P2035511416461170484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036690 (n + 1)) (A135399 (A283666 (n + 1)).toNat)

end

end A320535.P2035511416461170484

/-! ## A320535.P6606791117055359481

`val(∏[(6*n+1)^4], p?[round(8*n/7)]²)`
-/

namespace A320535.P6606791117055359481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * n + 1) ^ 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2).toNat

end

end A320535.P6606791117055359481

/-! ## A320535.P13608030011059237556

`2%p?[A216817(n)]`
-/

namespace A320535.P13608030011059237556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A320535.P13608030011059237556

/-! ## A320535.P10750643209499693552

`and(2, A122993(2*n-ceil(n/2)))`
-/

namespace A320535.P10750643209499693552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A122993 ((2 * n : ℤ) - ⌈(n : ℚ) / 2⌉).toNat)

end

end A320535.P10750643209499693552

/-! ## A320535.P9187834988962964723

`(p?[abs(2*n-3)]+1)%A329377(2^n+2)`
-/

namespace A320535.P9187834988962964723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 3|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1) (A329377 (2 ^ n + 2))

end

end A320535.P9187834988962964723

/-!
# A320536: a(n) is the least cardinal of a partition of {1..n} into simple paths of its divisorial graph.

The programs for A320536, there is no canonical definition to state claims against.
-/

/-! ## A320536.P14165422870653517426

`∑[A115360(A031285(n)+1)]`
-/

namespace A320536.P14165422870653517426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115360 (A031285 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320536.P14165422870653517426

/-! ## A320536.P14291488196525722520

`A103221(lt[A111332(n), 2^n-2])`
-/

namespace A320536.P14291488196525722520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111332 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A320536.P14291488196525722520

/-! ## A320536.P10137781140980460760

`A103221(lt[A329632(n), A187211(n)])`
-/

namespace A320536.P10137781140980460760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329632 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A320536.P10137781140980460760

/-! ## A320536.P17605059550257345511

`or(A008615(n+4), A037011(A085030(3*n+5)!))`
-/

namespace A320536.P17605059550257345511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008615 (n + 4)) (A037011 (Nat.factorial (A085030 (3 * n + 5)).toNat))

end

end A320536.P17605059550257345511

/-!
# A320537: Square array read by antidiagonals in which T(n,k) is the n-th even number j with the property that the symmetric representation of sigma(j) has k parts.

The programs for A320537, there is no canonical definition to state claims against.
-/

/-! ## A320537.P1368028234456538716

`2*A381431(A097753(n+1))`
-/

namespace A320537.P1368028234456538716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A381431 (A097753 (n + 1)).toNat

end

end A320537.P1368028234456538716

/-!
# A320539: (1/2) * number of ways to select 3 distinct collinear points from a rectangle of grid points with side lengths j and k, written as triangle T(j,k), j<=k.

The programs for A320539, there is no canonical definition to state claims against.
-/

/-! ## A320539.P17718334692935447949

`A004526(A334704(comp[∑[n]]+1))`
-/

namespace A320539.P17718334692935447949
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A334704 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A320539.P17718334692935447949

/-!
# A320540: (1/4) * number of ways to select 3 distinct collinear points from a square of grid points with side length n.

The programs for A320540, there is no canonical definition to state claims against.
-/

/-! ## A320540.P12377853120757378555

`A000938(n+2)/4`
-/

namespace A320540.P12377853120757378555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000938 (n + 2) : ℚ) / 4

end

end A320540.P12377853120757378555

/-! ## A320540.P14948524505590912746

`record[A000938(A133310(n))/4]`
-/

namespace A320540.P14948524505590912746
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000938 (A133310 n).toNat : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320540.P14948524505590912746

/-! ## A320540.P14164783378344544102

`record[A000938(A193592(n))/4]`
-/

namespace A320540.P14164783378344544102
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000938 (A193592 n).toNat : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320540.P14164783378344544102

/-! ## A320540.P17185677138624942452

`record[A000938(A137734(n))/4]`
-/

namespace A320540.P17185677138624942452
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000938 (A137734 n).toNat : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320540.P17185677138624942452

/-! ## A320540.P3617097343176826743

`A110962(A000938(n+2))`
-/

namespace A320540.P3617097343176826743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A000938 (n + 2)).toNat

end

end A320540.P3617097343176826743

/-!
# A320541: Triangle read by rows: T(n,k) (1<=k<=n) = Sum_{i=1..n, j=1..k, gcd(i,j)=1} (n+1-i)*(k+1-j).

The programs for A320541, there is no canonical definition to state claims against.
-/

/-! ## A320541.P2677735716350884591

`(A332371(n+2)-A154681(n+1))/2+1`
-/

namespace A320541.P2677735716350884591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332371 (n + 2) - A154681 (n + 1) : ℚ) / 2 + 1

end

end A320541.P2677735716350884591

/-! ## A320541.P4067327576745707147

`A008619(A332371(n+2)-A154681(n+1))`
-/

namespace A320541.P4067327576745707147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A332371 (n + 2) - A154681 (n + 1)).toNat

end

end A320541.P4067327576745707147

/-! ## A320541.P8095785052605743098

`A028242(A332371(n+2)-A154681(n+1))`
-/

namespace A320541.P8095785052605743098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A332371 (n + 2) - A154681 (n + 1)).toNat

end

end A320541.P8095785052605743098

/-! ## A320541.P8418815003183539767

`A052938(A332371(n+2)-A154681(n+1))`
-/

namespace A320541.P8418815003183539767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A332371 (n + 2) - A154681 (n + 1)).toNat

end

end A320541.P8418815003183539767

/-! ## A320541.P5796083975458858443

`A114999(A245300(n)+1)`
-/

namespace A320541.P5796083975458858443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114999 (A245300 n + 1).toNat

end

end A320541.P5796083975458858443

/-!
# A320544: (1/8) * number of ways to select 3 distinct points forming a triangle of unsigned area = 1 from a square of grid points with side length n.

The programs for A320544, there is no canonical definition to state claims against.
-/

/-! ## A320544.P531160069758466763

`A320543(∑[n+1])/4`
-/

namespace A320544.P531160069758466763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320543 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4

end

end A320544.P531160069758466763

/-! ## A320544.P3731378404405610528

`record[A110962(A320543(n+1))]`
-/

namespace A320544.P3731378404405610528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A320543 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320544.P3731378404405610528

/-! ## A320544.P17756347461076236479

`A002265(A320543(C(n+2, 2)))`
-/

namespace A320544.P17756347461076236479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A320543 (Nat.choose (n + 2) 2)).toNat

end

end A320544.P17756347461076236479

/-! ## A320544.P6408676894839741775

`A002265(A320543(Δ[lcm(n+1, n*(n+2))/6]))`
-/

namespace A320544.P6408676894839741775
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n * (n + 2)) : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A320543 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat).toNat

end

end A320544.P6408676894839741775

/-!
# A320545: Number of partitions of n into parts of exactly three sorts which are introduced in ascending order such that sorts of adjacent parts are different.

The programs for A320545, there is no canonical definition to state claims against.
-/

/-! ## A320545.P3483293597408411781

`A262445(n+3)/6`
-/

namespace A320545.P3483293597408411781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262445 (n + 3) : ℚ) / 6

end

end A320545.P3483293597408411781

/-! ## A320545.P10827768323935181745

`A262495(A167614(n+2))`
-/

namespace A320545.P10827768323935181745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A167614 (n + 2)).toNat

end

end A320545.P10827768323935181745

/-! ## A320545.P179992803096008260

`A262495(A052905(n)+8)`
-/

namespace A320545.P179992803096008260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A052905 n + 8).toNat

end

end A320545.P179992803096008260

/-! ## A320545.P3304075811058636002

`A262495(eq[3, A002262(n)])`
-/

namespace A320545.P3304075811058636002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320545.P3304075811058636002

/-! ## A320545.P15804100529820272993

`A262495(A000124(n+3)+2)`
-/

namespace A320545.P15804100529820272993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A000124 (n + 3) + 2).toNat

end

end A320545.P15804100529820272993

/-! ## A320545.P5845109813742809076

`A262495(A166136(n+2)-3)`
-/

namespace A320545.P5845109813742809076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A166136 (n + 2) - 3).toNat

end

end A320545.P5845109813742809076

/-! ## A320545.P12667762655483416093

`record[A262495(∑[A233583(n+1)])]`
-/

namespace A320545.P12667762655483416093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320545.P12667762655483416093

/-! ## A320545.P3757925376174225493

`record[A262495(A145018(n+2)-1)]`
-/

namespace A320545.P3757925376174225493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A145018 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320545.P3757925376174225493

/-! ## A320545.P14094919993200867478

`record[A262495(A027691(n+1)/2)]`
-/

namespace A320545.P14094919993200867478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (SequenceMachineLib.roundAway ((A027691 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320545.P14094919993200867478

/-! ## A320545.P6548659116144348951

`A262495(eq[1, A144328(n+1)-2])`
-/

namespace A320545.P6548659116144348951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320545.P6548659116144348951

/-!
# A320546: Number of partitions of n into parts of exactly four sorts which are introduced in ascending order such that sorts of adjacent parts are different.

The programs for A320546, there is no canonical definition to state claims against.
-/

/-! ## A320546.P11465819388331943739

`A262495(A145018(n+5))`
-/

namespace A320546.P11465819388331943739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A145018 (n + 5)).toNat

end

end A320546.P11465819388331943739

/-! ## A320546.P10366840693656510948

`A262495(eq[4, A002262(n)])`
-/

namespace A320546.P10366840693656510948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320546.P10366840693656510948

/-! ## A320546.P10805230740077454522

`record[A262495(A000124(n)+3)]`
-/

namespace A320546.P10805230740077454522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A000124 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320546.P10805230740077454522

/-! ## A320546.P11010620696888352672

`A262495(A000124(n+4)+3)`
-/

namespace A320546.P11010620696888352672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A000124 (n + 4) + 3).toNat

end

end A320546.P11010620696888352672

/-! ## A320546.P3846432778075650921

`A262495(eq[2, A144328(n+1)-2])`
-/

namespace A320546.P3846432778075650921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320546.P3846432778075650921

/-! ## A320546.P11790454819806706849

`A262495(eq[2, A144328(n+1)/2])`
-/

namespace A320546.P11790454819806706849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A320546.P11790454819806706849

/-! ## A320546.P6409759914800546898

`record[A262495(A145018(A159481(n)))]`
-/

namespace A320546.P6409759914800546898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A145018 (A159481 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320546.P6409759914800546898

/-! ## A320546.P4801846756775072140

`record[A262495(A328399(A027691(n)))]`
-/

namespace A320546.P4801846756775072140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A328399 (A027691 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320546.P4801846756775072140

/-! ## A320546.P10012532958979694893

`A262495(A288938(A034856(n+2)+4))`
-/

namespace A320546.P10012532958979694893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A288938 (A034856 (n + 2) + 4).toNat).toNat

end

end A320546.P10012532958979694893

/-!
# A320547: Number of partitions of n into parts of exactly five sorts which are introduced in ascending order such that sorts of adjacent parts are different.

The programs for A320547, there is no canonical definition to state claims against.
-/

/-! ## A320547.P1645605139944691578

`A262495(A167499(n+4))`
-/

namespace A320547.P1645605139944691578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A167499 (n + 4)).toNat

end

end A320547.P1645605139944691578

/-! ## A320547.P16120488333473507316

`A262495(eq[5, A002262(n)])`
-/

namespace A320547.P16120488333473507316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320547.P16120488333473507316

/-! ## A320547.P290469832876915289

`A262495(A166136(n+4)-1)`
-/

namespace A320547.P290469832876915289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A166136 (n + 4) - 1).toNat

end

end A320547.P290469832876915289

/-! ## A320547.P1744521433601864856

`A262495(A167614(n+4)+2)`
-/

namespace A320547.P1744521433601864856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A167614 (n + 4) + 2).toNat

end

end A320547.P1744521433601864856

/-! ## A320547.P6670058123802431027

`A262495(eq[6, A002260(n+1)])`
-/

namespace A320547.P6670058123802431027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320547.P6670058123802431027

/-!
# A320548: Number of partitions of n into parts of exactly six sorts which are introduced in ascending order such that sorts of adjacent parts are different.

The programs for A320548, there is no canonical definition to state claims against.
-/

/-! ## A320548.P18324575331619304326

`A262495(A166136(n+5))`
-/

namespace A320548.P18324575331619304326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A166136 (n + 5)).toNat

end

end A320548.P18324575331619304326

/-! ## A320548.P6606971321635572589

`A262495(eq[6, A002262(n)])`
-/

namespace A320548.P6606971321635572589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320548.P6606971321635572589

/-! ## A320548.P9213217455325233458

`A262495(A167499(n+5)+1)`
-/

namespace A320548.P9213217455325233458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A167499 (n + 5) + 1).toNat

end

end A320548.P9213217455325233458

/-! ## A320548.P9887704639176641712

`A262495(A000217(n+6)+6)`
-/

namespace A320548.P9887704639176641712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A000217 (n + 6) + 6).toNat

end

end A320548.P9887704639176641712

/-! ## A320548.P2206583667844592395

`A262495(eq[6, A144328(n+1)])`
-/

namespace A320548.P2206583667844592395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320548.P2206583667844592395

/-! ## A320548.P17760757602224199020

`A262495(eq[7, A002260(n+1)])`
-/

namespace A320548.P17760757602224199020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320548.P17760757602224199020

/-!
# A320549: Number of partitions of n into parts of exactly seven sorts which are introduced in ascending order such that sorts of adjacent parts are different.

The programs for A320549, there is no canonical definition to state claims against.
-/

/-! ## A320549.P1715183703590091496

`A262495(eq[7, A002262(n)])`
-/

namespace A320549.P1715183703590091496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320549.P1715183703590091496

/-! ## A320549.P6311663774451452166

`A262495(A000096(n+6)+8)`
-/

namespace A320549.P6311663774451452166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A000096 (n + 6) + 8).toNat

end

end A320549.P6311663774451452166

/-! ## A320549.P1792693423688636777

`A262495(eq[7, A144328(n+1)])`
-/

namespace A320549.P1792693423688636777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320549.P1792693423688636777

/-! ## A320549.P9250995745580370478

`A262495(eq[8, A002260(n+1)])`
-/

namespace A320549.P9250995745580370478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320549.P9250995745580370478

/-! ## A320549.P14709992170454510445

`A262495(A046691(n+6)-(n-3))`
-/

namespace A320549.P14709992170454510445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A046691 (n + 6) - ((n : ℤ) - 3)).toNat

end

end A320549.P14709992170454510445

/-! ## A320549.P4264486245666959801

`A262495(A008486(n+8)+A000124(n+4))`
-/

namespace A320549.P4264486245666959801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A008486 (n + 8) + A000124 (n + 4)).toNat

end

end A320549.P4264486245666959801

/-!
# A320550: Number of partitions of n into parts of exactly eight sorts which are introduced in ascending order such that sorts of adjacent parts are different.

The programs for A320550, there is no canonical definition to state claims against.
-/

/-! ## A320550.P10409046669767959675

`A262495(eq[8, A002262(n)])`
-/

namespace A320550.P10409046669767959675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320550.P10409046669767959675

/-! ## A320550.P5476263385450562520

`A262495(A000124(n+8)+7)`
-/

namespace A320550.P5476263385450562520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A000124 (n + 8) + 7).toNat

end

end A320550.P5476263385450562520

/-! ## A320550.P18407599676153030555

`A262495(A000096(n+7)+9)`
-/

namespace A320550.P18407599676153030555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A000096 (n + 7) + 9).toNat

end

end A320550.P18407599676153030555

/-! ## A320550.P18377120091063243421

`A262495(A000217(n+8)+8)`
-/

namespace A320550.P18377120091063243421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A000217 (n + 8) + 8).toNat

end

end A320550.P18377120091063243421

/-! ## A320550.P6477863592328229862

`A262495(eq[8, A144328(n+1)])`
-/

namespace A320550.P6477863592328229862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320550.P6477863592328229862

/-! ## A320550.P7523795687711245475

`A262495(eq[9, A002260(n+1)])`
-/

namespace A320550.P7523795687711245475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320550.P7523795687711245475

/-! ## A320550.P13355108801215946990

`A262495(A161680(n+10)-(n+1))`
-/

namespace A320550.P13355108801215946990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A161680 (n + 10) - (n + 1 : ℤ)).toNat

end

end A320550.P13355108801215946990

/-!
# A320551: Number of partitions of n into parts of exactly nine sorts which are introduced in ascending order such that sorts of adjacent parts are different.

The programs for A320551, there is no canonical definition to state claims against.
-/

/-! ## A320551.P15592301734865468493

`A262495(eq[9, A002262(n)])`
-/

namespace A320551.P15592301734865468493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320551.P15592301734865468493

/-! ## A320551.P4809162954741823477

`A262495(A000096(n+8)+10)`
-/

namespace A320551.P4809162954741823477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A000096 (n + 8) + 10).toNat

end

end A320551.P4809162954741823477

/-! ## A320551.P15159931726365383555

`A262495(eq[9, A144328(n+1)])`
-/

namespace A320551.P15159931726365383555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320551.P15159931726365383555

/-! ## A320551.P9195391901138421064

`A262495(eq[10, A002260(n+1)])`
-/

namespace A320551.P9195391901138421064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320551.P9195391901138421064

/-! ## A320551.P1867691275167232023

`A262495(A161680(n+11)-(n+1))`
-/

namespace A320551.P1867691275167232023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A161680 (n + 11) - (n + 1 : ℤ)).toNat

end

end A320551.P1867691275167232023

/-!
# A320552: Number of partitions of n into parts of exactly ten sorts which are introduced in ascending order such that sorts of adjacent parts are different.

The programs for A320552, there is no canonical definition to state claims against.
-/

/-! ## A320552.P8588750070696936585

`A262495(eq[10, A002262(n)])`
-/

namespace A320552.P8588750070696936585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320552.P8588750070696936585

/-! ## A320552.P4370094800599840522

`A262495(A000124(n+10)+9)`
-/

namespace A320552.P4370094800599840522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A000124 (n + 10) + 9).toNat

end

end A320552.P4370094800599840522

/-! ## A320552.P12172618879595352983

`A262495(A000217(n+10)+10)`
-/

namespace A320552.P12172618879595352983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (A000217 (n + 10) + 10).toNat

end

end A320552.P12172618879595352983

/-! ## A320552.P13475999105011364480

`A262495(eq[10, A144328(n+1)])`
-/

namespace A320552.P13475999105011364480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320552.P13475999105011364480

/-! ## A320552.P3329925111930959190

`A262495(eq[11, A002260(n+1)])`
-/

namespace A320552.P3329925111930959190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320552.P3329925111930959190

/-!
# A320553: Number of set partitions of [n] such that for each block b the smallest integer interval containing b has at most three elements and for at least one block c the smallest integer interval containing c has exactly three elements.

The programs for A320553, the canonical program `A320553.P17690576578618424991` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320553 has offset 3).

The definition of A320553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A320553.P17690576578618424991

`A129847(n+3)-A000045(n+4)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A320553

/-- `A129847(n+3)-A000045(n+4)` -/
def P17690576578618424991.Spec : Prop :=
  ∀ n, P17690576578618424991.a n = A320553 (n + 3)

theorem P17690576578618424991.correct : P17690576578618424991.Spec := by
  intro n
  simp only [A320553, Nat.add_sub_cancel]

end A320553

/-! ## A320553.P7307611802090269120

`A129847(n+3)-Δ[A000071(n+5)]`
-/

namespace A320553.P7307611802090269120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129847 (n + 3) - (f1 (n + 1) - f1 n)

end

end A320553.P7307611802090269120

namespace A320553

/-- `A129847(n+3)-Δ[A000071(n+5)]` -/
def P7307611802090269120.Spec : Prop :=
  ∀ n, P7307611802090269120.a n = A320553 (n + 3)

end A320553

/-! ## A320553.P538701772858561634

`A129847(n+3)-(A000071(n+4)+1)`
-/

namespace A320553.P538701772858561634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129847 (n + 3) - (A000071 (n + 4) + 1)

end

end A320553.P538701772858561634

namespace A320553

/-- `A129847(n+3)-(A000071(n+4)+1)` -/
def P538701772858561634.Spec : Prop :=
  ∀ n, P538701772858561634.a n = A320553 (n + 3)

end A320553

/-! ## A320553.P13842721526657401072

`A276727(∑[n+3]+6)`
-/

namespace A320553.P13842721526657401072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A320553.P13842721526657401072

namespace A320553

/-- `A276727(∑[n+3]+6)` -/
def P13842721526657401072.Spec : Prop :=
  ∀ n, P13842721526657401072.a n = A320553 (n + 3)

end A320553

/-! ## A320553.P13567611628811125688

`or(char[1], A276727(A167614(n+2)))`
-/

namespace A320553.P13567611628811125688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A276727 (A167614 (n + 2)).toNat)

end

end A320553.P13567611628811125688

namespace A320553

/-- `or(char[1], A276727(A167614(n+2)))` -/
def P13567611628811125688.Spec : Prop :=
  ∀ n, P13567611628811125688.a n = A320553 (n + 3)

end A320553

/-!
# A320554: Number of set partitions of [n] such that for each block b the smallest integer interval containing b has at most four elements and for at least one block c the smallest integer interval containing c has exactly four elements.

The programs for A320554, there is no canonical definition to state claims against.
-/

/-! ## A320554.P5183757663054945472

`A276720(n+4)-A129847(n+4)`
-/

namespace A320554.P5183757663054945472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276720 (n + 4) - A129847 (n + 4)

end

end A320554.P5183757663054945472

/-! ## A320554.P15401212223594904875

`A276727(A155212(n)+12)`
-/

namespace A320554.P15401212223594904875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (A155212 n + 12).toNat

end

end A320554.P15401212223594904875

/-! ## A320554.P16446118269840582115

`A276727(A056000(n)+14)`
-/

namespace A320554.P16446118269840582115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (A056000 n + 14).toNat

end

end A320554.P16446118269840582115

/-! ## A320554.P13171845255176194497

`A276727(eq[3, A141169(n)])`
-/

namespace A320554.P13171845255176194497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320554.P13171845255176194497

/-! ## A320554.P4999887482759803816

`A276727(eq[4, A002262(n)])`
-/

namespace A320554.P4999887482759803816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320554.P4999887482759803816

/-!
# A320555: Number of set partitions of [n] such that for each block b the smallest integer interval containing b has at most five elements and for at least one block c the smallest integer interval containing c has exactly five elements.

The programs for A320555, there is no canonical definition to state claims against.
-/

/-! ## A320555.P11779720505651347420

`A276721(n+5)-A276720(n+5)`
-/

namespace A320555.P11779720505651347420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276721 (n + 5) - A276720 (n + 5)

end

end A320555.P11779720505651347420

/-! ## A320555.P869092759268670175

`A276727(A167499(n+4))`
-/

namespace A320555.P869092759268670175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (A167499 (n + 4)).toNat

end

end A320555.P869092759268670175

/-! ## A320555.P13347700934899946154

`A276727(eq[5, A002262(n)])`
-/

namespace A320555.P13347700934899946154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320555.P13347700934899946154

/-! ## A320555.P3564484009603293924

`A276727(eq[5, A133233(n)])`
-/

namespace A320555.P3564484009603293924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320555.P3564484009603293924

/-! ## A320555.P2072254483095067607

`A276727(eq[5, A141169(n)])`
-/

namespace A320555.P2072254483095067607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320555.P2072254483095067607

/-!
# A320556: Number of set partitions of [n] such that for each block b the smallest integer interval containing b has at most six elements and for at least one block c the smallest integer interval containing c has exactly six elements.

The programs for A320556, there is no canonical definition to state claims against.
-/

/-! ## A320556.P13722083928403539058

`A276722(n+6)-A276721(n+6)`
-/

namespace A320556.P13722083928403539058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276722 (n + 6) - A276721 (n + 6)

end

end A320556.P13722083928403539058

/-! ## A320556.P11119246270324195763

`A276727(eq[6, A002262(n)])`
-/

namespace A320556.P11119246270324195763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320556.P11119246270324195763

/-! ## A320556.P5504766731249691435

`A276727(eq[8, A141169(n)])`
-/

namespace A320556.P5504766731249691435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320556.P5504766731249691435

/-! ## A320556.P4907016813650065177

`A276727(eq[64, A059268(n)])`
-/

namespace A320556.P4907016813650065177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320556.P4907016813650065177

/-! ## A320556.P660932711999627289

`A276727(A167487(n+5)-1)`
-/

namespace A320556.P660932711999627289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (A167487 (n + 5) - 1).toNat

end

end A320556.P660932711999627289

/-!
# A320557: Number of set partitions of [n] such that for each block b the smallest integer interval containing b has at most seven elements and for at least one block c the smallest integer interval containing c has exactly seven elements.

The programs for A320557, there is no canonical definition to state claims against.
-/

/-! ## A320557.P16266722573133503879

`A276723(n+7)-A276722(n+7)`
-/

namespace A320557.P16266722573133503879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276723 (n + 7) - A276722 (n + 7)

end

end A320557.P16266722573133503879

/-! ## A320557.P5779424138838248540

`A276727(C(n+9, 2)-(n+1))`
-/

namespace A320557.P5779424138838248540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (Nat.choose (n + 9) 2 - (n + 1))

end

end A320557.P5779424138838248540

/-! ## A320557.P17816005256507569255

`A276727(A167487(n+6))`
-/

namespace A320557.P17816005256507569255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (A167487 (n + 6)).toNat

end

end A320557.P17816005256507569255

/-! ## A320557.P9396943102280770490

`A276727(eq[7, A002262(n)])`
-/

namespace A320557.P9396943102280770490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320557.P9396943102280770490

/-! ## A320557.P13172229463525329951

`A276727(eq[7, A133233(n)])`
-/

namespace A320557.P13172229463525329951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320557.P13172229463525329951

/-!
# A320558: Number of set partitions of [n] such that for each block b the smallest integer interval containing b has at most eight elements and for at least one block c the smallest integer interval containing c has exactly eight elements.

The programs for A320558, there is no canonical definition to state claims against.
-/

/-! ## A320558.P14151631493938315361

`A276724(n+8)-A276723(n+8)`
-/

namespace A320558.P14151631493938315361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276724 (n + 8) - A276723 (n + 8)

end

end A320558.P14151631493938315361

/-! ## A320558.P18177416822714478694

`A276727(eq[8, A002262(n)])`
-/

namespace A320558.P18177416822714478694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320558.P18177416822714478694

/-! ## A320558.P14762672223961801625

`A276727(A167499(n+7)+3)`
-/

namespace A320558.P14762672223961801625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (A167499 (n + 7) + 3).toNat

end

end A320558.P14762672223961801625

/-! ## A320558.P10465584465220711759

`A276727(A133263(n+8)+6)`
-/

namespace A320558.P10465584465220711759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (A133263 (n + 8) + 6).toNat

end

end A320558.P10465584465220711759

/-!
# A320559: Number of set partitions of [n] such that for each block b the smallest integer interval containing b has at most nine elements and for at least one block c the smallest integer interval containing c has exactly nine elements.

The programs for A320559, there is no canonical definition to state claims against.
-/

/-! ## A320559.P8337259922919991398

`A276725(n+9)-A276724(n+9)`
-/

namespace A320559.P8337259922919991398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276725 (n + 9) - A276724 (n + 9)

end

end A320559.P8337259922919991398

/-! ## A320559.P445290259667849937

`A276727(eq[9, A002262(n)])`
-/

namespace A320559.P445290259667849937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320559.P445290259667849937

/-! ## A320559.P3590719019104510096

`A276727(eq[9, A133233(n)])`
-/

namespace A320559.P3590719019104510096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320559.P3590719019104510096

/-! ## A320559.P13416414025284204057

`A276727(A000217(n+9)+9)`
-/

namespace A320559.P13416414025284204057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (A000217 (n + 9) + 9).toNat

end

end A320559.P13416414025284204057

/-!
# A320560: Number of set partitions of [n] such that for each block b the smallest integer interval containing b has at most ten elements and for at least one block c the smallest integer interval containing c has exactly ten elements.

The programs for A320560, there is no canonical definition to state claims against.
-/

/-! ## A320560.P992348900148180763

`A276726(n+10)-A276725(n+10)`
-/

namespace A320560.P992348900148180763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276726 (n + 10) - A276725 (n + 10)

end

end A320560.P992348900148180763

/-! ## A320560.P5334386124615868727

`A276727(eq[10, A002262(n)])`
-/

namespace A320560.P5334386124615868727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320560.P5334386124615868727

/-! ## A320560.P17375570680605189646

`A276727(A000124(n+10)+9)`
-/

namespace A320560.P17375570680605189646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (A000124 (n + 10) + 9).toNat

end

end A320560.P17375570680605189646

/-! ## A320560.P7174352086644419264

`A276727(eq[10, A144328(n+1)])`
-/

namespace A320560.P7174352086644419264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320560.P7174352086644419264

/-!
# A320561: Irregular table read by rows: T(n,k) = (2*k+1)^(2*k+1) mod 2^n, 0 <= k <= 2^(n-1) - 1.

The programs for A320561, there is no canonical definition to state claims against.
-/

/-! ## A320561.P13368798052509588908

`A320562(n+1)+A321905(n+1)-A321902(n+1)`
-/

namespace A320561.P13368798052509588908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320562 (n + 1) + (A321905 (n + 1) - A321902 (n + 1))

end

end A320561.P13368798052509588908

/-! ## A320561.P9226202451455419730

`A321905(n+1)+A321901(n+2)-A321906(n+2)`
-/

namespace A320561.P9226202451455419730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321905 (n + 1) + (A321901 (n + 2) - A321906 (n + 2))

end

end A320561.P9226202451455419730

/-! ## A320561.P18385476557170157225

`A321905(n+1)+A321904(n+2)-A321903(n+2)`
-/

namespace A320561.P18385476557170157225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321905 (n + 1) + (A321904 (n + 2) - A321903 (n + 2))

end

end A320561.P18385476557170157225

/-! ## A320561.P6586165647561397955

`A321905(n+1)%A059897(A205072(n+1))`
-/

namespace A320561.P6586165647561397955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321905 (n + 1)) (A059897 (A205072 (n + 1)).toNat)

end

end A320561.P6586165647561397955

/-! ## A320561.P1614132245824191563

`A320562(n+1)%A110024(n+1)`
-/

namespace A320561.P1614132245824191563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320562 (n + 1)) (A110024 (n + 1))

end

end A320561.P1614132245824191563

/-!
# A320562: Irregular table read by rows: T(n,k) is the smallest m such that m^m == 2*k + 1 (mod 2^n), 0 <= k <= 2^(n-1) - 1.

The programs for A320562, there is no canonical definition to state claims against.
-/

/-! ## A320562.P10337783016899435451

`A320561(n+1)+A321902(n+1)-A321905(n+1)`
-/

namespace A320562.P10337783016899435451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320561 (n + 1) + (A321902 (n + 1) - A321905 (n + 1))

end

end A320562.P10337783016899435451

/-! ## A320562.P2029847308908018065

`A320561(n+1)+(A321902(n+1)-A320561(n+1))*A000035(n)`
-/

namespace A320562.P2029847308908018065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320561 (n + 1) + (A321902 (n + 1) - A320561 (n + 1)) * A000035 n

end

end A320562.P2029847308908018065

/-! ## A320562.P1200619202945467974

`A320561(n+1)+(A321902(n+1)-A320561(n+1))*A007814(n+1)`
-/

namespace A320562.P1200619202945467974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320561 (n + 1) + (A321902 (n + 1) - A320561 (n + 1)) * A007814 (n + 1)

end

end A320562.P1200619202945467974

/-! ## A320562.P4218783563990546316

`A321902(n+1)+A321901(n+2)-A321906(n+2)`
-/

namespace A320562.P4218783563990546316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321902 (n + 1) + (A321901 (n + 2) - A321906 (n + 2))

end

end A320562.P4218783563990546316

/-! ## A320562.P16174383626025788764

`A321902(n+1)+A321904(n+2)-A321903(n+2)`
-/

namespace A320562.P16174383626025788764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321902 (n + 1) + (A321904 (n + 2) - A321903 (n + 2))

end

end A320562.P16174383626025788764

/-!
# A320563: Expansion of Product_{k>=1} 1/(1 - x^k/(1 - x)^k)^k.

The programs for A320563, there is no canonical definition to state claims against.
-/

/-! ## A320563.P9752142356219571597

`abs(Δ[A294500(abs(1-n))])`
-/

namespace A320563.P9752142356219571597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294500 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A320563.P9752142356219571597

/-! ## A320563.P13995367092038994061

`A052536(n)-A000196(A122737(n+1))`
-/

namespace A320563.P13995367092038994061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 n - A000196 (A122737 (n + 1)).toNat

end

end A320563.P13995367092038994061

/-! ## A320563.P7712407695030642403

`A147610(A206374(n))+A006645(n)`
-/

namespace A320563.P7712407695030642403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147610 (A206374 n).toNat + A006645 n

end

end A320563.P7712407695030642403

/-!
# A320564: Expansion of Product_{k>=1} (1 + x^k/(1 - x)^k)^k.

The programs for A320564, there is no canonical definition to state claims against.
-/

/-! ## A320564.P11002873490841735538

`abs(Δ[A294502(abs(1-n))])`
-/

namespace A320564.P11002873490841735538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294502 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A320564.P11002873490841735538

/-! ## A320564.P2677825984600170422

`A077995(n)-A080764(A098289(n+3))`
-/

namespace A320564.P2677825984600170422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077995 n - A080764 (A098289 (n + 3)).toNat

end

end A320564.P2677825984600170422

/-! ## A320564.P13659291481643397249

`A318229(n+2)-n`
-/

namespace A320564.P13659291481643397249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318229 (n + 2) - (n : ℤ)

end

end A320564.P13659291481643397249

/-!
# A320566: Expansion of e.g.f. exp(x) * Product_{k>=1} 1/(1 - x^k/k!).

The programs for A320566, there is no canonical definition to state claims against.
-/

/-! ## A320566.P8353349161641395801

`record[A396085(n+2)]`
-/

namespace A320566.P8353349161641395801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396085 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320566.P8353349161641395801

/-! ## A320566.P6660073079559695282

`A396085(4*n+2)`
-/

namespace A320566.P6660073079559695282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396085 (4 * n + 2)

end

end A320566.P6660073079559695282

/-! ## A320566.P13619166358868244789

`A152536(Δ[n²])`
-/

namespace A320566.P13619166358868244789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152536 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A320566.P13619166358868244789

/-! ## A320566.P6008369939904453773

`record[A152536(lcm(8, n)/8)]`
-/

namespace A320566.P6008369939904453773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152536 (SequenceMachineLib.roundAway ((Nat.lcm 8 n : ℚ) / 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320566.P6008369939904453773

/-! ## A320566.P1789289999237414786

`record[A152536(n*n%2)]`
-/

namespace A320566.P1789289999237414786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152536 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320566.P1789289999237414786

/-! ## A320566.P6024545076550999678

`record[A152536(A004442(n))]`
-/

namespace A320566.P6024545076550999678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152536 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320566.P6024545076550999678

/-! ## A320566.P11583669621116431533

`record[A152536(A026741(n))]`
-/

namespace A320566.P11583669621116431533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152536 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320566.P11583669621116431533

/-! ## A320566.P2764157796914573868

`record[A152536(A000265(n+1))]`
-/

namespace A320566.P2764157796914573868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152536 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320566.P2764157796914573868

/-! ## A320566.P11229796464550210234

`record[A152536(A033999(n)+n)]`
-/

namespace A320566.P11229796464550210234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152536 (A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320566.P11229796464550210234

/-! ## A320566.P16789182733274622734

`record[A152536(and(n, A033999(n)))]`
-/

namespace A320566.P16789182733274622734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152536 (Int.land (n : ℤ) (A033999 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320566.P16789182733274622734

/-!
# A320567: Expansion of e.g.f. exp(x) * Product_{k>=1} (1 + x^k/k!).

The programs for A320567, there is no canonical definition to state claims against.
-/

/-! ## A320567.P16893118310249400305

`A349904(2*(n+1))+A181939(A324088(n+3))`
-/

namespace A320567.P16893118310249400305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349904 (2 * (n + 1)) + A181939 (A324088 (n + 3)).toNat

end

end A320567.P16893118310249400305

/-!
# A320568: a(n) = Sum_{k=1..n} (-1)^(n-k)*binomial(n,k)*sigma(k).

The programs for A320568, there is no canonical definition to state claims against.
-/

/-! ## A320568.P622061391222066895

`A109978(∑[n+1]+2)`
-/

namespace A320568.P622061391222066895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109978 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A320568.P622061391222066895

/-! ## A320568.P10725180893126981040

`A020985(A003686(n+1))*A296516(n)`
-/

namespace A320568.P10725180893126981040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A003686 (n + 1)).toNat * A296516 n

end

end A320568.P10725180893126981040

/-! ## A320568.P10789902462578677105

`A008683(A064847(n+1))*A296516(n)`
-/

namespace A320568.P10789902462578677105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A064847 (n + 1)).toNat * A296516 n

end

end A320568.P10789902462578677105

/-!
# A320569: a(n) = [x^n] exp(Sum_{k>=1} sigma_n(k)*x^k/(k*(1 - x)^k)).

The programs for A320569, there is no canonical definition to state claims against.
-/

/-! ## A320569.P7465413498072694260

`A350355(2*n!)`
-/

namespace A320569.P7465413498072694260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350355 (2 * Nat.factorial n)

end

end A320569.P7465413498072694260

/-!
# A320570: a(n) = L_n(n), where L_n(x) is the Lucas polynomial.

The programs for A320570, the canonical program `A320570.P270920866976638292` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320570 has offset 0).

The definition of A320570 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A320570.P270920866976638292

`((n+sqrt(n²+4))^n+(n-sqrt(n²+4))^n)/2^n`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A320570

/-- `((n+sqrt(n²+4))^n+(n-sqrt(n²+4))^n)/2^n` -/
def P270920866976638292.Spec : Prop :=
  ∀ n, P270920866976638292.a n = (A320570 n : ℝ)

end A320570

/-! ## A320570.P13378177758870296227

`A352362(∑[4*n])`
-/

namespace A320570.P13378177758870296227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352362 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A320570.P13378177758870296227

namespace A320570

/-- `A352362(∑[4*n])` -/
def P13378177758870296227.Spec : Prop :=
  ∀ n, P13378177758870296227.a n = A320570 n

end A320570

/-!
# A320571: a(0) = 1; thereafter a(n) is the smallest prime divisor of the number C(6n+1) formeded from the concatenation of 1,2,3,...,6n+1.

The programs for A320571, there is no canonical definition to state claims against.
-/

/-! ## A320571.P708358727875838505

`A075019(6*n+1)`
-/

namespace A320571.P708358727875838505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075019 (6 * n + 1)

end

end A320571.P708358727875838505

/-! ## A320571.P14999324101789751706

`or(1, A075019(A016921(n)))`
-/

namespace A320571.P14999324101789751706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A075019 (A016921 n).toNat)

end

end A320571.P14999324101789751706

/-! ## A320571.P17670253486643518772

`gcd(A075019(A016921(n)), A151933(n))`
-/

namespace A320571.P17670253486643518772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075019 (A016921 n).toNat) (A151933 n)

end

end A320571.P17670253486643518772

/-! ## A320571.P11119426376376315960

`A075019(A016921(n))+char[A038005(n)]`
-/

namespace A320571.P11119426376376315960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038005 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075019 (A016921 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A320571.P11119426376376315960

/-! ## A320571.P14554865922556651817

`A075019(A016921(n))+char[A038009(n)]`
-/

namespace A320571.P14554865922556651817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038009 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075019 (A016921 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A320571.P14554865922556651817

/-! ## A320571.P10657189843720191684

`A075019(A016921(n))+char[A038011(n)]`
-/

namespace A320571.P10657189843720191684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038011 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075019 (A016921 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A320571.P10657189843720191684

/-! ## A320571.P16538932019269808696

`A075019(A016921(n))+A000007(n+1)`
-/

namespace A320571.P16538932019269808696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075019 (A016921 n).toNat + A000007 (n + 1)

end

end A320571.P16538932019269808696

/-! ## A320571.P6352655158589425933

`A075019(A016921(n))/A001221(A038026(n+1))`
-/

namespace A320571.P6352655158589425933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075019 (A016921 n).toNat : ℚ) / (A001221 (A038026 (n + 1)).toNat : ℚ)

end

end A320571.P6352655158589425933

/-! ## A320571.P5593782880688415090

`A075019(A016921(n))/A000188(A282345(n+1))`
-/

namespace A320571.P5593782880688415090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075019 (A016921 n).toNat : ℚ) / (A000188 (A282345 (n + 1)).toNat : ℚ)

end

end A320571.P5593782880688415090

/-!
# A320573: a(n) gives the number of configurations of non-attacking rooks on an n X n chessboard such that the number of distinct distances between the rooks is given by A320448(n).

The programs for A320573, there is no canonical definition to state claims against.
-/

/-! ## A320573.P8138078981418672374

`A000005(A000108(n)*A313583(n))`
-/

namespace A320573.P8138078981418672374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000108 n * A313583 n).toNat

end

end A320573.P8138078981418672374

/-! ## A320573.P2676326514410528219

`A000005(A243838(n)*A313583(n))`
-/

namespace A320573.P2676326514410528219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A243838 n * A313583 n).toNat

end

end A320573.P2676326514410528219

/-! ## A320573.P18304603004742192496

`A000005(A261592(n)*A313583(n))`
-/

namespace A320573.P18304603004742192496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A261592 n * A313583 n).toNat

end

end A320573.P18304603004742192496

/-! ## A320573.P2021948714434458450

`A000005(lcm(A174276(n), A337499(n)))`
-/

namespace A320573.P2021948714434458450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (A174276 n) (A337499 n))

end

end A320573.P2021948714434458450

/-! ## A320573.P1935321073204693236

`A000005(A022166(n+2)*A174276(n))`
-/

namespace A320573.P1935321073204693236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A022166 (n + 2) * A174276 n).toNat

end

end A320573.P1935321073204693236

/-!
# A320577: Number of isosceles triangles whose vertices are the vertices of a regular n-gon.

The programs for A320577, the canonical program `A320577.P11809975775811549557` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320577 has offset 3).

The definition of A320577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320577.P11809975775811549557

`(n+3)/3*A321773(n+3)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A320577

/-- `(n+3)/3*A321773(n+3)` -/
def P11809975775811549557.Spec : Prop :=
  ∀ n, P11809975775811549557.a n = (A320577 (n + 3) : ℚ)

end A320577

/-! ## A320577.P6951360528016723386

`∑[∑[n+1]]-A330197(n+3)`
-/

namespace A320577.P6951360528016723386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A330197 (n + 3)

end

end A320577.P6951360528016723386

namespace A320577

/-- `∑[∑[n+1]]-A330197(n+3)` -/
def P6951360528016723386.Spec : Prop :=
  ∀ n, P6951360528016723386.a n = A320577 (n + 3)

end A320577

/-! ## A320577.P10623150630379490449

`A321773(n+3)/6*A020739(n)`
-/

namespace A320577.P10623150630379490449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321773 (n + 3) : ℚ) / 6 * (A020739 n : ℚ)

end

end A320577.P10623150630379490449

namespace A320577

/-- `A321773(n+3)/6*A020739(n)` -/
def P10623150630379490449.Spec : Prop :=
  ∀ n, P10623150630379490449.a n = (A320577 (n + 3) : ℚ)

end A320577

/-! ## A320577.P3727777850712481362

`A145064(n+1)+(n+3)*A004526(n)`
-/

namespace A320577.P3727777850712481362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 (n + 1) + (n + 3 : ℤ) * A004526 n

end

end A320577.P3727777850712481362

namespace A320577

/-- `A145064(n+1)+(n+3)*A004526(n)` -/
def P3727777850712481362.Spec : Prop :=
  ∀ n, P3727777850712481362.a n = A320577 (n + 3)

end A320577

/-! ## A320577.P10672190110808496181

`A321773(n+3)+A002264(n*A321773(n+3))`
-/

namespace A320577.P10672190110808496181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321773 (n + 3) + A002264 ((n : ℤ) * A321773 (n + 3)).toNat

end

end A320577.P10672190110808496181

namespace A320577

/-- `A321773(n+3)+A002264(n*A321773(n+3))` -/
def P10672190110808496181.Spec : Prop :=
  ∀ n, P10672190110808496181.a n = A320577 (n + 3)

end A320577

/-! ## A320577.P15315142132228418064

`A002264((n+3)*A321773(n+3))`
-/

namespace A320577.P15315142132228418064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ((n + 3 : ℤ) * A321773 (n + 3)).toNat

end

end A320577.P15315142132228418064

namespace A320577

/-- `A002264((n+3)*A321773(n+3))` -/
def P15315142132228418064.Spec : Prop :=
  ∀ n, P15315142132228418064.a n = A320577 (n + 3)

end A320577

/-!
# A320578: Triangle read by rows: T(n,k) is the number of permutation graphs on n vertices with domination number k, with 1 <= k <= n.

The programs for A320578, there is no canonical definition to state claims against.
-/

/-! ## A320578.P4712923888658782696

`A119605(A108916(n))`
-/

namespace A320578.P4712923888658782696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119605 (A108916 n).toNat

end

end A320578.P4712923888658782696

/-! ## A320578.P14119837346969688475

`A382356(A172094(n))`
-/

namespace A320578.P14119837346969688475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382356 (A172094 n).toNat

end

end A320578.P14119837346969688475

/-! ## A320578.P14838389125755861350

`A361235(n+2)+A000248(A167040(n+1))`
-/

namespace A320578.P14838389125755861350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361235 (n + 2) + A000248 (A167040 (n + 1)).toNat

end

end A320578.P14838389125755861350

/-! ## A320578.P5930812328010560464

`or(A187105(n+1), A190487(A115908(3*(n+1))))`
-/

namespace A320578.P5930812328010560464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A187105 (n + 1)) (A190487 (A115908 (3 * (n + 1))).toNat)

end

end A320578.P5930812328010560464

/-!
# A320580: Numbers k such that for any positive integers x,y coprime to k, x^x == y (mod k) iff y^y == x (mod k).

The programs for A320580, there is no canonical definition to state claims against.
-/

/-! ## A320580.P17691968511328376145

`A124240(lt[A002805(n+1), A276280(n)])`
-/

namespace A320580.P17691968511328376145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124240 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A320580.P17691968511328376145

/-! ## A320580.P4275707197585856535

`A124240(lt[A281668(n+1), A269382(n)])`
-/

namespace A320580.P4275707197585856535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124240 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A320580.P4275707197585856535

/-! ## A320580.P13577903777173051446

`A124240(lt[A340008(n+1), A340008(3*n+1)])`
-/

namespace A320580.P13577903777173051446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340008 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124240 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A320580.P13577903777173051446

/-! ## A320580.P18201199390130656753

`eq[A336898(n), A368912(n+1)]`
-/

namespace A320580.P18201199390130656753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368912 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320580.P18201199390130656753

/-! ## A320580.P13065222984892829118

`A124240(lt[A051613(n), A124229(n+1)])`
-/

namespace A320580.P13065222984892829118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124240 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A320580.P13065222984892829118

/-!
# A320582: Number T(n,k) of permutations p of [n] such that |{ j : |p(j)-j| = 1 }| = k; triangle T(n,k), n >= 0, 0 <= k <= n, read by rows.

The programs for A320582, there is no canonical definition to state claims against.
-/

/-! ## A320582.P5909808753108822676

`∑{d}[A327369(n), A296524(#)]`
-/

namespace A320582.P5909808753108822676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A296524 d

end

end A320582.P5909808753108822676

/-! ## A320582.P11846519948772918012

`A327359(A100862(n))*A327371(n)`
-/

namespace A320582.P11846519948772918012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327359 (A100862 n).toNat * A327371 n

end

end A320582.P11846519948772918012

/-! ## A320582.P11075682654878872490

`∑{d}[A327369(n), A000001(A347699(#))]`
-/

namespace A320582.P11075682654878872490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000001 (A347699 d).toNat

end

end A320582.P11075682654878872490

/-! ## A320582.P1219961093429238448

`∑{d}[A327369(n), A347711(A327371(#))]`
-/

namespace A320582.P1219961093429238448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A347711 (A327371 d).toNat

end

end A320582.P1219961093429238448

/-! ## A320582.P6354108904976302732

`A008480(A153652(n+1))*A327371(n)`
-/

namespace A320582.P6354108904976302732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A153652 (n + 1)).toNat * A327371 n

end

end A320582.P6354108904976302732

/-!
# A320584: Numbers whose first digit is prime.

The programs for A320584, the canonical program `A320584.P6049506944665547150` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320584 has offset 1).

The definition of A320584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4444 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320584.P17648728932586686107

`lt[1, C(8, A331045(n))]`
-/

namespace A320584.P17648728932586686107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 8 (A331045 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A320584.P17648728932586686107

namespace A320584

/-- `lt[1, C(8, A331045(n))]` -/
def P17648728932586686107.Spec : Prop :=
  ∀ n, (P17648728932586686107.a n : ℤ) = A320584 (n + 1)

end A320584

/-! ## A320584.P10616866853655583251

`eq[1, A048762(A331045(n))]`
-/

namespace A320584.P10616866853655583251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048762 (A331045 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320584.P10616866853655583251

namespace A320584

/-- `eq[1, A048762(A331045(n))]` -/
def P10616866853655583251.Spec : Prop :=
  ∀ n, (P10616866853655583251.a n : ℤ) = A320584 (n + 1)

end A320584

/-! ## A320584.P403586299288371338

`eq[0, A007920(val(A061509(n), 2))]`
-/

namespace A320584.P403586299288371338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (SequenceMachineLib.valuation (A061509 n).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320584.P403586299288371338

namespace A320584

/-- `eq[0, A007920(val(A061509(n), 2))]` -/
def P403586299288371338.Spec : Prop :=
  ∀ n, (P403586299288371338.a n : ℤ) = A320584 (n + 1)

end A320584

/-! ## A320584.P9856530659426881456

`eq[1, A003415(val(A061509(n), 2))]`
-/

namespace A320584.P9856530659426881456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.valuation (A061509 n).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320584.P9856530659426881456

namespace A320584

/-- `eq[1, A003415(val(A061509(n), 2))]` -/
def P9856530659426881456.Spec : Prop :=
  ∀ n, (P9856530659426881456.a n : ℤ) = A320584 (n + 1)

end A320584

/-! ## A320584.P7670584683402506490

`eq[1, A018783(val(A061509(n), 2))]`
-/

namespace A320584.P7670584683402506490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (SequenceMachineLib.valuation (A061509 n).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320584.P7670584683402506490

namespace A320584

/-- `eq[1, A018783(val(A061509(n), 2))]` -/
def P7670584683402506490.Spec : Prop :=
  ∀ n, (P7670584683402506490.a n : ℤ) = A320584 (n + 1)

end A320584

/-! ## A320584.P10493956897638536646

`eq[1, A032741(val(A061509(n), 2))]`
-/

namespace A320584.P10493956897638536646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.valuation (A061509 n).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320584.P10493956897638536646

namespace A320584

/-- `eq[1, A032741(val(A061509(n), 2))]` -/
def P10493956897638536646.Spec : Prop :=
  ∀ n, (P10493956897638536646.a n : ℤ) = A320584 (n + 1)

end A320584

/-! ## A320584.P10246283965567424343

`eq[1, A175126(val(A061509(n), 2))]`
-/

namespace A320584.P10246283965567424343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (SequenceMachineLib.valuation (A061509 n).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320584.P10246283965567424343

namespace A320584

/-- `eq[1, A175126(val(A061509(n), 2))]` -/
def P10246283965567424343.Spec : Prop :=
  ∀ n, (P10246283965567424343.a n : ℤ) = A320584 (n + 1)

end A320584

/-! ## A320584.P6049506944665547150

`eq[1, A003415(A182324(n)-n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A320584

/-- `eq[1, A003415(A182324(n)-n)]` -/
def P6049506944665547150.Spec : Prop :=
  ∀ n, (P6049506944665547150.a n : ℤ) = A320584 (n + 1)

theorem P6049506944665547150.correct : P6049506944665547150.Spec := by
  intro n
  simp only [A320584, Nat.add_sub_cancel]

end A320584

/-! ## A320584.P4787119782224697049

`record[A333406(n+3)%(n+3)]`
-/

namespace A320584.P4787119782224697049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333406 (n + 3)) (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320584.P4787119782224697049

namespace A320584

/-- `record[A333406(n+3)%(n+3)]` -/
def P4787119782224697049.Spec : Prop :=
  ∀ n, P4787119782224697049.a n = A320584 (n + 1)

end A320584

/-! ## A320584.P11872404657017799507

`eq[3, A001222(A169669(10*n+9))]`
-/

namespace A320584.P11872404657017799507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A169669 (10 * n + 9)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320584.P11872404657017799507

namespace A320584

/-- `eq[3, A001222(A169669(10*n+9))]` -/
def P11872404657017799507.Spec : Prop :=
  ∀ n, (P11872404657017799507.a n : ℤ) = A320584 (n + 1)

end A320584

/-! ## A320584.P10679944560525639502

`∪[A125663(n+1), A125665(n+1)]`
-/

namespace A320584.P10679944560525639502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A320584.P10679944560525639502

namespace A320584

/-- `∪[A125663(n+1), A125665(n+1)]` -/
def P10679944560525639502.Spec : Prop :=
  ∀ n, (P10679944560525639502.a n : ℤ) = A320584 (n + 1)

end A320584

/-!
# A320585: Primes whose first digit is prime.

The programs for A320585, the canonical program `A320585.P11050667382939563471` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320585 has offset 1).

The definition of A320585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1092 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320585.P11050667382939563471

`p?[A320584(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A320585

/-- `p?[A320584(n+1)]` -/
def P11050667382939563471.Spec : Prop :=
  ∀ n, P11050667382939563471.a n = A320585 (n + 1)

theorem P11050667382939563471.correct : P11050667382939563471.Spec := by
  intro n
  simp only [A320585, Nat.add_sub_cancel]

end A320585

/-! ## A320585.P7571110459098026064

`filter[A320584(n+1), A010051(#)]`
-/

namespace A320585.P7571110459098026064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A320585.P7571110459098026064

namespace A320585

/-- `filter[A320584(n+1), A010051(#)]` -/
def P7571110459098026064.Spec : Prop :=
  ∀ n, P7571110459098026064.a n = A320585 (n + 1)

end A320585

/-! ## A320585.P12169318323980153054

`∩[A000040(n+1), A320584(n+1)]`
-/

namespace A320585.P12169318323980153054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320585.P12169318323980153054

namespace A320585

/-- `∩[A000040(n+1), A320584(n+1)]` -/
def P12169318323980153054.Spec : Prop :=
  ∀ n, (P12169318323980153054.a n : ℤ) = A320585 (n + 1)

end A320585

/-! ## A320585.P11670929148507655946

`∩[A008578(n+1), A320584(n+1)]`
-/

namespace A320585.P11670929148507655946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320585.P11670929148507655946

namespace A320585

/-- `∩[A008578(n+1), A320584(n+1)]` -/
def P11670929148507655946.Spec : Prop :=
  ∀ n, (P11670929148507655946.a n : ℤ) = A320585 (n + 1)

end A320585

/-! ## A320585.P16532989504405705101

`∩[A033946(n+1), A320584(n+1)]`
-/

namespace A320585.P16532989504405705101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320585.P16532989504405705101

namespace A320585

/-- `∩[A033946(n+1), A320584(n+1)]` -/
def P16532989504405705101.Spec : Prop :=
  ∀ n, (P16532989504405705101.a n : ℤ) = A320585 (n + 1)

end A320585

/-! ## A320585.P4803829213524249370

`∩[A046022(n+1), A320584(n+1)]`
-/

namespace A320585.P4803829213524249370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320585.P4803829213524249370

namespace A320585

/-- `∩[A046022(n+1), A320584(n+1)]` -/
def P4803829213524249370.Spec : Prop :=
  ∀ n, (P4803829213524249370.a n : ℤ) = A320585 (n + 1)

end A320585

/-! ## A320585.P12535006988285356962

`∩[A062972(n+1), A320584(n+1)]`
-/

namespace A320585.P12535006988285356962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320585.P12535006988285356962

namespace A320585

/-- `∩[A062972(n+1), A320584(n+1)]` -/
def P12535006988285356962.Spec : Prop :=
  ∀ n, (P12535006988285356962.a n : ℤ) = A320585 (n + 1)

end A320585

/-! ## A320585.P11406484312123654013

`∩[A066050(n+1), A320584(n+1)]`
-/

namespace A320585.P11406484312123654013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320585.P11406484312123654013

namespace A320585

/-- `∩[A066050(n+1), A320584(n+1)]` -/
def P11406484312123654013.Spec : Prop :=
  ∀ n, (P11406484312123654013.a n : ℤ) = A320585 (n + 1)

end A320585

/-! ## A320585.P17660250739266925371

`∩[A067126(n+1), A320584(n+1)]`
-/

namespace A320585.P17660250739266925371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320585.P17660250739266925371

namespace A320585

/-- `∩[A067126(n+1), A320584(n+1)]` -/
def P17660250739266925371.Spec : Prop :=
  ∀ n, (P17660250739266925371.a n : ℤ) = A320585 (n + 1)

end A320585

/-! ## A320585.P1941992423247755083

`∩[A106118(n+1), A320584(n+1)]`
-/

namespace A320585.P1941992423247755083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320585.P1941992423247755083

namespace A320585

/-- `∩[A106118(n+1), A320584(n+1)]` -/
def P1941992423247755083.Spec : Prop :=
  ∀ n, (P1941992423247755083.a n : ℤ) = A320585 (n + 1)

end A320585

/-! ## A320585.P3109376198359217778

`∩[A116974(n+1), A320584(n+1)]`
-/

namespace A320585.P3109376198359217778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320585.P3109376198359217778

namespace A320585

/-- `∩[A116974(n+1), A320584(n+1)]` -/
def P3109376198359217778.Spec : Prop :=
  ∀ n, (P3109376198359217778.a n : ℤ) = A320585 (n + 1)

end A320585

/-! ## A320585.P7033525003584547640

`∩[A158611(n+1), A320584(n+1)]`
-/

namespace A320585.P7033525003584547640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320585.P7033525003584547640

namespace A320585

/-- `∩[A158611(n+1), A320584(n+1)]` -/
def P7033525003584547640.Spec : Prop :=
  ∀ n, (P7033525003584547640.a n : ℤ) = A320585 (n + 1)

end A320585

/-! ## A320585.P8051089832589084551

`∩[A175787(n+1), A320584(n+1)]`
-/

namespace A320585.P8051089832589084551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320585.P8051089832589084551

namespace A320585

/-- `∩[A175787(n+1), A320584(n+1)]` -/
def P8051089832589084551.Spec : Prop :=
  ∀ n, (P8051089832589084551.a n : ℤ) = A320585 (n + 1)

end A320585

/-! ## A320585.P13755417068003475205

`∩[A179336(n+1), A320584(n+1)]`
-/

namespace A320585.P13755417068003475205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320585.P13755417068003475205

namespace A320585

/-- `∩[A179336(n+1), A320584(n+1)]` -/
def P13755417068003475205.Spec : Prop :=
  ∀ n, (P13755417068003475205.a n : ℤ) = A320585 (n + 1)

end A320585

/-! ## A320585.P11058323995785085964

`∩[A182986(n+1), A320584(n+1)]`
-/

namespace A320585.P11058323995785085964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320585.P11058323995785085964

namespace A320585

/-- `∩[A182986(n+1), A320584(n+1)]` -/
def P11058323995785085964.Spec : Prop :=
  ∀ n, (P11058323995785085964.a n : ℤ) = A320585 (n + 1)

end A320585

/-! ## A320585.P17839088292006247102

`∩[A251595(n+1), A320584(n+1)]`
-/

namespace A320585.P17839088292006247102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320585.P17839088292006247102

namespace A320585

/-- `∩[A251595(n+1), A320584(n+1)]` -/
def P17839088292006247102.Spec : Prop :=
  ∀ n, (P17839088292006247102.a n : ℤ) = A320585 (n + 1)

end A320585

/-! ## A320585.P5162548094992454957

`p?[n*A048766(A331045(n))]`
-/

namespace A320585.P5162548094992454957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A048766 (A331045 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320585.P5162548094992454957

namespace A320585

/-- `p?[n*A048766(A331045(n))]` -/
def P5162548094992454957.Spec : Prop :=
  ∀ n, P5162548094992454957.a n = A320585 (n + 1)

end A320585

/-! ## A320585.P12953235774649148896

`filter[A320584(n+1), A080339(#)]`
-/

namespace A320585.P12953235774649148896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A320585.P12953235774649148896

namespace A320585

/-- `filter[A320584(n+1), A080339(#)]` -/
def P12953235774649148896.Spec : Prop :=
  ∀ n, P12953235774649148896.a n = A320585 (n + 1)

end A320585

/-! ## A320585.P1350329048387955849

`p?[n*A003415(val(A061509(n), 2))]`
-/

namespace A320585.P1350329048387955849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003415 (SequenceMachineLib.valuation (A061509 n).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320585.P1350329048387955849

namespace A320585

/-- `p?[n*A003415(val(A061509(n), 2))]` -/
def P1350329048387955849.Spec : Prop :=
  ∀ n, P1350329048387955849.a n = A320585 (n + 1)

end A320585

/-! ## A320585.P1267550666586640516

`p?[n*A018783(val(A061509(n), 2))]`
-/

namespace A320585.P1267550666586640516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A018783 (SequenceMachineLib.valuation (A061509 n).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320585.P1267550666586640516

namespace A320585

/-- `p?[n*A018783(val(A061509(n), 2))]` -/
def P1267550666586640516.Spec : Prop :=
  ∀ n, P1267550666586640516.a n = A320585 (n + 1)

end A320585

/-!
# A320586: Expansion of (1/(1 - x)) * Sum_{k>=1} k*x^k/(x^k + (1 - x)^k).

The programs for A320586, there is no canonical definition to state claims against.
-/

/-! ## A320586.P13128379573999850382

`∑[A191825(n)-A129184(A150775(n))]`
-/

namespace A320586.P13128379573999850382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191825 n - A129184 (A150775 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320586.P13128379573999850382

/-! ## A320586.P10723495424488348918

`A001608(3*n+3)-A000005(A003021(n))`
-/

namespace A320586.P10723495424488348918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (3 * n + 3) - A000005 (A003021 n).toNat

end

end A320586.P10723495424488348918

/-! ## A320586.P5983959585598785071

`A001608(3*n+3)-A109395(A004171(n))`
-/

namespace A320586.P5983959585598785071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (3 * n + 3) - A109395 (A004171 n).toNat

end

end A320586.P5983959585598785071

/-!
# A320588: Derangements of {1,2,...,n} (n >= 2) in lexicographic order.

The programs for A320588, there is no canonical definition to state claims against.
-/

/-! ## A320588.P824459089135932500

`A030299(eq[0, A170942(n+1)]+1)`
-/

namespace A320588.P824459089135932500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A320588.P824459089135932500

/-!
# A320590: Expansion of Product_{k>=1} 1/(1 - x^k/(1 + x)^k).

The programs for A320590, there is no canonical definition to state claims against.
-/

/-! ## A320590.P15642810942100932801

`A281425(n-A158388(n))+A281425(n)`
-/

namespace A320590.P15642810942100932801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281425 ((n : ℤ) - A158388 n).toNat + A281425 n

end

end A320590.P15642810942100932801

/-! ## A320590.P4692504355457947489

`A175804((∑[n]+1)%∑[n+1])`
-/

namespace A320590.P4692504355457947489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175804 ((∑ j ∈ Finset.range (n + 1), f1 j + 1) % (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A320590.P4692504355457947489

/-! ## A320590.P17657089219477572282

`A175804(A134869(n+1)-(n+1))`
-/

namespace A320590.P17657089219477572282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175804 (A134869 (n + 1) - (n + 1 : ℤ)).toNat

end

end A320590.P17657089219477572282

/-! ## A320590.P4776392108626659577

`A175804(A007318(∑[n+1]+2)+1)`
-/

namespace A320590.P4776392108626659577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175804 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + 1).toNat

end

end A320590.P4776392108626659577

/-! ## A320590.P3544740090815589633

`A175804(∑[n]+gcd(2, A000040(n+1)))`
-/

namespace A320590.P3544740090815589633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175804 (∑ j ∈ Finset.range (n + 1), f1 j + Int.gcd 2 (A000040 (n + 1)))

end

end A320590.P3544740090815589633

/-! ## A320590.P2397575360008862255

`A175804(∑[n]+and(1, A000040(n+1)))`
-/

namespace A320590.P2397575360008862255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175804 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.land 1 (A000040 (n + 1))).toNat

end

end A320590.P2397575360008862255

/-! ## A320590.P14187127883092017143

`A175804(A055998(n)-A004273(n))`
-/

namespace A320590.P14187127883092017143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175804 (A055998 n - A004273 n).toNat

end

end A320590.P14187127883092017143

/-! ## A320590.P15858984893847471746

`A175804(A066247((n+1)²)+A000217(n))`
-/

namespace A320590.P15858984893847471746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175804 (A066247 ((n + 1) ^ 2) + A000217 n).toNat

end

end A320590.P15858984893847471746

/-! ## A320590.P13548861039493312918

`A175804(A000217(n)-A089263(2*n+1))`
-/

namespace A320590.P13548861039493312918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175804 (A000217 n - A089263 (2 * n + 1)).toNat

end

end A320590.P13548861039493312918

/-! ## A320590.P6552803301622671089

`A175804(A073424(A000217(n))+A000217(n))`
-/

namespace A320590.P6552803301622671089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175804 (A073424 (A000217 n).toNat + A000217 n).toNat

end

end A320590.P6552803301622671089

/-!
# A320591: Expansion of Product_{k>=1} (1 + x^k/(1 + x)^k).

The programs for A320591, there is no canonical definition to state claims against.
-/

/-! ## A320591.P2754582344608251683

`A378622(∑[comp[A096508(n+1)]])`
-/

namespace A320591.P2754582344608251683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096508 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378622 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A320591.P2754582344608251683

/-! ## A320591.P4449729684662284803

`A378622(∑[comp[A141978(n+1)]])`
-/

namespace A320591.P4449729684662284803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141978 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378622 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A320591.P4449729684662284803

/-! ## A320591.P14637939402761734576

`A378622(∑[comp[A395348(2*n+1)]])`
-/

namespace A320591.P14637939402761734576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395348 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378622 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A320591.P14637939402761734576

/-! ## A320591.P8818154255151167963

`A378622(eq[floor(1/(n+1)), A065600(n)])`
-/

namespace A320591.P8818154255151167963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378622 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A320591.P8818154255151167963

/-! ## A320591.P10182599762604035781

`A378622(lt[A038231(n+1), A140303(n)])`
-/

namespace A320591.P10182599762604035781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378622 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A320591.P10182599762604035781

/-!
# A320592: Number of partitions of n with four parts in which no part occurs more than twice.

The programs for A320592, the canonical program `A320592.P4882590432271682318` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320592 has offset 6).

The definition of A320592 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320592.P4882590432271682318

`A266769(n)-A026810(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A320592

/-- `A266769(n)-A026810(n)` -/
def P4882590432271682318.Spec : Prop :=
  ∀ n, P4882590432271682318.a n = A320592 (n + 6)

theorem P4882590432271682318.correct : P4882590432271682318.Spec := by
  intro n
  simp only [A320592, Nat.add_sub_cancel]

end A320592

/-! ## A320592.P1848834827543480155

`∑[A008731(n)]-A026810(n)`
-/

namespace A320592.P1848834827543480155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A026810 n

end

end A320592.P1848834827543480155

namespace A320592

/-- `∑[A008731(n)]-A026810(n)` -/
def P1848834827543480155.Spec : Prop :=
  ∀ n, P1848834827543480155.a n = A320592 (n + 6)

end A320592

/-! ## A320592.P11027968618274553515

`A005232(n)-2*A026810(n)`
-/

namespace A320592.P11027968618274553515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 n - 2 * A026810 n

end

end A320592.P11027968618274553515

namespace A320592

/-- `A005232(n)-2*A026810(n)` -/
def P11027968618274553515.Spec : Prop :=
  ∀ n, P11027968618274553515.a n = A320592 (n + 6)

end A320592

/-! ## A320592.P5251815346173635434

`2*A266769(n)-A005232(n)`
-/

namespace A320592.P5251815346173635434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266769 n - A005232 n

end

end A320592.P5251815346173635434

namespace A320592

/-- `2*A266769(n)-A005232(n)` -/
def P5251815346173635434.Spec : Prop :=
  ∀ n, P5251815346173635434.a n = A320592 (n + 6)

end A320592

/-! ## A320592.P13961045699998144694

`A001399(n)+∑[A005044(n+1)]`
-/

namespace A320592.P13961045699998144694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320592.P13961045699998144694

namespace A320592

/-- `A001399(n)+∑[A005044(n+1)]` -/
def P13961045699998144694.Spec : Prop :=
  ∀ n, P13961045699998144694.a n = A320592 (n + 6)

end A320592

/-! ## A320592.P500295150892091775

`∑[2*A008731(n)-A008733(n)]`
-/

namespace A320592.P500295150892091775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008731 n - A008733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320592.P500295150892091775

namespace A320592

/-- `∑[2*A008731(n)-A008733(n)]` -/
def P500295150892091775.Spec : Prop :=
  ∀ n, P500295150892091775.a n = A320592 (n + 6)

end A320592

/-! ## A320592.P15858446856770129015

`∑[A008733(n)]-2*A026810(n)`
-/

namespace A320592.P15858446856770129015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A026810 n

end

end A320592.P15858446856770129015

namespace A320592

/-- `∑[A008733(n)]-2*A026810(n)` -/
def P15858446856770129015.Spec : Prop :=
  ∀ n, P15858446856770129015.a n = A320592 (n + 6)

end A320592

/-! ## A320592.P15134150923610805420

`A001399(n)+A001400(n)-A025767(n)`
-/

namespace A320592.P15134150923610805420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n + (A001400 n - A025767 n)

end

end A320592.P15134150923610805420

namespace A320592

/-- `A001399(n)+A001400(n)-A025767(n)` -/
def P15134150923610805420.Spec : Prop :=
  ∀ n, P15134150923610805420.a n = A320592 (n + 6)

end A320592

/-! ## A320592.P18038609072976659407

`A005044(n+1)+A005044(n)+A001400(n)`
-/

namespace A320592.P18038609072976659407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) + (A005044 n + A001400 n)

end

end A320592.P18038609072976659407

namespace A320592

/-- `A005044(n+1)+A005044(n)+A001400(n)` -/
def P18038609072976659407.Spec : Prop :=
  ∀ n, P18038609072976659407.a n = A320592 (n + 6)

end A320592

/-! ## A320592.P12245954665890266138

`A026810(n+2)+A001399(n)`
-/

namespace A320592.P12245954665890266138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 2) + A001399 n

end

end A320592.P12245954665890266138

namespace A320592

/-- `A026810(n+2)+A001399(n)` -/
def P12245954665890266138.Spec : Prop :=
  ∀ n, P12245954665890266138.a n = A320592 (n + 6)

end A320592

/-! ## A320592.P10665323710252638193

`A001400(n+1)+A001399(n)-A008642(n+1)`
-/

namespace A320592.P10665323710252638193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (n + 1) + (A001399 n - A008642 (n + 1))

end

end A320592.P10665323710252638193

namespace A320592

/-- `A001400(n+1)+A001399(n)-A008642(n+1)` -/
def P10665323710252638193.Spec : Prop :=
  ∀ n, P10665323710252638193.a n = A320592 (n + 6)

end A320592

/-! ## A320592.P7826162803709266764

`A001400(n+2)-A086161(n+1)`
-/

namespace A320592.P7826162803709266764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (n + 2) - A086161 (n + 1)

end

end A320592.P7826162803709266764

namespace A320592

/-- `A001400(n+2)-A086161(n+1)` -/
def P7826162803709266764.Spec : Prop :=
  ∀ n, P7826162803709266764.a n = A320592 (n + 6)

end A320592

/-! ## A320592.P618548277560590764

`A001400(n+2)-A008620(n+2)`
-/

namespace A320592.P618548277560590764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (n + 2) - A008620 (n + 2)

end

end A320592.P618548277560590764

namespace A320592

/-- `A001400(n+2)-A008620(n+2)` -/
def P618548277560590764.Spec : Prop :=
  ∀ n, P618548277560590764.a n = A320592 (n + 6)

end A320592

/-! ## A320592.P8264863926947608490

`A069905(n+3)+A026810(n+2)`
-/

namespace A320592.P8264863926947608490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 3) + A026810 (n + 2)

end

end A320592.P8264863926947608490

namespace A320592

/-- `A069905(n+3)+A026810(n+2)` -/
def P8264863926947608490.Spec : Prop :=
  ∀ n, P8264863926947608490.a n = A320592 (n + 6)

end A320592

/-! ## A320592.P16272988398678015960

`A338200(n+3)-A069905(n+2)`
-/

namespace A320592.P16272988398678015960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338200 (n + 3) - A069905 (n + 2)

end

end A320592.P16272988398678015960

namespace A320592

/-- `A338200(n+3)-A069905(n+2)` -/
def P16272988398678015960.Spec : Prop :=
  ∀ n, P16272988398678015960.a n = A320592 (n + 6)

end A320592

/-! ## A320592.P9736808592176070515

`∑[A008679(2*n)+A005044(n+1)]`
-/

namespace A320592.P9736808592176070515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (2 * n) + A005044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320592.P9736808592176070515

namespace A320592

/-- `∑[A008679(2*n)+A005044(n+1)]` -/
def P9736808592176070515.Spec : Prop :=
  ∀ n, P9736808592176070515.a n = A320592 (n + 6)

end A320592

/-! ## A320592.P3158967428214873024

`A338200(n+3)-A005044(2*n+1)`
-/

namespace A320592.P3158967428214873024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338200 (n + 3) - A005044 (2 * n + 1)

end

end A320592.P3158967428214873024

namespace A320592

/-- `A338200(n+3)-A005044(2*n+1)` -/
def P3158967428214873024.Spec : Prop :=
  ∀ n, P3158967428214873024.a n = A320592 (n + 6)

end A320592

/-! ## A320592.P11078723748593284032

`∑[A005044(n+1)+Δ[A005044(2*n+1)]]`
-/

namespace A320592.P11078723748593284032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320592.P11078723748593284032

namespace A320592

/-- `∑[A005044(n+1)+Δ[A005044(2*n+1)]]` -/
def P11078723748593284032.Spec : Prop :=
  ∀ n, P11078723748593284032.a n = A320592 (n + 6)

end A320592

/-! ## A320592.P14357954282221672024

`A005044(A165754(2*n))+∑[A005044(n+1)]`
-/

namespace A320592.P14357954282221672024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A165754 (2 * n)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320592.P14357954282221672024

namespace A320592

/-- `A005044(A165754(2*n))+∑[A005044(n+1)]` -/
def P14357954282221672024.Spec : Prop :=
  ∀ n, P14357954282221672024.a n = A320592 (n + 6)

end A320592

/-! ## A320592.P16383344112633319936

`A005044(A020715(2*n))+∑[A005044(n+1)]`
-/

namespace A320592.P16383344112633319936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A020715 (2 * n)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320592.P16383344112633319936

namespace A320592

/-- `A005044(A020715(2*n))+∑[A005044(n+1)]` -/
def P16383344112633319936.Spec : Prop :=
  ∀ n, P16383344112633319936.a n = A320592 (n + 6)

end A320592

/-!
# A320593: Number of partitions of n with five parts in which no part occurs more than twice.

The programs for A320593, the canonical program `A320593.P5739706294827655604` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320593 has offset 9).

The definition of A320593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320593.P5739706294827655604

`∑[A029032(n)]-A026811(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A320593

/-- `∑[A029032(n)]-A026811(n)` -/
def P5739706294827655604.Spec : Prop :=
  ∀ n, P5739706294827655604.a n = A320593 (n + 9)

theorem P5739706294827655604.correct : P5739706294827655604.Spec := by
  intro n
  simp only [A320593, Nat.add_sub_cancel]

end A320593

/-! ## A320593.P15235414425207337569

`A001400(n)+A001401(n)-A008667(n)`
-/

namespace A320593.P15235414425207337569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n + (A001401 n - A008667 n)

end

end A320593.P15235414425207337569

namespace A320593

/-- `A001400(n)+A001401(n)-A008667(n)` -/
def P15235414425207337569.Spec : Prop :=
  ∀ n, P15235414425207337569.a n = A320593 (n + 9)

end A320593

/-! ## A320593.P12555326008546159789

`∑[A266755(n)+A008667(n)]-A008667(n)`
-/

namespace A320593.P12555326008546159789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n + A008667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008667 n

end

end A320593.P12555326008546159789

namespace A320593

/-- `∑[A266755(n)+A008667(n)]-A008667(n)` -/
def P12555326008546159789.Spec : Prop :=
  ∀ n, P12555326008546159789.a n = A320593 (n + 9)

end A320593

/-! ## A320593.P9893055866200909331

`A026811(n+4)+A001400(n)`
-/

namespace A320593.P9893055866200909331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (n + 4) + A001400 n

end

end A320593.P9893055866200909331

namespace A320593

/-- `A026811(n+4)+A001400(n)` -/
def P9893055866200909331.Spec : Prop :=
  ∀ n, P9893055866200909331.a n = A320593 (n + 9)

end A320593

/-! ## A320593.P1001489773831448981

`A026811(A157532(n+1)+1+n)+∑[A266755(n)]`
-/

namespace A320593.P1001489773831448981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (A157532 (n + 1) + 1 + (n : ℤ)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320593.P1001489773831448981

namespace A320593

/-- `A026811(A157532(n+1)+1+n)+∑[A266755(n)]` -/
def P1001489773831448981.Spec : Prop :=
  ∀ n, P1001489773831448981.a n = A320593 (n + 9)

end A320593

/-! ## A320593.P8910957839294975051

`A266768(2*n+3)+A001400(n)`
-/

namespace A320593.P8910957839294975051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266768 (2 * n + 3) + A001400 n

end

end A320593.P8910957839294975051

namespace A320593

/-- `A266768(2*n+3)+A001400(n)` -/
def P8910957839294975051.Spec : Prop :=
  ∀ n, P8910957839294975051.a n = A320593 (n + 9)

end A320593

/-! ## A320593.P8794290165642433274

`record[A001401(n)-record[A005044(n)]]`
-/

namespace A320593.P8794290165642433274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320593.P8794290165642433274

namespace A320593

/-- `record[A001401(n)-record[A005044(n)]]` -/
def P8794290165642433274.Spec : Prop :=
  ∀ n, P8794290165642433274.a n = A320593 (n + 9)

end A320593

/-! ## A320593.P14572471464939895121

`A001304(n+1)+A026811(n+1)-A008669(n+1)`
-/

namespace A320593.P14572471464939895121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001304 (n + 1) + (A026811 (n + 1) - A008669 (n + 1))

end

end A320593.P14572471464939895121

namespace A320593

/-- `A001304(n+1)+A026811(n+1)-A008669(n+1)` -/
def P14572471464939895121.Spec : Prop :=
  ∀ n, P14572471464939895121.a n = A320593 (n + 9)

end A320593

/-! ## A320593.P4377210117643434626

`A072233(A167499(n+3))+A001400(n)`
-/

namespace A320593.P4377210117643434626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A167499 (n + 3)).toNat + A001400 n

end

end A320593.P4377210117643434626

namespace A320593

/-- `A072233(A167499(n+3))+A001400(n)` -/
def P4377210117643434626.Spec : Prop :=
  ∀ n, P4377210117643434626.a n = A320593 (n + 9)

end A320593

/-!
# A320594: Number of partitions of n with six parts in which no part occurs more than twice.

The programs for A320594, there is no canonical definition to state claims against.
-/

/-! ## A320594.P10541343201075302075

`A266775(n)+A064415(A000108(n))`
-/

namespace A320594.P10541343201075302075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266775 n + A064415 (A000108 n).toNat

end

end A320594.P10541343201075302075

/-! ## A320594.P9860990778224234454

`A212214(n)+A001222(A214724(n))`
-/

namespace A320594.P9860990778224234454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212214 n + A001222 (A214724 n).toNat

end

end A320594.P9860990778224234454

/-! ## A320594.P16937554080283734447

`xor(A008442(A318419(n+1)), A194803(n))`
-/

namespace A320594.P16937554080283734447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008442 (A318419 (n + 1)).toNat) (A194803 n)

end

end A320594.P16937554080283734447

/-! ## A320594.P15392962437207405759

`A070082(A002996(n+1))`
-/

namespace A320594.P15392962437207405759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070082 (A002996 (n + 1)).toNat

end

end A320594.P15392962437207405759

/-! ## A320594.P1456420459001155244

`A140473(A019450(n+1))`
-/

namespace A320594.P1456420459001155244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140473 (A019450 (n + 1)).toNat

end

end A320594.P1456420459001155244

/-!
# A320595: Number of partitions of n with seven parts in which no part occurs more than twice.

The programs for A320595, there is no canonical definition to state claims against.
-/

/-! ## A320595.P4332385192305429618

`A100617((2*n+1)*A336135(n))`
-/

namespace A320595.P4332385192305429618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 ((2 * n + 1 : ℤ) * A336135 n).toNat

end

end A320595.P4332385192305429618

/-! ## A320595.P17688246430093866001

`A165766(A000627(n+1))+∑[A333147(n)]`
-/

namespace A320595.P17688246430093866001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165766 (A000627 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320595.P17688246430093866001

/-! ## A320595.P2489499743782614635

`A371170(A023030(n+1))`
-/

namespace A320595.P2489499743782614635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371170 (A023030 (n + 1 + 10)).toNat

end

end A320595.P2489499743782614635

/-! ## A320595.P7988424148511032257

`A371170(A027344(n+1))`
-/

namespace A320595.P7988424148511032257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371170 (A027344 (n + 1)).toNat

end

end A320595.P7988424148511032257

/-! ## A320595.P2301870407412187641

`A371170(A035998(n+1))`
-/

namespace A320595.P2301870407412187641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371170 (A035998 (n + 1)).toNat

end

end A320595.P2301870407412187641

/-!
# A320596: Number of partitions of n with eight parts in which no part occurs more than twice.

The programs for A320596, there is no canonical definition to state claims against.
-/

/-! ## A320596.P7211227616699079885

`A123068(A008632(n))+A008632(n)`
-/

namespace A320596.P7211227616699079885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A008632 n).toNat + A008632 n

end

end A320596.P7211227616699079885

/-! ## A320596.P9037245344108267559

`A123068(A008638(n))+A008638(n)`
-/

namespace A320596.P9037245344108267559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A008638 n).toNat + A008638 n

end

end A320596.P9037245344108267559

/-! ## A320596.P9523244579711403122

`A341913(n)+A123068(A341913(n))`
-/

namespace A320596.P9523244579711403122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341913 (n + 45) + A123068 (A341913 (n + 45)).toNat

end

end A320596.P9523244579711403122

/-! ## A320596.P562179542534922574

`A185043(n)+A004273(∏{e}[3^n, A309058(#)])`
-/

namespace A320596.P562179542534922574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185043 n + A004273 (∏ p ∈ Nat.primeFactors (f1 n), A309058 (Nat.factorization (f1 n) p)).toNat

end

end A320596.P562179542534922574

/-! ## A320596.P17348543780138732196

`A326597(n)+A004273(∏{e}[3^n, A309058(#)])`
-/

namespace A320596.P17348543780138732196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326597 n + A004273 (∏ p ∈ Nat.primeFactors (f1 n), A309058 (Nat.factorization (f1 n) p)).toNat

end

end A320596.P17348543780138732196

/-!
# A320597: Number of partitions of n with nine parts in which no part occurs more than twice.

The programs for A320597, there is no canonical definition to state claims against.
-/

/-! ## A320597.P14230951783404882907

`A227566(n)-A025466(A003724(n))`
-/

namespace A320597.P14230951783404882907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227566 (n + 61) - A025466 (A003724 n).toNat

end

end A320597.P14230951783404882907

/-! ## A320597.P7944839651446062341

`A227566(n)-A122840(A006882(n))`
-/

namespace A320597.P7944839651446062341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227566 (n + 61) - A122840 (A006882 n).toNat

end

end A320597.P7944839651446062341

/-! ## A320597.P9808071044363774201

`A227566(n)-A370813(A227564(n))`
-/

namespace A320597.P9808071044363774201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227566 (n + 61) - A370813 (A227564 (n + 37)).toNat

end

end A320597.P9808071044363774201

/-! ## A320597.P8540872233328244801

`A000196(A208742(n+1)+A032195(n))`
-/

namespace A320597.P8540872233328244801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A208742 (n + 1) + A032195 (n + 10)).toNat

end

end A320597.P8540872233328244801

/-! ## A320597.P12120186998456579948

`A000196(A160527(n)+A000196(n))-char[10]`
-/

namespace A320597.P12120186998456579948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A160527 n + A000196 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A320597.P12120186998456579948

/-!
# A320598: Number of partitions of n with ten parts in which no part occurs more than twice.

The programs for A320598, there is no canonical definition to state claims against.
-/

/-! ## A320598.P13077534098895853917

`A227567(n)-A184964(A091378(n))`
-/

namespace A320598.P13077534098895853917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227567 (n + 75) - A184964 (A091378 n).toNat

end

end A320598.P13077534098895853917

/-! ## A320598.P8497358019289801234

`A227567(n)-A184964(A060854(n+1))`
-/

namespace A320598.P8497358019289801234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227567 (n + 75) - A184964 (A060854 (n + 1)).toNat

end

end A320598.P8497358019289801234

/-! ## A320598.P11844501803571355649

`A227567(n)-A184964(A248011(n+1))`
-/

namespace A320598.P11844501803571355649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227567 (n + 75) - A184964 (A248011 (n + 1)).toNat

end

end A320598.P11844501803571355649

/-! ## A320598.P4156273015524463811

`A227567(n)-A343380(2*A089402(n)-A000108(n))%(n+1)`
-/

namespace A320598.P4156273015524463811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227567 (n + 75) - Int.tmod (A343380 (2 * A089402 n - A000108 n).toNat) (n + 1 : ℤ)

end

end A320598.P4156273015524463811

/-!
# A320599: Numbers k such that 4k + 1 and 8k + 1 are both primes.

The programs for A320599, there is no canonical definition to state claims against.
-/

/-! ## A320599.P566620548136832539

`floor(A098025(n+1)/4)`
-/

namespace A320599.P566620548136832539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A098025 (n + 1) : ℚ) / 4⌋

end

end A320599.P566620548136832539

/-! ## A320599.P10020683274576448690

`A098025(n+1)/4-(A001221(A007519(n+1))/2)²`
-/

namespace A320599.P10020683274576448690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098025 (n + 1) : ℚ) / 4 - ((A001221 (A007519 (n + 1)).toNat : ℚ) / 2) ^ 2

end

end A320599.P10020683274576448690

/-! ## A320599.P16565100332333627437

`floor(p?[A186294(n+1)]/4)`
-/

namespace A320599.P16565100332333627437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4⌋

end

end A320599.P16565100332333627437

/-! ## A320599.P132882445133707818

`∩[A005098(n+1), A005123(n+1)]`
-/

namespace A320599.P132882445133707818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320599.P132882445133707818

/-! ## A320599.P5570201752632985678

`A103391(A098025(n+1)-6)`
-/

namespace A320599.P5570201752632985678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A098025 (n + 1) - 6).toNat

end

end A320599.P5570201752632985678

/-! ## A320599.P10902952671251561191

`eq[A037039(2*(n+1)), A053193(2*(n+1))]+1`
-/

namespace A320599.P10902952671251561191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037039 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053193 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A320599.P10902952671251561191

/-! ## A320599.P14228757398616702664

`eq[A057033(2*(n+1)), A264527(2*n+3)]+1`
-/

namespace A320599.P14228757398616702664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057033 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264527 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A320599.P14228757398616702664

/-! ## A320599.P7390556238063692274

`A061395(p?[A073846(A123998(n+1))])`
-/

namespace A320599.P7390556238063692274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A123998 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A320599.P7390556238063692274

/-! ## A320599.P5142631154686625241

`A002265(A098025(n+1))`
-/

namespace A320599.P5142631154686625241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A098025 (n + 1)).toNat

end

end A320599.P5142631154686625241

